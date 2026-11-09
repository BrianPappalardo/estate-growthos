INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>If the native eyedropper API is available, the eyedropper is shown.</li>
<li>If the API is not available, the eyedropper is hidden.</li>
</ul>
<p>No chat widget configuration or code changes are required.</p>
<h3>Why it matters</h3>
<p>Previously, Safari and Firefox could show an eyedropper option that looked usable but did not work when clicked. This could make the color picker seem broken even though other color selection options worked.</p>
<p>We identified the issue through Sentry error monitoring and adjusted the UI so the color picker matches the actual capabilities of each browser.</p>
<h3>Availability</h3>
<p>This update is live for everyone. Existing chat widget settings and previously saved colors are not affected.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T16:22:40.000Z'),
('wp-1435', 'Chat Widget: Spam Protection', 'The Leadli Chat Widget now includes built-in spam protection to help reduce bot and high-volume suspicious submissions. This can help control messaging costs and protect your sender reputation. Spam protection runs in the background and does not add CAPTCHA, extra form fields, or...', '<p>The Leadli Chat Widget now includes built-in spam protection to help reduce bot and high-volume suspicious submissions. This can help control messaging costs and protect your sender reputation.</p>
<p>Spam protection runs in the background and does not add CAPTCHA, extra form fields, or extra steps for normal visitors.</p>
<h2>How it works</h2>
<p>When a submission looks suspicious, Leadli keeps the contact for review instead of deleting it.</p>
<ul>
<li>The contact is tagged with <code>chat_widget_high_volume_flag</code>.</li>
<li>Based on your settings, Leadli can pause SMS, email, or both for that contact.</li>
</ul>
<h2>Why this helps</h2>
<p>Sending messages to invalid phone numbers or email addresses can lead to unnecessary costs, bounces, and delivery issues. Spam protection can prevent outbound messages on the channels you select, helping reduce wasted messaging and protect deliverability.</p>
<h2>Configure per widget</h2>
<p>Spam protection is set at the individual Chat Widget level. You can choose one of these actions:</p>
<ul>
<li>Tag Only</li>
<li>Pause SMS</li>
<li>Pause Email</li>
<li>Pause Both</li>
</ul>
<p>Only the selected channel is affected. Other channels and existing DND preferences remain unchanged.</p>
<h2>Activity history and review</h2>
<p>When messaging is paused by spam protection, the contact activity log records the action and shows which channel was affected. You can also find flagged contacts by filtering for the <code>chat_widget_high_volume_flag</code> tag.</p>
<h2>Defaults</h2>
<ul>
<li>Existing Chat Widgets: spam protection is off by default.</li>
<li>New Chat Widgets: spam protection is on by default with <strong>Pause Both</strong> selected.</li>
</ul>
<h2>How to enable spam protection</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget</strong>.</li>
<li>Open the Chat Widget you want to configure.</li>
<li>In the builder sidebar, open <strong>Spam Protection</strong>.</li>
<li>Turn spam protection on.</li>
<li>Select the action to take when a suspicious submission is detected.</li>
<li>Save your changes.</li>
</ol>
<p>If you expect a large but legitimate traffic spike (for example, during a campaign, launch, event, or press announcement), you can temporarily disable spam protection for that widget and enable it again afterward.</p>
<h2>Why this was built</h2>
<p>A spam attack against a Chat Widget can create hundreds of fake contacts in a short period of time. If automated follow-ups are triggered for those contacts, businesses can end up sending SMS and emails to invalid destinations. Repeated failures and bounces can also hurt sender reputation and the deliverability of legitimate campaigns.</p>
<p>For security reasons, the specific signals and thresholds used to identify suspicious activity are not published.</p>
<h2>What’s next</h2>
<ul>
<li>Broader protection coverage</li>
<li>Better visibility into flagged contacts</li>
<li>Additional review and management controls</li>
<li>Ongoing detection improvements based on real-world traffic</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T16:18:42.000Z'),
('wp-1434', 'Granular WhatsApp user permissions are now available', 'You can now control who on your team can manage each part of WhatsApp. These per-action permissions help agency and sub-account admins limit access to templates, flows, phone numbers, business profile changes, and disconnecting WhatsApp. What’s included A dedicated WhatsApp permi...', '<p>You can now control who on your team can manage each part of WhatsApp. These per-action permissions help agency and sub-account admins limit access to templates, flows, phone numbers, business profile changes, and disconnecting WhatsApp.</p>
<h2>What’s included</h2>
<ul>
<li><strong>A dedicated WhatsApp permissions section:</strong> You can find it under <strong>Settings → Users → Edit → Roles &amp; permissions</strong> at both the agency and sub-account level.</li>
<li><strong>Seven per-action permissions:</strong>
<ul>
<li>Create and edit templates</li>
<li>Delete templates</li>
<li>Create and edit flows</li>
<li>Delete or deprecate flows</li>
<li>Update business profile</li>
<li>Add and manage phone numbers</li>
<li>Disconnect WhatsApp integration</li>
</ul>
</li>
</ul>
<h2>Safe by default</h2>
<p>All seven permissions are granted by default to the standard agency and sub-account roles, so nothing changes unless you decide to adjust access.</p>
<h2>Enforced beyond the UI</h2>
<p>Restricted actions are disabled in the WhatsApp settings screen with an explanation, and the same rules are enforced behind the scenes.</p>
<h2>Available in all supported languages</h2>
<p>The permission section is translated, so teams can use it in their preferred language.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings → Users</strong>.</li>
<li>Select the user and click <strong>Edit</strong>.</li>
<li>Open <strong>Roles &amp; permissions</strong>.</li>
<li>Find the <strong>WhatsApp</strong> section and set the permissions you want.</li>
<li>Save your changes. They apply immediately.</li>
</ol>
<h2>Good to know</h2>
<ul>
<li><strong>Permissions follow the user:</strong> Access is granted or revoked for that user across the sub-accounts they belong to.</li>
<li><strong>Changes are auditable:</strong> Permission changes appear in your audit logs at the agency level under Users.</li>
<li><strong>Works with or without reselling:</strong> The WhatsApp permission toggles appear under Users regardless of WhatsApp reselling settings.</li>
</ul>
<h2>Why this matters</h2>
<p>As teams grow, more people may need WhatsApp access, but not everyone should be able to change critical settings. These permissions reduce risk by limiting sensitive actions like disconnecting the integration, managing phone numbers, and editing templates.</p>
<p>Go to <strong>Settings → Users → Roles &amp; permissions</strong> to review and adjust WhatsApp access for your team.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T13:41:59.000Z'),
('wp-1433', 'App QR Codes now send users to the right app store', 'You can now create App QR Codes that automatically send people to the correct app store based on their device. Instead of using separate QR codes for iOS and Android (or sending users to a landing page to choose a store), one App QR Code can handle the full experience. What’s new...', '<p>You can now create <strong>App QR Codes</strong> that automatically send people to the correct app store based on their device.</p>
<p>Instead of using separate QR codes for iOS and Android (or sending users to a landing page to choose a store), one App QR Code can handle the full experience.</p>
<h2>What’s new</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;