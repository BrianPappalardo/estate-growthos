INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>A structured curriculum view with modules, lessons, and thumbnails</li>
<li>An improved course preview to help visitors understand the course before enrolling</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Listings are easier to understand at a glance</li>
<li>Visitors can evaluate offerings faster</li>
<li>The browsing experience is improved</li>
</ul>
<p>More improvements to discovery and sales pages are planned.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-04-30T18:28:05.000Z'),
('wp-985', 'Certificates and badges: editing improvements', 'We introduced improvements to make designing certificates and badges faster, more precise, and easier to use. What’s new Hover highlight : Elements highlight when you hover over them, making it easier to identify and select items on the canvas. Improved resize control : Resize el...', '<p>We introduced improvements to make designing certificates and badges faster, more precise, and easier to use.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Hover highlight</strong>: Elements highlight when you hover over them, making it easier to identify and select items on the canvas.</li>
<li><strong>Improved resize control</strong>: Resize elements from the edge or corner you drag for more predictable adjustments.</li>
<li><strong>Keyboard shortcuts for text</strong>: Use standard shortcuts for faster editing:
<ul>
<li>Ctrl/Cmd + B: Bold</li>
<li>Ctrl/Cmd + I: Italic</li>
<li>Ctrl/Cmd + U: Underline</li>
</ul>
</li>
<li><strong>Copy and paste from anywhere</strong>: Paste content from external tools like Docs or OpenAI without formatting issues.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Faster and smoother design experience</li>
<li>Better control over layouts and elements</li>
<li>Less time fixing formatting issues</li>
<li>More intuitive editing overall</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-30T18:27:09.000Z'),
('wp-987', 'Leadli workflows: Add to Notes now supports note titles and colors', 'The Add to Notes workflow action now supports contact note titles and note colors. How it works When a workflow creates a contact note, you can optionally set a title and choose a color. Existing workflows are not affected because these fields are optional. How to use it Open a w...', '<p>The <strong>Add to Notes</strong> workflow action now supports contact note titles and note colors.</p>
<h3>How it works</h3>
<p>When a workflow creates a contact note, you can optionally set a title and choose a color. Existing workflows are not affected because these fields are optional.</p>
<h3>How to use it</h3>
<ul>
<li>Open a workflow and add or edit the Add to Notes action.</li>
<li>Set a note title and a note color if needed.</li>
<li>Save and publish the workflow.</li>
</ul>
<h3>Additional notes</h3>
<ul>
<li>This update does not change any existing notes.</li>
<li>Attachments are not included in this update.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-30T18:26:30.000Z'),
('wp-988', 'Add Note action now available in Leadli custom object workflows', 'What’s new Leadli workflows now include an Add Note action for custom objects. This lets you automatically save notes directly to a custom object record. How it works When a workflow runs on a custom object record, the Add Note action creates a note on that record. This helps you...', '<p><strong>What’s new</strong></p>
<p>Leadli workflows now include an Add Note action for custom objects. This lets you automatically save notes directly to a custom object record.</p>
<p><strong>How it works</strong></p>
<p>When a workflow runs on a custom object record, the Add Note action creates a note on that record. This helps your team capture updates and context without leaving the record.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a custom object workflow.</li>
<li>Add the Add Note action.</li>
<li>Enter the note content, then save and publish the workflow.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Custom objects let teams track more than contacts. Note support makes it easier to keep important updates attached to the records your team works with every day.</p>
<p><strong>Example</strong></p>
<p>A consulting team can add a note to a Project record when a milestone is completed.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Custom object workflows support the Add Note action.</li>
<li>Support for note titles or color coding may be added in a future update</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-30T18:25:59.000Z'),
('wp-975', 'Meetings: one personal link you can reuse', 'Overview If you are tired of creating a new meeting link for every session, Meetings in the Client Portal now supports reusable links and recurring sessions so scheduling stays consistent. What''s new Reusable meeting links Share one link with your team or clients Reuse it for fut...', '<p><strong>Overview</strong></p>
<p>If you are tired of creating a new meeting link for every session, Meetings in the Client Portal now supports reusable links and recurring sessions so scheduling stays consistent.</p>
<p><strong>What&#8217;s new</strong></p>
<p><strong>Reusable meeting links</strong></p>
<ul>
<li>Share one link with your team or clients</li>
<li>Reuse it for future sessions</li>
<li>Reduce last-minute setup and confusion</li>
<li>Create one-time meetings for single sessions or events</li>
<li>Create recurring meetings that keep the same link each time</li>
</ul>
<p><strong>Where to find it</strong></p>
<p>Go to <strong>Client Portal &gt; Account Settings &gt; Meeting</strong> to get your personal link.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Hosts can start a session at any time</li>
<li>Participants join using the same link</li>
<li>Links do not expire after a session ends</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-04-29T15:51:08.000Z'),
('wp-974', 'API versioning in our public documentation', 'Overview We added API versioning to our public documentation so developers can work against a specific version without unexpected breaking changes. What’s included Versioned documentation for each API version A version switcher inside the documentation Continued access to older v...', '<h2>Overview</h2>
<p>We added API versioning to our public documentation so developers can work against a specific version without unexpected breaking changes.</p>
<h2>What’s included</h2>
<ul>
<li>Versioned documentation for each API version</li>
<li>A version switcher inside the documentation</li>
<li>Continued access to older versions with full documentation</li>
<li>Version-specific changelogs that show additions, updates, and deprecations</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Makes integrations more predictable and stable</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;