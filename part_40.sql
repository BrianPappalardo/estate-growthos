INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1558', 'Schema management for websites and funnels', 'Leadli now includes a schema markup dashboard for each website and funnel under SEO & AEO . You can review and maintain schema without opening each page in the builder. See overall schema health : A coverage card rates your site as Needs work, Getting there, Good, or Excellent, a...', '<p>Leadli now includes a schema markup dashboard for each website and funnel under <strong>SEO &amp; AEO</strong>.</p>
<p>You can review and maintain schema without opening each page in the builder.</p>
<ul>
<li><strong>See overall schema health</strong>: A coverage card rates your site as Needs work, Getting there, Good, or Excellent, and shows counts for Up to date, Might be outdated, and No schema.</li>
<li><strong>Review every page</strong>: Each page shows its schema types, status (Up to date / Might be outdated / No schema / Unpublished / Unsaved), and the last updated time.</li>
<li><strong>Generate schema with AI</strong>: Select one or more pages and run Generate schema. You can review results before publishing.</li>
<li><strong>Add or edit schema manually</strong>: Add schema to pages that have none, or open an existing schema tag to edit.</li>
<li><strong>Review, then publish</strong>: Changes remain unsaved until you choose Save and publish. You can also discard changes.</li>
<li><strong>Find what needs work</strong>: Search by page name or path, and filter by schema status.</li>
<li><strong>Identify outdated schema</strong>: Pages that have been edited and republished two or more times since schema was created can be flagged as Might be outdated.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Accurate schema helps search engines and AI answer engines understand your pages and may improve eligibility for rich results. This dashboard makes it easier to keep schema current across multiple pages.</p>
<p><strong>Impact on existing accounts</strong></p>
<ul>
<li>No data loss and no action required.</li>
<li>Every website and funnel has an SEO &amp; AEO tab, and any existing schema appears there automatically.</li>
<li>Pages without schema are labeled No schema so you can address them in bulk.</li>
<li>Schema editing in the page builder still works as before, and both views stay in sync.</li>
<li>If you generate schema on a page that already has schema, it replaces the existing schema. Review before saving and publishing.</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Sites → Websites/Funnels, select a website or funnel, then open SEO &amp; AEO.</li>
<li>Review the Schema coverage card, and filter by No schema or Might be outdated.</li>
<li>Select pages and choose Generate schema, or add/edit schema manually.</li>
<li>Review the results, then select Save and publish.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-10-12T15:37:19.000Z'),
('wp-1557', 'Meta Pixel: more accurate InitiateCheckout and improved AddPaymentInfo data', 'This update improves how Meta Pixel events are tracked in Leadli funnels, websites, and stores. Summary InitiateCheckout now fires when a buyer reaches the checkout page (not when they submit payment). AddPaymentInfo now sends more complete order and customer details to Meta when...', '<p>This update improves how Meta Pixel events are tracked in Leadli funnels, websites, and stores.</p>
<p><strong>Summary</strong></p>
<ul>
<li><strong>InitiateCheckout</strong> now fires when a buyer reaches the checkout page (not when they submit payment).</li>
<li><strong>AddPaymentInfo</strong> now sends more complete order and customer details to Meta when available.</li>
</ul>
<p><strong>What changed</strong></p>
<ul>
<li><strong>InitiateCheckout timing</strong>: The event fires when checkout begins:</li>
</ul>
<ol>
<li>When the checkout page loads on store checkout pages.</li>
<li>When a page loads where you added InitiateCheckout at the page level.</li>
<li>On the buyer’s first click, tap, or keystroke in an order form everywhere else (covers one-step, two-step, popup, and the new order form).</li>
</ol>
<ul>
<li><strong>Page-level control</strong>: If you add InitiateCheckout at the page level, it fires on page load. If you add it at the funnel, website, or webinar level, it fires on the buyer’s first interaction with the order form.</li>
<li><strong>Duplicate and false-trigger protection</strong>: InitiateCheckout fires at most once per page visit. Autofill and fields focused automatically on load do not trigger it.</li>
<li><strong>Abandoned-cart support</strong>: If a buyer returns via an abandoned-cart link, the event waits for the saved cart to load so cart value and products are included.</li>
<li><strong>Express wallet coverage</strong>: If a buyer goes straight to Apple Pay (or similar) without interacting with the form, InitiateCheckout fires when payment starts.</li>
<li><strong>Richer AddPaymentInfo</strong>: AddPaymentInfo now includes order value, currency, product IDs, and hashed customer details (email, phone, name, external ID) when available.</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li><strong>More accurate checkout drop-off reporting</strong>: You can now see how many buyers reach checkout but leave before paying.</li>
<li><strong>Better ad optimization</strong>: Meta can optimize and build audiences based on stronger checkout-intent signals.</li>
<li><strong>Improved Event Match Quality</strong>: More complete data can help Meta match events to people more reliably.</li>
<li><strong>More consistent data</strong>: Currency is reported consistently, and invalid or blank values are not sent.</li>
</ul>
<p><strong>What stays the same</strong></p>
<ul>
<li><strong>No setup changes required</strong>: Your Meta Pixel settings continue to work as before.</li>
<li>Other events (PageView, ViewContent, Purchase) fire at the same points as before.</li>
<li><strong>Consent behavior is unchanged</strong>: If a visitor hasn’t accepted advertising cookies, nothing is sent.</li>
<li><strong>Conversions API behavior is unchanged</strong>: Browser and server events are still deduplicated in Meta Events Manager when enabled.</li>
<li><strong>Free orders</strong>: If an order does not require payment details, AddPaymentInfo is not sent. If an order is fully covered by a gift card, AddPaymentInfo is sent with a value of 0.</li>
<li><strong>Pixels without InitiateCheckout enabled</strong>: No change.</li>
</ul>
<p><strong>What to expect</strong></p>
<ul>
<li><strong>InitiateCheckout counts may increase</strong>: This is expected because the event now includes buyers who reach checkout and leave without paying.</li>
<li><strong>Page-level changes may take up to 24 hours</strong> to take effect on already-published pages. To apply immediately, edit and save the page.</li>
<li><strong>No action required</strong>: The update applies automatically.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-12T12:53:59.000Z'),
('wp-1556', 'Voice pricing update: October 13, 2026 changes will not take effect', 'Overview The voice pricing changes that were previously scheduled to take effect on October 13, 2026 will not be implemented. Our underlying providers have confirmed these changes were canceled, so the affected voice rates will remain the same. No action is required at this time....', '<h2>Overview</h2>
<p>The voice pricing changes that were previously scheduled to take effect on October 13, 2026 will not be implemented.</p>
<p>Our underlying providers have confirmed these changes were canceled, so the affected voice rates will remain the same.</p>
<p>No action is required at this time.</p>
<p>We’re sharing this update so you have the latest pricing information and to avoid confusion ahead of the previously communicated date.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-12T08:01:59.000Z'),
('wp-1555', 'New templates are now available in Leadli', 'New templates have been added to Leadli to help you build websites, funnels, email campaigns, surveys, and ads more quickly. What’s included Website templates 21 new website templates Category highlighted: Legal (1) Funnel templates 1 new funnel template Category: Automotive (1) ...', '<p>New templates have been added to Leadli to help you build websites, funnels, email campaigns, surveys, and ads more quickly.</p>
<h2>What’s included</h2>
<h3>Website templates</h3>
<ul>
<li>21 new website templates</li>
<li>Category highlighted: Legal (1)</li>
</ul>
<h3>Funnel templates</h3>
<ul>
<li>1 new funnel template</li>
<li>Category: Automotive (1)</li>
</ul>
<h3>Email templates</h3>
<ul>
<li>1 new email template</li>
<li>Category: Restaurant &amp; Bar (1)</li>
</ul>
<h3>Survey templates</h3>
<ul>
<li>1 new survey template</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;