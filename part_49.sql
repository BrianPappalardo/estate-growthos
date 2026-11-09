INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>No setup is required. The update is live automatically.</p>
<ol>
<li>Go to <strong>Calendars</strong> and open the <strong>Calendar AI</strong> launcher.</li>
<li>Select <strong>Troubleshoot availability</strong> or ask your question in plain language.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>It gives you quick answers to common booking issues without extra back-and-forth.</li>
<li>Clear guardrails help ensure the explanations are dependable.</li>
<li>Permissions are respected, so troubleshooting only shows information the user is allowed to see.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-09-22T10:59:03.000Z'),
('wp-1442', 'Improved two-way sync for service appointments', 'Overview Previously, if a service appointment’s calendar event was rescheduled or cancelled directly from a connected third-party calendar (such as Google Calendar or Outlook), only the calendar event was updated and the service appointment record could become out of sync. This u...', '<h2>Overview</h2>
<p>Previously, if a service appointment’s calendar event was rescheduled or cancelled directly from a connected third-party calendar (such as Google Calendar or Outlook), only the calendar event was updated and the service appointment record could become out of sync.</p>
<p>This update fixes that behavior for single-service appointments: changes made in a connected third-party calendar now sync back correctly so the calendar event and the service appointment stay aligned. Multi-service appointments are not yet synced when changes are made directly in third-party calendars.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Two-way sync for single-service appointments</strong>: Reschedules and cancellations made in Google Calendar or Outlook now update both the calendar event and the service appointment.</li>
<li><strong>Consistent data across views</strong>: For single-service appointments, the calendar view, appointment list, and appointment details now reflect third-party changes correctly.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>No setup is required. These improvements are live automatically.</li>
<li><strong>Single-service appointments</strong>: Reschedule or cancel in your connected third-party calendar and the update will sync back automatically.</li>
<li><strong>Multi-service appointments</strong>: For now, make schedule changes in the app to avoid the calendar event and appointment record getting out of sync.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Reduces double-booking risk when a third-party cancellation or reschedule occurs.</li>
<li>Keeps appointment information consistent across your calendar and appointment records.</li>
<li>Helps reduce support requests caused by mismatched appointment times or statuses.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T10:54:49.000Z'),
('wp-1441', 'Localized notification templates for Calendars, Services, and Rentals', 'Overview Notification templates now support multiple languages across Calendars, Services, and Rentals. The default templates will display in the language set in your Business Profile (Platform Language). If you have already edited a template, it will stay exactly as you saved it...', '<h2>Overview</h2>
<p>Notification templates now support multiple languages across Calendars, Services, and Rentals. The default templates will display in the language set in your Business Profile (Platform Language). If you have already edited a template, it will stay exactly as you saved it.</p>
<h2>What changed</h2>
<ul>
<li><strong>Localized defaults:</strong> Default templates automatically display in the correct language for supported channels (Email, SMS, and WhatsApp, depending on the product).</li>
<li><strong>Coverage by product:</strong> Calendars includes templates for Assigned User, Additional Email, Additional Phone, Contact, and Guest recipients. Services and Rentals include the relevant recipient templates for each notification type.</li>
<li><strong>One language setting:</strong> Templates use the Business Profile Platform Language as the single source of truth.</li>
<li><strong>Custom edits are preserved:</strong> Edited templates are never overwritten or retranslated.</li>
<li><strong>New setups are ready immediately:</strong> Newly created Calendars, Services, and Rentals locations get localized default templates automatically.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li><strong>Calendars:</strong> Go to Calendar Settings → Notifications for the calendar you want to update.</li>
<li><strong>Services and Rentals:</strong> Go to Global Settings → Notifications.</li>
<li><strong>Existing locations:</strong> Your current templates remain unchanged. To use the localized default version, open the template and select <strong>Reset to Default</strong>.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Multi-language businesses can use notification templates without manual translation.</li>
<li>Using the Business Profile language keeps behavior consistent across products and recipient types.</li>
<li>Your existing customized templates remain protected.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-09-22T10:43:00.000Z'),
('wp-1440', 'Mobile App: Diagnose Notification Issues', 'If you are not receiving notifications, you can now run a quick diagnosis in the mobile app settings. The tool checks your network connection, notification permissions, sound settings, and test delivery, then explains what needs attention. What this helps with When notifications ...', '<p>If you are not receiving notifications, you can now run a quick diagnosis in the mobile app settings. The tool checks your network connection, notification permissions, sound settings, and test delivery, then explains what needs attention.</p>
<h2>What this helps with</h2>
<p>When notifications stop arriving, it is often unclear whether the issue is your device settings, your connection, or the app. This diagnosis gives you a clear answer in under a minute.</p>
<h2>What it checks</h2>
<ul>
<li><strong>Network:</strong> confirms your device can reach the service.</li>
<li><strong>Notifications:</strong> confirms notifications are allowed for the app.</li>
<li><strong>Sound and focus settings:</strong> checks common settings that can silence alerts.</li>
<li><strong>Test delivery:</strong> sends a real test notification and lets you confirm whether it arrived.</li>
</ul>
<h2>What you can do with the results</h2>
<ul>
<li>See clear “pass” or “needs attention” results for each check.</li>
<li>Retry test delivery if it does not arrive.</li>
<li>Follow the recommended fix for any failed check.</li>
<li>Copy a short report to share with support if you still need help.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Settings</strong> in the mobile app.</li>
<li>Select <strong>Diagnose Notifications</strong>, then start the diagnosis.</li>
<li>Confirm whether the test notification arrived, and retry if needed.</li>
<li>Apply any suggested fixes and run the diagnosis again.</li>
</ol>
<h2>Availability</h2>
<ul>
<li><strong>Release:</strong> September 2026</li>
<li><strong>Version:</strong> 4.25.0 or later</li>
<li><strong>Status:</strong> Available now</li>
<li><strong>Supported apps:</strong> Leadli, LeadConnector, and the white-label mobile app</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T09:24:56.000Z'),
('wp-1439', 'Messaging and phone number pricing updates (effective October 13, 2026)', 'Effective date List prices for select international outbound SMS destinations and phone number monthly rentals will change on October 13, 2026 . Outbound messaging (SMS) The following outbound SMS prices will change on October 13, 2026: Albania: $0.1167 → $0.1419 Angola: $0.3062 ...', '<h2>Effective date</h2>
<p>List prices for select international outbound SMS destinations and phone number monthly rentals will change on <strong>October 13, 2026</strong>.</p>
<h2>Outbound messaging (SMS)</h2>
<p>The following outbound SMS prices will change on October 13, 2026:</p>
<ul>
<li>Albania: $0.1167 → <strong>$0.1419</strong></li>
<li>Angola: $0.3062 → <strong>$0.3154</strong></li>
<li>Burkina Faso: $0.2233 → <strong>$0.2568</strong></li>
<li>Congo (DRC): $0.2584 → <strong>$0.2994</strong></li>
<li>Guam &amp; Northern Mariana Islands: $0.0847 → <strong>$0.0983</strong></li>
<li>Maldives: $0.3581 → <strong>$0.4047</strong></li>
<li>Mali: $0.3485 → <strong>$0.3590</strong></li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;