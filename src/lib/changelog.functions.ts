import { createServerFn } from "@tanstack/react-start";
import { z } from "zod";

export interface ChangelogEntry {
  id: string;
  title: string;
  summary: string;
  body: string;
  category: string;
  tags: string[];
  publishedAt: string;
}

const ChangelogEntrySchema = z.object({
  title: z.string().min(1).max(255),
  summary: z.string().max(1000).default(""),
  body: z.string().max(20000).default(""),
  category: z.string().min(1).max(80).default("general"),
  tags: z.array(z.string().min(1).max(80)).max(20).default([]),
  publishedAt: z.string().optional(),
  externalId: z.string().max(200).optional(),
});

export type ChangelogInput = z.infer<typeof ChangelogEntrySchema>;

/**
 * Public read of the changelog (newest first). Uses the publishable server
 * client so anon RLS applies — only the public SELECT policy rows come back.
 */
export const getChangelog = createServerFn({ method: "GET" }).handler(async () => {
  try {
    const SUPABASE_URL = process.env["SUPABASE_URL"];
    const SUPABASE_PUBLISHABLE_KEY = process.env["SUPABASE_PUBLISHABLE_KEY"];
    if (!SUPABASE_URL || !SUPABASE_PUBLISHABLE_KEY) {
      return { entries: [] as ChangelogEntry[], error: "Service unavailable" };
    }

    const res = await fetch(
      `${SUPABASE_URL}/rest/v1/changelog_entries?select=id,title,summary,body,category,tags,published_at&order=published_at.desc,created_at.desc&limit=1000`,
      {
        headers: {
          apikey: SUPABASE_PUBLISHABLE_KEY,
          Accept: "application/json",
        },
      },
    );

    if (!res.ok) {
      return { entries: [] as ChangelogEntry[], error: "Service unavailable" };
    }

    const rows = (await res.json()) as Array<{
      id: string;
      title: string;
      summary: string;
      body: string;
      category: string;
      tags: string[] | null;
      published_at: string;
    }>;

    const entries: ChangelogEntry[] = rows.map((r) => ({
      id: r.id,
      title: r.title,
      summary: r.summary ?? "",
      body: r.body ?? "",
      category: r.category ?? "general",
      tags: r.tags ?? [],
      publishedAt: r.published_at,
    }));

    return { entries, error: null };
  } catch {
    return { entries: [] as ChangelogEntry[], error: "Service unavailable" };
  }
});

/**
 * Internal insert used by the verified webhook server route. Runs with the
 * service-role client so it bypasses RLS — only call from a verified handler.
 */
export async function insertChangelogEntry(input: ChangelogInput): Promise<{ id: string }> {
  const { supabaseAdmin } = await import("@/integrations/supabase/client.server");

  const { data, error } = await supabaseAdmin
    .from("changelog_entries")
    .insert({
      title: input.title,
      summary: input.summary,
      body: input.body,
      category: input.category,
      tags: input.tags,
      ...(input.publishedAt ? { published_at: input.publishedAt } : {}),
      ...(input.externalId ? { external_id: input.externalId } : {}),
    })
    .select("id")
    .single();

  if (error || !data) {
    throw new Error(error?.message ?? "Failed to insert changelog entry");
  }
  return { id: data.id as string };
}

/**
 * Bulk upsert entries via supabaseAdmin
 */
export async function bulkUpsertChangelogEntries(
  entries: ChangelogInput[],
): Promise<{ count: number }> {
  const { supabaseAdmin } = await import("@/integrations/supabase/client.server");

  const rows = entries.map((e) => ({
    title: e.title,
    summary: e.summary,
    body: e.body,
    category: e.category,
    tags: e.tags,
    ...(e.publishedAt ? { published_at: e.publishedAt } : {}),
    ...(e.externalId ? { external_id: e.externalId } : {}),
  }));

  const { error } = await supabaseAdmin
    .from("changelog_entries")
    .upsert(rows, { onConflict: "external_id" });

  if (error) {
    throw new Error(error.message);
  }
  return { count: rows.length };
}

export { ChangelogEntrySchema };
