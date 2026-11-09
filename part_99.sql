INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same way whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or create a new SaaS plan in SaaS Configurator.</p>
<p><strong>Step progress is shown during setup</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) is now displayed so you can see where you are in the process and how many steps remain.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including a silent error that could stop the plan selection screen from appearing and a case where reopening the setup could take you to step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Enabling SaaS or rebilling requires choosing how sub-account payments are processed. The updated layout provides clearer context so you can make the right choice the first time, and the consistent experience across entry points reduces confusion during setup.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1223', 'Dashboards and custom reports: refreshed interface for a more consistent experience', 'What’s new Dashboards have a more polished look: header, navigation, breadcrumbs, side panel, and modals are now visually unified. Charts and widgets (numeric, bar, donut, line, table, funnel, and more) have updated loading states, error states, and consistent card styling. Advan...', '<h2>What’s new</h2>
<ul>
<li>Dashboards have a more polished look: header, navigation, breadcrumbs, side panel, and modals are now visually unified.</li>
<li>Charts and widgets (numeric, bar, donut, line, table, funnel, and more) have updated loading states, error states, and consistent card styling.</li>
<li>Advanced filters, the quick filter panel, and the date picker now follow the same visual style across dashboards and reports.</li>
<li>The custom metric builder (including the formula builder and filter panel) has a cleaner, more consistent layout.</li>
<li>The report builder, report list, scheduling page, and clone/duplicate flows are now aligned end to end.</li>
<li>The update includes the widget AI summary and widgets for Google Ads, Facebook, and Google Analytics.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Go to Settings → Labs in your account and enable “Dashboard and custom reporting – UI consistency update” to try the refreshed experience.</li>
<li>The updated interface loads automatically when you open Dashboards or Custom Reports.</li>
<li>Your existing dashboards, reports, widgets, filters, and custom metrics remain unchanged.</li>
<li>If something looks off, use the feedback button to let us know.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>More consistency across Dashboards and Custom Reports, so the experience feels the same as you move between pages.</li>
<li>More predictable spacing, typography, dropdowns, and tooltips across the product.</li>
<li>This update sets the foundation for faster improvements in Dashboards and Reporting.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This is a UI consistency update only. No functionality, data, or workflows have changed.</li>
<li>If you use custom CSS styling, you may need to review and adjust styles due to the interface changes.</li>
<li>Minor spacing differences may appear in some areas as part of the alignment work.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1222', 'Clearer payment provider selection for SaaS and rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see a redesigned provider selection screen. It is easier to understand your options and move forward with confidence from the first step. What’s new Visual cards instead of a dropdown Payment providers...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see a redesigned provider selection screen. It is easier to understand your options and move forward with confidence from the first step.</p>
<p><strong>What’s new</strong></p>
<p><strong>Visual cards instead of a dropdown</strong></p>
<p>Payment providers are now shown as cards with the provider logo, a V1 or V2 version label, and a clear note about where billing data is stored (your agency Stripe account vs. directly in Leadli). This makes it easier to compare options before choosing.</p>
<p><strong>Provider compatibility is shown up front</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now labeled as not supported, instead of appearing as options that fail later.</p>
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or add a payment source from Location Billing.</p>
<p><strong>Step progress indicator</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) now appears during setup so you can see where you are in the process.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including an error that stopped the plan selection screen from appearing and a case where reopening setup could place you on step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Setting up SaaS or rebilling requires choosing how sub-account payments are processed. The new layout provides clearer context so you can make the right choice on the first try, and the consistent experience across entry points reduces confusion.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1221', 'More control when adding prospects in the Prospecting Tool', 'We’ve made prospect creation more flexible by giving you control over when Marketing Audit Reports are generated. Previously, every time you added a prospect from search results, a Marketing Audit Report was generated automatically. Some teams prefer to save prospects first and d...', '<p>We’ve made prospect creation more flexible by giving you control over when Marketing Audit Reports are generated.</p>
<p>Previously, every time you added a prospect from search results, a Marketing Audit Report was generated automatically. Some teams prefer to save prospects first and decide later which businesses need a full audit.</p>
<p>Now you can choose what happens when you add a new prospect.</p>
<h2>Choose whether to generate a Marketing Audit Report</h2>
<p>When adding a new prospect, you’ll see an option called <strong>Run marketing audit report</strong>.</p>
<p><strong>If enabled:</strong></p>
<ul>
<li>The prospect is saved.</li>
<li>A Marketing Audit Report is generated automatically.</li>
</ul>
<p><strong>If disabled:</strong></p>
<ul>
<li>The prospect is saved immediately.</li>
<li>No audit is generated.</li>
<li>You can generate the report later from the Prospect Details page.</li>
</ul>
<h2>Faster prospect list building</h2>
<p>This helps teams that prefer to:</p>
<ul>
<li>Save prospects in bulk</li>
<li>Build prospect lists first</li>
<li>Generate audits only for the highest-priority opportunities</li>
</ul>
<p>With this update, you can add prospects without waiting for audit generation each time.</p>
<h2>Audits are still available when you need them</h2>
<p>Marketing Audit Reports can help you identify:</p>
<ol>
<li>Website performance issues</li>
<li>Google Business Profile opportunities</li>
<li>Local SEO insights</li>
<li>Reputation and review gaps</li>
<li>Listings and visibility improvements</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1220', 'Ad Manager: Opportunity Score for Meta campaigns', 'Release summary We added Opportunity Score for Meta campaigns in Leadli Ad Manager. Opportunity Score helps you check how ready a campaign is before you publish. It reviews your setup, highlights areas that may need improvement, and points you to the exact section to update. This...', '<h2>Release summary</h2>
<p>We added <strong>Opportunity Score</strong> for Meta campaigns in Leadli Ad Manager.</p>
<p>Opportunity Score helps you check how ready a campaign is before you publish. It reviews your setup, highlights areas that may need improvement, and points you to the exact section to update. This can reduce missed setup items during review.</p>
<h2>What’s new</h2>
<ol>
<li><strong>Pre-publish Opportunity Score for Meta campaigns</strong> – You can now see an Opportunity Score on the campaign Review screen before publishing a Meta ad campaign.</li>
</ol>
<ul>
<li>Shows a campaign readiness score before launch.</li>
<li>Displays a percentage score with a status such as <strong>Low</strong>, <strong>Medium</strong>, or <strong>High</strong>.</li>
<li>Helps you quickly identify whether the setup needs attention before publishing.</li>
</ul>
<ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;