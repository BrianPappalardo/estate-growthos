INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>More detail for skipped or failed runs</li>
<li>Advanced scheduling controls on mobile</li>
<li>Improved navigation for accounts with many scheduled tasks</li>
</ul>
<h3>Release and availability</h3>
<ul>
<li>Release date: August 2026</li>
<li>Available in version 4.20.0 or higher</li>
<li>Status: Production</li>
<li>Platforms: iOS and Android</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T14:44:03.000Z'),
('wp-1347', 'Custom field grouping and bulk management for forms, surveys, and quizzes', 'Building long forms can get slow when you have to add custom fields one at a time. Leadli now includes a faster way to browse, select, and add multiple custom fields in Forms, Surveys, and Quizzes. What changed The Custom Fields sidebar is reorganized to make fields easier to fin...', '<p>Building long forms can get slow when you have to add custom fields one at a time. Leadli now includes a faster way to browse, select, and add multiple custom fields in Forms, Surveys, and Quizzes.</p>
<h3>What changed</h3>
<ul>
<li>The Custom Fields sidebar is reorganized to make fields easier to find.</li>
<li>You can search for fields by name and filter by object type (Contact, Opportunity, Business, or your custom objects).</li>
<li>You can select multiple fields and add them to the canvas in one step.</li>
</ul>
<h3>Highlights</h3>
<ul>
<li>Multi-select checkboxes for quick batch selection.</li>
<li>A single action to add all selected fields to the canvas.</li>
<li>Bulk-added fields insert after the currently active element when possible, instead of always going to the end.</li>
<li>Selections are cleared automatically when you switch the object dropdown to avoid accidental carryover.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a Form, Survey, or Quiz in the builder.</li>
<li>Go to the Add Object Fields tab in the left sidebar.</li>
<li>Choose the object you want (Contact, Opportunity, Business, or a custom object).</li>
<li>Search or browse to find the fields you need.</li>
<li>Select the fields and add them to the canvas as a group.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Existing Forms, Surveys, and Quizzes continue to work as they do today.</li>
<li>Bulk-added fields follow the same validation rules as adding fields individually.</li>
<li>If you use one-question-per-slide for surveys, bulk-added fields will be split into separate slides when needed.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T14:10:04.000Z'),
('wp-1346', 'Upload Google Demand Gen campaigns to the Template Library', 'You can now upload Google Demand Gen campaigns directly to the Template Library from Ad Manager. This helps you turn existing Demand Gen campaigns into reusable templates, so you can replicate campaign setups across locations without rebuilding them from scratch. What’s new You c...', '<p>You can now upload Google Demand Gen campaigns directly to the Template Library from Ad Manager.</p>
<p>This helps you turn existing Demand Gen campaigns into reusable templates, so you can replicate campaign setups across locations without rebuilding them from scratch.</p>
<h2>What’s new</h2>
<ul>
<li>You can upload Google Demand Gen campaigns to the Template Library.</li>
<li>You can start an upload from the campaign menu (ellipsis/three-dot menu).</li>
<li>Uploaded campaigns are saved as draft templates first.</li>
<li>You can review, edit, and publish templates for future reuse.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Ad Manager &gt; Campaigns</strong>.</li>
<li>Find the Google Demand Gen campaign you want to reuse.</li>
<li>Open the campaign menu (ellipsis/three-dot menu).</li>
<li>Select <strong>Upload to Template Library</strong>.</li>
<li>Add a template name and category.</li>
<li>Upload the campaign.</li>
<li>Review the draft template and publish it when you are ready.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reuse proven Demand Gen campaign setups.</li>
<li>Reduce repetitive campaign configuration.</li>
<li>Standardize campaigns across multiple locations.</li>
<li>Use the same Template Library workflow for Google Demand Gen campaigns.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Uploaded campaigns are created as draft templates before publishing.</li>
<li>Existing Template Library workflows remain unchanged.</li>
<li>This release adds Template Library upload support for Google Demand Gen campaigns.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T13:53:48.000Z'),
('wp-1345', 'Communities: Editor and Community Experience Improvements', 'We have made several updates to help you create posts faster, moderate your community more efficiently, and participate in discussions with fewer clicks. Rich text formatting toolbar You can now format text more quickly while writing a post. Select text to open a floating toolbar...', '<p>We have made several updates to help you create posts faster, moderate your community more efficiently, and participate in discussions with fewer clicks.</p>
<p><strong>Rich text formatting toolbar</strong></p>
<p>You can now format text more quickly while writing a post. Select text to open a floating toolbar with options such as bold, italic, underline, strikethrough, and link insertion.</p>
<p><strong>Ban spammers from a post</strong></p>
<p>Moderation is now available directly from the post menu. Use the three-dot menu (⋮) on a user’s post and choose Ban User. You can also choose to delete the user’s content before confirming.</p>
<p><strong>Download recordings from a post</strong></p>
<p>If a post includes a recording, you can download it from the same three-dot menu (⋮) by selecting Download Recording.</p>
<p><strong>Improvements and fixes</strong></p>
<p>The comment editor now uses more familiar keyboard shortcuts: Enter starts a new paragraph, Shift + Enter adds a line break, and Ctrl + Enter (or the Post button) publishes the comment.</p>
<p><strong>Why this matters</strong></p>
<p>These changes make it easier to create better-formatted posts, keep your community clean, and manage recordings and comments without leaving the feed.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-18T13:42:16.000Z'),
('wp-1344', 'Update Contact Field: Add values without overwriting', 'What’s new The Update Contact Field action now includes an Add option for multi-select fields. This lets you add new selections to multi-dropdown and multiple-checkbox fields without replacing values already saved on the contact. How it works Select Add to append the selected val...', '<p><strong>What’s new</strong></p>
<p>The Update Contact Field action now includes an <strong>Add</strong> option for multi-select fields. This lets you add new selections to multi-dropdown and multiple-checkbox fields without replacing values already saved on the contact.</p>
<p><strong>How it works</strong></p>
<p>Select <strong>Add</strong> to append the selected value(s) to the contact’s existing selections. When <strong>Add</strong> is selected, the field picker only shows multi-dropdown and multiple-checkbox fields.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add the Update Contact Field action to your workflow.</li>
<li>Select <strong>Add</strong> as the action type and choose a multi-select field.</li>
<li>Select the value(s) you want to add to the contact’s existing selections.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, updating a multi-select field replaced all existing selections, which could remove saved values. The new <strong>Add</strong> option makes it easier to build on existing contact data without overwriting it.</p>
<p><strong>Example</strong></p>
<p>A contact selects “Email Marketing” on a form, which is saved in a multiple-checkbox field called ‘Services Interested In’. Later in the workflow, you can add “SMS Marketing” to that same field while keeping “Email Marketing” selected.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;