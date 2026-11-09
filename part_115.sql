INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Keep important post details such as summary text, media, call-to-action buttons, event information, and offer details.</li>
<li>View synced Google Business Profile posts alongside scheduled and published posts from other social channels in your content calendar.</li>
<li>Automatic daily refresh of supported posts and engagement data every 24 hours, with clear sync status and reconnect prompts if needed.</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Marketing → Social Planner → Settings.</li>
<li>Enable Google Business Profile Post Sync.</li>
<li>Allow the initial sync to complete.</li>
<li>View your synced posts inside Social Planner.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Manage Google Business Profile content alongside your other social channels.</li>
<li>Import historical posts without manual recreation.</li>
<li>Improve reporting with a more complete content history.</li>
<li>Simplify content management for businesses and agencies with multiple locations.</li>
<li>Save time by keeping everything in one place.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Must be enabled per location through Labs.</li>
<li>By default, posts from the last 30 days are synced. If fewer posts exist, older posts (up to 365 days) are imported automatically.</li>
<li>Sync runs every 24 hours and is not real-time.</li>
<li>Cloning is supported for text-only and single-image posts only.</li>
<li>Multi-image and video posts cannot be cloned due to composer limitations.</li>
<li>Engagement metrics are limited to data supported by Google Business Profile APIs.</li>
<li>Deleted Google Business Profile posts continue to appear in Social Planner because sync is one-way (GBP → Social Planner).</li>
<li>Supported only for Google Business Profile accounts.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1292', 'WhatsApp message statistics in workflows', 'You can now review how your WhatsApp messages perform directly in your workflows. WhatsApp statistics are available inside workflows so you can track delivery results for each message and review individual message details in one place. What is included Message status tracking: Se...', '<p>You can now review how your WhatsApp messages perform directly in your workflows. WhatsApp statistics are available inside workflows so you can track delivery results for each message and review individual message details in one place.</p>
<h2>What is included</h2>
<ul>
<li><strong>Message status tracking:</strong> See totals for sent, pending, delivered, read, and failed messages for a workflow WhatsApp action, based on the statuses provided by Meta.</li>
<li><strong>Date range filtering:</strong> Choose a specific time period to review performance for a campaign or send window.</li>
<li><strong>Individual message details:</strong> Open a message to view recipient information and timestamps.</li>
<li><strong>Export:</strong> Export statistics for reporting or deeper analysis.</li>
<li><strong>Refresh:</strong> Refresh the data to pull the latest message statuses.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Automation</strong> and select the workflow that contains a WhatsApp action.</li>
<li>Open the <strong>WhatsApp</strong> action and select <strong>Statistics</strong>.</li>
<li>Review the summary metrics and open a message to see details.</li>
<li>Use the date range selector to adjust the reporting window.</li>
<li>Select <strong>Export</strong> if you want to download the results.</li>
</ol>
<h2>Why this matters</h2>
<p>WhatsApp delivery is not guaranteed. Messages can remain pending, fail, or go undelivered. Having delivered, read, and failed counts inside the workflow that sent the messages helps you identify issues quickly and export details when needed.</p>
<h2>Resources</h2>
<ul>
<li>WhatsApp workflow statistics support article (Leadli)</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1291', 'WhatsApp: AI template generator for Leadli', 'AI template generator for WhatsApp You can create WhatsApp message templates from a plain description inside Leadli. Describe your use case (for example, a payment reminder or a delivery update) and the AI drafts a template aligned with Meta''s rules, including Leadli variables yo...', '<h2>AI template generator for WhatsApp</h2>
<p>You can create WhatsApp message templates from a plain description inside Leadli. Describe your use case (for example, a payment reminder or a delivery update) and the AI drafts a template aligned with Meta&#8217;s rules, including Leadli variables you can personalize before submitting.</p>
<p>Describe what you want to say and get a drafted, pre-categorized template you can review and submit instead of building it field by field.</p>
<h2>What&#8217;s new</h2>
<p><strong>AI drafting from a plain description</strong></p>
<ul>
<li><strong>New entry point:</strong> Under <strong>Create Template</strong>, choose <strong>AI Template</strong>.</li>
<li><strong>Describe, don&#8217;t build:</strong> Provide your scenario and audience, and the AI drafts the template with Leadli variables ready to personalize.</li>
</ul>
<p><strong>Built-in categorization and checks</strong></p>
<ul>
<li><strong>Automatic categorization:</strong> The AI classifies the draft as Utility, Marketing, or Authentication (the same categories Meta uses for its messaging rules).</li>
<li><strong>Inline validation:</strong> While you draft, you get recommendations on length, formatting, and policy fit before you submit to Meta.</li>
</ul>
<p><strong>Fully editable before submit</strong></p>
<ul>
<li><strong>You stay in control:</strong> Edit the copy, variables, and calls to action, then submit to Meta for approval when it looks right.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>CRM → WhatsApp → Templates → Create Template → AI Template</strong>.</li>
<li>Describe your use case and audience.</li>
<li>Review the AI-drafted template, its category, and the validation hints.</li>
<li>Optional: edit copy, variables, and calls to action.</li>
<li>Submit for Meta approval.</li>
</ol>
<h2>Why this matters</h2>
<p>Meta applies different messaging rules by template category. For example, Utility templates are not subject to the same per-user marketing frequency limits that Marketing templates are. Getting the category and formatting right before you submit can reduce surprises during approval and sending. The AI template generator includes categorization and flags formatting or policy issues while you write so you can review earlier in the process.</p>
<p><strong>Open CRM → WhatsApp → Templates, choose AI Template, and draft your next template from a description.</strong></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1290', 'WhatsApp template management redesign', 'We rebuilt the WhatsApp Templates and Template Folders experience on our latest design system. This gives you a cleaner and faster way to manage templates at scale, including finding, organizing, and restructuring your template library. What''s new Refresh without a full page relo...', '<p>We rebuilt the WhatsApp Templates and Template Folders experience on our latest design system. This gives you a cleaner and faster way to manage templates at scale, including finding, organizing, and restructuring your template library.</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Refresh without a full page reload:</strong> Use the refresh button to update templates and folders in place. This also pulls the latest Meta approval statuses without reloading the page.</li>
<li><strong>Folder navigation:</strong> Open a folder and work inside it. Inside a folder, the Templates view shows only that folder&#8217;s templates, and the Folders view shows only its subfolders. The templates list also shows where each template is located.</li>
<li><strong>Filters and sorting:</strong> Filter by Status, Language, Last edited, and Category. Sort by Template name, Language, Category, Last edited, or Status.</li>
<li><strong>Flexible reorganization:</strong> Move folders and templates across levels. You can nest folders, move them back to a parent level, and move templates between folders.</li>
<li><strong>Updated interface:</strong> The templates and folders screens have been rebuilt for a cleaner, more consistent experience.</li>
</ul>
<h2>Why this matters</h2>
<p>As WhatsApp usage grows, template libraries can become hard to manage. Filters, sorting, clear folder navigation, and visibility into where templates live make it easier to find and reorganize templates, especially on larger accounts.</p>
<p>Open WhatsApp Templates to try filtering, sorting, or moving a folder. Updates appear immediately in the new structure.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1289', 'WhatsApp templates: cleaner selection, RTL editing, and compliance visibility', 'We released several improvements to WhatsApp templates to make selection more reliable, support right-to-left (RTL) languages while editing, and show compliance status before a send fails. What’s changed Cleaner, faster template selection Approved-only dropdowns: When you select ...', '<p>We released several improvements to WhatsApp templates to make selection more reliable, support right-to-left (RTL) languages while editing, and show compliance status before a send fails.</p>
<h2>What’s changed</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;