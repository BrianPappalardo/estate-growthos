INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1179', 'Group contacts by source in dashboards and reports', 'Overview You can now group Contacts widgets by Source in your dashboards and reports. This lets you see how many contacts come from each source, and it matches the same Source grouping already available for Opportunities. How to use it Open a dashboard and add or edit a Contacts ...', '<h2>Overview</h2>
<p>You can now group Contacts widgets by <strong>Source</strong> in your dashboards and reports. This lets you see how many contacts come from each source, and it matches the same Source grouping already available for Opportunities.</p>
<h2>How to use it</h2>
<ol>
<li>Open a dashboard and add or edit a Contacts widget.</li>
<li>In the widget settings, open the <strong>Group By</strong> dropdown.</li>
<li>Select <strong>Source</strong> to group contacts by their source.</li>
</ol>
<h2>Why this helps</h2>
<ul>
<li>See which sources generate the most contacts.</li>
<li>Use the same grouping approach across Contacts and Opportunities.</li>
<li>Make better decisions about which channels to focus on.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1178', 'MMLite adoption banner in Conversations', 'Leadli now shows an MMLite adoption banner in Conversations for eligible WhatsApp subscribers. The banner appears above the message composer and prompts users to switch to the WhatsApp MMLite API version. What changed Eligible WhatsApp subscribers will see a banner in Conversatio...', '<p>Leadli now shows an MMLite adoption banner in Conversations for eligible WhatsApp subscribers. The banner appears above the message composer and prompts users to switch to the WhatsApp MMLite API version.</p>
<h2>What changed</h2>
<p>Eligible WhatsApp subscribers will see a banner in Conversations that links to the option to move to the MMLite API version.</p>
<p>This complements the existing banner on the WhatsApp Services page.</p>
<h2>Why this matters</h2>
<p>Switching to the MMLite API version can improve WhatsApp messaging performance and supports a more efficient messaging infrastructure.</p>
<h2>Availability</h2>
<p>The MMLite adoption banner is available in Conversations for eligible WhatsApp subscribers.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1177', 'Workflow Builder loads faster', 'Overview Workflow Builder now opens workflows faster from the Workflow list. In many cases, the first load is up to 4x faster, so you spend less time waiting. What changed The way Workflow Builder resources load and render has been optimized so workflows and builder components ar...', '<p><strong>Overview</strong></p>
<p>Workflow Builder now opens workflows faster from the Workflow list. In many cases, the first load is up to 4x faster, so you spend less time waiting.</p>
<p><strong>What changed</strong></p>
<p>The way Workflow Builder resources load and render has been optimized so workflows and builder components are available sooner. This improves responsiveness as soon as you open a workflow.</p>
<p><strong>Notes</strong></p>
<ul>
<li>The biggest improvement is usually on the first time a workflow is opened.</li>
<li>Load time can still vary based on workflow complexity, browser state, network conditions, and device performance.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1176', 'Smarter calendar sync for rentals', 'Overview We improved how imported calendars affect availability in Rentals. Some OTA platforms and external calendar providers sync availability as date-only bookings without specific start and end times. Previously, those imports were blocked from 12:00 AM to 12:00 AM by default...', '<h2>Overview</h2>
<p>We improved how imported calendars affect availability in Rentals.</p>
<p>Some OTA platforms and external calendar providers sync availability as date-only bookings without specific start and end times. Previously, those imports were blocked from 12:00 AM to 12:00 AM by default.</p>
<p>If you use pre-defined rental times (for example, a 3:00 PM start and an 11:00 AM end), the midnight-to-midnight block could make adjacent dates look unavailable when they should not be.</p>
<p>With this update, imported calendar bookings now follow your listing’s booking period configuration and your configured rental times. This results in more accurate availability across your booking page and calendar views.</p>
<h2>What’s new</h2>
<h3>Imported date-only events respect your rental times</h3>
<p>For applicable rental booking periods, imported bookings without specific times are now blocked using your configured rental times or rental hours (instead of generic midnight-to-midnight blocks).</p>
<p>This applies to:</p>
<ul>
<li>Date Selector mode</li>
<li>Fixed Durations mode (Daily/Weekly/Monthly)</li>
</ul>
<p><strong>Example:</strong> If your rental uses <strong>3:00 PM – 11:00 AM</strong> and an imported calendar blocks <strong>April 15 – April 17</strong>, Rentals will block availability from <strong>April 15, 3:00 PM</strong> to <strong>April 17, 11:00 AM</strong>.</p>
<h3>Timestamped bookings use exact times</h3>
<ul>
<li>If imported events include specific start and end times, those exact times are respected.</li>
<li>This helps partial-day and overnight events block only the intended time range.</li>
<li>For booking modes where customers select time, imports will continue to use exact timestamps when provided. If exact times are not provided, the block will remain for the full day.</li>
</ul>
<h3>Future imported events stay in sync</h3>
<ul>
<li>If you update booking modes or rental times, future and ongoing imported events are recalculated using the latest configuration.</li>
<li>Past events are not changed.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Edit a rental listing.</li>
<li>Connect an external calendar using Calendar Sync.</li>
<li>Configure your booking mode and rental times.</li>
<li>Imported bookings will be blocked using the appropriate logic for that listing.</li>
</ol>
<p>If you later change your booking mode or rental times, future imported events will automatically reflect the update.</p>
<h2>Why this matters</h2>
<ul>
<li>More accurate availability from connected calendars</li>
<li>Better compatibility with OTA platforms that sync date-only events</li>
<li>Prevents listings from being unintentionally blocked on neighboring dates</li>
<li>Clearer behavior for how synced calendars affect bookings</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1175', 'Media Library access in AI Studio', 'What’s new AI Studio now works with your Media Library. In Chat, Visual Edits, and Publish, you can browse and reuse images and other assets you already have. You can add reference images to guide the AI, insert asset links into prompts, replace an image while editing a page, and...', '<h2>What’s new</h2>
<p>AI Studio now works with your Media Library. In Chat, Visual Edits, and Publish, you can browse and reuse images and other assets you already have. You can add reference images to guide the AI, insert asset links into prompts, replace an image while editing a page, and set your site favicon and social images. You can also upload files directly from your device when needed.</p>
<p>Assets used in a project stay with that project, including remixed projects and projects loaded from snapshots.</p>
<h2>Why we added this</h2>
<p>Teams asked for a way to use existing Media Library assets and keep branding consistent without leaving AI Studio or re-uploading files. This update makes your saved assets available throughout the build process and helps keep visuals consistent across projects.</p>
<h2>Key capabilities</h2>
<ul>
<li>Use Media Library reference images in Chat to help the AI match your brand</li>
<li>Insert Media Library asset links (images, documents, video, or audio) directly into prompts</li>
<li>Replace images in Visual Edits using an asset from your Media Library</li>
<li>Choose Media Library files for favicon and social/OG images in Publish settings</li>
<li>Upload, paste, or drag-and-drop files when an asset is not already in your Media Library</li>
<li>Keep used assets attached to projects when remixed or loaded from a snapshot</li>
</ul>
<h2>How to use it</h2>
<ol>
<li><strong>Chat:</strong> Open the attach menu, choose Media Library, then add a reference image or insert a link.</li>
<li><strong>Visual Edits:</strong> Select an image element, then use the Media Library option next to the Image URL field to choose a replacement.</li>
<li><strong>Publish:</strong> In Publish settings, choose Media Library for favicon and social image fields, or upload from your device.</li>
</ol>
<h2>Good to know</h2>
<ul>
<li>You can still upload files directly from your device when needed</li>
<li>Media used in AI Studio stays with the project when it is remixed or loaded from a snapshot</li>
<li>This helps keep branding and assets consistent across builds</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;