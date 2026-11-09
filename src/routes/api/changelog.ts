import { createFileRoute } from "@tanstack/react-router";
import { createHmac, timingSafeEqual } from "node:crypto";
import {
  ChangelogEntrySchema,
  insertChangelogEntry,
  bulkUpsertChangelogEntries,
  coerceCategory,
  coerceTags,
} from "@/lib/changelog.functions";
import { APPROVED_CATEGORIES, APPROVED_TAGS, CATEGORY_LABELS } from "@/lib/changelog-taxonomy";

/**
 * Webhook receiver for new Leadli changelog entries.
 *
 * An external agent POSTs a JSON payload here when a new changelog event
 * fires. The request must carry an `x-changelog-signature` header that is the
 * HMAC-SHA256 of the raw body using the shared CHANGELOG_WEBHOOK_SECRET.
 *
 * Expected JSON body:
 *   {
 *     "title": "...",
 *     "summary": "...",          // optional
 *     "body": "...",             // optional
 *     "category": "...",         // optional, defaults to "general"
 *     "tags": ["..."],           // optional
 *     "publishedAt": "2026-...", // optional ISO date
 *     "externalId": "..."        // optional, dedupes on unique constraint
 *   }
 *
 * This route is anonymous on the published site, so the signature is mandatory.
 */
export const Route = createFileRoute("/api/changelog")({
  server: {
    handlers: {
      POST: async ({ request }) => {
        // CORS (in case the agent posts cross-origin)
        const corsHeaders = {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Headers": "Content-Type, x-changelog-signature",
          "Access-Control-Allow-Methods": "POST, OPTIONS",
        };

        if (request.method === "OPTIONS") {
          return new Response(null, { status: 204, headers: corsHeaders });
        }

        const secret = process.env["CHANGELOG_WEBHOOK_SECRET"];
        if (!secret) {
          return new Response("Webhook not configured", {
            status: 503,
            headers: corsHeaders,
          });
        }

        const rawBody = await request.text();

        // Verify signature
        const signature = request.headers.get("x-changelog-signature") ?? "";
        const expected = createHmac("sha256", secret).update(rawBody).digest("hex");

        const sigBuf = Buffer.from(signature);
        const expBuf = Buffer.from(expected);
        if (sigBuf.length !== expBuf.length || !timingSafeEqual(sigBuf, expBuf)) {
          return new Response("Invalid signature", {
            status: 401,
            headers: corsHeaders,
          });
        }

        // Parse + validate
        let payload: unknown;
        try {
          payload = JSON.parse(rawBody);
        } catch {
          return new Response("Invalid JSON", { status: 400, headers: corsHeaders });
        }

        const parsed = ChangelogEntrySchema.safeParse(payload);
        if (!parsed.success) {
          return Response.json(
            {
              ok: false,
              errors: parsed.error.flatten(),
              hint: {
                approvedCategories: APPROVED_CATEGORIES,
                approvedTags: APPROVED_TAGS,
              },
            },
            { status: 400, headers: corsHeaders },
          );
        }

        try {
          const result = await insertChangelogEntry(parsed.data);
          return Response.json({ ok: true, id: result.id }, { status: 201, headers: corsHeaders });
        } catch (err) {
          const message = err instanceof Error ? err.message : "Insert failed";
          // Dedup on external_id unique constraint = treat as success
          if (/duplicate/i.test(message)) {
            return Response.json(
              { ok: true, deduplicated: true },
              { status: 200, headers: corsHeaders },
            );
          }
          return Response.json(
            { ok: false, error: message },
            { status: 500, headers: corsHeaders },
          );
        }
      },
      GET: async ({ request }) => {
        const url = new URL(request.url);
        const secret = process.env["CHANGELOG_WEBHOOK_SECRET"];
        const providedSecret = url.searchParams.get("secret");
        if (!secret || providedSecret !== secret) {
          return new Response("Unauthorized", { status: 401 });
        }

        try {
          let allPosts: Array<{
            id: number;
            title: { rendered: string };
            content: { rendered: string };
            date: string;
          }> = [];

          let page = 1;
          while (page <= 6) {
            const res = await fetch(
              `https://flyingleapstudio.com/wp-json/wp/v2/features?per_page=100&page=${page}`,
            );
            if (!res.ok) break;
            const posts = (await res.json()) as typeof allPosts;
            if (!posts || posts.length === 0) break;
            allPosts = allPosts.concat(posts);
            page++;
          }

          function decodeEntities(str: string): string {
            return str
              .replace(/&#8217;/g, "'")
              .replace(/&#8216;/g, "'")
              .replace(/&#8220;/g, '"')
              .replace(/&#8221;/g, '"')
              .replace(/&#8211;/g, "–")
              .replace(/&#8212;/g, "—")
              .replace(/&amp;/g, "&")
              .replace(/&lt;/g, "<")
              .replace(/&gt;/g, ">")
              .replace(/&quot;/g, '"')
              .replace(/&#039;/g, "'");
          }

          function extractSummary(html: string): string {
            const text = html
              .replace(/<[^>]+>/g, " ")
              .replace(/\s+/g, " ")
              .trim();
            return text.length > 300 ? text.substring(0, 300) + "..." : text;
          }

          // Keyword → approved-category map. Anything not matched falls back
          // to "general" via coerceCategory. This keeps the importer on the
          // controlled vocabulary instead of inventing categories.
          const KEYWORD_CATEGORIES: Array<{ words: string[]; cat: string }> = [
            { words: ["workflow", "automation", "trigger", "workflow map"], cat: "automations" },
            { words: ["calendar", "appointment", "booking", "scheduling"], cat: "calendar" },
            { words: ["chat widget", "live chat", "web chat"], cat: "chat_widget" },
            { words: ["crm", "contact", "opportunity", "pipeline", "smart list"], cat: "crm" },
            { words: ["community", "gokollab"], cat: "communities" },
            { words: ["course", "membership"], cat: "courses" },
            { words: ["analytics", "dashboard", "report", "metric"], cat: "reporting" },
            { words: ["voice ai", "conversational ai"], cat: "voice-ai" },
            { words: ["ai agent", "agent studio"], cat: "ai-agents" },
            { words: ["ask ai", "ai email", "ai studio", "creator studio"], cat: "ai" },
            { words: ["form", "survey", "quiz"], cat: "forms-surveys-quizzes" },
            { words: ["task", "project", "kanban", "ticketing"], cat: "task-management" },
            { words: ["payment", "invoice", "confido", "iolta", "trust"], cat: "payments" },
            { words: ["contract", "e-sign", "esign", "signature"], cat: "contracts" },
            { words: ["email marketing", "broadcast", "drip"], cat: "email-marketing" },
            { words: ["sms", "texting", "text message"], cat: "sms-marketing" },
            { words: ["social", "planner", "instagram", "facebook post"], cat: "social" },
            { words: ["review", "reputation"], cat: "reviews" },
            { words: ["website", "domain", "wordpress", "landing page"], cat: "websites" },
            { words: ["funnel"], cat: "funnels" },
            { words: ["unified inbox", "inbox"], cat: "inbox" },
            { words: ["phone", "dialer", "call"], cat: "phone" },
            { words: ["integration", "zapier", "webhook"], cat: "integrations" },
            { words: ["client portal", "portal"], cat: "client-portal" },
            { words: ["media", "storage", "file"], cat: "media-storage" },
            { words: ["qr code"], cat: "qr-codes" },
          ];

          function detectCategory(title: string, content: string): string {
            const text = (title + " " + content).toLowerCase();
            for (const rule of KEYWORD_CATEGORIES) {
              if (rule.words.some((w) => text.includes(w))) {
                return coerceCategory(rule.cat) ?? "general";
              }
            }
            return "general";
          }

          function detectTags(title: string, content: string): string[] {
            const text = (title + " " + content).toLowerCase();
            const matched: string[] = ["wp-import"];
            const tagWords: Array<{ words: string[]; tag: string }> = [
              { words: ["new", "release", "launched"], tag: "new-feature" },
              { words: ["improve", "enhance", "update", "upgrade"], tag: "improvement" },
              { words: ["fix", "resolve", "bug"], tag: "fix" },
              { words: ["beta"], tag: "beta" },
            ];
            for (const rule of tagWords) {
              if (rule.words.some((w) => text.includes(w))) matched.push(rule.tag);
            }
            return coerceTags(matched);
          }

          const entries = allPosts.map((p) => {
            const title = decodeEntities(p.title?.rendered || "Untitled");
            const body = p.content?.rendered || "";
            const summary = extractSummary(body);
            const category = detectCategory(title, body);
            const tags = detectTags(title, body);
            const publishedAt = p.date ? new Date(p.date).toISOString() : new Date().toISOString();

            return {
              externalId: `wp-${p.id}`,
              title,
              summary,
              body,
              category,
              tags,
              publishedAt,
            };
          });

          let totalUpserted = 0;
          for (let i = 0; i < entries.length; i += 50) {
            const chunk = entries.slice(i, i + 50);
            await bulkUpsertChangelogEntries(chunk);
            totalUpserted += chunk.length;
          }

          return Response.json({ ok: true, totalFetched: allPosts.length, totalUpserted });
        } catch (err) {
          const msg = err instanceof Error ? err.message : String(err);
          return Response.json({ ok: false, error: msg }, { status: 500 });
        }
      },
    },
  },
});
