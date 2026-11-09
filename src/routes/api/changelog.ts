import { createFileRoute } from "@tanstack/react-router";
import { createHmac, timingSafeEqual } from "node:crypto";
import {
  ChangelogEntrySchema,
  insertChangelogEntry,
  bulkUpsertChangelogEntries,
} from "@/lib/changelog.functions";

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
            { ok: false, errors: parsed.error.flatten() },
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

          function detectCategory(title: string, content: string): string {
            const text = (title + " " + content).toLowerCase();
            if (
              text.includes("workflow") ||
              text.includes("automation") ||
              text.includes("trigger")
            )
              return "automations";
            if (
              text.includes("calendar") ||
              text.includes("appointment") ||
              text.includes("booking") ||
              text.includes("scheduling")
            )
              return "calendar";
            if (text.includes("chat widget") || text.includes("live chat")) return "chat_widget";
            if (
              text.includes("crm") ||
              text.includes("contact") ||
              text.includes("opportunity") ||
              text.includes("pipeline")
            )
              return "crm";
            if (
              text.includes("community") ||
              text.includes("course") ||
              text.includes("membership") ||
              text.includes("gokollab")
            )
              return "courses";
            if (text.includes("analytics") || text.includes("dashboard") || text.includes("report"))
              return "reporting";
            if (
              text.includes("ai") ||
              text.includes("gpt") ||
              text.includes("ask ai") ||
              text.includes("agent")
            )
              return "ai";
            if (text.includes("form") || text.includes("survey") || text.includes("quiz"))
              return "forms-surveys-quizzes";
            if (text.includes("task") || text.includes("project") || text.includes("kanban"))
              return "task-management";
            if (text.includes("payment") || text.includes("invoice") || text.includes("confido"))
              return "payments";
            return "general";
          }

          const entries = allPosts.map((p) => {
            const title = decodeEntities(p.title?.rendered || "Untitled");
            const body = p.content?.rendered || "";
            const summary = extractSummary(body);
            const category = detectCategory(title, body);
            const publishedAt = p.date ? new Date(p.date).toISOString() : new Date().toISOString();

            return {
              externalId: `wp-${p.id}`,
              title,
              summary,
              body,
              category,
              tags: ["wp-import"],
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
