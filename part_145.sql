INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Connect and manage Facebook, Google, and LinkedIn ad accounts</li>
<li>Handle authentication and account linking</li>
</ul>
<p><strong>Impact:</strong> Less time spent on setup and fewer repetitive steps when managing multiple accounts.</p>
<h3>Unified reporting and insights</h3>
<ul>
<li>Fetch campaign performance data across platforms</li>
<li>Track impressions, clicks, spend, and conversions</li>
<li>View results in a consistent cross-platform format</li>
</ul>
<p><strong>Impact:</strong> A clearer view of performance without switching between platforms.</p>
<h2>Why this matters</h2>
<ul>
<li><strong>One system for your ads:</strong> Manage campaigns across multiple platforms from one place.</li>
<li><strong>Automation:</strong> Reduce manual work by automating creation, updates, and reporting.</li>
<li><strong>Speed:</strong> Move from plan to live campaign faster by integrating Ad Manager into your workflows.</li>
<li><strong>Better decisions:</strong> Use consolidated data to optimize performance.</li>
<li><strong>Scalability:</strong> Support growth in campaigns and clients without adding complexity.</li>
</ul>
<h2>Documentation</h2>
<p>If you&#8217;re interested in getting access to the API docs, please reach out to us at support@flyingleapstudio.com. </p>


<p class="wp-block-paragraph"></p>
', 'templates', ARRAY['wp-import']::text[], '2026-04-27T17:57:21.000Z'),
('wp-953', 'Store deletion now only removes store pages', 'What changed Leadli now deletes only store-related pages when you delete a store. This helps prevent accidentally deleting the rest of your website. Details Delete Store is scoped to store pages: Deleting a store from the Stores list removes only store pages (Products List, Produ...', '<h2>What changed</h2>
<p>Leadli now deletes only store-related pages when you delete a store. This helps prevent accidentally deleting the rest of your website.</p>
<h2>Details</h2>
<ul>
<li><strong>Delete Store is scoped to store pages:</strong> Deleting a store from the Stores list removes only store pages (Products List, Product Details, Cart, Checkout, Thank You). Your main website pages (Home, About, etc.) are not affected.</li>
<li><strong>Same result from Store Settings:</strong> Deleting a store from Store Settings follows the same behavior and removes only store pages.</li>
<li><strong>Delete Website is unchanged:</strong> Deleting a website from the Websites section still deletes the entire website, including any associated store pages.</li>
<li><strong>Clearer confirmation message:</strong> The delete confirmation text now states that only store pages will be deleted.</li>
</ul>
<h2>How to delete a store</h2>
<ol>
<li>Go to Stores and select the store you want to delete.</li>
<li>Open the three-dot menu or go to Store Settings.</li>
<li>Select Delete Store.</li>
<li>Type DELETE to confirm.</li>
</ol>
<h2>Key points</h2>
<ul>
<li>Only store pages are deleted. Website pages remain intact.</li>
<li>This behavior is consistent wherever you delete the store.</li>
<li>Use Delete Website only when you want to remove the entire website.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-04-23T18:13:02.000Z'),
('wp-952', 'Add terms and privacy consent to store checkout', 'Overview You can add a required Terms & Conditions / Privacy Policy consent checkbox to your store checkout. Customers must agree before they can complete a purchase. What this does Adds a consent checkbox to checkout when enabled. Lets you edit the label text and include links t...', '<h2>Overview</h2>
<p>You can add a required Terms &amp; Conditions / Privacy Policy consent checkbox to your store checkout. Customers must agree before they can complete a purchase.</p>
<h2>What this does</h2>
<ul>
<li>Adds a consent checkbox to checkout when enabled.</li>
<li>Lets you edit the label text and include links to your Terms &amp; Conditions and Privacy Policy.</li>
<li>Shows the checkbox before the payment button and leaves it unchecked by default.</li>
<li>Blocks checkout with an inline message until consent is given.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Open your Store Builder and edit the checkout page.</li>
<li>Select the checkout element.</li>
<li>In the right panel, find the Terms and Conditions setting.</li>
<li>Turn on “Enable Terms and Conditions.”</li>
<li>Update the text and add links as needed.</li>
<li>Save and publish your changes.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>If the setting is enabled, checkout cannot proceed without acceptance.</li>
<li>Works on desktop and mobile.</li>
<li>This can help support common compliance requirements.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-23T15:42:34.000Z'),
('wp-945', 'Social Planner: View and reply to community comments in Comment Management', 'Comment Management in Social Planner now supports Communities. You can view and reply to community comments from the same place you manage other social engagement. This helps you keep up with conversations without switching between tools. What’s included Reply to community post c...', '<p>Comment Management in Social Planner now supports Communities. You can view and reply to community comments from the same place you manage other social engagement.</p>
<p>This helps you keep up with conversations without switching between tools.</p>
<h3>What’s included</h3>
<ul>
<li>Reply to community post comments directly inside Social Planner</li>
<li>Manage community conversations without opening the native community platform</li>
<li>Mention community members in replies for more natural responses</li>
<li>Real-time syncing so updates on the native platform are reflected in Social Planner</li>
</ul>
<p>You can manage community comments alongside Facebook, Instagram, LinkedIn, and TikTok.</p>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner → Comment Management</li>
<li>Open the Comments tab</li>
<li>View and reply to comments</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Respond faster to community conversations</li>
<li>Reduce context switching</li>
<li>Keep communication consistent across platforms</li>
<li>Improve member engagement</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Attachments are not supported in replies</li>
<li>Course mentions and event mentions are not currently supported</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;