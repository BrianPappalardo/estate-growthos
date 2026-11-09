INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h4>Website templates (1)</h4>
<ul>
<li>Home Services (1)</li>
</ul>
<h4>Funnel templates (1)</h4>
<ul>
<li>Marketing Agency (1)</li>
</ul>
<h4>Social templates (8)</h4>
<ul>
<li>Real Estate (2)</li>
<li>Travel &amp; Hospitality (2)</li>
<li>Other (2)</li>
<li>Restaurant and Bar (2)</li>
</ul>
<h4>Facebook ad templates (2)</h4>
<ul>
<li>Finance &#8211; Financial Consultant</li>
<li>Business Coaching &amp; Consulting &#8211; Life Coach</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Beauty &amp; Fashion &#8211; Makeup Artist</li>
<li>Automotive &#8211; Auto Paint Shop</li>
<li>Travel &amp; Hospitality &#8211; Bed and Breakfast Inn</li>
<li>Restaurant &amp; Bar &#8211; Beer Brewery</li>
<li>Real Estate &#8211; Home Inspection</li>
</ul>
<h4>LinkedIn ad templates (7)</h4>
<ul>
<li>Finance &#8211; Accounting Services</li>
<li>Marketing Agency &#8211; Event Promoter</li>
<li>Finance &#8211; Investment Management</li>
<li>Marketing Agency &#8211; Product Testing</li>
<li>Marketing Agency &#8211; Media Production &amp; Editing</li>
<li>Marketing Agency &#8211; SEO Consulting</li>
<li>Creative &#8211; Interior Design Expert</li>
</ul>
<h4>Snapshots (1)</h4>
<ul>
<li>Business Coaching &amp; Consulting &#8211; Stocks Trading Advisor</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-15T16:39:00.000Z'),
('wp-1333', 'WhatsApp analytics in the Leadli AI Assistant for workflows', 'You can now view WhatsApp performance inside the AI Assistant in workflows, alongside Email and SMS. The Assistant can report sends, delivered, failed, and pending totals for a WhatsApp step. It also includes delivery and failure rates, plus read counts and read rate for delivere...', '<p>You can now view WhatsApp performance inside the AI Assistant in workflows, alongside Email and SMS.</p>
<p>The Assistant can report sends, delivered, failed, and pending totals for a WhatsApp step. It also includes delivery and failure rates, plus read counts and read rate for delivered messages.</p>
<p>You can ask for a specific time window (for example, “last 2 weeks”). The Assistant will compare that period with the previous period and summarize what changed.</p>
<p>How to use:</p>
<ol>
<li>Open the AI Assistant in any workflow.</li>
<li>Ask for the metrics you need, such as: “Fetch the WhatsApp delivery stats for this workflow for the last 2 weeks.”</li>
</ol>
<p>No configuration is required.</p>
<p>This update helps you review Email, SMS, and WhatsApp performance in one place instead of checking separate dashboards and execution logs.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-14T14:42:17.000Z'),
('wp-1332', 'Google Merchant Center integration for ecommerce stores', 'Summary Google Merchant Center is now available as a Marketplace app. It lets you connect your ecommerce store to Google Merchant Center and sync eligible store products for visibility across Google Shopping and other supported Google surfaces. What you can do Connect Google Merc...', '<h2>Summary</h2>
<p>Google Merchant Center is now available as a Marketplace app. It lets you connect your ecommerce store to Google Merchant Center and sync eligible store products for visibility across Google Shopping and other supported Google surfaces.</p>
<h2>What you can do</h2>
<ol>
<li><strong>Connect Google Merchant Center</strong>
<ul>
<li>Install the app from Marketplace and connect your Google account.</li>
<li>Select the Google Merchant Center account and the ecommerce store you want to link.</li>
<li>If you do not have a Merchant Center account, follow the in-app documentation to create one and verify your store domain.</li>
</ul>
</li>
<li><strong>Automatically sync store products</strong>
<ul>
<li>Only eligible products assigned to the connected ecommerce store are synced.</li>
<li>One-time payment products and digital products are supported.</li>
<li>Updates to product details, pricing, inventory, variants, and product images continue syncing automatically after setup.</li>
</ul>
</li>
<li><strong>Use the Merchant Center data source</strong>
<ul>
<li>A data source named <code>leadconnector</code> is created using the country and language set for the shipping origin.</li>
<li>Deleting this data source removes the synced products. You can create a new one using Force Sync.</li>
</ul>
</li>
<li><strong>Review errors and product issues</strong>
<ul>
<li>Errors and warnings are shown during and after setup to help resolve issues that could affect approval.</li>
<li>Google reviews submitted products and decides approval and eligibility.</li>
</ul>
</li>
<li><strong>Connect multiple stores</strong>
<ul>
<li>Multiple store-to–Merchant Center mappings are supported.</li>
<li>Once a store or Merchant Center account is linked, it cannot be used in another mapping until the existing connection is removed.</li>
</ul>
</li>
</ol>
<h2>How to set it up</h2>
<ol>
<li>Open Marketplace and install the Google Merchant Center app.</li>
<li>Connect your Google account and select your Merchant Center account.</li>
<li>Select the ecommerce store you want to connect.</li>
<li>Complete setup to start syncing eligible products assigned to that store.</li>
<li>Review sync status, errors, and warnings. Use Force Sync if you need a manual refresh.</li>
</ol>
<h2>Notes</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;