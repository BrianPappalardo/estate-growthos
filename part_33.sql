INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>1. One menu for everything</strong></p>
<p>Tools are grouped by purpose:</p>
<ul>
<li>Info: live access, staging, and domains</li>
<li>Analytics: Site, Visitor, and Performance</li>
<li>WordPress management: Plugins, Themes, Core, Pages, and Users</li>
<li>Backups</li>
<li>Antivirus: Shield, Hardening, Troubleshooter, and Activity Logs</li>
<li>Advanced settings: FTP, File manager, Cache management, Search and replace, WordPress debugging, Server settings, and Delete site</li>
</ul>
<p><strong>2. Site details always in view</strong></p>
<ul>
<li>Site name, address, Site ID (with copy), and region are shown at the top of the menu</li>
<li>Open WordPress and Visit site shortcuts are available at the bottom</li>
</ul>
<p><strong>3. Switch sites without going back</strong></p>
<ul>
<li>Use the arrows next to the site name</li>
<li>Search and jump to another site</li>
</ul>
<p><strong>4. Troubleshooter and Activity Logs moved</strong></p>
<ul>
<li>Both are now under the Antivirus group and work as before</li>
</ul>
<p><strong>5. A full sites table</strong></p>
<ul>
<li>Status, Threats, Updates, Uptime, Backups, Performance, and Storage for each site</li>
<li>One clear action per site, such as Manage site or Finish setup</li>
<li>Search sites, switch between List and Cards, and page through large lists</li>
</ul>
<p><strong>How to use this</strong></p>
<ol>
<li>Go to Sites → WordPress</li>
<li>Find your site and click Manage site</li>
<li>Use the left menu to open any tool for that site</li>
<li>Use the arrows next to the site name to switch to another site</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Find site tools without digging through multiple screens</li>
<li>Manage multiple client sites more efficiently</li>
<li>See which sites need attention directly from the list</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Only the navigation locations changed. Sites and settings stay the same.</li>
<li>Troubleshooter and Activity Logs are now under Antivirus.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T14:22:23.000Z'),
('wp-1591', 'Antivirus is now available for every WordPress site', 'Every WordPress site now includes Antivirus. It helps you find harmful files and common security gaps, explains them in plain language, and lets you fix them with a click. You can scan at any time, review what needs attention, and apply fixes safely. What''s new 1) Shield: scan, r...', '<p>Every WordPress site now includes Antivirus. It helps you find harmful files and common security gaps, explains them in plain language, and lets you fix them with a click.</p>
<p>You can scan at any time, review what needs attention, and apply fixes safely.</p>
<h3>What&#8217;s new</h3>
<h4>1) Shield: scan, review, and fix</h4>
<p>Shield shows how many items need attention and when the site was last scanned.</p>
<ul>
<li><strong>Scan now</strong> runs a fresh scan at any time</li>
<li><strong>Action required</strong> lists each issue and why it matters</li>
<li>Use <strong>Apply fix</strong>, or <strong>Apply all fixes</strong> to resolve everything at once</li>
<li>You can snooze an item until the next scan, for 7 days, or for 30 days</li>
<li><strong>Resolved</strong> keeps the last 30 days of fixes</li>
</ul>
<h4>2) Checks included in each scan</h4>
<p>Antivirus runs ten checks and shows a clear result for each one (Passed or Action required). These checks include:</p>
<ul>
<li>Core and plugin files compared against their official versions</li>
<li>Unused plugins and protections that are turned off</li>
<li>HTTPS status, WordPress version, and supported server software</li>
<li>Hidden error messages and search engine visibility settings</li>
</ul>
<h4>3) Safer fixes with backups</h4>
<p>Before applying a fix, you’ll be asked to confirm. You can also see when the last backup was taken and choose to back up first.</p>
<h4>4) Hardening</h4>
<p>Antivirus includes ten one-click protections. Each one includes a short explanation, and you can turn them all on together if you prefer.</p>
<ul>
<li>Block application passwords and user enumeration</li>
<li>Hide the WordPress version and mask login errors</li>
<li>Disable the file editor and XML-RPC</li>
<li>Add security headers and rate-limit login attempts</li>
<li>Harden .htaccess</li>
</ul>
<h4>5) Threat visibility across all sites</h4>
<ul>
<li>A Threats column is available on the WordPress sites list</li>
<li>Hover the count to see what was found, then select <strong>Check threats</strong></li>
<li>Scan all sites in one click</li>
</ul>
<h3>How to use this feature</h3>
<ol>
<li>Go to <strong>Sites → WordPress</strong></li>
<li>Open a site</li>
<li>Open <strong>Antivirus → Shield</strong></li>
<li>Review <strong>Action required</strong>, then click <strong>Apply fix</strong> or <strong>Apply all fixes</strong></li>
<li>Open <strong>Antivirus → Hardening</strong> and enable the protections you want</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Find and fix site issues before visitors notice them</li>
<li>Reduce the risk of break-ins with straightforward protections</li>
<li>Apply fixes with more confidence by taking a backup first</li>
<li>Manage security for every client site from one place</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;