INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Tone selection</li>
<li>Language preference</li>
<li>Review source selection</li>
<li>Page-level source control</li>
</ul>
<h4>Available workflows</h4>
<ul>
<li><strong>Assisted mode:</strong> AI drafts a reply that users review, edit, and send.</li>
<li><strong>Auto response mode:</strong> AI Agents respond automatically based on selected pages and configured rules.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Faster replies to Facebook reviews</li>
<li>Better response coverage</li>
<li>Less manual effort for agencies and businesses</li>
<li>More consistent replies based on selected tone and language</li>
<li>Page-level automation for multi-location clients</li>
<li>Reviews AI support expanded beyond Google to another major review source</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Go to Reputation → Reviews.</li>
<li>Select AI Reply to generate a suggested response.</li>
<li>For auto responses: go to Reputation → Settings → Reviews AI, create an agent, choose tone/language/conditions, select All Facebook pages or specific pages under Review Source, and save.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:17:34.000Z'),
('wp-1107', 'Browse AI integration: triggers and actions', 'What''s new You can now connect Browse AI directly to Workflows in Leadli. There is one instant trigger, New Completed Task, and four actions: Run Task, Bulk Run Tasks, Get Task, and Get Bulk Run. These let your automations respond to Browse AI robot runs and start new runs when n...', '<p><strong>What&#8217;s new</strong></p>
<p>You can now connect Browse AI directly to Workflows in Leadli. There is one instant trigger, New Completed Task, and four actions: Run Task, Bulk Run Tasks, Get Task, and Get Bulk Run. These let your automations respond to Browse AI robot runs and start new runs when needed.</p>
<p><strong>How it works</strong></p>
<p>The trigger fires when a Browse AI robot task finishes (filterable by Robot). It returns captured data plus task metadata. The four actions let workflows run a single robot, queue a bulk run, or fetch results from a previously started task or bulk run. Workflow variables are supported in every input field.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>In Workflows, add the Browse AI trigger or action.</li>
<li>Select Connect your account and paste your Browse AI API key (Settings > API Keys in your Browse AI dashboard).</li>
<li>For triggers, choose the Robot to monitor and optionally add a Select Operator filter, then run Find New Records to capture a sample payload.</li>
<li>For actions, choose the Robot ID and pass any input parameters the robot expects, then run Test Action to validate.</li>
<li>Save and publish.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Web scraping and content monitoring often live in a separate tool. Bringing Browse AI into Workflows in Leadli lets a customer-submitted URL trigger an on-demand scrape, a daily competitor monitor send an internal alert, and a CSV upload of URLs run as a bulk job with the results flowing back into the CRM.</p>
<p><strong>Use case</strong></p>
<p>A customer submits a competitor URL through a request form. The workflow runs the relevant Browse AI robot against the URL, waits for the task to finish (via the New Completed Task trigger), parses the captured fields, and writes them to the customer&#8217;s CRM record.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Trigger: New Completed Task (instant, webhook-backed). Filterable by Robot and Select Operator.</li>
<li>Actions: Run Task, Bulk Run Tasks, Get Task, Get Bulk Run.</li>
<li>API key authentication: generate a key in the Browse AI dashboard under Settings > API Keys.</li>
<li>Premium trigger and actions are billed per execution at the standard automation rate. Browse AI usage (robot/task credits) is billed by Browse AI.</li>
<li>Beta. Multi-account support is available via the Connected Account dropdown on each step.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:17:07.000Z'),
('wp-1106', 'AI Studio user permissions are now available', 'Leadli AI Studio now supports dedicated user permissions, giving admins and owners more control over who can access and manage AI Studio in their account. AI Studio has also been migrated to IAM V2 for more consistent permission management. What’s new View AI Studio : read-only a...', '<p>Leadli AI Studio now supports dedicated user permissions, giving admins and owners more control over who can access and manage AI Studio in their account. AI Studio has also been migrated to IAM V2 for more consistent permission management.</p>
<h2>What’s new</h2>
<ul>
<li><strong>View AI Studio</strong>: read-only access</li>
<li><strong>View &amp; Manage AI Studio</strong>: full read and write access</li>
</ul>
<p>Additional updates:</p>
<ul>
<li>AI Studio UI components and APIs are protected based on assigned permissions.</li>
<li>Only authorized users can create, edit, or manage AI Studio resources.</li>
<li>Permission enforcement is standardized through the IAM V2 framework.</li>
</ul>
<h2>Why this matters</h2>
<ol>
<li>Admins have more granular control over team access and responsibilities.</li>
<li>Teams can collaborate more safely while ensuring only the right users can manage AI Studio resources.</li>
<li>This update is based on a highly requested feature from the community</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:16:40.000Z'),
('wp-1105', 'Shopify integration is simpler with one-click connection', 'Connecting your Shopify store is now faster and easier. You can set up the integration in under a minute using an OAuth connection, without API tokens, custom app setup, or developer configuration. Note: If you already connected Shopify using the custom app method, your existing ...', '<p>Connecting your Shopify store is now faster and easier. You can set up the integration in under a minute using an OAuth connection, without API tokens, custom app setup, or developer configuration.</p>
<p><strong>Note:</strong> If you already connected Shopify using the custom app method, your existing integration continues to work. No action is required.</p>
<h2>What’s new</h2>
<ul>
<li><strong>One-click OAuth connection:</strong> Connect your Shopify store directly without creating a custom app or generating API tokens.</li>
<li><strong>Improved security:</strong> OAuth 2.0 avoids long-lived API credentials. Access is scoped and can be reviewed or revoked from Shopify at any time.</li>
<li><strong>Same sync features:</strong> Historic and real-time sync for customers, orders, transactions, products, and collections.</li>
<li><strong>Faster onboarding:</strong> Setup takes under a minute with fewer manual steps.</li>
</ul>
<h2>How to connect</h2>
<ol>
<li>Go to <strong>Settings</strong> &gt; <strong>Integrations</strong> &gt; <strong>Shopify</strong>, then click <strong>Connect</strong>.</li>
<li>Enter your Shopify store URL and click <strong>Next</strong>.</li>
<li>Choose your import and sync preferences, then click <strong>Save</strong>.</li>
<li>You’ll be redirected to Shopify to review permissions and click <strong>Install</strong>.</li>
<li>After approval, you’ll be redirected back to your account and the connection will be complete.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li><strong>Lower setup effort:</strong> Store owners can connect Shopify without dealing with custom apps or API scopes.</li>
<li><strong>Faster client onboarding:</strong> Agencies managing multiple stores can connect new integrations more quickly.</li>
<li><strong>Standard authorization flow:</strong> Uses Shopify’s familiar install and permission review process.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:16:19.000Z'),
('wp-1104', 'Multi-level ad campaign previews are now supported in the Template Library', 'What’s new The Ad Template Library now supports multi-level ad campaign previews for Meta, Google, and LinkedIn campaigns. You can view the full campaign structure, including multiple Ad Sets / Ad Groups and Ads within each campaign. Previews are aligned with each platform’s nati...', '<h2>What’s new</h2>
<ul>
<li>The Ad Template Library now supports multi-level ad campaign previews for Meta, Google, and LinkedIn campaigns.</li>
<li>You can view the full campaign structure, including multiple Ad Sets / Ad Groups and Ads within each campaign.</li>
<li>Previews are aligned with each platform’s native placements and formats.</li>
<li>The preview component is now shared across the Template Library and the Ad Manager campaign creation flow.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;