INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Deleted files and custom folders go to Trash first.</li>
<li>You can restore items for up to 60 days.</li>
<li>After 60 days, items are permanently removed.</li>
</ul>
<h3>Next improvements</h3>
<ul>
<li>Support for deleting files in system folders.</li>
<li>Optional tags for documents to make them easier to find.</li>
</ul>
<p>This update is designed to make document management simpler and faster when working with contacts.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:24:16.000Z'),
('wp-1607', 'Forms can create opportunities and related records without a contact', 'Overview Forms used to be built around a contact. To create an opportunity, a company, or a custom object record from a form, you first had to collect a name, email, or phone number. Forms can now create an opportunity on their own, without creating a contact. A single submission...', '<p><strong>Overview</strong></p>
<p>Forms used to be built around a contact. To create an opportunity, a company, or a custom object record from a form, you first had to collect a name, email, or phone number. Forms can now create an opportunity on their own, without creating a contact. A single submission can also create and link two records: Opportunity + Company, Opportunity + Custom Object, or Company + Custom Object.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Opportunity-only forms:</strong> A form with only opportunity fields creates an opportunity with no contact (for example, quote requests or project inquiry forms).</li>
<li><strong>New form combinations (no contact required):</strong> Create and link Opportunity + Company, Opportunity + Custom Object, or Company + Custom Object.</li>
<li><strong>Add Object Fields:</strong> Choose Opportunity, Company, or any custom object and add its fields. Opportunity Name is required on any form that includes opportunity fields.</li>
<li><strong>Association labels:</strong> When you add a second object, choose how the two records are linked (for example, Business, Primary Company, or Listing). Labels come from your association settings.</li>
<li><strong>Opportunity defaults:</strong> For forms with opportunity fields, set the pipeline, stage, status, and opportunity value for each submission. On submit, records are created and linked using the label you selected. Opportunities are created in the chosen stage with source set to FORM.</li>
</ul>
<p><strong>How to use</strong></p>
<ul>
<li>Go to <strong>Sites &gt; Forms</strong>, then open or create a form and remove the default contact fields.</li>
<li>Select <strong>Add Object Fields</strong>, choose <strong>Opportunity</strong> or <strong>Company</strong>, then add the fields you need.</li>
<li>To create a second record, switch the object dropdown to <strong>Company</strong> or a custom object, add its fields, select the association label when prompted, and save. Skip this step if you only need an opportunity.</li>
<li>For opportunities, open <strong>Opportunity Name</strong>, then edit the opportunity settings to set the pipeline, stage, status, and value.</li>
<li>Save and share the form. Track entries in <strong>Submissions</strong>.</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Quote, deal, partner, and property forms can create the records you actually need instead of placeholder contacts.</li>
<li>Records arrive already linked with the correct relationship label.</li>
<li>One form can replace a contact form plus manual record creation and linking.</li>
</ul>
<p><strong>Pro tips</strong></p>
<ul>
<li>Opportunity Name is required on any form that includes opportunity fields.</li>
<li>The opportunity value comes from the opportunity setup, not from the form. If you need to capture an amount from the visitor, use an opportunity custom field such as Proposal Amount.</li>
<li>Create any association labels you need in <strong>Settings &gt; Objects &gt; Associations</strong> before building the form.</li>
<li>This feature is part of the Opportunity-First private beta, and locations must be enabled for the beta.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T09:21:28.000Z'),
('wp-1606', 'Leadli Affiliate Manager: Unlimited sub-affiliate hiring depth for multi-tier campaigns', 'Affiliates can now keep recruiting sub-affiliates regardless of how many commission tiers a campaign uses. Recruiting is no longer limited by your tier depth, while commission payouts still follow your configured rules. What changed Affiliates at any level can invite or add sub-a...', '<p>Affiliates can now keep recruiting sub-affiliates regardless of how many commission tiers a campaign uses. Recruiting is no longer limited by your tier depth, while commission payouts still follow your configured rules.</p>
<h3>What changed</h3>
<ul>
<li>Affiliates at any level can invite or add sub-affiliates.</li>
<li>Commission payouts remain exactly as configured and are calculated backward from the affiliate who made the sale.</li>
<li>Example: with 2 commission tiers, the seller and the 2 affiliates directly above them are paid.</li>
<li>This works automatically with no new settings.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>No setup is required. This applies automatically to all multi-tier campaigns.</li>
<li>Any affiliate can invite or add sub-affiliates, even if they are at the last configured tier.</li>
<li>Commissions continue to follow the campaign’s tier settings, counted back from the affiliate who made the sale.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Affiliates no longer hit a recruitment limit at the last tier.</li>
<li>This supports deeper referral structures (for example, multi-level partner networks and agency reseller programs) without changing payout rules.</li>
<li>Payout costs stay predictable because commission depth is still capped by your configured tiers.</li>
</ul>
<p>For more details, refer to the Leadli help documentation in your support portal.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T09:04:20.000Z'),
('wp-1605', 'Sub-account Affiliate Manager: audit logs are now available', 'Audit Logs now includes an Affiliate Manager module, so admins can see who made changes and when. This is useful when multiple team members manage campaigns, commissions, and payouts. What’s included Campaigns: created, updated, deleted, and cloned (including tier, product, and c...', '<p>Audit Logs now includes an Affiliate Manager module, so admins can see who made changes and when. This is useful when multiple team members manage campaigns, commissions, and payouts.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Campaigns:</strong> created, updated, deleted, and cloned (including tier, product, and commission changes)</li>
<li><strong>Affiliates:</strong> created, updated, deleted, added to or removed from campaigns, marked inactive, and manual sales/leads/coupons added</li>
<li><strong>Customers:</strong> manual commissions added, deleted, disabled, or moved</li>
<li>Before and after values are recorded for every change</li>
<li>Filter logs by action and by affiliate, campaign, customer, or payout</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Settings</strong> &gt; <strong>Audit Logs</strong>.</li>
<li>Set <strong>Module</strong> to <strong>Affiliate Manager</strong>.</li>
<li>Filter by action, or search by affiliate, campaign, customer, or payout name/ID.</li>
<li>Open a log entry to see who made the change and the before/after values.</li>
</ol>
<p>Available to sub-account admins.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Clear accountability for changes to campaigns, commissions, and payouts</li>
<li>Faster investigation of commission disputes and payout mistakes</li>
<li>Better visibility for larger or compliance-focused teams</li>
</ul>
<p><strong>Help document:</strong> <a href="https://help.leadli.com/support/solutions/articles/155000009073-how-to-track-affiliate-manager-activity-with-audit-logs" rel="ugc nofollow noopener noreferrer" target="_blank">https://help.leadli.com/support/solutions/articles/155000009073-how-to-track-affiliate-manager-activity-with-audit-logs</a></p>
<p><strong>Changelog link:</strong> <a href="https://ideas.leadli.com/changelog/sub-account-affiliate-manager-audit-logs-for-affiliate-manager" rel="ugc nofollow noopener noreferrer" target="_blank">https://ideas.leadli.com/changelog/sub-account-affiliate-manager-audit-logs-for-affiliate-manager</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T09:03:15.000Z'),
('wp-1604', 'Affiliate Manager: Review and retry PayPal-denied payouts', 'Leadli Affiliate Manager now detects payouts that PayPal denies or fails. This keeps payout statuses accurate and helps you recover failed payouts without contacting support. Previously, payouts sent to PayPal could be marked as paid before confirming PayPal’s response. That mean...', '<p>Leadli Affiliate Manager now detects payouts that PayPal denies or fails. This keeps payout statuses accurate and helps you recover failed payouts without contacting support.</p>
<p>Previously, payouts sent to PayPal could be marked as paid before confirming PayPal’s response. That meant a denied payout (for example, after a risk review) could still appear as paid in Leadli.</p>
<h2>What’s new</h2>
<ul>
<li>A new <strong>Failed</strong> tab on the Payouts page to show payouts denied or failed by the payment gateway</li>
<li>A new <strong>Processing</strong> tab for payouts that are still being confirmed (shown only when there are in-progress payouts)</li>
<li>Each failed payout shows a clear status indicator along with the reason returned by PayPal</li>
<li>New admin actions on failed payouts: View Contact, View Commission(s), View Payment Status, and Retry Payment</li>
<li>Retry Payment moves the payout back to <strong>Approved for Payout</strong> so it can be paid again</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;