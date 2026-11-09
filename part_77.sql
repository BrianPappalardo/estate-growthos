INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Snapshot:</strong> Automotive – Automotive Detailing</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1142', 'Housecall Pro: workflow triggers and actions', 'Update summary You can connect Housecall Pro to Leadli Workflows. This adds two triggers (Job scheduled, Job completed) and one action (Create new customer). Use these to respond to bookings, reschedules, and job completions, and to create customer records in Housecall Pro from a...', '<p><strong>Update summary</strong></p>
<p>You can connect Housecall Pro to Leadli Workflows. This adds two triggers (Job scheduled, Job completed) and one action (Create new customer). Use these to respond to bookings, reschedules, and job completions, and to create customer records in Housecall Pro from a workflow.</p>
<p><strong>How it works</strong></p>
<ul>
<li><strong>Job scheduled</strong>: fires when a job is scheduled or rescheduled.</li>
<li><strong>Job completed</strong>: fires when a job is marked complete.</li>
<li>Both triggers return the full job payload plus a nested customer object, so mapping stays consistent.</li>
<li><strong>Create new customer</strong> (action): creates a customer record from workflow inputs and returns the new customer ID for later steps.</li>
<li>Authentication uses an API key. Connect once, then choose the connected account as needed.</li>
</ul>
<p><strong>How to set it up</strong></p>
<ol>
<li>In Workflows, add a Housecall Pro trigger or the Create new customer action.</li>
<li>Click <strong>Connect your account</strong> and paste your Housecall Pro API key.</li>
<li>To generate an API key in Housecall Pro: <strong>My Apps → App Store → API Key Management → Generate API Key</strong> (Full Access).</li>
<li>For triggers: optionally add filters (customer, job tag, employee, or captured fields), then use <strong>Find new records</strong> to capture a sample payload.</li>
<li>For the action: First Name and Last Name are required. Optional fields include Email, Company, Mobile Number (10 digits), and Home Number. Use <strong>Test Action</strong> to validate.</li>
<li>Save and publish the workflow.</li>
</ol>
<p><strong>Example workflow</strong></p>
<p>A customer books a job in Housecall Pro. When <strong>Job scheduled</strong> fires, the workflow can send a confirmation message, create or update the contact in the CRM, and apply a service tag. When the job is finished and <strong>Job completed</strong> fires, the workflow can send a thank-you message, request a review, and deliver a receipt.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Triggers: Job scheduled (new bookings and reschedules), Job completed (job marked complete).</li>
<li>Action: Create new customer (First Name and Last Name required; optional Email/Company/Phone fields).</li>
<li>API key authentication requires Full Access permissions.</li>
<li>This integration uses premium workflow steps billed at the standard automation rate. Housecall Pro plan usage is billed by Housecall Pro.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1141', 'Share funnel steps with QR codes in Funnel Builder', 'You can now generate a QR code directly in Funnel Builder for the current funnel step. What changed Create a QR code from within Funnel Builder The QR code links to the current funnel step automatically Download the QR code as PNG, SVG, or PDF Select Edit QR for additional custom...', '<p>You can now generate a QR code directly in Funnel Builder for the current funnel step.</p>
<h2>What changed</h2>
<ul>
<li>Create a QR code from within Funnel Builder</li>
<li>The QR code links to the current funnel step automatically</li>
<li>Download the QR code as PNG, SVG, or PDF</li>
<li>Select Edit QR for additional customization options</li>
<li>This option appears only when a domain is connected or hosted</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open a funnel in Funnel Builder</li>
<li>Find the Funnel URL at the top of the page</li>
<li>Click the QR code icon next to the URL</li>
<li>Download the QR code, or select Edit QR to customize it</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Saves time by keeping QR code creation in the same place you build funnels</li>
<li>Helps avoid linking to the wrong page or step</li>
<li>Makes it easier to promote funnels offline (print, events, packaging, signage)</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1140', 'Product custom values for dynamic product detail page content', 'Overview Store owners can now use product-related custom values on product detail pages to show product-specific information inside supported text elements. You can display values such as product name, description, product type, label, ratings, price, SKU, stock status, subscript...', '<h2>Overview</h2>
<p>Store owners can now use product-related custom values on product detail pages to show product-specific information inside supported text elements.</p>
<p>You can display values such as product name, description, product type, label, ratings, price, SKU, stock status, subscription details, and shipping dimensions.</p>
<p>Variant-based values (for example price, SKU, stock, and subscription details) update automatically when a customer switches variants.</p>
<p>Product tokens are available in the Custom Values picker under the Product section.</p>
<h2>How to set it up</h2>
<ol>
<li>Open the Store Builder and go to a Product Detail Page or Custom Product Detail Page.</li>
<li>Select a supported text element: Heading, Sub-Heading, Paragraph, Bullet List, or Rich Text.</li>
<li>Open the Custom Values picker and choose the Product section.</li>
<li>Insert the product token you need.</li>
<li>Save and publish the page.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Product custom values work only on Product Detail Pages and Custom Product Detail Pages.</li>
<li>Supported elements include Heading, Sub-Heading, Paragraph, Bullet List, and Rich Text.</li>
<li>Custom values do not work on Product Listing pages, checkout, landing pages, funnels, blogs, webinars, calendars, or other non-product-detail pages.</li>
<li>Custom values do not resolve inside buttons, FAQs, countdown timers, image captions, form fields, or other unsupported elements.</li>
<li>Featured Product is only an element. Adding it to a non-product-detail page does not enable product custom values on that page.</li>
<li>If a value is unsupported or missing, it will render as blank.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1139', 'Invoices: Accounting sync status and visibility', 'Accounting sync visibility for invoices is now available in Leadli. You send the invoice, and Leadli handles the sync and reports exactly what happened. Accounting Sync provides a central place to monitor and resolve sync activity across QuickBooks, Xero, and Wave. The problem th...', '<p><strong>Accounting sync visibility for invoices is now available in Leadli.</strong></p>
<p>You send the invoice, and Leadli handles the sync and reports exactly what happened. Accounting Sync provides a central place to monitor and resolve sync activity across QuickBooks, Xero, and Wave.</p>
<p><strong>The problem this solves</strong></p>
<p>In the past, invoice sync issues could be easy to miss. When invoices failed to sync, there was often no clear alert or log, and problems were only discovered later during reconciliation.</p>
<p><strong>What’s included</strong></p>
<p>Accounting Sync provides a dashboard for each connected accounting platform. You can see how many invoices, transactions, and contacts synced, which items failed, the reason for failure, and you can retry syncing individual records.</p>
<p><strong>How this helps</strong></p>
<ul>
<li><strong>Fewer surprises during reconciliation</strong>: Identify sync failures sooner.</li>
<li><strong>Less manual checking</strong>: Reduce time spent comparing your CRM and accounting system.</li>
<li><strong>Faster fixes</strong>: Review failure details and retry from the dashboard.</li>
<li><strong>Broader monitoring</strong>: Track invoices, transactions, and contacts from one place (where supported).</li>
</ul>
<p><strong>How to get started</strong></p>
<ol>
<li>Go to Payments → Invoices &amp; Estimates → Accounting Sync in your sub-account.</li>
<li>Select Manage next to your connected accounting platform (QuickBooks, Xero, or Wave).</li>
<li>Open any entity to view individual record status details.</li>
<li>Review the error details for any failed record, including the last attempt timestamp.</li>
<li>Select Retry to re-run the sync for that record.</li>
</ol>
<p><strong>What’s next</strong></p>
<p>Transaction sync for Wave is planned so Wave users can access broader coverage similar to QuickBooks and Xero. Proactive failure notifications are also being explored so you can be alerted when a sync error occurs.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;