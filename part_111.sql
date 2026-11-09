INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Key benefits</strong></p>
<ul>
<li>Automate emails from company and custom object workflows.</li>
<li>Notify associated contacts without extra workflow steps or manual triggering.</li>
<li>Support more custom business processes.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Go to <strong>Settings → Labs</strong> and enable <strong>Email Action in Company &amp; Custom Object Workflows</strong>.</li>
<li>Open a company or custom object workflow.</li>
<li>Add an action and select <strong>Send Email</strong>.</li>
<li>Choose the association label(s) for the contacts who should receive the email.</li>
<li>For custom object workflows, choose whether to email the earliest associated contact, the most recently associated contact, or all associated contacts.</li>
<li>Add the email subject and content, then save and publish the workflow.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Emails are sent using the domain configured for Bulk Email.</li>
<li>You can select up to 10 association labels for a single email action.</li>
<li>If a contact matches multiple selected labels, they will receive only one email.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1268', 'Social Planner: Post Sync for LinkedIn and TikTok (Beta)', 'This feature is currently available in beta. We are introducing Post Sync for LinkedIn and TikTok (beta), which lets you automatically import published posts into the Social Planner. After you enable it, recent posts are synced into the planner so you can review past content, mon...', '<p>This feature is currently available in beta.</p>
<p>We are introducing Post Sync for LinkedIn and TikTok (beta), which lets you automatically import published posts into the Social Planner.</p>
<p>After you enable it, recent posts are synced into the planner so you can review past content, monitor performance, and manage publishing history alongside scheduled posts in one place.</p>
<h3>What’s new</h3>
<p><strong>LinkedIn Post Sync (beta)</strong></p>
<p>With LinkedIn Post Sync, you can:</p>
<ul>
<li>View historical LinkedIn posts alongside scheduled content</li>
<li>Track engagement metrics including reactions, comments, and shares</li>
<li>Manage LinkedIn content from a unified publishing calendar</li>
</ul>
<p><strong>TikTok Post Sync (beta)</strong></p>
<p>You can now:</p>
<ul>
<li>Import published TikTok videos into the Social Planner</li>
<li>View historical TikTok content in one place</li>
<li>Track likes, comments, shares, and views</li>
<li>Manage TikTok alongside your other connected social accounts</li>
<li>Automatic daily insight refresh</li>
</ul>
<p>Engagement metrics for LinkedIn and TikTok are refreshed every 24 hours to keep analytics up to date while staying within platform API limits.</p>
<h3>How to use this feature</h3>
<ul>
<li>Go to Marketing → Social Planner → Settings</li>
<li>Connect your LinkedIn Page or TikTok account</li>
<li>Enable Post Sync</li>
<li>Allow the initial sync to complete</li>
<li>View your synced posts and performance metrics inside Social Planner</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Centralize published content across more social platforms</li>
<li>Access historical posts without manual imports</li>
<li>Monitor engagement from one unified dashboard</li>
<li>Simplify reporting for agencies and businesses</li>
<li>Reduce the need to switch between native social apps</li>
</ul>
<h3>Notes</h3>
<p><strong>LinkedIn</strong></p>
<ul>
<li>Beta supports LinkedIn Organization Pages only</li>
<li>Personal LinkedIn profiles are not supported due to API limitations</li>
<li>Reactions, comments, and shares refresh every 24 hours</li>
<li>PDF, Event, Poll, and Article posts are synced but do not support in-app previews</li>
<li>Mentions, hashtag highlighting, and tagged-user details are not available due to LinkedIn API limitations</li>
<li>Deleted LinkedIn posts remain visible in the Social Planner since sync is one-way (LinkedIn → Social Planner)</li>
</ul>
<p><strong>TikTok</strong></p>
<ul>
<li>Beta supports both TikTok Personal and Business accounts</li>
<li>Likes, comments, shares, and views refresh every 24 hours</li>
<li>Videos are played using TikTok’s hosted player</li>
<li>Synced TikTok videos cannot be cloned into new posts due to API restrictions</li>
<li>Location tags, tagged users, and music details are not available through the TikTok API</li>
<li>Deleted TikTok posts remain visible in the Social Planner since sync is one-way (TikTok → Social Planner)</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1267', 'Choose the right AI Employee plan for your SaaS clients', 'Update When you add the AI Employee add-on to one of your SaaS plans, you can now choose which AI Employee plan to include: Growth or Unlimited. In the SaaS Configurator, you can compare pricing and features for each option before selecting one. Your selection is then shown on th...', '<p><strong>Update</strong></p>
<p>When you add the AI Employee add-on to one of your SaaS plans, you can now choose which AI Employee plan to include: Growth or Unlimited. In the SaaS Configurator, you can compare pricing and features for each option before selecting one. Your selection is then shown on the main plan screen along with the cost.</p>
<p><strong>Why this matters</strong></p>
<p>Previously, AI Employee was a single add-on option. Now you can choose the tier that matches what you want to offer, price your SaaS plans more accurately, and make sure clients start on the right plan.</p>
<p><strong>Notes</strong></p>
<ul>
<li>This is available in the SaaS Configurator add-on flow anywhere AI Employee can be added to a plan.</li>
<li>If AI Employee was already enabled on a plan, confirm the displayed tier is correct. If not, reselect the intended plan.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1266', 'Add llms.txt support to your Leadli sites', 'Overview Leadli Funnels & Websites supports managing an llms.txt file for each connected domain. You can edit the file in the Edit Domain settings, and it will be served automatically at https://<your-domain>/llms.txt . Why this matters Some AI crawlers and site audit tools check...', '<p><strong>Overview</strong></p>
<p>Leadli Funnels &amp; Websites supports managing an <code>llms.txt</code> file for each connected domain. You can edit the file in the Edit Domain settings, and it will be served automatically at <code>https://&lt;your-domain&gt;/llms.txt</code>.</p>
<p><strong>Why this matters</strong></p>
<p>Some AI crawlers and site audit tools check for an <code>llms.txt</code> file at the root of a domain. Adding one can help AI agents better understand your site’s purpose and structure and can support newer audit checks related to agent-based browsing.</p>
<p><strong>Key highlights</strong></p>
<ul>
<li><strong>Hosted automatically:</strong> Your <code>llms.txt</code> file is available at <code>https://&lt;your-domain&gt;/llms.txt</code></li>
<li><strong>Edit in-app:</strong> Update the file directly from the Edit Domain settings</li>
<li><strong>Per-domain control:</strong> Maintain different <code>llms.txt</code> content for each connected domain</li>
</ul>
<p><strong>How to access</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;