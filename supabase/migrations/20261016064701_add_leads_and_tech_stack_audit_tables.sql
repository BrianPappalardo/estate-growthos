-- Leads captured from the GrowthOS booking modal (anonymous lead capture).
-- Public INSERT only (lead form); reads happen via an authenticated admin
-- view, so there is intentionally no anon/authenticated SELECT policy.
CREATE TABLE IF NOT EXISTS public.leads (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email text NOT NULL,
  first_name text NOT NULL,
  last_name text,
  firm_name text,
  phone text,
  team_size text,
  monthly_inquiries text,
  selected_slot timestamptz,
  booking_submitted boolean NOT NULL DEFAULT false,
  source text NOT NULL DEFAULT 'growthos_landing',
  created_at timestamptz NOT NULL DEFAULT now()
);

GRANT INSERT ON public.leads TO anon;
GRANT INSERT ON public.leads TO authenticated;
GRANT ALL ON public.leads TO service_role;

ALTER TABLE public.leads ENABLE ROW LEVEL SECURITY;

CREATE POLICY "lead_capture_insert"
  ON public.leads
  FOR INSERT TO anon, authenticated
  WITH CHECK (true);

-- Tech stack audits saved from the thank-you page homework calculator.
-- Each save is a new row tied to the booking email. Public INSERT only;
-- the firm reads these via an authenticated admin view.
CREATE TABLE IF NOT EXISTS public.tech_stack_audits (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email text NOT NULL,
  first_name text,
  last_name text,
  firm_name text,
  team_size integer NOT NULL DEFAULT 1,
  selected_tools jsonb NOT NULL DEFAULT '[]'::jsonb,
  custom_tools jsonb NOT NULL DEFAULT '[]'::jsonb,
  total_current_monthly numeric(12, 2) NOT NULL DEFAULT 0,
  leadli_monthly numeric(12, 2) NOT NULL DEFAULT 199,
  monthly_savings numeric(12, 2) NOT NULL DEFAULT 0,
  annual_savings numeric(12, 2) NOT NULL DEFAULT 0,
  source text NOT NULL DEFAULT 'growthos_thankyou',
  created_at timestamptz NOT NULL DEFAULT now()
);

GRANT INSERT ON public.tech_stack_audits TO anon;
GRANT INSERT ON public.tech_stack_audits TO authenticated;
GRANT ALL ON public.tech_stack_audits TO service_role;

ALTER TABLE public.tech_stack_audits ENABLE ROW LEVEL SECURITY;

CREATE POLICY "audit_capture_insert"
  ON public.tech_stack_audits
  FOR INSERT TO anon, authenticated
  WITH CHECK (true);