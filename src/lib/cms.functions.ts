import { createServerFn } from "@tanstack/react-start";
import { z } from "zod";
import { requireSupabaseAuth } from "@/integrations/supabase/auth-middleware";

/**
 * Lightweight CMS server functions.
 *
 * - getContentEdits: public read of all saved overrides for a route.
 *   Called from the home page loader so saved edits render on first paint.
 * - saveContentEdit: authenticated write. Protected by requireSupabaseAuth
 *   AND an admin role check, so only admins can mutate content.
 * - getAdminStatus: returns whether the current caller is signed in + admin,
 *   used by the client to decide whether to render the inline editor.
 */

export type ContentEdit = {
  id: string;
  route: string;
  element_path: string;
  field_type: "text" | "image";
  value: string;
  updated_at: string;
};

export const getContentEdits = createServerFn({ method: "GET" })
  .validator((data) => z.object({ route: z.string().min(1).max(100) }).parse(data))
  .handler(async ({ data }) => {
    const { supabaseAdmin } = await import("@/integrations/supabase/client.server");
    const result = await supabaseAdmin
      .from("content_edits")
      .select("id, route, element_path, field_type, value, updated_at")
      .eq("route", data.route);
    if (result.error) {
      return { edits: [] as ContentEdit[], error: "Service unavailable" };
    }
    return { edits: (result.data ?? []) as ContentEdit[], error: null };
  });

export const saveContentEdit = createServerFn({ method: "POST" })
  .middleware([requireSupabaseAuth])
  .validator((data) =>
    z
      .object({
        route: z.string().min(1).max(100),
        element_path: z.string().min(1).max(500),
        field_type: z.enum(["text", "image"]),
        value: z.string().max(50000),
      })
      .parse(data),
  )
  .handler(async ({ data, context }) => {
    const userId = context.userId as string;

    const { supabaseAdmin } = await import("@/integrations/supabase/client.server");
    const { data: roleRow } = await supabaseAdmin
      .from("user_roles")
      .select("role")
      .eq("user_id", userId)
      .eq("role", "admin")
      .maybeSingle();
    if (!roleRow) {
      throw new Response("Forbidden", { status: 403 });
    }

    const { error } = await supabaseAdmin.from("content_edits").upsert(
      {
        route: data.route,
        element_path: data.element_path,
        field_type: data.field_type,
        value: data.value,
        updated_by: userId,
      },
      { onConflict: "route,element_path" },
    );
    if (error) {
      throw new Response("Save failed", { status: 500 });
    }
    return { ok: true };
  });

export const getAdminStatus = createServerFn({ method: "GET" }).handler(async () => {
  const { getRequest } = await import("@tanstack/react-start/server");
  const request = getRequest();
  const authHeader = request?.headers?.get("authorization") ?? "";
  const token = authHeader.startsWith("Bearer ") ? authHeader.slice(7) : "";
  if (!token || token.split(".").length !== 3) {
    return { isAdmin: false, email: null };
  }

  const { createClient } = await import("@supabase/supabase-js");
  const SUPABASE_URL = process.env["SUPABASE_URL"];
  const SUPABASE_PUBLISHABLE_KEY = process.env["SUPABASE_PUBLISHABLE_KEY"];
  if (!SUPABASE_URL || !SUPABASE_PUBLISHABLE_KEY) {
    return { isAdmin: false, email: null };
  }

  const authClient = createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY, {
    global: { headers: { Authorization: `Bearer ${token}` } },
    auth: { persistSession: false, autoRefreshToken: false },
  });
  const { data: userData } = await authClient.auth.getUser(token);
  if (!userData?.user?.id) return { isAdmin: false, email: null };

  const { supabaseAdmin } = await import("@/integrations/supabase/client.server");
  const { data: roleRow } = await supabaseAdmin
    .from("user_roles")
    .select("role")
    .eq("user_id", userData.user.id)
    .eq("role", "admin")
    .maybeSingle();

  return {
    isAdmin: !!roleRow,
    email: userData.user.email ?? null,
  };
});
