INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Marketing Agency (1)</li>
</ul>
<h4>Social templates</h4>
<ul>
<li>Medical (2)</li>
<li>Legal (2)</li>
<li>Home Services (2)</li>
<li>Other (2)</li>
</ul>
<h4>Facebook ad templates (5)</h4>
<ul>
<li>Travel &amp; Hospitality — Campground &amp; RV Park</li>
<li>Home Services — Housekeeping Services</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Beauty &amp; Fashion — Barber Shop</li>
<li>Automotive — Paint Protection Film Installation</li>
<li>Travel &amp; Hospitality — RV Rental Agency</li>
<li>Restaurant &amp; Bar — Ice Cream Shop</li>
<li>Real Estate — Property Investor</li>
</ul>
<h4>LinkedIn ad templates (6)</h4>
<ul>
<li>Business Coaching &amp; Consulting — Executive Recruiter</li>
<li>Business Coaching &amp; Consulting — Franchise Consultant</li>
<li>Creative — Trade Show Booth Designer</li>
<li>Finance — Payroll Provider</li>
<li>Finance — Equipment Financing</li>
<li>Real Estate — Corporate Relocation Specialist</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Real Estate — Commercial Property Inspector</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-17T19:59:17.000Z'),
('wp-1577', 'Correct ad platform labels for number pool calls', 'October 6, 2026 Call tracking now shows the correct ad platform for new number pool calls. Previously, some Facebook ad calls appeared as "Facebook" or "Direct", which made it harder to confirm which ads were driving calls. Going forward, these calls will show as "Facebook Paid" ...', '<p>October 6, 2026</p>
<p>Call tracking now shows the correct ad platform for new number pool calls. Previously, some Facebook ad calls appeared as &#8220;Facebook&#8221; or &#8220;Direct&#8221;, which made it harder to confirm which ads were driving calls. Going forward, these calls will show as &#8220;Facebook Paid&#8221; when appropriate.</p>
<h3>What changed</h3>
<ul>
<li>Facebook ad calls are now labeled &#8220;Facebook Paid&#8221;.</li>
<li>Calls from other ad platforms are also labeled by platform, including TikTok, LinkedIn, Microsoft (Bing), and Google (including clicks from some in-app browsers).</li>
<li>If you use tagged links (for example, UTM parameters), the call source will reflect the platform plus &#8220;Paid&#8221; when it can be identified.</li>
<li>Traffic from AI tools such as ChatGPT may appear as its own source category.</li>
</ul>
<h3>Good to know</h3>
<ul>
<li>There is nothing to set up. The number pool tracking script updates automatically.</li>
<li>These changes apply to new calls only. Past calls keep their existing source.</li>
<li>Some calls may still show as &#8220;Direct&#8221; if the browser does not share referral data and the link has no tracking information.</li>
<li>If multiple ad tracking signals are present, the first matching rule is used.</li>
</ul>
<h3>Where to find it</h3>
<p>You will see the improved source labels in call reports and call details.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-16T13:56:03.000Z'),
('wp-1576', 'Route number pool calls to multiple users on their preferred devices', 'October 6, 2026 Route number pool calls to multiple users on their preferred devices What’s new You can now route number pool calls to several team members at the same time. Each person can answer on the device they prefer, including web, mobile, desk phone, or their own phone nu...', '<p><strong>October 6, 2026</strong></p>
<p><strong>Route number pool calls to multiple users on their preferred devices</strong></p>
<p><strong>What’s new</strong></p>
<p>You can now route number pool calls to several team members at the same time. Each person can answer on the device they prefer, including web, mobile, desk phone, or their own phone number.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Open your number pool settings and enable <strong>Ring Incoming Call to selected users</strong>.</li>
<li>Select up to 6 team members. Their devices will ring at the same time, based on each person’s ring settings.</li>
<li>Your selections are saved for the next time you open the pool.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>You can set a user’s preferred device type under <strong>Settings &gt; Users/My Staff &gt; Edit &gt; Call &amp; voicemail &gt; Default channel for ring all</strong>.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-16T13:13:29.000Z'),
('wp-1575', 'Localized gift card messages', 'Gift card communications now support automatic translations, so customers receive messages in the language that matches the locale you select. What changed Gift card purchase confirmations, recipient emails, and SMS notifications are translated based on the selected locale. Previ...', '<p>Gift card communications now support automatic translations, so customers receive messages in the language that matches the locale you select.</p>
<h2>What changed</h2>
<ul>
<li>Gift card purchase confirmations, recipient emails, and SMS notifications are translated based on the selected locale.</li>
<li>Previews in the gift card send flow update when you change the locale, across all supported delivery methods.</li>
<li>Email previews now show translated content using both sample and real gift card data.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Translations are applied automatically based on the selected locale.</li>
<li>Both previews and customer-facing messages use the selected language.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-15T19:18:19.000Z'),
('wp-1574', 'Limited-time offer templates for WhatsApp', 'You can now create WhatsApp marketing templates that include a live countdown timer inside the message. The timer is rendered by WhatsApp and counts down to the expiry you set when you send. Your offer code appears under the timer so customers can copy it with a tap. What’s new L...', '<p>You can now create WhatsApp marketing templates that include a live countdown timer inside the message. The timer is rendered by WhatsApp and counts down to the expiry you set when you send. Your offer code appears under the timer so customers can copy it with a tap.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Limited-time offer template type:</strong> Create this under <strong>Settings → WhatsApp → Templates</strong>.</li>
<li><strong>Live countdown timer:</strong> The countdown runs inside the customer’s chat until the expiry time you choose, and becomes more noticeable near the end.</li>
<li><strong>Copy code and open link buttons:</strong> Customers can copy the discount code and tap through to your offer without retyping.</li>
<li><strong>Set expiry at send time:</strong> Use one approved template repeatedly and choose a new deadline for each campaign.</li>
<li><strong>Available anywhere you send:</strong> Supported in conversations, bulk actions, workflows, and calendar sends.</li>
</ul>
<h2>Examples</h2>
<ul>
<li>A salon promoting a same-day discount that expires at noon</li>
<li>An online store recovering carts with a discount that expires tonight</li>
<li>A gym running a joining offer before month-end</li>
<li>A travel agency filling unsold seats before a cutoff time</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;