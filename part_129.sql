INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Social templates:</strong> 4 (Home Services: 2, Health &amp; Wellness: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 (Restaurant and Bar: Bakery; Legal: Mediation and Arbitration Services; Creative: Jewelry Designer; Health &amp; Wellness: Wellness Coaching; Medical: Compound Pharmacy)</li>
<li><strong>Google ad templates:</strong> 5 (Beauty &amp; Fashion: Spa Services; Automotive: Vehicle Sales; Travel &amp; Hospitality: Hospitality Services; Restaurant &amp; Bar: Fine Dining Steakhouse; Real Estate: Architectural Design Firm)</li>
<li><strong>LinkedIn ad templates:</strong> 5 (Finance: Tax Specialist; Insurance: Commercial Insurance; Marketing Agency: PPC Management; Business Coaching &amp; Consulting: Real Estate Consulting; Marketing Agency: SEO Services)</li>
<li><strong>Snapshot:</strong> 1 (Legal: Mediation Services)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:14:14.000Z'),
('wp-1099', 'Company Smart Lists', 'You can now create Company Smart Lists to save a custom company view with your preferred filters, sorting, and visible fields. You can reopen the list at any time without setting it up again. What’s included Create Company Smart Lists in Companies Save advanced filters, sort orde...', '<p>You can now create Company Smart Lists to save a custom company view with your preferred filters, sorting, and visible fields. You can reopen the list at any time without setting it up again.</p>
<h2>What’s included</h2>
<ul>
<li>Create Company Smart Lists in Companies</li>
<li>Save advanced filters, sort order, and visible fields</li>
<li>Duplicate an existing Smart List</li>
<li>Export Smart List results to CSV</li>
<li>Share Smart Lists with all users or selected users</li>
<li>Choose view access or edit access for shared users</li>
<li>Copy and share a direct link to a Smart List</li>
<li>Update an existing Smart List or save as a new one</li>
<li>Use the Smart Lists management page to review all lists</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Turn on Company Smart Lists in Labs</li>
<li>Go to Contacts → Companies</li>
<li>Select + List</li>
<li>Set the filters, sorting, and fields you want</li>
<li>Name the list and save it</li>
<li>Reopen the list to edit, share, export, or duplicate it</li>
<li>Use the list settings to manage sharing, permissions, exports, duplicates, or deletion</li>
</ol>
<h2>Why this is useful</h2>
<ul>
<li>Reduces repetitive setup for teams working with Companies</li>
<li>Makes it easier to return to the same views you use most</li>
<li>Helps standardize company lists across users</li>
<li>Makes sharing filtered lists simpler</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This feature is currently available in Labs</li>
<li>Users with edit access can change sharing permissions</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:13:36.000Z'),
('wp-1098', 'Improved handling for inactive or unverified campaign domains', 'Email delivery is now better protected when a domain mapped in your Campaign Domain settings becomes inactive or unverified. Previously, emails could continue attempting to send after a mapped domain became inactive. With this update, email delivery is automatically prevented in ...', '<p>Email delivery is now better protected when a domain mapped in your Campaign Domain settings becomes inactive or unverified.</p>
<p>Previously, emails could continue attempting to send after a mapped domain became inactive. With this update, email delivery is automatically prevented in those cases, and a clear failure message is shown in Conversations.</p>
<h3>What’s new</h3>
<ul>
<li>Emails are automatically stopped if the mapped Campaign Domain becomes inactive or unverified.</li>
<li>Failed email attempts display a clear error message in Conversations.</li>
<li>Improved visibility into email delivery issues caused by domain verification status changes.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Helps prevent failed or unauthorized email delivery attempts from inactive domains.</li>
<li>Makes it immediately clear why an email failed.</li>
<li>Improves troubleshooting by surfacing domain verification issues directly in Conversations.</li>
<li>Enhances email reliability and domain compliance handling.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>If a Campaign Domain status changes from <strong>Active</strong> to <strong>Inactive</strong> or <strong>Unverified</strong>, sending automatically stops for emails using that domain.</li>
<li>The email activity is marked as failed.</li>
<li>A message in Conversations explains that the email failed because the domain is not verified.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:13:19.000Z'),
('wp-1097', 'Client Portal domain settings are now managed in Dedicated Domain Setup', 'Client Portal email domain management is now simpler. Client Portal domain settings have moved from Notifications Domain Configuration to the main Domain Configuration page under Dedicated Domain Setup . Client Portal emails can still be viewed in Conversations, and domain manage...', '<p>Client Portal email domain management is now simpler. Client Portal domain settings have moved from <strong>Notifications Domain Configuration</strong> to the main <strong>Domain Configuration</strong> page under <strong>Dedicated Domain Setup</strong>.</p>
<p>Client Portal emails can still be viewed in Conversations, and domain management is now more centralized.</p>
<h3>What’s changed</h3>
<ul>
<li>Client Portal domain configuration has moved from Notifications Domain Configuration to Domain Configuration.</li>
<li>Client Portal emails can be viewed directly within Conversations.</li>
<li>Email domain types are managed in one place.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Email Services</strong>.</li>
<li>Open <strong>Dedicated Domain Setup</strong>.</li>
<li>Go to <strong>Domain Configuration</strong>.</li>
<li>Configure the <strong>Client Portal</strong> domain.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:11:51.000Z'),
('wp-1096', 'Use associated company fields in the custom value picker', 'The Company object is now more useful. You can reference Company fields (standard and custom) across the platform as custom values in emails, workflows, contracts, conversations, and AI context. This lets you use the business details stored on Company records for more accurate pe...', '<p>The Company object is now more useful. You can reference Company fields (standard and custom) across the platform as custom values in emails, workflows, contracts, conversations, and AI context. This lets you use the business details stored on Company records for more accurate personalization and automation.</p>
<h2>What’s new</h2>
<ul>
<li>Company fields are available in the Custom Value Picker, including standard fields and custom Company fields.</li>
<li>These values can be used in Workflows, Email Builder, Email Campaigns, Conversations, Documents and Contracts, Bulk Actions, and Conversation AI.</li>
<li>Each custom value uses the Company associated with the Contact at runtime.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Personalization: reference company name, industry, account tier, or other attributes in messages.</li>
<li>Documents: auto-fill proposals and agreements using Company context.</li>
<li>AI replies: Conversation AI can use Company information in responses.</li>
<li>Automation: use Company data in workflows without workarounds.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open a supported tool (for example, Conversations or a Workflow “Send Email” action).</li>
<li>Open the Custom Value Picker in the editor toolbar.</li>
<li>Select the Company group.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;