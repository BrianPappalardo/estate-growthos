INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Lets you review primary contact notes without opening each record.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:03:41.000Z'),
('wp-1036', 'Blocked time slots for rental listings', 'Overview You can now create blocked slots for rental listings. This lets you reduce availability without creating a customer booking. Use blocked time to account for maintenance, internal use, or offline commitments so your calendar and booking flows stay accurate. What’s new Cre...', '<h2>Overview</h2>
<p>You can now create <strong>blocked slots</strong> for rental listings. This lets you reduce availability without creating a customer booking.</p>
<p>Use blocked time to account for maintenance, internal use, or offline commitments so your calendar and booking flows stay accurate.</p>
<h2>What’s new</h2>
<ul>
<li>Create blocked slots for rental listings directly from the calendar.</li>
<li><strong>Blocked slots reduce availability</strong> like a booking, but are not tied to a customer or order.</li>
<li>Optionally block specific <strong>variants and quantities</strong> (if enabled).</li>
<li>View, edit, and delete blocked slots from the calendar view.</li>
<li>Blocked slots are visible on the calendar with relevant details.</li>
</ul>
<h2>How it works</h2>
<p>To create a blocked slot, select:</p>
<ul>
<li>Listing</li>
<li>Date and time range</li>
<li>Optional variant and quantity (if applicable)</li>
</ul>
<p>After you create it:</p>
<ul>
<li>The listing becomes <strong>unavailable</strong> for the selected duration</li>
<li>Availability updates across booking flows</li>
</ul>
<p>You can also:</p>
<ul>
<li><strong>View</strong> blocked-slot details</li>
<li><strong>Edit</strong> it using the same form</li>
<li><strong>Delete</strong> it to release availability</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Helps manage <strong>inventory beyond customer bookings</strong>.</li>
<li>Supports <strong>accurate availability</strong> across booking channels.</li>
<li>Handles scenarios like <strong>maintenance, holds, or internal use</strong>.</li>
<li>Gives you more control over rental operations.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:02:13.000Z'),
('wp-1034', 'Custom Metrics now support filters, Meta Ads, and Google Analytics', 'What’s new You can add filters to individual custom metrics in your formula, such as filtering by contact tag, pipeline, owner, agent, and more. Meta Ads is available as a data source. You can use Spend, Impressions, CTR, CPC, CPM, Conversions, and Reach in your custom KPIs. Goog...', '<p><strong>What’s new</strong></p>
<ul>
<li>You can add <strong>filters</strong> to individual custom metrics in your formula, such as filtering by contact tag, pipeline, owner, agent, and more.</li>
<li><strong>Meta Ads</strong> is available as a data source. You can use Spend, Impressions, CTR, CPC, CPM, Conversions, and Reach in your custom KPIs.</li>
<li><strong>Google Analytics</strong> is available as a data source. You can combine analytics data with your CRM metrics in a single formula.</li>
<li>Custom metrics now open in a <strong>full-page builder</strong> instead of a modal.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Open your Dashboard and create or open a Custom Metric.</li>
<li>In the formula builder, select a metric token to add filters.</li>
<li>Set your filter conditions, for example: Tag = Customer, Pipeline = Sales, Owner = a specific rep.</li>
<li>To use Meta Ads or Google Analytics data, select them from the metric picker under their respective categories.</li>
<li>Combine metrics in the formula builder (for example, total spend divided by opportunity count) and save.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li>You can build segmented KPIs on your dashboard without exporting to spreadsheets.</li>
<li>You can filter contact metrics by tag (for example, Customer or VIP) directly in the platform.</li>
<li>You can combine ad and analytics spend data with your CRM pipeline data to calculate metrics like cost per lead or cost per opportunity in Leadli.</li>
</ol>
<p><strong>What’s next</strong></p>
<ul>
<li>More UX improvements to the custom metric builder are planned.</li>
</ul>
<p><strong>Notes</strong></p>
<ol>
<li>Filters support multiple conditions (AND logic) per metric token.</li>
<li>Available to all accounts.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-05-05T14:35:09.000Z'),
('wp-1035', 'AI Studio: Deleted projects are now marked inactive', 'Summary : Deleted AI Studio projects are now automatically set to inactive, and any pages connected to those projects are also set to inactive. Previous behavior When a project was deleted, its preview and published URLs could remain live. There was no way to take these pages dow...', '<p><strong>Summary</strong>: Deleted AI Studio projects are now automatically set to inactive, and any pages connected to those projects are also set to inactive.</p>
<h2>Previous behavior</h2>
<p>When a project was deleted, its preview and published URLs could remain live.</p>
<p>There was no way to take these pages down from within the product.</p>
<h2>What changed</h2>
<p>Deleted projects are now automatically marked as inactive.</p>
<p>When you delete a project, all associated pages are also marked as inactive.</p>
<h2>Impact</h2>
<p>After a project is deleted:</p>
<ul>
<li>Preview URLs will be inactive</li>
<li>Domains will be inactive</li>
<li>Published URLs will be inactive</li>
</ul>
<p>AI Studio is our new vibe coder tool, right within Leadli! It&#8217;s currently in beta, so if you would like access, go to Settings -&gt; Labs, turn it on and try it out!</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T14:34:36.000Z'),
('wp-1033', 'Google Lead Form: Accurate Attribution and New Activity', 'What’s new Google Lead Form submissions now record the correct Session Source as Paid Search (previously stored as "Paid Social"). Session Source now includes full Campaign , Ad Group , and Ad details. A new contact activity, "Google Lead Form Submission" , is now available for t...', '<p><strong>What’s new</strong></p>
<ul>
<li>Google Lead Form submissions now record the correct Session Source as <strong>Paid Search</strong> (previously stored as &#8220;Paid Social&#8221;).</li>
<li>Session Source now includes full <strong>Campaign</strong>, <strong>Ad Group</strong>, and <strong>Ad</strong> details.</li>
<li>A new contact activity, <strong>&#8220;Google Lead Form Submission&#8221;</strong>, is now available for this submission type.</li>
<li>The activity details include Campaign, Ad Group, Ad, and Form name so you can see which ad and form generated the lead.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Run a Google Ads campaign that uses Lead Forms and connect it to Leadli as you do today.</li>
<li>When someone submits the Google Lead Form, the contact is created or updated in Leadli automatically.</li>
<li>Open the contact and review the Activity panel. Session Source should show <strong>Paid Search</strong>, and Campaign / Ad Group / Ad should be populated from the originating Google Ads entity.</li>
<li>In the contact’s Activity timeline, you’ll see the new <strong>&#8220;Google Lead Form Submission&#8221;</strong> entry containing Campaign, Ad Group, Ad, and Form name.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;