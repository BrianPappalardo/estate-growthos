INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Scope:</strong> These changes apply to calendar notifications only. Workflows are not affected.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-06T13:40:43.000Z'),
('wp-1547', 'See A2P Number Registration Status in Real Time', 'Overview: You can now see the real-time A2P carrier registration status for each of your phone numbers. What’s new: Any number linked to an A2P campaign shows a live status: Pending, Registered, or Failed. Numbers that are fully registered show an "A2P Verified" tag on the Phone ...', '<p><strong>Overview:</strong> You can now see the real-time A2P carrier registration status for each of your phone numbers.</p>
<p><strong>What’s new:</strong></p>
<ul>
<li>Any number linked to an A2P campaign shows a live status: Pending, Registered, or Failed.</li>
<li>Numbers that are fully registered show an &#8220;A2P Verified&#8221; tag on the Phone Numbers page.</li>
<li>Existing numbers were updated automatically. No action is required.</li>
</ul>
<p><strong>Before this update:</strong></p>
<ul>
<li>After adding a number to a campaign, you could only tell that it was submitted.</li>
<li>Carrier registration could take minutes to several days.</li>
<li>If you sent messages before registration finished, they could fail with error 30034 (number not registered for A2P), which often required a support ticket.</li>
</ul>
<p><strong>Why it matters:</strong></p>
<ul>
<li>Know as soon as a number is ready to text, without waiting for a fixed window.</li>
<li>Reduce 30034 failures by avoiding sends from numbers that are not registered yet.</li>
<li>See failed registrations quickly so you can take action sooner.</li>
</ul>
<p><strong>Note:</strong> Registration usually completes within 24 hours, but timing depends on the carrier. Seeing a &#8220;Pending&#8221; status during that time is expected.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-06T08:16:36.000Z'),
('wp-1546', 'Leadli update: Lead Source Report drill-down and value by status', 'This update improves the Lead Source Report so you can quickly see which opportunities make up each number and how much value sits in each status. What’s new Drill down into any number: Click any count under Total Leads, Open, Won, Lost, or Abandoned to view the opportunities beh...', '<p>This update improves the Lead Source Report so you can quickly see which opportunities make up each number and how much value sits in each status.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Drill down into any number:</strong> Click any count under Total Leads, Open, Won, Lost, or Abandoned to view the opportunities behind it.</li>
<li><strong>Value for every status:</strong> The report now shows monetary value for Open, Won, Lost, and Abandoned, not only the total.</li>
<li><strong>Find leads without a source:</strong> The Source filter now supports “Is empty” and “Is not empty”.</li>
<li><strong>Missing sources are visible:</strong> Opportunities without a source now appear as “N/A” instead of being excluded.</li>
<li><strong>Cleaner table layout:</strong> Row height is consistent and columns stay readable on smaller screens.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Add the Lead Source Report widget to your dashboard, or open an existing widget.</li>
<li>Each source row shows both the count and the value for every status.</li>
<li>Click any count greater than zero to open the list of opportunities included in that number.</li>
<li>To review data quality, filter Source by “Is empty” or check the “N/A” row to find opportunities missing a source.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li><strong>From numbers to names:</strong> You can see the exact opportunities behind a count without leaving the report.</li>
<li><strong>Know what each channel is worth:</strong> Compare value by source across Open, Won, and Lost to understand what drives revenue.</li>
<li><strong>More reliable attribution:</strong> Quickly find and fix opportunities that are missing a source.</li>
</ul>
<h3>What’s next</h3>
<ul>
<li>Support for using a custom field as the revenue source in the Lead Source Report.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Values are shown only to users with permission to view lead value.</li>
<li>Drill-down is available for any count greater than zero.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-06T04:43:37.000Z'),
('wp-1545', 'New templates are now available', 'We have released new templates to help you build websites, funnels, surveys, blogs, ads, and more. These templates are designed to be easy to customize and to help you move faster. What’s included in this release Website templates: 1 new template (Marketing Agency) Survey templat...', '<p>We have released new templates to help you build websites, funnels, surveys, blogs, ads, and more. These templates are designed to be easy to customize and to help you move faster.</p>
<h2>What’s included in this release</h2>
<ul>
<li><strong>Website templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Survey templates:</strong> 1 new template (Other)</li>
<li><strong>Blog templates:</strong> 1 new template (Medical)</li>
<li><strong>Social templates:</strong> 8 new templates (Other: 2; Home Services: 2; Restaurant and Bar: 2; Health &amp; Wellness: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (including Full-Service Advertising Agency; Customer Relationship Management Solutions)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Licensed HVAC; Yoga Classes; Wealth Advisor; Architecture Studio; IT Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 7 new templates (Land Developer; Home Loan Provider; Local SEO &amp; Reputation Management; Professional DJ Services; Real Estate Inspector; HR &amp; Workplace Culture Consultant; Wealth Management Firm)</li>
<li><strong>Snapshot:</strong> 1 new snapshot (Medical: Pharmacy)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-05T01:29:27.000Z'),
('wp-1462', 'More control over community email unsubscribe settings', 'Members can now manage community email notifications more precisely. Unsubscribing from one notification type in one community will not affect emails from other communities or other parts of Leadli. What changed Previously, using an unsubscribe link from a community email could t...', '<p>Members can now manage community email notifications more precisely. Unsubscribing from one notification type in one community will not affect emails from other communities or other parts of Leadli.</p>
<h3>What changed</h3>
<p>Previously, using an unsubscribe link from a community email could turn off broader email communication. With this update, the unsubscribe choice is limited to the specific community and the specific notification type (for example, a comment mention or a new post with @everyone).</p>
<h3>How it works</h3>
<ol>
<li>A confirmation page shows the community name and the notification type being turned off.</li>
<li>The member confirms the unsubscribe choice.</li>
<li>Future emails for that community and notification type stop.</li>
<li>All other community and platform emails continue as normal.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Unsubscribe preferences are scoped per community and per notification type.</li>
<li>If an unsubscribe link has already been used or has expired, the member sees a clear message confirming no settings were changed.</li>
<li>Disabled notifications can be re-enabled at any time from the member’s notification settings.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-30T11:12:56.000Z'),
('wp-1461', 'Fix: Remove options from Company and Custom Object choice fields', 'You can now remove options from choice-based fields (Dropdown, Multi-select, Radio, and Checkbox) for Companies and Custom Objects. If an option is already in use, existing records will keep their current value. The option will only be removed from future selection. What changed ...', '<p>You can now remove options from choice-based fields (Dropdown, Multi-select, Radio, and Checkbox) for Companies and Custom Objects.</p>
<p>If an option is already in use, existing records will keep their current value. The option will only be removed from future selection.</p>
<h2>What changed</h2>
<ul>
<li>Delete unused options permanently</li>
<li>Remove used options from future selection without changing existing records</li>
<li>See how many records use an option before you delete it</li>
<li>Existing filters, Smart Lists, and workflows continue to work</li>
</ul>
<h2>Why this matters</h2>
<p>This helps you clean up outdated or incorrect options without breaking historical data or automations.</p>
<h2>How to use it</h2>
<ol>
<li>Go to Settings → Custom Fields</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;