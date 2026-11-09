INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1300', 'Fix: Accurate email notice when a Marketplace app plan change affects your SaaS plan', 'Update If a Marketplace app plan included in one of your SaaS plans is updated or deleted, and that app is automatically removed from your SaaS plan as a result, you will now receive an email that correctly explains what happened. Previously, this email incorrectly said the app h...', '<p><strong>Update</strong></p>
<p>If a Marketplace app plan included in one of your SaaS plans is updated or deleted, and that app is automatically removed from your SaaS plan as a result, you will now receive an email that correctly explains what happened. Previously, this email incorrectly said the app had been uninstalled.</p>
<p><strong>Why this matters</strong></p>
<p>The notification now reflects the actual reason the app was removed (a plan change, not an uninstall), so you can take the right next step without confusion.</p>
<p><strong>Notes</strong></p>
<p>This applies to notifications sent when an app plan attached to a SaaS plan is deleted or updated. Notifications sent when a Marketplace app itself is uninstalled are unchanged.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1299', 'TikTok Lead Ads moved to the Leadli Marketplace architecture', 'Leadli has moved the TikTok Lead Ads integration to the Marketplace framework. This change provides a more secure and scalable foundation for future improvements while keeping the day-to-day experience the same for existing users. What changed Improved security: TikTok Lead Ads c...', '<p>Leadli has moved the TikTok Lead Ads integration to the Marketplace framework. This change provides a more secure and scalable foundation for future improvements while keeping the day-to-day experience the same for existing users.</p>
<h2>What changed</h2>
<ul>
<li><strong>Improved security:</strong> TikTok Lead Ads connections now use Marketplace authentication flows for better credential handling.</li>
<li><strong>More scalable foundation:</strong> The integration now runs on Marketplace architecture designed for future enhancements.</li>
<li><strong>Sets up multi-account support:</strong> This work enables future options to connect and manage multiple TikTok accounts in a single location.</li>
<li><strong>No disruption to existing setups:</strong> Current connections continue to work without requiring reconfiguration.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Existing TikTok Lead Ads users will be migrated to the Marketplace-based integration when the feature is released from labs.</li>
<li>New TikTok Lead Ads connections are created through the Marketplace architecture.</li>
<li>Current workflows continue to run as expected.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Stronger authentication controls</li>
<li>Better reliability and maintainability</li>
<li>A platform for future TikTok Lead Ads features</li>
</ul>
<h2>Early access</h2>
<p>You can enable the Marketplace flow through labs.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1298', 'Set a fixed price for your AI products', 'What’s new You can now bill your sub-accounts a fixed rate for Conversation AI and Voice AI instead of only using a markup on usage. For example, you can charge $0.50 for every message sent through Conversation AI. This amount stays the same each time, regardless of what that mes...', '<p><strong>What’s new</strong></p>
<p>You can now bill your sub-accounts a fixed rate for Conversation AI and Voice AI instead of only using a markup on usage. For example, you can charge $0.50 for every message sent through Conversation AI. This amount stays the same each time, regardless of what that message costs to process.</p>
<p>You can choose the billing model (markup or fixed rate) separately for each product and sub-account, and you can switch between them at any time.</p>
<p><strong>Why it matters</strong></p>
<p>AI usage costs are based on tokens, which can be difficult to explain and estimate. A fixed rate gives customers one simple, consistent price for AI usage. This helps reduce surprises and makes pricing easier to communicate.</p>
<p><strong>Notes</strong></p>
<ul>
<li>This is available at both the product and sub-account level. You can set a fixed rate for one AI product or sub-account and keep markup pricing for another.</li>
<li>Markup-based billing is still supported if you prefer it.</li>
<li>You are still billed based on your actual usage, so review your costs when setting a fixed rate to protect your margins.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1297', 'Prospecting audit reports now detect LeadConnector AI Studio websites', 'Marketing Audit Reports now include improved website hosting detection. Prospecting can detect websites built with LeadConnector AI Studio, which helps you understand a prospect’s website technology more accurately. What’s included The website hosting section can identify sites b...', '<p>Marketing Audit Reports now include improved website hosting detection.</p>
<p>Prospecting can detect websites built with LeadConnector AI Studio, which helps you understand a prospect’s website technology more accurately.</p>
<h2>What’s included</h2>
<p>The website hosting section can identify sites built with:</p>
<ul>
<li>WordPress</li>
<li>LeadConnector</li>
<li>LeadConnector AI Studio</li>
<li>Webflow</li>
<li>Wix</li>
<li>Squarespace</li>
<li>Framer</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>More accurate website technology detection</li>
<li>Clearer visibility into how a prospect’s site is built</li>
<li>Better identification of migration and website opportunities</li>
<li>More reliable reporting as AI-generated websites become more common</li>
</ul>
<h2>How to enable</h2>
<ul>
<li>LeadConnector AI Studio detection is enabled by default.</li>
<li>To exclude it from the website hosting audit, go to Prospecting → Settings → Report settings → Website hosting, uncheck LeadConnector AI Studio, and save.</li>
</ul>
<h2>Availability</h2>
<p>Available for Free and Premium Prospecting users.</p>
<p>If you have feedback, share it in the ideaboard.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1321', 'Use dynamic custom values in dashboards and reporting', 'This update lets you insert dynamic custom values into dashboard and report widgets using a token picker. What changed You can insert dynamic custom values into dashboard and report widget conditions and elements using the token picker. Supported in widget conditions anywhere you...', '<p>This update lets you insert dynamic custom values into dashboard and report widgets using a token picker.</p>
<h3>What changed</h3>
<ul>
<li>You can insert dynamic custom values into dashboard and report widget conditions and elements using the token picker.</li>
<li>Supported in widget conditions anywhere you enter a text value (for example, Address or Source).</li>
<li>Supported in dashboard elements such as Embed (URL), Title, and Text.</li>
<li>Location fields available include Location ID, Location Name, Email, Phone, Website, Address, City, State, Country, Postal Code, and Timezone.</li>
<li>User fields available include User ID, Email, Phone, Role, Type, First Name, Last Name, Name, and Full Name.</li>
<li>Custom values you created under Settings → Custom values are available in the picker and organized by folder.</li>
<li>Tokens resolve automatically per sub-account when the dashboard is viewed.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Open a dashboard and switch to Edit mode.</li>
<li>Add or edit a widget and open the Conditions tab, or add an element (Embed, Title, or Text).</li>
<li>Click the token picker button next to a text input field.</li>
<li>Browse or search across Location, User, or Custom values.</li>
<li>Select a field to insert a token (for example, <code>Flying Leap Studio/Leadli</code>).</li>
<li>Save, then switch to View mode to see the token resolve automatically for that location.</li>
</ol>
<h3>Why it matters</h3>
<ol>
<li>You can reuse one dashboard template across locations without duplicating setups.</li>
<li>You can build dynamic embed URLs that load the correct external report for each location.</li>
<li>Titles and text can adapt per location to make dashboards clearer for clients.</li>
<li>Agency setup is faster because you configure the dashboard once.</li>
</ol>
<h3>What’s next</h3>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;