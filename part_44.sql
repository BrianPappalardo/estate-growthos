INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Open a Company field or a Custom Object field</li>
<li>Select the option you want to remove</li>
<li>Review the affected record count (if shown)</li>
<li>Confirm the deletion</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Used options remain visible on existing records</li>
<li>Deleted options cannot be selected for new records, filters, or workflow conditions</li>
<li>Contact and Opportunity fields are not included in this update</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-29T14:14:31.000Z'),
('wp-1460', 'Mexico fixed-line SMS is no longer supported (status label in Phone Numbers)', 'Because of an upstream carrier migration, SMS is no longer available on Mexico local phone numbers. What changed In Settings > Phone Numbers > Manage Numbers > Phone Numbers, Mexico local numbers now show an “SMS unavailable” label. This applies to existing and newly purchased Me...', '<p>Because of an upstream carrier migration, SMS is no longer available on Mexico local phone numbers.</p>
<h2>What changed</h2>
<ul>
<li>In Settings &gt; Phone Numbers &gt; Manage Numbers &gt; Phone Numbers, Mexico local numbers now show an “SMS unavailable” label.</li>
<li>This applies to existing and newly purchased Mexico local numbers.</li>
<li>If a number has multiple status labels, they will now wrap to avoid breaking the table layout.</li>
</ul>
<h2>Where to look</h2>
<ul>
<li>Go to Settings &gt; Phone Numbers &gt; Manage Numbers &gt; Phone Numbers.</li>
<li>For Mexico local numbers, you will see an “SMS not supported” label with a tooltip.</li>
<li>Voice (and WhatsApp, where available) will continue to work.</li>
</ul>
<p>No setup is required. The label appears automatically for affected numbers.</p>
<p>If you have questions, contact Leadli support.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-29T13:16:31.000Z'),
('wp-1459', 'Leadli update: Meta campaign budget controls in Ad Manager', 'We improved Meta campaign budgeting in Ad Manager so you can choose where budgets are managed and how Meta can optimize spend across ad sets. What’s new Choose budget level: Set a single campaign budget or manage budgets per ad set. Optional budget sharing: When using ad set budg...', '<p>We improved Meta campaign budgeting in Ad Manager so you can choose where budgets are managed and how Meta can optimize spend across ad sets.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Choose budget level:</strong> Set a single campaign budget or manage budgets per ad set.</li>
<li><strong>Optional budget sharing:</strong> When using ad set budgets, you can allow Meta to share up to 20% of the budget across eligible ad sets.</li>
<li><strong>Daily and lifetime budgets:</strong> Supported at the campaign level and, when applicable, at the ad set level.</li>
<li><strong>Bid strategy controls:</strong> Use supported bid strategies such as Highest volume or Cost per result goal (configured at the ad set level when selected).</li>
<li><strong>Post-publish editing:</strong> Update budget setup after publishing and switch between campaign and ad set budgets.</li>
<li><strong>In-app guidance:</strong> The builder explains how campaign and ad set budgets work and what budget sharing means.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open Ad Manager and create or edit a Meta campaign.</li>
<li>Under <strong>Budget</strong>, choose <strong>Campaign budget</strong> or <strong>Ad set budget</strong>.</li>
<li>If you choose <strong>Ad set budget</strong>, optionally enable sharing up to 20% of the budget with other ad sets.</li>
<li>Select <strong>Daily</strong> or <strong>Lifetime</strong> budget and choose the appropriate bid strategy.</li>
<li>If using ad set budgets, open each ad set to configure its budget, schedule, and any cost-per-result goal settings.</li>
<li>Review and publish the campaign.</li>
</ol>
<h2>Why it matters</h2>
<p>These changes give you more flexibility to decide whether Meta optimizes spend across the entire campaign or keeps control at the ad set level, while still allowing optional budget sharing to help shift spend toward better-performing ad sets.</p>
<h2>Notes</h2>
<ul>
<li>Budget sharing and post-publish changes depend on Meta’s eligibility and editing rules.</li>
<li>Budget sharing behavior can vary based on campaign and ad set settings.</li>
<li>Budget and schedule controls appear at the campaign or ad set level based on the setup you choose.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-29T07:45:26.000Z'),
('wp-1458', 'Create custom invoice layouts with the AI layout builder', 'You can now create and manage your own invoice layouts using the AI layout builder in Leadli. Describe the layout you want, let AI generate a starting point, then adjust it in a visual editor before publishing. Create and edit invoice layouts with AI Generate a layout from a prom...', '<p>You can now create and manage your own invoice layouts using the AI layout builder in Leadli. Describe the layout you want, let AI generate a starting point, then adjust it in a visual editor before publishing.</p>
<h3>Create and edit invoice layouts with AI</h3>
<ul>
<li><strong>Generate a layout from a prompt:</strong> Describe the invoice you want (for example, a clean two-column layout with your logo, an itemized table, and payment terms).</li>
<li><strong>Recreate an existing invoice:</strong> Upload or describe your current invoice layout and have AI rebuild it so you do not need to start from scratch.</li>
<li><strong>Refine the layout:</strong> Ask AI for changes or open the layout in the editor to adjust styles, move elements, and add or remove sections.</li>
<li><strong>Restore points:</strong> Each AI update saves a restore point so you can return to an earlier version if needed.</li>
<li><strong>Publish when ready:</strong> Publishing is available once the layout has content. After publishing, the updated version appears in your layouts list.</li>
</ul>
<h3>Manage layouts in one place</h3>
<ul>
<li>Create separate layouts for different clients or use cases.</li>
<li>Preview, download, clone, rename, or delete layouts from the layouts list.</li>
<li>Switch between grid and list views.</li>
<li>Search and sort layouts by name or last updated date.</li>
<li>Use the history view to see who created, edited, published, or copied a layout and when.</li>
</ul>
<h3>How layouts work with invoices</h3>
<ul>
<li>Select a published layout for an invoice to control what your customer sees in the invoice preview.</li>
<li>A layout becomes locked once an invoice is sent or partially paid.</li>
<li>If a layout is deleted, invoices that were already sent will continue to show the original design.</li>
<li>Draft invoices using a deleted layout will switch back to the default layout.</li>
</ul>
<h3>Where to find it</h3>
<ul>
<li>Go to <strong>Payments</strong>, then open the <strong>Invoices &amp; Estimates</strong> menu. The AI layout builder is under <strong>Layouts</strong>.</li>
<li>After you publish a layout, you can select it when creating invoices.</li>
</ul>
<h3>How to activate</h3>
<ul>
<li>Go to <strong>Settings</strong> → <strong>Labs</strong> → <strong>Sub-Account</strong>.</li>
<li>Search for <strong>AI-Powered Custom Invoice Layouts</strong>.</li>
<li>Select <strong>Activate Feature</strong>.</li>
<li>Enable access for specific sub-accounts, or enable it for all sub-accounts.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-28T14:31:27.000Z'),
('wp-1457', 'New templates are available in Leadli', 'New templates have been added to Leadli. You can use them for websites, funnels, email campaigns, social posts, and ads. All templates are customizable and designed to help you publish faster. What’s included Website templates: 1 (Business, Coaching & Consulting) Funnel templates...', '<p>New templates have been added to Leadli. You can use them for websites, funnels, email campaigns, social posts, and ads. All templates are customizable and designed to help you publish faster.</p>
<h3>What’s included</h3>
<ul>
<li>Website templates: 1 (Business, Coaching &amp; Consulting)</li>
<li>Funnel templates: 1 (Other)</li>
<li>Social templates: 8 (Creative: 2; Real Estate: 2; Travel &amp; Hospitality: 2; Other: 2)</li>
<li>Facebook ad templates: 2 (Business Coaching &amp; Consulting – Professional Business Coach; Marketing Agency – Executive Event Marketing)</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;