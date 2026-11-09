INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>App Store and Microsoft Store listings</li>
<li>Performance improvements</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1210', 'Password compliance notifications', 'Overview As part of the ongoing password compliance initiative, Leadli is rolling out platform notifications for users whose passwords do not meet the updated security requirements. What’s included Persistent notification banner: A banner will appear across the platform for affec...', '<p><strong>Overview</strong></p>
<p>As part of the ongoing password compliance initiative, Leadli is rolling out platform notifications for users whose passwords do not meet the updated security requirements.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Persistent notification banner:</strong> A banner will appear across the platform for affected users and will prompt them to update their password before September 9, 2026. Selecting the <em>Update password</em> call-to-action takes the user to the My Profile page to complete the update.</li>
<li><strong>Inline notice on My Profile:</strong> A notice on the My Profile page will remind affected users to update their password based on the updated guidelines. This notice will remain visible until September 9, 2026 for non-compliant users.</li>
</ul>
<p><strong>Note:</strong> Users who have already updated their password will not see these notifications.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1209', 'Password compliance enforcement', 'We are rolling out stronger password security standards in Leadli to improve account security and meet updated requirements. What''s changing Password complexity checks are now enforced across key sign-in and account update areas. Passwords must include: At least 12 characters At ...', '<p>We are rolling out stronger password security standards in Leadli to improve account security and meet updated requirements.</p>
<p><strong>What&#8217;s changing</strong></p>
<p>Password complexity checks are now enforced across key sign-in and account update areas. Passwords must include:</p>
<ul>
<li>At least 12 characters</li>
<li>At least one uppercase letter (A-Z), one lowercase letter (a-z), one number (0-9), and one special character (for example: !, @, #, $)</li>
</ul>
<p><strong>Where this applies</strong></p>
<ul>
<li>Signup and account activation</li>
<li>Password reset and forgot password</li>
<li>Profile updates</li>
<li>Editing user information</li>
</ul>
<p><strong>Effective date</strong></p>
<p>Starting June 4, 2026, this applies to all new users and to existing users when they change their password.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1208', 'Sub-account billing: A clearer invoice list', 'We updated the invoice list in sub-account billing to make charges easier to understand at a glance. What changed See what you were charged for The Products column now shows product names instead of invoice codes. If an invoice includes multiple items, it shows the first product ...', '<p>We updated the invoice list in sub-account billing to make charges easier to understand at a glance.</p>
<h3>What changed</h3>
<ol>
<li><strong>See what you were charged for</strong><br />The Products column now shows product names instead of invoice codes. If an invoice includes multiple items, it shows the first product name and the number of additional items. You can hover to see the full list.</li>
<li><strong>A cleaner invoice table</strong><br />The Invoice ID column was removed. A Transaction ID is now shown (shortened for readability) and includes a one-click copy option to copy the full ID.</li>
<li><strong>Review invoices without automatically downloading</strong><br />Selecting “View” now opens an invoice details panel instead of immediately downloading a PDF. From the panel you can review the amount, payment method, status, and line items, then choose to view in Stripe or download the invoice.</li>
<li><strong>Clearer labels for external charges</strong><br />Invoices and products that come from outside the Leadli platform are labeled “External” so it’s easier to distinguish platform charges from third-party charges.</li>
</ol>
<h3>Why this matters</h3>
<p>These updates reduce guesswork when reviewing billing history. You can identify charges faster, review invoices without unintended downloads, and see where each charge originates.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1207', 'Payment links: customize the checkout button text', 'You can now customize the label on your payment link checkout button. Choose a standard option or enter a custom label that matches your brand and offer. No code is required. The problem The checkout button is one of the last steps before a customer completes a purchase. Generic ...', '<p>You can now customize the label on your payment link checkout button. Choose a standard option or enter a custom label that matches your brand and offer. No code is required.</p>
<h3>The problem</h3>
<p>The checkout button is one of the last steps before a customer completes a purchase. Generic button labels may not match your offer, which can create hesitation and reduce conversions.</p>
<h3>What’s new</h3>
<p>The payment link builder now includes a custom button text field under Advanced Options. You can select a default label or type your own (up to 50 characters). The preview updates immediately so you can confirm how it will look before publishing.</p>
<h3>Why it matters</h3>
<ul>
<li><strong>Improve conversion</strong>: Use a call to action that matches what the customer is buying.</li>
<li><strong>Stay consistent</strong>: Keep the button text aligned with your messaging.</li>
<li><strong>Move faster</strong>: Update the button label in seconds without workarounds.</li>
<li><strong>Works for many offers</strong>: Useful for courses, events, services, memberships, donations, and more.</li>
</ul>
<h3>How to set it up</h3>
<ol>
<li>Open the Payment Link builder (Payments → Payment Links) and create a new link or edit an existing one.</li>
<li>Go to Advanced Options and find the setting for the payment link button call to action.</li>
<li>Select a default option or enter a custom label (up to 50 characters).</li>
<li>Review the live preview and save your changes.</li>
</ol>
<h3>Good to know</h3>
<ul>
<li>Custom button text is available on all payment link types.</li>
<li>Maximum length is 50 characters.</li>
<li>The button text shows on all devices.</li>
<li>Changes apply to new sessions. Anyone already on the checkout page may need to refresh to see the updated label.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1206', 'Inbound call routing based on working hours', 'Release date: June 25, 2026 What’s new You can choose to receive inbound calls only during your working hours. Turn on "Only ring during working hours" in your profile, select the schedule that defines your availability, and inbound calls that arrive outside those hours will auto...', '<p><strong>Release date:</strong> June 25, 2026</p>
<p><strong>What’s new</strong></p>
<p>You can choose to receive inbound calls only during your working hours. Turn on &#8220;Only ring during working hours&#8221; in your profile, select the schedule that defines your availability, and inbound calls that arrive outside those hours will automatically skip you and go to the phone number’s existing backup.</p>
<p>The setting is off by default, so nothing changes until you turn it on. During your working hours, calls will ring as they do today.</p>
<p><strong>Where to find it</strong></p>
<ul>
<li>Settings &gt; My Profile, in the &#8220;Inbound call routing&#8221; section.</li>
<li>Admins can also manage this for team members under Settings &gt; My Staff &gt; Edit &gt; User Availability.</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li><strong>Direct calls:</strong> If you are assigned and outside your hours, the call skips you and goes to the number’s backup.</li>
<li><strong>Ring all:</strong> Teammates outside their hours are skipped. Anyone still within hours rings as normal. If everyone is outside hours, the call goes to the number’s backup.</li>
<li><strong>Call menu (IVR):</strong> If a connect step is set up to ring you and you are outside your hours, you are skipped while other people and numbers on that step still ring. If you were the only target, that step connects no one and the workflow continues on its normal &#8220;not connected&#8221; path.</li>
<li><strong>Forwarding numbers:</strong> If your phone is set as the phone number’s forwarding number or business number, it is also skipped when you are outside your hours so the call still goes to the backup.</li>
</ul>
<p><strong>Holidays and days off</strong></p>
<p>The schedule supports date-specific hours that override your normal weekly hours for a single date. Add a date-specific day with no hours to stop inbound calls for a holiday or day off without changing your regular weekly schedule.</p>
<p><strong>Admin controls</strong></p>
<p>This setting is tied to the &#8220;Manage calendars&#8221; permission. If you do not want staff members to change their own call availability, remove that permission from their role under Settings &gt; My Staff &gt; Roles and Permissions. When the permission is off, the &#8220;Inbound call routing&#8221; section cannot be used and changes are blocked.</p>
<p><strong>Known limitations</strong></p>
<ul>
<li>Transfers are not included yet. This release applies to inbound calls to assigned users, ring all, and call menu (IVR) steps. Transferred calls are planned for a future update.</li>
<li>There are no per-user backup options yet. Calls outside your hours follow the phone number’s existing backup.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1205', 'Python is now available in the Custom Code action', 'What’s new You can now use Python in the Custom Code action. Select Python from the language dropdown to run your custom code. This expands what you can automate with Leadli Custom Code.', '<p><strong>What’s new</strong></p>
<p>You can now use Python in the Custom Code action. Select Python from the language dropdown to run your custom code.</p>
<p>This expands what you can automate with Leadli Custom Code.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1204', 'Ask AI Artifacts: Interactive AI Responses in the Leadli Mobile App', 'Ask AI V2 updates the Leadli mobile AI assistant so you can get clear answers and take action from your phone, not only from a computer. Responses support multiple interactive formats, your history is searchable, and answers can stream in live. The problem Many people run their b...', '<p>Ask AI V2 updates the Leadli mobile AI assistant so you can get clear answers and take action from your phone, not only from a computer. Responses support multiple interactive formats, your history is searchable, and answers can stream in live.</p>
<p><strong>The problem</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;