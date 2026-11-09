INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>More precise automation handling</strong><br />Manual interventions can pause the bot without affecting workflows, and automated messages can be sent without unintentionally stopping the bot.</li>
<li><strong>Reactivation stays configurable</strong><br />The “Reactivate bot after” setting continues to work as before, regardless of whether sleep was triggered by a manual or workflow message.</li>
</ol>
<h2>Note</h2>
<p>This is an enhancement to existing functionality. Current behavior will remain unchanged unless you update the new settings.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-01T16:50:55.000Z'),
('wp-991', 'Social Planner: Add video thumbnails for CSV posts', 'You can now include a custom video thumbnail when you upload and schedule posts using CSV/XLSX in Leadli Social Planner. This helps your video posts look consistent and ready before publishing. What’s included Thumbnail support in CSV/XLSX uploads: Add a thumbnailUrl column to yo...', '<p>You can now include a custom video thumbnail when you upload and schedule posts using CSV/XLSX in Leadli Social Planner. This helps your video posts look consistent and ready before publishing.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Thumbnail support in CSV/XLSX uploads:</strong> Add a <code>thumbnailUrl</code> column to your file to set a custom thumbnail for video posts.</li>
<li><strong>Automatically applied:</strong> The thumbnail is applied to the first video in the post during upload.</li>
<li><strong>Updated templates:</strong> The latest CSV/XLSX templates include the <code>thumbnailUrl</code> column.</li>
</ul>
<h3>How to use</h3>
<ol>
<li>Go to <strong>Marketing &gt; Social Planner &gt; Create Post &gt; CSV Post</strong>.</li>
<li>Download the latest CSV/XLSX template.</li>
<li>Add the thumbnail link in the <code>thumbnailUrl</code> column.</li>
<li>Upload your file as usual.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The thumbnail applies only to the first video in a post.</li>
<li>Multiple video thumbnails in a single post are not supported.</li>
<li>Results can vary by social platform.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-01T16:50:31.000Z'),
('wp-989', 'Badges in the Leadli Client Portal', 'Badges are now easier to access and manage in a dedicated area of the Leadli Client Portal. What’s new Dedicated Badges tab: Badges now have their own section in the Client Portal. All badges in one view: See all issued badges in a clean, organized layout. Download and share: Dow...', '<p>Badges are now easier to access and manage in a dedicated area of the Leadli Client Portal.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Dedicated Badges tab:</strong> Badges now have their own section in the Client Portal.</li>
<li><strong>All badges in one view:</strong> See all issued badges in a clean, organized layout.</li>
<li><strong>Download and share:</strong> Download and share badges easily, similar to certificates.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Badges are easier to find and use.</li>
<li>Badges have the same visibility as certificates.</li>
<li>You can share achievements more clearly.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-01T16:50:02.000Z'),
('wp-980', 'Email failure messages are now clearer in Conversations', 'We updated Leadli to make failed email messages easier to understand and troubleshoot without interrupting your work. What changed Failed emails now show clearer error messages. Error detail links open in a new tab so you can review information without losing your place. Why it m...', '<p>We updated Leadli to make failed email messages easier to understand and troubleshoot without interrupting your work.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Failed emails now show clearer error messages.</li>
<li>Error detail links open in a new tab so you can review information without losing your place.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>You can quickly see why an email did not send.</li>
<li>Reviewing error details no longer takes you away from your current view.</li>
</ul>
<p>These updates are intended to make debugging faster and day-to-day work smoother.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-04-30T18:29:40.000Z'),
('wp-981', 'Conversations: Marketplace app source is now shown in message details', 'Overview You can now see which Marketplace app sent a message in Conversations by viewing the message details. What changed Messages sent through Marketplace apps or custom providers now show the app name and app ID. To view it, open a conversation and click a message to open its...', '<p><strong>Overview</strong></p>
<p>You can now see which Marketplace app sent a message in Conversations by viewing the message details.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Messages sent through Marketplace apps or custom providers now show the app name and app ID.</li>
<li>To view it, open a conversation and click a message to open its details. If the message was sent through an OAuth-connected Marketplace app, the app name and ID will be shown.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-04-30T18:29:18.000Z'),
('wp-982', 'Meeting Room updates: seamless rejoin and clearer host controls', 'Overview Meeting Rooms in Communities are now more resilient and easier to manage. Common disruptions like page refreshes, network drops, or permission issues no longer end sessions. Seamless rejoin Meetings no longer end when the host disconnects unexpectedly Hosts can rejoin th...', '<p><strong>Overview</strong></p>
<p>Meeting Rooms in Communities are now more resilient and easier to manage. Common disruptions like page refreshes, network drops, or permission issues no longer end sessions.</p>
<p><strong>Seamless rejoin</strong></p>
<ul>
<li>Meetings no longer end when the host disconnects unexpectedly</li>
<li>Hosts can rejoin the same session</li>
<li>Attendees remain connected</li>
</ul>
<p><strong>Clearer end and leave controls</strong></p>
<ul>
<li><strong>End meeting for all</strong>: ends the session for everyone</li>
<li><strong>Leave</strong>: prompts host reassignment before the host exits</li>
</ul>
<p><strong>Automatic host restoration</strong></p>
<ul>
<li>The original host automatically regains host privileges when they return</li>
<li>A temporary host reverts to participant</li>
<li>No manual reassignment is needed</li>
</ul>
<p><strong>Reliability improvements</strong></p>
<ul>
<li>Handles refreshes, network drops, and permission issues more smoothly</li>
<li>Reduces forced restarts</li>
<li>Supports uninterrupted collaboration</li>
</ul>
<p><strong>Summary</strong></p>
<p>These updates help meetings continue without interruption and make it easier to manage host transitions.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-30T18:28:52.000Z'),
('wp-983', 'Improved sales pages for communities and courses', 'Sales pages across Leadli Communities have been updated to make listings clearer and easier to browse. What’s new Communities A media carousel that supports images and videos (YouTube, Loom, Vimeo) Media auto-syncs so manual updates are not required The carousel cycles automatica...', '<p>Sales pages across Leadli Communities have been updated to make listings clearer and easier to browse.</p>
<p><strong>What’s new</strong></p>
<p><strong>Communities</strong></p>
<ul>
<li>A media carousel that supports images and videos (YouTube, Loom, Vimeo)</li>
<li>Media auto-syncs so manual updates are not required</li>
<li>The carousel cycles automatically to help visitors review media</li>
</ul>
<p><strong>Courses</strong></p>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;