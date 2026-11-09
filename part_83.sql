INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>What’s new</h2>
<ul>
<li>Drag and drop to reorder pipelines in the Opportunities pipeline view.</li>
<li>Use “Move to position” in the Actions menu to place a pipeline at an exact position, including moving a pipeline across pages.</li>
<li>The pipeline order is saved for the location and is consistent for all users.</li>
<li>Only admins can reorder pipelines in a location.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>Go to Opportunities → Pipelines.</li>
<li>Drag a pipeline by its handle to the position you want.</li>
<li>Or open the Actions menu on a pipeline and select “Move to position”.</li>
<li>The new order saves automatically.</li>
</ul>
<h2>Why this update</h2>
<p>Previously, the pipeline list order in Opportunities was fixed and couldn’t be changed from the user interface. This update makes it easier to prioritize the pipelines you use most.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1160', 'All Pipelines option in the pipeline dropdown', 'You can now select an All Pipelines option in the pipeline dropdown to view opportunities across every pipeline in one place. What’s new An All Pipelines option has been added to the pipeline dropdown. In List view, this shows opportunities from all pipelines in one unified list....', '<p>You can now select an <strong>All Pipelines</strong> option in the pipeline dropdown to view opportunities across every pipeline in one place.</p>
<h2>What’s new</h2>
<ul>
<li>An <strong>All Pipelines</strong> option has been added to the pipeline dropdown.</li>
<li>In <strong>List</strong> view, this shows opportunities from all pipelines in one unified list.</li>
<li>The option is available only in <strong>List</strong> view and is disabled in <strong>Kanban (Board)</strong> view.</li>
<li>Smartlists saved from the All Pipelines view are <strong>List</strong> type only; Kanban board Smartlists are not supported for this view.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>Opportunities</strong>.</li>
<li>Switch to <strong>List</strong> view.</li>
<li>Open the <strong>Pipeline</strong> dropdown and select <strong>All Pipelines</strong>.</li>
<li>Browse opportunities across all pipelines in one place.</li>
<li>If needed, save the view as a Smartlist (List type only).</li>
</ol>
<p><strong>Note:</strong> The All Pipelines option is disabled in Kanban view. Switch to List view to enable it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1159', 'Blogs: Updated author layout', 'Blogs now support a new author layout that highlights author information in a modern, professional format so readers can better connect with the person behind the content. What’s new Choose between two author layouts Select the author experience that best fits your brand: Modern ...', '<p>Blogs now support a new author layout that highlights author information in a modern, professional format so readers can better connect with the person behind the content.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Choose between two author layouts</strong>
<p>Select the author experience that best fits your brand:</p>
<p><strong>Modern preview (new)</strong></p>
<ul>
<li>Card-based design</li>
<li>Clearer visual hierarchy</li>
<li>Designed to improve reader engagement</li>
<li>Default layout for newly created blog posts</li>
</ul>
<p><strong>Classic preview</strong></p>
<ul>
<li>The existing author layout</li>
<li>Available if you prefer the current experience</li>
</ul>
</li>
<li><strong>Enhanced author profiles</strong>
<p>Author details are presented in a more structured format, including:</p>
<ul>
<li>Profile image</li>
<li>Author name</li>
<li>Designation or role</li>
<li>Author bio</li>
<li>Social media links</li>
<li>Email address</li>
</ul>
<p>This helps readers quickly understand the author’s background and expertise.</p>
</li>
<li><strong>Expandable “Read More” for long bios</strong>
<p>Long author bios are condensed by default. Readers can select Read More to expand the full description without disrupting the blog layout.</p>
</li>
<li><strong>Responsive on all devices</strong>
<p>The author section is optimized for desktop, tablet, and mobile.</p>
</li>
</ol>
<h3>How to use</h3>
<ul>
<li>Go to <strong>Sites → Blogs</strong></li>
<li>Open <strong>Blog Post Settings</strong></li>
<li>Select your preferred <strong>Author Layout</strong></li>
<li>Configure author details, social links, and email information</li>
<li>Publish your blog</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Build trust and credibility with clearer author branding</li>
<li>Increase engagement with richer author profiles</li>
<li>Create a more professional blog reading experience</li>
<li>Highlight expertise and thought leadership more effectively</li>
</ul>
<h3>Notes</h3>
<ul>
<li>The Modern Author Layout is the default for newly created blog posts.</li>
<li>Existing blogs will continue using their current layout unless you update them manually.</li>
<li>Dedicated author profile pages are not included in this release.</li>
<li>Multiple authors per blog post are not currently supported.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1158', 'Meta Pixel update: improved legacy event suppression', 'Overview: This update makes Meta Pixel tracking more reliable for accounts migrating to the new Events tab. Legacy event suppression now works at the individual event level instead of acting like an all-or-nothing switch. This helps prevent newly configured events from unintentio...', '<p>Overview:</p>
<p>This update makes Meta Pixel tracking more reliable for accounts migrating to the new Events tab. Legacy event suppression now works at the individual event level instead of acting like an all-or-nothing switch. This helps prevent newly configured events from unintentionally disabling tracking elsewhere. External_id coverage has also been expanded, along with several reliability improvements.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Event-level suppression:</strong> Legacy events are now suppressed only when their direct replacement has been configured, rather than when the Events tab is enabled globally.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;