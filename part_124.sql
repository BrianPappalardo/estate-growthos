INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Validation applies on web and mobile saves, but not via Public API or workflow-based updates.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1317', 'Use available quantity as a custom value and workflow filter', 'Update The Abandoned Cart and Order Fulfilled workflow triggers now support Available Quantity as both a filter and a custom value. This helps you build automations based on product inventory levels. How to use it Select the Abandoned Cart or Order Fulfilled trigger. Add Global P...', '<h2>Update</h2>
<p>The Abandoned Cart and Order Fulfilled workflow triggers now support Available Quantity as both a filter and a custom value. This helps you build automations based on product inventory levels.</p>
<h2>How to use it</h2>
<ol>
<li>Select the <strong>Abandoned Cart</strong> or <strong>Order Fulfilled</strong> trigger.</li>
<li>Add <strong>Global Products</strong> in the workflow filters.</li>
<li>Select a <strong>single price</strong>, then set <strong>Available Quantity</strong> using the required condition and a numeric value.</li>
<li>Use <strong>Available Quantity</strong> or <strong>Price</strong> as a custom value in supported workflow actions.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Filters are nested in this order: <strong>Global Products &gt; Price &gt; Available Quantity</strong>.</li>
<li>This first version supports only a <strong>single price</strong> and a <strong>single numeric quantity value</strong>.</li>
<li><strong>Price and Available Quantity are not supported in If/Else blocks</strong> in this version.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1316', 'Generate and copy reschedule links from appointments', 'If you need to help a customer reschedule, you can now generate and copy an appointment’s reschedule link directly from the appointment. This makes it easy to share the link whenever a customer needs it. This is available for Meetings and Services. What’s new You can generate a r...', '<p>If you need to help a customer reschedule, you can now generate and copy an appointment’s reschedule link directly from the appointment. This makes it easy to share the link whenever a customer needs it.</p>
<p>This is available for Meetings and Services.</p>
<p><strong>What’s new</strong></p>
<p>You can generate a reschedule link on demand from an existing appointment.</p>
<ul>
<li>Generate a reschedule link directly from the appointment</li>
<li>View the link immediately after it is generated</li>
<li>Copy the link in one click</li>
<li>Share it with the customer through any channel you prefer</li>
</ul>
<p>Customers can open the shared link and reschedule without needing to find an earlier email or notification that included the link.</p>
<p><strong>How to use it</strong></p>
<p>Open an appointment from anywhere you manage appointments, including Contacts, Conversations, Appointments, or Opportunities.</p>
<p>Then:</p>
<ol>
<li>Open the appointment.</li>
<li>Click the <strong>Appointment Actions</strong> icon.</li>
<li>Select <strong>Generate Reschedule Link</strong>.</li>
<li>After the link is generated, click <strong>Copy Link</strong>.</li>
<li>Share the link with your customer.</li>
</ol>
<p><strong>Permissions</strong></p>
<p>Existing appointment permissions still apply. Users without the required appointment management permissions will not be able to generate a reschedule link and will see the disabled state and guidance.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1315', 'Week start preferences are now consistent across calendars', 'We improved how Week Start preferences work across Meetings, Services, and Rentals. Your preferred start of the week is now consistent throughout the scheduling experience. What changed You can choose whether your week starts on Saturday, Sunday, or Monday . Calendars will now fo...', '<p>We improved how <strong>Week Start preferences</strong> work across Meetings, Services, and Rentals. Your preferred start of the week is now consistent throughout the scheduling experience.</p>
<p><strong>What changed</strong></p>
<p>You can choose whether your week starts on <strong>Saturday, Sunday, or Monday</strong>. Calendars will now follow that setting across the in-app scheduling experience.</p>
<p>Your Week Start preference now applies to:</p>
<ul>
<li>Calendar views</li>
<li>Appointment creation and editing</li>
<li>Schedules and availability settings</li>
<li>Staff availability</li>
<li>Date pickers</li>
<li>Business operating hours</li>
</ul>
<p><strong>How to configure</strong></p>
<p>Set the <strong>Week Starts On</strong> preference for Meetings, Services, or Rentals and choose one of:</p>
<ul>
<li>Saturday</li>
<li>Sunday</li>
<li>Monday</li>
</ul>
<p>After you save it, the setting will automatically be used across the relevant in-app Calendar experiences.</p>
<p><strong>Booking widget settings are separate</strong></p>
<p>Week Start settings you configure for booking widgets remain independent. Your in-app preference will not override your widget configuration, so you can manage the customer-facing booking experience separately from your internal scheduling settings.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1314', 'Services (v2) updates', 'We’ve released several improvements to Services (v2) to make it easier for businesses to communicate with customers, customize the booking experience, and reduce setup time. What’s included in this update WhatsApp notifications : Services (v2) can now send WhatsApp notifications ...', '<p>We’ve released several improvements to <strong>Services (v2)</strong> to make it easier for businesses to communicate with customers, customize the booking experience, and reduce setup time.</p>
<p><strong>What’s included in this update</strong></p>
<ul>
<li><strong>WhatsApp notifications</strong>: Services (v2) can now send WhatsApp notifications in addition to email and SMS. You can use these for confirmation messages, reminders, follow-ups, and other booking-related updates.</li>
<li><strong>Service and Rental custom values in the Email Builder</strong>: You can now insert Service and Rental custom values directly from the Email Builder to personalize messages with booking details.</li>
<li><strong>Top Tabs layout for Service Categories</strong>: Booking widgets can now display categories as top tabs, giving customers a simple way to switch between categories while booking.</li>
<li><strong>Improved default settings for booking pages</strong>: Several booking settings that typically create a smoother experience are now enabled by default. For example, customers can explore services from other categories and book multiple services in the same booking flow. These settings can still be changed to match your preferred setup.</li>
</ul>
<p>These changes are designed to provide more flexibility while reducing the amount of configuration needed.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1313', 'Gift Cards: Redeem Gift Cards While Collecting Calendar Payments', 'What’s new You can now redeem a customer’s gift card while collecting an appointment payment in Leadli across Meetings, Services, and Rentals calendars. Previously, gift cards could only be redeemed by customers through customer-facing checkout flows. With this update, your team ...', '<p><strong>What’s new</strong></p>
<p>You can now redeem a customer’s gift card while collecting an appointment payment in Leadli across Meetings, Services, and Rentals calendars.</p>
<p>Previously, gift cards could only be redeemed by customers through customer-facing checkout flows. With this update, your team can apply a customer’s available gift card balance when collecting a payment on their behalf, including when charging a saved card or adding a new card.</p>
<p>This adds gift card redemption to offline/off-session calendar payment flows, so the experience is consistent regardless of who initiates the payment.</p>
<p><strong>How it works</strong></p>
<p>To redeem a gift card for an appointment:</p>
<ol>
<li>Open the appointment.</li>
<li>Go to the <strong>Payments</strong> tab.</li>
<li>Click <strong>Collect Payment</strong>.</li>
<li>Select <strong>Charge a Card</strong>.</li>
<li>Select <strong>Redeem a Gift Card</strong> and apply the customer’s available balance.</li>
</ol>
<p>The gift card balance is applied before any remaining amount is charged to the customer’s saved payment method.</p>
<p><strong>Gift card redemption behavior</strong></p>
<ul>
<li><strong>Full balance available:</strong> If the gift card covers the entire payment, no additional payment method is charged.</li>
<li><strong>Partial balance available:</strong> The gift card is applied first, and the remaining amount is automatically charged to the customer’s saved payment method.</li>
<li><strong>Invalid or unavailable balance:</strong> Validation messages appear for invalid, expired, or zero-balance gift cards.</li>
</ul>
<p><strong>Payment visibility</strong></p>
<ul>
<li><strong>Transaction Details</strong> shows the amount redeemed using the gift card.</li>
<li>For <strong>split payments</strong>, the gift card amount and the amount collected through the other payment method are shown separately.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;