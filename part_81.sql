INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Detected listings include confidence indicators (High match, Medium match, Multiple matches) to help you choose the right profile.</li>
</ul>
<p><strong>7) Multiple matches support</strong></p>
<p>If multiple possible listings are found for a platform, you can review and compare matches before selecting the correct business profile. Supported platforms allow multi-page connections, so you can connect multiple review pages when needed.</p>
<p><strong>8) Control for incorrect matches</strong></p>
<p>You can manage suggestions with actions such as:</p>
<ul>
<li>View page</li>
<li>Integrate different profile</li>
<li>Not my business</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Discover review profiles you may not have known existed.</li>
<li>See social proof and review volume before connecting.</li>
<li>Reduce manual setup and connect the highest-impact platforms faster.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1168', 'New templates now available in Leadli', 'We have released new web templates to support common marketing tasks such as building websites, creating funnels, and sending email campaigns. These templates are customizable and designed to help you publish faster. What’s included in this release Website templates: 2 new templa...', '<p>We have released new web templates to support common marketing tasks such as building websites, creating funnels, and sending email campaigns. These templates are customizable and designed to help you publish faster.</p>
<p><strong>What’s included in this release</strong></p>
<ul>
<li><strong>Website templates:</strong> 2 new templates</li>
<li><strong>Funnel templates:</strong> 7 new templates</li>
<li><strong>Email templates:</strong> 1 new template</li>
<li><strong>Social templates:</strong> 4 new templates</li>
<li><strong>Facebook ad templates:</strong> 3 new templates</li>
<li><strong>Google ad templates:</strong> 5 new templates</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates</li>
<li><strong>Snapshot:</strong> 1 new snapshot</li>
</ul>
<p><strong>Template details</strong></p>
<p><strong>Website</strong><br />Automotive (1)</p>
<p><strong>Email</strong><br />Real Estate (1)</p>
<p><strong>Social</strong><br />Automotive (2)<br />Restaurant and Bar (2)</p>
<p><strong>Facebook Ads</strong><br />Restaurant and Bar: Sanitation<br />Legal: Defense Lawyer<br />Health &amp; Wellness: Self Defense Training</p>
<p><strong>Google Ads</strong><br />Beauty &amp; Fashion: Hair Studio<br />Automotive: Automotive Mechanic<br />Travel &amp; Hospitality: Vacation Lodge<br />Restaurant &amp; Bar: Pastry Shop<br />Real Estate: Real Estate Sales Agent</p>
<p><strong>LinkedIn Ads</strong><br />Business Coaching &amp; Consulting: Lifestyle Coaching<br />Finance: Accounting Firm<br />Marketing Agency: Marketing Agency<br />Finance: Financial Planner<br />Marketing Agency: Services Strategies</p>
<p><strong>Snapshot</strong><br />Finance: Banking and Payment</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1167', 'SLA widgets in dashboards for response-time accountability', 'This update adds new SLA widgets in the Dashboards widget panel to help you monitor response times and SLA performance across your team. What’s new Four new SLA widgets are available at the bottom of the Conversations section in the Dashboards widget panel. Track SLA met trend, S...', '<p>This update adds new SLA widgets in the Dashboards widget panel to help you monitor response times and SLA performance across your team.</p>
<h2>What’s new</h2>
<ul>
<li>Four new SLA widgets are available at the bottom of the Conversations section in the Dashboards widget panel.</li>
<li>Track SLA met trend, SLA breached trend, average response time trend, and SLA performance across users and channels in one place.</li>
<li>Each widget supports filtering by assigned user and message channel (Call, SMS, Email, Web chat, Facebook, GMB, Instagram).</li>
<li>These widgets work alongside the existing Conversations widgets already on your dashboard—no separate setup required.</li>
<li>SLA met and SLA breached are available as dimensions in Custom Metrics, so you can build KPIs like an SLA compliance rate using the formula builder.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Open any dashboard and select <strong>Edit Dashboard</strong>.</li>
<li>Select <strong>+ Add Widget</strong> and scroll to the <strong>Conversations</strong> section.</li>
<li>Select one of the SLA widgets, configure filters and chart type, then select <strong>Save Changes</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Adds an on-time performance layer to conversation tracking.</li>
<li>Helps you identify SLA breach patterns early so you can investigate and correct them.</li>
<li>Makes it easier to track response speed trends over time.</li>
<li>Breaks down SLA performance by team member and channel for a clear, data-backed view.</li>
</ul>
<h2>What’s next</h2>
<p>No additional updates have been announced for this feature.</p>
<h2>Notes</h2>
<ul>
<li>Conversations SLA widgets are limited to a 1-year date range.</li>
<li>All widgets support filtering by assigned user and message channel.</li>
<li>Available on all plans that include Dashboards &amp; Reporting.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1166', 'Book Appointment action now includes timezone control', 'Summary The Leadli Book Appointment workflow action now includes a Timezone field. You can set a fixed timezone or use a dynamic value such as the contact’s timezone. How it works When the action runs, Leadli reads the Start Date & Time using the selected timezone and books the a...', '<p><strong>Summary</strong></p>
<p>The Leadli Book Appointment workflow action now includes a Timezone field. You can set a fixed timezone or use a dynamic value such as the contact’s timezone.</p>
<p><strong>How it works</strong></p>
<p>When the action runs, Leadli reads the Start Date &amp; Time using the selected timezone and books the appointment at the correct absolute time. If no timezone is selected, it uses the account timezone.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the Book Appointment action in a workflow.</li>
<li>Set the Start Date &amp; Time and choose a fixed timezone or Contact Timezone.</li>
<li>Save the action.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Without a timezone setting, dynamic appointment times can be interpreted in the wrong timezone, which can cause bookings to land at the wrong time for contacts in different regions.</p>
<p><strong>Notes and limitations</strong></p>
<ul>
<li>The account timezone is used by default, but you can set a specific timezone if needed.</li>
<li>The selected timezone is used to interpret the Start Date &amp; Time and check slot availability.</li>
<li>If Override Availability is enabled, the appointment can be booked without checking calendar availability.</li>
<li>This update applies only to the Book Appointment action.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1165', 'Email Sequences are available in Leadli Beta Labs', 'Email Sequences are now available in Beta Labs. They let you automate single-thread email conversations using delays, conditions, and scheduling. After strong interest during the private beta, early feedback continues to show clear demand. Key features Single-thread automated ema...', '<p>Email Sequences are now available in Beta Labs. They let you automate single-thread email conversations using delays, conditions, and scheduling.</p>
<p>After strong interest during the private beta, early feedback continues to show clear demand.</p>
<h3>Key features</h3>
<ul>
<li>Single-thread automated email conversations</li>
<li>Conditional sending based on open and delivery status</li>
<li>Stop on reply automation</li>
<li>Support for designed emails and plain text emails</li>
<li>Sequence and step-level analytics</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;