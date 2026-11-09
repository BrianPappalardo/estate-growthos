INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1694', 'New in Leadli Communities: custom levels and point sources', 'Leadli Communities now includes expanded gamification settings. Admins can define custom levels, control how members earn points, and reward the actions that matter most from one settings area. What’s included Custom levels Define up to 9 levels for your community. Each level can...', '<p>Leadli Communities now includes expanded gamification settings. Admins can define custom levels, control how members earn points, and reward the actions that matter most from one settings area.</p>
<h2>What’s included</h2>
<h3>Custom levels</h3>
<p>Define up to 9 levels for your community. Each level can have its own name and point threshold. Members move through levels automatically as they earn points. The default levels can be edited so they match your community’s style and goals.</p>
<h3>Configurable point sources</h3>
<p>Choose exactly how members earn (or lose) points. Point sources can be configured across these categories:</p>
<ul>
<li><strong>Posts</strong>: Reward publishing content, with separate values for text, media, and audio posts.</li>
<li><strong>Participation</strong>: Award points for commenting and successful referral invites.</li>
<li><strong>Moderation</strong>: Deduct points when an admin confirms content as spam.</li>
<li><strong>Reactions received</strong> (optional): Award points when someone reacts to a member’s post or comment.</li>
<li><strong>Course completion</strong>: Assign point values to specific courses, set per course.</li>
</ul>
<p>Set any value to 0 to disable that action.</p>
<h2>How to configure</h2>
<ol>
<li>Go to <strong>Settings &gt; Gamification &amp; Rewards</strong>.</li>
<li>Open the <strong>Levels</strong> tab to rename levels and adjust point thresholds.</li>
<li>Open the <strong>Point Sources</strong> tab to set point values for each action.</li>
<li>If needed, enable <strong>Reactions received</strong> and add courses with custom completion points.</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Active communities are built by reinforcing the right behaviors. These settings help you encourage posting, engagement, referrals, and course completion, while reducing spam.</p>
<h2>Notes</h2>
<ul>
<li>All point values and level thresholds are customizable.</li>
<li>Members move between levels automatically as total points change.</li>
<li>Course completion points apply only to courses you add.</li>
<li>Updates to the Rewards tab configuration are planned.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T16:07:16.000Z'),
('wp-1693', 'GoKollab: App banner added to the mobile website', 'A new app banner is now shown on the GoKollab mobile website. It helps members install the app or open it directly, without losing the page they are viewing. What’s new App banner across the mobile site: A dismissible banner appears at the bottom of mobile pages and provides a cl...', '<p>A new app banner is now shown on the GoKollab mobile website. It helps members install the app or open it directly, without losing the page they are viewing.</p>
<h3>What’s new</h3>
<ul>
<li><strong>App banner across the mobile site:</strong> A dismissible banner appears at the bottom of mobile pages and provides a clear path to the native app.</li>
<li><strong>Smart detection and redirection:</strong> If the app is installed, the banner opens it using deep links. If it is not installed, the banner sends members to the Apple App Store on iOS or Google Play Store on Android.</li>
<li><strong>Seamless web-to-app navigation:</strong> Deep links keep the current page context so members land on the same community, discussion, or page they were viewing on the web.</li>
</ul>
<h3>Why this matters</h3>
<p>Previously, members browsing on mobile web did not have an easy way to discover or switch to the GoKollab app. This banner provides a consistent, one-tap way to move from web to app.</p>
<h3>Notes</h3>
<ul>
<li>The banner appears on all GoKollab mobile web pages.</li>
<li>Members can dismiss the banner if they prefer to stay on the mobile web.</li>
<li>Deep linking helps keep members on the same content when switching from web to app.</li>
<li>Supports both iOS (App Store) and Android (Play Store).</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T15:39:55.000Z'),
('wp-1692', 'Automatic welcome messages and onboarding steps in Communities', 'First impressions matter. You can now set up automated welcome direct messages and onboarding steps that greet new members as soon as they join, helping them get started in your community. What’s new Automatic welcome DM to new members Send an automatic welcome message to each ne...', '<p>First impressions matter. You can now set up automated welcome direct messages and onboarding steps that greet new members as soon as they join, helping them get started in your community.</p>
<h2>What’s new</h2>
<h3>Automatic welcome DM to new members</h3>
<p>Send an automatic welcome message to each new member who joins your community.</p>
<ul>
<li>Configure this in <strong>Settings → Welcome Setup</strong>.</li>
<li>Choose which admin or owner appears as the sender.</li>
<li>Write the message using the rich text editor (bold, italic, underline, strikethrough, links, and attachments).</li>
<li>Use <strong>@Member name</strong> to insert the member’s name.</li>
<li>Turn the feature on or off at any time.</li>
</ul>
<h3>Onboarding steps (up to 5)</h3>
<p>Guide new members through their first actions with a checklist that can include up to 5 steps. When enabled, eligible new members will see a “Get Started” checklist on the community home/feed.</p>
<p>Examples of steps you can include:</p>
<ul>
<li>Update profile</li>
<li>Engage with a post</li>
<li>RSVP to an event</li>
<li>Watch an introductory video</li>
<li>Add a custom step (optionally with a link)</li>
</ul>
<p>Members can complete steps from the checklist, track progress, and dismiss it when finished. Steps can be reordered and customized.</p>
<h2>How to configure</h2>
<h3>Automatic DM</h3>
<ol>
<li>Go to <strong>Settings → Welcome Setup</strong>.</li>
<li>Turn on <strong>Auto DM to new members</strong>.</li>
<li>Select which admin or owner should appear as the sender.</li>
<li>Write your welcome message. Type <strong>@</strong> to insert the member’s name.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h3>Onboarding steps</h3>
<ol>
<li>On the same <strong>Welcome Setup</strong> page, turn on <strong>Onboarding steps</strong>.</li>
<li>Click <strong>+ Add</strong> to create your first step.</li>
<li>Add up to 5 steps and choose the actions you want new members to complete.</li>
<li>Reorder steps if needed.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>When new members are not sure what to do first, they often disengage early. A structured welcome message and a simple checklist give them clear next steps, which helps improve early engagement and participation.</p>
<h2>Notes</h2>
<ul>
<li>Automatic DMs support rich text formatting, links, mentions, and media attachments.</li>
<li>The sender can be any admin or owner in the community.</li>
<li>Onboarding steps support up to 5 actions per community.</li>
<li>Members see the onboarding checklist on the community home/feed and can dismiss it after completing the steps.</li>
<li>Both features can be enabled independently or together.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T15:36:02.000Z'),
('wp-1691', 'Workflow AI can now answer questions about your contacts, versions, and performance', 'You can now ask Workflow AI what happened in a workflow, and it will explain it clearly. The chat can trace a contact’s path, follow a contact across workflows, compare versions, compare workflows, and generate a PDF report. This helps you avoid jumping between Enrollment History...', '<p>You can now ask Workflow AI what happened in a workflow, and it will explain it clearly. The chat can trace a contact’s path, follow a contact across workflows, compare versions, compare workflows, and generate a PDF report. This helps you avoid jumping between Enrollment History, Execution Logs, and Version History to piece together what happened.</p>
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
</ul>
<p><strong>No action is needed.</strong> Your existing products, sites, and checkouts keep working as before.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-11-06T13:13:22.000Z'),
('wp-1687', 'Canada and Morocco time zone updates', 'Overview Several regions have changed how they observe time. Leadli now supports the updated rules wherever time zones are used. British Columbia, Alberta, and Manitoba no longer fall back one hour on November 1, 2026 and will stay on permanent daylight time. Morocco has moved to...', '<h2>Overview</h2>
<p>Several regions have changed how they observe time. Leadli now supports the updated rules wherever time zones are used. British Columbia, Alberta, and Manitoba no longer fall back one hour on November 1, 2026 and will stay on permanent daylight time. Morocco has moved to permanent UTC+0. Using the correct time zone keeps appointments, notifications, and workflows aligned with local time.</p>
<h2>What’s new</h2>
<ul>
<li><strong>New time zone for British Columbia</strong><br />America/Vancouver is now available as a time zone option and stays on UTC-7 year-round, with no fall back on November 1, 2026.</li>
<li><strong>Updated time zones for Alberta, Manitoba, and Morocco</strong><br />America/Edmonton (Alberta) now follows permanent UTC-6 from November 1, 2026.<br />America/Winnipeg (Manitoba) now follows permanent UTC-5 from November 1, 2026.<br />Africa/Casablanca (Morocco) now follows permanent UTC+0, in effect since September 20, 2026.</li>
<li><strong>Accurate times across modules</strong><br />The updated rules apply wherever these time zones are used, including scheduling, notifications, and profiles, so times no longer drift by an hour.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>Wherever you set a time zone in the app (for example, the location time zone in Business Profile), select the one that matches your region: America/Vancouver, America/Edmonton, America/Winnipeg, or Africa/Casablanca.</li>
<li>If you are using a U.S. zone such as US/Mountain or America/Los_Angeles as a stand-in, switch to the matching zone listed above.</li>
<li>Review existing contacts that are still on a U.S. zone and update their Time Zone. Existing contacts and settings are not changed automatically, because US/Mountain and America/Los_Angeles are also used by businesses in the United States.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Appointments and notifications reach customers at the correct local time.</li>
<li>Workflows that depend on time of day run when you expect them to.</li>
<li>Less manual work is needed to match the new local time rules.</li>
<li>Your U.S. contacts stay unchanged, since no time zones are switched automatically.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-11-06T11:03:49.000Z'),
('wp-1686', 'Facebook integration update: Marketplace migration and multiple account support', 'Overview This update adds support for connecting and managing multiple Facebook accounts and Pages inside a single Leadli sub-account. You can connect more than one Facebook account, and each account can include multiple Pages. This helps you manage everything without disconnecti...', '<h2>Overview</h2>
<p>This update adds support for connecting and managing multiple Facebook accounts and Pages inside a single Leadli sub-account.</p>
<p>You can connect more than one Facebook account, and each account can include multiple Pages. This helps you manage everything without disconnecting existing integrations or switching accounts repeatedly.</p>
<p>The Facebook integration has also moved to the Marketplace architecture to improve integration management, stability, and security (including more secure token storage).</p>
<h2>What’s new</h2>
<ul>
<li><strong>Multiple Facebook account connections:</strong> Connect multiple Facebook accounts to the same sub-account, and connect multiple Pages under each account.</li>
<li><strong>Messaging across multiple Pages:</strong> Sync and manage messages across connected Pages, including Pages from different Facebook accounts.</li>
<li><strong>Lead sync across connected Pages:</strong> Sync leads from multiple connected Pages so you can handle inbound leads from different accounts in one place.</li>
<li><strong>Automations across multiple Pages:</strong> Run supported automations across connected Pages without setting up separate integrations for each Facebook account.</li>
<li><strong>Marketplace migration:</strong> The Facebook integration is now available through the Marketplace architecture, which improves stability, security, and the connection/authorization experience.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Open <strong>Labs</strong> and enable: <em>Facebook marketplace migration &amp; multiple account support</em>.</li>
<li>Go to <strong>Settings</strong> → <strong>Integrations</strong>.</li>
<li>Search for <strong>Facebook</strong> and select it.</li>
<li>Choose the option to connect an additional Facebook account.</li>
<li>Complete the Facebook authorization flow.</li>
<li>Select the Facebook Pages you want to connect and grant the requested permissions.</li>
<li>After connecting, you can use your accounts and Pages with supported features like lead sync, messaging, and automations.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li><strong>Centralized management:</strong> Manage multiple Facebook accounts and their Pages from one sub-account.</li>
<li><strong>More flexibility:</strong> Support multiple brands, locations, or business identities.</li>
<li><strong>Less repetitive work:</strong> Reduce the need to disconnect and reconnect accounts.</li>
<li><strong>Better security:</strong> Benefit from Marketplace-based token storage and management.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>Existing integrations:</strong> Existing Facebook connections are being migrated to the Marketplace as part of this change. You do not need to manually disconnect them.</li>
<li><strong>Facebook permissions:</strong> Authorization and permissions depend on Meta’s requirements.</li>
<li><strong>Page availability:</strong> Available Pages and assets depend on the permissions granted during authorization.</li>
<li><strong>Shops and ad accounts:</strong> These currently support only a single Facebook account.</li>
<li><strong>Current support includes:</strong> lead sync, messaging across Pages from different accounts, and automations.</li>
</ul>
<h2>What’s next</h2>
<p>Next, Facebook connections will be unified with Social Planner to simplify connection management and reduce complexity. The goal is to have a single Facebook connection that powers all supported features with a consistent experience.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-11-04T11:37:08.000Z'),
('wp-1685', 'GPT-6 Sol is now the recommended model for Conversation AI', 'Leadli Conversation AI now recommends GPT-6 Sol for prompt-based agents. It is tuned to give more accurate answers than GPT-4.1 at about the same cost per reply. Key capabilities Recommended by default: GPT-6 Sol appears first in the Model menu and is marked as recommended. New a...', '<p>Leadli Conversation AI now recommends GPT-6 Sol for prompt-based agents. It is tuned to give more accurate answers than GPT-4.1 at about the same cost per reply.</p>
<h2>Key capabilities</h2>
<ul>
<li><strong>Recommended by default:</strong> GPT-6 Sol appears first in the Model menu and is marked as recommended.</li>
<li><strong>New agents use it automatically:</strong> New prompt-based agents start on GPT-6 Sol.</li>
<li><strong>Existing agents are unchanged:</strong> Current agents keep the model you previously selected.</li>
<li><strong>Higher accuracy at similar cost:</strong> Internal evaluation improved from 96.3% (GPT-4.1) to 98.4% (GPT-6 Sol), with similar per-reply cost.</li>
<li><strong>Fast replies:</strong> Typical generation time is about 1.68s, with the slowest 5% around 2.19s.</li>
</ul>
<h2>Changes to older models</h2>
<ul>
<li><strong>GPT-5 and GPT-5 Mini:</strong> These are deprecated. Agents that used them already run on GPT-6 Sol, with reply generation up to 4.5× faster.</li>
<li><strong>GPT-4.1:</strong> This model is being retired. If you are using GPT-4.1, switch the agent to GPT-6 Sol.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Go to <strong>AI Agents → Conversation AI</strong> and open your agent.</li>
<li>On the <strong>Build</strong> tab, open the <strong>Model</strong> menu.</li>
<li>Select <strong>GPT-6 Sol</strong>.</li>
<li>Click <strong>Save</strong>, then run a quick check in <strong>Test your agent</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li><strong>Better answers by default:</strong> New agents start on the most accurate model available.</li>
<li><strong>No added cost:</strong> Accuracy improves without a meaningful increase in cost per reply.</li>
<li><strong>Faster responses for older agents:</strong> Agents previously on GPT-5 variants see faster reply generation.</li>
<li><strong>Simpler transition:</strong> Moving off GPT-4.1 is straightforward before it is retired.</li>
</ul>
<h2>Important notes</h2>
<ul>
<li><strong>Test after switching:</strong> Each model has a slightly different writing style, so test before finalizing changes.</li>
<li><strong>Scope:</strong> This applies to prompt-based Conversation AI agents.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-03T14:19:03.000Z'),
('wp-1684', 'Community analytics dashboard is now available', 'You can now review community performance in one place with the Analytics dashboard. It includes revenue, membership, traffic, and engagement metrics, plus date filters and export options. What’s new Community Analytics dashboard A dedicated analytics section is available under Se...', '<p>You can now review community performance in one place with the Analytics dashboard. It includes revenue, membership, traffic, and engagement metrics, plus date filters and export options.</p>
<h2>What’s new</h2>
<h3>Community Analytics dashboard</h3>
<p>A dedicated analytics section is available under <strong>Settings → Analytics</strong>. It provides a single view of key community performance data.</p>
<h3>Key performance metrics</h3>
<p>The dashboard includes headline metrics such as:</p>
<ul>
<li><strong>Total Earnings</strong>: Net transaction revenue attributed to the community (purchases minus refunds/chargebacks), shown in the sub-account’s currency.</li>
<li><strong>Total Members</strong>: Current active membership count, with new joins in the selected period shown separately.</li>
<li><strong>Inactive Members</strong>: Active members with no tracked activity in the selected period. Includes an export option to download inactive members as a CSV for follow-up.</li>
<li><strong>Invitations Pending</strong>: Email invites still outstanding as of the end of the selected date range.</li>
</ul>
<p>Metrics also include a comparison against the previous equal-length period. If the prior period value is 0, the dashboard shows N/A for the comparison.</p>
<h3>Date filters</h3>
<p>You can filter the entire dashboard by date range, including Today, Yesterday, 7 days, 30 days, 90 days, 12 months, or a custom range. The default view is the last 30 days.</p>
<h3>Traffic sources</h3>
<p>Traffic is broken down by source (for example: Direct, Instagram, YouTube, Facebook, LinkedIn, and Other). The dashboard shows the top sources by volume and groups the remainder into Other.</p>
<h3>Peak activity hours</h3>
<p>A day-by-hour heatmap shows when members are most active, based on the community’s timezone. Use this to schedule posts, events, and live sessions when engagement is highest.</p>
<h3>Engagement</h3>
<p>Engagement reporting includes Posts, Comments, and Reactions, plus additional interactions such as poll votes and event RSVPs. A trend chart shows total interactions over the selected date range and compares it to the prior period.</p>
<h2>How to access</h2>
<ol>
<li>Open your community settings.</li>
<li>Select <strong>Analytics</strong> from the left sidebar.</li>
<li>Choose a date range using the filter at the top.</li>
<li>Review metrics, traffic, peak hours, and engagement.</li>
<li>Use the export option under Inactive Members if you need a CSV for outreach.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Traffic page-view capture is rolling out. Counts populate as visits are recorded going forward; historical traffic is not backfilled.</li>
<li>Unique visitors are counted by user ID, with a hashed IP fingerprint as a fallback. Bots and crawlers are excluded.</li>
<li>Time buckets use the community’s configured timezone.</li>
<li>Earnings are shown in the sub-account’s local currency.</li>
<li>Additional improvements to Community Analytics are planned based on feedback from this release.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T16:32:19.000Z'),
('wp-1683', 'Paid channels for communities', 'Private channels can now be visible, paid, or both. This makes it easier to promote private spaces and offer paid access without manual steps. What’s new Visible private channels When creating or editing a private channel, admins can choose one of these visibility modes: Visible:...', '<p>Private channels can now be visible, paid, or both. This makes it easier to promote private spaces and offer paid access without manual steps.</p>
<h2>What’s new</h2>
<h3>Visible private channels</h3>
<p>When creating or editing a private channel, admins can choose one of these visibility modes:</p>
<ul>
<li><strong>Visible:</strong> The channel appears in the sidebar for all members. Non-members can see the channel name and description, but they can’t access posts until they join.</li>
<li><strong>Hidden:</strong> The channel stays off the list for non-members, keeping it fully private.</li>
</ul>
<p>Visible private channels appear in the sidebar with a lock indicator until someone joins.</p>
<h3>Paid private channels</h3>
<p>Admins can charge members to join a private channel. During channel creation, choose one of these pricing options:</p>
<ul>
<li><strong>Free:</strong> No charge to join (default).</li>
<li><strong>Recurring:</strong> Monthly and/or annual subscription.</li>
<li><strong>One-time:</strong> A single payment for permanent access.</li>
</ul>
<p>Recurring pricing supports multiple currencies with configurable monthly and annual pricing. Test Mode is available to verify the payment flow before going live.</p>
<h3>Self-serve member payment flow</h3>
<p>When a member clicks a visible paid channel, they can review the channel details (description, member count, and managers) and complete payment to join. Members choose a billing cycle, enter billing details, and submit payment without requiring manual access.</p>
<h3>Mobile support</h3>
<p>Paid channels are supported in the mobile app. Members can review paid channel details and complete enrollment from their phone.</p>
<h2>How to configure</h2>
<ul>
<li>Click the + button next to Channels in the sidebar.</li>
<li>Select <em>Create a channel</em> for conversations and updates.</li>
<li>Step 1/2: Set the channel name, icon, and description. Enable <em>Private channel</em>, then choose <em>Visible</em> or <em>Hidden</em>. Optionally enable <em>Read Only Channel</em>.</li>
<li>Step 2/2: Select pricing (Free, Recurring, or One-time). For paid channels, configure currency, billing options (monthly/annually), and pricing. Optionally enable <em>Test Mode</em>.</li>
<li>Click <em>Create Channel</em>.</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, private channels were always hidden and free, which limited how admins could promote exclusive content or charge for access. With visible and paid options, admins can surface private spaces in the sidebar and allow members to pay and join on their own.</p>
<h2>Notes</h2>
<ul>
<li>Paid channels support recurring (monthly/annually) and one-time pricing.</li>
<li>Multiple currencies are supported.</li>
<li>Test Mode lets admins verify the payment flow without real charges.</li>
<li>Read-only channels can also be made visible and/or paid.</li>
<li>Available on both web and mobile.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T12:32:06.000Z'),
('wp-1682', 'Multiple pricing plans in Leadli Communities', 'Community monetization has been upgraded. You can now create multiple pricing plans with different benefits and access levels inside a single community. This lets you offer options like Basic, Pro, and VIP without splitting your community. Create and manage multiple pricing plans...', '<p>Community monetization has been upgraded. You can now create multiple pricing plans with different benefits and access levels inside a single community. This lets you offer options like Basic, Pro, and VIP without splitting your community.</p>
<h2>Create and manage multiple pricing plans</h2>
<p>Create pricing plans from <strong>Settings &gt; Subscriptions</strong>. Each plan can have its own name, description, price, billing frequency, currency, and benefits.</p>
<p>You can also:</p>
<ul>
<li>Activate or deactivate plans</li>
<li>Reorder plans</li>
<li>Highlight a plan as <strong>Most Popular</strong></li>
<li>View member counts for each plan</li>
</ul>
<h2>Bundle access and content into plans</h2>
<p>Each plan can include access to specific items so members get the right experience automatically. Configure what is included during plan creation (Benefits tab):</p>
<ul>
<li><strong>Private channels</strong> (grant access to selected private channels)</li>
<li><strong>Paid events</strong> (include events without separate purchases)</li>
<li><strong>Paid and private courses</strong> (bundle courses without manual access grants)</li>
</ul>
<p>Example: Basic includes general access, Pro adds private channels and premium courses, and VIP includes everything (including paid events).</p>
<h2>Let members switch plans</h2>
<p>Members can compare available plans, subscribe, and switch plans at any time. Their current subscription remains active until the new one is confirmed. They can also review their plan details, payment method, and next billing date from the subscription management page.</p>
<h2>How to configure</h2>
<ol>
<li>Go to <strong>Settings &gt; Subscriptions</strong>.</li>
<li>Set <strong>Access</strong> (choose included channels, events, and courses, or select full access).</li>
<li>Fill in <strong>Details</strong> (plan name and description).</li>
<li>Set <strong>Pricing</strong> (frequency, currency, price, and optional free trial).</li>
<li>Review <strong>Benefits</strong> (what members will see).</li>
<li><strong>Publish</strong> and activate the plan. Optionally mark one plan as Most Popular.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Plans support weekly, monthly, yearly, and one-time pricing.</li>
<li>Multiple currencies are supported.</li>
<li>Free trials can be configured per plan.</li>
<li>Members can switch plans at any time; the existing subscription remains active until the new one is confirmed.</li>
<li>Admins can reorder plans and highlight one as Most Popular.</li>
<li>Free plan configuration is planned, allowing you to define what is included in the free tier alongside paid plans.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T08:37:58.000Z'),
('wp-1681', 'Ask AI Mobile: Connectors', 'Connectors let Ask AI work with the apps your team already uses, directly from your phone. Overview You can now set up and manage Connectors in the Leadli mobile app inside Ask AI. This makes it easier to connect accounts, fix expired logins, and choose which tools Ask AI can use...', '<p>Connectors let Ask AI work with the apps your team already uses, directly from your phone.</p>
<h2>Overview</h2>
<p>You can now set up and manage Connectors in the Leadli mobile app inside Ask AI. This makes it easier to connect accounts, fix expired logins, and choose which tools Ask AI can use while you are away from your desk.</p>
<h2>What you can do</h2>
<ul>
<li><strong>View connected apps:</strong> See every connected app, how many accounts are connected, and how many tools are enabled.</li>
<li><strong>Browse and connect new apps:</strong> Search the app catalog and connect a new app in a few taps.</li>
<li><strong>Sign in securely:</strong> For most apps, sign-in happens on the app provider’s page in a secure in-app browser.</li>
<li><strong>Control tool access:</strong> Select the exact tools Ask AI can use for each app.</li>
<li><strong>Add a custom MCP server:</strong> Enter a name and URL to connect your own server. MCP (Model Context Protocol) is a standard way for AI assistants to communicate with other apps.</li>
<li><strong>Stay in sync:</strong> Apps you connect on the web appear on mobile, and apps you connect on mobile appear on the web.</li>
</ul>
<h2>Why it helps</h2>
<ul>
<li><strong>Save time:</strong> Connect or repair app access quickly from your phone.</li>
<li><strong>Stay in control:</strong> Decide which tools Ask AI can use, per app.</li>
<li><strong>Keep work moving:</strong> Reconnect an expired account without waiting to return to your computer.</li>
<li><strong>Keep accounts private:</strong> The accounts you connect are only visible to you. Other users in the sub-account do not see them.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Open <strong>Ask AI</strong> in the Leadli mobile app.</li>
<li>Open <strong>Customize</strong>, then select <strong>Connectors</strong>.</li>
<li>On the <strong>Browse</strong> tab, choose an app and select <strong>Connect</strong>.</li>
<li>Sign in when prompted, choose the account, and select the tools you want Ask AI to use.</li>
<li>Select <strong>Save</strong>, then return to Ask AI and start using it.</li>
</ol>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Status:</strong> Public (for users with Ask AI access)</li>
<li><strong>Support:</strong> Leadli, LeadConnector, and white-label apps</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>Who can use it:</strong> Anyone with access to Ask AI in the mobile app.</li>
<li><strong>Sub-accounts only:</strong> Connectors are configured per sub-account. At agency level, you will be asked to switch to a sub-account first.</li>
<li><strong>Connection methods:</strong> Most apps use a standard sign-in page. Some require credentials or basic details. Some do not require an account.</li>
<li><strong>Custom MCP requirements:</strong> The server URL must start with <code>https://</code> or <code>http://</code>.</li>
<li><strong>Enabling a connector:</strong> A connector needs a connected account and at least one tool selected.</li>
<li><strong>Saving changes:</strong> If you leave without saving, your changes are discarded.</li>
<li><strong>Deleting a custom MCP server:</strong> Deleting it also removes every account connected to it and cannot be undone.</li>
<li><strong>Offline behavior:</strong> You may see the last loaded list with a refresh warning until you are back online.</li>
</ul>
<h2>Feedback</h2>
<ul>
<li>Speak with us: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:59:07.000Z'),
('wp-1680', 'Ask AI in the mobile app: view a contact summary from the contact screen', 'Ask AI now opens from any contact’s details screen with a summary of that relationship already visible. You can prepare for an upcoming meeting, get a recap, or dictate a note without leaving the contact. The problem this solves When you open a contact in the middle of a call or ...', '<p>Ask AI now opens from any contact’s details screen with a summary of that relationship already visible. You can prepare for an upcoming meeting, get a recap, or dictate a note without leaving the contact.</p>
<h2>The problem this solves</h2>
<p>When you open a contact in the middle of a call or chat, it can be hard to quickly understand what is happening next. You may need to check messages, appointments, opportunities, and tasks one at a time. Notes may also be skipped because typing on a phone is slow.</p>
<h2>What’s new</h2>
<p>Tap the Ask AI icon at the top of any contact to open a summary card for that contact. The card is built from your actual account data.</p>
<ul>
<li><strong>Last message:</strong> the channel and how long ago it was sent</li>
<li><strong>Next appointment:</strong> the status (including custom statuses) and a “+N more” indicator when more appointments are coming up</li>
<li><strong>Biggest open deal:</strong> the pipeline and stage, plus the number of days since it last moved</li>
<li><strong>Open tasks:</strong> including an indicator for overdue tasks</li>
</ul>
<p>You can tap any row to open that record in its normal screen. Below the card are three actions: <strong>Prep me for next appointment</strong>, <strong>Summarize this contact</strong>, and <strong>Dictate to add a note</strong>. Dictation creates a proposed note (and a task if needed). Nothing is saved until you approve it.</p>
<h2>Why it matters</h2>
<ul>
<li><strong>Save time:</strong> view key contact activity in one place instead of switching between multiple screens.</li>
<li><strong>Prepare faster:</strong> get a short briefing before your next appointment.</li>
<li><strong>Capture notes more reliably:</strong> dictate notes on mobile and approve them quickly.</li>
<li><strong>Stay up to date:</strong> Ask AI reads the contact’s latest records each time you open it.</li>
<li><strong>Keep control:</strong> Ask AI only runs when you request it, and nothing is saved without approval.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open any contact from Contacts, Conversations, or search.</li>
<li>Tap the Ask AI icon in the top bar to view the contact summary card.</li>
<li>Choose an action (Prep me, Summarize, or Dictate) or type your own question about the contact.</li>
</ol>
<h2>What’s next</h2>
<p>This release adds a way for different parts of the app to open Ask AI for a specific record. Contacts is the first screen to use it, and more screens will follow.</p>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Release date:</strong> October 2026</li>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Leadli:</strong> Available</li>
<li><strong>LeadConnector:</strong> Available</li>
<li><strong>White-label app:</strong> Available</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Works on iOS and Android for users who have Ask AI access. There is no separate permission for this feature.</li>
<li>The card only shows conversations, appointments, deals, deal values, and tasks the user has permission to see.</li>
<li>If your account uses a different name for contacts (for example, “patient”), the app uses that name.</li>
<li>“Prep me” appears when there is an appointment in the next 7 days. “Summarize” is offered for every contact.</li>
<li>Offline, the card shows what is already on your phone. If nothing has loaded, it may show “Couldn’t load details”.</li>
<li>If a contact was deleted or you no longer have access, Ask AI will indicate that instead of showing a summary.</li>
<li>Each time you open Ask AI from a contact, a new chat starts. After your first message, you can start over using the plus button.</li>
<li>Voice mode is not available in a contact chat yet. Use “Dictate to add a note” instead.</li>
<li>Deal amounts in AI answers show as plain numbers, without a currency symbol.</li>
</ul>
<h2>Contact</h2>
<p>Speak with us: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:55:59.000Z'),
('wp-1679', 'Ask AI on iOS: Action Button shortcuts', 'Ask AI now supports three iOS shortcuts: New Chat, Dictation, and Voice Mode. You can assign one to your iPhone Action Button, or launch it with Siri or Spotlight, so Ask AI opens ready to use. The problem Good ideas often come up when your hands are busy, such as walking to a me...', '<p>Ask AI now supports three iOS shortcuts: New Chat, Dictation, and Voice Mode. You can assign one to your iPhone Action Button, or launch it with Siri or Spotlight, so Ask AI opens ready to use.</p>
<h2>The problem</h2>
<p>Good ideas often come up when your hands are busy, such as walking to a meeting, driving between jobs, or right after a client call. Opening your phone and navigating to Ask AI can take too many steps, and it is easy to lose the thought.</p>
<h2>The update</h2>
<p>You can choose an Ask AI shortcut for the Action Button. One press opens Leadli (even if it was closed), starts a new chat, and for Dictation and Voice Mode it turns on the microphone.</p>
<p>You can also start it with Siri by saying <code>Start voice mode in &lt;app name&gt;</code>, or find the shortcuts in Spotlight. If a voice or dictation session is already running, it will continue without interruption.</p>
<h2>Benefits</h2>
<ul>
<li><strong>Faster access:</strong> go from a locked phone to Ask AI in seconds.</li>
<li><strong>Hands-free use:</strong> dictate notes or talk through ideas while you are on the move.</li>
<li><strong>New chat each time:</strong> each press starts a fresh conversation so topics do not mix.</li>
<li><strong>Works with Siri and Spotlight:</strong> you can use it even without an Action Button.</li>
<li><strong>Built-in safeguards:</strong> normal consent and access checks still apply.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li><strong>Open Settings:</strong> iPhone Settings → Action Button, then swipe to Shortcut.</li>
<li><strong>Choose the shortcut:</strong> tap Choose a Shortcut, select Leadli (or your app name), then pick New Chat, Dictation, or Voice Mode.</li>
<li><strong>Use it:</strong> press and hold the Action Button to open Ask AI. If you do not have an Action Button, you can say “Start a new chat in &lt;app name&gt;” to Siri.</li>
</ol>
<h2>Release and availability</h2>
<ul>
<li><strong>Release date:</strong> October 2026</li>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Platform:</strong> iOS only (Action Button requires iPhone 15 Pro or later; Siri and Spotlight work on iOS 16.6+)</li>
<li><strong>Status:</strong> Public (for accounts with Ask AI enabled)</li>
<li><strong>Leadli app:</strong> Yes</li>
<li><strong>LeadConnector:</strong> Yes</li>
<li><strong>White-label app:</strong> Yes</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:30:12.000Z'),
('wp-1678', 'Ask AI Mobile: Home Screen Widget', 'The Ask AI home screen widget adds a chat bar, a Voice button, and a Camera button to your home screen. One tap opens a new Ask AI chat so you can type, talk, or ask about a photo. What this solves When you need to use Ask AI, you often have to unlock your phone, find the app, op...', '<p>The Ask AI home screen widget adds a chat bar, a Voice button, and a Camera button to your home screen. One tap opens a new Ask AI chat so you can type, talk, or ask about a photo.</p>
<h3>What this solves</h3>
<p>When you need to use Ask AI, you often have to unlock your phone, find the app, open Ask AI, start a new chat, and then choose how to ask. If your question involves something you can see (like a document, receipt, or job site), you also have to take a photo and attach it first.</p>
<h3>How it works</h3>
<p>Add the Ask AI widget to your home screen to start faster:</p>
<ul>
<li><strong>Chat bar:</strong> Starts a new chat with the keyboard ready.</li>
<li><strong>Voice:</strong> Starts a new chat in hands-free voice mode.</li>
<li><strong>Camera:</strong> Opens your camera, attaches the photo to a new chat, and waits for your question.</li>
</ul>
<p>The widget uses your app language and brand colors in light and dark mode. If you tap the widget while signed out, the action will resume after you sign in.</p>
<h3>Why it helps</h3>
<ul>
<li><strong>Saves time:</strong> Go from your home screen to a question in one tap.</li>
<li><strong>Ask about what you see:</strong> Take a photo of a document, product, or site and ask immediately.</li>
<li><strong>Hands-free option:</strong> Start a voice conversation while you are on the move.</li>
<li><strong>Stays on-brand:</strong> Uses your brand colors, including in white-labeled apps.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li><strong>Open widgets:</strong> Long-press an empty spot on your home screen and tap <strong>+</strong> (iOS) or <strong>Widgets</strong> (Android).</li>
<li><strong>Add the widget:</strong> Search for your app, select the Ask AI widget, and add it.</li>
<li><strong>Use it:</strong> Tap Chat bar, Voice, or Camera to start a new Ask AI chat.</li>
</ol>
<h3>Rollout and availability</h3>
<ul>
<li><strong>Release date:</strong> October 2026</li>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Platforms:</strong> iOS (16.6+) and Android</li>
<li><strong>Status:</strong> Public (for accounts with Ask AI enabled)</li>
<li><strong>Leadli:</strong> Yes</li>
<li><strong>LeadConnector:</strong> Yes</li>
<li><strong>White-label app:</strong> Opt-in (enabled per company with the &#8220;Ask AI Home Widget&#8221; switch in the service dashboard; off by default)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:24:54.000Z'),
('wp-1677', 'Mobile app update: New Ask AI chat shortcut', 'A new Ask AI shortcut is now available in the Leadli mobile app. It lets you start a brand-new Ask AI chat from your phone’s home screen in one tap. What changed You can open a new, empty Ask AI chat from: Your app icon quick actions (long-press the app icon) The Quick Actions ca...', '<p>A new Ask AI shortcut is now available in the Leadli mobile app. It lets you start a brand-new Ask AI chat from your phone’s home screen in one tap.</p>
<h3>What changed</h3>
<p>You can open a new, empty Ask AI chat from:</p>
<ul>
<li>Your app icon quick actions (long-press the app icon)</li>
<li>The Quick Actions card in the app</li>
<li>Your phone’s search</li>
</ul>
<p>Each time you use the shortcut, it opens a fresh chat so you are not dropped into a previous conversation.</p>
<h3>Why it matters</h3>
<ul>
<li><strong>Faster access:</strong> go from your home screen to a new question quickly.</li>
<li><strong>Cleaner chats:</strong> starting with an empty thread helps keep topics separate.</li>
<li><strong>Consistent entry points:</strong> the same action is available from multiple places on your phone.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Long-press the Leadli app icon on your phone’s home screen.</li>
<li>Tap <strong>New Ask AI Chat</strong>. You can also access it from the Quick Actions card or search.</li>
<li>Type your question to begin a new chat.</li>
</ol>
<h3>Availability</h3>
<ul>
<li><strong>Release window:</strong> October 2026</li>
<li><strong>Minimum version:</strong> v4.27.0+</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Supported apps:</strong> Leadli app, LeadConnector app, and white-label app</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:21:58.000Z'),
('wp-1676', 'New templates are available in Leadli', 'New web templates are now available in Leadli. You can use them for websites, funnels, and email campaigns. Each template is customizable and designed to help you launch faster. New templates added Survey templates (1) Other  Membership Dues Facebook ad templates (2) Automotive...', '<p>New web templates are now available in Leadli. You can use them for websites, funnels, and email campaigns. Each template is customizable and designed to help you launch faster.</p>
<h2>New templates added</h2>
<ul>
<li><strong>Survey templates (1)</strong>
<ul>
<li>Other  Membership Dues</li>
</ul>
</li>
<li><strong>Facebook ad templates (2)</strong>
<ul>
<li>Automotive  Automotive Dealership &amp; Sales</li>
<li>Marketing Agency  B2B Marketing Agency</li>
</ul>
</li>
<li><strong>Google ad templates (5)</strong>
<ul>
<li>Other  Recruiting Services</li>
<li>Medical  Direct Primary Care Provider</li>
<li>Marketing Agency  Event Marketing</li>
<li>Legal  Intellectual Property Law Firm</li>
<li>Insurance  Travel Insurance</li>
</ul>
</li>
<li><strong>LinkedIn ad templates (7)</strong>
<ul>
<li>Business Coaching &amp; Consulting  Grant Writing Consultant</li>
<li>Marketing Agency  B2B Appointment Setting Agency</li>
<li>Finance  Business Valuation Firm</li>
<li>Creative  UX/UI Design Agency</li>
<li>Marketing Agency  Executive LinkedIn Ghostwriter</li>
<li>Real Estate  Commercial Real Estate Broker</li>
<li>Real Estate  Industrial Real Estate Broker</li>
</ul>
</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-31T01:12:07.000Z'),
('wp-1675', 'SaaS usage limits: set client limits and charge for extra usage', 'What’s new Leadli now lets you set usage limits for each of your SaaS clients and choose what happens when they reach the limit. For example, you can bill for extra usage or stop the action. Usage limits are available first for Voice AI and Conversation AI. Clients can view their...', '<p><strong>What’s new</strong></p>
<p>Leadli now lets you set usage limits for each of your SaaS clients and choose what happens when they reach the limit. For example, you can bill for extra usage or stop the action. Usage limits are available first for Voice AI and Conversation AI.</p>
<ul>
<li><strong>Clients can view their usage:</strong> The billing page shows usage versus the limit, with clear indicators as they get close, and the dates when usage resets.</li>
<li><strong>You can monitor clients near their limit:</strong> In Manage Client, you can see all clients with limits in one place and filter by product or by percentage used.</li>
<li><strong>Set limits during onboarding:</strong> Add usage limits as an optional step when setting up a new client with rebilling.</li>
<li><strong>Clients can request a higher limit:</strong> If a client reaches a limit and cannot upgrade their plan, they can request an increase from the billing page or the limit prompt. You can review and approve or reject the request (with a reason) in Manage Client, the agency dashboard, and the SaaS Configurator.</li>
<li><strong>Notifications:</strong> You receive in-app and email notifications when a client requests a higher limit. Clients are notified when limits change, and when a request is rejected (including the reason).</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>This helps you stay in control of costs and capacity while keeping clients informed. When someone needs more, it becomes a clear request you can approve and charge for.</p>
<p><strong>Notes</strong></p>
<ul>
<li>Available to Pro agencies through Labs (beta).</li>
<li>Usage limits currently apply to Voice AI and Conversation AI only.</li>
<li>Only sub-account admins can view usage on the billing page and request a higher limit.</li>
<li>The “Request higher limit” option appears only for clients who cannot upgrade their SaaS plan. If they can upgrade, they will see an upgrade option instead.</li>
<li>Approving a request changes the client’s limit only. It does not change what happens when the limit is reached.</li>
<li>The Enable Rebilling flow and bulk actions do not support usage limits yet.</li>
</ul>
<p><strong>Coming soon</strong></p>
<ul>
<li>More products covered by usage limits (phone system, email, automations, and more).</li>
<li>Usage alerts at 50%, 80%, and 100% (in-app and email) for you and your client.</li>
<li>Usage limits added to the Enable Rebilling flow and bulk actions.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-30T12:46:14.000Z'),
('wp-1674', 'See call quality during calls and rate it after you hang up', 'Call quality can change for reasons outside the app, such as Wi-Fi, mobile signal, your device, or the other person’s connection. This update helps you see connection quality while you are on a call and share feedback after the call ends. What’s new A signal indicator appears on ...', '<p>Call quality can change for reasons outside the app, such as Wi-Fi, mobile signal, your device, or the other person’s connection. This update helps you see connection quality while you are on a call and share feedback after the call ends.</p>
<h3>What’s new</h3>
<ul>
<li>A signal indicator appears on the call screen so you can monitor connection quality while you talk.</li>
<li>You can open a connection summary with details about Network, Device, and Audio.</li>
<li>After the call, you can leave a quick rating to report how the call sounded.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Make or answer a phone call in the app. When the call connects, a four-bar indicator appears on the call screen and changes as your connection changes.</li>
<li>Tap the bars to open Connection quality. You will see a short summary (for example, “Your connection is good”), plus Network, Device, and Audio, each rated Good, Weak, or Poor. Device includes items like connection type, Wi-Fi strength, phone temperature, battery saver, and low data mode. Audio covers your microphone, incoming audio, and where sound is playing.</li>
<li>If the connection drops, you will see one tip that matches the issue (for example, move closer to your router, switch networks, or turn off battery saver). Under Get help, you can open quick answers for common problems such as “They can’t hear me,” “I can’t hear them,” and “Audio keeps breaking up.”</li>
<li>After you hang up, rate the call. A 4 or 5 star rating sends right away. A 3 or lower rating asks what went wrong (for example, “I couldn’t hear them,” “They couldn’t hear me,” “Choppy or robotic audio,” “Call dropped,” or “Something else” with an optional note). The rating sheet opens automatically at most once per week, but you can also choose the “Rate this call” option on the call end screen for other calls.</li>
</ol>
<h3>Availability</h3>
<ul>
<li>Version: 4.27.x+</li>
<li>Platforms: Leadli, LeadConnector, White-Label (self-serve)</li>
<li>Devices: iOS and Android</li>
</ul>
<h3>Good to know</h3>
<ul>
<li>If the call cuts out for a moment, a soft reconnect tone plays until it is back. This replaces the old vibration and banner on phone and WhatsApp calls.</li>
<li>Call ratings for WhatsApp calls are coming next.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-30T12:37:37.000Z'),
('wp-1673', 'Mobile: View every call recording in Leadli (not just the first)', 'Leadli mobile now shows every recording on a call, not just the first one. Each recording plays on its own and can have its own transcript, so transferred or multi-leg calls don’t hide the part you need. How to use this Open Recents, a contact’s Call Details, or the call in Conve...', '<p>Leadli mobile now shows every recording on a call, not just the first one. Each recording plays on its own and can have its own transcript, so transferred or multi-leg calls don’t hide the part you need.</p>
<p><strong>How to use this</strong></p>
<ol>
<li>Open Recents, a contact’s Call Details, or the call in Conversations.</li>
<li>Find a call that has more than one recording.</li>
<li>Play each recording (look for the 1/2 and 2/2 labels) and read the matching transcript in Conversations.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li>Calls with a single recording look the same as before.</li>
<li>A transcript appears only when one is available for that recording.</li>
<li>Available on Leadli, LeadConnector, and white-label mobile apps (iOS and Android) version 4.27.x or later.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-30T09:48:16.000Z'),
('wp-1672', 'See who answered each call on mobile in Leadli', 'You can now see who answered each call and which device they used. In the mobile app call details, Leadli shows the person who actually picked up the call (not just the user the conversation is assigned to). What''s new Answered by in call details: shows the teammate name, or the ...', '<p>You can now see who answered each call and which device they used.</p>
<p>In the mobile app call details, Leadli shows the person who actually picked up the call (not just the user the conversation is assigned to).</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Answered by</strong> in call details: shows the teammate name, or the phone number if no teammate answered</li>
<li><strong>Answering device</strong> at a glance: shows where it was picked up (web app, mobile app, phone number, or SIP)</li>
<li><strong>Works across call types</strong>: regular calls, IVR, and WhatsApp calls</li>
</ul>
<h2>Why it matters</h2>
<p>With ring groups and call forwarding, the assigned user and the person who answered can be different. Previously on mobile, it was not clear who took the call. This update makes it clear so you can follow up faster and coach more effectively.</p>
<h2>How to use</h2>
<ol>
<li>Open Conversations and open a conversation that includes a call</li>
<li>Long-press the call message and select <strong>Details</strong></li>
<li>Review <strong>Answered by</strong> and the device indicator</li>
</ol>
<h2>Availability</h2>
<ul>
<li><strong>Version:</strong> 4.27.x+</li>
<li><strong>Platforms:</strong> Leadli, LeadConnector, and White-Label (self-serve)</li>
<li><strong>Devices:</strong> iOS and Android</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>If a call is answered on a phone number, numbers are masked</li>
<li>If the device is unknown, no device indicator is shown</li>
</ul>
<h2>What&#8217;s next</h2>
<p>This same call context will be added to call logs so you can understand a call without opening Conversations.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-30T09:40:20.000Z'),
('wp-1671', 'Analyze videos in workflows with the AI Analyze Video action', 'Workflows can now analyze video using the AI Analyze Video action under AI Actions . Provide a video URL and a prompt, and the system will review the video and return a text response you can use in later steps. Note: This is a premium action. Each execution may have an additional...', '<p>Workflows can now analyze video using the <strong>AI Analyze Video</strong> action under <strong>AI Actions</strong>. Provide a video URL and a prompt, and the system will review the video and return a text response you can use in later steps.</p>
<p><strong>Note:</strong> This is a premium action. Each execution may have an additional charge.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Model options:</strong> Choose between two Gemini models (a default option and a lighter option).</li>
<li><strong>YouTube support:</strong> You can use public YouTube links, including standard and Shorts formats.</li>
<li><strong>Direct video files:</strong> You can also use public links to common formats like MP4 and MOV.</li>
<li><strong>Dynamic video URLs:</strong> You can insert a URL from an earlier step, a form submission, a webhook, or a custom value.</li>
<li><strong>Flexible prompts:</strong> Ask for a summary, a transcript, a timestamped list, or a simple yes/no check. Prompts can include custom values.</li>
<li><strong>Built-in testing:</strong> You can test the action in the builder using sample trigger data and review the response before publishing.</li>
</ul>
<h2>Pricing</h2>
<p>Video analysis is billed per execution based on tokens consumed. Cost depends mainly on the model you select, the video length, and the length of the response you request.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add <strong>AI Analyze Video</strong> from <strong>AI Actions</strong>.</li>
<li>Select the model.</li>
<li>Add a <strong>public</strong> video URL.</li>
<li>Write the analysis prompt (what to look for and how to respond).</li>
<li>Use the <strong>Test</strong> tab to run a quick test and review the response (optional).</li>
<li>Save the action and use the response in the steps that follow.</li>
</ol>
<p><strong>Important:</strong> The video URL must be public. Some sites block direct analysis from page links, so use a supported public video link instead.</p>
<h2>Why this matters</h2>
<p>Previously, a video link inside a workflow could not be automatically reviewed. With this action, workflows can read what is shown and said in the video, then take action based on the result.</p>
<p>You can save the output to a custom field, include it in an email or SMS, send it to a webhook, or pass it into another AI action.</p>
<h2>Good to know</h2>
<ul>
<li>Each execution analyzes a single video URL.</li>
<li>The response can include Markdown depending on your prompt. Ask for plain text if you need it.</li>
<li>Longer videos can take more time to process.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T19:32:30.000Z'),
('wp-1670', 'Service booking is now available in the Leadli Client Portal', 'Your clients can now discover, book, reschedule, and manage service appointments directly from the Leadli Client Portal. This keeps service booking and meeting management in one place, without separate booking links. What’s new Book services in the Client Portal — Clients can vie...', '<p>Your clients can now discover, book, reschedule, and manage service appointments directly from the Leadli Client Portal. This keeps service booking and meeting management in one place, without separate booking links.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Book services in the Client Portal</strong> — Clients can view available services, choose a date and time, and complete the booking from the portal.</li>
<li><strong>Faster booking</strong> — Client details are pre-filled, and your setup can allow booking one or multiple services.</li>
<li><strong>Reschedule and cancel</strong> — Clients can reschedule or cancel eligible bookings based on your calendar settings.</li>
<li><strong>All appointments in one view</strong> — Meetings and service bookings show together under <strong>Appointments</strong>, grouped into Upcoming and Past.</li>
<li><strong>Control visibility</strong> — You decide which service booking pages are available from the Client Portal.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, clients often needed separate booking links to schedule services. Now the Client Portal can be the central place where clients access services and manage appointments.</p>
<h2>How to enable it</h2>
<h3>Step 1: Enable service booking on a booking page</h3>
<ol>
<li>Go to <strong>Calendars → Services → Booking Pages</strong>.</li>
<li>Open the booking page you want to make available.</li>
<li>Under <strong>Client Portal</strong>, enable <strong>Allow booking from client portal</strong>.</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h3>Step 2: Enable Appointments in the Client Portal</h3>
<ol>
<li>Go to <strong>Memberships → Client Portal → Settings → App Permissions</strong>.</li>
<li>Enable <strong>Appointments</strong>.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<p><strong>Availability:</strong> Service Booking is available in the new Client Portal.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-29T15:31:27.000Z'),
('wp-1669', 'Test workflows directly in Leadli AI Builder', 'Leadli AI Builder can now run a real test of the workflow it just created or edited. You can start the test from the same chat and see the results on the canvas and in the chat. What’s new Test workflow from the chat : After AI Builder builds or edits a workflow, select Test work...', '<p>Leadli AI Builder can now run a real test of the workflow it just created or edited. You can start the test from the same chat and see the results on the canvas and in the chat.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Test workflow from the chat</strong>: After AI Builder builds or edits a workflow, select <em>Test workflow</em> to open the test panel.</li>
<li><strong>Watch the run live</strong>: Start the test run to see each step update on the canvas (Running, Success, Skipped, End) while the chat logs the steps that ran.</li>
<li><strong>Readable summary</strong>: When the run finishes, AI Builder summarizes what ran, what was skipped, and any missing data or errors.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Leadli Labs and enable <strong>The New Test Workflow</strong>.</li>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a workflow.</li>
<li>Open <strong>AI Builder</strong> and describe the workflow you want to build or the change you want to make.</li>
<li>When AI Builder finishes, click <strong>Test workflow</strong>.</li>
<li>Choose <strong>Enroll a contact</strong> (and pick a contact) or choose <strong>Test using events</strong>.</li>
<li>Click <strong>Start test run</strong>.</li>
<li>Review the summary, and click any step on the canvas to see its input and output.</li>
<li>Save and publish your workflow when you’re ready.</li>
</ol>
<p><strong>Important:</strong> The test runs real actions (for example, tags can be added, notes can be created, and messages can be sent). Use a test contact when you don’t want to affect a real customer.</p>
<h2>Why this matters</h2>
<p>This makes it easier to confirm your workflow works as expected without leaving the AI Builder chat or digging through execution logs.</p>
<h2>Good to know</h2>
<ul>
<li>Some actions may be skipped during a test run; the summary and canvas show what happened.</li>
<li>Testing is optional—you can still save and publish without running a test.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T14:33:26.000Z'),
('wp-1668', 'Web search is now available in the Leadli AI Agent action', 'You can now let your Leadli AI Agent search the web during a run. Enable Web search in the Built-in tools section, and the agent will look up information when it needs it. If you prefer, you can also provide specific URLs in your instructions so the agent can use those sources fi...', '<p>You can now let your Leadli AI Agent search the web during a run. Enable Web search in the Built-in tools section, and the agent will look up information when it needs it. If you prefer, you can also provide specific URLs in your instructions so the agent can use those sources first.</p>
<h2>What’s included</h2>
<h3>Built-in tools section</h3>
<ul>
<li>Built-in tools appears below Tools in the AI Agent action.</li>
<li>These are abilities the agent has by default, in addition to the tools you add to the action.</li>
</ul>
<h3>Web search</h3>
<ul>
<li>One toggle: Turn on Web search to allow the agent to search the web during a run.</li>
<li>Search only when needed: The agent uses web search when it needs information it does not already have.</li>
<li>Your sources: Add a URL to your Instructions, and the agent can refer to that page when relevant.</li>
<li>Mix and match: Provide trusted pages and allow web search for anything else.</li>
</ul>
<h3>More built-in tools</h3>
<p>Additional built-in tools will be added over time, including image and video generation.</p>
<h2>Pricing</h2>
<p>Web search is billed per search, in addition to the AI Agent action.</p>
<ul>
<li>OpenAI and Claude models: 1¢ per search</li>
<li>Gemini models: 1.4¢ per search</li>
</ul>
<h2>How to enable Web search</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Open a workflow and add (or open) an AI Agent action.</li>
<li>Open the Built-in tools section.</li>
<li>Turn on Web search.</li>
<li>(Optional) Add trusted URLs to your Instructions.</li>
<li>Save the action.</li>
</ol>
<h2>Example: answering rebate questions from a trusted source</h2>
<p>If leads ask about rebates and the details change often, you can point the agent to a reliable source. For example, you might add this instruction:</p>
<p>“If the lead asks about rebates, read <a href="https://www.energystar.gov/rebate-finder" rel="ugc nofollow noopener noreferrer" target="_blank">https://www.energystar.gov/rebate-finder</a> before you reply. For any other facts you need, search the web.”</p>
<p>This helps keep answers current without manual lookups.</p>
<h2>Notes</h2>
<ul>
<li>Each search is billed. If a run performs three searches, it is billed for three searches.</li>
<li>Web search provides information. To take action (for example, sending a message), the agent still needs the appropriate tools enabled.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-29T13:19:16.000Z'),
('wp-1667', 'AI Video Generation is now available in Leadli Workflows', 'AI Video Generation is now available in Leadli workflows You can now generate a short video directly from a workflow using the AI Video Generation action (under AI Actions). Provide a prompt, and the system generates a video, stores it at a public URL, and returns that URL for th...', '<h2>AI Video Generation is now available in Leadli workflows</h2>
<p>You can now generate a short video directly from a workflow using the <strong>AI Video Generation</strong> action (under AI Actions). Provide a prompt, and the system generates a video, stores it at a public URL, and returns that URL for the next steps in your workflow.</p>
<p><strong>Note:</strong> This is a premium action and each run includes an additional charge.</p>
<h3>Options</h3>
<ul>
<li><strong>Model:</strong> Veo 3.1 Quality or Veo 3.1 Fast</li>
<li><strong>Quality:</strong> Standard (720p) or High (1080p)</li>
<li><strong>Video size:</strong> Landscape (1920×1080) or Portrait (1080×1920)</li>
<li><strong>Length:</strong> 4, 6, or 8 seconds</li>
<li><strong>Audio:</strong> Optional AI-generated audio</li>
<li><strong>Reference images:</strong> Add up to 3 JPG or PNG images (8-second videos are required when using reference images)</li>
</ul>
<h3>Templates and prompts</h3>
<ul>
<li>Write your own prompt or insert data from a contact field, webhook payload, or a previous step</li>
<li>Use Enhance Prompt to expand a short prompt into a more detailed one</li>
<li>Start from a template such as Product Mockups, Social Post, Promo Flyer, or Lifestyle</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add <strong>AI Video Generation</strong> from AI Actions.</li>
<li>Choose your model and quality settings.</li>
<li>Enter your prompt (or insert a custom value).</li>
<li>Optionally add reference images and adjust additional settings (size, duration, audio).</li>
<li>Save the action and use the returned video URL in later steps (email, SMS, custom field, or webhook).</li>
</ol>
<h3>Pricing note</h3>
<p>Video generation is billed per execution. Cost depends on model, quality, duration, and whether audio is enabled. Treat any examples as estimates.</p>
<h3>Good to know</h3>
<ul>
<li>The generated video is stored at a public URL. Anyone with the link can access it, so avoid including sensitive customer data in prompts.</li>
<li>Videos are 4–8 seconds long.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T12:48:36.000Z'),
('wp-1666', 'Calendar view updates: settings panel, export, and staff colors', 'Overview The calendar view now has more display controls, easier exporting, and clearer event colors. These updates only change how the calendar looks and how you work with it. Availability, booking rules, and what customers see on the booking page stay the same. What’s changed C...', '<h2>Overview</h2>
<p>The calendar view now has more display controls, easier exporting, and clearer event colors. These updates only change how the calendar looks and how you work with it. Availability, booking rules, and what customers see on the booking page stay the same.</p>
<h2>What’s changed</h2>
<ul>
<li><strong>Calendar view settings panel:</strong> Open the three-dot menu next to “Manage view” and choose “Calendar view settings” to adjust display preferences. Your selections are saved for next time.</li>
<li><strong>Timezone setting moved:</strong> “View appointments in timezone” is now part of Calendar view settings. Any timezone you previously set carries over.</li>
<li><strong>More display preferences:</strong> Choose the default grid interval (15/30/60 minutes), grey out hours outside working time, hide empty rows and columns, and show buffer time.</li>
<li><strong>Staff colors for admins:</strong> Admins can set staff colors to make schedules easier to scan.</li>
<li><strong>Event color options:</strong> Color events by calendar, service, or assigned staff. The secondary color appears as a strip on the left.</li>
<li><strong>Export current view:</strong> Export the current calendar view (including filters and date range) to PDF or CSV from the same menu.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In the unified calendar, open the three-dot menu next to “Manage view”.</li>
<li>Select “Calendar view settings” and adjust your preferences.</li>
<li>If you’re an admin, open “Staff colors” to update staff color assignments.</li>
<li>To export, choose “Export to PDF” or “Export to CSV”.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Faster scanning and less clutter in busy calendars.</li>
<li>Clearer visual cues for working hours and buffers.</li>
<li>Exports make it easier to share schedules or work with calendar data elsewhere.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-29T12:19:59.000Z'),
('wp-1665', 'AI Agent skills are now available in Workflows', 'AI Agents can now use skills . A skill is a reusable set of instructions that the agent loads only when it needs them. You can create a skill once, keep it in a library, and attach it to any AI Agent action in Workflows. What’s new Skills section in the AI Agent action The Skills...', '<p>AI Agents can now use <strong>skills</strong>. A skill is a reusable set of instructions that the agent loads only when it needs them. You can create a skill once, keep it in a library, and attach it to any AI Agent action in Workflows.</p>
<h2>What’s new</h2>
<h3>Skills section in the AI Agent action</h3>
<ul>
<li>The Skills section appears below Tools in the AI Agent action.</li>
<li>Each attached skill is listed, and you can edit or detach it from the list.</li>
</ul>
<h3>Ways to add a skill</h3>
<ul>
<li><strong>Create with AI:</strong> Answer a few questions about what the skill should do, when to use it, and what it must not do. Then review and create it.</li>
<li><strong>Write skill instructions:</strong> Provide a name, when the agent should use it, and the instructions.</li>
<li><strong>Add an existing skill:</strong> Search your skill library and attach a skill you already made.</li>
</ul>
<h3>Built-in skills</h3>
<p>Every account includes built-in skills that you can attach, edit, or delete like any other skill:</p>
<ul>
<li><strong>Humanizer:</strong> Reduces common signs of AI-generated writing.</li>
<li><strong>Write-well:</strong> Keeps messages clear, simple, and direct.</li>
<li><strong>Cold-email:</strong> Helps write first-touch and follow-up emails for leads who have not replied.</li>
<li><strong>Sms-writer:</strong> Helps write short, natural text messages.</li>
</ul>
<h3>Loads only when relevant</h3>
<ul>
<li>On each run, the agent checks the skill names and their “when to use” lines.</li>
<li>Full instructions load only when a skill matches the situation.</li>
<li>If more than one skill matches, the agent can use them together.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Open a workflow and add (or open) an AI Agent action.</li>
<li>Open the Skills section.</li>
<li>Click <strong>Add skill</strong> and choose how you want to add it.</li>
<li>Review the skill and attach it.</li>
<li>Save the action.</li>
</ol>
<h2>Example: one agent for different lead situations</h2>
<p>A heating and cooling company follows up on every quote request with an email and a text message. Some leads have urgent issues and need a different response.</p>
<p>They keep the main instructions simple (send an email and an SMS to confirm the request and offer a time to talk), and then attach skills like:</p>
<ul>
<li>Cold-email</li>
<li>Sms-writer</li>
<li>A custom skill for urgent service requests (for example: “no heat”, “no cooling”, “gas smell”, or “water leak”)</li>
</ul>
<p>This helps the same AI Agent handle routine requests and urgent requests consistently.</p>
<h2>Why this matters</h2>
<ul>
<li>Your main instructions can stay short.</li>
<li>Rules that apply only sometimes can live in skills.</li>
<li>You can fix or improve a skill once and reuse it across AI Agents.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Skills can be shared across actions and agents.</li>
<li>Detaching removes a skill from one action; deleting removes it from the library.</li>
<li>Skills guide the agent, but the agent still needs the right tools (like Send SMS) to take action.</li>
<li>If a skill needs knowledge base information, include the knowledge base details in the skill and add the knowledge base search tool to the action.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:49:14.000Z'),
('wp-1664', 'Router action: run every matching workflow branch', 'Leadli now includes a Router action for workflows. It sends one contact through every branch they match, in the order you set. What changed Previously, If/Else would send a contact into the first matching branch and skip the rest. The Router action checks every branch and runs ea...', '<p>Leadli now includes a Router action for workflows. It sends one contact through every branch they match, in the order you set.</p>
<h2>What changed</h2>
<p>Previously, If/Else would send a contact into the first matching branch and skip the rest. The Router action checks every branch and runs each branch that matches, one after another.</p>
<h2>Branch types</h2>
<ul>
<li><strong>Custom rules:</strong> runs only when the branch conditions match.</li>
<li><strong>Always run:</strong> runs for every contact, with no conditions.</li>
<li><strong>Fallback:</strong> runs only when no other branch matches.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open an existing workflow (or create a new one).</li>
<li>Add the <strong>Router</strong> action.</li>
<li>For each branch, choose a branch type and set your conditions (if needed).</li>
<li>Add the actions that should run inside each branch.</li>
<li>Drag branches to set the run order (left to right).</li>
<li>Save the action, then test the workflow on a real event before publishing.</li>
</ol>
<h2>Example use case</h2>
<p>If a form lets a lead select multiple services (for example: HVAC, Plumbing, and Electrical), a Router can have one branch per service. When a lead selects multiple services, each matching branch runs so each team can receive the lead and trigger its next steps.</p>
<h2>Good to know</h2>
<ul>
<li>Branches run sequentially (not at the same time).</li>
<li>The Fallback branch runs only when no other branch matches.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:48:07.000Z'),
('wp-1663', 'Loop action is now available in Leadli workflows', 'You can now repeat the same set of workflow actions for each item in a list. The Loop action runs the steps inside it once per item, or once per number in a range. What’s included Loop Over : Choose a list of items or a range of numbers. Use items from earlier steps : Select an a...', '<p>You can now repeat the same set of workflow actions for each item in a list. The <strong>Loop</strong> action runs the steps inside it once per item, or once per number in a range.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Loop Over</strong>: Choose a list of items or a range of numbers.</li>
<li><strong>Use items from earlier steps</strong>: Select an array produced by a previous step (for example, data from an inbound webhook).</li>
<li><strong>Loop Item mapping</strong>: While inside the loop, use <em>Custom values &gt; Loop Item</em> to map fields from the current item into other actions.</li>
<li><strong>Range mode</strong>: Set a start and end number and run the steps that many times.</li>
<li><strong>Execution mode</strong>: Run iterations sequentially, or enable parallel execution when you want multiple iterations to run at the same time.</li>
<li><strong>Iteration results</strong>: The Test view shows the outcome for each iteration and each action inside the loop.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a workflow.</li>
<li>Click the <strong>+</strong> where the loop should start, then select <strong>Loop</strong>.</li>
<li>Under <strong>Loop Over</strong>, choose <em>A list of items</em> or <em>A range of numbers</em>.</li>
<li>If you chose a list, select the list from a previous step. If you chose a range, enter a start and end number.</li>
<li>Choose whether to run sequentially or enable parallel execution.</li>
<li>Save the action, then add the actions you want to repeat inside the loop container.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Example: one webhook creates multiple records</h2>
<p>If an inbound webhook sends one customer record with a list of services, you can use a loop to create one opportunity, one task, and one note per service item. After a test run, you’ll see one result per item in the Test view.</p>
<h2>Good to know</h2>
<ul>
<li>Only the actions placed inside the loop container repeat.</li>
<li>Range loops do not have list items, so Loop Item fields will be empty. Use the loop counter when you need the current number.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:42:07.000Z'),
('wp-1662', 'Work with workflows from your AI assistant in Leadli', 'You can now manage your workflows from your AI assistant. The workflows tools in the Leadli MCP server (private beta) let AI tools like Claude, ChatGPT, and Cursor search workflows, review what happened during runs, and help you build and publish workflows. What’s new Find workfl...', '<p>You can now manage your workflows from your AI assistant. The workflows tools in the Leadli MCP server (private beta) let AI tools like Claude, ChatGPT, and Cursor search workflows, review what happened during runs, and help you build and publish workflows.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Find workflows:</strong> Search by name, status, folder, or date.</li>
<li><strong>Read workflows:</strong> View a workflow’s full definition (triggers, steps, branches, and settings).</li>
<li><strong>Build workflows:</strong> Create a workflow from a description. The assistant checks for errors and saves it as a draft.</li>
<li><strong>Update and publish:</strong> Make changes, publish, or set a workflow back to draft.</li>
<li><strong>Delete workflows:</strong> Delete a workflow with an extra confirmation step.</li>
<li><strong>Execution logs:</strong> See who entered a workflow, what happened at each step, and which steps failed (including the error).</li>
<li><strong>Statistics:</strong> Count enrollments, completions, and failures per step by hour, day, or week.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Answer “what broke, and for whom?” without manually reviewing logs.</li>
<li>Get a first draft of a workflow by describing what you want it to do.</li>
<li>Check workflow performance from the AI tool you already use.</li>
</ul>
<h2>Example use cases</h2>
<h3>Failure triage</h3>
<p>Ask which steps in the “New Lead Nurture” workflow failed this week. The assistant reviews the logs and lists each failed step with the contact and the error.</p>
<h3>Weekly numbers</h3>
<p>Ask how many contacts entered “Webinar Follow-up” each week this month. The assistant returns one number per week.</p>
<h3>Draft from a description</h3>
<p>Describe a workflow that tags new contacts as <em>webinar-lead</em> and sends a welcome SMS. The assistant checks it for errors and saves a draft for you to review in the builder.</p>
<h2>How to get started</h2>
<ol>
<li>Add the Leadli MCP server to your AI tool.
<ul>
<li>Claude: Settings → Connectors → Add custom connector → <a href="https://services.leadconnectorhq.com/mcp/anthropic/v2" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/anthropic/v2</a></li>
<li>ChatGPT: Developer mode → Plugins/Connectors → add <a href="https://services.leadconnectorhq.com/mcp/openai/v2/" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/openai/v2/</a></li>
<li>Cursor: <a href="https://services.leadconnectorhq.com/mcp/cursor/v2" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/cursor/v2</a></li>
</ul>
</li>
<li>Sign in with your Leadli account, choose the sub-account, and approve workflow permissions.</li>
<li>Start a new chat and ask about your workflows. Documentation: <a href="https://marketplace.leadconnectorhq.com/docs/other/mcp" target="_blank" rel="nofollow noopener noreferrer">https://marketplace.leadconnectorhq.com/docs/other/mcp</a></li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Private beta:</strong> The workflows tools work only in sub-accounts enabled for the Workflows API. Others may see <code>WORKFLOW_API_NOT_ENABLED_FOR_LOCATION</code>. Contact support to join.</li>
<li>New workflows are created as drafts. Publishing is a separate request.</li>
<li>To change a published workflow, it is set to draft first. While it is a draft, its triggers are off and contacts in it are paused.</li>
<li>Each request works in one sub-account. Agency connections that cover multiple sub-accounts are rolling out.</li>
<li>Deleting a workflow is permanent and stops everyone currently in it.</li>
<li>Logs cover up to 30 days per request and can go back 60 days. They show live runs; test runs from the builder are not included.</li>
</ul>
<p>Support article: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009504" target="_blank" rel="nofollow noopener noreferrer">https://help.leadconnectorhq.com/support/solutions/articles/155000009504</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T20:38:30.000Z'),
('wp-1661', 'Workflows API: create, publish, and monitor workflows by API', 'You can now build and manage workflows from your own code. The Workflows API (private beta) lets you create, read, update, publish, and delete workflows, and review execution logs and statistics. What’s included Create workflows: Create a workflow from a complete definition. New ...', '<p>You can now build and manage workflows from your own code. The Workflows API (private beta) lets you create, read, update, publish, and delete workflows, and review execution logs and statistics.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Create workflows:</strong> Create a workflow from a complete definition. New workflows start as drafts.</li>
<li><strong>Read and update workflows:</strong> Fetch any workflow definition, update it, and send it back.</li>
<li><strong>Validate before saving:</strong> Check a definition for errors without saving. Errors point to the exact step.</li>
<li><strong>Publish or unpublish:</strong> Publish a workflow or set it back to draft.</li>
<li><strong>Search and delete:</strong> Find workflows by name, status, folder, or date, and delete workflows.</li>
<li><strong>Step types:</strong> Browse every trigger and action available in the sub-account, including its fields.</li>
<li><strong>Execution logs:</strong> See who entered a workflow, what happened at each step, and which steps failed (with error details).</li>
<li><strong>Statistics:</strong> Count enrollments, completions, and failures per step by hour, day, or week.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Roll out the same workflow to many sub-accounts without rebuilding it by hand.</li>
<li>Catch failing steps from your own monitoring instead of checking workflows one by one.</li>
<li>Let your app or AI agent build workflows for your clients.</li>
</ul>
<h2>Example use cases</h2>
<h3>Standard rollout</h3>
<p>Read a workflow from your template sub-account, create it in each client sub-account, then publish it.</p>
<h3>Failure report</h3>
<p>Each week, count failures per step for key workflows, list affected contacts, and send a summary to your team.</p>
<h3>Onboarding from your app</h3>
<p>When a client signs up in your product, your app can create and publish their onboarding workflow in their sub-account.</p>
<h2>How to get started</h2>
<ol>
<li>In the sub-account, go to <strong>Settings</strong> → <strong>Private Integrations</strong>. Create an integration and select the workflow scopes you need (View, Edit, Publish, Delete, and View Logs).</li>
<li>Send the token as a bearer token, include the <code>Version: v3</code> header, and include the sub-account’s <code>locationId</code> on each request.</li>
<li>Use the Workflows API reference for endpoint details: <a href="https://marketplace.leadconnectorhq.com/docs/leadconnector/workflows/workflows-api-v-3" target="_blank" rel="noopener noreferrer">https://marketplace.leadconnectorhq.com/docs/leadconnector/workflows/workflows-api-v-3</a></li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Private beta:</strong> The Workflows API is enabled for selected sub-accounts. Other accounts may receive a 403 error with <code>WORKFLOW_API_NOT_ENABLED_FOR_LOCATION</code>. Contact support to request access.</li>
<li><strong>Full replacement updates:</strong> Updates replace the full workflow, so read the workflow first and then send back the updated version you read.</li>
<li><strong>Editing published workflows:</strong> To edit a published workflow, set it to draft first. While it’s a draft, triggers are off and contacts in the workflow are paused.</li>
<li><strong>App step requirements:</strong> App steps only accept an app account that is already connected in the sub-account.</li>
<li><strong>Deleting workflows:</strong> Deleting a workflow is permanent and stops everyone currently in it.</li>
<li><strong>Log retention:</strong> Logs cover up to 30 days per request and can go back 60 days. They show live runs; test runs from the builder are not included.</li>
</ul>
<p>Support documentation: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009503-workflows-api-%E2%80%93-create-publish-and-monitor-workflows-by-api" target="_blank" rel="noopener noreferrer">https://help.leadconnectorhq.com/support/solutions/articles/155000009503-workflows-api-%E2%80%93-create-publish-and-monitor-workflows-by-api</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T19:14:28.000Z'),
('wp-1660', 'Custom Objects in Client App Builder: connect your portal to your Leadli CRM', 'Your Client Portal can do more than display content. With Custom Objects in Client App Builder , you can build interactive experiences where members submit information, create records, and work with data that stays connected to your Leadli CRM. Describe what you want to build, an...', '<p>Your Client Portal can do more than display content. With <strong>Custom Objects in Client App Builder</strong>, you can build interactive experiences where members submit information, create records, and work with data that stays connected to your Leadli CRM.</p>
<p>Describe what you want to build, and AI helps create the data structure, pages, and workflows without writing code.</p>
<h3>What’s new</h3>
<ul>
<li><strong>AI-powered custom object creation</strong> — Describe what members need to submit, and AI designs the custom objects, fields, dropdowns, and relationships.</li>
<li><strong>Direct CRM integration</strong> — Member submissions are saved as Custom Object records in your sub-account CRM.</li>
<li><strong>Review before creating</strong> — Preview the proposed structure, sample records, and access permissions before approving changes.</li>
<li><strong>Interactive member experiences</strong> — Generate portal pages where members can view and add records (service requests, applications, inquiries, and more).</li>
<li><strong>Flexible data visibility</strong> — Control whether members can access their own records, their company’s records, or read-only records.</li>
<li><strong>Built-in payment support</strong> — Trigger payment actions on records through Leadli invoices when a payment provider is connected.</li>
<li><strong>Smarter object management</strong> — Create up to 3 objects per request, reuse existing objects, and manage the limit of 10 custom objects per sub-account.</li>
</ul>
<h3>Why it matters</h3>
<p>Previously, collecting and storing member-submitted information in a Client Portal often required extra tools or manual integrations.</p>
<p>With <strong>Custom Objects in Client App Builder</strong>, your portal becomes an interactive extension of your CRM.</p>
<p>Whether you’re collecting <strong>program applications, service requests, property inquiries, or booking details</strong>, members can submit information directly through your portal while everything stays organized in Leadli.</p>
<h3>Benefits</h3>
<ul>
<li><strong>Collect information in one place</strong> — Members can submit requests and applications without leaving your portal.</li>
<li><strong>Keep everything connected</strong> — Store member-submitted data in your existing CRM automatically.</li>
<li><strong>Build without coding</strong> — Use AI to create data structures and connected portal pages using natural language.</li>
<li><strong>Stay in control</strong> — Review and approve each proposed custom object before it’s created.</li>
<li><strong>Create more interactive portals</strong> — Go beyond content delivery with personalized, data-driven experiences.</li>
</ul>
<h3>Getting started</h3>
<ol>
<li>Enable <strong>Client App Builder</strong> from Labs.</li>
<li>Open Client App Builder and start building or customizing your Client Portal.</li>
<li>Describe the information you want members to submit (for example: <em>“Let members apply for a 1:1 coaching session.”</em>).</li>
<li>When prompted, confirm you want to use <strong>Custom Objects</strong> in your CRM.</li>
<li>Review the proposed objects, fields, relationships, and visibility settings.</li>
<li>Approve the plan, and AI will create the objects and connected portal pages.</li>
</ol>
<p>You can access the newly created objects directly from your Leadli CRM.</p>
<p><strong>Availability:</strong> Custom Objects are available through <strong>Client App Builder in Labs</strong>, supporting web-based Client Portals and Vibe Coding experiences. Branded mobile app support is included.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-28T15:30:44.000Z'),
('wp-1659', 'Vibe Coding in Leadli Client App Builder: Build a client portal with AI', 'Your client portal can now be built with AI. Vibe Coding in the Leadli Client App Builder lets you create a customized client portal by describing what you want. No coding is required. AI can help you design pages and build working experiences while keeping everything connected t...', '<p>Your client portal can now be built with AI. Vibe Coding in the Leadli Client App Builder lets you create a customized client portal by describing what you want. No coding is required.</p>
<p>AI can help you design pages and build working experiences while keeping everything connected to your existing members, courses, communities, and other data.</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Build with AI prompts</strong> — Describe your business and the experience you want. AI asks a few questions and generates functional pages based on your answers.</li>
<li><strong>Personalized designs</strong> — Choose a design system, add your brand images, and keep styling consistent across the portal.</li>
<li><strong>Built-in integrations</strong> — Connect courses, communities, shared files, appointments, member accounts, and existing data without external integrations.</li>
<li><strong>Build through conversation</strong> — Refine your portal with simple prompts, get suggested next steps, and generate missing pages quickly.</li>
<li><strong>Visual editing</strong> — Select elements in the preview and describe the changes you want AI to make.</li>
<li><strong>Flexible starting points</strong> — Start from scratch or build on your existing client portal experience.</li>
<li><strong>Custom domains</strong> — Publish your portal with a custom address and connect up to 10 custom domains.</li>
<li><strong>Dark mode support</strong> — Switch the builder between Light, Dark, or System themes without changing your portal design.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, creating a unique client portal experience often meant working within predefined layouts or paying for custom development.</p>
<p>With Vibe Coding, you can design, build, and publish a portal that fits your business using natural language, while keeping the core client portal functionality.</p>
<h2>Benefits</h2>
<ul>
<li><strong>Build without coding</strong> — Turn ideas into working client portals through guided prompts.</li>
<li><strong>Create a portal that matches your brand</strong> — Adjust layout and flow instead of relying on fixed templates.</li>
<li><strong>Keep everything connected</strong> — Use your existing courses, communities, members, and content.</li>
<li><strong>Iterate faster</strong> — Make design and functionality updates quickly using prompts and visual editing.</li>
<li><strong>Launch under your brand</strong> — Publish on your own domain.</li>
</ul>
<h2>Getting started</h2>
<ol>
<li>Enable <strong>Client App Builder</strong> from Labs.</li>
<li>Open Client App Builder and choose to create a web experience.</li>
<li>Describe your business, audience, and the client portal experience you want to build.</li>
<li>Select a design system and add brand images.</li>
<li>Preview the generated pages and refine them using AI prompts or visual editing.</li>
<li>Publish your client portal and optionally connect a custom domain.</li>
</ol>
<p><strong>Availability:</strong> Vibe Coding is available through <strong>Client App Builder</strong> in Labs.</p>
<p><strong>Coming next:</strong> Industry templates, MCP support, and faster app generation.</p>
<p>Feedback and template suggestions can be shared in the <a href="https://aibuilder.app.clientclub.net/community/client-portal-ai-app-builder-gn1odm" rel="ugc nofollow noopener noreferrer" target="_blank">Client Portal Community</a>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T15:12:48.000Z'),
('wp-1658', 'Client App Builder: build a branded Android app using AI', 'Leadli Client App Builder makes it easier to create a branded Android app for your business using AI. Describe what you want to build, apply your branding, and generate an installable APK. You can also keep the experience connected to the Leadli Client Portal so members can acces...', '<p><strong>Leadli Client App Builder</strong> makes it easier to create a branded Android app for your business using AI. Describe what you want to build, apply your branding, and generate an installable APK. You can also keep the experience connected to the Leadli Client Portal so members can access their existing content and accounts.</p>
<h2>What’s included</h2>
<ul>
<li><strong>AI-driven app creation:</strong> Describe your business and the experience you want, and the builder generates screens, design, and core functionality.</li>
<li><strong>Branding controls:</strong> Apply your logo and brand colors using a design system and brand board.</li>
<li><strong>Client Portal connection:</strong> Bring in courses, communities, files, appointments, and member accounts.</li>
<li><strong>Authentication:</strong> Built-in sign-in, sign-up, and onboarding with join codes.</li>
<li><strong>Easy iteration:</strong> Refine screens and layouts with simple prompts while keeping your existing design.</li>
<li><strong>Native device features:</strong> Support camera and photo access, and manage custom object records from the app.</li>
<li><strong>Mobile preview:</strong> Preview how the app looks and works before publishing.</li>
<li><strong>Android publishing:</strong> Generate an APK and track build progress and errors.</li>
</ul>
<h2>Why it matters</h2>
<p>Creating a custom mobile app usually takes significant development time or requires working within strict templates. With Client App Builder, you can create a tailored mobile experience with plain-language prompts while keeping it tied to the Client Portal you already use.</p>
<h2>How to get started</h2>
<ol>
<li>Enable <strong>Client App Builder</strong> in Leadli Labs.</li>
<li>Open the builder and choose <strong>Mobile</strong> as the app type.</li>
<li>Describe your audience and what you want the app to do.</li>
<li>Select your design system and brand board.</li>
<li>Preview the generated app, refine it with prompts, and customize screens as needed.</li>
<li>Select <strong>Publish</strong> to generate your installable Android app (APK).</li>
</ol>
<p><strong>Availability:</strong> Client App Builder is available in Leadli Labs, with Android app publishing supported.</p>
<p><strong>Coming next:</strong> iOS publishing, mobile app templates, MCP integrations, and faster app generation.</p>
<p>Have feedback or ideas? Join the <a href="https://aibuilder.app.clientclub.net/communities/groups/client-portal-ai-app-builder-gn1odm" rel="ugc nofollow noopener noreferrer" target="_blank">Client Portal community</a> to share your experience.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T14:58:30.000Z'),
('wp-1657', 'Leadli Workflow Maps now includes guided onboarding and a resource hub', 'Workflow Maps now includes guided onboarding and a resource hub to help you understand the map and discover features as you explore. Why this matters Workflow Maps gives you a visual way to explore automation. Guided onboarding helps you learn the controls in context, and Resourc...', '<p>Workflow Maps now includes guided onboarding and a resource hub to help you understand the map and discover features as you explore.</p>
<h2>Why this matters</h2>
<p>Workflow Maps gives you a visual way to explore automation. Guided onboarding helps you learn the controls in context, and Resources gives you a place to return when you need a walkthrough or quick reference.</p>
<h2>How it works</h2>
<p>Go to <strong>Automation &gt; Workflows &gt; Workflow Maps</strong> to begin.</p>
<ul>
<li><strong>Get oriented:</strong> The first-visit introduction explains the map and lets you choose between 2D and 3D.</li>
<li><strong>Learn in context:</strong> Prompts introduce features as you explore workflows and their connections.</li>
<li><strong>Follow walkthroughs:</strong> Get guidance for reviewing errors, tracing contacts, inspecting folders, checking asset usage, filtering the map, and more.</li>
<li><strong>Open Resources:</strong> Use <strong>Help</strong> on the map to find guides for the task you want to complete.</li>
<li><strong>Find quick answers:</strong> Search Resources or use the Cheatsheet, Supported assets, and FAQ sections.</li>
</ul>
<h2>Common use cases</h2>
<ul>
<li>Help a teammate get familiar with Workflow Maps.</li>
<li>Check where an asset is used across folders.</li>
<li>Find guidance while troubleshooting a contact journey or workflow error.</li>
</ul>
<h2>Additional notes</h2>
<ul>
<li>Onboarding guidance adapts based on how you use the map.</li>
<li>Editing guidance appears only where your permissions allow those actions.</li>
<li>Resources stay available whenever you need to revisit a topic.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T12:23:17.000Z'),
('wp-1656', 'Rentals add-ons: optional extras on bookings', 'Overview Rentals now supports add-ons. These are optional extras that customers or admins can attach to a booking (for example, a pet fee, a GPS unit, a guided tour, or equipment insurance). Admins can create a reusable catalog of add-ons, attach them to listings, and set pricing...', '<h2>Overview</h2>
<p>Rentals now supports add-ons. These are optional extras that customers or admins can attach to a booking (for example, a pet fee, a GPS unit, a guided tour, or equipment insurance). Admins can create a reusable catalog of add-ons, attach them to listings, and set pricing, quantity limits, and tax settings. Customers can select add-ons during checkout and see their total update in real time. Selected add-ons appear as separate line items on the invoice.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Global add-on catalog:</strong> Create reusable add-ons from <strong>Calendars → Calendar Settings → Rentals → Add-ons</strong>. Each add-on can include a name, description, pricing configuration, max quantity, and tax settings.</li>
<li><strong>Flexible pricing:</strong> Add-ons support flat amount pricing or percentage pricing (based on the base rental subtotal). Flat pricing can be set per booking or per booking unit (hour/day/week/month, matching the listing’s booking unit). You can also set a maximum quantity per booking.</li>
<li><strong>Listing-level attachment and editing:</strong> Attach add-ons to listings from the global catalog or from the Add-ons tab within a listing. Listing-level edits apply to all listings sharing that add-on.</li>
<li><strong>Customer booking experience:</strong> After selecting dates, customers see an Add-ons section with names, descriptions, prices, and quantity controls. Adding or removing an add-on updates the total. Add-ons marked “Hide from booking page” won’t display to customers, but admins can still add them.</li>
<li><strong>Tax support:</strong> Taxes can be configured per add-on and are shown separately for clarity and reporting.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendars → Calendar Settings → Rentals → Add-ons</strong>.</li>
<li>Click <strong>+ New Add-on</strong> and enter the name, description, pricing type, amount, pricing unit, and max quantity.</li>
<li>Optionally select listings to attach, then click <strong>Create Add-on</strong>.</li>
<li>To update listings on an existing add-on, click <strong>Edit</strong> in the Add-ons table and manage the attached listings.</li>
<li>To configure tax, save the add-on first, then edit it and select <strong>Configure tax</strong>.</li>
<li>Customers can select add-ons in the booking widget after choosing dates. Admins can also add, remove, or update add-ons on existing bookings from the booking edit screen.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Rental businesses can offer optional extras without workarounds like duplicate listings, manual invoices, or external tools.</li>
<li>Real-time price updates help customers understand the total cost before confirming.</li>
<li>A single catalog makes add-ons easier to manage across many listings.</li>
<li>Tax and invoice support helps keep billing accurate end-to-end.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-28T12:08:19.000Z'),
('wp-1655', 'Rentals: Additional fees (mandatory charges on bookings)', 'Rentals now supports additional fees, which are mandatory charges that can be automatically applied to every booking for a listing (for example: cleaning fees, resort fees, service fees, and damage waiver fees). These fees are shown up front in the booking widget and appear as cl...', '<p>Rentals now supports additional fees, which are mandatory charges that can be automatically applied to every booking for a listing (for example: cleaning fees, resort fees, service fees, and damage waiver fees). These fees are shown up front in the booking widget and appear as clear line items on invoices.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Global fee catalog:</strong> Create reusable additional fee templates in <em>Calendars &gt; Calendar settings &gt; Rentals &gt; Additional fees</em>. Define the fee name, pricing type, amount, and tax, then reuse the template across multiple listings.</li>
<li><strong>Flexible pricing options:</strong> Fees can be a flat amount (fixed charge) or a percentage (calculated from the rental subtotal). Flat fees can be set per booking or per booking unit (hour, day, week, or month), based on the listing’s booking unit.</li>
<li><strong>Listing-level price overrides:</strong> Override a fee amount for a specific listing without changing the global template.</li>
<li><strong>Transparent customer view:</strong> Fees are visible before checkout and are itemized on invoices.</li>
<li><strong>Tax settings for fees:</strong> Apply taxes to additional fees independently from the base rental price. Tax on fees is calculated on the fee amount and shown separately for clearer reporting.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Calendars &gt; Calendar Settings &gt; Rentals &gt; Additional fees</strong>.</li>
<li>Select <strong>New additional fee</strong> and enter the fee name, pricing type (flat or percentage), amount, and pricing unit.</li>
<li>To attach a fee to a listing, open the listing for editing, go to the <strong>Inventory &amp; pricing</strong> tab, find the <strong>Additional fee</strong> section, and add the fee.</li>
<li>To override a fee amount for a specific listing, open the listing’s <strong>Inventory &amp; pricing</strong> tab and edit the fee amount.</li>
<li>To set up tax on a fee, edit the fee and choose <strong>Configure tax</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Rental businesses often need to apply standard charges without building them into the base price or using workarounds.</li>
<li>Upfront fee visibility reduces surprises at checkout and can help reduce disputes.</li>
<li>Reusable templates plus listing-level overrides provide flexibility without duplicating setup work.</li>
<li>Independent tax support for fees improves invoice clarity and reporting accuracy.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-28T12:08:16.000Z'),
('wp-1654', 'Add retail products to service appointments', 'Overview Service businesses often sell retail products during the same visit. You can now add retail products to a service appointment from the in-app appointment modal in Leadli. Services, products, payments, and inventory are managed in one place, with a single total that refle...', '<h2>Overview</h2>
<p>Service businesses often sell retail products during the same visit. You can now add retail products to a service appointment from the in-app appointment modal in Leadli. Services, products, payments, and inventory are managed in one place, with a single total that reflects everything the customer is buying.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Add products when you book or edit an appointment</strong><br />Choose a product or variant from your catalog in the appointment modal while creating an appointment or editing an existing one. There is no need to cancel or recreate the appointment.</li>
<li><strong>Set quantity and price per product</strong><br />Add multiple units of the same product as needed. You can also override the unit price for that specific appointment without changing the catalog price.</li>
<li><strong>One total and one payment view</strong><br />Products appear alongside services in the appointment details and in the Payments tab. If you change products on an appointment that already has payments, the payment status will show whether additional payment is due or if a refund is needed.</li>
<li><strong>Inventory updates automatically</strong><br />For products with inventory tracking, stock decreases when you add a product and increases when you remove it or reduce the quantity. If there is not enough stock, you will see an error. Settings like “Continue selling when out of stock” are respected, and products without tracking are unaffected.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the service appointment modal (new or existing) and click <strong>+ Add product</strong>.</li>
<li>Select the product, then adjust the quantity or price if needed. The total updates as you go.</li>
<li>Save the appointment and review the breakdown in the Payments tab.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Products are created and managed under <strong>Payments &gt; Products</strong>, not under Services.</li>
<li>Retail products can only be added to appointments in-app. They are not available on the customer booking page.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Staff can sell services and products in one visit without creating a separate order.</li>
<li>The appointment total and payment status reflect the full transaction.</li>
<li>Inventory stays accurate without manual updates when products are sold through appointments.</li>
<li>Past appointments show exactly what was sold, even if the catalog changes later.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T12:08:09.000Z'),
('wp-1653', 'Custom appointment statuses for Leadli appointments', 'Overview Leadli calendars now support custom appointment statuses. You can name each stage of an appointment in your own words (for example, Checked in, Awaiting documents, or Ready for appointment) instead of using a fixed list of statuses. Each custom status belongs to one of s...', '<h2>Overview</h2>
<p>Leadli calendars now support custom appointment statuses. You can name each stage of an appointment in your own words (for example, Checked in, Awaiting documents, or Ready for appointment) instead of using a fixed list of statuses.</p>
<p>Each custom status belongs to one of six states: Pending, Active, Completed, No show, Cancelled, and Invalid. The state controls scheduling behavior such as time slot availability, calendar sync, and notifications.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Create and manage your own statuses:</strong> Add, rename, reorder, archive, and restore statuses within each state from the Appointment status settings.</li>
<li><strong>Scheduling stays predictable:</strong> Pending and Active keep the time slot reserved. Completed, No show, Cancelled, and Invalid release the slot for new bookings.</li>
<li><strong>Existing setups continue to work:</strong> Your current default statuses carry over automatically, and existing appointments, workflows, and calendar settings remain unchanged.</li>
<li><strong>Safe archiving:</strong> Archiving prevents a status from being used on new appointments, without changing existing appointments already using that status.</li>
<li><strong>Statuses are available everywhere:</strong> Select statuses in the new appointment window, appointment details panel, and appointment list. Pickers are grouped by state and searchable.</li>
<li><strong>Class booking attendee statuses:</strong> For class booking calendars, you can set a status per attendee.</li>
<li><strong>Workflow automation by exact stage:</strong> Workflow triggers, actions, and filters can reference your custom statuses. If you rename a status, workflows update automatically.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable <strong>Custom Appointment Statuses</strong> in Labs for your location.</li>
<li>Open <strong>Calendars → Calendar Settings → Preferences → Appointment status</strong>.</li>
<li>Choose a state, select <strong>New status</strong>, enter a name, and save.</li>
<li>To retire a status, archive it after reviewing the impact.</li>
<li>Apply statuses when creating an appointment or from the appointment details and list views.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li><strong>Matches real workflows:</strong> Teams can track the stages they actually use without relying on notes or external tools.</li>
<li><strong>No scheduling risk:</strong> Availability and notifications follow the underlying state, so labels can change without unexpected side effects.</li>
<li><strong>Less manual follow-up:</strong> Automation can run when an appointment reaches a specific stage.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-28T12:07:39.000Z'),
('wp-1652', 'Partial payments for rentals: collect a deposit now and the balance later', 'Overview High-value rentals (vehicles, vacation homes, equipment, and more) often book more easily when customers can reserve with a deposit and pay the remaining balance closer to the rental start date. Partial Payments lets you collect a deposit at booking and charge the remain...', '<h2>Overview</h2>
<p>High-value rentals (vehicles, vacation homes, equipment, and more) often book more easily when customers can reserve with a deposit and pay the remaining balance closer to the rental start date. Partial Payments lets you collect a deposit at booking and charge the remaining balance before the rental begins. You set this up once in global settings, and customers can clearly see what they pay today and when the rest is due.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Deposit now, balance later.</strong> In Global Settings, choose a deposit percentage (1–99% of the booking total) and when the balance is due. This applies to new bookings across your listings.</li>
<li><strong>A clear payment plan at checkout.</strong> Customers see “Due today” and “Due [date]” in the order summary, with an explanation that the balance is charged automatically (when enabled).</li>
<li><strong>Balance collected automatically.</strong> On the due date, the remaining balance can be charged to the card used for the deposit automatically (if enabled).</li>
<li><strong>Security deposits that match your process.</strong> If you collect security deposits upfront, you can choose whether they are due at booking time or with the final balance payment.</li>
<li><strong>Last-minute bookings stay simple.</strong> If the balance due date has already passed when a booking is made, the booking becomes a single full payment so checkout is not blocked.</li>
<li><strong>Payment status at a glance.</strong> Each payment shows a due date, amount, and status (for example, “Payment 1 of 2 · Paid” and “Payment 2 of 2 · Pending”).</li>
<li><strong>Collect payments with a clear breakdown.</strong> You can collect one scheduled payment or multiple payments together on or before the due date.</li>
<li><strong>A schedule that stays accurate when things change.</strong> If the booking amount changes, the schedule updates automatically. If the deposit is already paid, the remaining balance reflects the difference. If you add an item after the booking is fully paid, an additional charge is created for the difference and you can collect it manually. If rental dates change, the balance due date shifts with the new start date.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendars → Calendar settings → Rentals → Global settings → Payment settings</strong>. Turn on <strong>Require Payment at Booking</strong>, then enable <strong>Partial Payments</strong>.</li>
<li>Set the deposit percentage and how many days before the rental starts the balance is due. The deposit is calculated on the booking total (including taxes and fees) and excludes the security deposit.</li>
<li>If you collect security deposits, choose whether they are collected with the booking deposit, collected with the final balance, or saved as Card on File.</li>
<li>Save. New bookings will follow this payment plan. Existing bookings are not affected.</li>
<li>Manage payments from the booking sidebar. Use <strong>Actions → Collect Payment</strong> to collect manually at any time. If there is no card on file when the balance is due, you can charge it manually.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>A smaller upfront payment can help customers commit to higher-value rentals, increasing completed bookings.</li>
<li>Automatic balance collection reduces time spent chasing payments before a rental.</li>
<li>Clear payment status and manual collection options help you stay in control.</li>
<li>Security deposits can follow the workflow you already use (upfront or card on file).</li>
<li>Customers can easily understand what they pay today and what will be paid later.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-10-28T12:06:30.000Z'),
('wp-1651', 'Subagents for Managed Agents', 'Managed Agents can now split complex work into smaller tasks and run them in parallel using subagents. What this adds Task delegation: The main agent can create subagents based on task complexity, assign each subagent a focused responsibility, and coordinate the combined result. ...', '<p>Managed Agents can now split complex work into smaller tasks and run them in parallel using subagents.</p>
<h3>What this adds</h3>
<ul>
<li><strong>Task delegation:</strong> The main agent can create subagents based on task complexity, assign each subagent a focused responsibility, and coordinate the combined result.</li>
<li><strong>Faster execution:</strong> Independent tasks can run at the same time instead of waiting in sequence.</li>
<li><strong>Cost efficiency:</strong> Subagents work with smaller, task-specific context while the main agent manages planning and review.</li>
<li><strong>Visibility:</strong> You can review subagent activity, including steps taken, results, and any changes made.</li>
<li><strong>Security controls:</strong> Subagents can be limited to only the tools and permissions required for their assigned tasks. Read-only subagents cannot modify records, and the main agent reviews generated messages before sending.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>AI Agents</strong> and open <strong>Agent Studio</strong>.</li>
<li>Create or open a Managed Agent.</li>
<li>Describe the task you want it to perform. The builder will determine whether subagents are needed and set them up.</li>
<li>Optionally request it directly (for example: “Split this task into subagents”).</li>
<li>Run the agent and review subagent activity in the logs.</li>
</ol>
<h3>Example</h3>
<p>Prompt: “Every Monday, identify opportunities that haven’t progressed in the last 14 days, check their recent conversations, and create follow-up tasks for the assigned owners.”</p>
<p>The Managed Agent can delegate this to subagents focused on opportunities, conversations, and task creation, then provide one consolidated summary.</p>
<h3>Why this matters</h3>
<ul>
<li>Break large jobs into manageable parts.</li>
<li>Improve speed by running independent work in parallel.</li>
<li>Reduce unnecessary context usage for complex workflows.</li>
<li>Increase reliability by keeping responsibilities focused.</li>
<li>Maintain transparency through activity and agent logs.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T11:15:18.000Z'),
('wp-1650', 'New: Import n8n workflows into Leadli Managed Agents (beta)', 'You can now import existing n8n automations into Leadli Managed Agents without rebuilding them from scratch. Upload an n8n workflow JSON export, and Leadli will review the steps and convert the workflow into a Managed Agent that you can edit before publishing. What’s included Imp...', '<p>You can now import existing n8n automations into Leadli Managed Agents without rebuilding them from scratch.</p>
<p>Upload an n8n workflow JSON export, and Leadli will review the steps and convert the workflow into a Managed Agent that you can edit before publishing.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Import n8n workflows:</strong> Upload a .json export file or paste the JSON directly.</li>
<li><strong>Workflow conversion:</strong> Common triggers and steps are mapped to supported Leadli triggers and actions.</li>
<li><strong>Conversion review:</strong> Steps are labeled as carried over, adapted, or not possible so you can see what changed.</li>
<li><strong>Draft or publish:</strong> Save the imported agent as a draft, or publish after required setup is complete.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong>.</li>
<li>Select <strong>Import from</strong> → <strong>n8n (Beta)</strong>.</li>
<li>Upload your n8n workflow JSON or paste the JSON.</li>
<li>Review the converted workflow and complete any required configuration.</li>
<li>Save as draft or create and publish.</li>
</ol>
<h2>Notes on security and reliability</h2>
<ul>
<li>No agents are created until you explicitly save or publish.</li>
<li>Existing n8n credentials and API keys are not imported.</li>
<li>External IDs and configuration values are flagged for verification.</li>
<li>Unsupported steps are highlighted instead of being skipped.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T11:15:03.000Z'),
('wp-1649', 'New unified workspace for Managed Agents', 'Managed Agents in Agent Studio has been redesigned so you can build, test, manage, and publish agents from a single workspace. What’s included All-in-one workspace: Browse and switch agents, test conversations, and update settings in one place. Easier discovery and organization: ...', '<p>Managed Agents in Agent Studio has been redesigned so you can build, test, manage, and publish agents from a single workspace.</p>
<h2>What’s included</h2>
<ul>
<li><strong>All-in-one workspace:</strong> Browse and switch agents, test conversations, and update settings in one place.</li>
<li><strong>Easier discovery and organization:</strong> Search by name, use folders, sort agents, and quickly see draft vs. published status.</li>
<li><strong>Chat, test, and debug:</strong> Start new conversations, continue past threads, and review execution details without leaving the workspace.</li>
<li><strong>Simpler configuration:</strong> Update agent details, manage publishing, and access advanced options with fewer clicks.</li>
<li><strong>Better activity visibility:</strong> Monitor conversations, review items that need attention, and inspect agent logs.</li>
<li><strong>Faster setup:</strong> Create agents using natural-language instructions and start from suggested prompts and templates.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>In your Leadli account, open <strong>Labs</strong>.</li>
<li>Enable <strong>Managed Agents New UI</strong>.</li>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong> → <strong>Managed Agents</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Less switching between screens.</li>
<li>Faster testing and troubleshooting.</li>
<li>Clearer visibility into activity and execution details.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T11:11:09.000Z'),
('wp-1648', 'Computer for Managed Agents is now available', 'Managed Agents can now use Computer to browse websites, create files, run code, and complete more complex tasks beyond your CRM. With Computer enabled, an agent can work across websites, documents, and data in a single conversation. Recent updates also improve speed, parallel exe...', '<p>Managed Agents can now use Computer to browse websites, create files, run code, and complete more complex tasks beyond your CRM.</p>
<p>With Computer enabled, an agent can work across websites, documents, and data in a single conversation. Recent updates also improve speed, parallel execution, security, and overall usability.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Browser automation</strong>: Research information, interact with web apps, click buttons, fill forms, and complete multi-step tasks. You can watch in real time and take control when needed.</li>
<li><strong>File creation and management</strong>: Create, read, edit, and export documents, spreadsheets, reports, and other files. Reuse files across conversations with a persistent workspace.</li>
<li><strong>Terminal and code execution</strong>: Run scripts and terminal commands to process datasets, perform calculations, and automate multi-step work that combines browsing and files.</li>
<li><strong>Dedicated computer and parallel execution</strong>: Each Managed Agent has its own computer environment and can run multiple browser conversations in parallel, each in its own tab.</li>
<li><strong>Secure sign-ins and approval controls</strong>: Website credentials can be stored in Leadli Keychain. Agents request approval for sensitive actions such as payments, sending messages, submitting forms, and deleting files.</li>
<li><strong>Updated interface and take-control experience</strong>: Easier navigation, smoother interactions, and better visibility into ongoing browser activity.</li>
</ul>
<h3>Examples of what you can do</h3>
<ul>
<li>Competitor research: Compare pricing and produce a simple comparison spreadsheet.</li>
<li>CRM administration: Navigate Leadli to create workflows, configure settings, and manage agents.</li>
<li>Lead generation: Research prospects and add leads to your CRM.</li>
<li>Document creation: Generate reports, presentations, and spreadsheets.</li>
<li>Data analysis: Run scripts to analyze datasets and summarize results.</li>
<li>Website tasks: Fill forms and complete repetitive actions inside web apps.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong> → <strong>Managed Agents</strong>.</li>
<li>Open an existing agent or create a new one.</li>
<li>Open <strong>Capabilities</strong> and enable <strong>Computer</strong>.</li>
<li>Configure your <strong>Ask Before</strong> approval preferences.</li>
<li>Open the agent chat and describe what you want it to do.</li>
</ol>
<h3>Important notes</h3>
<ul>
<li>Computer currently supports chat-based and manual runs, not automation-triggered runs.</li>
<li>Payments and file deletions always require user approval.</li>
<li>You can review pending requests in <strong>Waiting on You</strong>.</li>
</ul>
<p>This update makes it easier to delegate research, reporting, data processing, and multi-step tasks without switching tools.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T11:08:13.000Z'),
('wp-1647', 'QR codes for website pages are now available in the Website Builder', 'QR codes are now available directly in Leadli Websites, similar to how they work in Funnels. You can create a QR code for any website page in one click from the Website Builder, or generate one from the QR Code Builder by selecting a website and page. What’s new One-click QR code...', '<p>QR codes are now available directly in Leadli Websites, similar to how they work in Funnels.</p>
<p>You can create a QR code for any website page in one click from the Website Builder, or generate one from the QR Code Builder by selecting a website and page.</p>
<h3>What’s new</h3>
<ul>
<li><strong>One-click QR codes in the Website Builder:</strong> Use the QR code icon next to the page URL to create and download a QR code for the page you’re editing.</li>
<li><strong>New “Website” option in the QR Code Builder:</strong> Choose a website and page from dropdowns instead of copying and pasting URLs.</li>
<li><strong>QR codes stay connected to the page:</strong> If the page slug or domain changes later, the QR code continues to open the correct page.</li>
<li><strong>Download formats:</strong> Export as PNG, SVG, or PDF for print and digital use.</li>
<li><strong>Brand styling:</strong> Use Edit QR to adjust colors, shapes, and branding.</li>
<li><strong>Wallet and filtering:</strong> Website QR codes support Add to Wallet, and you can filter the QR code list by the Website type.</li>
</ul>
<h3>Note</h3>
<p>The older QR type that was previously labeled “Website” (a plain link) is now labeled “URL”. Existing QR codes continue to work.</p>
<h3>How to use</h3>
<p><strong>From the Website Builder</strong></p>
<ol>
<li>Open a website that has a connected domain.</li>
<li>Open any page in the Website Builder.</li>
<li>Click the QR code icon next to the page URL.</li>
<li>Download as PNG, SVG, or PDF, or choose Edit QR to customize it.</li>
<li>Scan the QR code to confirm it opens the correct page.</li>
</ol>
<p><strong>From the QR Code Builder</strong></p>
<ol>
<li>Go to Sites → QR Codes → Create QR.</li>
<li>Choose the Website type.</li>
<li>Select your website and page.</li>
<li>Style the QR code, then save and download.</li>
</ol>
<h3>Why this matters</h3>
<p>Businesses often share website pages offline on menus, flyers, storefront windows, and business cards. This update reduces setup time and helps QR codes remain reliable even when page settings change.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T10:58:20.000Z'),
('wp-1646', 'Course video analytics with AI insights', 'Course Video Analytics helps you understand how learners engage with your course videos. You can track performance, see where viewers drop off, and use Course AI recommendations to improve engagement. What’s included Video analytics dashboard : Track views, watch time, average en...', '<p>Course Video Analytics helps you understand how learners engage with your course videos. You can track performance, see where viewers drop off, and use Course AI recommendations to improve engagement.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Video analytics dashboard</strong>: Track views, watch time, average engagement, and finish rates across your course videos, including comparisons to earlier periods.</li>
<li><strong>Detailed video insights</strong>: Review unique viewers, rewatch rates, completion funnels, and audience retention for individual videos.</li>
<li><strong>Audience retention heatmaps</strong>: See where learners drop off, skip ahead, or rewatch specific moments.</li>
<li><strong>Course AI insights</strong>: Get recommendations based on engagement patterns and drop-off points.</li>
<li><strong>Audience breakdown</strong>: Compare viewing patterns across devices, countries, and regions.</li>
<li><strong>Lesson editor analytics</strong>: View key metrics from the last 30 days while editing lessons.</li>
<li><strong>Filters and exports</strong>: Filter by course and date range, search for videos, and export data.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, creators had limited visibility into how learners engaged with video lessons. Course Video Analytics goes beyond whether a learner watched a video and helps you understand how they watched it, where they lost interest, and what kept them engaged.</p>
<p>Combined with Course AI, these insights support practical updates that can improve your lessons and increase engagement.</p>
<h2>Benefits</h2>
<ul>
<li><strong>Identify drop-offs</strong>: Pinpoint moments where learners lose interest and update your content accordingly.</li>
<li><strong>Improve engagement</strong>: See which lessons perform best and which need attention.</li>
<li><strong>Make data-driven updates</strong>: Turn AI-generated insights into clear next steps.</li>
<li><strong>Understand your audience</strong>: Learn how viewers engage across devices and locations.</li>
<li><strong>Save time</strong>: Access performance data and recommendations in one place.</li>
</ul>
<h2>Getting started</h2>
<ol>
<li>Go to <strong>Labs → Subaccounts → Video analytics</strong> and enable the feature.</li>
<li>Open <strong>Memberships → Courses → Analytics → Video analytics</strong>.</li>
<li>Review performance across courses, or select a video for detailed insights.</li>
<li>Use heatmaps, completion funnels, and engagement metrics to spot improvement opportunities.</li>
<li>To access AI insights, join the <a href="https://api.leadconnectorhq.com/widget/form/CBbrfiMlv33fOiy2UBt7" rel="ugc nofollow noopener noreferrer" target="_blank">Course AI Beta</a>.</li>
</ol>
<p><strong>Availability:</strong> Video Analytics is available under Labs. AI insights require access to Course AI.</p>
<p><strong>Note:</strong> Analytics currently supports videos uploaded natively in Courses. Desktop viewing data is available from July 4, 2026, and mobile viewing data from September 18, 2026. Views before these dates are not included.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T10:01:18.000Z'),
('wp-1645', 'Discover courses and offers in the Client Portal', 'Learners can now browse and purchase new courses and published offers directly from the Client Portal. What’s new Discover section in the Client Portal: Courses, published offers, and communities are shown together in one place. Show in Discover toggle: Choose which courses and o...', '<p>Learners can now browse and purchase new courses and published offers directly from the Client Portal.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Discover section in the Client Portal:</strong> Courses, published offers, and communities are shown together in one place.</li>
<li><strong>Show in Discover toggle:</strong> Choose which courses and offers are visible to learners.</li>
<li><strong>Course and bundle browsing:</strong> Learners can review thumbnails, pricing, descriptions, and tags. Offers appear as bundles.</li>
<li><strong>Search and filters:</strong> Learners can search and filter by Free, Language, Difficulty, and Topic.</li>
<li><strong>Checkout flow:</strong> Learners can go from discovery directly to the checkout page.</li>
<li><strong>Optional default landing page:</strong> You can set Discover as the default landing page in the Client Portal.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, learners could only see courses they were already enrolled in, so additional purchases relied on external promotions.</p>
<p>With Discover, the Client Portal can also act as a storefront, helping existing learners find and purchase additional courses or bundles.</p>
<h2>Benefits</h2>
<ul>
<li><strong>More visibility:</strong> Promote courses and offers to learners who have not purchased them yet.</li>
<li><strong>More repeat purchases:</strong> Make it easier for existing learners to buy more.</li>
<li><strong>Simpler discovery:</strong> Provide one place to explore courses, bundles, and communities.</li>
<li><strong>Full control:</strong> Decide exactly what appears in Discover.</li>
</ul>
<h2>How to enable</h2>
<ol>
<li>Go to <strong>Labs → Subaccounts → Discovery of Course and Offers</strong> and enable the feature.</li>
<li>Go to <strong>Client Portal → Settings → App permissions</strong> and enable Discover.</li>
<li>Open a course’s <strong>Pricing</strong> tab or a published offer and enable <strong>Show in Discover</strong>.</li>
<li>If you want, set Discover as the default landing page for learners.</li>
</ol>
<p><strong>Availability:</strong> Currently available under Labs.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-28T09:32:07.000Z'),
('wp-1644', 'Use Leadli AI Computer from the mobile app', 'AI Computer is now available in the Leadli mobile app. It gives you access to the same private cloud machine you use on the web, so AI can browse in a real Chrome browser, fill in forms, run code, and work with files while you watch from your phone. What’s new Start from any chat...', '<p>AI Computer is now available in the Leadli mobile app. It gives you access to the same private cloud machine you use on the web, so AI can browse in a real Chrome browser, fill in forms, run code, and work with files while you watch from your phone.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Start from any chat:</strong> Each new chat shows a Computer option above the message box. You can also open the Computer’s own chat from History.</li>
<li><strong>Watch live:</strong> Open the browser full screen to see the desktop. A status line shows whether it’s working, idle, done, needs input, or you are in control.</li>
<li><strong>Take over on mobile:</strong> Tap to click, use two fingers to scroll, and type with your phone keyboard. When you are finished, hand control back and it continues.</li>
<li><strong>Keep chatting while it runs:</strong> A live status indicator stays available across chats so you can jump back to the Computer at any time.</li>
<li><strong>Approve actions as needed:</strong> When it pauses to ask, you can approve, deny, or allow an action for the current chat. You can review and revoke allowed actions in Settings.</li>
<li><strong>Private sign-ins:</strong> Sign-in details are entered through a private form and sent directly to the site, not through chat.</li>
<li><strong>Secure Store for logins:</strong> Save logins and choose whether they are never used, used after asking, or used on matching sites. Saved passwords are not filled on look-alike sites.</li>
<li><strong>Secure Store on mobile:</strong> Add, edit, and delete saved logins for each sub-account.</li>
<li><strong>Files and results:</strong> Outputs like spreadsheets, documents, and PDFs appear as files in chat. Files you attach in chat are available to the Computer. A Files view shows recent files and storage usage.</li>
<li><strong>Activity log:</strong> Review the steps the Computer took, written in plain language.</li>
<li><strong>One conversation across devices:</strong> Messages sent on the web appear in the mobile chat. If the screen is open elsewhere, you can move it to your phone.</li>
<li><strong>Computer settings on mobile:</strong> Clear browsing data, set saved-login rules, review allowed actions, check storage, or reset one sub-account profile.</li>
<li><strong>Automatic recovery:</strong> If the Computer is asleep, you can turn it on and continue with files and sign-ins intact. If the connection drops, it reconnects. If a task stops early, you can resume.</li>
</ul>
<h3>Impact</h3>
<ul>
<li>Run tasks away from your desk by starting or continuing work from your phone.</li>
<li>Stay in control with live viewing, takeovers, and approvals.</li>
<li>Keep passwords out of chat, including on mobile.</li>
<li>Use the same access controls as the web experience, including agency switches and sub-account limits.</li>
</ul>
<h3>Example use case</h3>
<p>If a task needs a one-time code while you are away from your desk, you can open the live screen on your phone, take control to enter the code, and then hand control back so the task can finish.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T07:26:22.000Z'),
('wp-1643', 'Resizable panels in Conversations', 'Update You can resize the panels in Conversations to better match how you work. Drag the divider between the conversation list, the message thread, and the contact details panel to make any section wider or narrower. How to use it Open Conversations. Drag the resize handle left o...', '<p><strong>Update</strong></p>
<p>You can resize the panels in Conversations to better match how you work. Drag the divider between the conversation list, the message thread, and the contact details panel to make any section wider or narrower.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open Conversations.</li>
<li>Drag the resize handle left or right to adjust the width of each panel.</li>
</ul>
<p><strong>What to expect</strong></p>
<ul>
<li>Your panel sizes are saved, so your layout stays the same the next time you open Conversations.</li>
<li>Each panel has minimum and maximum widths to keep the layout readable.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Different teams work in different ways. This makes it easier to focus on the conversation thread or review contact details without changing screens.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-28T05:58:10.000Z'),
('wp-1642', 'Google Sheets workflow triggers: new spreadsheets, rows, and worksheets', 'Summary You can now start a workflow in Leadli when something new happens in Google Sheets. This helps you move from data entry to the next step in your process without manual checks. What’s included There are three new Google Sheets triggers: New spreadsheet: Starts a workflow w...', '<p><strong>Summary</strong></p>
<p>You can now start a workflow in Leadli when something new happens in Google Sheets. This helps you move from data entry to the next step in your process without manual checks.</p>
<p><strong>What’s included</strong></p>
<p>There are three new Google Sheets triggers:</p>
<ul>
<li><strong>New spreadsheet:</strong> Starts a workflow when a new Google Sheets file is created in the selected Drive.</li>
<li><strong>New spreadsheet row:</strong> Starts a workflow when a new row is appended after the last row of a selected sheet/tab.</li>
<li><strong>New worksheet:</strong> Starts a workflow when a new tab is added to a selected spreadsheet.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Teams often track leads, projects, and reports in Google Sheets. These triggers let Leadli react to new sheet activity right away, so your workflow can run automatically.</p>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong> and open the workflow you want to update.</li>
<li>Select <strong>Add Trigger</strong>, then find the Google Sheets triggers.</li>
<li>Choose the event (new spreadsheet, new row, or new worksheet).</li>
<li>Select the connected Google account and Drive. For row/worksheet triggers, select the spreadsheet; for the row trigger, also select the sheet/tab.</li>
<li>Use <strong>Find new records</strong> and map the fields you want to use in the next steps.</li>
<li>Save, test using <strong>Test &gt; Test using events</strong>, and then publish the workflow when ready.</li>
</ol>
<p><strong>Common use cases</strong></p>
<ul>
<li>Start a lead intake workflow when a new inquiry row is added to a sheet.</li>
<li>Start a monthly reporting workflow when a new month tab is created.</li>
<li>Kick off an internal workflow when a new spreadsheet is created in a specific Drive.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Google Sheets is marked as <strong>Premium</strong> in the workflow builder, so usage charges may apply.</li>
<li>The row trigger is based on row position. Appending rows at the bottom works best. Inserting or deleting rows can cause re-triggers or skipped rows.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T21:03:19.000Z'),
('wp-1641', 'Slack integration: 5 new workflow triggers', 'Leadli now lets you start workflows from Slack activity using five new instant triggers. You can use these triggers to turn Slack messages and reactions into automated steps, such as routing requests, welcoming teammates, or notifying the right person. To set this up, go to Autom...', '<p>Leadli now lets you start workflows from Slack activity using five new instant triggers.</p>
<p>You can use these triggers to turn Slack messages and reactions into automated steps, such as routing requests, welcoming teammates, or notifying the right person.</p>
<p>To set this up, go to <strong>Automation &gt; Workflows</strong>, open a workflow, click <strong>Add trigger</strong>, and search for <strong>Slack</strong>. Then choose a trigger and select your connected Slack account.</p>
<ul>
<li><strong>New direct message:</strong> Start a workflow when someone sends a direct message to your Slack app (bot).</li>
<li><strong>User invited to channel:</strong> Start a workflow when a user joins or is invited to a selected channel.</li>
<li><strong>New mention:</strong> Start a workflow when your Slack app (bot) is mentioned in a channel it has been added to.</li>
<li><strong>New message posted to channel:</strong> Start a workflow when a new message is posted to a selected public or private channel.</li>
<li><strong>New reaction added:</strong> Start a workflow when a reaction is added to a message in a selected channel.</li>
</ul>
<p>After you choose a trigger, configure the channel and any available filters.</p>
<p><strong>Common use cases</strong></p>
<ul>
<li><strong>Route incoming requests:</strong> Notify a triage channel when someone messages or mentions your Slack app.</li>
<li><strong>Welcome new teammates:</strong> Post an onboarding message when a user joins your team’s channel.</li>
<li><strong>Follow up on feedback:</strong> Alert reviewers when a message in a review channel receives a reaction.</li>
<li><strong>Keep teams informed:</strong> Notify another team when a new message is posted to a shared request channel.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>These triggers are available on Premium plans.</li>
<li>The direct message trigger listens for messages sent to the Slack app (bot).</li>
<li>For mention-based triggers, add the Slack app to the channel before using the trigger.</li>
<li>Channel lists include public and private channels that the connected Slack user can see.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T21:00:10.000Z'),
('wp-1640', 'Workflow Maps: Understand and manage automations with the assistant', 'Workflow Maps now includes an assistant that helps you review and manage your automations. You can ask questions, investigate issues, organize your map, and request workflow builds or edits. What’s new You can use an assistant directly inside Workflow Maps to ask questions about ...', '<p>Workflow Maps now includes an assistant that helps you review and manage your automations. You can ask questions, investigate issues, organize your map, and request workflow builds or edits.</p>
<h3>What’s new</h3>
<p>You can use an assistant directly inside Workflow Maps to ask questions about your automations, investigate issues, organize the map, and request workflow builds or edits.</p>
<p>The assistant uses your workflow and map context to help with account-specific questions and actions.</p>
<h3>Why this matters</h3>
<p>Maintaining an account often means searching, opening workflows, reviewing dependencies, and making organizational changes. The assistant lets you describe what you need in plain language and work through it from the map.</p>
<h3>How it works</h3>
<p>Go to <strong>Automation &gt; Workflows &gt; Workflow Maps</strong>, then open <strong>Assistant</strong>.</p>
<ul>
<li><strong>Understand a workflow:</strong> Ask what a selected workflow does, or request a summary of a folder.</li>
<li><strong>Find and investigate:</strong> Locate workflows by name, review issues, or ask about a workflow’s connected assets.</li>
<li><strong>Focus the map:</strong> Ask the assistant to filter or highlight relevant workflows and folders.</li>
<li><strong>Organize your account:</strong> Request folder creation, workflow moves, renaming, or notes.</li>
<li><strong>Build or edit workflows:</strong> Describe the automation you want to create or change. Supported builds and edits run as background jobs.</li>
<li><strong>Review proposed actions:</strong> Review the plan and decide how supported changes are applied.</li>
</ul>
<h3>Common use cases</h3>
<ul>
<li>Explain what this workflow does.</li>
<li>Show only drafts in the Sales folder.</li>
<li>Create a welcome email and SMS workflow.</li>
<li>Move these workflows into an Onboarding folder.</li>
</ul>
<h3>Additional notes</h3>
<ul>
<li>The assistant works within your access permissions.</li>
<li>Actions such as deletion and whole-map rearrangement still require confirmation, including when automatic approval is enabled.</li>
<li>Saved views store filters. They do not save the map’s zoom, position, or layout.</li>
<li>Launch access: Workflow Maps is available only to agency users and agency admins at launch.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T19:51:21.000Z'),
('wp-1639', 'Verify email addresses during contact imports', 'Leadli now lets you verify email addresses while importing contacts. This helps you identify invalid addresses early, keep your lists cleaner, and support better deliverability. What’s new Verify during import: Enable a checkbox on the last step of the contact import to verify th...', '<p>Leadli now lets you verify email addresses while importing contacts. This helps you identify invalid addresses early, keep your lists cleaner, and support better deliverability.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Verify during import:</strong> Enable a checkbox on the last step of the contact import to verify the contacts you’re bringing in.</li>
<li><strong>Track progress in Bulk Actions:</strong> Monitor the verification job in <strong>Bulk Actions</strong> until it moves from Processing to Completed.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Fewer bounces:</strong> Catch invalid emails before you send campaigns.</li>
<li><strong>Healthier lists:</strong> Keep new contacts clean from day one.</li>
<li><strong>Less manual work:</strong> Import and verify in one pass.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Contacts &gt; Import Contacts</strong> and set up your import.</li>
<li>On the final step, turn on the email verification option.</li>
<li>Start the import.</li>
<li>Open <strong>Bulk Actions</strong> to follow the verification status until it completes.</li>
</ol>
<h2>Working with results</h2>
<ul>
<li>Use the <strong>Email Verification Status</strong> filter to find valid and invalid contacts.</li>
<li>Create <strong>Smart Lists</strong> to separate valid vs. invalid contacts and decide how you want to handle each group.</li>
</ul>
<p>Learn more: <a href="https://help.leadli.com/support/solutions/articles/155000009175" rel="ugc nofollow noopener noreferrer" target="_blank">Email verification during contact import</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:50:21.000Z'),
('wp-1638', 'Workflow A/B testing: compare paths and route contacts to the winning path', 'Overview Leadli now includes an A/B Test action for workflows. You can split contacts evenly across 2 to 10 paths, choose what counts as a conversion, and set when the test ends. After a winner is identified, you can route new contacts to the best-performing path or keep splittin...', '<h2>Overview</h2>
<p>Leadli now includes an A/B Test action for workflows. You can split contacts evenly across 2 to 10 paths, choose what counts as a conversion, and set when the test ends. After a winner is identified, you can route new contacts to the best-performing path or keep splitting evenly while you review results.</p>
<h2>Why this matters</h2>
<p>Different messages and follow-up sequences can produce different outcomes. A/B testing lets you compare variations in a single workflow, measure each path against the same goal, and use the results to decide how future contacts should be routed.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>, then select <strong>Add action</strong> and choose <strong>A/B Test</strong>.</li>
<li>Name the test.</li>
<li>Configure the test settings:
<ul>
<li><strong>Paths:</strong> Add 2 to 10 paths and build the actions you want to compare under each one. Contacts are split evenly across the paths.</li>
<li><strong>Winning criteria:</strong> Choose a goal such as email activity, appointment status, a contact tag, or payment received. Then select the relevant emails, calendar, tag, or product. You can also use a custom condition based on contact fields or custom fields.</li>
<li><strong>Test length:</strong> End the test after a set number of contacts enter, a set number of goal completions, or a specific date and time.</li>
</ul>
</li>
</ol>
<h2>What happens when the test ends</h2>
<ul>
<li><strong>Send new contacts to the winning path:</strong> Future entrants follow the path with the highest conversion rate. Contacts already in a path continue and finish their sequence.</li>
<li><strong>Keep splitting and show the result:</strong> Continue splitting contacts evenly while the winner is marked in Statistics.</li>
</ul>
<h2>Review results</h2>
<p>Open <strong>Statistics</strong> to view entrants, conversions, and conversion rate for each path. If you have enough data, you can select <strong>Declare winner</strong> to end the test early. The path with the highest conversion rate is selected as the winner.</p>
<h2>Common use cases</h2>
<ul>
<li><strong>Consultation bookings:</strong> Compare a direct invitation against a benefits-led follow-up sequence.</li>
<li><strong>Email engagement:</strong> Compare messages using clicks on selected workflow emails.</li>
<li><strong>Lead qualification:</strong> Compare nurturing paths using a qualification tag or a custom field condition.</li>
<li><strong>Payment conversion:</strong> Compare reminder sequences against completed payments.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>A/B Test is separate from the Split action. Its goal measures conversions; it does not determine which path a contact enters.</li>
<li>With winner routing selected, the workflow canvas shows a <strong>Winner</strong> badge and visually mutes the other paths.</li>
<li>If paths tie, the first path is treated as the winner.</li>
<li>Date-based tests use the account time zone.</li>
<li><strong>Reset test</strong> lets you run a new comparison. Saving after a reset clears previous results, and returning contacts may take a different path.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T18:47:33.000Z'),
('wp-1637', 'Email Marketing is faster and easier to use in Leadli', 'Email Marketing in Leadli has been refreshed so you can get to campaigns, templates, and results faster. The screens now use a consistent layout, and the overall experience is smoother while you create and edit emails. What changed Consistent layout across Email Marketing: Campai...', '<p>Email Marketing in Leadli has been refreshed so you can get to campaigns, templates, and results faster. The screens now use a consistent layout, and the overall experience is smoother while you create and edit emails.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Consistent layout across Email Marketing:</strong> Campaigns, templates, statistics, and settings now follow the same structure. The builder also feels more integrated, with smoother drag-and-drop editing.</li>
<li><strong>Faster load time:</strong> Email Marketing can load up to 7x faster on a first visit, so you spend less time waiting to start.</li>
<li><strong>Quicker return visits:</strong> When you come back to edit another email, parts of the tool can reuse what is already loaded.</li>
</ul>
<p><strong>Where to find it</strong></p>
<ol>
<li>Go to <strong>Marketing &gt; Emails</strong>.</li>
<li>Open <strong>Campaigns</strong>, <strong>Templates</strong>, or <strong>Statistics</strong>.</li>
<li>Use <strong>Settings</strong> from the gear icon when needed.</li>
<li>Create a new email or open an existing one to use the updated builder.</li>
</ol>
<p><strong>Note</strong></p>
<ul>
<li>The “up to 7x faster” figure refers to the time to load the email tools on a first visit. Individual screens may still load additional data such as your campaigns, templates, or stats.</li>
<li>Actual performance depends on your device, network, and recent usage.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:38:38.000Z'),
('wp-1636', 'Voice Intelligence for Leadli: automatic call summaries and updates (Labs)', 'October 27, 2026 Voice Intelligence reduces the manual work that usually happens after a recorded call. It creates a clear summary and suggests updates, so your team can follow up consistently. What it does Creates call summaries so you can quickly see what the contact needed, wh...', '<p><strong>October 27, 2026</strong></p>
<p>Voice Intelligence reduces the manual work that usually happens after a recorded call. It creates a clear summary and suggests updates, so your team can follow up consistently.</p>
<h3>What it does</h3>
<ul>
<li><strong>Creates call summaries</strong> so you can quickly see what the contact needed, what was agreed, and what should happen next.</li>
<li><strong>Helps teammates continue the conversation</strong> by making it easy to review the previous call before reaching out again.</li>
<li><strong>Suggests contact updates</strong> (for example, names or emails mentioned on the call) so you can review and save them.</li>
<li><strong>Standardizes call logging</strong> by suggesting a call outcome from your own disposition list for confirmation.</li>
<li><strong>Supports coaching</strong> with a QA score and practical improvement notes, so managers can review calls more efficiently.</li>
</ul>
<p>You stay in control. No contact data is changed until you approve the suggested updates.</p>
<h3>Admin setup options</h3>
<ul>
<li><strong>Summary sections</strong>: choose what your team sees (for example, next steps or objections) and set the order.</li>
<li><strong>QA scorecard</strong>: score calls on the items that match your script. Add, edit, or remove categories as needed.</li>
<li><strong>Field suggestions</strong>: choose which contact fields should be suggested for updates, including custom fields.</li>
<li><strong>Call outcomes</strong>: use suggestions based only on your own call disposition list.</li>
<li><strong>Language</strong>: generate results in the language your team works in.</li>
<li><strong>Optional controls</strong>: turn off any sections you do not want to use.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Enable <strong>Voice Intelligence</strong> in <strong>Labs</strong>.</li>
<li>Go to <strong>Settings &gt; Phone System &gt; Voice &gt; Call Recording &amp; Transcription &gt; Voice Intelligence</strong> and turn it on.</li>
<li>Make sure <strong>Call Recording</strong> is enabled.</li>
</ol>
<p>Notes:</p>
<ul>
<li>Works on calls with LeadConnector numbers.</li>
<li>Skips voicemails and very short calls.</li>
<li>No additional charge beyond your usual call transcription fees.</li>
</ul>
<h3>What’s coming next</h3>
<ul>
<li>Suggested follow-up tasks when a callback or message is promised</li>
<li>Recommended opportunity stage updates after calls</li>
<li>Signals to help you spot unhappy customers sooner</li>
<li>Metrics for talk time balance between reps and contacts</li>
<li>QA trend reporting by rep and team over time</li>
<li>Scores with supporting evidence from the call</li>
<li>Workflow and integration support for summaries and scores</li>
<li>Bulk setup support for agencies managing multiple sub-accounts</li>
<li>Mobile access to summaries and scores</li>
<li>One-click transcript copy for use in notes, emails, or other tools</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T18:37:17.000Z'),
('wp-1635', 'Mobile view controls for email design on phones', 'Mobile View Controls let you adjust how an email looks on a phone without changing the desktop design. What’s included Separate desktop and mobile styling: Switch between Desktop and Mobile in supported style settings. Mobile starts by inheriting desktop values, and you can overr...', '<p>Mobile View Controls let you adjust how an email looks on a phone without changing the desktop design.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Separate desktop and mobile styling:</strong> Switch between Desktop and Mobile in supported style settings. Mobile starts by inheriting desktop values, and you can override only what you need.</li>
<li><strong>Spacing controls for smaller screens:</strong> Adjust mobile padding and margins for sections and supported elements to reduce large gaps or add breathing room.</li>
<li><strong>Mobile-friendly buttons:</strong> Change button alignment (including full-width) and fine-tune typography and spacing so calls to action remain easy to read and tap.</li>
<li><strong>Better control of images and media:</strong> Set mobile alignment, dimensions, and padding for images, logos, and videos. Aspect ratio locking helps keep visuals proportioned.</li>
</ul>
<h3>Why it matters</h3>
<p>Layouts that look good on desktop often need different spacing and sizing on a phone. These controls help you make mobile-specific adjustments in the same email.</p>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Marketing &gt; Emails</strong> and open a campaign or template in the design editor.</li>
<li>Select a section or supported content element.</li>
<li>Open <strong>Style</strong> and use the device selector next to a supported setting.</li>
<li>Choose <strong>Mobile</strong>, adjust values, and review the mobile preview.</li>
<li>Save and use <strong>Preview</strong> to compare Desktop and Mobile views.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Mobile styles inherit desktop values until you change them.</li>
<li>Existing campaigns and templates will not change unless you update their mobile styles.</li>
<li>Available mobile controls vary by element.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:37:17.000Z'),
('wp-1634', 'Create an email sequence from one prompt (Labs)', 'You can now create a complete email sequence using one prompt. Leadli Email AI generates the steps, sets the timing between them, and drafts an email for each step. What’s new Start from a prompt or an idea: Describe your goal, or start from an idea like welcoming new subscribers...', '<p>You can now create a complete email sequence using one prompt. Leadli Email AI generates the steps, sets the timing between them, and drafts an email for each step.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Start from a prompt or an idea:</strong> Describe your goal, or start from an idea like welcoming new subscribers, re-engaging customers, or following up after a webinar.</li>
<li><strong>Quick setup:</strong> Answer a few questions to set the audience, sender address, and start time.</li>
<li><strong>A full sequence created for you:</strong> The sequence is laid out on the canvas with timing and drafted emails for each step.</li>
<li><strong>Review any step:</strong> Open a step to review the email, change the template, or adjust details.</li>
<li><strong>You stay in control:</strong> Nothing is sent until you confirm the audience and start time.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Marketing &gt; Emails &gt; Email sequences</strong>.</li>
<li>Click <strong>Create with AI</strong>.</li>
<li>Describe the sequence you want, or choose a suggested idea.</li>
<li>Answer the questions about the audience, sender, and start time.</li>
<li>Review the steps, then confirm to schedule the sequence.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li><strong>Faster setup:</strong> One prompt becomes a complete multi-step sequence.</li>
<li><strong>Consistent branding:</strong> Emails use your Brand Board settings by default.</li>
<li><strong>Clear review process:</strong> You can review each step before anything is sent.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Sequences send only after you confirm, and you can pause a sequence at any time to edit its steps.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:13:16.000Z'),
('wp-1633', 'Email AI Editor (Labs): Create a send-ready email from a short description', 'Email AI Editor lets you generate a complete email layout from a short description. After it generates the draft, you can refine the email by chatting, editing the HTML, making visual adjustments, or switching to the design editor. Walkthrough video What’s included Start from a p...', '<p>Email AI Editor lets you generate a complete email layout from a short description. After it generates the draft, you can refine the email by chatting, editing the HTML, making visual adjustments, or switching to the design editor.</p>
<p><a href="https://drive.google.com/file/d/13uxmpAYIQmQuPfk8RJnsizJ2M8UPii9r/view?usp=sharing" rel="ugc nofollow noopener noreferrer" target="_blank">Walkthrough video</a></p>
<h3>What’s included</h3>
<ul>
<li><strong>Start from a prompt or idea:</strong> Describe the email in plain language, or start from a suggested idea.</li>
<li><strong>Generates a full email draft:</strong> Produces a layout with common sections like a header, content blocks, calls to action, and a footer.</li>
<li><strong>Uses your brand settings:</strong> Applies your Brand Board (logo and brand colors) by default.</li>
<li><strong>Personalization:</strong> Supports merge fields such as <code>Brian</code>.</li>
<li><strong>Chat-based editing:</strong> Ask for changes (for example, changing a color) and the editor updates the relevant elements.</li>
<li><strong>Code view:</strong> Edit HTML with a live preview.</li>
<li><strong>Visual edits:</strong> Adjust typography, colors, spacing, and borders.</li>
<li><strong>Design editor option:</strong> Open a copy in the drag-and-drop design editor at any time.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Marketing &gt; Emails</strong>.</li>
<li>Click <strong>Create with AI</strong>.</li>
<li>Enter a short description (or pick a suggested idea).</li>
<li>Refine the result using chat, code view, visual edits, or the design editor.</li>
</ol>
<h3>Why this is useful</h3>
<ul>
<li><strong>Faster email creation:</strong> A short prompt becomes a structured email draft.</li>
<li><strong>Less manual design work:</strong> You can make changes through chat, visual edits, or HTML.</li>
<li><strong>More consistent branding:</strong> Your Brand Board is applied automatically.</li>
</ul>
<h3>Good to know</h3>
<ul>
<li>Keep your Brand Board up to date so the editor uses your latest logo and colors.</li>
<li>When you switch to the design editor, it creates a copy of the email, and the converted layout may differ slightly.</li>
</ul>
<p>Learn more: <a href="https://help.leadli.com/support/solutions/articles/155000009290" rel="ugc nofollow noopener noreferrer" target="_blank">Email AI help article</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:08:21.000Z'),
('wp-1632', 'Community badges are now available', 'Badges are now available in Leadli Communities. You can automatically recognize members when they reach milestones or stay active through posts, comments, reactions, and consistent participation. Badges make recognition visible across the community and give members clear goals to...', '<p>Badges are now available in Leadli Communities. You can automatically recognize members when they reach milestones or stay active through posts, comments, reactions, and consistent participation.</p>
<p>Badges make recognition visible across the community and give members clear goals to work toward.</p>
<h2>What&#8217;s included</h2>
<ul>
<li>Automatically award badges based on milestones and engagement.</li>
<li>Show one selected badge next to a member&#8217;s name in the feed, comments, and the member list.</li>
<li>Let members view earned badges and progress from the Badges tab on their profile.</li>
<li>Notify members when they earn a badge.</li>
<li>Send an almost there notification when a member reaches 80% of a badge requirement.</li>
<li>Filter the member list by badge and see how many members currently have each badge.</li>
<li>Refresh engagement badges every quarter to keep recognition timely.</li>
</ul>
<h2>Badge types</h2>
<p><strong>One-time badges</strong></p>
<ul>
<li>Group Admin: Awarded when a member becomes a community admin.</li>
<li>Newbie: Awarded when a member joins the community.</li>
<li>Founding Member: Awarded to qualifying early members.</li>
</ul>
<p><strong>Engagement badges</strong></p>
<p>These badges refresh quarterly based on member activity:</p>
<ul>
<li><strong>Always On</strong>: Earned by posting, commenting, or reacting for a set number of consecutive days.</li>
<li><strong>Top Contributor</strong>: Earned after publishing a set number of comments.</li>
<li><strong>Power User</strong>: Earned after publishing a set number of posts.</li>
<li><strong>Crowd Favourite</strong>: Earned after receiving a set number of likes across posts.</li>
</ul>
<h2>Member experience</h2>
<ul>
<li>Members can see badges next to other members&#8217; names throughout the community.</li>
<li>Members can track earned badges and progress toward the next badge.</li>
<li>Members can receive notifications when they are close to earning a badge or when they earn one.</li>
<li>Members can choose which earned badge appears next to their name.</li>
</ul>
<h2>Admin setup</h2>
<p>Admins can configure badge automation under Community &gt; Settings &gt; Badges.</p>
<p>For each trigger, admins can:</p>
<ul>
<li>Turn automatic awarding on or off.</li>
<li>Set the milestone or engagement threshold.</li>
<li>Select which badge members will receive.</li>
<li>Update the badge design under Memberships &gt; Credentials.</li>
</ul>
<p>If a trigger is enabled, members who already meet the requirements will receive the badge.</p>
<h2>How to get started</h2>
<ul>
<li>Go to Community &gt; Settings &gt; Badges.</li>
<li>Enable the one-time or engagement triggers you want to use.</li>
<li>Set the qualification threshold and select a badge for each trigger.</li>
<li>Create or customize badge templates under Memberships &gt; Credentials.</li>
</ul>
<p>After setup, qualifying members will be recognized automatically and can choose an earned badge to display on their profile.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-10-27T17:49:20.000Z'),
('wp-1631', 'Introducing Meeting Room in Leadli', 'Meeting Room is a built-in video conferencing experience in Leadli. It brings scheduling, video calls, collaboration, recordings, transcripts, and AI summaries together in one place. What you can do Create a personal meeting room with a permanent, reusable link. Start instant mee...', '<p>Meeting Room is a built-in video conferencing experience in Leadli. It brings scheduling, video calls, collaboration, recordings, transcripts, and AI summaries together in one place.</p>
<h2>What you can do</h2>
<ul>
<li>Create a personal meeting room with a permanent, reusable link.</li>
<li>Start instant meetings without scheduling an appointment.</li>
<li>Automatically generate unique Meeting Room links for calendar appointments.</li>
<li>Invite guests with a link (no account required).</li>
<li>Host HD video and audio calls with screen sharing and live chat.</li>
<li>Assign co-hosts and manage participant microphones, cameras, and screen-sharing permissions.</li>
<li>Use waiting rooms and passcodes for added security.</li>
<li>Use reactions, hand raising, and flexible meeting layouts to collaborate.</li>
<li>Upload custom backgrounds when signed in.</li>
<li>Use picture-in-picture mode to keep a meeting visible while you work.</li>
</ul>
<h2>Recordings and meeting history</h2>
<p>You can record meetings and review them later in Meeting History. When available, a meeting may include:</p>
<ul>
<li>Recordings</li>
<li>Speaker-labeled transcripts</li>
<li>Participant and meeting details</li>
</ul>
<h2>AI meeting summaries</h2>
<p>If a transcript is available, you can generate an AI summary to quickly review:</p>
<ul>
<li>Key takeaways</li>
<li>Action items and next steps</li>
<li>Important decisions and outcomes</li>
</ul>
<p>This can reduce time spent reviewing calls and help teams focus on follow-up.</p>
<h2>Common use cases</h2>
<ul>
<li>Sales calls and client consultations</li>
<li>Calendar-based client appointments</li>
<li>Team discussions and project reviews</li>
<li>Coaching sessions, training calls, and product demonstrations</li>
</ul>
<h2>Get started</h2>
<p>Go to Meeting Rooms in the side panel to create your personal meeting room or start an instant meeting.</p>
<p>To use Meeting Room for booked appointments, select Meeting Room as the meeting location when you configure your calendar.</p>
<p><em>Custom background uploads are available for signed-in users.</em></p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T17:49:11.000Z'),
('wp-1630', 'Breakout rooms are now available in Leadli Meeting Rooms', 'Breakout Rooms let you split a Meeting Room into smaller groups for focused discussions, activities, and collaboration. What you can do Create up to 100 breakout rooms in a single meeting. Assign participants automatically or manually. Let participants choose their own room (when...', '<p>Breakout Rooms let you split a Meeting Room into smaller groups for focused discussions, activities, and collaboration.</p>
<h2>What you can do</h2>
<ul>
<li>Create up to 100 breakout rooms in a single meeting.</li>
<li>Assign participants automatically or manually.</li>
<li>Let participants choose their own room (when enabled by the host).</li>
<li>Rename rooms and adjust assignments before starting the breakout session.</li>
</ul>
<h2>Host controls during a session</h2>
<ul>
<li>Move participants between rooms.</li>
<li>Join any breakout room.</li>
<li>Send a message to all rooms at once.</li>
<li>Set a session timer and extend it if needed.</li>
<li>Automatically bring everyone back to the main meeting when time is up.</li>
</ul>
<h2>Recordings and transcripts</h2>
<p>Recording and live transcription can be managed separately for each breakout room.</p>
<ul>
<li>Start or stop recording per room.</li>
<li>Enable or disable live transcription per room.</li>
<li>See which rooms are currently recording or transcribing.</li>
</ul>
<h2>Participant experience</h2>
<ul>
<li>Join an assigned room with one click (or be moved automatically).</li>
<li>Switch rooms when the host allows it.</li>
<li>Get a countdown reminder before the breakout session ends.</li>
<li>Return to the main meeting automatically or with one click.</li>
</ul>
<h2>How to start</h2>
<p>While hosting a Meeting Room, select <strong>Breakout Rooms</strong> from the meeting toolbar. Create the rooms, choose how participants should be assigned, and start the breakout session.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:48:10.000Z'),
('wp-1629', 'Inbox Preview: See how your emails look in real inboxes', 'Overview Inbox Preview lets you check how an email will look in common email clients before you send it. This helps you catch formatting and rendering issues early. What this feature includes Real email client previews Preview your email in clients such as Gmail, Outlook, and App...', '<h2>Overview</h2>
<p>Inbox Preview lets you check how an email will look in common email clients before you send it. This helps you catch formatting and rendering issues early.</p>
<h2>What this feature includes</h2>
<h3>Real email client previews</h3>
<ul>
<li>Preview your email in clients such as Gmail, Outlook, and Apple Mail.</li>
<li>Review real client rendering rather than only simulated device previews.</li>
<li>Optionally preview as a specific contact to see personalization filled in.</li>
</ul>
<h3>Compare across multiple clients</h3>
<ul>
<li>Select the clients you want to test (or start with a recommended set).</li>
<li>Filter by device type (web, desktop, mobile) and by light/dark mode.</li>
<li>Compare layouts across clients to find differences in formatting and design.</li>
<li>Open a preview in full size and switch between clients for review.</li>
</ul>
<h3>Spot problems before you send</h3>
<ul>
<li>Identify common issues such as Outlook rendering problems and dark-mode inconsistencies.</li>
<li>View the estimated email size and get a warning if Gmail may clip the message.</li>
<li>After edits, you can see which previews need to be refreshed so you are not reviewing an older version.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>Settings &gt; Labs</strong> and enable <strong>Inbox Preview</strong>.</li>
<li>Open an email in the email builder (or the AI editor).</li>
<li>Click <strong>Inbox preview</strong> in the toolbar, or open it from <strong>Preview &amp; test</strong>.</li>
<li>Select the email clients you want to test.</li>
<li>Click <strong>Preview email</strong>, then review each client as results load.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Improve email consistency across inboxes.</li>
<li>Reduce rendering issues before campaigns go out.</li>
<li>Ship higher-quality emails with less manual testing.</li>
</ul>
<h2>Availability</h2>
<p>This is available in the email builder and AI editor after it is enabled in Labs.</p>
<h2>Good to know</h2>
<ul>
<li>Each sub-account has a set number of inbox previews. Failed previews are not counted, so you can retry.</li>
<li>Help article: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009111-inbox-preview" target="_blank" rel="ugc nofollow noopener noreferrer">Inbox Preview help article</a></li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:43:20.000Z'),
('wp-1628', 'AI Builder can now configure workflows using your account data', 'Leadli AI Builder for Workflows can now do more than generate a workflow outline. When you include the names of items that already exist in your account (forms, pipelines, stages, snippets, tags, users, and more), it will look them up and apply them while building the workflow. W...', '<p>Leadli AI Builder for Workflows can now do more than generate a workflow outline. When you include the names of items that already exist in your account (forms, pipelines, stages, snippets, tags, users, and more), it will look them up and apply them while building the workflow.</p>
<h2>What changed</h2>
<ul>
<li>AI Builder can now select the exact form, pipeline, stage, snippet, tag, user, or workflow you mention in your prompt.</li>
<li>This reduces the need to open each step to pick values after the workflow is created.</li>
</ul>
<h2>What you will see during the build</h2>
<ul>
<li>A progress view showing which records were found (for example: &#8220;Found form&#8221; or &#8220;Found pipeline&#8221;).</li>
</ul>
<h2>Examples of steps that can be configured</h2>
<ul>
<li>Form Submitted: sets the trigger filter to the form you named.</li>
<li>Create Opportunity: sets the pipeline and stage from your account.</li>
<li>Send Email: uses your existing snippet for the subject and body.</li>
<li>Add Tag: selects an existing tag instead of creating a duplicate.</li>
<li>Create Task: assigns the task to the user you named.</li>
<li>Add to Workflow: links to the workflow you named.</li>
<li>Update Contact Field: updates the custom field you named.</li>
</ul>
<h2>Supported record types</h2>
<p>AI Builder can reference many items you already use, including workflows, campaigns, users, teams, tags, trigger links, countries, phone numbers, pipelines and stages, opportunity custom fields, calendars and services, forms, surveys, funnels, videos, products and memberships, custom objects and fields, templates, and social pages.</p>
<h2>How to use it</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Create a workflow (or open an existing one) and open AI Builder.</li>
<li>Write your prompt and include record names exactly as they appear in your account (for example: &#8220;Pipeline: Marketing, Stage: New Lead&#8221;).</li>
<li>Send the prompt, then review the values that were set.</li>
<li>Test the workflow and publish when ready.</li>
</ol>
<p><strong>Note:</strong> Review each step before publishing. If the wrong record was selected, update it in the step or ask AI Builder to change it.</p>
<h2>Why this matters</h2>
<ul>
<li>Less manual setup after the workflow is generated.</li>
<li>Fewer mistakes caused by selecting the wrong record or creating duplicates.</li>
<li>A workflow that is closer to ready for testing.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>AI Builder can only use records that already exist in your account.</li>
<li>Some settings may still require your input, such as credentials.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T17:22:33.000Z'),
('wp-1627', 'Test workflows step by step with real events', 'You can now test a workflow trigger or a single action using a real event from your account. You can also run the full workflow step by step and review inputs and outputs as you go. This feature is available in Leadli Labs. What’s new Test a trigger with a real event: Open the Te...', '<p>You can now test a workflow trigger or a single action using a real event from your account. You can also run the full workflow step by step and review inputs and outputs as you go. This feature is available in Leadli Labs.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Test a trigger with a real event:</strong> Open the Test tab on a trigger, turn on <em>Listen for events</em>, then perform the action that fires the trigger (for example, submit a form). When the event appears, click <em>Test Trigger</em> to pin that event for the steps that follow.</li>
<li><strong>Test one action at a time:</strong> Open the Test tab on an action to view the input built from the pinned event, then click <em>Test action</em>. The output will show the response (for example, a message body or a newly created record ID) that later steps can reference.</li>
<li><strong>Run the full workflow and watch results live:</strong> Click <em>Test workflow</em>, choose the trigger and event, then start the test run. Each step will show whether it succeeded, failed, or was skipped, and you can open any step to review its input and output.</li>
<li><strong>History and retry:</strong> Use the History tab to review prior test runs. If a step fails, you can retry the run using the same trigger data and action configuration.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open Leadli Labs and enable “The New Test Workflow”.</li>
<li>Go to <em>Automation &gt; Workflows</em> and open a workflow.</li>
<li>Select the trigger, open the Test tab, and choose testing with events.</li>
<li>Turn on <em>Listen for events</em>, then fire the trigger once.</li>
<li>Select the event and click <em>Test Trigger</em>.</li>
<li>(Optional) Select an action, open its Test tab, and click <em>Test action</em>.</li>
<li>Click <em>Test workflow</em>, select the trigger and event, then start the test run.</li>
<li>Review each step’s result, then save and publish your workflow.</li>
</ol>
<p><strong>Important:</strong> Tests run real steps. Messages can be sent and records can be created or updated. Use test details when you do not want to affect real customers.</p>
<h2>Why this matters</h2>
<p>This makes it easier to confirm that each step works before publishing, and to identify exactly where a workflow fails.</p>
<ul>
<li><strong>More confidence when publishing:</strong> You can verify steps with real trigger data before going live.</li>
<li><strong>Faster troubleshooting:</strong> The failing step shows its own input and output, and you can retry using the same data.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Listening for events lasts 15 minutes. Turn it on again if your event does not arrive in time.</li>
<li>Test the trigger before testing an action. Action tests use the event pinned by the trigger test.</li>
<li>Testing is optional. You can save and publish without testing.</li>
<li>If you do not have a real event to fire, you can enroll a contact to test using a contact you select.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T17:03:16.000Z'),
('wp-1626', 'Graphic library now available in Leadli builders', 'Overview Leadli now includes a built-in graphic library in the Funnel, Website, Store, and Webinar builders. You can browse by category or search to quickly find the graphic you need. What’s included Large library of graphics: Choose from thousands of icons and illustrations. Ico...', '<h2>Overview</h2>
<p>Leadli now includes a built-in graphic library in the Funnel, Website, Store, and Webinar builders. You can browse by category or search to quickly find the graphic you need.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Large library of graphics:</strong> Choose from thousands of icons and illustrations.</li>
<li><strong>Icon color controls:</strong> Change icon colors to better match your page design.</li>
<li><strong>AI generation and uploads:</strong> Generate a new illustration with AI or upload your own graphic.</li>
<li><strong>Flexible placement:</strong> Drop graphics onto the canvas as their own element, or attach them to existing elements (for example, an icon next to a button or heading).</li>
</ul>
<h2>Why it matters</h2>
<p>This removes the need to find graphics on third-party sites or rely on workarounds. It also makes it easier to create a consistent look across your pages, and to generate a custom illustration when you can’t find the right option in the library.</p>
<h2>How to use it</h2>
<ol>
<li>Open a page in the Funnel, Website, Store, or Webinar builder.</li>
<li>Open the graphic library from the left panel, from an element’s settings, or by typing a colon (:) while editing text.</li>
<li>Browse or search, then click or drag a graphic onto the canvas.</li>
<li>If you add an icon, adjust its color if needed.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Color customization is available for icons only (not illustrations).</li>
<li>This is available now in the Funnel, Website, Store, and Webinar builders.</li>
<li>Support for additional builders, including email, is planned.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:02:41.000Z'),
('wp-1625', 'Sync and manage your Meta campaigns in Leadli Ad Manager', 'Overview Leadli Ad Manager gives you one place to manage your Meta campaigns. After you connect your Meta ad account, your existing Meta campaigns are available in Leadli Ad Manager. If you edit a campaign in Leadli Ad Manager or in Meta Ads Manager, changes stay in sync automati...', '<h2>Overview</h2>
<p>Leadli Ad Manager gives you one place to manage your Meta campaigns.</p>
<p>After you connect your Meta ad account, your existing Meta campaigns are available in Leadli Ad Manager. If you edit a campaign in Leadli Ad Manager or in Meta Ads Manager, changes stay in sync automatically. This lets you manage, edit, and report on your Meta campaigns in one workflow.</p>
<p>If your Meta account is already connected, you can enable two-way sync in your Ad Manager settings so your existing campaigns appear in Ad Manager.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Your Meta campaigns are available quickly:</strong> Connect your Meta ad account and choose which campaigns to sync by campaign status and time period. Campaigns, ad sets, and ads sync in the background.</li>
<li><strong>Edit in either place and stay in sync:</strong> Updates made in Leadli Ad Manager are sent to Meta, and updates made in Meta are brought back into Leadli Ad Manager automatically.</li>
<li><strong>See where each campaign came from:</strong> The Campaigns page separates campaigns created in Ad Manager vs. synced from Meta, and also includes an All Campaigns view.</li>
<li><strong>Use the same builder:</strong> Synced campaigns open in the same full-screen campaign builder, and advanced Meta settings remain unchanged.</li>
<li><strong>One set of results:</strong> Reporting includes key metrics such as impressions, clicks, spend, conversions, leads, CTR, CPC, and CPL for every campaign.</li>
<li><strong>Refresh or change your sync selection any time:</strong> You can refresh to pull the latest Meta changes on demand, or update which campaigns you sync. Updates sync in near real time.</li>
</ul>
<h2>How to use it</h2>
<p><strong>If you are new to Ad Manager, connect your Meta ad account:</strong></p>
<ol>
<li>Go to <strong>Ad Manager → Link Meta ad account</strong>.</li>
<li>Choose to import all existing campaigns, or select campaigns to sync by <strong>campaign status</strong> and <strong>time period</strong>.</li>
<li>Click <strong>Connect account</strong>. Your campaigns will sync in the background.</li>
</ol>
<p><strong>If you are already connected, turn on sync:</strong></p>
<ol>
<li>Go to <strong>Ad Manager → Settings → Meta ad account</strong>.</li>
<li>Turn on the <strong>Sync</strong> toggle.</li>
<li>Select the campaigns to sync by <strong>campaign status</strong> and <strong>time period</strong>, then click <strong>Save</strong>.</li>
</ol>
<p><strong>Manage synced campaigns:</strong></p>
<ol>
<li>Go to <strong>Ad Manager → Campaigns → Synced from Meta</strong>.</li>
<li>Open a campaign to edit it, or expand it to view ad sets and ads.</li>
<li>Save your changes. They will be sent to Meta automatically.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>You can continue using Leadli Ad Manager while syncing runs in the background.</li>
<li>To change which campaigns sync, go to <strong>Ad Manager → Settings → Meta ad account</strong>.</li>
<li>Sync runs in near real time, so changes appear in both places quickly.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li><strong>Faster setup:</strong> Bring existing Meta campaigns into Ad Manager soon after connecting.</li>
<li><strong>Everything in one place:</strong> Manage Meta campaigns from Ad Manager, including campaigns originally built in Meta.</li>
<li><strong>Current numbers:</strong> Budgets, status, and creative stay aligned between Ad Manager and Meta.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:02:19.000Z'),
('wp-1624', 'Switch templates inside the Leadli Email Builder', 'What’s new Switch templates without leaving the builder: You can now open the template library from the top bar in the Email Builder to browse, search, and apply a different template to the email you are working on. Replace with confirmation: When you apply a new template, it rep...', '<h2>What’s new</h2>
<ul>
<li><strong>Switch templates without leaving the builder:</strong> You can now open the template library from the top bar in the Email Builder to browse, search, and apply a different template to the email you are working on.</li>
<li><strong>Replace with confirmation:</strong> When you apply a new template, it replaces the content on the canvas. If your email already has content, you will be asked to confirm before anything changes.</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, you could only choose a template when creating a new email. Changing templates meant leaving the builder and starting over. With this update, you can switch templates in place and only replace your content after you confirm.</p>
<h2>How to use</h2>
<ol>
<li>Open the Email Builder.</li>
<li>Click the template switch icon in the top bar.</li>
<li>Browse or search for a template.</li>
<li>Select a template and confirm to replace the current content.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This is currently available in the Email Builder design editor.</li>
<li>Support for other builders will be added in future releases.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:02:17.000Z'),
('wp-1623', 'Preview templates in your brand colors', 'Overview You can now preview templates using your own Brand Board colors before you choose one. This helps you confirm how a template will look in your brand styles before you apply it. Preview with your Brand Boards: In the template preview, you can select a Brand Board to apply...', '<h2>Overview</h2>
<p>You can now preview templates using your own Brand Board colors before you choose one. This helps you confirm how a template will look in your brand styles before you apply it.</p>
<ul>
<li><strong>Preview with your Brand Boards:</strong> In the template preview, you can select a Brand Board to apply your colors.</li>
<li><strong>Colors apply immediately:</strong> When you choose a Brand Board, the preview updates right away so you can review the result before selecting the template.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the template picker in any supported builder.</li>
<li>Select a template to open the preview.</li>
<li>In the preview, choose a Brand Board from the list on the right.</li>
<li>If you do not have a Brand Board yet, create one from the panel on the right.</li>
<li>Click “Choose template” to apply it with your Brand Board colors.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This release updates the preview experience in the template picker.</li>
<li>Template recoloring is based on the colors saved in your Brand Board.</li>
<li>Updating Brand Board colors does not automatically update templates you already applied.</li>
<li>If you do not have a Brand Board set up, use the “Setup Brand Board” option in the preview.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T17:02:15.000Z'),
('wp-1622', 'Brand Boards: Typography settings and preview', 'Overview Brand Boards now include a full typography hierarchy so you can define consistent text styles in one place. What’s included Complete type hierarchy: Set styles for Headings 1–6, Subtitle 1–2, Body 1–2, Caption, and Overline, along with basic font settings. Smart defaults...', '<h2>Overview</h2>
<p>Brand Boards now include a full typography hierarchy so you can define consistent text styles in one place.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Complete type hierarchy:</strong> Set styles for Headings 1–6, Subtitle 1–2, Body 1–2, Caption, and Overline, along with basic font settings.</li>
<li><strong>Smart defaults with manual control:</strong> Styles are mapped across the hierarchy by default, and any changes you make are saved for future use.</li>
<li><strong>Improved preview:</strong> Review the full hierarchy (headings, subtitles, body text, captions, overlines) side by side before applying it.</li>
</ul>
<h2>Why it matters</h2>
<p>Typography is a core part of brand consistency. This update helps you standardize text styles across headings and body text without configuring every style from scratch.</p>
<h2>How to use</h2>
<ol>
<li>Open your Brand Board and go to the <strong>Typography</strong> tab.</li>
<li>Review the default styles across the hierarchy.</li>
<li>Adjust font family, size, weight, and line height as needed.</li>
<li>Use the preview to confirm the hierarchy looks right, then save.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Available in Brand Boards now. Typography support is planned for Funnels soon, with Websites, Forms, and Emails to follow.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T17:02:14.000Z'),
('wp-1621', 'Create a brand board without leaving the email builder', 'What’s new Create a board without leaving the builder: Selecting "Create brand board" from the email builder’s color picker now opens a quick-create window in place instead of sending you to a new tab. Import your brand automatically, or start with a preset: Paste your website UR...', '<h2>What’s new</h2>
<ul>
<li><strong>Create a board without leaving the builder:</strong> Selecting &#8220;Create brand board&#8221; from the email builder’s color picker now opens a quick-create window in place instead of sending you to a new tab.</li>
<li><strong>Import your brand automatically, or start with a preset:</strong> Paste your website URL to pull in brand colors, logo, and fonts, or choose a ready-made style preset (or start from blank).</li>
<li><strong>Review and adjust before saving:</strong> Update colors, fonts, and logo in the same window, then save when ready.</li>
</ul>
<h2>Why this matters</h2>
<p>The previous flow interrupted your work by taking you to a different page. This update keeps you in the email builder so you can set up a brand board quickly and keep moving. After saving, your brand colors appear as swatches in the color picker right away.</p>
<h2>How to use it</h2>
<ol>
<li>Open the <strong>email builder</strong> and open the color picker.</li>
<li>Click <strong>&#8220;Create brand board&#8221;</strong> (this appears when you do not have any brand boards set up).</li>
<li>Paste your website URL to import your brand automatically, or choose a preset style to start from.</li>
<li>Adjust colors, fonts, and logo as needed.</li>
<li>Save. Your brand colors will show as swatches in the color picker.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Available in the email builder’s color picker for now. Support for other builders (Websites, Funnels, Forms) is planned for future releases.</li>
<li>Editing brand boards and switching between multiple existing boards will be included in upcoming releases.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:02:12.000Z'),
('wp-1620', 'QR Codes: Use brand and custom colors', 'What’s new Brand color swatches: The QR Codes area now shows your Brand Board colors as selectable swatches, so you can match a QR code to your brand without entering hex codes. Saved custom colors: Your saved custom colors are also available alongside your brand colors, so you c...', '<h2>What’s new</h2>
<ul>
<li><strong>Brand color swatches:</strong> The QR Codes area now shows your Brand Board colors as selectable swatches, so you can match a QR code to your brand without entering hex codes.</li>
<li><strong>Saved custom colors:</strong> Your saved custom colors are also available alongside your brand colors, so you can use the same palette you use elsewhere.</li>
</ul>
<h2>Why it matters</h2>
<p>QR codes are often used on printed materials and marketing assets where consistent branding matters. This update makes it easier to apply the right colors without guessing hex values.</p>
<h2>How to use it</h2>
<ol>
<li>Open the QR Codes section.</li>
<li>Select a QR code to edit, or create a new one.</li>
<li>In the color picker, choose a color from your Brand Board swatches or your saved custom colors.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T17:02:10.000Z'),
('wp-1619', 'Launch TikTok Ads from Leadli Ad Manager', 'Overview TikTok Ads is now available in the Leadli Ad Manager, alongside Meta, Google, and LinkedIn. You can build, publish, manage, and measure TikTok Lead Generation campaigns without leaving Leadli. Your TikTok campaigns can collect leads through Instant Forms and TikTok Direc...', '<h2>Overview</h2>
<p>TikTok Ads is now available in the Leadli Ad Manager, alongside Meta, Google, and LinkedIn. You can build, publish, manage, and measure TikTok Lead Generation campaigns without leaving Leadli. Your TikTok campaigns can collect leads through Instant Forms and TikTok Direct Messages.</p>
<h2>What’s new</h2>
<ul>
<li><strong>TikTok in the campaign builder:</strong> Create TikTok Lead Generation campaigns in the same builder you use for other channels.</li>
<li><strong>Choose how leads come in:</strong> Use <em>Instant Forms</em> or <em>Direct Messages</em>.</li>
<li><strong>Ad group controls:</strong> Set budget, schedule, bidding strategy, and targeting by interests and behaviors.</li>
<li><strong>Carousel image and video ads:</strong> Upload multiple images or a video per ad and preview supported placements before publishing.</li>
<li><strong>Results in one place:</strong> TikTok performance appears in Statistics next to your other channels.</li>
<li><strong>Campaign management:</strong> Edit, pause, resume, or duplicate campaigns from the Campaigns table.</li>
<li><strong>Account connection:</strong> Connect and manage your TikTok Business Center and ad account from Ad Manager settings.</li>
</ul>
<h2>How to use it</h2>
<h3>Connect your TikTok account</h3>
<ol>
<li>Go to <strong>Ad Manager → Settings → TikTok → Ad accounts</strong>, then click <strong>Connect account</strong>.</li>
<li>Click <strong>Connect TikTok Lead Ads</strong>, sign in to TikTok, and approve the requested access.</li>
<li>Select your <strong>Business Center</strong> and <strong>Ad account</strong>, then click <strong>Save</strong>.</li>
</ol>
<h3>Launch a campaign</h3>
<ol>
<li>Go to <strong>Ad Manager → Campaigns → Create Campaign → TikTok → Start from scratch</strong>.</li>
<li>In <strong>Ad Group</strong>, choose your conversion location (<em>Instant Form</em> or <em>Direct Messages</em>), then set budget, schedule, and audience.</li>
<li>In <strong>Ad</strong>, choose a destination (Instant Form or Direct Message template), select the TikTok account, upload creative, and add ad text and CTA.</li>
<li>Click <strong>Review → Publish</strong>.</li>
</ol>
<p><strong>Note:</strong> If you plan to use Instant Forms, you must create them in TikTok Ads Manager before they can be used in your campaigns.</p>
<h2>Why this matters</h2>
<ul>
<li><strong>Run more lead gen in one place:</strong> Plan, launch, and report TikTok campaigns alongside Meta, Google, and LinkedIn.</li>
<li><strong>Reach engaged audiences:</strong> Use TikTok targeting to reach the right people by interests and behaviors.</li>
<li><strong>Fewer publishing issues:</strong> Built-in checks help catch missing details and incomplete setup before you publish.</li>
<li><strong>Keep ad operations centralized:</strong> Manage your ad spend and workflows inside Leadli.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T16:31:59.000Z'),
('wp-1618', 'Shareable AI agent chat pages for Leadli workflows', 'You can now host a workflow AI agent on a dedicated chat page and share the link with customers. Customers can chat with the agent directly without adding a website widget or writing code. What’s included Hosted chat page: Each AI Agent Action can have its own shareable link. Ver...', '<p>You can now host a workflow AI agent on a dedicated chat page and share the link with customers. Customers can chat with the agent directly without adding a website widget or writing code.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Hosted chat page:</strong> Each AI Agent Action can have its own shareable link.</li>
<li><strong>Verified visitors:</strong> Visitors sign in with their email and a one-time code. The email must match an existing contact in your account.</li>
<li><strong>Page appearance:</strong> Set a display name, avatar initials, and a welcome message.</li>
<li><strong>Suggested prompts:</strong> Add quick replies to help visitors start a conversation.</li>
<li><strong>Unavailable message:</strong> Choose what visitors see when the page is offline.</li>
<li><strong>Offline or live:</strong> The page stays offline until you turn it on, and you can preview it before sharing.</li>
<li><strong>Full chat experience:</strong> Visitors can type or dictate, start a new chat, and return to past chats.</li>
<li><strong>Agent chat history:</strong> Review each session, including messages, tools used, and token usage.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open the workflow that contains your <strong>AI Agent Action</strong>.</li>
<li>In the AI Agent Action, scroll to <strong>Share</strong> and select <strong>Set up shareable link</strong>.</li>
<li>Enter the display name, avatar initials, welcome message, suggested prompts, and unavailable message.</li>
<li>Select <strong>Create link</strong>.</li>
<li>Publish your workflow.</li>
<li>Switch the hosted chat page from <strong>Offline</strong> to <strong>Live</strong>.</li>
<li>Use <strong>Preview</strong> to see the page the same way customers will.</li>
<li>Share the link.</li>
<li>Use the <strong>Share</strong> section to review agent chat sessions.</li>
</ol>
<h2>Billing and access notes</h2>
<ul>
<li><strong>Billing:</strong> Each visitor reply is billed like an AI Agent execution in your workflow.</li>
<li><strong>Publishing requirement:</strong> The shared page remains offline until the workflow is published.</li>
<li><strong>Access:</strong> Only verified visitors can chat, and they must already exist as contacts in your account.</li>
<li><strong>Accuracy:</strong> AI replies can be incorrect, and the page displays a note to visitors.</li>
</ul>
<h2>Example use case</h2>
<p>You can use the hosted chat page as a simple support desk. A customer signs in, asks for a ticket status, and the agent can look up the ticket and respond with the latest details. The same chat can be used to capture new issues, add notes, or create a new ticket.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T16:27:29.000Z'),
('wp-1617', 'Automatic company creation and contact association by email domain', 'Leadli can now automatically create or match a company based on a contact’s email domain. When a contact is created or their email address changes, Leadli looks for an existing company with the same domain, links the contact, and can create and enrich a new company when needed. W...', '<p>Leadli can now automatically create or match a company based on a contact’s email domain. When a contact is created or their email address changes, Leadli looks for an existing company with the same domain, links the contact, and can create and enrich a new company when needed.</p>
<h2>What’s included</h2>
<ul>
<li>Available to all sub-accounts (no Labs toggle required).</li>
<li>For new agencies, <strong>Create companies from contact’s email domain</strong> is on by default. Existing agencies can enable it in settings.</li>
<li>One domain per company (unique by default) to reduce duplicate companies.</li>
<li>Automatic contact-to-company association using the email domain.</li>
<li>Optional automatic enrichment when a new company is created (domain, name, and logo).</li>
<li>Exclusions for common free email providers, plus support for custom excluded domains.</li>
<li>Options to add domains to existing companies and apply the automation to existing contacts.</li>
</ul>
<h2>Why it matters</h2>
<p>For B2B teams, a contact’s email domain is a reliable signal for which company they belong to. This helps reduce manual work, avoids duplicates, and keeps existing company records (including deals and notes) connected to the right contacts.</p>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Settings &gt; Objects &gt; Companies</strong>.</li>
<li>Under <strong>Automations</strong>, enable the options you want, such as <strong>Create companies from contact’s email domain</strong>, <strong>Enrich companies automatically</strong>, and <strong>Automatically prevent duplicate companies</strong>.</li>
<li>Add any domains you want to ignore under <strong>Exclude domains from automatic association</strong>.</li>
<li>If needed, fill in domains for existing companies, then apply the automation to existing contacts, and save your changes.</li>
</ol>
<h2>Notes and tips</h2>
<ul>
<li>Keep duplicate prevention enabled to reduce accidental duplicate company records.</li>
<li>If you are applying this to existing data, add or verify company domains first so contacts attach to the correct companies.</li>
<li>Existing contact-to-company links are respected and will not be overwritten.</li>
<li>Domain matching is exact (for example, <code>company.com</code> and <code>mail.company.com</code> are treated as different domains).</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T15:38:17.000Z'),
('wp-1616', 'Search conversation messages by keyword', 'You can now search for words or phrases in your Conversations inbox, across all conversations or within a single conversation. This helps you find the right message quickly without scrolling through long threads. What’s included Search across conversations: Enter a keyword to see...', '<p>You can now search for words or phrases in your Conversations inbox, across all conversations or within a single conversation. This helps you find the right message quickly without scrolling through long threads.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Search across conversations:</strong> Enter a keyword to see every conversation that includes it. Results show a preview of the matching message and let you open the conversation at the match.</li>
<li><strong>Search within a conversation:</strong> Open a contact thread and search inside that conversation. Matches are highlighted and you can jump between them using next/previous controls.</li>
</ul>
<h3>Filters</h3>
<p>You can narrow results using filters such as date range, channel (Email, SMS, Facebook, WhatsApp, Instagram), direction, owner, attachments, and followers.</p>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Conversations</strong>.</li>
<li>Select the search option and type a keyword, contact name, email address, or phone number.</li>
<li>Choose a result to open the conversation at the matching message.</li>
<li>Optional: use filters to narrow the results.</li>
</ol>
<h3>Why it matters</h3>
<p>This makes it easier to locate past details like quoted prices, dates, requests, and product mentions, even in large inboxes.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:38:14.000Z'),
('wp-1615', 'Workflow trigger: start a workflow when CRM records are linked', 'You can now start a Leadli workflow automatically when a new association links two CRM records. Use the associated record type and the relationship label to control when follow-up begins. What’s included Works across CRM record types: Contacts, Opportunities, Custom Objects, and ...', '<p>You can now start a Leadli workflow automatically when a new association links two CRM records. Use the associated record type and the relationship label to control when follow-up begins.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Works across CRM record types:</strong> Contacts, Opportunities, Custom Objects, and Companies.</li>
<li><strong>Supported workflow types:</strong> Standard workflows, Custom Object workflows, and Company workflows.</li>
<li><strong>Relationship filters:</strong> Choose the associated object and (optionally) filter by association label to control when the workflow runs.</li>
</ul>
<h2>Why it matters</h2>
<p>When records are linked, it often means a next step is needed. For example, you can notify your team when a buyer is linked to a property, create a follow-up task when records connect, or start an onboarding process.</p>
<h2>How to set it up</h2>
<ol>
<li>Enable the Association Created trigger in Labs.</li>
<li>Go to <strong>Automation</strong> &gt; <strong>Workflows</strong> and open a supported workflow.</li>
<li>Add the <strong>Association Created</strong> trigger.</li>
<li>In <strong>Association created with</strong>, choose the associated object. Use <strong>Add filters</strong> to add an <strong>Association label</strong> filter and select the label you want.</li>
<li>Save the trigger, add your actions, and publish the workflow.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Start with the right record:</strong> Choose the workflow type for the record that should enroll, then configure the associated object.</li>
<li><strong>Use labels for accuracy:</strong> Labels help you target the relationship role that matters to your process.</li>
<li><strong>Test after publishing:</strong> Create a matching association and review Enrollment history and Execution logs.</li>
</ul>
<p><strong>More details:</strong> <a href="https://help.leadli.com/support/solutions/articles/155000006491-workflow-trigger-%E2%80%93-association-created" rel="ugc nofollow noopener noreferrer" target="_blank">Support documentation</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T15:38:14.000Z'),
('wp-1614', 'Link a contact to multiple companies in Leadli', 'You can now connect one contact to multiple companies without creating duplicate records. The Primary Company link remains a system label and cannot be edited, so you can add additional company relationships using a custom association label. What changed Multiple company links: C...', '<p>You can now connect one contact to multiple companies without creating duplicate records. The Primary Company link remains a system label and cannot be edited, so you can add additional company relationships using a custom association label.</p>
<h2>What changed</h2>
<ul>
<li><strong>Multiple company links:</strong> Create a custom association label between Contacts and Companies and use it to link a contact to every company they work with.</li>
<li><strong>Add more links as needed:</strong> After the first company, you can continue linking additional companies from the contact’s associations.</li>
<li><strong>Link from either side:</strong> Link companies from a contact record, or link an existing contact from a company’s Associations tab.</li>
<li><strong>Primary Company stays in place:</strong> Default automations continue to use Primary Company, and your additional links appear alongside it.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Manage shared contacts across accounts:</strong> Keep one consultant, owner, or finance contact connected to multiple companies.</li>
<li><strong>Reduce duplicates:</strong> Maintain a person’s details in one contact record while reflecting their relationships to several companies.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Enable Association Labels and multiple company linking for contacts in Labs.</li>
<li>Go to <strong>Settings &gt; Objects &gt; Companies &gt; Associations</strong>, then create an association to <strong>Contacts</strong>. Name the labels and set the relationship to allow linking multiple companies.</li>
<li>Open a contact, choose <strong>Add</strong> next to Companies, select the company, and pick the new association label.</li>
<li>Save, then repeat for any additional companies you want to link.</li>
<li>Optionally, open a company and link an existing contact from <strong>Associations &gt; Contacts</strong>.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Primary Company cannot be edited:</strong> Use your new association label for any additional company links.</li>
<li><strong>Check relationship limits:</strong> Make sure the association settings allow the number of linked companies you need.</li>
<li><strong>Company merge fields:</strong> Merge fields that reference a company will continue to use Primary Company unless otherwise specified.</li>
</ul>
<p><strong>Learn more:</strong> See the Leadli help documentation for association labels and company linking.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T15:38:02.000Z'),
('wp-1613', 'View associated records in Contact Smart Lists', 'You can now view Custom Object and Company records linked to each Contact directly in Smart Lists. Use these relationships to filter, segment, and save audiences for follow-up. What’s included Relationship columns: Add a separate column for each association label, including multi...', '<p>You can now view Custom Object and Company records linked to each Contact directly in Smart Lists. Use these relationships to filter, segment, and save audiences for follow-up.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Relationship columns:</strong> Add a separate column for each association label, including multiple relationships to the same object.</li>
<li><strong>Linked record chips:</strong> See associated records at a glance and open a record from its chip. When there are more linked records, you’ll see a +N indicator.</li>
<li><strong>Association-based filters:</strong> Filter Contacts by linked records using options like Contains any, Does not contain any, Is empty, and Is not empty.</li>
<li><strong>Relationship-focused audiences:</strong> Save Smart Lists built around linked pets, Companies, or other records alongside your existing Contact criteria.</li>
<li><strong>Primary Company naming:</strong> The Company name column is now shown as Primary Company.</li>
</ul>
<h2>Why it matters</h2>
<p>Linked records can now be used to build more targeted segments, so outreach is more relevant and easier to repeat.</p>
<ul>
<li><strong>Pet-specific follow-up:</strong> Group Contacts linked to specific pets for reminders or updates.</li>
<li><strong>Company-focused outreach:</strong> Group Contacts linked to specific Companies under the relationship label you choose.</li>
<li><strong>Find relationship gaps:</strong> Identify Contacts missing an association (for example, no Owned Pet) so you can complete the record.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable Association Columns and Filters for Contacts in Labs.</li>
<li>Go to <strong>Contacts &gt; Smart Lists</strong>.</li>
<li>Select the columns option above the list, then choose the association labels you want under <strong>Associations</strong>, and apply.</li>
<li>Open <strong>Filters</strong>, search for <strong>Associated</strong>, then choose the relevant association field.</li>
<li>Pick the filter condition (Contains any, Does not contain any, Is empty, or Is not empty). If needed, select the linked records.</li>
<li>Apply the filters and save the criteria as a Smart List for reuse.</li>
</ol>
<h2>Tips</h2>
<ul>
<li><strong>Use the right label:</strong> Labels help distinguish different relationship types, even for the same object.</li>
<li><strong>Check for missing links:</strong> Use <em>Is empty</em> to find records that need relationships added.</li>
<li><strong>Keep naming consistent:</strong> Association headings follow your configured object names.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:54.000Z'),
('wp-1612', 'Define contact roles in companies with association labels', 'You can now label the relationship between a contact and a company so it’s clear who does what (for example: Employee, Billing contact, or Decision maker). This helps you keep responsibilities current and communicate with the right people. What’s new Custom roles for your process...', '<p>You can now label the relationship between a contact and a company so it’s clear who does what (for example: Employee, Billing contact, or Decision maker). This helps you keep responsibilities current and communicate with the right people.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Custom roles for your process:</strong> Create company–contact association labels in object settings.</li>
<li><strong>One-way or paired labels:</strong> Use the same label on both sides, or set two labels (for example: Employer and Employee). You can also set relationship limits in each direction.</li>
<li><strong>Roles on associations:</strong> Choose a label when linking records, and update labels on existing associations.</li>
<li><strong>Multiple roles for the same contact:</strong> A contact and company can be linked under more than one label.</li>
<li><strong>Email by role:</strong> Filter email recipients by association labels from within Companies. If a contact matches multiple selected labels, duplicates are removed.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Find the right stakeholder:</strong> Identify billing contacts and decision makers before reaching out.</li>
<li><strong>Send relevant updates:</strong> Target messages to the correct role instead of the entire company.</li>
<li><strong>Keep records accurate:</strong> Update labels when someone’s responsibilities change.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable <strong>Association Labels</strong> and <strong>Multiple Companies for Contacts</strong> in Labs.</li>
<li>Go to <strong>Settings &gt; Objects</strong>, then open <strong>Companies</strong> or <strong>Contacts</strong> and select <strong>Associations</strong>.</li>
<li>Create a single or paired relationship label, then configure its limits.</li>
<li>Open a record’s <strong>Associations</strong>, select the related records and label, and save.</li>
<li>Use these labels when reviewing company list columns or choosing an email audience.</li>
</ol>
<h2>Tips</h2>
<ul>
<li><strong>Keep Primary Company separate:</strong> Use custom labels for additional roles alongside the system primary relationship.</li>
<li><strong>Name both directions:</strong> Using two labels (for example: Employer and Employee) makes the association clearer in each record view.</li>
<li><strong>Review recipients before sending:</strong> Label-based selection supports different association rules (all, most recent, or earliest). Including Primary Company uses all contacts.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:47.000Z'),
('wp-1611', 'Send SMS from Custom Object and Company workflows', 'You can now send SMS messages from workflows that run on Custom Object records and Companies in Leadli. This makes it easier to send reminders and follow-ups to the right contacts based on how they are related to a record, and to personalize messages using both record fields and ...', '<p>You can now send SMS messages from workflows that run on Custom Object records and Companies in Leadli.</p>
<p>This makes it easier to send reminders and follow-ups to the right contacts based on how they are related to a record, and to personalize messages using both record fields and contact fields.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Send SMS from record workflows:</strong> Add a Send SMS action to Custom Object and Company workflows.</li>
<li><strong>Recipient selection by relationship label:</strong> Choose association labels and send to all associated contacts, the most recently associated contact, or the earliest associated contact (when available).</li>
<li><strong>Personalized messages:</strong> Insert values from the enrolled Custom Object or Company record, along with recipient contact fields, to add useful context.</li>
<li><strong>Templates or custom messages:</strong> Write a message or reuse an SMS template.</li>
<li><strong>Delivery results:</strong> Review action-level delivery status and recipient results in Statistics.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Enable the Send SMS action in Labs.</li>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a Custom Object or Company workflow.</li>
<li>Add the <strong>Send SMS</strong> action.</li>
<li>Select recipients (all, most recent, or earliest associated contact) and choose one or more association labels.</li>
<li>Choose a template or write your message, then insert record and contact fields as needed.</li>
<li>Save and publish the workflow. After it runs, review <strong>Statistics</strong> for results.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>If a contact matches multiple selected labels, they receive a single SMS from the action run.</li>
<li>When you combine a Primary Company label with another label, the action uses <strong>all associated contacts</strong>.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T15:37:45.000Z'),
('wp-1610', 'More ways to filter your Conversations inbox', 'Summary Leadli now includes expanded filtering options in Conversations so your team can quickly narrow down the inbox and focus on the messages that need attention. What changed You can now filter conversations using these additional filters: Channel account : Filter by the spec...', '<p><strong>Summary</strong></p>
<p>Leadli now includes expanded filtering options in Conversations so your team can quickly narrow down the inbox and focus on the messages that need attention.</p>
<p><strong>What changed</strong></p>
<p>You can now filter conversations using these additional filters:</p>
<ul>
<li><strong>Channel account</strong>: Filter by the specific account used in the most recent message (for example, a specific phone number, connected Facebook page, or connected Instagram account).</li>
<li><strong>Last call status</strong>: Filter by the outcome of the most recent call (completed, no answer, voicemail).</li>
<li><strong>Contact type</strong>: Filter by lead/customer type, including any custom contact types set up in your account.</li>
<li><strong>Opportunity pipeline</strong>: Filter by the pipeline linked to the contact’s opportunity. If a contact has multiple opportunities, the conversation is included when at least one opportunity matches.</li>
<li><strong>Opportunity stage</strong>: Filter by the stage of the opportunity. Stages shown depend on the pipeline you select.</li>
<li><strong>Opportunity status</strong>: Filter by opportunity status (open, won, lost, abandoned).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open <strong>Conversations</strong>.</li>
<li>Select the <strong>Filters</strong> icon at the top of the conversation list.</li>
<li>Choose a filter type and select one or more values.</li>
<li>Select <strong>Apply</strong>. Add more filters as needed and use <strong>Clear</strong> to reset.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>These filters bring CRM context into the inbox so you can find missed calls, open deals, and support conversations faster without switching between different areas.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:37:45.000Z'),
('wp-1609', 'Calculated fields are now available in Leadli (private beta)', 'Calculated fields let you create custom fields that calculate their own values based on other data in a contact record. You set up the formula once, and the field updates automatically when the source fields change. You can use calculated fields to score leads, track time since a...', '<p>Calculated fields let you create custom fields that calculate their own values based on other data in a contact record. You set up the formula once, and the field updates automatically when the source fields change.</p>
<p>You can use calculated fields to score leads, track time since a contact was last engaged, count down to renewal dates, or keep formatting consistent without manual updates.</p>
<h2>What’s included</h2>
<ol>
<li>
<p><strong>Calculated custom field type:</strong> Create fields whose values are computed automatically from other fields.</p>
</li>
<li>
<p><strong>Calculation types:</strong> Use a custom formula, time between two dates, time since a date, or time until a date.</p>
</li>
<li>
<p><strong>Output types:</strong> Return a Number, Boolean (true/false), Text, Date, or Date-Time.</p>
</li>
<li>
<p><strong>Number formatting:</strong> Display results as a formatted number, unformatted number, currency, percentage, or duration.</p>
</li>
<li>
<p><strong>Function library:</strong> Includes math, text, date/time, and logic functions.</p>
</li>
<li>
<p><strong>Test before saving:</strong> Validate formulas with sample values and get clear error messages.</p>
</li>
<li>
<p><strong>Automatic recalculation:</strong> Values update when source fields change. Calculated fields are read-only to prevent accidental overwrites.</p>
</li>
<li>
<p><strong>Supported objects (private beta):</strong> Calculated fields can be created for contacts, opportunities, and custom objects.</p>
</li>
<li>
<p><strong>Smart list support:</strong> Filter smart lists using calculated fields. Note: “Time since” and “Time until” can be shown as columns, but can’t be used as filters.</p>
</li>
<li>
<p><strong>Workflow support:</strong> Use calculated fields across your CRM, including in workflows.</p>
</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T15:25:15.000Z'),
('wp-1608', 'Organize contact documents with folders', 'Folders are now available in Leadli to help you keep documents on each contact record organized. You can create folders and subfolders, move files and folders, and restore items you delete by mistake. What’s included Create custom folders for each contact and arrange them in mult...', '<p>Folders are now available in Leadli to help you keep documents on each contact record organized.</p>
<p>You can create folders and subfolders, move files and folders, and restore items you delete by mistake.</p>
<h3>What’s included</h3>
<ul>
<li>Create custom folders for each contact and arrange them in multiple levels.</li>
<li>Use system folders (cannot be deleted) and custom folders (you can manage and delete).</li>
<li>Move files between folders without re-uploading.</li>
<li>Move folders to reorganize your structure.</li>
<li>Delete files in custom folders when you no longer need them.</li>
</ul>
<h3>Trash and recovery</h3>
<ul>
<li>Deleted files and custom folders go to Trash first.</li>
<li>You can restore items for up to 60 days.</li>
<li>After 60 days, items are permanently removed.</li>
</ul>
<h3>Next improvements</h3>
<ul>
<li>Support for deleting files in system folders.</li>
<li>Optional tags for documents to make them easier to find.</li>
</ul>
<p>This update is designed to make document management simpler and faster when working with contacts.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:24:16.000Z'),
('wp-1607', 'Forms can create opportunities and related records without a contact', 'Overview Forms used to be built around a contact. To create an opportunity, a company, or a custom object record from a form, you first had to collect a name, email, or phone number. Forms can now create an opportunity on their own, without creating a contact. A single submission...', '<p><strong>Overview</strong></p>
<p>Forms used to be built around a contact. To create an opportunity, a company, or a custom object record from a form, you first had to collect a name, email, or phone number. Forms can now create an opportunity on their own, without creating a contact. A single submission can also create and link two records: Opportunity + Company, Opportunity + Custom Object, or Company + Custom Object.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Opportunity-only forms:</strong> A form with only opportunity fields creates an opportunity with no contact (for example, quote requests or project inquiry forms).</li>
<li><strong>New form combinations (no contact required):</strong> Create and link Opportunity + Company, Opportunity + Custom Object, or Company + Custom Object.</li>
<li><strong>Add Object Fields:</strong> Choose Opportunity, Company, or any custom object and add its fields. Opportunity Name is required on any form that includes opportunity fields.</li>
<li><strong>Association labels:</strong> When you add a second object, choose how the two records are linked (for example, Business, Primary Company, or Listing). Labels come from your association settings.</li>
<li><strong>Opportunity defaults:</strong> For forms with opportunity fields, set the pipeline, stage, status, and opportunity value for each submission. On submit, records are created and linked using the label you selected. Opportunities are created in the chosen stage with source set to FORM.</li>
</ul>
<p><strong>How to use</strong></p>
<ul>
<li>Go to <strong>Sites &gt; Forms</strong>, then open or create a form and remove the default contact fields.</li>
<li>Select <strong>Add Object Fields</strong>, choose <strong>Opportunity</strong> or <strong>Company</strong>, then add the fields you need.</li>
<li>To create a second record, switch the object dropdown to <strong>Company</strong> or a custom object, add its fields, select the association label when prompted, and save. Skip this step if you only need an opportunity.</li>
<li>For opportunities, open <strong>Opportunity Name</strong>, then edit the opportunity settings to set the pipeline, stage, status, and value.</li>
<li>Save and share the form. Track entries in <strong>Submissions</strong>.</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Quote, deal, partner, and property forms can create the records you actually need instead of placeholder contacts.</li>
<li>Records arrive already linked with the correct relationship label.</li>
<li>One form can replace a contact form plus manual record creation and linking.</li>
</ul>
<p><strong>Pro tips</strong></p>
<ul>
<li>Opportunity Name is required on any form that includes opportunity fields.</li>
<li>The opportunity value comes from the opportunity setup, not from the form. If you need to capture an amount from the visitor, use an opportunity custom field such as Proposal Amount.</li>
<li>Create any association labels you need in <strong>Settings &gt; Objects &gt; Associations</strong> before building the form.</li>
<li>This feature is part of the Opportunity-First private beta, and locations must be enabled for the beta.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T09:21:28.000Z'),
('wp-1606', 'Leadli Affiliate Manager: Unlimited sub-affiliate hiring depth for multi-tier campaigns', 'Affiliates can now keep recruiting sub-affiliates regardless of how many commission tiers a campaign uses. Recruiting is no longer limited by your tier depth, while commission payouts still follow your configured rules. What changed Affiliates at any level can invite or add sub-a...', '<p>Affiliates can now keep recruiting sub-affiliates regardless of how many commission tiers a campaign uses. Recruiting is no longer limited by your tier depth, while commission payouts still follow your configured rules.</p>
<h3>What changed</h3>
<ul>
<li>Affiliates at any level can invite or add sub-affiliates.</li>
<li>Commission payouts remain exactly as configured and are calculated backward from the affiliate who made the sale.</li>
<li>Example: with 2 commission tiers, the seller and the 2 affiliates directly above them are paid.</li>
<li>This works automatically with no new settings.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>No setup is required. This applies automatically to all multi-tier campaigns.</li>
<li>Any affiliate can invite or add sub-affiliates, even if they are at the last configured tier.</li>
<li>Commissions continue to follow the campaign’s tier settings, counted back from the affiliate who made the sale.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Affiliates no longer hit a recruitment limit at the last tier.</li>
<li>This supports deeper referral structures (for example, multi-level partner networks and agency reseller programs) without changing payout rules.</li>
<li>Payout costs stay predictable because commission depth is still capped by your configured tiers.</li>
</ul>
<p>For more details, refer to the Leadli help documentation in your support portal.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T09:04:20.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;