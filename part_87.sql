INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>What’s next</h2>
<p>More cross-channel reporting that combines Google Ads with other marketing sources is on the roadmap.</p>
<h2>Notes</h2>
<ol>
<li>Google Ads must be connected at the sub-account level before widgets will show data (Settings → Integrations → Google Ads).</li>
<li>All 11 widgets support filtering by Campaign, Campaign type, Zero impressions, Zero conversions, and PPC markup.</li>
<li>Available in Dashboards, Reporting, and Custom Metrics.</li>
<li>Available on all plans that include Dashboards and Reporting.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1186', 'Xero sync: more control over which contacts sync', 'Sync only the contacts you want, and send them to the right place. Connecting Xero to Leadli now gives you control over which contacts sync in and where they are created. This helps prevent vendors and suppliers from cluttering your CRM. The problem Previously, when you connected...', '<p><em>Sync only the contacts you want, and send them to the right place.</em></p>
<p>Connecting Xero to Leadli now gives you control over which contacts sync in and where they are created. This helps prevent vendors and suppliers from cluttering your CRM.</p>
<p><strong>The problem</strong></p>
<p>Previously, when you connected Xero, every active contact synced automatically with no filtering. Vendors, suppliers, and other contacts you may not need could flood your Leadli contact list. Suppliers (people you pay) could also end up mixed in with customers and leads, making the CRM harder to trust and use.</p>
<p><strong>What’s new</strong></p>
<p>There are now two settings on your Xero connection screen that let you control your contact sync:</p>
<ul>
<li>Choose which contacts come into Leadli.</li>
<li>Choose how suppliers are handled: keep them with contacts, or separate them as business records.</li>
</ul>
<p>Your existing setup does not change unless you opt in.</p>
<p><strong>How this helps</strong></p>
<ul>
<li><strong>Keep your CRM clean</strong>: Sync only the contacts you need (customers, suppliers, specific groups, or all contacts).</li>
<li><strong>Separate suppliers from leads</strong>: Route suppliers to business records instead of mixing them into your contact list.</li>
<li><strong>Work with more reliable data</strong>: Cleaner records make segmentation and outreach easier.</li>
<li><strong>No disruption</strong>: Settings default to the previous behavior until you change them.</li>
</ul>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to Payments &gt; Invoices &amp; Estimates &gt; Accounting Sync.</li>
<li>Click <strong>Manage</strong> on your connected Xero account.</li>
<li>Set <strong>Which contacts to sync</strong>: All Contacts, Only Customers, Only Suppliers, or specific Xero contact groups.</li>
<li>Set <strong>How suppliers are handled</strong>: All to Contacts (default) or Split by type (routes suppliers to business records).</li>
<li>Save your preferences. Your next sync will use the new settings.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li>Available on web only.</li>
<li>Applies to Xero only; QuickBooks and Wave contact sync settings are not configurable yet.</li>
<li>Both settings default to the previous behavior until you opt in.</li>
<li>Split by type routes suppliers to business records, not the standard contact list.</li>
<li>Contact group filtering requires Xero contact groups to be set up in Xero first.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1185', 'Opportunity owners and followers can be used in If/Else conditions', 'Update You can now use Opportunity Owners and Opportunity Followers as conditions in If/Else workflow branches. This lets you route contacts based on whether an opportunity has assigned owners or followers. How it works When an If/Else step evaluates an opportunity, it can check ...', '<p><strong>Update</strong></p>
<p>You can now use Opportunity Owners and Opportunity Followers as conditions in If/Else workflow branches. This lets you route contacts based on whether an opportunity has assigned owners or followers.</p>
<p><strong>How it works</strong></p>
<p>When an If/Else step evaluates an opportunity, it can check the Opportunity Owners and Opportunity Followers fields. The workflow routes contacts down the branch that matches the condition you set.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add or edit an If/Else action in your workflow.</li>
<li>Select Opportunity Owners or Opportunity Followers as the condition field.</li>
<li>Configure your condition and save the workflow.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>Teams often assign owners and followers to opportunities as part of sales and account management. Workflows can now branch based on those assignments, making it easier to automate routing, notifications, and follow-up actions.</p>
<p><strong>Example</strong></p>
<ul>
<li>Route opportunities to a follow-up sequence when an Opportunity Owner has been assigned.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Available in If/Else workflow conditions.</li>
<li>Supports both Opportunity Owners and Opportunity Followers fields.</li>
<li>Conditions are evaluated using the owners and followers assigned to the opportunity when the workflow reaches the If/Else step.</li>
<li>Existing workflows are unchanged unless you add these conditions.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1184', 'Improved validation and error handling for Meta ad campaigns', 'What''s new We''ve improved the campaign publishing experience for Meta campaigns in Ad Manager by adding better validation and clearer error handling before a campaign is published. When users click Publish , Ad Manager now checks for key campaign setup issues and highlights error...', '<h2>What&#8217;s new</h2>
<p>We&#8217;ve improved the campaign publishing experience for <strong>Meta campaigns</strong> in Ad Manager by adding better validation and clearer error handling before a campaign is published.</p>
<p>When users click <strong>Publish</strong>, Ad Manager now checks for key campaign setup issues and highlights errors that must be fixed before the campaign can be submitted. This helps teams catch missing or incorrect details earlier and reduces failed publishes.</p>
<h2>How it works</h2>
<ul>
<li>When a user clicks <strong>Publish</strong>, a validation check runs before the campaign is submitted.</li>
<li>If required information is missing or incorrect, the user will see an error indicator in the campaign builder.</li>
<li>Clicking the error helps the user navigate to the relevant section or field that needs attention.</li>
<li>Errors are shown with clearer messages so users understand what needs to be fixed.</li>
<li>Campaigns with blocking errors will not be submitted until the issues are resolved.</li>
<li>A publishing progress modal is shown while the campaign setup is being processed.</li>
<li>Users can continue publishing in the background while the campaign is being processed.</li>
<li>Success and failure messages have been improved to clearly communicate the final publishing status.</li>
</ul>
<h2>Why it matters</h2>
<p>This update helps users avoid failed campaign submissions by catching important setup issues before the campaign is sent for review. It makes the publishing flow more reliable by:</p>
<ul>
<li>Helping users fix errors before publishing</li>
<li>Reducing confusion around failed or incomplete campaign setup</li>
<li>Making error messages easier to understand</li>
<li>Preventing campaigns from moving forward with missing or invalid details</li>
<li>Improving confidence when publishing Meta campaigns</li>
</ul>
<h2>Notes</h2>
<ol>
<li>This enhancement is currently available for Meta campaigns only.</li>
<li>Google and LinkedIn campaign validation improvements are planned for a future release.</li>
<li>Users may still see platform-level review outcomes from Meta after successful submission, as Meta continues to review campaigns for policy compliance.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1183', 'Workflow Builder: Quick access sidebar toggle in Leadli', 'Summary Leadli now includes a sidebar toggle in the Workflow Builder. This lets you open the common Leadli navigation sidebar from inside a workflow so you can move to other areas of the platform without leaving the builder. How it works Use the toggle in the top-left corner of t...', '<p><strong>Summary</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;