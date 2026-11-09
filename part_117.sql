INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Connect advertising accounts</strong>
<ul>
<li>Ask AI can guide you through account connection and authorization for supported ad platforms.</li>
<li>Existing permissions, subscription rules, access controls, and compliance requirements still apply.</li>
</ul>
</li>
</ol>
<h2>User control and safeguards</h2>
<ul>
<li>Campaigns are saved as drafts by default.</li>
<li>Publishing always requires explicit approval.</li>
<li>Deleting campaigns, removing Pages, and disconnecting accounts require confirmation.</li>
<li>Meta Special Ad Category requirements are enforced.</li>
<li>Role and permission checks continue to apply.</li>
<li>Unsupported actions will direct you to the relevant Ad Manager screen.</li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Open Ask AI in Leadli</li>
<li>Describe the advertising task you want to complete</li>
<li>Provide any requested details</li>
<li>Review the generated campaign or proposed action</li>
<li>Approve to complete the action</li>
</ol>
<p><strong>Example prompts</strong></p>
<ul>
<li>“Create a Meta lead generation campaign.”</li>
<li>“Build a Google Search campaign for my website.”</li>
<li>“Show my active campaigns.”</li>
<li>“How can I improve this campaign?”</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Launch campaigns faster with AI-guided setup</li>
<li>Manage campaigns, audiences, and reporting from one conversation</li>
<li>Reduce manual navigation in Ad Manager</li>
<li>Stay in control with draft-first creation and approval-based publishing</li>
<li>Simplify advertising workflows for agencies and businesses</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Supports Meta Ads and Google Ads</li>
<li>Campaigns are created as drafts and require approval before publishing</li>
<li>Publishing, deleting, and disconnecting always require confirmation</li>
<li>Existing Ad Manager permissions and platform compliance rules continue to apply</li>
<li>LinkedIn Ads, Workflows, Templates, and Snapshots are not included in this release</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1285', 'Abandoned checkouts updates: export, filters, and notifications', 'Summary Leadli has updated the Abandoned Checkouts page to make it easier to find, manage, and export checkout recovery details. What changed Export CSV : Select one or more records on the current page and export customer, cart, product, activity, and recovery details. Search and...', '<h2>Summary</h2>
<p>Leadli has updated the Abandoned Checkouts page to make it easier to find, manage, and export checkout recovery details.</p>
<h2>What changed</h2>
<ul>
<li><strong>Export CSV</strong>: Select one or more records on the current page and export customer, cart, product, activity, and recovery details.</li>
<li><strong>Search and filters</strong>: Search by customer name or email. Filter by Email Status, Recovery Status, or Date Range.</li>
<li><strong>Notification settings</strong>: Open Abandoned Cart Notification Settings from the page.</li>
<li><strong>General improvements</strong>: Updated empty states, loading states, pagination, and responsive layout.</li>
<li><strong>Recovery link</strong>: Open a checkout to copy and share the checkout URL with the customer.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to Payments &gt; Orders &gt; Abandoned Checkouts.</li>
<li>Search or filter the records you need.</li>
<li>Select checkouts and click Export CSV.</li>
<li>Use Notification settings to manage abandoned cart notifications.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Export is available after you select at least one record.</li>
<li>Select All applies to the current page.</li>
<li>Exports over 5,000 records are delivered by email.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1284', 'Multi-role signing for Documents and Contracts templates in Workflows', 'You can now add multiple signer roles to your Documents and Contracts templates, such as buyer, seller, witness, or any custom role you define. When you send a document through a Workflow, each role is automatically populated and routed for signature, which reduces manual entry. ...', '<p>You can now add multiple signer roles to your Documents and Contracts templates, such as buyer, seller, witness, or any custom role you define.</p>
<p>When you send a document through a Workflow, each role is automatically populated and routed for signature, which reduces manual entry.</p>
<h3>The problem this solves</h3>
<p>Many agreements require more than one signature (for example, a client and a co-signer). Previously, templates supported only one signer, which meant you had to manually add additional people each time or maintain separate templates.</p>
<h3>How it works</h3>
<ul>
<li>Define up to 6 signer roles on a template.</li>
<li>Assign fields (signature, date, and other fillable elements) to each role.</li>
<li>When the template is sent from a Workflow, Leadli uses the roles you configured.</li>
<li>If details are missing, you can fill them in or override a role’s name, email, or phone at the Workflow step.</li>
</ul>
<h3>Benefits</h3>
<ul>
<li>Save time by avoiding repeated manual entry.</li>
<li>Reduce errors with consistent role-based field population.</li>
<li>Stay flexible by overriding signer details when needed.</li>
<li>Support more complex agreements that require multiple parties.</li>
</ul>
<h3>Getting started</h3>
<ol>
<li><strong>Build your template:</strong> Open your Proposal/Estimate template, add signer roles (name, email, phone), and assign at least one fillable element to each role.</li>
<li><strong>Assign a Contact field:</strong> Ensure at least one fillable element is assigned to “Contact” (required for the Workflow send action).</li>
<li><strong>Select the template in a Workflow:</strong> Add the “Send Document” action and choose your multi-role template so roles can populate.</li>
<li><strong>Override if needed:</strong> Adjust any role’s details at the Workflow level; these values take precedence over template defaults.</li>
<li><strong>Send:</strong> Start the Workflow to route the document for signature.</li>
</ol>
<h3>Notes</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;