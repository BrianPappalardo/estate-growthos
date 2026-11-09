INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Creates a clearer upgrade path to newer API versions</li>
<li>Improves clarity when building and maintaining long-running systems</li>
</ul>
<h2>Key points</h2>
<ul>
<li>No impact to existing integrations</li>
<li>Supports adoption and migration between versions</li>
<li>Sets the groundwork for structured API evolution and deprecation</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Better reliability for API consumers</li>
<li>Lower risk of integration issues during updates</li>
<li>Faster development and debugging with clearer references</li>
</ul>
<h2>How to use it</h2>
<p>Open the API documentation, choose the version you want in the version switcher, then reference endpoints and schemas for that version.</p>
<h2>What’s next</h2>
<p>We’re working toward the next milestone: v3 of our APIs, with expanded capabilities, improved performance, and additional endpoints.</p>
<p>If you need API access, please contact us at support@flyingleapstudio.com.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-29T15:50:10.000Z'),
('wp-976', 'Custom e-Commerce product detail pages now start with your default design', 'Summary When you create a Custom Product Details Page (DPD)in your e-Commerce store, it will now start with the same layout and styling as your Default Product Details Page. This makes it easier to begin with a complete structure instead of a blank page. What changed Custom PDPs ...', '<h2>Summary</h2>
<p>When you create a Custom Product Details Page (DPD)in your e-Commerce store, it will now start with the same layout and styling as your Default Product Details Page. This makes it easier to begin with a complete structure instead of a blank page.</p>
<h2>What changed</h2>
<ul>
<li><strong>Custom PDPs inherit your default design during creation.</strong> You are taken straight into the builder with a ready-to-edit page.</li>
<li><strong>The full design is copied.</strong> This includes sections and layout, store elements (media, title, price, variants, CTA), styling (fonts, colors, spacing, borders, shadows), and visibility rules (desktop/mobile).</li>
<li><strong>The custom page stays independent.</strong> Editing the default PDP will not change any existing custom PDPs.</li>
<li><strong>You can assign one custom PDP to multiple products.</strong> The same inherited design is used for all selected products.</li>
<li><strong>ClickFunnels flows:</strong> In ClickFunnels flows, the “Create Custom Product Details Page” option is hidden to keep the funnel experience consistent.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to Store Builder and create a new page.</li>
<li>Enable “Create Custom Product Details Page” (not available in ClickFunnels flows).</li>
<li>Select the product(s) to assign.</li>
<li>Customize the page in the builder.</li>
<li>Publish when ready.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Your Default PDP is not changed when a Custom PDP is created.</li>
<li>This is a one-time copy (there is no live sync).</li>
<li>Existing Custom PDPs are not affected.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-04-29T15:46:31.000Z'),
('wp-956', 'Automate outreach with a marketing audit report link in workflows', 'You can now use a marketing audit report link as a custom value in Leadli workflows to personalize outreach automatically. What’s new New custom values: Prospect web report link, Prospect business name Available when you use the Generate marketing audit report action in workflows...', '<p>You can now use a marketing audit report link as a custom value in Leadli workflows to personalize outreach automatically.</p>
<h2>What’s new</h2>
<ul>
<li>New custom values: Prospect web report link, Prospect business name</li>
<li>Available when you use the Generate marketing audit report action in workflows</li>
<li>Use these values in follow-up steps like email or SMS</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, you could generate audit reports for prospects, but it was harder to include them directly in your outreach. With these custom values, you can send the report link and the prospect’s business name automatically.</p>
<h2>How to use</h2>
<ol>
<li>Add the Generate marketing audit report action to your workflow.</li>
<li>In a downstream step (email or SMS), insert the custom values: Prospect web report link and Prospect business name.</li>
<li>Send the message to deliver the audit insights automatically.</li>
</ol>
<h2>Expected impact</h2>
<ul>
<li>Faster and more personal outreach</li>
<li>Better lead qualification using audit insights</li>
<li>Improved conversion from prospect to conversation</li>
</ul>
<p>If you have suggestions or feedback, share them on your idea board.</p>
<p>Please note that access to the prospecting tool is an additional subscription of $39/mo. It&#8217;s a very useful tool if you&#8217;re a marketing agency or business consultant looking to build a prospect list of potential clients. The prospect tool checks the type of website that the prospect has, how active they are on social media, what their average review score is and # of reviews, and much more. If you&#8217;re don&#8217;t sell those types of services, this probably isn&#8217;t for you &#8211; if you do, then reach out to us at support@flyingleapstudio.com and we can enable prospecting in your account!</p>
', 'automations', ARRAY['wp-import']::text[], '2026-04-27T18:04:08.000Z'),
('wp-957', 'Email verification in Leadli workflows', 'You can now verify email addresses directly in workflows before sending emails. What this does The Email Verification action checks whether an email address is valid, risky, or invalid before the workflow continues. This helps reduce bounces and protect your sender reputation. Ho...', '<p>You can now verify email addresses directly in workflows before sending emails.</p>
<p><strong>What this does</strong></p>
<p>The Email Verification action checks whether an email address is valid, risky, or invalid before the workflow continues. This helps reduce bounces and protect your sender reputation.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add the Email Verification action in your workflow.</li>
<li>Place it before any email step.</li>
<li>Use the result to continue, branch, or stop the workflow.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Sending emails to invalid or low-quality addresses can hurt deliverability. This helps you automate list hygiene and improve email performance.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Works as a standalone action inside workflows.</li>
<li>Helps reduce bounces and failed deliveries.</li>
<li>Supports better deliverability management.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-27T17:58:52.000Z'),
('wp-955', 'Ad Manager public APIs', 'Leadli now provides public APIs for Ad Manager . These APIs let you create, manage, and track campaigns across Facebook, Google, and LinkedIn from one place. This is useful for agencies managing multiple clients and for businesses that want to automate campaign workflows and redu...', '<p>Leadli now provides <strong>public APIs for Ad Manager</strong>. These APIs let you <strong>create, manage, and track campaigns</strong> across <strong>Facebook, Google, and LinkedIn</strong> from one place.</p>
<p>This is useful for agencies managing multiple clients and for businesses that want to automate campaign workflows and reduce manual setup.</p>
<h2>What you can do</h2>
<h3>Create and manage campaigns at scale</h3>
<ul>
<li>Create and manage campaigns across Facebook, Google, and LinkedIn</li>
<li>Set up ad sets/ad groups, targeting, budgets, and creatives</li>
<li>Publish campaigns across multiple platforms in a single workflow</li>
</ul>
<p><strong>Impact:</strong> Faster launches, more consistent setup, and simpler management as you scale.</p>
<h3>Connect ad accounts</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;