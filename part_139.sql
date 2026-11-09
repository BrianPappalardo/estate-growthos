INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Open <strong>+ Add Schema</strong> or <strong>Edit Schema Markup</strong>.</li>
<li>Select a schema type from the dropdown.</li>
<li>Enter your details or paste JSON-LD, then select <strong>Validate &amp; Save</strong>.</li>
</ol>
<p>Existing schema markups are not affected. The new types are available as additional options in the type dropdown.</p>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:04:43.000Z'),
('wp-1044', 'Visual edits are now available in Leadli AI Studio', 'Summary Visual Edits is an in-canvas editing mode that lets you update your site’s styles directly in the live preview. You can adjust colors, fonts, spacing, images, icons, and layout by clicking an element and changing its settings. These direct edits apply immediately and do n...', '<h2>Summary</h2>
<p>Visual Edits is an in-canvas editing mode that lets you update your site’s styles directly in the live preview. You can adjust colors, fonts, spacing, images, icons, and layout by clicking an element and changing its settings.</p>
<p>These direct edits apply immediately and do not use AI tokens. AI is only used when you send a prompt.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Click to select:</strong> Click an element to open the Visual Edits panel. The controls change based on what you selected (text, button, image, icon, or layout).</li>
<li><strong>Edit text inline:</strong> Double-click text to edit it in place. Press Escape or click outside to finish.</li>
<li><strong>Icon picker:</strong> Replace Lucide icons using a searchable library of 1,600+ icons.</li>
<li><strong>Color palette:</strong> Choose from your project theme colors and the Tailwind palette.</li>
<li><strong>Spacing controls:</strong> Adjust margin and padding with the option to link or unlink sides.</li>
<li><strong>Image layout:</strong> Set image fit to Fill, Contain, Cover, or Scale down.</li>
<li><strong>Icon sizing:</strong> Resize Lucide icons using Tailwind classes or custom values.</li>
<li><strong>Multi-select with prompt:</strong> Select multiple elements and apply a single prompt to update them consistently.</li>
<li><strong>Save or discard:</strong> Preview changes live, then save to apply or discard to revert.</li>
</ul>
<h2>What you can edit</h2>
<ul>
<li>Colors, spacing, borders, shadows, border radius, opacity, typography</li>
<li>Text content (inline editing)</li>
<li>Buttons and inputs (type and aria label)</li>
<li>Links (URL, target, rel)</li>
<li>Images (source, alt text, object-fit)</li>
<li>Lucide icons (swap and resize)</li>
<li>Textareas (placeholder, name, rows)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:04:29.000Z'),
('wp-1043', 'Bluesky comment management is now available in Social Planner', 'Comment Management now supports Bluesky, so you can view and reply to comments directly from Social Planner. This helps you manage Bluesky conversations alongside your other social channels without switching tools. What’s new Reply to Bluesky comments: Respond to comments on Blue...', '<p>Comment Management now supports Bluesky, so you can view and reply to comments directly from Social Planner.</p>
<p>This helps you manage Bluesky conversations alongside your other social channels without switching tools.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Reply to Bluesky comments:</strong> Respond to comments on Bluesky posts directly within Social Planner.</li>
<li><strong>Threaded replies:</strong> Keep conversation context with replies up to 3 levels deep.</li>
<li><strong>Automatic syncing for recent posts:</strong> Comments sync automatically for your latest posts to keep the inbox current.</li>
</ul>
<h3>How to use this feature</h3>
<ol>
<li>Go to <strong>Marketing → Social Planner → Comments</strong></li>
<li>Open the <strong>Comments</strong> tab</li>
<li>Select your <strong>Bluesky</strong> account</li>
<li>View and reply to comments</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Manage Bluesky engagement without switching platforms</li>
<li>Respond faster to conversations</li>
<li>Keep communication consistent across channels</li>
<li>Centralize engagement in one inbox</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Reply character limit: 300 characters</li>
<li>Replies are text-only (no media attachments)</li>
<li>Profile tagging is not supported</li>
<li>Replies are visible up to 3 levels deep (full threads are stored internally)</li>
<li>Comments sync for the last 15 posts</li>
<li>Sync runs every 6 hours</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:03:58.000Z'),
('wp-1039', 'Opportunity list updates: the “me” filter and primary contact notes', 'Two updates are rolling out for Opportunities. These changes make it easier to build personal views and see more context without opening each record. What’s new 1) Dynamic “me” filter for Owner and Follower You can now select a dynamic me value in the Owner and Follower filters. ...', '<p>Two updates are rolling out for Opportunities. These changes make it easier to build personal views and see more context without opening each record.</p>
<h2>What’s new</h2>
<p><strong>1) Dynamic “me” filter for Owner and Follower</strong></p>
<ul>
<li>You can now select a dynamic <strong>me</strong> value in the <strong>Owner</strong> and <strong>Follower</strong> filters.</li>
<li>This is available in <strong>Advanced Filters</strong> and in the <strong>Smart Tag</strong> editor.</li>
<li>When used, <strong>me</strong> automatically resolves to the currently logged-in user.</li>
</ul>
<p><strong>2) Primary contact notes in List view</strong></p>
<ul>
<li><strong>Primary Contact Notes</strong> is now available as a column in the Opportunities <strong>List view</strong>.</li>
<li>It shows all notes from the opportunity’s primary contact.</li>
<li>Like other columns, it can be sorted, resized, and included in saved views.</li>
</ul>
<h2>How it works</h2>
<p><strong>Use the dynamic “me” filter</strong></p>
<ol>
<li>Open <strong>Opportunities</strong>.</li>
<li>Open <strong>Advanced Filters</strong> or the <strong>Smart Tag</strong> editor.</li>
<li>Add a filter on <strong>Owner</strong> or <strong>Follower</strong>.</li>
<li>In the value dropdown, select <strong>me</strong>.</li>
<li>Optionally, save it as a <strong>Smart Tag</strong> to reuse or share with your team.</li>
</ol>
<p>If a Smart Tag that includes “me” is shared, each viewer will only see their own opportunities.</p>
<p><strong>Add the Primary Contact Notes column</strong></p>
<ol>
<li>Open <strong>Opportunities</strong> in <strong>List view</strong>.</li>
<li>Select <strong>Customize Columns</strong>.</li>
<li>Enable <strong>Primary Contact Notes</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces the need to create separate filter views for each user.</li>
<li>Makes it easier to reuse a single personal view across sessions.</li>
<li>Helps standardize “my opportunities” for teams using shared saved views.</li>
<li>Provides faster context for daily review and call preparation.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;