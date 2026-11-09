INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Go to <strong>Calendars &gt; Calendar Settings &gt; Rentals &gt; Additional fees</strong>.</li>
<li>Select <strong>New additional fee</strong> and enter the fee name, pricing type (flat or percentage), amount, and pricing unit.</li>
<li>To attach a fee to a listing, open the listing for editing, go to the <strong>Inventory &amp; pricing</strong> tab, find the <strong>Additional fee</strong> section, and add the fee.</li>
<li>To override a fee amount for a specific listing, open the listing’s <strong>Inventory &amp; pricing</strong> tab and edit the fee amount.</li>
<li>To set up tax on a fee, edit the fee and choose <strong>Configure tax</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Rental businesses often need to apply standard charges without building them into the base price or using workarounds.</li>
<li>Upfront fee visibility reduces surprises at checkout and can help reduce disputes.</li>
<li>Reusable templates plus listing-level overrides provide flexibility without duplicating setup work.</li>
<li>Independent tax support for fees improves invoice clarity and reporting accuracy.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-28T12:08:16.000Z'),
('wp-1654', 'Add retail products to service appointments', 'Overview Service businesses often sell retail products during the same visit. You can now add retail products to a service appointment from the in-app appointment modal in Leadli. Services, products, payments, and inventory are managed in one place, with a single total that refle...', '<h2>Overview</h2>
<p>Service businesses often sell retail products during the same visit. You can now add retail products to a service appointment from the in-app appointment modal in Leadli. Services, products, payments, and inventory are managed in one place, with a single total that reflects everything the customer is buying.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Add products when you book or edit an appointment</strong><br />Choose a product or variant from your catalog in the appointment modal while creating an appointment or editing an existing one. There is no need to cancel or recreate the appointment.</li>
<li><strong>Set quantity and price per product</strong><br />Add multiple units of the same product as needed. You can also override the unit price for that specific appointment without changing the catalog price.</li>
<li><strong>One total and one payment view</strong><br />Products appear alongside services in the appointment details and in the Payments tab. If you change products on an appointment that already has payments, the payment status will show whether additional payment is due or if a refund is needed.</li>
<li><strong>Inventory updates automatically</strong><br />For products with inventory tracking, stock decreases when you add a product and increases when you remove it or reduce the quantity. If there is not enough stock, you will see an error. Settings like “Continue selling when out of stock” are respected, and products without tracking are unaffected.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the service appointment modal (new or existing) and click <strong>+ Add product</strong>.</li>
<li>Select the product, then adjust the quantity or price if needed. The total updates as you go.</li>
<li>Save the appointment and review the breakdown in the Payments tab.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Products are created and managed under <strong>Payments &gt; Products</strong>, not under Services.</li>
<li>Retail products can only be added to appointments in-app. They are not available on the customer booking page.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Staff can sell services and products in one visit without creating a separate order.</li>
<li>The appointment total and payment status reflect the full transaction.</li>
<li>Inventory stays accurate without manual updates when products are sold through appointments.</li>
<li>Past appointments show exactly what was sold, even if the catalog changes later.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T12:08:09.000Z'),
('wp-1653', 'Custom appointment statuses for Leadli appointments', 'Overview Leadli calendars now support custom appointment statuses. You can name each stage of an appointment in your own words (for example, Checked in, Awaiting documents, or Ready for appointment) instead of using a fixed list of statuses. Each custom status belongs to one of s...', '<h2>Overview</h2>
<p>Leadli calendars now support custom appointment statuses. You can name each stage of an appointment in your own words (for example, Checked in, Awaiting documents, or Ready for appointment) instead of using a fixed list of statuses.</p>
<p>Each custom status belongs to one of six states: Pending, Active, Completed, No show, Cancelled, and Invalid. The state controls scheduling behavior such as time slot availability, calendar sync, and notifications.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Create and manage your own statuses:</strong> Add, rename, reorder, archive, and restore statuses within each state from the Appointment status settings.</li>
<li><strong>Scheduling stays predictable:</strong> Pending and Active keep the time slot reserved. Completed, No show, Cancelled, and Invalid release the slot for new bookings.</li>
<li><strong>Existing setups continue to work:</strong> Your current default statuses carry over automatically, and existing appointments, workflows, and calendar settings remain unchanged.</li>
<li><strong>Safe archiving:</strong> Archiving prevents a status from being used on new appointments, without changing existing appointments already using that status.</li>
<li><strong>Statuses are available everywhere:</strong> Select statuses in the new appointment window, appointment details panel, and appointment list. Pickers are grouped by state and searchable.</li>
<li><strong>Class booking attendee statuses:</strong> For class booking calendars, you can set a status per attendee.</li>
<li><strong>Workflow automation by exact stage:</strong> Workflow triggers, actions, and filters can reference your custom statuses. If you rename a status, workflows update automatically.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Enable <strong>Custom Appointment Statuses</strong> in Labs for your location.</li>
<li>Open <strong>Calendars → Calendar Settings → Preferences → Appointment status</strong>.</li>
<li>Choose a state, select <strong>New status</strong>, enter a name, and save.</li>
<li>To retire a status, archive it after reviewing the impact.</li>
<li>Apply statuses when creating an appointment or from the appointment details and list views.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li><strong>Matches real workflows:</strong> Teams can track the stages they actually use without relying on notes or external tools.</li>
<li><strong>No scheduling risk:</strong> Availability and notifications follow the underlying state, so labels can change without unexpected side effects.</li>
<li><strong>Less manual follow-up:</strong> Automation can run when an appointment reaches a specific stage.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-28T12:07:39.000Z'),
('wp-1652', 'Partial payments for rentals: collect a deposit now and the balance later', 'Overview High-value rentals (vehicles, vacation homes, equipment, and more) often book more easily when customers can reserve with a deposit and pay the remaining balance closer to the rental start date. Partial Payments lets you collect a deposit at booking and charge the remain...', '<h2>Overview</h2>
<p>High-value rentals (vehicles, vacation homes, equipment, and more) often book more easily when customers can reserve with a deposit and pay the remaining balance closer to the rental start date. Partial Payments lets you collect a deposit at booking and charge the remaining balance before the rental begins. You set this up once in global settings, and customers can clearly see what they pay today and when the rest is due.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Deposit now, balance later.</strong> In Global Settings, choose a deposit percentage (1–99% of the booking total) and when the balance is due. This applies to new bookings across your listings.</li>
<li><strong>A clear payment plan at checkout.</strong> Customers see “Due today” and “Due [date]” in the order summary, with an explanation that the balance is charged automatically (when enabled).</li>
<li><strong>Balance collected automatically.</strong> On the due date, the remaining balance can be charged to the card used for the deposit automatically (if enabled).</li>
<li><strong>Security deposits that match your process.</strong> If you collect security deposits upfront, you can choose whether they are due at booking time or with the final balance payment.</li>
<li><strong>Last-minute bookings stay simple.</strong> If the balance due date has already passed when a booking is made, the booking becomes a single full payment so checkout is not blocked.</li>
<li><strong>Payment status at a glance.</strong> Each payment shows a due date, amount, and status (for example, “Payment 1 of 2 · Paid” and “Payment 2 of 2 · Pending”).</li>
<li><strong>Collect payments with a clear breakdown.</strong> You can collect one scheduled payment or multiple payments together on or before the due date.</li>
<li><strong>A schedule that stays accurate when things change.</strong> If the booking amount changes, the schedule updates automatically. If the deposit is already paid, the remaining balance reflects the difference. If you add an item after the booking is fully paid, an additional charge is created for the difference and you can collect it manually. If rental dates change, the balance due date shifts with the new start date.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendars → Calendar settings → Rentals → Global settings → Payment settings</strong>. Turn on <strong>Require Payment at Booking</strong>, then enable <strong>Partial Payments</strong>.</li>
<li>Set the deposit percentage and how many days before the rental starts the balance is due. The deposit is calculated on the booking total (including taxes and fees) and excludes the security deposit.</li>
<li>If you collect security deposits, choose whether they are collected with the booking deposit, collected with the final balance, or saved as Card on File.</li>
<li>Save. New bookings will follow this payment plan. Existing bookings are not affected.</li>
<li>Manage payments from the booking sidebar. Use <strong>Actions → Collect Payment</strong> to collect manually at any time. If there is no card on file when the balance is due, you can charge it manually.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>A smaller upfront payment can help customers commit to higher-value rentals, increasing completed bookings.</li>
<li>Automatic balance collection reduces time spent chasing payments before a rental.</li>
<li>Clear payment status and manual collection options help you stay in control.</li>
<li>Security deposits can follow the workflow you already use (upfront or card on file).</li>
<li>Customers can easily understand what they pay today and what will be paid later.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-10-28T12:06:30.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;