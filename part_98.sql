INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Other (2)</li>
<li>Insurance (2)</li>
</ul>
<p><strong>Facebook ad templates (2)</strong></p>
<ul>
<li>Automotive – Auto Body and Painting</li>
<li>Finance – Banking</li>
</ul>
<p><strong>Google ad templates (5)</strong></p>
<ul>
<li>Beauty &amp; Fashion – Eyelash Boutique</li>
<li>Automotive – Automotive Repair</li>
<li>Travel &amp; Hospitality – Travel Writer</li>
<li>Restaurant &amp; Bar – Bistro Restaurant</li>
<li>Real Estate – Real Estate Management</li>
</ul>
<p><strong>LinkedIn ad templates (3)</strong></p>
<ul>
<li>Finance – Financial Planner</li>
<li>Marketing Agency – Affiliate</li>
<li>Insurance – Commercial Insurance</li>
</ul>
<p><strong>Workflow templates (3)</strong></p>
<ul>
<li>Lead Generation &amp; Nurturing – Speed-to-Lead SMS + Email</li>
<li>Review &amp; Reputation – Employee/Team Review Collection</li>
<li>Internal Operations – Task Overdue Escalation</li>
</ul>
<p><strong>Snapshot (1)</strong></p>
<ul>
<li>Real Estate – Home Staging</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1226', 'Ad Manager: Use custom values in ad copy', 'Release summary Custom Values are now supported in Ad Manager ad copy fields across Meta, Google, and LinkedIn campaigns. You can insert reusable business details such as business name, city, support email, offer name, service area, phone number, and other saved Custom Values dir...', '<h2>Release summary</h2>
<p>Custom Values are now supported in Ad Manager ad copy fields across Meta, Google, and LinkedIn campaigns.</p>
<p>You can insert reusable business details such as business name, city, support email, offer name, service area, phone number, and other saved Custom Values directly into supported ad copy fields.</p>
<p>These values resolve in the campaign preview and review screens so you can confirm the final ad content before publishing.</p>
<h2>What’s new</h2>
<ol>
<li><strong>Custom values in ad copy</strong> — Insert Custom Values into eligible ad copy fields across Meta, Google, and LinkedIn campaigns.</li>
<li><strong>Custom values picker</strong> — Search, select, and add saved Custom Values into supported fields such as primary text, headlines, descriptions, and introduction text.</li>
<li><strong>Map custom values before publishing</strong> — Review and add missing values used in a campaign before you publish.</li>
<li><strong>Resolved preview</strong> — Preview and review screens show the final resolved copy so you can verify what will appear in the published ad.</li>
<li><strong>Validation for safer publishing</strong> — Alerts appear when Custom Values are missing, invalid, empty, or exceed platform character limits.</li>
<li><strong>Reusable templates across sub-accounts</strong> — Campaign templates can retain Custom Value keys so you can reuse a template across multiple sub-accounts while mapping client-specific values before launch.</li>
</ol>
<h2>How to use</h2>
<ol>
<li>Go to Ad Manager.</li>
<li>Create or edit a campaign for Meta, Google, or LinkedIn.</li>
<li>Open the ad copy section.</li>
<li>Click the Insert Custom Values icon next to a supported copy field.</li>
<li>Search for and select the Custom Value you want to use.</li>
<li>Continue building the campaign.</li>
<li>If prompted, click Map custom values to add or review missing values.</li>
<li>Review the resolved copy in the preview/review screen.</li>
<li>Publish the campaign after validations are cleared.</li>
</ol>
<h2>Why this matters</h2>
<p>Agencies and businesses often reuse the same details across multiple campaigns, such as business name, location, phone number, support email, service area, offer name, and promotional copy.</p>
<p>Previously, these details had to be added manually for each campaign, which increased effort and created inconsistencies.</p>
<p>With Custom Values in ad copy, you can:</p>
<ul>
<li>Create campaigns faster</li>
<li>Reduce repetitive copy entry</li>
<li>Keep ad copy consistent</li>
<li>Reuse templates across sub-accounts</li>
<li>Preview the final resolved copy before publishing</li>
<li>Avoid publishing issues caused by missing or invalid values</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Custom Values are supported only in eligible ad copy fields.</li>
<li>Custom Values are not supported in URL fields, CTA dropdowns, lead form selectors, media upload fields, targeting, budget, or bid strategy fields.</li>
<li>You can save campaigns as drafts even if Custom Values still need attention.</li>
<li>Warnings are shown if required Custom Values are missing, invalid, or exceed character limits.</li>
<li>Updating a Custom Value after publishing will not automatically update already-running ads; you will need to republish after changes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1225', 'Clearer payment provider selection when enabling SaaS or rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step. What’s changed Provider options are shown as cards Payment provi...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Provider options are shown as cards</strong></p>
<p>Payment providers are now displayed as cards with the provider logo, a V1 or V2 version label, and a short description of where billing data is stored (for example, your agency Stripe account vs. directly in Leadli). This makes it easier to compare options side by side.</p>
<p><strong>Unsupported providers are clearly marked</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now shown with a “Not supported” label, instead of appearing as selectable options that fail later in the setup.</p>
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same way whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or create a new SaaS plan in SaaS Configurator.</p>
<p><strong>Step progress is shown during setup</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) is now displayed so you can see where you are in the process and how many steps remain.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including a silent error that could stop the plan selection screen from appearing and a case where reopening the setup could take you to step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Enabling SaaS or rebilling requires choosing how sub-account payments are processed. The updated layout provides clearer context so you can make the right choice the first time, and the consistent experience across entry points reduces confusion during setup.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1224', 'Clearer payment provider selection when enabling SaaS or rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step. What’s changed Provider options are shown as cards Payment provi...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Provider options are shown as cards</strong></p>
<p>Payment providers are now displayed as cards with the provider logo, a V1 or V2 version label, and a short description of where billing data is stored (for example, your agency Stripe account vs. directly in Leadli). This makes it easier to compare options side by side.</p>
<p><strong>Unsupported providers are clearly marked</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now shown with a “Not supported” label, instead of appearing as selectable options that fail later in the setup.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;