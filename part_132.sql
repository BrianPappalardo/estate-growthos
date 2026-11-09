INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Why it matters</strong></p>
<ul>
<li>Teams can see preference-related updates without leaving Conversations.</li>
<li>It’s easier to understand context for follow-up and compliance.</li>
</ul>
<p><strong>Coming next</strong></p>
<p>Additional visibility improvements are in progress, including filters on the Contact Listing page.</p>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:39:07.000Z'),
('wp-1086', 'Wait action update: redesigned scheduling and setup', 'Overview The Wait action has been redesigned with a clearer setup flow, recurring schedules, and an AI-assisted option to help configure common wait behaviors. What changed Intent-based setup: Instead of a long dropdown, you choose what the contact should wait for first, then con...', '<h2>Overview</h2>
<p>The Wait action has been redesigned with a clearer setup flow, recurring schedules, and an AI-assisted option to help configure common wait behaviors.</p>
<h2>What changed</h2>
<ul>
<li><strong>Intent-based setup:</strong> Instead of a long dropdown, you choose what the contact should wait for first, then configure the details.</li>
<li><strong>Recurring schedules:</strong> You can set weekly, monthly, or yearly recurring waits. Weekly supports specific days and times. Monthly supports a specific day or an nth weekday. Yearly supports renewals and annual check-ins.</li>
<li><strong>Wait until a specific date (single step):</strong> Date-based waiting is now configured in one step, including the option to pull the date from a custom field.</li>
<li><strong>Seconds as a unit:</strong> Time delays can be set in seconds for very short pauses between steps.</li>
<li><strong>Dynamic duration:</strong> Wait duration can be pulled from a contact field, custom field, or other supported variable instead of using a fixed value.</li>
<li><strong>Grouped wait types:</strong> Related wait options are grouped together to reduce clutter (for example, contact actions and email events in one place).</li>
<li><strong>Context-based ordering:</strong> If a Wait step follows a send step (SMS, Email, or WhatsApp), “wait for the contact to reply” is surfaced first.</li>
<li><strong>Wait AI option:</strong> You can describe the wait behavior in plain language, and the builder generates a configured Wait action that you can adjust.</li>
</ul>
<h2>Why this matters</h2>
<p>This update reduces setup confusion and removes extra steps for common scenarios (especially waiting until a specific date). It also makes frequently used options easier to find, which should reduce support requests related to workflow timing.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-22T15:38:48.000Z'),
('wp-1084', 'Facebook Lead Ads: Merge contacts by name for lead form submissions', 'Overview We updated the Facebook contact merge feature to support Facebook Lead Form submissions, in addition to Messenger conversations. What changed Previously, the setting "Merge Facebook contacts by name" only applied to Facebook Messenger conversations. Now there are two sep...', '<h2>Overview</h2>
<p>We updated the Facebook contact merge feature to support Facebook Lead Form submissions, in addition to Messenger conversations.</p>
<h2>What changed</h2>
<p>Previously, the setting &#8220;Merge Facebook contacts by name&#8221; only applied to Facebook Messenger conversations.</p>
<p>Now there are two separate settings under<strong> Business Profile &gt; General</strong>:</p>
<ul>
<li>Merge Facebook contacts by matching contact names from Messenger conversations</li>
<li>Merge Facebook contacts by matching contact names from Facebook Lead Form submissions</li>
</ul>
<p>This lets you control merge behavior separately for Messenger contacts and Facebook Lead Ads lead form submissions.</p>
<h2>Why it matters</h2>
<p>This update helps reduce duplicate contacts when leads do not have consistent phone numbers or email addresses.</p>
<ul>
<li>Fewer duplicate contacts</li>
<li>Cleaner CRM records</li>
<li>Improved lead continuity</li>
<li>More reliable contact management across Facebook sources</li>
</ul>
<p>Separating the Messenger and Lead Form settings also provides clearer control over Facebook contact deduplication.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-05-22T15:38:20.000Z'),
('wp-1082', 'Keyboard shortcuts for product images in the lightbox', 'Update You can now use keyboard shortcuts on the Product Details Page when the Open Lightbox zoom option is enabled. What you can do Escape : Close the lightbox Right Arrow : Next image Left Arrow : Previous image Navigation supports wrap-around (last to first, and first to last)...', '<h2>Update</h2>
<p>You can now use keyboard shortcuts on the Product Details Page when the Open Lightbox zoom option is enabled.</p>
<h2>What you can do</h2>
<ul>
<li><strong>Escape</strong>: Close the lightbox</li>
<li><strong>Right Arrow</strong>: Next image</li>
<li><strong>Left Arrow</strong>: Previous image</li>
</ul>
<p>Navigation supports wrap-around (last to first, and first to last). When the lightbox opens, it auto-focuses so the shortcuts work right away. Arrow keys will not scroll the page behind the lightbox.</p>
<h2>How to use</h2>
<ol>
<li>Open a Product Details Page with Open Lightbox zoom enabled.</li>
<li>Click a product image to open the lightbox.</li>
<li>Use Escape, Left Arrow, or Right Arrow to navigate.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The thumbnail strip auto-scrolls to keep the active thumbnail visible.</li>
<li>Mouse actions (arrows, thumbnails, close, zoom, grid toggle) work the same as before.</li>
<li>Supported in both the Page Builder and Builder Preview.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:57:29.000Z'),
('wp-1081', 'AI Agent can now update custom values', 'The AI Agent tool now supports updating custom values as a built-in action. This lets the agent evaluate context during a workflow run and write directly to custom values inside a sub-account. It replaces complex If/Else branching that previously required many separate steps. Wha...', '<p>The AI Agent tool now supports updating custom values as a built-in action. This lets the agent evaluate context during a workflow run and write directly to custom values inside a sub-account. It replaces complex If/Else branching that previously required many separate steps.</p>
<h2>What’s included</h2>
<ul>
<li>Reduces the need for large If/Else trees used to set custom values based on conditions such as day of the week, contact data, date formatting, timezone, or pipeline stage.</li>
<li>Supports the familiar &#8220;Let AI decide&#8221; option or a static value, consistent with other AI Agent tools.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Select <strong>Update Custom Value</strong> as a tool inside the AI Agent action.</li>
<li><strong>Custom Value:</strong> choose a specific custom value to update, or set it to &#8220;Let AI decide&#8221; so the agent selects the right field.</li>
<li><strong>New Value:</strong> enter a fixed value or variable reference, or set it to &#8220;Let AI decide&#8221; so the agent generates the value based on your instructions.</li>
</ol>
<h2>Why this matters</h2>
<p>Workflows that previously needed branching logic for schedules, formatted dates, rolling promo codes, and other context-aware values can now be handled in a single agent step. This reduces maintenance, speeds up execution, and keeps automations simpler.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:57:10.000Z'),
('wp-1083', 'Customize fields in Leadli Marketing Audit website widgets', 'We released new customization options for Marketing Audit Report website widgets. These updates give you more control over how your lead capture form appears to visitors. What’s new You can now customize: Input field labels Placeholder text Supported fields include: First name La...', '<p>We released new customization options for Marketing Audit Report website widgets. These updates give you more control over how your lead capture form appears to visitors.</p>
<h2>What’s new</h2>
<p>You can now customize:</p>
<ul>
<li>Input field labels</li>
<li>Placeholder text</li>
</ul>
<p>Supported fields include:</p>
<ol>
<li>First name</li>
<li>Last name</li>
<li>Phone number</li>
<li>Email</li>
<li>Business</li>
<li>Website</li>
</ol>
<h2>Why it matters</h2>
<p>Marketing audit widgets are often used as lead magnets on websites, landing pages, ads, and outbound campaigns. Previously, the field wording was fixed and could not be adjusted for different audiences.</p>
<p>With this update, you can:</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;