-- Lightweight CMS part 1: schema only (no policy references to has_role)

DROP TYPE IF EXISTS public.app_role;
CREATE TYPE public.app_role AS ENUM ('admin');

CREATE TABLE IF NOT EXISTS public.user_roles (
  user_id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  role public.app_role NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now()
);

GRANT SELECT ON public.user_roles TO authenticated;
GRANT ALL ON public.user_roles TO service_role;
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "users read own roles" ON public.user_roles;
CREATE POLICY "users read own roles"
  ON public.user_roles
  FOR SELECT TO authenticated
  USING (auth.uid() = user_id);

CREATE TABLE IF NOT EXISTS public.content_edits (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  route text NOT NULL,
  element_path text NOT NULL,
  field_type text NOT NULL DEFAULT 'text',
  value text NOT NULL,
  updated_by uuid REFERENCES auth.users(id) ON DELETE SET NULL,
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (route, element_path)
);

GRANT SELECT ON public.content_edits TO anon;
GRANT SELECT ON public.content_edits TO authenticated;
GRANT INSERT, UPDATE, DELETE ON public.content_edits TO authenticated;
GRANT ALL ON public.content_edits TO service_role;

ALTER TABLE public.content_edits ENABLE ROW LEVEL SECURITY;