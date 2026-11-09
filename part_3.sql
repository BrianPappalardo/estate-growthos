INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;