INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Category: Business, Coaching &amp; Consulting (1)</li>
</ul>
<h3>Social templates</h3>
<ul>
<li>8 new social templates</li>
<li>Marketing Agency (2)</li>
<li>Creative (2)</li>
<li>Business Coaching and Consulting (2)</li>
<li>Financial (2)</li>
</ul>
<h3>Facebook ad templates</h3>
<ul>
<li>2 new Facebook ad templates</li>
<li>Creative: Interior Designer</li>
<li>Real Estate: Realtor</li>
</ul>
<h3>Google ad templates</h3>
<ul>
<li>5 new Google ad templates</li>
<li>Other: Medical Research</li>
<li>Medical: Dental Clinic</li>
<li>Marketing Agency: Digital Marketing Services</li>
<li>Legal: Mediation Services</li>
<li>Insurance: Life Insurance</li>
</ul>
<h3>LinkedIn ad templates</h3>
<ul>
<li>6 new LinkedIn ad templates</li>
<li>Real Estate: Real Estate Appraiser</li>
<li>Real Estate: Escrow Officer</li>
<li>Marketing Agency: AI Marketing Implementation Specialist</li>
<li>Marketing Agency: Conversion Rate Optimization</li>
<li>Business Coaching &amp; Consulting: Diversity, Equality &amp; Inclusion Consultant</li>
<li>Creative: Interior Architecture Firm</li>
</ul>
<h3>Snapshot</h3>
<ul>
<li>1 new snapshot</li>
<li>Finance: Bookkeeper</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-12T01:20:56.000Z'),
('wp-1554', 'Snapshot and API support for new custom field types in Leadli', 'Overview Snapshot support and public API support are now available for the newer custom field types: URL, Date & Time, Rich Text, Users, and Image support in Radio and Checkbox fields. This makes it easier to copy custom field setups across sub-accounts using snapshots and to man...', '<p><strong>Overview</strong></p>
<p>Snapshot support and public API support are now available for the newer custom field types: URL, Date &amp; Time, Rich Text, Users, and Image support in Radio and Checkbox fields.</p>
<p>This makes it easier to copy custom field setups across sub-accounts using snapshots and to manage custom field data programmatically through the public API.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Snapshot support</strong>: You can include these custom field types in snapshots, so you don’t have to recreate the same configuration for each sub-account.</li>
<li><strong>Public API support</strong>: You can create and manage these custom field types through the API.</li>
</ul>
<p><strong>References</strong></p>
<ul>
<li>https://leadli.canny.io/changelog/introducing-new-custom-fields</li>
<li>https://marketplace.leadli.com/docs/Leadli/locations/create-custom-field/</li>
</ul>
<p><strong>Availability</strong></p>
<p>This is live in production for all accounts. If you previously enabled the new custom field types in Labs, you can use these updates immediately.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-10T13:50:58.000Z'),
('wp-1553', 'AI Studio: Sell products and take payments', 'You can now take payments in apps built with AI Studio. Connect products from your catalog, ask the agent to add payments, and your app will include a secure hosted checkout. Payments in AI Studio uses Leadli’s native payments. Your products, orders, payment providers, and subscr...', '<p>You can now take payments in apps built with AI Studio. Connect products from your catalog, ask the agent to add payments, and your app will include a secure hosted checkout.</p>
<p>Payments in AI Studio uses Leadli’s native payments. Your products, orders, payment providers, and subscriptions are the ones already set up in your Leadli account.</p>
<h3>What’s included</h3>
<h4>Enable payments in a few steps</h4>
<ul>
<li>In <strong>More → Payments</strong>, turn Payments on, switch between test and live mode, and choose which catalog products your app can sell.</li>
<li>For each product, choose the pricing approach: one fixed price, a selected set of variations (sizes, tiers, plans), or the full product catalog pricing.</li>
<li>Only the products and prices you allow can be shown or charged.</li>
</ul>
<h4>Let the agent add checkout</h4>
<ul>
<li>Ask the agent to add payments. You will be prompted to approve the connection, and then the agent adds a storefront and checkout to your app.</li>
<li>The checkout code is managed by the platform to reduce accidental breaking changes. If it is edited, it will be restored on the next turn.</li>
</ul>
<h4>Hosted checkout and supported options</h4>
<ul>
<li>Card details are entered and processed in the platform’s hosted checkout, not inside your app’s code.</li>
<li>PayPal Express Checkout is supported.</li>
<li>Coupon codes can be applied at checkout, including fully discounted orders.</li>
<li>Subscriptions are supported in checkout and upsells, including carts with more than one subscription product.</li>
<li>The checkout uses your site’s color scheme.</li>
<li>Bot protection runs on every purchase.</li>
</ul>
<h4>Post-purchase upsells</h4>
<ul>
<li>After a successful purchase, you can show an offer page. Buyers can accept with one click without entering card details again.</li>
<li>One-click works with saved cards from Stripe (3D Secure supported), Square, Authorize.net, NMI, Adyen, and Mercado Pago. Other payment methods use the standard payment form.</li>
<li>Upsells can only be charged after the original order is paid, and only once per order.</li>
</ul>
<h4>Product pages</h4>
<ul>
<li>Generated storefronts can show product listings and product detail pages from your catalog.</li>
</ul>
<h4>Availability</h4>
<ul>
<li>Payments currently works only with apps built on TanStack Start.</li>
<li>To use Payments in an existing React project, go to <strong>Project Settings → Migrate to SSR</strong>. This creates an upgraded copy of your project and keeps the original unchanged and live.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T18:16:44.000Z'),
('wp-1552', 'Clearer A2P rejection guidance for Chat Widget and manual campaigns', 'We updated the guidance shown in the "View required fixes" window so it matches how your A2P campaign was registered. What changed Guidance that matches your setup: Common rejection reasons now show separate steps for campaigns created through the Chat Widget (Quick Setup) versus...', '<p>We updated the guidance shown in the &#8220;View required fixes&#8221; window so it matches how your A2P campaign was registered.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Guidance that matches your setup:</strong> Common rejection reasons now show separate steps for campaigns created through the Chat Widget (Quick Setup) versus Manual Setup, since the fix is in a different place.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;