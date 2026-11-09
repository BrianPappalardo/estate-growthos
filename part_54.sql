INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Open it in the workflow builder, run a final test, then publish.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Manual editing is not available inside Ask AI. Use the workflow builder for manual changes.</li>
<li>Publishing still happens in the workflow builder after testing.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-09-17T13:27:33.000Z'),
('wp-1425', 'Send bulk emails to associated contacts from Companies and Custom Objects', 'You can now send bulk emails to associated contacts directly from Company and Custom Object lists in Leadli. What this update adds A new Send email bulk action for Companies and Custom Objects that are associated with Contacts For Custom Objects, you can choose one or more associ...', '<p>You can now send bulk emails to associated contacts directly from Company and Custom Object lists in Leadli.</p>
<h2>What this update adds</h2>
<ul>
<li>A new <strong>Send email</strong> bulk action for Companies and Custom Objects that are associated with Contacts</li>
<li>For Custom Objects, you can choose one or more association labels to decide who should receive the email</li>
<li>You can send to the most recently associated contact, the earliest associated contact, or all associated contacts</li>
<li>You can use Contact, Company, and Custom Object fields as merge fields in the email</li>
<li>You can write the email with Quick Compose, Smart Builder, or a saved template</li>
<li>You can send immediately, schedule it, or use batch mode</li>
<li>You can track delivery and engagement in Bulk Actions and in Marketing → Emails → Bulk Action Campaigns</li>
<li>Contacts that match multiple selected association labels are deduplicated before sending</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Companies or a supported Custom Object.</li>
<li>Select the records you want to send from.</li>
<li>Click <strong>Send email</strong>.</li>
<li>If you are using a Custom Object, choose the association label(s).</li>
<li>Choose which associated contacts should receive the email.</li>
<li>Write and personalize the email.</li>
<li>Send now, schedule it, or use batch mode.</li>
</ol>
<h2>Why it matters</h2>
<p>Smart Lists already let you segment using Company and Custom Object data. This update lets you start an email campaign directly from those segments without rebuilding the audience from the Contacts list.</p>
<h2>Examples</h2>
<ul>
<li>Filter Properties by city, price, type, or status and email the associated buyers.</li>
<li>Filter Policies by renewal date and email the associated policy holders.</li>
<li>Filter Companies by industry, lifecycle stage, tier, or owner and run a targeted B2B campaign.</li>
<li>Filter Memberships or Subscriptions by expiry date and email the associated members.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This action is available for Custom Objects that have an association with Contacts.</li>
<li>For Companies, the Contact association is selected automatically.</li>
<li>Email permissions, consent requirements, and deliverability rules still apply.</li>
<li>The final recipient list is resolved when the bulk action runs.</li>
</ul>
<p>Learn more: <a href="https://help.Leadli.com/en/support/solutions/articles/155000008744-send-bulk-email-to-associated-contacts-from-companies-and-custom-objects" rel="ugc nofollow noopener noreferrer" target="_blank">Help article</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-17T12:48:34.000Z'),
('wp-1424', 'New custom field options in Leadli', 'Overview Leadli now includes more custom field types and configuration options so you can capture and manage information in a more structured way. What’s new 1) URL fields with domain controls Create URL fields for website links, profile URLs, or other web addresses. You can choo...', '<h2>Overview</h2>
<p>Leadli now includes more custom field types and configuration options so you can capture and manage information in a more structured way.</p>
<h2>What’s new</h2>
<h3>1) URL fields with domain controls</h3>
<p>Create URL fields for website links, profile URLs, or other web addresses. You can choose to allow all domains, allow only specific domains, or block specific domains to help keep inputs consistent.</p>
<h3>2) Flexible date and time fields</h3>
<p>Choose between date and time, date-only, or time-only fields. You can also restrict selectable dates to future dates only, past dates only, or a specific date range.</p>
<h3>3) User selection fields</h3>
<p>Select one or multiple users in a custom field to associate the right team members with a record. Users added through this field receive follower-level access.</p>
<h3>4) Radio button options with images or icons</h3>
<p>Radio button fields can include an image or icon for each option to make choices easier to recognize.</p>
<h3>5) Checkbox options with images</h3>
<p>Checkbox fields can also include images per option, which is helpful for visual categories such as products or designs.</p>
<h3>6) Rich text fields</h3>
<p>Rich text fields support formatting such as bold, italics, headings, and lists to make longer notes easier to read.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-09-16T09:35:29.000Z'),
('wp-1419', 'Workflow publishing now blocks publish when errors are found', 'Leadli now prevents publishing a workflow if it has unresolved configuration issues. When you try to publish, you will see a clear list of what needs to be fixed so broken workflows do not go live. What changed One list for all errors: Frontend and backend validation messages are...', '<p>Leadli now prevents publishing a workflow if it has unresolved configuration issues. When you try to publish, you will see a clear list of what needs to be fixed so broken workflows do not go live.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>One list for all errors:</strong> Frontend and backend validation messages are shown together in a single sidebar.</li>
<li><strong>Saving still works:</strong> Auto-save and manual save work even if there are validation errors, so you can keep progress and fix issues later.</li>
<li><strong>Publish requires a clean workflow:</strong> If errors remain, publishing is blocked and you will be prompted to review and resolve them.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Click <strong>Publish</strong> on your workflow.</li>
<li>If issues exist, review the list of errors.</li>
<li>Open each issue to jump to the related step and fix it.</li>
<li>After all issues are resolved, publish again.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>This helps ensure only working workflows are published, reduces guesswork about what is misconfigured, and makes publishing more predictable.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-11T12:41:54.000Z'),
('wp-1418', 'Manually retry failed subscription payments in Leadli', 'You can now manually retry failed subscription payments from the Subscription Details page when using NMI, Authorize.Net, Square, or Mercado Pago. This helps you recover subscription revenue after automatic retries are used up or not available. You can also update the card on the...', '<p>You can now manually retry failed subscription payments from the Subscription Details page when using NMI, Authorize.Net, Square, or Mercado Pago.</p>
<p>This helps you recover subscription revenue after automatic retries are used up or not available. You can also update the card on the subscription and collect payment using a new payment method.</p>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Payments &gt; Subscriptions</strong>.</li>
<li>Open a subscription with an <strong>Unpaid</strong> or <strong>Past due</strong> payment status.</li>
<li>When automatic retries are exhausted, retry the oldest unpaid payment using a saved card or a newly added card.</li>
<li>(Optional) Set the selected card as the subscription’s default payment method.</li>
</ol>
<h2>Retry rules</h2>
<ul>
<li>You can attempt a retry up to <strong>three times</strong> with the same card.</li>
<li>After three unsuccessful attempts, a <strong>24-hour</strong> cool-down applies before that card can be retried.</li>
<li>Warnings will indicate when another retry is not yet available.</li>
</ul>
<h2>Help article</h2>
<p><a href="https://help.leadconnectorhq.com/support/solutions/articles/155000008665-how-to-manually-retry-a-failed-subscription-payment" target="_blank" rel="ugc nofollow noopener noreferrer">How to manually retry a failed subscription payment</a></p>
<h2>Why it matters</h2>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;