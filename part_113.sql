INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>You can select an existing timer.</li>
<li>You can create a new timer.</li>
</ul>
<p>When creating a new timer, Email AI collects the end date, style, and destination link, and then embeds the selected timer into the generated email.</p>
<p>If the timer prompt is skipped or times out, Email AI falls back gracefully and continues without interruption.</p>
<h3>Benefits</h3>
<ul>
<li>Makes time-sensitive campaigns easier to create.</li>
<li>Helps add urgency without manual timer configuration.</li>
<li>Reuses existing timers when available.</li>
<li>Avoids showing irrelevant suggestions.</li>
<li>Creates more context-aware promotional emails.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1261', 'PIT token limit per subaccount increased', 'Overview The PIT token limit per subaccount has been increased to support more integrations and workflows. Previously, each subaccount could create up to 5 PIT tokens. This update raises the limit to 20 PIT tokens per subaccount, making it easier to manage API access. What’s impr...', '<p><strong>Overview</strong></p>
<p>The PIT token limit per subaccount has been increased to support more integrations and workflows.</p>
<p>Previously, each subaccount could create up to 5 PIT tokens. This update raises the limit to 20 PIT tokens per subaccount, making it easier to manage API access.</p>
<p><strong>What’s improved</strong></p>
<ul>
<li>PIT token limit increased from 5 to 20 per subaccount</li>
<li>More integrations can use dedicated PIT tokens</li>
<li>More flexibility when managing API access</li>
</ul>
<p><strong>How to access</strong></p>
<ul>
<li>Open the PIT token management section in the relevant subaccount.</li>
<li>Create and manage up to 20 PIT tokens.</li>
<li>Review existing tokens.</li>
<li>Generate additional tokens as needed.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Supports a larger number of integrations and workflows</li>
<li>Reduces the need to reuse tokens across multiple services</li>
<li>Makes API access management more scalable</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1260', 'New Leadli templates are available', 'We have released new templates to support common marketing needs such as websites, funnels, and email campaigns. These templates are customizable and designed to help you build faster while keeping a consistent look and feel. New templates included Website templates (2) Health & ...', '<p>We have released new templates to support common marketing needs such as websites, funnels, and email campaigns. These templates are customizable and designed to help you build faster while keeping a consistent look and feel.</p>
<p><strong>New templates included</strong></p>
<p><strong>Website templates (2)</strong></p>
<ul>
<li>Health &amp; Wellness (1)</li>
<li>Home Services (1)</li>
</ul>
<p><strong>Social templates (8)</strong></p>
<ul>
<li>Health &amp; Wellness (2)</li>
<li>Business Coaching and Consulting (2)</li>
<li>Creative (2)</li>
<li>Travel &amp; Hospitality (2)</li>
</ul>
<p><strong>Facebook ad templates (2)</strong></p>
<ul>
<li>Finance (1)</li>
<li>Insurance (1)</li>
</ul>
<p><strong>Google ad templates (5)</strong></p>
<ul>
<li>Beauty &amp; Fashion: Makeup Artist</li>
<li>Automotive: Auto Body Repair</li>
<li>Travel &amp; Hospitality: B&amp;B</li>
<li>Restaurant &amp; Bar: Brewpub</li>
<li>Real Estate: Home Inspector</li>
</ul>
<p><strong>LinkedIn ad templates (5)</strong></p>
<ul>
<li>Insurance: Life Insurance</li>
<li>Business Coaching &amp; Consulting: Lifestyle Coaching</li>
<li>Finance: Accounting Firm</li>
<li>Insurance: Home Insurance</li>
<li>Creative: Video Production &amp; Editing</li>
</ul>
<p><strong>Workflow templates (1)</strong></p>
<ul>
<li>Industry-Specific: Client Onboarding Workflow</li>
</ul>
<p><strong>Updated template (1)</strong></p>
<p>One existing template set has been refreshed with a modern website design, a matching funnel, updated forms, and updated email templates for a more consistent customer journey. We also improved pipeline setup, naming, and automation organization.</p>
<ul>
<li>Home Services: Plumber</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1259', 'Automatic schema markup when publishing Websites, Funnels, and Webinars', 'Overview There is a new setting called Auto-generate schema . When it is enabled, it creates schema markup for any page that is published without schema. Previously, schema had to be added manually in the editor, one page at a time. If a page was published without schema, it coul...', '<p><strong>Overview</strong></p>
<p>There is a new setting called <strong>Auto-generate schema</strong>. When it is enabled, it creates schema markup for any page that is published without schema.</p>
<p>Previously, schema had to be added manually in the editor, one page at a time. If a page was published without schema, it could miss structured data that helps search and AI discovery.</p>
<p>With this update, when the setting is on and you publish a page that does not have schema:</p>
<ul>
<li>Schema markup is generated automatically in the background</li>
<li>Publishing is not delayed; generation runs in parallel</li>
<li>Existing schema is not overwritten</li>
<li>It works across page publishing methods (builder publish, save-triggered publish, and version-history publish)</li>
<li>It is available for Websites, Funnels, and Webinars</li>
</ul>
<p>You can find it under <strong>Settings</strong> in the <strong>SEO &amp; AEO</strong> section:</p>
<ul>
<li>Auto-generate schema — “Automatically add schema markup to pages that don’t have it when published.”</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Schema markup can improve rich results in Google and helps AI answer engines understand your pages. Auto-generation ensures new pages are published with structured data without extra manual steps.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;