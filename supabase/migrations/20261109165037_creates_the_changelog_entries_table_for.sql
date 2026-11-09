-- Leadli product changelog. Public read (the marketing /features page shows it),
-- writes only through the verified webhook endpoint (service_role). We seed a
-- representative slice of the existing WordPress changelog so the page is not
-- empty on first load; the webhook adds new entries going forward.

CREATE TABLE IF NOT EXISTS public.changelog_entries (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  summary text NOT NULL DEFAULT '',
  body text NOT NULL DEFAULT '',
  category text NOT NULL DEFAULT 'general',
  tags text[] NOT NULL DEFAULT '{}',
  published_at timestamptz NOT NULL DEFAULT now(),
  external_id text UNIQUE,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS changelog_entries_published_at_idx
  ON public.changelog_entries (published_at DESC);

GRANT SELECT ON public.changelog_entries TO anon;
GRANT SELECT ON public.changelog_entries TO authenticated;
GRANT ALL ON public.changelog_entries TO service_role;

ALTER TABLE public.changelog_entries ENABLE ROW LEVEL SECURITY;

CREATE POLICY "changelog_public_read"
  ON public.changelog_entries
  FOR SELECT TO anon, authenticated
  USING (true);

-- Seed a representative slice of the existing changelog (most recent first).
INSERT INTO public.changelog_entries (title, summary, category, tags, published_at) VALUES
  ('Test SMS in workflows now includes a country picker', 'The “Test Phone Number” field in the Send SMS workflow action now uses the standard country picker.', 'automations', ARRAY['sms','workflows','improved'], '2026-08-27'),
  ('Certificate AI (Beta) is now available', 'Certificate AI (Beta) lets you create a certificate starting from a short prompt. Describe what the certificate is for and AI generates a starting design.', 'courses', ARRAY['ai','certificates','new'], '2026-08-27'),
  ('Date range can count only available working days', 'The Date Range setting now has a more accurate counting option across Calendars, Services, and Workflows that counts only available working days.', 'calendar', ARRAY['calendar','improved'], '2026-08-27'),
  ('WhatsApp messaging limits are now shown at the portfolio level', 'We updated how WhatsApp messaging limits appear in your sub-account to match Meta’s current model.', 'conversations', ARRAY['whatsapp','improved'], '2026-08-27'),
  ('Trigger workflows in bulk for Companies and Custom Objects', 'You can now trigger workflows for multiple Company or Custom Object records at once, directly from the list view.', 'automations', ARRAY['workflows','companies','new'], '2026-08-26'),
  ('Calendar guest enhancements: more flexible guest details', 'We improved guest management for calendars so you can choose what information to collect about each guest.', 'calendar', ARRAY['calendar','improved'], '2026-08-26'),
  ('Request contact info to collect phone numbers from WhatsApp username leads', 'When someone messages you on WhatsApp using a username, WhatsApp may share only their username. You can now request their phone number.', 'conversations', ARRAY['whatsapp','new'], '2026-08-25'),
  ('Chat Widget now works with Brand Boards', 'The Chat Widget now integrates with Brand Boards, so you can keep every widget consistent with your brand.', 'chat-widget', ARRAY['chat-widget','brand-boards','new'], '2026-08-25'),
  ('Chat widget: compliance notice and consent options', 'The chat widget now includes separate settings for a legal notice and visitor consent.', 'chat-widget', ARRAY['chat-widget','compliance','new'], '2026-08-25'),
  ('Offer multiple meeting lengths in a single Leadli calendar', 'You can now offer multiple meeting lengths in a single calendar, so people booking can choose the time that fits.', 'calendar', ARRAY['calendar','new'], '2026-08-25'),
  ('Free checkout without a credit card in Leadli Forms and Surveys', 'You can now choose whether a credit card is required when someone places a $0 order through a form or survey.', 'forms-surveys-quizzes', ARRAY['forms','ecommerce','new'], '2026-08-24'),
  ('Use custom field numbers as metrics in Leadli dashboards and reports', 'You can now use numeric and monetary custom fields on Contacts and Opportunities as report metrics.', 'reporting', ARRAY['dashboards','custom-fields','new'], '2026-08-23'),
  ('New templates are now available', 'New templates have been added to Leadli to help you build websites, funnels, emails, ads, and more.', 'templates', ARRAY['templates','new'], '2026-08-22'),
  ('Badge automation is available in workflows', 'You can now issue badges and use them to trigger follow-up actions in workflows.', 'automations', ARRAY['workflows','badges','new'], '2026-08-21'),
  ('Anthropic and Google models are now available in the Leadli AI Agent Action', 'You can now use Anthropic and Google models in the Leadli AI Agent Action in workflows.', 'ai', ARRAY['ai','workflows','new'], '2026-08-20'),
  ('Calendar AI: Set up a booking calendar in minutes', 'Calendar AI helps you create a booking calendar, configure it, and make your first test booking in minutes.', 'calendar', ARRAY['calendar','ai','new'], '2026-08-20'),
  ('Email events now include a Message ID in the webhook picker', 'Email event triggers now include a unique Message ID you can add to your workflows.', 'automations', ARRAY['email','workflows','new'], '2026-08-19'),
  ('Workflow Builder: List values are now supported in text fields', 'The custom value picker now supports list-type values, such as order line items, in workflow text fields.', 'automations', ARRAY['workflows','improved'], '2026-08-18'),
  ('QR Codes: Save to Apple Wallet and Google Wallet', 'You can now save QR codes directly to Apple Wallet or Google Wallet.', 'qr-codes', ARRAY['qr-codes','new'], '2026-08-18'),
  ('Ask AI Scheduler (Mobile): Schedule prompts to run automatically', 'Ask AI Scheduler helps your assistant keep working when you are not in the app.', 'ai', ARRAY['ai','mobile','new'], '2026-08-18'),
  ('Prospect AI: major improvements now available', 'Prospect AI has received a major upgrade. What started as an automated lead finder is now a far more capable prospecting assistant.', 'ai', ARRAY['ai','prospecting','improved'], '2026-08-11'),
  ('Import data directly from HubSpot into Leadli', 'Moving from HubSpot to Leadli just got easier. With the HubSpot Importer, you can connect and import your contacts.', 'crm', ARRAY['crm','integrations','new'], '2026-08-13'),
  ('Conversations AI: improved audio understanding', 'Leadli has improved the audio transcription used by Conversations AI to better understand voice messages.', 'conversations', ARRAY['conversation-ai','improved'], '2026-08-11'),
  ('New Leadli mobile app task manager (Tasks V2)', 'Tasks V2 is an updated task manager in the Leadli mobile app — faster, more consistent, and easier to use.', 'task-management', ARRAY['tasks','mobile','new'], '2026-08-11')
ON CONFLICT (external_id) DO NOTHING;