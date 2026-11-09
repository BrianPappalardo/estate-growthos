INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<ol>
<li value="1">SubmitApplication is suppressed only when InitiateCheckout / AddPaymentInfo are configured.</li>
<li value="2">OrderFormPurchase is suppressed only when Purchase is configured.</li>
<li value="3">Any step left unmapped continues firing its legacy event, helping avoid attribution gaps.</li>
</ol>
<ul>
<li><strong>external_id on PageView and ViewContent:</strong> These events now pass a privacy-safe customer identifier (no personal information) on both the browser pixel and Conversions API to improve event matching and deduplication.</li>
<li><strong>Legacy behavior remains the default:</strong> If the Events tab is left empty, the system continues using legacy behavior. All legacy events continue firing as before for accounts that have not started migrating.</li>
<li><strong>Richer order details:</strong> More complete order data (value, currency, product IDs) is now sent for both Purchase and InitiateCheckout.</li>
<li><strong>No silently dropped pixels:</strong> Pixels that have not yet been migrated to the Events tab will continue firing correctly, even when partial suppression rules are active.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Accounts that are partially migrated to the new Events tab can keep tracking on legacy events until replacements are configured.</li>
<li>Improved deduplication and match quality through external_id on more events.</li>
<li>Fewer silent tracking drops and fewer backend retry failures.</li>
</ul>
<h2>Good to know</h2>
<p>Add events exclusively through the Events tab. Combining Events tab tracking with manually added custom scripts may lead to inconsistent results.</p>
<p>A visitor’s external_id represents their current contact identity and may change during a session if they submit a form or place an order while browsing. This is expected and does not impact server-side identity stitching or deduplication.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1157', 'Mobile payments: confirmation dialog for unsaved invoice and estimate changes', 'We’ve added a safer editing experience for invoices and estimates in the Leadli mobile app. If you try to leave an invoice or estimate with unsaved changes, you will see a confirmation dialog that lets you save your work or discard changes before exiting. This helps prevent accid...', '<p>We’ve added a safer editing experience for invoices and estimates in the Leadli mobile app. If you try to leave an invoice or estimate with unsaved changes, you will see a confirmation dialog that lets you save your work or discard changes before exiting.</p>
<p>This helps prevent accidental data loss while editing payment documents on mobile.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>Unsaved changes dialog: If you edit an invoice or estimate and try to exit, you will be prompted before leaving the editor.</li>
<li>Save before exiting: Select Save to keep your latest updates and close the editor.</li>
<li>Discard changes: Select Discard to exit without saving edits you do not want.</li>
<li>Works for invoices and estimates: The same protection applies to both invoice and estimate editing.</li>
<li>Smarter exit behavior: If no changes were made, you can exit without seeing a prompt.</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Open an existing invoice or estimate in the mobile app.</li>
<li>Make your changes.</li>
<li>Tap back or exit the editor.</li>
<li>If there are unsaved changes, the confirmation dialog will appear.</li>
<li>Select Save to keep changes and exit, or select Discard to exit without saving.</li>
</ol>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1156', 'Chronological appointment sorting in Contacts and Conversations', 'Overview We improved how appointments are organized in the Contacts and Conversations tabs so it’s easier to see what’s coming up next and what happened most recently. Previously, appointments were not always shown in an intuitive order, which could make it harder to identify the...', '<h2>Overview</h2>
<p>We improved how appointments are organized in the Contacts and Conversations tabs so it’s easier to see what’s coming up next and what happened most recently.</p>
<p>Previously, appointments were not always shown in an intuitive order, which could make it harder to identify the next upcoming appointment or the latest completed interaction.</p>
<p>With this update, appointments are sorted chronologically based on status to help you review customer interactions more efficiently.</p>
<h2>What’s new</h2>
<p><strong>Upcoming appointments are sorted by nearest first</strong></p>
<p>Upcoming appointments appear in ascending date order. The appointment happening soonest is shown at the top of the list.</p>
<p><strong>Example:</strong> If a contact has appointments on June 10, June 15, and June 20, the June 10 appointment appears first, followed by June 15 and June 20.</p>
<p><strong>Past appointments are sorted by most recent first</strong></p>
<p>Past appointments appear in descending date order. The most recently completed appointment is shown at the top of the list.</p>
<p><strong>Example:</strong> If a contact previously had appointments on June 1, May 25, and May 10, the June 1 appointment appears first, followed by May 25 and May 10.</p>
<p><strong>Quick access to appointment details</strong></p>
<p>You can view appointment details directly from the Appointments tab using the <strong>View</strong> action, so you can review information and take action without navigating elsewhere.</p>
<h2>Why this matters</h2>
<ul>
<li>Makes upcoming appointments easier to identify.</li>
<li>Shows the most recent customer interactions first.</li>
<li>Reduces time spent searching through appointment history.</li>
<li>Creates a more intuitive experience in Contacts and Conversations.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1155', 'Add e-commerce actions to website buttons', 'Summary You can now connect website buttons to e-commerce actions, so visitors can add items to their cart, buy immediately, or browse a collection from any page. New button link options Add to Cart Choose a product and a price option. All Prices opens a product-style modal so th...', '<h2>Summary</h2>
<p>You can now connect website buttons to e-commerce actions, so visitors can add items to their cart, buy immediately, or browse a collection from any page.</p>
<h2>New button link options</h2>
<ul>
<li><strong>Add to Cart</strong>
<ul>
<li>Choose a product and a price option.</li>
<li><strong>All Prices</strong> opens a product-style modal so the visitor can pick a variant.</li>
<li><strong>Single Price</strong> adds the item to the cart with quantity 1.</li>
</ul>
</li>
<li><strong>Buy Now</strong>
<ul>
<li><strong>All Prices</strong> opens the product-style modal with Buy Now support.</li>
<li><strong>Single Price</strong> sends the visitor straight to checkout with the product already added.</li>
</ul>
</li>
<li><strong>Collection</strong>
<ul>
<li>Link the button to a selected collection’s filtered product list page.</li>
</ul>
</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the Website Builder and select a Button element.</li>
<li>In <strong>Link To</strong>, choose <strong>Add to Cart</strong>, <strong>Buy Now</strong>, or <strong>Collection</strong>.</li>
<li>Select the product, price option, or collection you want to use.</li>
<li>Save and publish.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This is available for Websites (not Funnels).</li>
<li>If no store exists yet, you will be prompted to create one.</li>
<li>If the linked product or price is deleted, the button will be disabled.</li>
<li>If the linked collection is deleted, visitors will see a 404 page.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;