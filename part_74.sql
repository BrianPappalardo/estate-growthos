INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h3>Notes</h3>
<ul>
<li><strong>Complex layouts:</strong> some tables or deeply nested lists may still simplify slightly on mobile compared to web.</li>
<li><strong>Web fonts:</strong> uncommon fonts may fall back to a default font on mobile; structure and content remain intact.</li>
<li><strong>Tasks:</strong> rich text task descriptions were introduced in v4.13, with improved parity in v4.14.</li>
</ul>
<h3>Feedback</h3>
<p>If you notice formatting issues that are still not consistent between web and mobile, share details with your team so they can be reviewed and addressed.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1073', 'Blog updates: image captions, easier keyword entry, and more image actions', 'Leadli Blogs now includes image captions, faster keyword entry for SEO, and more image behavior options inside the editor. What’s new Image captions in the blog editor Add an editable caption field under an image Support for multi-line captions Captions stay attached to images Ca...', '<p>Leadli Blogs now includes image captions, faster keyword entry for SEO, and more image behavior options inside the editor.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Image captions in the blog editor</strong>
<ul>
<li>Add an editable caption field under an image</li>
<li>Support for multi-line captions</li>
<li>Captions stay attached to images</li>
<li>Captions scale with responsive images</li>
</ul>
</li>
<li><strong>Smarter keyword addition</strong>
<p>When scheduling a post, you can paste multiple keywords at once (comma-separated). The editor will split them into individual keywords automatically.</p>
</li>
<li><strong>Enhanced image actions</strong>
<p>Images can now be set to:</p>
<ul>
<li>Open full-size in a modal</li>
<li>Link to a URL</li>
<li>Do nothing</li>
</ul>
</li>
</ol>
<h3>How to use</h3>
<ul>
<li>Open a post in the blog editor</li>
<li>Insert or select an image</li>
<li>Add a caption or choose the image action from the image toolbar</li>
<li>When scheduling, paste comma-separated keywords into the keyword field</li>
<li>Save or publish the post</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Create cleaner blog layouts</li>
<li>Add context with captions</li>
<li>Set up SEO keywords faster</li>
<li>Control image behavior without custom code</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1132', 'Live sessions in courses', 'Live sessions in Leadli courses make it easier to schedule, host, and reuse live learning from one place. You can run one-time classes or recurring series directly inside a course. What’s included Flexible scheduling: Create one-time sessions or recurring sessions (daily, weekly,...', '<p>Live sessions in Leadli courses make it easier to schedule, host, and reuse live learning from one place. You can run one-time classes or recurring series directly inside a course.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Flexible scheduling:</strong> Create one-time sessions or recurring sessions (daily, weekly, or custom patterns) with timezone support.</li>
<li><strong>Built into the course experience:</strong> Live sessions appear in the course outline in a dedicated section, so learners can find upcoming sessions quickly.</li>
<li><strong>Better management:</strong> Edit or cancel sessions at any time. For recurring sessions, apply changes to one occurrence or all upcoming sessions.</li>
<li><strong>Go-live and notifications:</strong> The Go Live button becomes available 15 minutes before the start time. Admins can receive reminder emails, and creators can manage learner notifications for reminders, updates, and go-live alerts.</li>
<li><strong>Recordings for learners:</strong> After a session ends, creators can access recordings, download them, or add them to the course as lessons for future viewing.</li>
</ul>
<h2>Why this matters</h2>
<p>This update brings scheduling, hosting, notifications, learner access, and recordings into a single workflow so live teaching is simpler for creators and more consistent for learners.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:01.000Z'),
('wp-1131', 'SMS widgets for dashboards and reporting', 'What’s new A dedicated SMS section is now available in the dashboard widget panel. Five ready-to-use widgets are available: SMS by status, incoming SMS count, SMS by source type, SMS by sender, and SMS volume over time. Each widget is configurable. You can filter by delivery stat...', '<p><strong>What’s new</strong></p>
<ul>
<li>A dedicated SMS section is now available in the dashboard widget panel.</li>
<li>Five ready-to-use widgets are available: SMS by status, incoming SMS count, SMS by source type, SMS by sender, and SMS volume over time.</li>
<li>Each widget is configurable. You can filter by delivery status, direction, source, or sender to focus on the data you need.</li>
<li>SMS can now be used as a dimension in Custom Metrics, so you can build KPIs like delivery rate or inbound volume using the formula builder.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Open any dashboard and select <strong>Edit Dashboard</strong>.</li>
<li>Select <strong>+ Add Widget</strong> and go to the <strong>SMS</strong> section.</li>
<li>Choose a widget, set your filters and chart type, then select <strong>Save Changes</strong>.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li><strong>All messaging activity in one place</strong> — SMS appears alongside email and calls on your dashboard.</li>
<li><strong>Delivery status at a glance</strong> — Review counts for Sent, Delivered, Failed, or Undelivered over any time period.</li>
<li><strong>Clear visibility into SMS volume</strong> — Break down SMS by source (Workflow, Campaign, Bulk action) or by team member to understand what is driving activity.</li>
<li><strong>Inbound and outbound tracking</strong> — Measure inbound SMS alongside outbound to understand conversation performance.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>All widgets support filtering by status, direction, source, and sender. You can combine filters for more precise segmentation.</li>
<li>This is available on plans that include Dashboards and Reporting.</li>
<li>This is available in the Dashboards, Reporting, and Custom Metrics modules.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:01.000Z'),
('wp-1151', 'LinkedIn integration moved to the Marketplace architecture', 'The LinkedIn integration has been moved to the Marketplace framework. This provides a more secure and scalable foundation for future improvements while keeping the experience the same for existing users. How to enable : In Labs, turn on LinkedIn Marketplace Migration . What’s new...', '<p>The LinkedIn integration has been moved to the Marketplace framework. This provides a more secure and scalable foundation for future improvements while keeping the experience the same for existing users.</p>
<p><strong>How to enable</strong>: In Labs, turn on <strong>LinkedIn Marketplace Migration</strong>.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Enhanced security</strong>: LinkedIn connections now use Marketplace authentication flows to improve credential handling and account security.</li>
<li><strong>More scalable foundation</strong>: The integration now runs on a Marketplace architecture designed to support future LinkedIn enhancements.</li>
<li><strong>Multi-account groundwork</strong>: This change enables future support for connecting and managing multiple LinkedIn accounts in the same location.</li>
<li><strong>Migration approach</strong>: Existing LinkedIn connections continue to work without requiring reconfiguration. Older connections remain on the existing architecture for now; a future update will migrate all connections without user action.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Existing LinkedIn users will be migrated to the Marketplace-based integration when the feature leaves Labs.</li>
<li>New LinkedIn connections are created through the Marketplace architecture.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;