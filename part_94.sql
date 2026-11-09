INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Switching context:</strong> History clears and reloads when you switch sub-accounts or when a different user signs in on the same device.</li>
<li><strong>Empty history:</strong> If your location or user context is not ready, you may see an empty list rather than partial results.</li>
</ul>
<p><strong>Questions or feedback</strong></p>
<p>If you would like to share feedback, contact our team here: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1200', 'Ask AI is now available for your whole team in the Leadli mobile app', 'Ask AI on mobile now follows the same per-user access you set on web. Grant a teammate access once, and they can use Ask AI from the Leadli mobile app. It is no longer limited to agency admins. The problem On mobile, Ask AI was limited to agency admins only , even when you had al...', '<p>Ask AI on mobile now follows the same per-user access you set on web. Grant a teammate access once, and they can use Ask AI from the Leadli mobile app. It is no longer limited to agency admins.</p>
<h2>The problem</h2>
<p>On mobile, Ask AI was limited to <strong>agency admins only</strong>, even when you had already enabled it for sub-account users on web. Your team could use AI in the browser but could not access it in the app.</p>
<h2>What changed</h2>
<p>Mobile now respects the same per-user access you already grant on web. Teammates with access will see Ask AI in the app and can chat normally. Everyone else will not see the entry point.</p>
<p>Agency users also get a <strong>non-blocking banner</strong> when some sub-account teammates still need access, prompting you to finish setup on web. If a usage limit or policy blocks a message, you will see a <strong>clear in-chat explanation</strong> instead of a generic error.</p>
<h2>How this helps</h2>
<ul>
<li><strong>AI where your team works:</strong> Sub-account users can use Ask AI from their phones while in the field or with clients.</li>
<li><strong>Access control stays with you:</strong> Access is per user and granted by you.</li>
<li><strong>Easier rollout:</strong> Agency admins can see who still needs access inside the app.</li>
<li><strong>Clearer troubleshooting:</strong> Limit and access issues show specific guidance instead of a generic error.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li><strong>Grant access on web:</strong> Enable Ask AI for the sub-account users who should have it.</li>
<li><strong>Open the mobile app:</strong> Sign in as a user with Ask AI access (agency admin, agency staff, or sub-account user).</li>
<li><strong>Start chatting:</strong> Tap <strong>Ask AI</strong> from the FAB, home screen, or dashboard and send your first message.</li>
<li><strong>Finish team rollout (agency only):</strong> If some users still lack access, you will see a banner above the composer. Tap through to configure access on web. The composer stays enabled for users who already have access.</li>
</ol>
<h2>What is next</h2>
<ul>
<li>Paid-feature consent will return on mobile when metered Ask AI billing goes live, aligned with web.</li>
<li>Continued parity improvements between the mobile and web Ask AI experiences.</li>
</ul>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Release date:</strong> June 18, 2026</li>
<li><strong>Available version:</strong> 4.18.1 (build 833)</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Leadli:</strong> Available</li>
<li><strong>LeadConnector:</strong> Available</li>
<li><strong>WL App:</strong> Available</li>
<li><strong>Platforms:</strong> iOS and Android</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>Who can see Ask AI:</strong> Only users you have granted access. Everyone else will not see the entry point. Direct links show “not available.”</li>
<li><strong>Agency setup banner:</strong> Shown only to agency-type users when some teammates still need access. It is advisory and never blocks the composer for users who already have access.</li>
<li><strong>Sub-account users without access:</strong> They will not see Ask AI until an agency admin grants it on web.</li>
<li><strong>Usage limits:</strong> If a sub-account hits its monthly limit or access is blocked, you will see a specific in-chat banner and the composer is disabled until it is resolved.</li>
<li><strong>Offline:</strong> If access cannot be verified, you will see a retry screen instead of a broken chat.</li>
<li><strong>Paid consent:</strong> Not collected on mobile during the current free period (Summer of AI), matching web.</li>
</ul>
<h2>Feedback</h2>
<p>Speak with us: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1199', 'Conversations: SLA workflow triggers and permission controls', 'Overview Teams previously had to manually watch for conversations that were close to breaching or had already missed their SLA targets. With this release, SLAs become actionable. You can automate workflows when conversation SLAs are due soon, overdue, or manually dismissed. This ...', '<p><strong>Overview</strong></p>
<p>Teams previously had to manually watch for conversations that were close to breaching or had already missed their SLA targets. With this release, SLAs become actionable. You can automate workflows when conversation SLAs are due soon, overdue, or manually dismissed. This helps teams manage response times proactively. It also adds more control over manual SLA removal so admins can decide who can dismiss SLAs and keep actions auditable.</p>
<p><strong>What’s new</strong></p>
<p>You can build workflows that run automatically when a conversation’s SLA is:</p>
<ul>
<li>Due soon</li>
<li>Overdue</li>
<li>Manually dismissed</li>
</ul>
<p>Instead of relying on users or managers to monitor SLA timers, you can define what should happen when these events occur. For example, you can notify a user when a conversation becomes overdue or reassign a contact for escalation.</p>
<p>To reduce excess notifications, there is an <strong>Avoid Repeated Triggers</strong> option. When enabled, the workflow will only run once per conversation within a 24-hour period, even if multiple messages from the same contact trigger additional SLA events.</p>
<p><strong>Manual SLA removal permissions</strong></p>
<p>For conversations where no response is required (for example: “Thank you”, “Got it”, or “Not interested”), users can dismiss the SLA without replying. Admins can choose whether this action is available to all users or restricted to admins only.</p>
<p><strong>How to use</strong></p>
<p><strong>Build a Conversations SLA workflow</strong></p>
<ol>
<li>Go to <strong>Automation → Workflows</strong>.</li>
<li>Create a new workflow and select <strong>Conversation SLA</strong> as the trigger.</li>
<li>Choose the SLA event: <strong>Due Soon</strong>, <strong>Overdue</strong>, or <strong>SLA dismissed</strong>.</li>
<li>Optional: Add filters (message channel, tags, owner, custom fields), add the actions you want, and publish the workflow.</li>
</ol>
<p><strong>Configure manual SLA removal permissions</strong></p>
<ol>
<li>Go to <strong>Conversations Settings</strong>.</li>
<li>Under <strong>Who can manually dismiss SLA from conversations?</strong> select <strong>All users</strong> or <strong>Admins only</strong>, then save.</li>
<li>Eligible users can click the SLA timer in the conversation panel to dismiss the SLA.</li>
<li>When the SLA is dismissed, a log entry is posted in the conversation showing who dismissed it and the SLA status at the time.</li>
</ol>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1198', 'In Labs: Better document privacy and access controls', 'Overview As agencies handle sensitive client information, it is important to control who can access shared documents. Leadli now includes improved document privacy and access controls for files stored in the contact record’s Documents panel. This helps teams follow internal secur...', '<p>Overview</p>
<p>As agencies handle sensitive client information, it is important to control who can access shared documents. Leadli now includes improved document privacy and access controls for files stored in the contact record’s Documents panel. This helps teams follow internal security policies, meet client expectations, and keep workflows secure.</p>
<p>What’s new</p>
<p>You can generate document links with different access options when sharing a file:</p>
<p>&#8211; Public link: Anyone with the link can access it<br />
&#8211; Private link: Only authorized Leadli users can access it<br />
&#8211; One-time code link: Access is verified with a one-time password sent to the contact’s email address<br />
&#8211; Password-protected link: Access is secured with a user-defined passcode</p>
<p>Additional controls</p>
<p>&#8211; Set expiration dates for shared links<br />
&#8211; Allow or restrict downloads<br />
&#8211; View document details and access history for visibility and auditing</p>
<p>Note: The default document link behavior is internal/private unless the user changes it during sharing.</p>
<p>What’s next</p>
<p>Leadli is continuing to expand privacy and data controls across the platform. Next improvements include:</p>
<p>&#8211; Extending these controls to document attachments shared through notes and custom fields<br />
&#8211; Enhanced security for email attachments sent through marketplace apps</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;