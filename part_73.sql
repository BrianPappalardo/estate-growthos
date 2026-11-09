INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Add a poll question (up to 140 characters)</li>
<li>Add 2 to 4 answer options (up to 30 characters each)</li>
<li>Set the poll duration without leaving Social Planner</li>
</ul>
<h3>Poll duration options</h3>
<ul>
<li>1 day</li>
<li>3 days</li>
<li>7 days</li>
<li>14 days</li>
</ul>
<h3>Supported publishing workflows</h3>
<ul>
<li>Instant publishing</li>
<li>Scheduled posts</li>
<li>Recurring posts</li>
<li>Category queue</li>
<li>CSV bulk uploads</li>
<li>Drafts</li>
</ul>
<h3>How to use</h3>
<ol>
<li>Go to Marketing → Social Planner</li>
<li>Create a new post and select a LinkedIn account</li>
<li>Select Add Poll</li>
<li>Enter your question and answer options</li>
<li>Choose a duration</li>
<li>Publish now, schedule it, save as a draft, or add it to a queue</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Create more engaging LinkedIn content</li>
<li>Collect feedback directly through polls</li>
<li>Manage poll publishing alongside other Social Planner content</li>
</ul>
<h3>Notes</h3>
<ul>
<li>LinkedIn polls cannot be combined with images, videos, PDFs, or other media in the LinkedIn version of the post</li>
<li>If you publish to multiple platforms, you can still add media to non-LinkedIn variants</li>
<li>Polls support 2 to 4 answer options</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1128', 'Improved rich text formatting in the mobile app', 'You can now edit rich text on mobile with consistent formatting across web and mobile. What changed Formatted notes, emails, and tasks now preserve spacing and layout when you edit on the web and then edit again on iOS or Android (and the other way around). The problem this addre...', '<p>You can now edit rich text on mobile with consistent formatting across web and mobile.</p>
<h3>What changed</h3>
<p>Formatted notes, emails, and tasks now preserve spacing and layout when you edit on the web and then edit again on iOS or Android (and the other way around).</p>
<h3>The problem this addresses</h3>
<p>Previously, switching between devices could change spacing, remove blank lines, split quoted blocks, or cause formatting to look different after saving.</p>
<h3>What’s included in this update</h3>
<ul>
<li>Improved consistency for line spacing and blank lines</li>
<li>Better handling for block quotes and mixed formatting</li>
<li>More reliable behavior for email snippets and rich text content edited on mobile</li>
</ul>
<h3>How it helps</h3>
<ul>
<li><strong>Saves time:</strong> less reformatting when switching devices</li>
<li><strong>More consistent messages:</strong> emails and notes keep the intended spacing</li>
<li><strong>More reliable editing on the go:</strong> fewer formatting issues after saving</li>
</ul>
<h3>How to get started</h3>
<ol>
<li><strong>Update the app:</strong> install version 4.14 or later on iOS or Android.</li>
<li><strong>Open an existing note, email, or task</strong> that includes rich formatting.</li>
<li><strong>Edit and save on mobile</strong>, then re-open it on any device to confirm formatting remains consistent.</li>
</ol>
<h3>Where rich text is available</h3>
<p>Rich text is available in Contact Notes, Conversations (Emails), Tasks, Appointment Notes, Invoice Terms, and other areas that use the shared rich text editor.</p>
<h3>Release and availability</h3>
<table>
<tbody>
<tr>
<td><strong>Release date</strong></td>
<td>May 2026</td>
</tr>
<tr>
<td><strong>Available version</strong></td>
<td>v4.14</td>
</tr>
<tr>
<td><strong>Status</strong></td>
<td>Public</td>
</tr>
<tr>
<td><strong>Leadli</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>LeadConnector</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>White-label app</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>Platforms</strong></td>
<td>iOS &amp; Android</td>
</tr>
</tbody>
</table>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;