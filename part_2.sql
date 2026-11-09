INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>What’s new</h2>
<h3>See a contact’s path</h3>
<ul>
<li>Ask about a specific contact to see their most recent run step by step, including the time and outcome of each step.</li>
<li>Use &#8220;See contact path&#8221; to open the workflow canvas with that path highlighted.</li>
<li>Repeat enrollments are called out so you know which run you are reviewing.</li>
</ul>
<h3>View a contact’s journey across workflows</h3>
<ul>
<li>Follow one contact across workflows to see which workflows they entered, how many times, and how each run ended.</li>
<li>Check whether they are currently active in any workflow.</li>
<li>Ask account-level questions (for example, who is in three or more workflows) to find contacts with the most workflow activity.</li>
</ul>
<h3>Version history in chat</h3>
<ul>
<li>See who edited a workflow and what changed between versions, including steps added, removed, moved, or renamed, as well as settings changes.</li>
<li>Ask whether an edit likely caused a problem; responses include a confidence level such as &#8220;Direct cause&#8221;, &#8220;Lines up&#8221;, or &#8220;Can’t tell&#8221;.</li>
<li>Secret values remain hidden.</li>
</ul>
<h3>PDF reports</h3>
<ul>
<li>Ask for a report and mention PDF, download, or export.</li>
<li>The analysis appears in chat with a &#8220;Download PDF&#8221; option beneath it.</li>
<li>Reports are only available to users who have access to the account and the workflow.</li>
</ul>
<h3>Compare and summarize</h3>
<ul>
<li>Compare two workflows on enrollments, completions, completion rate, and error rate, and get recommendations.</li>
<li>Rank published or paused workflows by completion rate to spot underperforming workflows compared with your account median.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Open a workflow.</li>
<li>Select the Workflow AI icon in the left sidebar, then open the Chat tab.</li>
<li>Ask your question in plain language. Examples:</li>
</ol>
<ul>
<li>&#8220;Show me the path a contact took through this workflow&#8221;</li>
<li>&#8220;Show me the journey of a contact across all workflows&#8221;</li>
<li>&#8220;Compare the last 10 versions of this workflow&#8221;</li>
<li>&#8220;Give me a performance report for the last 30 days, and include a PDF I can download&#8221;</li>
<li>&#8220;How does this workflow compare to Lead Follow Up?&#8221;</li>
</ul>
<p>To export, select &#8220;Download PDF&#8221; when it is offered.</p>
<h2>Why this matters</h2>
<p>When something looks off, workflow owners usually ask two questions: &#8220;What happened to this contact?&#8221; and &#8220;What changed?&#8221; Previously, the answers were spread across multiple screens and required manual investigation. Now you can ask the question in chat and get a clear explanation.</p>
<ul>
<li>Faster debugging: Understand why a contact got stuck without reading raw logs.</li>
<li>Clear accountability: See who changed what and whether the change caused an issue.</li>
<li>Client-ready reporting: Share a PDF report instead of a collection of screenshots.</li>
<li>Account-wide visibility: Spot workflows that need attention sooner.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-11-09T14:03:27.000Z'),
('wp-1690', 'New templates added to Leadli', 'New templates are now available in Leadli. They are designed to help you create websites, funnels, surveys, and ad campaigns more quickly using ready-to-edit layouts. Templates included in this update Website templates: 1 (Medical) Survey templates: 1 (Other) Facebook ad template...', '<p>New templates are now available in Leadli. They are designed to help you create websites, funnels, surveys, and ad campaigns more quickly using ready-to-edit layouts.</p>
<h2>Templates included in this update</h2>
<ul>
<li><strong>Website templates:</strong> 1 (Medical)</li>
<li><strong>Survey templates:</strong> 1 (Other)</li>
<li><strong>Facebook ad templates:</strong> 2 (Gym/Fitness Studio; Dentist)</li>
<li><strong>Google ad templates:</strong> 2 (Donut Retailer; Commercial Building Inspector)</li>
<li><strong>LinkedIn templates:</strong> 6 (Business Loan Broker; Workers’ Compensation Insurance; Sales Trainer; Motion Graphics &amp; Animation Studio; Facility Management Company; Social Media Management Agency)</li>
<li><strong>Workflow templates:</strong> 1 (Stale Deal Follow-Up)</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-11-07T18:41:52.000Z'),
('wp-1689', 'Connect a Conversation AI agent to your live chat widget from AI Studio settings', 'You can now connect a Conversation AI agent to your site’s live chat widget directly from AI Studio settings. What you can do Connect an agent: Select a Conversation AI agent in the chat widget settings and save to start replying to visitors. See what’s connected: View which agen...', '<p>You can now connect a Conversation AI agent to your site’s live chat widget directly from AI Studio settings.</p>
<h2>What you can do</h2>
<ul>
<li><strong>Connect an agent:</strong> Select a Conversation AI agent in the chat widget settings and save to start replying to visitors.</li>
<li><strong>See what’s connected:</strong> View which agent is connected and which tag conditions apply.</li>
<li><strong>Edit or remove the connection:</strong> Open the agent settings to make changes, or remove the connection when you no longer want the agent answering.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Open your site in AI Studio.</li>
<li>Go to <strong>More &gt; Chat Widgets</strong>, then open the <strong>AI agent</strong> section.</li>
<li>Choose an agent from the dropdown, confirm the tag conditions, and save.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This works with live chat widgets.</li>
<li>You can connect one agent from AI Studio. Additional agent connections can be managed in Conversation AI.</li>
<li>Tag conditions are managed in Conversation AI.</li>
<li>Agents are created and trained in Conversation AI. AI Studio connects an existing agent to your widget.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-06T13:15:03.000Z'),
('wp-1688', 'Payments: Sell more than 100 products from your Leadli AI Studio site', 'What’s fixed No more 100-product limit. The Payments panel previously stopped at 100 products. You can now add as many products from your store as you need. What’s improved Add products in bulk. In the product picker, you can select an entire page of products and add them in one ...', '<p><strong>What’s fixed</strong></p>
<ul>
<li><strong>No more 100-product limit.</strong> The Payments panel previously stopped at 100 products. You can now add as many products from your store as you need.</li>
</ul>
<p><strong>What’s improved</strong></p>
<ul>
<li><strong>Add products in bulk.</strong> In the product picker, you can select an entire page of products and add them in one save.</li>
<li><strong>Faster product list.</strong> Your added products load a page at a time, with search across the full list, so large catalogs stay quick to manage.</li>
<li><strong>Browse your full store.</strong> The product picker now pages through your entire store and marks the products you’ve already added.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>When checkout is set to “All products”, buyers are offered your first 100 products. To sell beyond that, choose the products to offer or link to individual product pages.</li>
<li>A storefront product list shows up to 500 products, and storefront search covers those same products.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;