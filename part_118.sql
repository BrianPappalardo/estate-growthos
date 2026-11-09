INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Up to 6 roles can be added per template.</li>
<li>Roles populate automatically only when sending via a Workflow (not manual send).</li>
<li>If a required role email is missing, you will be prompted to add it before sending.</li>
<li>Duplicate emails across roles will trigger an alert.</li>
<li>Currently available on web.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1283', 'AI Builder version history and one-click restore', 'Overview The Workflow AI Builder now keeps a record of each version it creates. Every AI build or edit adds a version card in the chat, and you can restore any version with one click. What’s included A version card for every AI iteration: Each build or edit from the AI Assistant ...', '<p><strong>Overview</strong></p>
<p>The Workflow AI Builder now keeps a record of each version it creates. Every AI build or edit adds a version card in the chat, and you can restore any version with one click.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>A version card for every AI iteration:</strong> Each build or edit from the AI Assistant adds a card in the chat where the change happened.</li>
<li><strong>Current version indicator:</strong> The card that matches the active canvas is highlighted, so you can easily see the version you are on.</li>
<li><strong>One-click restore:</strong> Use the three-dot menu on any earlier card and choose “Restore this version” to revert immediately.</li>
<li><strong>Non-destructive history:</strong> Restoring an older version does not remove newer versions. You can move between versions as needed.</li>
<li><strong>Unsaved indicator:</strong> If auto-save is off, cards show an “Unsaved” label until you manually save the workflow. If auto-save is on, this label does not appear.</li>
<li><strong>Works with Version History:</strong> “Show in version history” opens the Version History tab, where AI and manual versions appear together in a single timeline.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Ask the AI Assistant to build or edit your workflow.</li>
<li>A version card appears in the chat and the current version is highlighted.</li>
<li>Ask for another change. The new card becomes the current version, and earlier cards remain available to restore.</li>
<li>Use the three-dot menu on any card to restore that version or open it in Version History.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>AI edits are easier to manage when you can roll back changes quickly. This update makes it safer to experiment, compare different versions, and restore a previous setup without rebuilding from scratch. Keeping AI and manual changes in the same Version History timeline also helps you track what changed and when.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1282', 'Explain this workflow for snapshot-imported workflows', 'Overview Workflows imported through a snapshot now show an "Explain this workflow" option at the top of the builder. Selecting it opens the AI Assistant with a clear breakdown of what the workflow does. What’s changed Explain this workflow option : Shown at the top of workflows b...', '<p><strong>Overview</strong></p>
<p>Workflows imported through a snapshot now show an &#8220;Explain this workflow&#8221; option at the top of the builder. Selecting it opens the AI Assistant with a clear breakdown of what the workflow does.</p>
<p><strong>What’s changed</strong></p>
<ul>
<li><strong>Explain this workflow option</strong>: Shown at the top of workflows brought in through a snapshot.</li>
<li><strong>One-click explanation</strong>: Opens the AI Assistant with an explanation of triggers, actions, and branching logic.</li>
<li><strong>Dismissible</strong>: You can dismiss it once and it will not reappear for that workflow.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open a workflow imported through a snapshot.</li>
<li>Select &#8220;Explain this workflow&#8221; at the top of the builder.</li>
<li>Read the explanation in the AI Assistant panel.</li>
<li>Ask follow-up questions or describe changes you want to make.</li>
</ol>
<p><strong>Why it matters</strong></p>
<p>Snapshot workflows are inherited, so it is not always clear what they do. This makes it easier to understand a workflow right away and adjust it without needing additional support.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1281', 'New templates are now available', 'We have published new templates to help you build websites, funnels, email campaigns, ads, and workflows more quickly. All templates are designed to be easy to edit so you can adjust them to your brand and launch faster. New website templates (1) Business, Coaching & Consulting (...', '<p>We have published new templates to help you build websites, funnels, email campaigns, ads, and workflows more quickly. All templates are designed to be easy to edit so you can adjust them to your brand and launch faster.</p>
<h3>New website templates (1)</h3>
<ul>
<li>Business, Coaching &amp; Consulting (1)</li>
</ul>
<h3>New store templates (1)</h3>
<ul>
<li>Restaurant and Bar (1)</li>
</ul>
<h3>New email templates (1)</h3>
<ul>
<li>Real Estate (1)</li>
</ul>
<h3>New social templates (4)</h3>
<ul>
<li>Insurance (2)</li>
<li>Other (2)</li>
<li>Home Services (2)</li>
<li>Financial (2)</li>
</ul>
<h3>New Facebook ad templates (2)</h3>
<ul>
<li>Real Estate: Residential Architect</li>
<li>Travel &amp; Hospitality: Tour Guide</li>
</ul>
<h3>New Google ad templates (5)</h3>
<ul>
<li>Home Services: House Cleaning</li>
<li>Health &amp; Wellness: Wellness Guidance</li>
<li>Finance: Credit Score Repair</li>
<li>Creative: Live Band</li>
<li>Business Coaching &amp; Consulting: Financial Advisor</li>
</ul>
<h3>New LinkedIn ad templates (5)</h3>
<ul>
<li>Business Coaching &amp; Consulting: Career Counselor</li>
<li>Creative: Website Developer</li>
<li>Finance: Ledger Manager</li>
<li>Marketing Agency: Creative Agency</li>
<li>Business Coaching &amp; Consulting: Entrepreneur Coach</li>
</ul>
<h3>New workflow templates (2)</h3>
<ul>
<li>Sales &amp; Appointments: Appointment Reminder (24h + 1h)</li>
<li>Lead Generation &amp; Nurturing: New Lead Round-Robin Assignment</li>
</ul>
<h3>New snapshot (1)</h3>
<ul>
<li>Automotive: Roadside Assistance</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1280', 'Hover animations are now available for buttons', 'Buttons can now animate when a visitor hovers over them. You can choose from 21 built-in hover effects and adjust settings like color, size, distance, and timing from the sidebar. No custom CSS is required. What this solves Previously, button hover behavior was limited to a small...', '<p>Buttons can now animate when a visitor hovers over them. You can choose from 21 built-in hover effects and adjust settings like color, size, distance, and timing from the sidebar. No custom CSS is required.</p>
<p><strong>What this solves</strong></p>
<p>Previously, button hover behavior was limited to a small set of effects with no customization. More polished hover interactions required custom CSS, which was harder to manage across templates and not accessible to everyone.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;