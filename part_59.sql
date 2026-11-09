INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h3>Why this matters</h3>
<ul>
<li>Including both links now helps avoid carrier rejections and keeps new numbers moving.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-02T07:36:43.000Z'),
('wp-1385', 'New templates are now available in Leadli', 'New templates are now available in Leadli for websites, funnels, email campaigns, ads, and workflows. They are designed to be easy to customize so you can publish faster. What’s new Website templates: 1 new template (Business Coaching & Consulting) Funnel templates: 1 new templat...', '<p>New templates are now available in Leadli for websites, funnels, email campaigns, ads, and workflows. They are designed to be easy to customize so you can publish faster.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Website templates:</strong> 1 new template (Business Coaching &amp; Consulting)</li>
<li><strong>Funnel templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Email templates:</strong> 1 new template (Business Coaching &amp; Consulting)</li>
<li><strong>Social templates:</strong> 4 new templates (Other: 2; Home Services: 2)</li>
<li><strong>Facebook Ad templates:</strong> 2 new templates (Automotive – Car Detailing; Business Coaching &amp; Consulting – Education Tutor)</li>
<li><strong>Google Ad templates:</strong> 5 new templates (Other – Cell Phone Repair; Medical – Hair Regrowth; Marketing Agency – Digital Content Creator; Legal – Personal Injury Law Firm; Insurance – Commercial Insurance Services)</li>
<li><strong>LinkedIn Ad templates:</strong> 7 new templates (Finance – Financial Investor; Insurance – P&amp;C Insurance Advisor; Marketing Agency – Digital Networking Services; Creative – Engraving Shop; Business Coaching &amp; Consulting – Learning Specialist; Real Estate – Home Loan Specialist; Finance – Financial Record Keeper)</li>
<li><strong>Workflow templates:</strong> 1 new template (Industry-Specific – Insurance Policy Renewal Reminder)</li>
</ul>
<h3>Updated template</h3>
<p>1 existing template was updated with refreshed copy and improved navigation and heading structure (Business Coaching &amp; Consulting – Career Coach).</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-29T15:33:30.000Z'),
('wp-1383', 'Workflow Builder: Choose a sender domain for each workflow', 'Update You can now choose a sender domain at the workflow level. When set, every email action in that workflow will send from the selected verified dedicated domain, similar to how domain selection works in Email Campaigns. How it works In Workflow Settings, go to Sender details ...', '<p><strong>Update</strong></p>
<p>You can now choose a sender domain at the workflow level. When set, every email action in that workflow will send from the selected verified dedicated domain, similar to how domain selection works in Email Campaigns.</p>
<p><strong>How it works</strong></p>
<ul>
<li>In Workflow Settings, go to Sender details and select a Sender domain.</li>
<li>The dropdown shows verified dedicated domains available in the sub-account, plus an option for All domains.</li>
</ul>
<p><strong>Options</strong></p>
<ul>
<li><strong>All domains:</strong> Enter a sender name and email prefix (for example, <code>marketing</code>). Emails will continue to use the weighted distribution across your configured domains.</li>
<li><strong>Specific domain:</strong> Select a domain and enter the email prefix. For example, <code>marketing@example.com</code>.</li>
</ul>
<p><strong>Important notes</strong></p>
<ul>
<li>If you type a full sender email that uses a different domain than the one selected, the sender email will override the selected domain. A mismatch warning may appear because it can affect deliverability.</li>
<li>Sender details set inside an individual email action override the workflow-level sender settings.</li>
<li>Only verified domains from Email Services appear in the dropdown.</li>
</ul>
<p><strong>Why this change helps</strong></p>
<p>Previously, all workflows in a sub-account used the same sending domain. Now you can separate different types of email (reminders, receipts, promotions, outreach) across different domains, so issues with one type are less likely to impact the others.</p>
<p><strong>Example</strong></p>
<p>Send appointment reminders and payment receipts from <code>mail.acmeclinic.com</code>, and run promotional nurtures from <code>news.acmeclinic.com</code>.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-28T14:53:43.000Z'),
('wp-1382', 'Test SMS in workflows now includes a country picker', 'The “Test Phone Number” field in the Send SMS workflow action now uses the standard phone input with a country picker. This makes it easier to send a quick test without manually adding a country code. The field now shows a simple “Invalid phone number” message when the number for...', '<p>The “Test Phone Number” field in the Send SMS workflow action now uses the standard phone input with a country picker.</p>
<p>This makes it easier to send a quick test without manually adding a country code. The field now shows a simple “Invalid phone number” message when the number format is not valid.</p>
<p><strong>How it works</strong></p>
<ul>
<li>The country picker appears in front of the phone number field.</li>
<li>It defaults to the sub-account’s country.</li>
<li>The selected country is used to save the number in full international format before the test SMS is sent.</li>
<li>You can click the flag to search by country name or dialing code and switch countries.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the Send SMS action in your workflow and scroll to “Test Phone Number.”</li>
<li>Keep the default country, or choose a different one from the picker.</li>
<li>Enter the number in local format and click “Send test SMS.”</li>
</ul>
<p><strong>Why this change matters</strong></p>
<p>Many people enter their number the way they normally dial it. Previously, tests often failed when the country code was missing, which made testing slower and more confusing.</p>
<p><strong>Examples</strong></p>
<ul>
<li>If your sub-account is set to India and you enter <code>9089786755</code>, the test will send to <code>+919089786755</code>.</li>
<li>If you switch the picker to the US and enter <code>4088613552</code>, the test will send to <code>+14088613552</code>.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-27T13:35:20.000Z'),
('wp-1381', 'Certificate AI (Beta) is now available', 'Certificate AI (Beta) lets you create a certificate starting from a short prompt. Describe what you need and it generates a complete, editable certificate design in minutes. What’s new Generate with AI: Describe the certificate you want and the AI creates a first design. Guided c...', '<p>Certificate AI (Beta) lets you create a certificate starting from a short prompt. Describe what you need and it generates a complete, editable certificate design in minutes.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Generate with AI:</strong> Describe the certificate you want and the AI creates a first design.</li>
<li><strong>Guided creation:</strong> The AI asks a few relevant questions (for example, certificate orientation) to match your requirements.</li>
<li><strong>Complete designs:</strong> The AI can include text, frames, signatures, QR codes, and other Certificate Builder elements.</li>
<li><strong>Fully editable:</strong> You can continue customizing the certificate in the Certificate Builder.</li>
<li><strong>Quick prompts:</strong> Start from common use cases like course completions, milestones, event participation, and training.</li>
</ul>
<p><strong>How to access</strong></p>
<ul>
<li>In Leadli, go to <strong>Memberships</strong> → <strong>Credentials</strong>, then describe the certificate you want to create.</li>
</ul>
<p>Certificate AI is currently in beta, and we will keep improving it based on your feedback.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-27T09:50:26.000Z'),
('wp-1380', 'Date range can count only available working days', 'Overview The Date Range setting now has a more accurate counting option across Calendars, Services, and Rentals. You can turn on Count available days only so the booking window is based on working days, not calendar days that include weekends or closed days. What’s new Count avai...', '<h2>Overview</h2>
<p>The Date Range setting now has a more accurate counting option across Calendars, Services, and Rentals. You can turn on <strong>Count available days only</strong> so the booking window is based on working days, not calendar days that include weekends or closed days.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Count available days only</strong>: When enabled, days outside your availability schedule are skipped when calculating the date range. For example, if you’re closed on weekends and use a 2-day range, the window will extend to the next available working days instead of showing empty days.</li>
<li><strong>Works with minimum scheduling notice</strong>: When this option is on, the date range starts from the first available day after the minimum notice period ends, so customers still see the full number of days you configured.</li>
<li><strong>Supported across calendar types</strong>: Available on Meeting Calendars, Services, and Rentals. Round robin and collective calendars are supported (a day is considered available if at least one assigned team member is available). Date-specific hour overrides are respected (added days count, blocked days are skipped).</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendars → Calendar Settings</strong> and edit the calendar you want to update.</li>
<li>For <strong>Services</strong>, go to <strong>Services → Global Settings → Service Settings</strong>.</li>
<li>For <strong>Rentals</strong>, edit a listing and open <strong>Booking Settings</strong>.</li>
<li>Find the <strong>Date range</strong> setting and turn on <strong>Count available days only</strong>.</li>
<li>Save your changes.</li>
</ol>
<h2>Why it matters</h2>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;