INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-23T10:20:56.000Z'),
('wp-1449', 'New templates now available in Leadli', 'We have added a new set of templates in Leadli to help you launch faster across websites, funnels, social posts, and ads. These templates are customizable and designed to save time while keeping your marketing consistent. Website templates (1) Marketing Agency: 1 Funnel templates...', '<p>We have added a new set of templates in Leadli to help you launch faster across websites, funnels, social posts, and ads. These templates are customizable and designed to save time while keeping your marketing consistent.</p>
<h2>Website templates (1)</h2>
<ul>
<li>Marketing Agency: 1</li>
</ul>
<h2>Funnel templates (4)</h2>
<ul>
<li>Other (Coming Soon pages): 3</li>
<li>Marketing Agency: 1</li>
</ul>
<h2>Social templates (8)</h2>
<ul>
<li>Restaurant and Bar: 2</li>
<li>Automotive: 2</li>
<li>Medical: 2</li>
<li>Legal: 2</li>
</ul>
<h2>Facebook ad templates (5)</h2>
<ul>
<li>Home Services: Solar</li>
<li>Travel &amp; Hospitality: Boutique Hotel &amp; Resort</li>
</ul>
<h2>Google ad templates (5)</h2>
<ul>
<li>Other: Creative Artists</li>
<li>Medical: Dermatology Practice</li>
<li>Marketing Agency: CRM Platform</li>
<li>Legal: Accident Attorney</li>
<li>Insurance: Health Insurance Agent</li>
</ul>
<h2>LinkedIn ad templates (7)</h2>
<ul>
<li>Insurance: Agricultural Insurance</li>
<li>Finance: Transaction Processing Services</li>
<li>Finance: Retirement Planning Specialist</li>
<li>Creative: Architecture &amp; Urban Planning Studio</li>
<li>Medical: Chiropractor</li>
<li>Business Coaching &amp; Consulting: Corporate Mentorship</li>
<li>Marketing Agency: Digital Media Creator</li>
</ul>
<h2>New snapshot (1)</h2>
<ul>
<li>V2 Industry: Legal – Intellectual Property Law Firm</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T18:33:12.000Z'),
('wp-1448', 'AI Studio is now available for all locations', 'AI Studio is now available for all locations and can be enabled for the users who need access. Important permission changes AI Studio permissions for sub-account users and admins are now turned off by default. Access remains enabled only for sub-account users who previously had A...', '<p>AI Studio is now available for all locations and can be enabled for the users who need access.</p>
<h2>Important permission changes</h2>
<ul>
<li>AI Studio permissions for sub-account users and admins are now turned off by default.</li>
<li>Access remains enabled only for sub-account users who previously had AI Studio enabled in Labs.</li>
</ul>
<h2>What’s new</h2>
<ul>
<li>A banner appears if users in your sub-accounts still need AI Studio access.</li>
<li>Open Configure, then search for or select users and confirm access.</li>
<li>You can grant access to everyone or choose specific users.</li>
<li>Setup typically completes in a few minutes. After that, selected users can open and use AI Studio.</li>
</ul>
<h2>Who sees the banner</h2>
<ul>
<li>Agency owners, admins, and agency users with write access.</li>
<li>Sub-account users and read-only agency users do not see the banner.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T14:31:55.000Z'),
('wp-1447', 'Manual taxes: set up tax zones by country or state', 'What’s new You can now create Tax Zones under Manual Taxes to organize and apply your own tax rates based on a customer’s country or state. This helps you manage different manual tax setups by region and keep your tax settings easier to maintain. Create geographic tax zones Creat...', '<h2>What’s new</h2>
<p>You can now create Tax Zones under Manual Taxes to organize and apply your own tax rates based on a customer’s country or state. This helps you manage different manual tax setups by region and keep your tax settings easier to maintain.</p>
<h2>Create geographic tax zones</h2>
<ul>
<li>Create zones by grouping specific countries and states.</li>
<li>Name each zone based on the region or the tax setup it represents.</li>
<li>Each country or state can belong to only one Manual Tax Zone to prevent overlap.</li>
</ul>
<p><strong>Example:</strong> Create a Canada Tax Zone, add the relevant regions, and attach the manual tax rates you want to apply for customers in that zone.</p>
<h2>How tax rates apply</h2>
<ul>
<li>You can attach existing user-defined tax rates to a zone.</li>
<li>You can add up to 10 tax rates per zone.</li>
<li>If a tax rate is attached to both the product and the zone, it applies at checkout (the product + zone intersection).</li>
<li>For regions not included in any zone, all rates attached to the product apply without zone filtering.</li>
<li>If a zone has no tax rates, customers in that zone are not charged taxes (from manual taxes).</li>
<li>Deleting a tax rate from a zone removes it only from that zone (it does not delete the tax rate itself).</li>
</ul>
<h2>Automatic taxes and manual taxes</h2>
<ul>
<li>Automatic Taxes take priority when they are available for the country and product combination.</li>
<li>Manual tax rates in Tax Zones apply only when Automatic Taxes are disabled or unavailable.</li>
</ul>
<h2>Where to find it</h2>
<p>Payments → Settings → Taxes → Manual Taxes</p>
<p>From there you can:</p>
<ul>
<li>Create and manage manual tax rates</li>
<li>Create Tax Zones</li>
<li>Select the countries/states for each zone</li>
<li>Attach existing manual tax rates to a zone</li>
<li>Review and update the rates configured for each zone</li>
</ul>
<h2>What’s next</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;