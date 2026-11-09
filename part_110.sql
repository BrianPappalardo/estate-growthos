INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Report or delete posts</li>
<li>Access additional post-level moderation actions</li>
</ul>
<h2>Improved community settings</h2>
<p>Community settings have been reorganized into dedicated sections, making groups easier to configure and manage.</p>
<p><strong>Admins can more easily:</strong></p>
<ul>
<li>Update community details and descriptions</li>
<li>Configure public or private group access</li>
<li>Manage member invitation permissions</li>
<li>Enable mandatory member profiles</li>
<li>Configure branding and membership questions</li>
<li>Select from predefined community themes</li>
<li>Customize the appearance of the community</li>
</ul>
<h2>How to enable the new experience</h2>
<p><strong>Navigate to:</strong></p>
<p><strong>Leadli App → Client Portal Dashboard</strong></p>
<p>Select <strong>Enable</strong> to activate the new experience.</p>
<p>No migration is required. Existing community content, members, courses, and settings will automatically carry over.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1271', 'Client Portal: File share notifications', 'Contacts are now notified as soon as an admin shares a file with them in the Client Portal. Notifications are available in the Client Portal (web) and in the white-label mobile app, so shared documents are less likely to be missed. Contacts can also manage these notifications in ...', '<p>Contacts are now notified as soon as an admin shares a file with them in the Client Portal. Notifications are available in the Client Portal (web) and in the white-label mobile app, so shared documents are less likely to be missed. Contacts can also manage these notifications in their Client Portal preferences.</p>
<h2>What’s new</h2>
<p><strong>File share notifications for contacts</strong></p>
<p>When an admin shares a file with a contact through the Client Portal, the contact automatically receives a notification that a new file is available.</p>
<p><strong>Manage notification preferences</strong></p>
<p>Contacts can choose whether to receive notifications for shared files by updating their notification preferences within the Client Portal.</p>
<p><strong>Available across platforms</strong></p>
<ul>
<li>Client Portal (web)</li>
<li>White-label mobile app</li>
</ul>
<p><strong>Improved client communication</strong></p>
<p>Clients stay informed when documents, contracts, invoices, or other files are shared. This helps reduce missed updates and improves the overall client experience.</p>
<h2>How to use</h2>
<p><strong>Share a file with a contact</strong></p>
<ul>
<li>Navigate to a contact.</li>
<li>Open the <em>Files</em> section from the right-side navigation panel.</li>
<li>Upload or select a file.</li>
<li>Enable the <em>Upload to Client Portal</em> option.</li>
<li>Save the file.</li>
</ul>
<p>After the file is shared, the contact receives an in-app notification and (if enabled) a push notification.</p>
<p><strong>Manage notification preferences (client)</strong></p>
<ul>
<li>Log in to the Client Portal.</li>
<li>Go to <em>Settings</em> → <em>Notification Preferences</em>.</li>
<li>Enable or disable in-app and push notifications.</li>
<li>Save your preferences.</li>
</ul>
<h2>Why this feature</h2>
<p>Businesses often share important files with clients through the Client Portal, but clients did not always have an automatic notification when a new file was shared. File share notifications help clients see updates right away, reduce missed communications, and support a smoother client experience.</p>
<h2>Notes</h2>
<ul>
<li>Notifications are triggered when an admin shares a file with a contact through the Client Portal.</li>
<li>Contacts can manage notification preferences from the Client Portal settings.</li>
<li>Supported notification channels: in-app notifications and push notifications.</li>
<li>Available on both the Client Portal (web) and the white-label mobile app.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1270', 'Better Facebook profile detection in Leadli Prospecting and Marketing Audit Reports', 'We have improved how Prospecting and Marketing Audit Reports detect a business’s Facebook profile. Before this update, Facebook profile detection relied mostly on public sources. That sometimes caused missing or incorrect profiles, and there was no direct way to correct them, whi...', '<p>We have improved how Prospecting and Marketing Audit Reports detect a business’s Facebook profile.</p>
<p>Before this update, Facebook profile detection relied mostly on public sources. That sometimes caused missing or incorrect profiles, and there was no direct way to correct them, which reduced report accuracy.</p>
<p>This release improves detection by using multiple data sources and adds an option to manually update a prospect’s Facebook profile when needed.</p>
<h2>What’s new</h2>
<p><strong>Multi-source Facebook profile detection</strong></p>
<p>Facebook profiles are now identified using multiple sources rather than a single public lookup. Detection can use information from:</p>
<ul>
<li>The prospect’s website</li>
<li>The prospect’s local listing profiles</li>
<li>Internal data partners</li>
</ul>
<p>This improves Facebook profile coverage and accuracy across Prospecting and Marketing Audit Reports.</p>
<h2>Edit or add a Facebook profile at any time</h2>
<p>If a profile is missing or incorrect, you can now manually update the Facebook profile URL for a prospect.</p>
<p><strong>How to update it:</strong></p>
<ol>
<li>Open a prospect in the Prospecting Tool</li>
<li>Go to the Social Profiles tab</li>
<li>Add or update the Facebook profile URL</li>
<li>Click the update button at the bottom to save</li>
<li>The report will refresh based on the new URL (this can take 1–2 minutes)</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>More accurate Facebook profile detection</li>
<li>More reliable Social Presence and Marketing Audit Reports</li>
<li>Manual control when public data is incomplete or outdated</li>
<li>Better consistency in future audits</li>
</ul>
<p>This update improves the overall quality of Marketing Audit Reports while giving teams a straightforward way to correct Facebook profile information when needed.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1269', 'Email actions are now available in company and custom object workflows in Leadli', 'Overview Email actions are now available in Leadli company workflows and custom object workflows. What’s new Before this update, workflow email actions were only available in contact workflows. You can now send automated emails from: Company workflows Custom object workflows Key ...', '<p><strong>Overview</strong></p>
<p>Email actions are now available in Leadli company workflows and custom object workflows.</p>
<p><strong>What’s new</strong></p>
<p>Before this update, workflow email actions were only available in contact workflows. You can now send automated emails from:</p>
<ul>
<li>Company workflows</li>
<li>Custom object workflows</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;