import { createFileRoute } from "@tanstack/react-router";
import { createHmac, timingSafeEqual } from "node:crypto";
import { ChangelogEntrySchema } from "@/lib/changelog.functions";
import { insertChangelogEntry } from "@/lib/changelog.functions";

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
    },
  },
});
