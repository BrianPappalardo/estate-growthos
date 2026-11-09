INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Create and configure offers</li>
<li>Guide you step by step through the course creation process</li>
<li>Assist with comments, assignments, and other course management workflows</li>
</ul>
<h2>Built-in guardrails</h2>
<ul>
<li>Confirmation prompts for sensitive actions</li>
<li>Clear risk warnings where applicable</li>
<li>Restricted delete actions to help prevent accidental content loss</li>
</ul>
<h2>Why it matters</h2>
<p>AskAI helps make course creation faster, simpler, more creative, and more scalable.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:33:08.000Z'),
('wp-1072', 'Pinterest multi-board publishing in Leadli Social Planner', 'You can now publish a single Pinterest pin to multiple boards from Leadli Social Planner. What changed Multi-board selection (up to 25 boards) : Choose multiple Pinterest boards for one post. Per-board publishing : Each selected board creates its own published pin automatically. ...', '<p>You can now publish a single Pinterest pin to multiple boards from Leadli Social Planner.</p>
<h3>What changed</h3>
<ul>
<li><strong>Multi-board selection (up to 25 boards)</strong>: Choose multiple Pinterest boards for one post.</li>
<li><strong>Per-board publishing</strong>: Each selected board creates its own published pin automatically.</li>
<li><strong>Works across publishing options</strong>: Instant publish, scheduled posts, approval workflows, recurring posts, category queue, and CSV bulk uploads.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Create a new Pinterest post.</li>
<li>Select your Pinterest account(s).</li>
<li>Choose up to 25 boards in the Boards selector.</li>
<li>Publish, schedule, or queue the post.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Reduces manual duplication.</li>
<li>Speeds up Pinterest publishing.</li>
<li>Keeps tracking and analytics separated by board.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Maximum of 25 boards per Pinterest account.</li>
<li>Failures on one board do not block the others.</li>
<li>Existing Pinterest drafts continue to work.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-14T16:32:53.000Z'),
('wp-1070', 'Default values for custom values in emails', 'Summary Leadli now supports setting default (fallback) values for custom values inside the email editor. This helps emails read naturally when a contact field is missing. Why this matters Personalized emails often use custom values that depend on contact data such as first name, ...', '<p><strong>Summary</strong></p>
<p>Leadli now supports setting default (fallback) values for custom values inside the email editor. This helps emails read naturally when a contact field is missing.</p>
<p><strong>Why this matters</strong></p>
<p>Personalized emails often use custom values that depend on contact data such as first name, company name, or appointment details. When that information is missing, emails can show blank spaces or incomplete text, especially in subject lines and the email body.</p>
<p><strong>What changed</strong></p>
<p>You can now set a fallback value for each custom value used in email content, subject lines, and preview text.</p>
<p><strong>Example</strong></p>
<pre>Hi {{contact.first_name}}
Default value: rockstar</pre>
<p><strong>Impact</strong></p>
<ul>
<li>Reduces blank spaces and broken personalization.</li>
<li>Keeps subject lines and email content consistent and professional.</li>
<li>Improves readability even when CRM data is incomplete.</li>
<li>Allows different fallback values for the same custom value in different places.</li>
</ul>
<p><strong>Note</strong></p>
<p>This is supported across workflow emails, campaign emails, bulk actions, and email templates. Default values apply per usage and do not overwrite existing contact data.</p>
<p>If you need help, contact Leadli support at <a href="mailto:support@pappalar.do">support@pappalar.do</a>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:32:30.000Z'),
('wp-1069', 'Conversations: Find unread messages faster', 'Overview This update makes it easier to find unread messages in long conversations. Visual indicators help you go straight to the first unread message so you can respond sooner. What’s new A “New” divider shows where unread messages begin Unread conversations open at the first un...', '<p><strong>Overview</strong></p>
<p>This update makes it easier to find unread messages in long conversations. Visual indicators help you go straight to the first unread message so you can respond sooner.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>A “New” divider shows where unread messages begin</li>
<li>Unread conversations open at the first unread message automatically</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li>Open an unread conversation</li>
<li>You are taken to the first unread message, marked by the “New” divider</li>
<li>The indicator clears when you reply or manually mark the conversation as read. It remains if you navigate away or refresh.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Unread messages can get buried in long threads. This change reduces missed messages and helps you manage conversations more efficiently.</p>
<p><strong>Note</strong></p>
<ul>
<li>The “New” indicator appears only for messages received after April 23, 2026.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-14T16:31:43.000Z'),
('wp-1068', 'Facebook text posts with backgrounds are now available in Social Planner', 'Leadli Social Planner now supports Facebook text-only posts with native-style background colors. You can create, schedule, and publish these posts without leaving Social Planner. What’s included Facebook background text posts: Create text-only posts with built-in background style...', '<p>Leadli Social Planner now supports Facebook text-only posts with native-style background colors. You can create, schedule, and publish these posts without leaving Social Planner.</p>
<h3>What’s included</h3>
<ol>
<li><strong>Facebook background text posts:</strong> Create text-only posts with built-in background styles directly in the post composer.</li>
<li><strong>Background picker in the composer:</strong> When Facebook is selected, you can choose a text background preset and preview it while you write.</li>
<li><strong>Live preview:</strong> The composer shows a Facebook-style preview, updates the background as you change it, and adjusts font size based on text length.</li>
<li><strong>Automatic rules and validation:</strong> Backgrounds are only available for text-only posts. If you add media, background selection is disabled. If a scheduled post includes media, any selected background will be removed.</li>
</ol>
<h3>How to use</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Create a post and choose Facebook as the platform.</li>
<li>Select <strong>Text Background</strong>, choose a preset, add your caption, then publish or schedule.</li>
</ol>
<h3>Why this matters</h3>
<ul>
<li>Create more engaging Facebook posts faster.</li>
<li>Improve visibility in busy social feeds.</li>
<li>Reduce the need to switch to Facebook for background-style posts.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;