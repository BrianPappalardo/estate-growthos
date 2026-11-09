INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Services &gt; Global Settings &gt; Payment Settings</strong>.</li>
<li>Set the payment mode to <strong>Online Payment</strong>.</li>
<li>Enable <strong>Allow Deposit or Full Payment Choice</strong>.</li>
<li>Save your changes.</li>
</ol>
<p>After enabling this, customers booking services with deposits can choose whether to pay the deposit or the full amount during checkout.</p>
<h2>Why this matters</h2>
<ul>
<li>Customers can choose the payment option that works best for them.</li>
<li>Businesses can better support BNPL payment methods.</li>
<li>Deposits match the final booking value more accurately.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1234', 'Buffer time is now visible in calendar day and week views', 'You can now see pre-buffer and post-buffer times directly in the Day and Week calendar views. Buffer periods appear as informational blocks so you can understand spacing between appointments without changing how scheduling works. What’s changed Previously Buffer times were applie...', '<p>You can now see pre-buffer and post-buffer times directly in the Day and Week calendar views. Buffer periods appear as informational blocks so you can understand spacing between appointments without changing how scheduling works.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Previously</strong></p>
<ul>
<li>Buffer times were applied in the background but were not visible on the calendar.</li>
<li>It was harder to tell the difference between an appointment and the buffer time around it.</li>
</ul>
<p><strong>Now</strong></p>
<ul>
<li>Pre-buffer and post-buffer times are visible in both Day and Week views.</li>
<li>Buffer blocks are visually distinct from appointments to make the schedule easier to interpret.</li>
<li>Buffer visibility works across calendar filters, including Staff/User, Service/Calendar, and Category/Group.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Calendars</strong>.</li>
<li>Switch to <strong>Day</strong> or <strong>Week</strong> view.</li>
<li>Turn on the <strong>Show buffer time</strong> toggle.</li>
<li>Review the highlighted buffer periods before and after appointments.</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li>Get a clearer view of your schedule.</li>
<li>Identify transition time between appointments.</li>
<li>Plan your day more effectively while maintaining scheduling flexibility.</li>
<li>Understand buffer allocations without changing how appointments are booked.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1233', 'Control Google Sign-In options in your Client Portal', 'Overview Leadli now lets sub-accounts control whether the "Sign in with Google" option appears on the Client Portal sign-up and login pages. Admins can enable or disable Google Sign-In in the Client Portal app permissions. This helps businesses align the sign-up experience with t...', '<p><strong>Overview</strong></p>
<p>Leadli now lets sub-accounts control whether the &#8220;Sign in with Google&#8221; option appears on the Client Portal sign-up and login pages. Admins can enable or disable Google Sign-In in the Client Portal app permissions. This helps businesses align the sign-up experience with their compliance and data-handling requirements (for example, GDPR).</p>
<p><strong>Key highlights</strong></p>
<ul>
<li>Google Sign-In toggle: Show or hide the Google button on your portal’s sign-up and login pages.</li>
<li>Managed in App Permissions: Control is handled by the sub-account admin (no support ticket needed).</li>
<li>Compliance flexibility: Disable third-party sign-in to better match regional privacy rules (for example, GDPR).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>In your sub-account, go to <strong>Sites</strong> &gt; <strong>Client Portal settings</strong>.</li>
<li>Open <strong>App Permissions</strong> and find <strong>Sign-up &amp; sign-in methods</strong>.</li>
<li>Turn <strong>Disable Google sign-in &amp; sign-up</strong> on or off.</li>
<li>Click <strong>Save Settings</strong>.</li>
</ol>
<p><strong>Why this change</strong></p>
<ul>
<li>Previously, Google Sign-In was always enabled, which could create compliance concerns for businesses operating under European (GDPR) data-handling requirements.</li>
<li>Now, sub-accounts can choose which authentication options appear on their portal so the sign-up experience can match regulatory and business needs.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>When disabled, contacts can sign up and log in using email and password, or by using a secure code.</li>
<li>This is configured per sub-account in Client Portal app permissions.</li>
</ul>
<p>Available on the Client Portal Web platform.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1232', 'New community triggers in workflows', 'Overview We added four new Communities triggers to Leadli Workflows. These triggers help admins respond faster and automate follow-ups, alerts, moderation steps, and event-based engagement based on what members do inside groups. What’s new Group joining request rejected Trigger a...', '<p><strong>Overview</strong></p>
<p>We added four new Communities triggers to Leadli Workflows. These triggers help admins respond faster and automate follow-ups, alerts, moderation steps, and event-based engagement based on what members do inside groups.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Group joining request rejected</strong><br />Trigger a workflow when a member’s request to join a group is rejected.<br /><em>Filters:</em> Group (required)</li>
<li><strong>Group post created</strong><br />Trigger a workflow when a new post is created in a group.<br /><em>Filters:</em> Group (required), Channel, Post Title, Post Content</li>
<li><strong>Group comment created</strong><br />Trigger a workflow when a new comment is added to a group post.<br /><em>Filters:</em> Group (required), Channel, Post Title, Post Content, Comment Content</li>
<li><strong>Member registered for group event</strong><br />Trigger a workflow when a member registers for a group event.<br /><em>Filters:</em> Group (required), Event Title</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li>More automation options: Turn community activity into workflow actions.</li>
<li>Better targeting: Use filters (channel, post content, comment content, event title) so workflows run only when needed.</li>
<li>Faster moderation and visibility: Alert the right people and route updates automatically.</li>
<li>Less manual work as groups grow: Automate common engagement and follow-up tasks.</li>
<li>Stronger connection between Communities and Workflows: Posts, comments, event registrations, and membership decisions can start automated journeys.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <em>Automation &gt; Workflows</em> in your account.</li>
<li>Create a new workflow or open an existing workflow.</li>
<li>Click <em>Add New Trigger</em> and search for “Community.”</li>
<li>Select a trigger, choose the Group (required), and add any optional filters (Channel, Post Title, Post Content, Comment Content, Event Title).</li>
<li>Save the trigger and publish the workflow.</li>
</ol>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1231', 'RCS messaging is now available in Leadli workflows (private beta)', 'You can now build richer customer journeys with RCS messaging directly inside Workflows. The new Send RCS and RCS Interactive Message actions let you automate conversations using the next generation of business messaging. You can now: Send standard RCS messages from Workflows Bui...', '<p>You can now build richer customer journeys with RCS messaging directly inside Workflows. The new <strong>Send RCS</strong> and <strong>RCS Interactive Message</strong> actions let you automate conversations using the next generation of business messaging.</p>
<h2>You can now:</h2>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;