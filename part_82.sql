INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h3>Impact</h3>
<ul>
<li>Automate follow-ups, reminders, and nurture campaigns</li>
<li>Improve engagement with behavior-based outreach</li>
<li>Keep conversation context with threaded emails</li>
<li>Create email automation without needing to learn complex automations</li>
</ul>
<h3>How to access</h3>
<ol>
<li>Go to <strong>Settings</strong> and open <strong>Beta Labs</strong>.</li>
<li>Enable <strong>Email Sequences</strong>.</li>
<li>Navigate to <strong>Marketing &rarr; Email &rarr; Campaigns</strong>.</li>
<li>Click <strong>Create New Sequence</strong>.</li>
<li>Configure your audience, delays, conditions, and email steps.</li>
<li>Enable <strong>Stop on Reply</strong> and launch your sequence.</li>
<li>Open <strong>Statistics</strong> to review overall metrics and step-level metrics.</li>
</ol>
<h3>Coming soon</h3>
<ol>
<li>Enroll contacts into a sequence through workflows</li>
<li>Create a sequence using Email AI</li>
<li>A/B testing for each step</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1164', 'New Leadli mobile app task manager (Tasks V2)', 'Overview Tasks V2 is an updated task manager in the Leadli mobile app. It is designed to be faster to use, easier to review at a glance, and more flexible for team workflows. The problem it solves The previous task experience made it harder to manage repeatable follow-ups and to ...', '<p><strong>Overview</strong></p>
<p>Tasks V2 is an updated task manager in the Leadli mobile app. It is designed to be faster to use, easier to review at a glance, and more flexible for team workflows.</p>
<p><strong>The problem it solves</strong></p>
<p>The previous task experience made it harder to manage repeatable follow-ups and to keep tasks connected to the right records. Tasks could not easily repeat, only one contact could be attached, and it was difficult to see key details without opening each task.</p>
<p><strong>What’s included in Tasks V2</strong></p>
<ul>
<li><strong>Recurring tasks</strong>: Repeat tasks hourly, daily, weekly, or monthly, with optional end conditions.</li>
<li><strong>Link tasks to opportunities</strong>: Associate tasks with both contacts and an opportunity so follow-ups stay connected to revenue-related work.</li>
<li><strong>Multiple contacts on a task</strong>: Attach more than one contact to a single task to reduce duplicates.</li>
<li><strong>List and board views</strong>: Switch between a simple list and a board layout depending on how you prefer to work.</li>
<li><strong>Today’s progress</strong>: Track completion progress for tasks due today.</li>
<li><strong>Organized sections</strong>: Tasks are grouped into Overdue, Today, This Week, and Upcoming.</li>
<li><strong>More details on the task card</strong>: See linked contact and opportunity details without opening the task.</li>
<li><strong>Updated interface</strong>: A cleaner UI/UX for creating, finding, and completing tasks.</li>
</ul>
<p><strong>How to get started</strong></p>
<ol>
<li>Open the <strong>Tasks</strong> tab in the mobile app.</li>
<li>Tap <strong>+</strong> to create a task, then add a title, due date, contact(s), and an opportunity. Assign a teammate if needed.</li>
<li>Turn on <strong>Repeat</strong> if you want the task to recur, then choose the schedule.</li>
</ol>
<p><strong>What’s next</strong></p>
<p>Planned improvements include a dynamic task widget on the homepage, richer recurring options, additional filters and grouping, and deeper links between tasks, contacts, and opportunities.</p>
<p><strong>Rollout and availability</strong></p>
<ul>
<li><strong>Release date</strong>: 11/06/2026</li>
<li><strong>Status</strong>: Public</li>
<li><strong>Availability</strong>: Leadli app, LeadConnector, and WL app</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1163', 'Internal notifications: notify followers and opportunity owners', 'Update summary You can now notify contact followers, opportunity followers, or both from the Internal Notification workflow action. Opportunity Owner is also available as a recipient option in the "User Type" picker. How it works A new "Notify followers" section appears below "To...', '<p><strong>Update summary</strong></p>
<p>You can now notify contact followers, opportunity followers, or both from the Internal Notification workflow action. Opportunity Owner is also available as a recipient option in the &#8220;User Type&#8221; picker.</p>
<p><strong>How it works</strong></p>
<p>A new &#8220;Notify followers&#8221; section appears below &#8220;To User Type&#8221;. The follower options are additive, meaning they notify followers in addition to the recipient selected above. Recipients are resolved when the action runs, and duplicates are removed automatically.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open an Internal Notification action in a workflow.</li>
<li>Select the recipient in &#8220;To User Type&#8221;.</li>
<li>Enable Contact followers, Opportunity followers, or both.</li>
</ul>
<p><strong>Why this change was made</strong></p>
<p>Teams often collaborate on contacts and opportunities they do not own. This makes it easier to keep the right teammates informed without manual mentions or extra workflow branches.</p>
<p><strong>Examples</strong></p>
<ul>
<li>Keep &#8220;To User Type&#8221; set to Assigned User and enable Contact followers so everyone following the contact is notified when the lead replies.</li>
<li>Enable both Contact followers and Opportunity followers so followers are notified when a form is submitted or an opportunity stage changes.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Available for Email, In-App Notification, SMS, and WhatsApp.</li>
<li>Duplicate recipients are automatically removed.</li>
<li>Opportunity followers are skipped if no opportunity is in scope or the opportunity was deleted.</li>
<li>Followers without the required channel address are skipped for that notification type.</li>
<li>Existing Internal Notification actions are unchanged.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1162', 'Easier field search in workflows', 'What’s new Field dropdowns in workflow trigger filters now rank search results better and use an updated layout. When you search for a field, the closest match appears at the top for both standard and custom fields. How it works All matching fields still appear in one list while ...', '<p><strong>What’s new</strong></p>
<p>Field dropdowns in workflow trigger filters now rank search results better and use an updated layout. When you search for a field, the closest match appears at the top for both standard and custom fields.</p>
<p><strong>How it works</strong></p>
<p>All matching fields still appear in one list while you are searching. When you clear the search, the dropdown returns to the standard sections for Standard Fields and Custom Fields.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a workflow trigger filter (for example: Contact Changed → Filters).</li>
<li>Search for a field in the Field dropdown.</li>
<li>Select the best match from the top of the results.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>This change reduces time spent scanning long lists and makes field selection faster and more predictable.</p>
<p><strong>Scope</strong></p>
<ul>
<li>Applies anywhere this field dropdown is used in the workflow builder.</li>
<li>Search results continue to appear under a single Search Result header.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1161', 'Reorder pipelines in the Opportunities pipeline view', 'You can now reorder your pipelines directly in the Opportunities pipeline view. You can drag and drop pipelines to change the order, or move a pipeline to a specific position from the Actions menu. The order stays the same after page refreshes. What’s new Drag and drop to reorder...', '<p>You can now reorder your pipelines directly in the Opportunities pipeline view. You can drag and drop pipelines to change the order, or move a pipeline to a specific position from the Actions menu. The order stays the same after page refreshes.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;