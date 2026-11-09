INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h3>Notes</h3>
<ul>
<li>Backgrounds only apply to text-only Facebook posts.</li>
<li>Adding images or videos disables the background option.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:31:29.000Z'),
('wp-1061', 'Workflow Builder update: Resize and expand sidebars', 'Summary The workflow builder now includes new workspace controls that make it easier to configure workflows on different screen sizes. What changed Resizable sidebar: You can drag the edge of the action or trigger sidebar to adjust its width. Expand to full screen: You can open a...', '<p><strong>Summary</strong></p>
<p>The workflow builder now includes new workspace controls that make it easier to configure workflows on different screen sizes.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Resizable sidebar:</strong> You can drag the edge of the action or trigger sidebar to adjust its width.</li>
<li><strong>Expand to full screen:</strong> You can open an action or trigger in full screen when you need more room to edit settings (for example, emails, forms, messages, or multi-field actions).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open any workflow action or trigger.</li>
<li>Drag the sidebar edge to resize the panel.</li>
<li>Use expand mode when you need more space to work.</li>
</ol>
<p><strong>Additional notes</strong></p>
<ul>
<li>Applies to workflow actions, triggers, and items in the left sidebar.</li>
<li>Sidebar width can be adjusted based on your preference and screen size.</li>
<li>Actions and triggers can be expanded to full screen.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-12T15:56:55.000Z'),
('wp-1060', 'Bulk delete records for custom objects, companies, and tasks', 'Summary You can now bulk delete records in custom objects, companies, and tasks with no limit on how many records you delete in one action. What changed Custom objects now support selecting multiple records in list view so you can delete them in bulk. Companies and tasks bulk del...', '<h2>Summary</h2>
<p>You can now bulk delete records in custom objects, companies, and tasks with no limit on how many records you delete in one action.</p>
<h2>What changed</h2>
<ul>
<li>Custom objects now support selecting multiple records in list view so you can delete them in bulk.</li>
<li>Companies and tasks bulk delete is no longer limited to 100 records per action.</li>
<li>Deleted records can be restored for up to 60 days from the Bulk Actions page.</li>
</ul>
<h2>Where to find it</h2>
<p>We&#8217;ve enabled this for all accounts under <strong>Labs</strong>.</p>
<h2>How to use bulk delete</h2>
<ol>
<li>Open the custom object, company, or task list in your sub-account.</li>
<li>Select the records you want to delete using the row checkboxes (use the header checkbox to select all records on the page).</li>
<li>Click <strong>Delete</strong> in the bulk actions bar.</li>
<li>Confirm the deletion in the dialog.</li>
<li>Use the Bulk Actions page to review progress and logs.</li>
</ol>
<h2>What gets removed</h2>
<p>Deleting a record removes its relationships and associations, including:</p>
<ul>
<li>Links to related notes and tasks</li>
<li>Links to related contacts, companies, opportunities, and other custom object records</li>
<li>Any association labels applied to those relationships</li>
</ul>
<p>The related records themselves are not deleted—only the links between them and the deleted record.</p>
<h2>Restore deleted records</h2>
<p>Bulk-deleted records can be restored within 60 days from the Bulk Actions page. Find the deletion job you want to reverse, then use the menu to select <strong>Restore</strong>. The restore runs as a new job and reinstates the records along with their field values, associations, and association labels.</p>
<h2>Why it matters</h2>
<ul>
<li>Clean up large volumes of stale, test, or mis-imported records quickly</li>
<li>Reduce manual work by deleting multiple custom object records at once</li>
<li>Keep the bulk delete experience consistent across the CRM</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:56:33.000Z'),
('wp-1059', 'New dashboard widgets for services and rentals', 'This update adds new dashboard widgets for appointment services and rentals, with improved organization in the widget library. What’s included 11 new appointment service widgets covering revenue, coupon performance, staff rankings, and location-level insights. These are available...', '<p>This update adds new dashboard widgets for appointment services and rentals, with improved organization in the widget library.</p>
<h3>What’s included</h3>
<ul>
<li>11 new appointment service widgets covering revenue, coupon performance, staff rankings, and location-level insights. These are available in the dashboard and in custom reports.</li>
<li>11 new rentals widgets for tracking rental revenue, inventory status, deposit collection, and booking lifecycle (upcoming, active, overdue, and unconfirmed).</li>
<li>“Appointment Count by Service” and “Appointment Count by Service Category” are now grouped under the Services area for easier navigation.</li>
</ul>
<h3>Important change</h3>
<p>Appointment count now reflects meetings only. Previously, appointment count widgets in the Meetings module included both meeting and service bookings. Service and rental booking counts now have their own dedicated widgets under Services.</p>
<h3>How it works</h3>
<ol>
<li>If you don&#8217;t have access to Rentals or Service Calendars, reach out to our support team and we&#8217;ll enable that for you.</li>
<li>Open the sub-account Dashboard or the Custom Reports builder.</li>
<li>In the widget library, you will find all 37 widgets, including the relocated appointment count widgets under Widgets → Appointments.</li>
<li>Add service and rental widgets from the Appointments module to monitor inventory and booking health.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>See which services, staff, and rental listings drive the most revenue.</li>
<li>Track overdue, unconfirmed, and upcoming rentals in one place to reduce manual follow-up.</li>
<li>Measure coupon redemptions and revenue impact to evaluate promotions.</li>
<li>Find widgets faster with a clearer structure for Meetings, Services, and Rentals.</li>
</ul>
<h3>What’s next</h3>
<ul>
<li>More drill-down views for service and rental reporting at the location and staff level.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>All 22 new widgets are available in quick filters and custom metrics.</li>
<li>Available to sub-accounts with Calendar Appointment Services or Rentals enabled.</li>
<li>Internationalization support is included for all supported languages.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:55:54.000Z'),
('wp-1058', 'QR codes are now supported for certificates', 'Overview You can now add QR codes directly to certificates. This makes certificates easier to verify and helps people open related links with a quick scan. What’s new QR code support in the certificate builder : Add a QR code to a certificate while you’re editing it. Two QR code ...', '<p><strong>Overview</strong></p>
<p>You can now add QR codes directly to certificates. This makes certificates easier to verify and helps people open related links with a quick scan.</p>
<p><strong>What’s new</strong></p>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;