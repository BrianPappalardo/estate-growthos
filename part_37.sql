INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Post Type:</strong> Apply rules to Carousels, Posts, Reels, Shorts, and Stories.</li>
</ul>
<p><strong>Target specific accounts and tags</strong></p>
<p>Make workflows more precise by filtering for connected Social Planner accounts and existing post tags. This is helpful when managing multiple brands or clients with different publishing requirements.</p>
<p><strong>How to use</strong></p>
<ul>
<li>Go to Automation → Workflows.</li>
<li>Create a new workflow or open an existing one.</li>
<li>Add the Social Planner Posts trigger.</li>
<li>Configure your filters (category, platform, post status, post type, social account, and tags).</li>
<li>Add the actions you want (for example, internal notifications or follow-up steps).</li>
<li>Save and publish the workflow.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Social publishing often requires approvals, monitoring, and quick response when posts fail. This trigger helps you:</p>
<ul>
<li>Reduce manual monitoring by automating actions around post statuses.</li>
<li>Resolve issues faster with alerts for failed posts.</li>
<li>Simplify approvals with automation when posts are submitted, approved, or rejected.</li>
<li>Keep stakeholders informed about publishing activity.</li>
<li>Scale consistent processes across platforms and accounts.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Only social accounts connected through Social Planner are supported.</li>
<li>Social accounts connected through Integrations are not supported yet; support is in progress.</li>
<li>Workflows trigger based on the filters you configure and the Social Planner post conditions that are met.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-25T03:31:26.000Z'),
('wp-1580', 'Attach forms when creating service or rental bookings in the app', 'Overview You can now attach a form to service and rental bookings you create in the app, not just bookings made from the booking page. When you create a booking from the appointment modal, you can open the form and complete it on the customer’s behalf so your intake information s...', '<h2>Overview</h2>
<p>You can now attach a form to service and rental bookings you create in the app, not just bookings made from the booking page. When you create a booking from the appointment modal, you can open the form and complete it on the customer’s behalf so your intake information stays consistent.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Attach a form in the appointment modal:</strong> Service and rental bookings now include a Booking form section. Select Attach form to open the form within the booking flow. This is optional, and you can still create bookings without a form.</li>
<li><strong>Form preselection:</strong> If you have a configured form, it will be preselected. You can switch to any available form from the dropdown.</li>
<li><strong>Prefilled contact details:</strong> First name, last name, email, and phone are prefilled based on the contact you select.</li>
<li><strong>Cleaner in-app form filling:</strong> CAPTCHA, product selling, and payment elements are not shown when completing a form from the appointment modal.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Create a service or rental booking from the in-app appointment modal and select the contact.</li>
<li>In the <strong>Booking form</strong> section, select <strong>Attach form</strong>.</li>
<li>Complete the form on the customer’s behalf and create the booking.</li>
<li>Open the appointment details at any time to view the submitted form.</li>
</ol>
<p><strong>Note:</strong> Forms can only be attached while creating the booking right now and can’t be added or edited later.</p>
<h2>Why this matters</h2>
<ul>
<li>Bookings created manually can capture the same intake details as online bookings.</li>
<li>Important information is collected up front and stored with the booking.</li>
<li>Prefilled contact details save time and help reduce mismatches.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-22T08:52:56.000Z'),
('wp-1579', 'Filter HubSpot records before importing into Leadli', 'Overview You can now choose exactly which HubSpot records are imported into Leadli. During the preview step, you can filter Contacts, Deals, Companies, and Tasks based on when they were created or last modified in HubSpot. This helps you import only the data you need. What’s incl...', '<h2>Overview</h2>
<p>You can now choose exactly which HubSpot records are imported into Leadli. During the preview step, you can filter Contacts, Deals, Companies, and Tasks based on when they were created or last modified in HubSpot. This helps you import only the data you need.</p>
<h2>What’s included</h2>
<ul>
<li>Filter each object (Contacts, Deals, Companies, Tasks) separately during preview before you import</li>
<li>Filter by HubSpot Created Date or HubSpot Last Modified Date</li>
<li>Use relative ranges (for example, last 6 months or this quarter) or specific dates (on, before, after, between)</li>
<li>Review the exact date range before applying a filter</li>
<li>Combine conditions using AND / OR</li>
<li>Apply the same filters to all selected objects</li>
<li>See record counts update immediately so you know what will be imported</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to Contacts, Companies, or Opportunities.</li>
<li>Select <strong>Import</strong> and choose <strong>Import from HubSpot</strong>.</li>
<li>Continue to the preview step.</li>
<li>Edit the filter settings for an object (for example, Contacts).</li>
<li>Choose a field, condition, and value. Add nested filters if you need AND/OR logic.</li>
<li>Apply the filters and review the updated record counts.</li>
<li>Confirm to start the import.</li>
</ol>
<h2>Benefits</h2>
<ul>
<li>Import only recent or active records</li>
<li>Reduce import size to make review faster and easier</li>
<li>Limit unwanted records that would need cleanup later</li>
<li>Know how many records will be imported before you start</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Filters are optional. Leave them empty to import everything.</li>
<li>&quot;In the last&quot; excludes today.</li>
<li>Filters currently support HubSpot Created Date and HubSpot Last Modified Date.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-22T07:49:58.000Z'),
('wp-1578', 'New templates are now available in Leadli', 'We’ve added new templates in Leadli to help you build websites, funnels, email campaigns, surveys, social posts, and ads faster. All templates are customizable and ready to use. What’s new Website templates (1) Beauty & Fashion (1) Email templates (1) Other (1) Survey templates (...', '<p>We’ve added new templates in Leadli to help you build websites, funnels, email campaigns, surveys, social posts, and ads faster. All templates are customizable and ready to use.</p>
<h3>What’s new</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Beauty &amp; Fashion (1)</li>
</ul>
<h4>Email templates (1)</h4>
<ul>
<li>Other (1)</li>
</ul>
<h4>Survey templates (1)</h4>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;