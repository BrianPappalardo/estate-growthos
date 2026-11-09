INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Structured sections:</strong> Details are organized into Overview, Pricing, Permissions, and Reviews so you can jump to what matters.</li>
<li><strong>More transparent pricing:</strong> Monthly and yearly plans, free trials, agency and sub-account pricing, multiple tiers, and usage-based charges are easier to understand.</li>
<li><strong>Clearer permissions:</strong> Permissions are grouped by capability and shown with clearer scope, including Read and Write access.</li>
<li><strong>More product context:</strong> Screenshots, videos, descriptions, categories, version info, and developer details are presented in a cleaner format to help you evaluate before installing.</li>
<li><strong>Improved reviews:</strong> Ratings, distributions, individual reviews, and sorting are easier to explore in one place.</li>
<li><strong>Better discovery:</strong> Similar Apps and other apps from the same developer help you find alternatives.</li>
<li><strong>Cleaner install flow:</strong> Install actions and account context are connected more closely to the evaluation experience.</li>
</ul>
<h2>Why it matters</h2>
<p>Installing a Marketplace app is more than knowing what it does. You also need to understand who can install it, what it costs, what access it requires, and what other customers think.</p>
<p>This update brings those answers together so it’s easier to move from discovery to evaluation to install.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T06:56:22.000Z'),
('wp-1429', 'Automatically link contacts to companies by email domain', 'Leadli can automatically connect a contact to the correct company based on the contact’s email domain. If no matching company exists, Leadli can create one, save the domain, and add the company name and logo. What’s included A new Company Domain Name field (unique by default) Aut...', '<p>Leadli can automatically connect a contact to the correct company based on the contact’s email domain. If no matching company exists, Leadli can create one, save the domain, and add the company name and logo.</p>
<h2>What’s included</h2>
<ul>
<li>A new Company Domain Name field (unique by default)</li>
<li>Automatic contact-to-company association when the email domain matches an existing company domain</li>
<li>Automatic company creation when no suitable company match exists</li>
<li>Optional company enrichment with name and logo</li>
<li>Duplicate prevention so multiple companies cannot share the same domain</li>
<li>Domain exclusion for common free email providers (plus a custom exclusion list)</li>
<li>Checks existing company records before creating a new one</li>
<li>Optional backfill to populate domains for existing companies when you enable the feature</li>
</ul>
<h2>Why this matters</h2>
<p>For B2B teams, contacts should be associated with the right company without manual cleanup. This helps reduce manual work, keeps company records organized, and supports more reliable lists, workflows, and reporting.</p>
<h2>How it works</h2>
<p>When a contact is created or their email address is updated, Leadli looks for a company with a matching domain before creating anything new.</p>
<ul>
<li>If a company already has <strong>acme.com</strong> as its domain, the contact is associated with that company automatically.</li>
<li>If a company exists but has no domain, Leadli can populate the domain and reuse the existing company record instead of creating a duplicate.</li>
<li>If there is no suitable match, Leadli creates a new company and (optionally) enriches it.</li>
</ul>
<p>Domain matching is exact. For example, <strong>company.com</strong> and <strong>mail.company.com</strong> are treated as different domains.</p>
<h2>How to enable</h2>
<ol>
<li>Go to <strong>Settings → Labs</strong> and enable “Automatic Company Creation &amp; Association by Domain”.</li>
<li>Go to <strong>Settings → Objects → Companies</strong>.</li>
<li>Under <strong>Automations</strong>, configure the options you want (enrichment, creation from email domain, duplicate prevention, and excluded domains).</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Existing company associations are respected and are not automatically replaced.</li>
<li>Company enrichment is best effort and does not block company creation.</li>
<li>Manually entered company domains are not overwritten during domain backfill.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-17T14:50:38.000Z'),
('wp-1428', 'Subscription payments stay in sync with your default card', 'What’s new In Leadli SaaS V2 accounts, when a client updates their default payment card, Leadli will automatically update the card used for any active SaaS subscriptions. Why this matters This helps subscription renewals use the most recent card, which can reduce missed or failed...', '<p><strong>What’s new</strong></p>
<p>In Leadli SaaS V2 accounts, when a client updates their default payment card, Leadli will automatically update the card used for any active SaaS subscriptions.</p>
<p><strong>Why this matters</strong></p>
<p>This helps subscription renewals use the most recent card, which can reduce missed or failed payments caused by outdated card details.</p>
<p><strong>Notes</strong></p>
<p>This applies to Leadli SaaS V2 accounts with an active subscription plan. Wallet recharges will continue to use your default card as they do today.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-09-17T14:06:53.000Z'),
('wp-1427', 'Gift card permissions with role-based access', 'Overview You can now control which team members can access and perform actions related to gift cards. This helps protect gift card balances, customer information, and sensitive actions like issuing or deactivating cards. What you can control View Gift Card Orders – See issued gif...', '<h2>Overview</h2>
<p>You can now control which team members can access and perform actions related to gift cards. This helps protect gift card balances, customer information, and sensitive actions like issuing or deactivating cards.</p>
<h2>What you can control</h2>
<ul>
<li><strong>View Gift Card Orders</strong> – See issued gift cards and their order details.</li>
<li><strong>View Gift Card Products</strong> – Access gift card products and view their settings.</li>
<li><strong>Create/Edit Gift Card Products</strong> – Create new gift card products or update existing ones.</li>
<li><strong>Access Sell Link / Share via QR</strong> – Access and share the sell link or QR code for a gift card product.</li>
<li><strong>Send Gift Cards</strong> – Issue gift cards to customers using the send flow.</li>
<li><strong>View Full Gift Card Code</strong> – Allow specific users to reveal the complete gift card code.</li>
<li><strong>Access Gift Card Details Page</strong> – Open and view details for individual gift card orders.</li>
<li><strong>Delete/Deactivate Gift Cards</strong> – Limit who can delete or deactivate gift cards.</li>
</ul>
<h2>Additional notes</h2>
<ul>
<li>Permissions can be limited to <em>assigned data</em> so users only see records assigned to them (instead of all records), even when they have page access.</li>
<li>Permissions apply to both the interface and the underlying actions. For example, a support team member can be allowed to view gift card orders without being able to send gift cards, edit gift card products, or reveal full codes.</li>
<li>Full gift card codes are protected separately, so users without the right permission cannot view them on the order details page.</li>
</ul>
<h2>Where to find it</h2>
<ul>
<li>Go to: <strong>Settings → My Staff → Select Staff Member → Edit → Roles &amp; Permissions → Gift Cards</strong></li>
<li>In the Gift Cards section, choose the permissions you want for each user.</li>
<li>Admins keep full access by default; other roles can be limited to only what they need.</li>
</ul>
<h2>What&#8217;s next</h2>
<p>Access controls for gift cards will continue to expand as new capabilities are added.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-17T13:50:38.000Z'),
('wp-1426', 'Build workflows from Ask AI', 'Overview You can now create and edit workflows directly from Ask AI. Describe what you want, and the agent generates a workflow you can review and refine before opening the workflow builder. What’s included Build from a prompt: Start a new chat in Ask AI and describe the workflow...', '<p><strong>Overview</strong></p>
<p>You can now create and edit workflows directly from Ask AI. Describe what you want, and the agent generates a workflow you can review and refine before opening the workflow builder.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Build from a prompt:</strong> Start a new chat in Ask AI and describe the workflow you want.</li>
<li><strong>Preview in the side panel:</strong> Review the full workflow layout without switching screens.</li>
<li><strong>Inspect steps:</strong> Select a trigger or action to view its configuration.</li>
<li><strong>Make edits in chat:</strong> Ask for changes and the workflow updates.</li>
<li><strong>Open in the builder:</strong> Jump into the workflow builder to test and publish.</li>
<li><strong>WhatsApp support:</strong> You can also start workflow creation from WhatsApp.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open Ask AI and start a new chat.</li>
<li>Describe the workflow you want to create.</li>
<li>Review the generated workflow preview and inspect steps as needed.</li>
<li>Request changes until it matches your requirements.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;