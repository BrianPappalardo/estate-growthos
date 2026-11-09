INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Keep Primary Company separate:</strong> Use custom labels for additional roles alongside the system primary relationship.</li>
<li><strong>Name both directions:</strong> Using two labels (for example: Employer and Employee) makes the association clearer in each record view.</li>
<li><strong>Review recipients before sending:</strong> Label-based selection supports different association rules (all, most recent, or earliest). Including Primary Company uses all contacts.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:47.000Z'),
('wp-1611', 'Send SMS from Custom Object and Company workflows', 'You can now send SMS messages from workflows that run on Custom Object records and Companies in Leadli. This makes it easier to send reminders and follow-ups to the right contacts based on how they are related to a record, and to personalize messages using both record fields and ...', '<p>You can now send SMS messages from workflows that run on Custom Object records and Companies in Leadli.</p>
<p>This makes it easier to send reminders and follow-ups to the right contacts based on how they are related to a record, and to personalize messages using both record fields and contact fields.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Send SMS from record workflows:</strong> Add a Send SMS action to Custom Object and Company workflows.</li>
<li><strong>Recipient selection by relationship label:</strong> Choose association labels and send to all associated contacts, the most recently associated contact, or the earliest associated contact (when available).</li>
<li><strong>Personalized messages:</strong> Insert values from the enrolled Custom Object or Company record, along with recipient contact fields, to add useful context.</li>
<li><strong>Templates or custom messages:</strong> Write a message or reuse an SMS template.</li>
<li><strong>Delivery results:</strong> Review action-level delivery status and recipient results in Statistics.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Enable the Send SMS action in Labs.</li>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a Custom Object or Company workflow.</li>
<li>Add the <strong>Send SMS</strong> action.</li>
<li>Select recipients (all, most recent, or earliest associated contact) and choose one or more association labels.</li>
<li>Choose a template or write your message, then insert record and contact fields as needed.</li>
<li>Save and publish the workflow. After it runs, review <strong>Statistics</strong> for results.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>If a contact matches multiple selected labels, they receive a single SMS from the action run.</li>
<li>When you combine a Primary Company label with another label, the action uses <strong>all associated contacts</strong>.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T15:37:45.000Z'),
('wp-1610', 'More ways to filter your Conversations inbox', 'Summary Leadli now includes expanded filtering options in Conversations so your team can quickly narrow down the inbox and focus on the messages that need attention. What changed You can now filter conversations using these additional filters: Channel account : Filter by the spec...', '<p><strong>Summary</strong></p>
<p>Leadli now includes expanded filtering options in Conversations so your team can quickly narrow down the inbox and focus on the messages that need attention.</p>
<p><strong>What changed</strong></p>
<p>You can now filter conversations using these additional filters:</p>
<ul>
<li><strong>Channel account</strong>: Filter by the specific account used in the most recent message (for example, a specific phone number, connected Facebook page, or connected Instagram account).</li>
<li><strong>Last call status</strong>: Filter by the outcome of the most recent call (completed, no answer, voicemail).</li>
<li><strong>Contact type</strong>: Filter by lead/customer type, including any custom contact types set up in your account.</li>
<li><strong>Opportunity pipeline</strong>: Filter by the pipeline linked to the contact’s opportunity. If a contact has multiple opportunities, the conversation is included when at least one opportunity matches.</li>
<li><strong>Opportunity stage</strong>: Filter by the stage of the opportunity. Stages shown depend on the pipeline you select.</li>
<li><strong>Opportunity status</strong>: Filter by opportunity status (open, won, lost, abandoned).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open <strong>Conversations</strong>.</li>
<li>Select the <strong>Filters</strong> icon at the top of the conversation list.</li>
<li>Choose a filter type and select one or more values.</li>
<li>Select <strong>Apply</strong>. Add more filters as needed and use <strong>Clear</strong> to reset.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>These filters bring CRM context into the inbox so you can find missed calls, open deals, and support conversations faster without switching between different areas.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:45.000Z'),
('wp-1609', 'Calculated fields are now available in Leadli (private beta)', 'Calculated fields let you create custom fields that calculate their own values based on other data in a contact record. You set up the formula once, and the field updates automatically when the source fields change. You can use calculated fields to score leads, track time since a...', '<p>Calculated fields let you create custom fields that calculate their own values based on other data in a contact record. You set up the formula once, and the field updates automatically when the source fields change.</p>
<p>You can use calculated fields to score leads, track time since a contact was last engaged, count down to renewal dates, or keep formatting consistent without manual updates.</p>
<h2>What’s included</h2>
<ol>
<li>
<p><strong>Calculated custom field type:</strong> Create fields whose values are computed automatically from other fields.</p>
</li>
<li>
<p><strong>Calculation types:</strong> Use a custom formula, time between two dates, time since a date, or time until a date.</p>
</li>
<li>
<p><strong>Output types:</strong> Return a Number, Boolean (true/false), Text, Date, or Date-Time.</p>
</li>
<li>
<p><strong>Number formatting:</strong> Display results as a formatted number, unformatted number, currency, percentage, or duration.</p>
</li>
<li>
<p><strong>Function library:</strong> Includes math, text, date/time, and logic functions.</p>
</li>
<li>
<p><strong>Test before saving:</strong> Validate formulas with sample values and get clear error messages.</p>
</li>
<li>
<p><strong>Automatic recalculation:</strong> Values update when source fields change. Calculated fields are read-only to prevent accidental overwrites.</p>
</li>
<li>
<p><strong>Supported objects (private beta):</strong> Calculated fields can be created for contacts, opportunities, and custom objects.</p>
</li>
<li>
<p><strong>Smart list support:</strong> Filter smart lists using calculated fields. Note: “Time since” and “Time until” can be shown as columns, but can’t be used as filters.</p>
</li>
<li>
<p><strong>Workflow support:</strong> Use calculated fields across your CRM, including in workflows.</p>
</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T15:25:15.000Z'),
('wp-1608', 'Organize contact documents with folders', 'Folders are now available in Leadli to help you keep documents on each contact record organized. You can create folders and subfolders, move files and folders, and restore items you delete by mistake. What’s included Create custom folders for each contact and arrange them in mult...', '<p>Folders are now available in Leadli to help you keep documents on each contact record organized.</p>
<p>You can create folders and subfolders, move files and folders, and restore items you delete by mistake.</p>
<h3>What’s included</h3>
<ul>
<li>Create custom folders for each contact and arrange them in multiple levels.</li>
<li>Use system folders (cannot be deleted) and custom folders (you can manage and delete).</li>
<li>Move files between folders without re-uploading.</li>
<li>Move folders to reorganize your structure.</li>
<li>Delete files in custom folders when you no longer need them.</li>
</ul>
<h3>Trash and recovery</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;