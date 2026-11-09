INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Brand Voice and Design Kit selection is optional during blog generation</li>
<li>New brand assets can be created directly from the blog creation workflow</li>
<li>Works across both Assist Mode and Build Mode</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:35.000Z'),
('wp-1193', 'Recover expired domains inside Leadli', 'What’s new You can now recover expired domains directly inside Leadli during the 41–70 day redemption window without contacting support. The renewal prompt remains available through day 40. During days 41–70, a dedicated recovery flow calculates fees, takes payment, and completes...', '<h2>What’s new</h2>
<p>You can now recover expired domains directly inside Leadli during the 41–70 day redemption window without contacting support.</p>
<p>The renewal prompt remains available through day 40. During days 41–70, a dedicated recovery flow calculates fees, takes payment, and completes recovery in one place.</p>
<h2>How it works</h2>
<ul>
<li>In Domain Settings, select <strong>Recover</strong> for an expired domain. The system checks status in real time and routes you to the correct flow.</li>
<li><strong>Days 1–40 (grace period)</strong>: You’ll see the standard renewal prompt and pay the normal renewal fee. The renewal window has been extended from 28 days to 40 days.</li>
<li><strong>Days 41–70 (redemption period)</strong>: You’ll see a recovery prompt that includes both the renewal fee and the registry redemption fee. Payment and recovery happen in-product.</li>
<li><strong>If the zone is inactive</strong>: You’ll be shown a prompt to contact support.</li>
<li><strong>After day 70</strong>: If the domain has passed day 70 or the zone has been deleted, recovery is no longer available in-product and the domain is moved to External.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Reduces support tickets for domain recovery</li>
<li>Provides a clear self-serve recovery path during the redemption window</li>
<li>Helps prevent churn by making recovery easier at a critical point</li>
<li>Keeps domain lifecycle management inside the product</li>
</ul>
<h2>Important notes</h2>
<ul>
<li>The renewal grace period has been extended from 28 days to 40 days</li>
<li>All expiry logic runs on UTC</li>
<li>Redemption fees are charged at the fixed registry rate with no Leadli or agency markup</li>
<li>Auto-recharge is disabled during recovery to prevent partial payment issues</li>
<li>Some TLDs (including .co and .uk) may still require support help if the zone has already been deleted</li>
<li>No setup is required; the correct recovery flow appears automatically based on the domain’s current status</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1192', 'New templates are now available in Leadli', 'New templates are now available to help you build websites, funnels, and email campaigns more quickly. They are fully customizable and designed to save time while keeping your marketing assets consistent. What’s new Website templates (2) : Finance (1) Email templates (1) : Legal ...', '<p>New templates are now available to help you build websites, funnels, and email campaigns more quickly. They are fully customizable and designed to save time while keeping your marketing assets consistent.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Website templates (2)</strong>: Finance (1)</li>
<li><strong>Email templates (1)</strong>: Legal (1)</li>
<li><strong>Social templates (8)</strong>: Creative (2), Beauty &amp; Fashion (2), Travel &amp; Hospitality (2), Real Estate (2)</li>
<li><strong>Facebook ad templates (2)</strong>: Business Coaching &amp; Consulting – IT Advising; Automotive – Car Rental</li>
<li><strong>Google ad templates (5)</strong>: Home Services – Bathroom Renovation; Health &amp; Wellness – Fitness Center; Finance – Financial Recordkeeper; Creative – Disc Jockey; Business Coaching &amp; Consulting – Personal Development Coach</li>
<li><strong>LinkedIn ad templates (5)</strong>: Creative – Web Designer; Insurance – Auto Insurance Agency; Marketing Agency – Marketing Agency; Business Coaching &amp; Consulting – Business Coach; Finance – Tax Specialist</li>
<li><strong>Workflow templates</strong>: Internal Operations – Lead Score Follow-Up with Asana; Content &amp; Engagement – Instagram Comment to Asana; Internal Operations – Asana Task Slack Alert; Internal Operations – Channel Message to ClickUp Task; Internal Operations – Form to ClickUp Task; Internal Operations – Create Google Contact; Workflow AI – Google Form Email Automation; Sales &amp; Appointments – Notion Opportunity Sync</li>
<li><strong>Snapshot (1)</strong>: Medical – Family Practice Physician</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1188', 'Courses experience improvements', 'Overview We’re introducing three updates to improve the Courses experience in Leadli: a faster way to view member progress from Contacts, better navigation after signing in from shared course and lesson links, and more flexible drip scheduling with hourly release options. These u...', '<h2>Overview</h2>
<p>We’re introducing three updates to improve the Courses experience in Leadli: a faster way to view member progress from Contacts, better navigation after signing in from shared course and lesson links, and more flexible drip scheduling with hourly release options.</p>
<p>These updates help course creators manage learners more efficiently and deliver content with better timing.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Course progress quick link in Contacts</strong>: You can now open Member Analytics for a specific contact directly from Contact Actions in the Client Portal → Offers.</li>
<li><strong>Improved post-login redirects for shared course and lesson links</strong>: If a learner opens a shared link while logged out, after signing in they’ll return to the exact course or lesson they intended to access (instead of the course library homepage).</li>
<li><strong>Drip scheduling now supports hours</strong>: Content can be set to unlock based on hours after enrollment or course access. You can choose an interval between 1 and 23 hours.</li>
</ul>
<h2>How to use</h2>
<h3>Course progress shortcut</h3>
<ol>
<li>Open a contact with an assigned offer.</li>
<li>Go to Contact Actions → Client Portal → Offers.</li>
<li>Select <strong>Course Progress</strong> to open Member Analytics for that contact.</li>
</ol>
<h3>Drip in hours</h3>
<ol>
<li>Open your course outline.</li>
<li>Select the lesson or module status option.</li>
<li>Choose <strong>Drip Hours</strong>.</li>
<li>Set an unlock interval between 1 and 23 hours.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Faster access to individual learner progress without extra navigation</li>
<li>A smoother learner experience by returning users to the right content after sign-in</li>
<li>More control over content timing for onboarding, coaching, and time-sensitive training</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1187', 'Google Ads widgets for dashboards (view ad performance in your workspace)', 'What’s new A dedicated Google Ads section is now available in the Dashboards widget panel. Connect your Google Ads account once at the sub-account level, and all 11 widgets pull data automatically. 11 ready-to-use widgets: Total conversions, Conversions over time, Total cost, Cos...', '<h2>What’s new</h2>
<ul>
<li>A dedicated Google Ads section is now available in the Dashboards widget panel. Connect your Google Ads account once at the sub-account level, and all 11 widgets pull data automatically.</li>
<li>11 ready-to-use widgets: Total conversions, Conversions over time, Total cost, Cost over time, Total clicks, Clicks over time, Total impressions, Impressions over time, Clicks by campaign, Conversions by campaign, and CPC (cost per click).</li>
<li>Each widget is configurable. You can filter by Campaign, Campaign type, Zero impressions, Zero conversions, or PPC markup to show the data your clients need.</li>
<li>Google Ads metrics are now available as dimensions in Custom Metrics, so you can build cross-module KPIs like ROAS or Cost per closed deal using the formula builder.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Connect Google Ads at the sub-account level under Settings → Integrations → Google Ads. All widgets inherit this connection automatically.</li>
<li>Open any dashboard and click Edit dashboard.</li>
<li>Click + Add widget and scroll to the Google Ads section.</li>
<li>Select a widget, confirm your linked ad account in the Integration tab, configure filters and chart type, and click Save changes.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>See Google Ads performance alongside your other reporting widgets, without logging into a separate platform.</li>
<li>Track spend clearly with Total cost and Cost over time.</li>
<li>Identify what’s working with Clicks by campaign and Conversions by campaign.</li>
<li>Connect ad spend to business outcomes by combining Google Ads data with pipeline and revenue data in Custom Metrics.</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;