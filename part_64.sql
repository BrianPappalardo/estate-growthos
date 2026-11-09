INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Dynamic</strong> mode provides a text input with a custom value picker so you can insert a merge tag from a trigger, formatter, or inbound webhook.</li>
<li>If a saved value does not match a picklist option, the field opens in <strong>Dynamic</strong> mode so existing configurations display as expected.</li>
<li>Switching between modes clears the field to prevent an unintended value from being saved.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This applies to Create Record, Update Record, and both associated record actions in contact-based and custom object workflows.</li>
<li>Multi-select fields were not affected.</li>
<li>Update Contact Field is unchanged.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-19T14:51:15.000Z'),
('wp-1357', 'Pinned and Recent now show only relevant actions for each workflow', 'Overview The Pinned and Recent sections in the Actions & Triggers sidebar could show actions that did not match the type of workflow you were working in. For example, a Contact action could appear in Custom Object or Company workflows. Update Pinned and Recent now show only the a...', '<h2>Overview</h2>
<p>The Pinned and Recent sections in the Actions &amp; Triggers sidebar could show actions that did not match the type of workflow you were working in. For example, a Contact action could appear in Custom Object or Company workflows.</p>
<h2>Update</h2>
<p>Pinned and Recent now show only the actions and triggers that apply to the workflow you have open.</p>
<h2>Details</h2>
<p>The sidebar checks the workflow object type before showing Pinned and Recent. Contact actions stay in Contact workflows, Company actions stay in Company workflows, and Custom Object actions stay in workflows built for that object. Actions that do not apply are hidden so you do not select a shortcut that will not work in that workflow.</p>
<h2>Notes</h2>
<ul>
<li>This applies to both the Pinned and Recent sections.</li>
<li>Your pinned items are unchanged; they may be hidden in workflows where they do not apply.</li>
<li>The full action and trigger list below these sections is unchanged.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-19T14:47:13.000Z'),
('wp-1356', 'Billing screen now shows an existing saved card', 'What’s new If your sub-account is on hold for a SaaS plan or rebilling and a payment card has already been added (by you or your agency), you will now see that card on the billing screen. This lets you proceed to payment without being prompted to add a card that is already on fil...', '<p><strong>What’s new</strong></p>
<p>If your sub-account is on hold for a SaaS plan or rebilling and a payment card has already been added (by you or your agency), you will now see that card on the billing screen. This lets you proceed to payment without being prompted to add a card that is already on file.</p>
<p><strong>Why it matters</strong></p>
<p>You do not need to re-enter payment details you have already provided. After a successful payment, the account will unlock automatically.</p>
<p><strong>Note</strong></p>
<ul>
<li>Applies to sub-accounts on hold for a SaaS plan or for rebilling.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-19T08:05:00.000Z'),
('wp-1354', 'Rental booking pages: clearer CTAs, a simpler checkout, and a more consistent interface', 'Overview We’ve released improvements to the Rentals Booking Page, Listing Detail Page, and checkout flow. These updates give you more control over call-to-action (CTA) labels, make rental dates and pricing easier to understand during checkout, show listing descriptions more clear...', '<h2>Overview</h2>
<p>We’ve released improvements to the Rentals Booking Page, Listing Detail Page, and checkout flow. These updates give you more control over call-to-action (CTA) labels, make rental dates and pricing easier to understand during checkout, show listing descriptions more clearly, and improve visual consistency across the experience.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Custom label for the “Add to cart” button (multi-cart)</strong><br />When multi-item cart is enabled, you can set a custom label for the “Add to cart” button in Booking Page settings. The button only appears when multi-cart is on, so single-item bookings are not affected.</li>
<li><strong>Rental dates shown during checkout</strong><br />Rental dates now appear on the checkout page in the order summary to help customers confirm they’re booking the correct date and time.</li>
<li><strong>Listing descriptions expanded by default</strong><br />Descriptions on rental detail pages are now displayed inline and expanded by default, including improvements for mobile viewing.</li>
<li><strong>Cart persistence</strong><br />Your cart remains intact even if a visitor clicks the company logo to return to the home page, so an in-progress booking isn’t lost.</li>
<li><strong>General interface improvements</strong><br />Additional polish includes better text wrapping on home page cards, removing redundant single-quantity labels in booking summary and confirmation screens, and other minor UI fixes.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Global settings &gt; Booking page</strong> and enable <strong>Multi-item cart</strong>.</li>
<li>Set the <strong>Add to booking button label</strong> text to match your brand voice, then save. The change appears immediately on the booking page CTA.</li>
<li>No setup is required for the other updates; they are live for all rental listings.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>More control over how the booking flow communicates with customers</li>
<li>Clearer rental dates and pricing at checkout, which can reduce confusion and drop-off</li>
<li>Less friction on listing detail pages by showing descriptions inline</li>
<li>A more reliable browsing experience because carts are not lost during navigation</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-19T05:34:50.000Z'),
('wp-1353', 'Workflow Builder: List values are now supported in text fields', 'What’s new The custom value picker now supports list-type values, such as order line items, inbound webhook lists, and other collections. Instead of inserting the entire list as raw text, you can choose which field to use and how the list should be formatted. How it works When yo...', '<p><strong>What’s new</strong></p>
<p>The custom value picker now supports list-type values, such as order line items, inbound webhook lists, and other collections. Instead of inserting the entire list as raw text, you can choose which field to use and how the list should be formatted.</p>
<p><strong>How it works</strong></p>
<p>When you select a list, the picker stays in the current text field and lets you choose a field plus a format (comma-separated, bulleted, numbered, or a custom separator). The formatting choice is saved and the latest list is rendered each time the workflow runs.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the custom value picker and select a list-type value.</li>
<li>Choose the field to extract, the list format, and an optional fallback for empty lists.</li>
<li>Preview the result, then click Insert to add it where your cursor is.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, array and list values could not be shown directly inside text fields, which made them harder to use in emails, notes, and other workflow content. With this update, you can insert list data into the editor and control how it appears.</p>
<p><strong>Example</strong></p>
<p>If an inbound webhook sends a <code>line_items</code> list that includes a <code>sku</code> field, you can select <code>line_items</code>, extract <code>sku</code>, and choose a numbered list to output each product SKU on its own line.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Single-value variables (text, number, date, and similar) keep the existing instant-insert behavior.</li>
<li>List formatting options appear only when the workflow detects list-type output in the execution context.</li>
<li>The preview shows how the selected field and format will look before you insert it.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-18T20:13:52.000Z'),
('wp-1352', 'Workflow dynamic values now show as chips with quick add', 'Summary Dynamic values in workflow text fields now display as chips, so they are easier to tell apart from regular text. You can also type ''/'' to quickly search for and insert a custom value. How it works This is a visual change only. Your existing custom values are not changed, ...', '<p><strong>Summary</strong></p>
<p>Dynamic values in workflow text fields now display as chips, so they are easier to tell apart from regular text. You can also type &#8216;/&#8217; to quickly search for and insert a custom value.</p>
<p><strong>How it works</strong></p>
<p>This is a visual change only. Your existing custom values are not changed, and there is no change to how custom values are resolved when a workflow runs.</p>
<ul>
<li>Valid custom values appear as chips.</li>
<li>Stale or unrecognized values are highlighted in red so you can find and fix them.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Type &#8216;/&#8217; in a workflow text field to search for and insert a custom value.</li>
<li>Select an existing chip to replace it with another custom value in the same spot.</li>
<li>If a value appears in red, replace it with a valid custom value from the list.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>When custom values are mixed with static text, they can be hard to notice and verify. Chips make dynamic content easier to identify, speed up editing, and clearly show values that need attention.</p>
<p><strong>Example</strong></p>
<p>Add a user-based custom value (such as User Last Name) to a workflow message. It will display as a chip. If the text includes a stale or unrecognized value, it will appear in red so you know it should be replaced.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-18T18:28:53.000Z'),
('wp-1351', 'WhatsApp updates: more reliable composer and faster Settings', 'We improved two commonly used WhatsApp areas: the conversation composer and WhatsApp Settings/Manage. Two issues are now fixed so WhatsApp behaves correctly on first load: A false “Connect WhatsApp” prompt that could appear after the 24-hour window, even when the account was alre...', '<p>We improved two commonly used WhatsApp areas: the conversation composer and WhatsApp Settings/Manage.</p>
<p>Two issues are now fixed so WhatsApp behaves correctly on first load:</p>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;