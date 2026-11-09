INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Enable the Association Created trigger in Labs.</li>
<li>Go to <strong>Automation</strong> &gt; <strong>Workflows</strong> and open a supported workflow.</li>
<li>Add the <strong>Association Created</strong> trigger.</li>
<li>In <strong>Association created with</strong>, choose the associated object. Use <strong>Add filters</strong> to add an <strong>Association label</strong> filter and select the label you want.</li>
<li>Save the trigger, add your actions, and publish the workflow.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Start with the right record:</strong> Choose the workflow type for the record that should enroll, then configure the associated object.</li>
<li><strong>Use labels for accuracy:</strong> Labels help you target the relationship role that matters to your process.</li>
<li><strong>Test after publishing:</strong> Create a matching association and review Enrollment history and Execution logs.</li>
</ul>
<p><strong>More details:</strong> <a href="https://help.leadli.com/support/solutions/articles/155000006491-workflow-trigger-%E2%80%93-association-created" rel="ugc nofollow noopener noreferrer" target="_blank">Support documentation</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T15:38:14.000Z'),
('wp-1614', 'Link a contact to multiple companies in Leadli', 'You can now connect one contact to multiple companies without creating duplicate records. The Primary Company link remains a system label and cannot be edited, so you can add additional company relationships using a custom association label. What changed Multiple company links: C...', '<p>You can now connect one contact to multiple companies without creating duplicate records. The Primary Company link remains a system label and cannot be edited, so you can add additional company relationships using a custom association label.</p>
<h2>What changed</h2>
<ul>
<li><strong>Multiple company links:</strong> Create a custom association label between Contacts and Companies and use it to link a contact to every company they work with.</li>
<li><strong>Add more links as needed:</strong> After the first company, you can continue linking additional companies from the contact’s associations.</li>
<li><strong>Link from either side:</strong> Link companies from a contact record, or link an existing contact from a company’s Associations tab.</li>
<li><strong>Primary Company stays in place:</strong> Default automations continue to use Primary Company, and your additional links appear alongside it.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Manage shared contacts across accounts:</strong> Keep one consultant, owner, or finance contact connected to multiple companies.</li>
<li><strong>Reduce duplicates:</strong> Maintain a person’s details in one contact record while reflecting their relationships to several companies.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Enable Association Labels and multiple company linking for contacts in Labs.</li>
<li>Go to <strong>Settings &gt; Objects &gt; Companies &gt; Associations</strong>, then create an association to <strong>Contacts</strong>. Name the labels and set the relationship to allow linking multiple companies.</li>
<li>Open a contact, choose <strong>Add</strong> next to Companies, select the company, and pick the new association label.</li>
<li>Save, then repeat for any additional companies you want to link.</li>
<li>Optionally, open a company and link an existing contact from <strong>Associations &gt; Contacts</strong>.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Primary Company cannot be edited:</strong> Use your new association label for any additional company links.</li>
<li><strong>Check relationship limits:</strong> Make sure the association settings allow the number of linked companies you need.</li>
<li><strong>Company merge fields:</strong> Merge fields that reference a company will continue to use Primary Company unless otherwise specified.</li>
</ul>
<p><strong>Learn more:</strong> See the Leadli help documentation for association labels and company linking.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T15:38:02.000Z'),
('wp-1613', 'View associated records in Contact Smart Lists', 'You can now view Custom Object and Company records linked to each Contact directly in Smart Lists. Use these relationships to filter, segment, and save audiences for follow-up. What’s included Relationship columns: Add a separate column for each association label, including multi...', '<p>You can now view Custom Object and Company records linked to each Contact directly in Smart Lists. Use these relationships to filter, segment, and save audiences for follow-up.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Relationship columns:</strong> Add a separate column for each association label, including multiple relationships to the same object.</li>
<li><strong>Linked record chips:</strong> See associated records at a glance and open a record from its chip. When there are more linked records, you’ll see a +N indicator.</li>
<li><strong>Association-based filters:</strong> Filter Contacts by linked records using options like Contains any, Does not contain any, Is empty, and Is not empty.</li>
<li><strong>Relationship-focused audiences:</strong> Save Smart Lists built around linked pets, Companies, or other records alongside your existing Contact criteria.</li>
<li><strong>Primary Company naming:</strong> The Company name column is now shown as Primary Company.</li>
</ul>
<h2>Why it matters</h2>
<p>Linked records can now be used to build more targeted segments, so outreach is more relevant and easier to repeat.</p>
<ul>
<li><strong>Pet-specific follow-up:</strong> Group Contacts linked to specific pets for reminders or updates.</li>
<li><strong>Company-focused outreach:</strong> Group Contacts linked to specific Companies under the relationship label you choose.</li>
<li><strong>Find relationship gaps:</strong> Identify Contacts missing an association (for example, no Owned Pet) so you can complete the record.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable Association Columns and Filters for Contacts in Labs.</li>
<li>Go to <strong>Contacts &gt; Smart Lists</strong>.</li>
<li>Select the columns option above the list, then choose the association labels you want under <strong>Associations</strong>, and apply.</li>
<li>Open <strong>Filters</strong>, search for <strong>Associated</strong>, then choose the relevant association field.</li>
<li>Pick the filter condition (Contains any, Does not contain any, Is empty, or Is not empty). If needed, select the linked records.</li>
<li>Apply the filters and save the criteria as a Smart List for reuse.</li>
</ol>
<h2>Tips</h2>
<ul>
<li><strong>Use the right label:</strong> Labels help distinguish different relationship types, even for the same object.</li>
<li><strong>Check for missing links:</strong> Use <em>Is empty</em> to find records that need relationships added.</li>
<li><strong>Keep naming consistent:</strong> Association headings follow your configured object names.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:54.000Z'),
('wp-1612', 'Define contact roles in companies with association labels', 'You can now label the relationship between a contact and a company so it’s clear who does what (for example: Employee, Billing contact, or Decision maker). This helps you keep responsibilities current and communicate with the right people. What’s new Custom roles for your process...', '<p>You can now label the relationship between a contact and a company so it’s clear who does what (for example: Employee, Billing contact, or Decision maker). This helps you keep responsibilities current and communicate with the right people.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Custom roles for your process:</strong> Create company–contact association labels in object settings.</li>
<li><strong>One-way or paired labels:</strong> Use the same label on both sides, or set two labels (for example: Employer and Employee). You can also set relationship limits in each direction.</li>
<li><strong>Roles on associations:</strong> Choose a label when linking records, and update labels on existing associations.</li>
<li><strong>Multiple roles for the same contact:</strong> A contact and company can be linked under more than one label.</li>
<li><strong>Email by role:</strong> Filter email recipients by association labels from within Companies. If a contact matches multiple selected labels, duplicates are removed.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Find the right stakeholder:</strong> Identify billing contacts and decision makers before reaching out.</li>
<li><strong>Send relevant updates:</strong> Target messages to the correct role instead of the entire company.</li>
<li><strong>Keep records accurate:</strong> Update labels when someone’s responsibilities change.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable <strong>Association Labels</strong> and <strong>Multiple Companies for Contacts</strong> in Labs.</li>
<li>Go to <strong>Settings &gt; Objects</strong>, then open <strong>Companies</strong> or <strong>Contacts</strong> and select <strong>Associations</strong>.</li>
<li>Create a single or paired relationship label, then configure its limits.</li>
<li>Open a record’s <strong>Associations</strong>, select the related records and label, and save.</li>
<li>Use these labels when reviewing company list columns or choosing an email audience.</li>
</ol>
<h2>Tips</h2>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;