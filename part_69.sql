INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Every tag belongs to a category.</li>
<li>Tags without an assigned category are automatically placed under <strong>No category</strong>.</li>
<li>If you delete a category that contains tags, those tags automatically move to <strong>No category</strong>.</li>
</ul>
</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-17T14:55:50.000Z'),
('wp-1337', 'Communities: Automate join request reviews with workflows', 'Community admins can now automate how join requests are reviewed, routed, and handled using a workflow trigger. This reduces manual review while keeping control over who gets access. What’s new New workflow trigger: Requested to Join Group . This trigger runs whenever someone req...', '<p>Community admins can now automate how join requests are reviewed, routed, and handled using a workflow trigger. This reduces manual review while keeping control over who gets access.</p>
<h3>What’s new</h3>
<ul>
<li><strong>New workflow trigger: Requested to Join Group</strong>. This trigger runs whenever someone requests to join a community group, so you can build automations for the full join-request process.</li>
<li><strong>Filters based on membership question responses</strong>. You can filter by group and by the answers people submit. When you select a group, its membership questions appear as filter fields so you can route requests based on responses.</li>
<li><strong>AI-based screening (optional)</strong>. You can pass membership answers into GPT prompts inside workflows to flag likely spam or low-quality submissions. Based on the result, you can automatically approve and grant access, or route the request for manual review.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Create a new workflow and add the <strong>Requested to Join Group</strong> trigger.</li>
<li>Select the target group and configure filters based on membership question answers (optional).</li>
<li>Add any actions you need, such as granting group access, sending a welcome message, or tagging the contact.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The trigger runs on join requests (not direct joins). Request-based access must be enabled for the group.</li>
<li>Membership question filters update based on the questions configured for the selected group.</li>
<li>GPT actions may incur additional charges per execution.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-17T12:58:49.000Z'),
('wp-1336', 'Client Portal: Invoice and estimate notifications for contacts', 'Contacts can now receive in-app notifications in the Client Portal whenever a new invoice or estimate is issued. This helps clients see billing activity right away, review estimates, and take action on invoices without relying only on email notifications. What’s included Notifica...', '<p>Contacts can now receive in-app notifications in the Client Portal whenever a new invoice or estimate is issued.</p>
<p>This helps clients see billing activity right away, review estimates, and take action on invoices without relying only on email notifications.</p>
<h2>What’s included</h2>
<h3>Notifications for new invoices</h3>
<ul>
<li>When a new invoice is issued to a contact, a notification appears in their Client Portal.</li>
<li>Contacts can select the notification to open the invoice and take the next step.</li>
</ul>
<h3>Notifications for new estimates</h3>
<p>Contacts are also notified when they receive a new estimate, making it easier to review and respond without manually checking the Estimates section.</p>
<h3>Billing updates inside the Client Portal</h3>
<p>Billing updates appear in the Client Portal notification center so contacts can keep up with new invoices and estimates.</p>
<h3>Faster payments and approvals</h3>
<p>Because billing activity is shown as it happens, contacts can respond sooner, which can reduce delays in approvals and payments.</p>
<h2>How it works</h2>
<p><strong>For contacts:</strong></p>
<ul>
<li>Log in to the Client Portal.</li>
<li>When a new invoice or estimate is issued, an in-app notification appears automatically.</li>
<li>Open the Notifications panel.</li>
<li>Select the notification to go to the invoice or estimate.</li>
</ul>
<p>No setup is required. Notifications are automatically available for contacts using the Client Portal.</p>
<h2>Why this matters</h2>
<p>Invoices and estimates often require timely action, such as making a payment, reviewing pricing, or approving an estimate.</p>
<p>Previously, contacts did not have an in-portal alert when new billing documents were available. With these notifications, clients can see when something needs attention, which helps create a smoother billing experience and supports faster responses.</p>
<h2>Notes</h2>
<ul>
<li>Notifications are triggered when a contact receives a new invoice or estimate.</li>
<li>Notifications are delivered to the relevant contact.</li>
<li>Currently supported notification channel: in-app notifications.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-17T04:24:46.000Z'),
('wp-1335', 'Manage appointments in the Leadli Client Portal', 'Clients can now book, view, and manage appointments directly from the Client Portal. This gives them one place to manage their schedule without relying on email threads, booking links, or other tools. What’s included View appointments in one place Clients can see their appointmen...', '<p>Clients can now book, view, and manage appointments directly from the Client Portal. This gives them one place to manage their schedule without relying on email threads, booking links, or other tools.</p>
<h2>What’s included</h2>
<h3>View appointments in one place</h3>
<p>Clients can see their appointments inside the Client Portal with:</p>
<ul>
<li>Today, Upcoming, and Past views</li>
<li>A full calendar view</li>
<li>Appointment details including date, time, and status</li>
</ul>
<h3>Book new appointments</h3>
<ul>
<li>Clients can book appointments without leaving the portal.</li>
<li>Their existing contact information is used automatically to speed up booking and reduce repeated data entry.</li>
<li>If multiple calendars are enabled for the Client Portal, clients can choose which calendar to book.</li>
</ul>
<h3>Book again</h3>
<p>After an appointment is completed, clients can quickly book another appointment from the portal.</p>
<h3>Reschedule or cancel appointments</h3>
<p>Eligible appointments can be rescheduled or canceled directly from the Client Portal, so clients can manage changes without contacting the business.</p>
<h3>You control what’s available</h3>
<p>Businesses decide which booking options are available to clients. You can:</p>
<ul>
<li>Enable one or multiple calendars for Client Portal bookings</li>
<li>Choose which calendars clients can select when booking</li>
<li>Enable or disable the appointments experience through Client Portal app permissions</li>
</ul>
<h2>How to enable appointments</h2>
<h3>1) Enable calendars for Client Portal booking</h3>
<p>Go to: <strong>Calendars → Calendar Settings → Meetings → Calendars</strong></p>
<p>Open the calendar you want to make available, then go to: <strong>Edit Calendar → Booking Channels</strong></p>
<p>Turn on Client Portal booking and save your changes. Repeat for each calendar you want clients to be able to book.</p>
<h3>2) Enable the Appointments app</h3>
<p>Go to: <strong>Memberships → Client Portal → Settings → App Permissions</strong></p>
<p>Enable Appointments and save your settings. Once enabled, clients will see Appointments inside their Client Portal and can start viewing and booking available appointments.</p>
<h2>Why this matters</h2>
<p>Appointment management is now part of the Client Portal experience. This gives clients more control over their schedules and reduces the need for businesses to manually handle booking, rescheduling, and cancellation requests.</p>
<p><strong>Note:</strong> Appointments are currently available in the new Client Portal UI.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-17T04:10:52.000Z'),
('wp-1334', 'New templates are now available in Leadli', 'We have added new templates to help you build websites, funnels, and campaigns faster. These templates are fully customizable and designed to keep your setup process straightforward. What''s included in this update Website templates (1) Home Services (1) Funnel templates (1) Marke...', '<p>We have added new templates to help you build websites, funnels, and campaigns faster. These templates are fully customizable and designed to keep your setup process straightforward.</p>
<h3>What&#8217;s included in this update</h3>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;