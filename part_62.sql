INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Web and mobile booking pages</li>
<li>Neo and Classic booking widgets</li>
<li>In-app appointment booking on web</li>
<li>Mobile app</li>
</ul>
<p><strong>Rescheduling</strong></p>
<p>The selected duration is also supported when rescheduling an appointment, so the meeting length can be changed along with the date or time.</p>
<p><strong>Existing appointments</strong></p>
<p>Changing your calendar duration options does not modify or cancel existing appointments.</p>
<p>For example, if you remove a 30-minute duration while future 30-minute appointments are already booked, those appointments remain unchanged. Their events, reminders, and notifications still use the originally booked duration.</p>
<p>New appointments can only use the duration options that are currently configured on the calendar.</p>
<p>When rescheduling, bookers will see the durations that are currently available. If their original duration is no longer offered, they will be asked to select a new duration before completing the reschedule.</p>
<p><strong>Supported calendar types</strong></p>
<ul>
<li>Personal Calendars</li>
<li>Round Robin Calendars</li>
<li>Collective Calendars</li>
<li>Event Calendars</li>
</ul>
<p>This makes it easier to offer flexible meeting lengths while keeping availability, bookings, and calendar management in a single calendar.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-25T02:31:34.000Z'),
('wp-1371', 'Free checkout without a credit card in Leadli Forms and Surveys', 'You can now choose whether a credit card is required when someone places a $0 order using the Sell Products element in Leadli Forms and Surveys. When Require credit card is turned off and the order total is $0 with no recurring charges due, the payment fields are hidden and the o...', '<p>You can now choose whether a credit card is required when someone places a $0 order using the Sell Products element in Leadli Forms and Surveys.</p>
<p>When <em>Require credit card</em> is turned off and the order total is $0 with no recurring charges due, the payment fields are hidden and the order completes as a free checkout.</p>
<h3>What changed</h3>
<ul>
<li>A new <em>Require credit card</em> setting is available on the Sell Products element in Forms and Surveys.</li>
<li>If the total is $0 (including cases where a 100% coupon discount brings the total to $0), payment fields are hidden when the setting is turned off.</li>
<li>If the Forms or Surveys are embedded in a Funnel, the Funnel-level credit card requirement takes precedence.</li>
<li>Subscriptions, free trials, and any order with a recurring amount still require a credit card.</li>
<li>If the total cannot be confirmed as $0, the payment fields will be shown to ensure payment is collected when needed.</li>
<li>Free orders are still created and recorded so submission and order history remain complete.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a Form or Survey and add (or edit) a Sell Products element.</li>
<li>Turn off <em>Require credit card</em>.</li>
<li>Test a $0 order with no recurring charges to confirm the payment fields are hidden and the order completes.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The setting defaults to on, so existing Forms and Surveys will behave the same until you change it.</li>
<li>Donation and custom-amount payment types are not included in this update.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-24T13:41:51.000Z'),
('wp-1370', 'Use custom field numbers as metrics in Leadli dashboards and reports', 'You can now use numeric and monetary custom fields on Contacts and Opportunities as report metrics in Leadli. This works in sub-account dashboards, custom reports, and the custom metrics area. What changed Numeric and monetary custom fields can be used as metrics (not only filter...', '<p>You can now use numeric and monetary custom fields on Contacts and Opportunities as report metrics in Leadli. This works in sub-account dashboards, custom reports, and the custom metrics area.</p>
<h3>What changed</h3>
<ul>
<li>Numeric and monetary custom fields can be used as metrics (not only filters or groupings).</li>
<li>You can aggregate those fields using Sum, Min, Max, or Average.</li>
<li>New numeric or monetary custom fields show up in the metric picker automatically.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a dashboard widget, a custom report, or the custom metrics area and choose to add a metric.</li>
<li>In the Field dropdown, select the numeric or monetary custom field you want to report on.</li>
<li>In the Aggregation dropdown, choose Sum, Min, Max, or Average.</li>
<li>Save the widget or report to see the live aggregated value.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>This applies to numeric and monetary custom field types on Contacts and Opportunities.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-23T17:24:33.000Z'),
('wp-1369', 'New templates are now available', 'New templates have been added to Leadli to help you build websites, funnels, emails, ads, and workflows faster. Each template is customizable and designed to be easy to use. What’s included in this release Website templates: 1 (Automotive) Funnel templates: 1 (Marketing Agency) E...', '<p>New templates have been added to Leadli to help you build websites, funnels, emails, ads, and workflows faster. Each template is customizable and designed to be easy to use.</p>
<h3>What’s included in this release</h3>
<ul>
<li>Website templates: 1 (Automotive)</li>
<li>Funnel templates: 1 (Marketing Agency)</li>
<li>Email templates: 1 (Automotive)</li>
<li>Social templates: 4 (Health &amp; Wellness: 2; Creative: 2)</li>
<li>Facebook ad templates: 2 (Automotive: Car Rental Agency; Health &amp; Wellness: Weight Loss)</li>
<li>Google ad templates: 5 (Home Services: Dry Cleaning; Health &amp; Wellness: Weight Management; Finance: Payment Solutions; Creative: Digital Designer; Business Coaching &amp; Consulting: Education Tutor)</li>
<li>LinkedIn ad templates: 7 (Insurance: Health Insurance; Finance: Credit Repair; Real Estate: Real Estate Management; Business Coaching &amp; Consulting: Business Mentoring; Marketing Agency: Affiliate Marketing Services; Finance: Tax Consultant; Creative: Professional Photographer)</li>
<li>Workflow templates: 3 (Sales &amp; Appointments: Calendar Booking Confirmation; Industry-Specific: Just Sold/Just Listed Announcement; Industry-Specific: Insurance Quote Follow-Up Sequence)</li>
<li>Snapshot: 1 (Creative: Dance Company)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-22T15:34:59.000Z'),
('wp-1368', 'Badge automation is available in workflows', 'You can now issue badges and use them to trigger follow-up actions in workflows. This makes it easier to automate recognition and what should happen next. What’s new Issue Badge action : Automatically issue a selected badge when your workflow conditions are met. Badge Issued trig...', '<p>You can now issue badges and use them to trigger follow-up actions in workflows. This makes it easier to automate recognition and what should happen next.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Issue Badge action</strong>: Automatically issue a selected badge when your workflow conditions are met.</li>
<li><strong>Badge Issued trigger</strong>: Start a workflow when a badge is issued and automate follow-up actions such as sending a message or email, updating a contact, or starting another automation.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ol>
<li>Makes badge recognition part of your existing workflows.</li>
<li>Automates the next steps after a badge is issued.</li>
<li>Helps you build more engaging journeys around achievements and milestones.</li>
</ol>
<p>More improvements are coming.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-21T08:01:01.000Z'),
('wp-1367', 'Anthropic and Google models are now available in the Leadli AI Agent Action', 'You can now use Anthropic and Google models in the Leadli AI Agent Action in workflows, along with OpenAI. What’s included More model options: Choose from supported models by Anthropic, Google, and OpenAI. Updated model selection: Models are grouped by provider, with short descri...', '<p>You can now use Anthropic and Google models in the Leadli AI Agent Action in workflows, along with OpenAI.</p>
<h2>What’s included</h2>
<ul>
<li><strong>More model options:</strong> Choose from supported models by Anthropic, Google, and OpenAI.</li>
<li><strong>Updated model selection:</strong> Models are grouped by provider, with short descriptions to help you choose.</li>
<li><strong>Reasoning effort control:</strong> Set effort to Low, Medium, or High on models that support it.</li>
</ul>
<h2>How to use it</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;