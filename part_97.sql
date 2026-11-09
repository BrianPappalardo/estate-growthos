INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Send standard <strong>RCS messages</strong> from Workflows</li>
<li>Build <strong>interactive RCS experiences</strong> with rich cards and buttons</li>
<li>Trigger different workflow paths based on customer interactions</li>
<li>Automate reminders, promotions, follow-ups, and customer engagement using RCS</li>
</ul>
<h2>Build richer customer journeys</h2>
<p>With these new Workflow actions, you can move beyond traditional messaging and create RCS conversations that guide customers through more personalized journeys, all within your existing Workflow automations.</p>
<h2>Available in private beta</h2>
<p>RCS is currently available as part of our private beta.</p>
<p>If you want early access and would like to help shape RCS in Leadli, reach out to your Customer Success Manager or contact the Leadli team to join the private beta.</p>
<h2>Also included in the RCS private beta</h2>
<p>In addition to Workflow support, private beta users can also use:</p>
<ul>
<li><strong>1:1 RCS messaging</strong> from Conversations</li>
<li><strong>Bulk RCS messaging</strong> for customer outreach</li>
<li><strong>RCS template creation and management</strong></li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Navigate to Automation → Workflows</li>
<li>Create a new Workflow or edit an existing one</li>
<li>Add either the Send RCS or RCS Interactive Message action</li>
<li>Configure your message or interactive experience</li>
<li>Publish your Workflow</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Automate rich, conversational customer experiences</li>
<li>Increase engagement with interactive RCS messages</li>
<li>Route contacts based on button selections and responses</li>
<li>Deliver a more modern messaging experience directly from Workflows</li>
</ul>
<h2>What’s next</h2>
<p>We are continuing to expand our RCS capabilities. Here is what is coming soon:</p>
<ul>
<li><strong>RCS onboarding flows</strong> to simplify sender registration and provisioning programmatically</li>
<li><strong>General availability (GA)</strong> of RCS, currently planned for end of Q3 2026, bringing the feature to all eligible Leadli customers</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1229', 'Course tags for memberships', 'Course tags are now available You can now add tags to courses to help organize your library and make it easier for learners to find relevant content. What changed Add Language , Difficulty , and Topic tags from Memberships → Courses → Settings . Learners can filter the course lib...', '<h2>Course tags are now available</h2>
<p>You can now add tags to courses to help organize your library and make it easier for learners to find relevant content.</p>
<h2>What changed</h2>
<ul>
<li>Add <strong>Language</strong>, <strong>Difficulty</strong>, and <strong>Topic</strong> tags from <strong>Memberships → Courses → Settings</strong>.</li>
<li>Learners can filter the course library using these tags.</li>
<li>Tags appear on course cards for easier scanning.</li>
<li>Predefined, standardized tags help keep categorization consistent.</li>
<li>Available in both <strong>All Courses</strong> and <strong>My Courses</strong> views.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Memberships → Courses → Settings</strong>.</li>
<li>Under <strong>Course Tags</strong>, choose the appropriate <strong>Language</strong>, <strong>Difficulty</strong>, and <strong>Topic</strong>.</li>
<li>Save the course.</li>
</ol>
<h2>What is coming next</h2>
<p>The ability to create custom tags will be added in a future update.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1228', 'Client Portal: Shared File Notifications', 'Release summary Leadli now notifies contacts when a subaccount admin shares a file with them through the Client Portal. Contacts receive real-time notifications in the Client Portal and the White Label mobile app, so they do not miss newly shared documents. Contacts can manage th...', '<p><strong>Release summary</strong></p>
<p>Leadli now notifies contacts when a subaccount admin shares a file with them through the Client Portal. Contacts receive real-time notifications in the Client Portal and the White Label mobile app, so they do not miss newly shared documents. Contacts can manage these notifications in their Client Portal notification preferences.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>File share notifications for contacts</strong>: When an admin shares a file with a contact through the Client Portal, the contact automatically receives a notification that a new file is available.</li>
<li><strong>Notification preferences</strong>: Contacts can choose whether to receive in-app and push notifications for shared files by updating their notification preferences in the Client Portal.</li>
<li><strong>Available across platforms</strong>: Supported on Client Portal (web) and White Label Mobile App.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Businesses often share contracts, invoices, onboarding documents, and other important files through the Client Portal. Without notifications, clients may not know when a new document has been shared. These notifications improve visibility and help reduce missed updates.</p>
<p><strong>How to use</strong></p>
<ol>
<li><strong>Share a file with a contact</strong>
<ol>
<li>Go to a contact.</li>
<li>Open the <em>Files</em> section from the right-side navigation.</li>
<li>Upload or select a file.</li>
<li>Enable <em>Upload to Client Portal</em>.</li>
<li>Save the file.</li>
<li>The contact will receive an in-app notification and, if enabled, a push notification.</li>
</ol>
</li>
<li><strong>Manage notification preferences (client)</strong>
<ol>
<li>Log in to the Client Portal.</li>
<li>Go to <em>Settings → Notification Preferences</em>.</li>
<li>Enable or disable in-app and push notifications.</li>
<li>Save your preferences.</li>
</ol>
</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1227', 'New templates are now available in Leadli', 'New templates have been added to help you build websites, funnels, and email campaigns more quickly. These templates are customizable and designed to streamline setup. What’s included Website templates (1) Other (1) Social templates (4) Restaurant and Bar (2) Marketing Agency (2)...', '<p>New templates have been added to help you build websites, funnels, and email campaigns more quickly. These templates are customizable and designed to streamline setup.</p>
<h3>What’s included</h3>
<p><strong>Website templates (1)</strong></p>
<ul>
<li>Other (1)</li>
</ul>
<p><strong>Social templates (4)</strong></p>
<ul>
<li>Restaurant and Bar (2)</li>
<li>Marketing Agency (2)</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;