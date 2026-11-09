INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>What’s included</h2>
<ul>
<li>A <strong>View Snapshot History</strong> option in the Actions menu next to <strong>Load Snapshot</strong>.</li>
<li>A list of all snapshots that have been loaded into the sub-account.</li>
<li>Details for each snapshot, including every time that snapshot was applied.</li>
<li>Visibility into the assets included in each snapshot load (for example, workflows and calendars).</li>
</ul>
<h2>History entry fields</h2>
<ul>
<li>Who loaded the snapshot</li>
<li>When it was loaded</li>
<li>Snapshot version</li>
<li>Snapshot type (Template, Created, Imported, or Marketplace)</li>
</ul>
<h2>Why it matters</h2>
<p>This makes it easier to review account changes, support troubleshooting, and audit when and how snapshots were applied.</p>
<h2>What’s next</h2>
<p>Improvements such as search and filtering are planned to make snapshot history easier to navigate as your accounts grow.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:08.000Z'),
('wp-1256', 'Separate email templates for welcome badges and badges', 'Overview Leadli now supports separate email templates for Welcome Badge emails and Badge emails. This lets you customize the enrollment-triggered welcome badge email without changing other badge emails. Key highlights A new Welcome Badge Issued notification type, separate from Ba...', '<p><strong>Overview</strong></p>
<p>Leadli now supports separate email templates for Welcome Badge emails and Badge emails. This lets you customize the enrollment-triggered welcome badge email without changing other badge emails.</p>
<p><strong>Key highlights</strong></p>
<ul>
<li>A new <em>Welcome Badge Issued</em> notification type, separate from <em>Badge Issued</em></li>
<li>Dedicated email template settings for welcome badge emails in Client Portal email settings</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Adjust welcome badge messaging without affecting other badge emails</li>
<li>Clearer settings for certificate vs badge email types</li>
</ul>
<p><strong>Getting started</strong></p>
<ul>
<li>Open Client Portal → Email Settings</li>
<li>Find <em>Welcome Badge Issued</em> alongside <em>Badge Issued</em> and <em>Certificate Issued</em></li>
<li>Edit the welcome badge email template and mute settings as needed</li>
<li>Enrollment-triggered welcome badges will use the <em>Welcome Badge Issued</em> path automatically</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1255', 'Credential expiration options for certificates', 'Overview You can now set credential expiration for certificates and templates. Choose whether issued credentials never expire, expire on a fixed date, or expire after a set duration from the issue date. Key details Expiration options: Never, fixed date, or duration from the issue...', '<p><strong>Overview</strong></p>
<p>You can now set credential expiration for certificates and templates. Choose whether issued credentials never expire, expire on a fixed date, or expire after a set duration from the issue date.</p>
<p><strong>Key details</strong></p>
<ul>
<li>Expiration options: Never, fixed date, or duration from the issue date</li>
<li>Duration options: 3, 6, 9, 12, 24, or 36 months</li>
<li>Optional reminders can be sent before expiration using offsets you choose</li>
<li>Expiration timing is calculated with timezone awareness</li>
<li>Expiration settings are shown in certificate and template lists and in the configuration screens</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Set consistent expiration rules without manual follow-ups</li>
<li>Help recipients avoid unexpected expirations with advance reminders</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a certificate or credential template</li>
<li>Set the expiration rule (Never, fixed date, or duration from issue date)</li>
<li>Optionally configure reminder offsets</li>
<li>New credentials will store an expiration date based on your settings</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1254', 'Layers panel in the Certificate and Badge Builder', 'A Layers panel is now available in the Certificate and Badge Builder. It helps you manage stacking order, lock elements, and identify invalid custom-field placeholders before publishing. What’s included: A Layers tab in the builder sidebar showing the full stack order Select a la...', '<p>A Layers panel is now available in the Certificate and Badge Builder. It helps you manage stacking order, lock elements, and identify invalid custom-field placeholders before publishing.</p>
<p><strong>What’s included:</strong></p>
<ul>
<li>A Layers tab in the builder sidebar showing the full stack order</li>
<li>Select a layer from the list, and drag and drop to reorder</li>
<li>Lock and unlock layers (locked layers cannot be moved, resized, deleted, or edited with shortcuts)</li>
<li>Delete unlocked layers from the panel</li>
<li>Invalid custom-field placeholders are flagged</li>
<li>A manual save warning appears when invalid placeholders exist (auto-save behavior is unchanged)</li>
</ul>
<p><strong>How to use it:</strong></p>
<ul>
<li>Open the Certificate and Badge Builder</li>
<li>Open the Layers tab in the left sidebar</li>
<li>Select layers from the list, reorder as needed, lock to prevent changes, and delete to remove</li>
<li>Fix any invalid custom fields shown before publishing</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1253', 'Client Portal: File upload notifications for admins and users', 'Account admins and users can now receive in-app notifications when a client uploads a file through the client portal. What’s included In-app notifications for file uploads: When a contact uploads one or more files in Client Portal → Shared Documents , the relevant account admins ...', '<p>Account admins and users can now receive in-app notifications when a client uploads a file through the client portal.</p>
<h2>What’s included</h2>
<ul>
<li><strong>In-app notifications for file uploads:</strong> When a contact uploads one or more files in <strong>Client Portal → Shared Documents</strong>, the relevant account admins and users receive an in-app notification automatically.</li>
<li><strong>Upload limit:</strong> Clients can upload up to 10 files at a time.</li>
</ul>
<h2>Manage notification preferences</h2>
<p>Account admins can choose which staff members receive these notifications at the subaccount level.</p>
<ol>
<li>Go to <strong>Settings → My Staff</strong>.</li>
<li>Select a staff member.</li>
<li>Open <strong>Notification Settings</strong>.</li>
<li>Under <strong>Client Portal Notifications</strong>, enable or disable the option to notify when a contact uploads a file in the client portal.</li>
<li>Save your changes.</li>
</ol>
<h2>How it works</h2>
<ol>
<li>The client logs in to the client portal.</li>
<li>They open <strong>Shared Documents</strong>.</li>
<li>They select <strong>Share File</strong> and upload one or more files.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;