INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>NA</p>
<h3>Notes</h3>
<ol>
<li>Custom value insertion is available to dashboard editors only.</li>
<li>If a token has no value set for a location, it resolves as blank in view mode.</li>
<li>Location and User system fields are available by default. Custom values require prior setup under Settings → Custom values.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1320', 'Add ecommerce stores directly to funnels', 'What’s new You can now add a full ecommerce store experience inside a funnel. This lets visitors browse products, add items to a cart, check out, and see an order confirmation without leaving the funnel flow. When you add a store, Leadli creates five store steps automatically: Pr...', '<h2>What’s new</h2>
<p>You can now add a full ecommerce store experience inside a funnel. This lets visitors browse products, add items to a cart, check out, and see an order confirmation without leaving the funnel flow.</p>
<ul>
<li>When you add a store, Leadli creates five store steps automatically: <strong>Product List</strong>, <strong>Product Details</strong>, <strong>Cart</strong>, <strong>Checkout</strong>, and <strong>Thank You</strong>.</li>
<li>You can add store elements to funnel steps, such as <strong>Featured Product</strong>, <strong>Upsell</strong>, <strong>Collection List</strong>, and <strong>Search Bar</strong>. Adding a store element will convert the funnel into a store-enabled funnel and create the required five store steps.</li>
<li>A new <strong>Store Products</strong> tab is available on the funnel step list page, where you can exclude products and set product priority.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open a funnel and add a store from the <strong>Store</strong> section, or add a store element to any funnel step.</li>
<li>Select a theme and complete the store setup when prompted.</li>
<li>Use the <strong>Store Products</strong> tab to manage product visibility and priority.</li>
<li>Customize the generated store pages and publish your funnel.</li>
</ol>
<h2>Key points</h2>
<ul>
<li>The five store steps keep a fixed internal order, but you can move them together relative to other funnel steps.</li>
<li>Converted funnels display a Store tag in Funnels and a <strong>Funnel store</strong> tag in Stores.</li>
<li>Only one store can be added per funnel.</li>
<li><strong>Clone Step</strong> and <strong>A/B split testing</strong> are not supported on store steps.</li>
<li>Deleting any store step removes all five store steps and disables the store for that funnel.</li>
<li>Cloning a funnel also clones its store setup and store steps, but products are not duplicated.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1319', 'Threads post sync in Social Planner (Labs beta)', 'You can now sync existing Threads posts into the Social Planner so your past content and engagement details are available in one place. This feature is available as a beta in Labs. What’s included Automatic Threads post sync Import existing Threads posts, including text posts, im...', '<p>You can now sync existing Threads posts into the Social Planner so your past content and engagement details are available in one place.</p>
<p>This feature is available as a beta in Labs.</p>
<h3>What’s included</h3>
<ol>
<li><strong>Automatic Threads post sync</strong><br />Import existing Threads posts, including text posts, images, videos, carousels, GIFs, and polls.</li>
<li><strong>Post and engagement details</strong><br />Synced posts can retain available content and engagement data such as caption text, media previews, location tags, views, likes, replies, reposts, quotes, and shares.</li>
<li><strong>Clone existing Threads content</strong><br />Reuse supported Threads posts by cloning text and supported media posts directly from Social Planner.</li>
<li><strong>Automatic daily sync</strong><br />After you enable it, Threads posts sync every 24 hours. You can track sync progress and you’ll be notified if your account needs to be reconnected.</li>
</ol>
<h3>How to enable</h3>
<ul>
<li>Go to Marketing → Social Planner → Settings</li>
<li>Enable Threads Post Sync in Labs</li>
<li>Allow the initial sync to complete</li>
<li>View synced Threads posts in Social Planner</li>
<li>Clone supported posts when you want to reuse them</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Sync is enabled per location.</li>
<li>By default, posts from the last 30 days are synced. Older posts (up to 365 days) may be imported when needed.</li>
<li>Sync runs every 24 hours and is not real-time.</li>
<li>Polls can be viewed but cannot be cloned because poll creation is not supported in the Threads composer.</li>
<li>Deleted Threads posts remain visible in Social Planner because sync is one-way (Threads to Social Planner).</li>
<li>Text file attachments are not supported for sync or preview.</li>
<li>Some engagement data may be limited by Threads API capabilities.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1318', 'Conditional custom fields for opportunities', 'Opportunity forms can now adjust automatically based on each deal. Admins can choose which fields or folders appear, and which fields are required, based on an opportunity’s pipeline, stage, status, or other field values. What’s included Create rules using a single condition or c...', '<p>Opportunity forms can now adjust automatically based on each deal.</p>
<p>Admins can choose which fields or folders appear, and which fields are required, based on an opportunity’s pipeline, stage, status, or other field values.</p>
<h2>What’s included</h2>
<ul>
<li>Create rules using a single condition or combined AND/OR conditions.</li>
<li>Use pipeline, pipeline stage, status, and field types like dropdown, radio, checkbox, and multi-select as triggers.</li>
<li>Show individual fields or entire folders when conditions are met.</li>
<li>Mark visible fields as required so incomplete opportunities can’t be saved.</li>
<li>Preview each rule before saving.</li>
<li>Apply rules in Add, Edit, and Bulk Edit on web and mobile.</li>
<li>Manage pipeline-specific rules from the Pipelines page.</li>
<li>Activate rules immediately after saving.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings → Labs</strong>.</li>
<li>Enable <strong>Show &amp; Require Opportunity Fields Conditionally</strong> for the sub-account.</li>
<li>Go to <strong>Settings → Custom Fields → Opportunity → Conditional Rules</strong>.</li>
<li>Select <strong>Create conditional rule</strong>.</li>
<li>Choose the trigger conditions and connect them using AND/OR logic.</li>
<li>Select an outcome (show field, show folder, or make mandatory).</li>
<li>Review the live preview, then select <strong>Save rule</strong>.</li>
</ol>
<p>You can also go to <strong>Settings → Opportunities &amp; Pipelines</strong>, open a pipeline or stage’s <strong>Actions</strong> menu, and select <strong>Manage conditional rules</strong>.</p>
<h2>Why it matters</h2>
<ul>
<li>Keep opportunity forms focused on the fields that matter for the current stage.</li>
<li>Collect required details at the right point in the sales process.</li>
<li>Improve reporting accuracy and consistency.</li>
<li>Standardize data collection across pipelines and teams.</li>
<li>Reduce missing required information on saved opportunities.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Fields and folders included in a <strong>Show</strong> rule stay hidden until conditions are met.</li>
<li>Fields not included in a <strong>Show</strong> rule remain visible as usual.</li>
<li>If multiple rules apply, required-field rules are combined.</li>
<li>Only Admins can create, edit, or delete rules.</li>
<li>Rules are configured separately for each sub-account.</li>
<li>Nothing changes until an Admin creates the first rule.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;