INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
<p><strong>Good to know</strong></p>
<ol>
<li>Supported accounting platforms: QuickBooks, Xero, Wave</li>
<li>For Wave, transaction and contact sync are not yet supported (invoices only).</li>
<li>Accounting Sync is currently available on web only.</li>
<li>Invoices created and sent via the Leadli mobile app will sync automatically, but sync status and logs must be reviewed on web.</li>
<li>Retry is available per record; bulk retry is not yet supported.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1138', 'Ad Manager: Save Meta lead forms as drafts', 'What’s new Users can create and save Meta Lead Forms in a Draft state from the Ad Manager campaign flow. A Save as Draft action is available in the Facebook Lead Form builder. Draft forms are labeled with a Draft badge in the lead form selection dropdown. Draft forms can be edite...', '<h2>What’s new</h2>
<ol>
<li>Users can create and save Meta Lead Forms in a <strong>Draft</strong> state from the Ad Manager campaign flow.</li>
<li>A <strong>Save as Draft</strong> action is available in the Facebook Lead Form builder.</li>
<li>Draft forms are labeled with a <strong>Draft</strong> badge in the lead form selection dropdown.</li>
<li>Draft forms can be edited from the lead form selector using the inline edit icon.</li>
<li>Campaign validation detects draft or incomplete forms before publishing ads.</li>
<li>Warnings display for forms with incomplete field mappings or unpublished draft states.</li>
</ol>
<h2>How it works</h2>
<ol>
<li>In the Meta Lead Form builder, configure the form as usual (for example: Form Type, Greeting, Questions, Form Fields Mapping, Privacy Policy, and Message for Leads).</li>
<li>Click <strong>Save as Draft</strong> instead of creating the form on Meta immediately.</li>
<li>Draft forms appear in the <strong>Select a lead form</strong> dropdown with a Draft status indicator, a created timestamp, and quick edit access.</li>
<li>Reopen draft forms anytime to continue editing, complete mappings, and publish when ready.</li>
<li>If a draft or unmapped form is selected during campaign setup, validation messaging will explain what needs to be completed before the form can be used.</li>
<li>Once the form is fully configured and published, it becomes eligible for campaign usage.</li>
</ol>
<h2>Why it matters</h2>
<ol>
<li>Meta does not allow editing of published lead forms, so errors are harder to fix after a form goes live.</li>
<li>Draft support helps advertisers build and review forms before publishing.</li>
<li>This improves campaign preparation by allowing teams to save unfinished work, review forms, complete CRM field mappings later, and reduce accidental publishing.</li>
<li>This is especially helpful for agencies and teams using approvals or multi-step reviews.</li>
</ol>
<h2>Notes</h2>
<ol>
<li>Draft forms cannot be used in live campaigns until they are published.</li>
<li>Validation requirements are relaxed during draft save, but enforced during final publish.</li>
<li>Existing published Meta forms continue to work without changes.</li>
</ol>
<p>API documentation is available in Leadli developer resources.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1137', 'Pricing update: SMS costs for select international destinations (effective June 12, 2026)', 'Effective June 12, 2026 , Leadli will update outbound SMS pricing for select international destinations due to carrier and provider cost increases. What is changing The following outbound SMS routes will have updated rates: Gibraltar: $0.1091 to $0.1225 Iraq: $0.4491 to $0.5030 I...', '<p><strong>Effective June 12, 2026</strong>, Leadli will update outbound SMS pricing for select international destinations due to carrier and provider cost increases.</p>
<h2>What is changing</h2>
<p>The following outbound SMS routes will have updated rates:</p>
<ul>
<li>Gibraltar: $0.1091 to $0.1225</li>
<li>Iraq: $0.4491 to $0.5030</li>
<li>Ivory Coast: $0.4397 to $0.4925</li>
<li>Jordan: $0.3884 to $0.4429</li>
<li>Liberia: $0.2406 to $0.2677</li>
<li>Madagascar: $0.5267 to $0.5899</li>
<li>Malaysia: $0.2594 to $0.3389</li>
<li>Montenegro: $0.1721 to $0.1928</li>
<li>Samoa: $0.2369 to $0.2675</li>
<li>São Tomé and Príncipe: $0.1307 to $0.1581</li>
<li>Togo: $0.4416 to $0.4946</li>
</ul>
<h2>Why prices are changing</h2>
<p>These updates reflect changes in carrier and messaging provider costs needed to maintain reliable delivery and support messaging infrastructure across these destinations.</p>
<h2>What you need to do</h2>
<p>No action is required. The updated rates will be applied automatically on June 12, 2026.</p>
<p>We will continue to monitor carrier pricing and make updates as needed to support reliable message delivery worldwide.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1136', 'Alt text support for images in the Leadli Social Planner', 'You can now add alt text to images in the Leadli Social Planner. This helps make your posts more accessible while keeping the workflow inside Social Planner. What’s included Add custom alt text to each uploaded image Works with single-image posts and multi-image posts/carousels A...', '<p>You can now add alt text to images in the Leadli Social Planner. This helps make your posts more accessible while keeping the workflow inside Social Planner.</p>
<h3>What’s included</h3>
<ul>
<li>Add custom alt text to each uploaded image</li>
<li>Works with single-image posts and multi-image posts/carousels</li>
<li>Alt text is stored per image and can be edited before publishing</li>
<li>Alt text is sent to platforms that support it and ignored on platforms that do not</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner</li>
<li>Create a new post</li>
<li>Upload one or more images</li>
<li>Open the Alt Text option for an image</li>
<li>Enter or edit the description</li>
<li>Save, schedule, or publish your post</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Improves accessibility for visually impaired audiences</li>
<li>Helps you follow accessibility best practices</li>
<li>Reduces the need to edit posts natively after publishing</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Alt text is configured per image, not per post</li>
<li>You can update or remove alt text before publishing</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1135', 'Conversations AI: improved audio understanding', 'Summary Leadli has improved the audio transcription used by Conversations AI to better understand voice messages and audio notes. What changed Higher transcription accuracy for voice messages and audio notes Support for additional languages More reliable and stable audio processi...', '<h2>Summary</h2>
<p>Leadli has improved the audio transcription used by Conversations AI to better understand voice messages and audio notes.</p>
<h2>What changed</h2>
<ul>
<li>Higher transcription accuracy for voice messages and audio notes</li>
<li>Support for additional languages</li>
<li>More reliable and stable audio processing</li>
</ul>
<h2>Details</h2>
<h3>1) Improved voice understanding</h3>
<ul>
<li>Conversations AI uses an updated speech recognition engine.</li>
<li>Better recognition of natural speech patterns and conversational language.</li>
<li>Improved handling of different accents and pronunciation variations.</li>
<li>More accurate interpretation of customer intent from audio messages.</li>
<li>Better performance with noisy or lower-quality audio recordings.</li>
</ul>
<h3>2) Expanded language support</h3>
<p>Audio transcription now supports additional languages, including Arabic, Belarusian, Bengali, Bosnian, Croatian, Gujarati, Hebrew, Kannada, Macedonian, Marathi, Persian (Farsi), Serbian, Slovenian, Tagalog, Tamil, Telugu, and Urdu.</p>
<p>Support continues for major languages such as English, Spanish, French, German, Portuguese, Hindi, Japanese, Korean, Chinese, Italian, Dutch, Turkish, Vietnamese, Thai, and others.</p>
<h3>3) More reliable audio processing</h3>
<ul>
<li>Improved handling of edge cases</li>
<li>Better recovery from processing failures</li>
<li>Fewer transcription interruptions</li>
<li>More consistent voice-to-text performance across supported channels</li>
</ul>
<p><strong>Note:</strong> These enhancements are available to all users who have enabled <strong>Respond to Audio</strong> in Bot Settings. No additional setup is required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1134', 'Media Library: expanded file preview support', 'The Leadli Media Library now supports expanded in-browser previews, so you can review more file types without downloading them. What’s new You can now preview the following file types directly in the existing preview window: PDF : browse pages, zoom, jump to pages, and select tex...', '<p>The Leadli Media Library now supports expanded in-browser previews, so you can review more file types without downloading them.</p>
<h2>What’s new</h2>
<p>You can now preview the following file types directly in the existing preview window:</p>
<ul>
<li><strong>PDF</strong>: browse pages, zoom, jump to pages, and select text (up to 50 MB).</li>
<li><strong>Word (.docx)</strong>: view full formatting, including pagination, headers, and footers (up to 15 MB).</li>
<li><strong>Excel and CSV</strong>: open spreadsheets with worksheet tabs and column headers (up to 15 MB).</li>
<li><strong>Audio</strong>: play supported formats in the browser, including MP3, WAV, OGG, and M4A (up to 100 MB).</li>
<li><strong>3D models</strong>: interactively view supported 3D files with rotation controls, wireframe mode, and camera reset (up to 50 MB).</li>
<li><strong>Text and code files</strong>: preview JSON, CSS, plain text, and other supported text-based files with syntax highlighting (up to 5 MB).</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Select a file in the Media Library, or choose <strong>Preview</strong> from the right-click menu.</li>
<li>The appropriate viewer opens automatically based on the file type.</li>
</ol>
<h2>Additional notes</h2>
<ul>
<li>Files larger than the preview limits will show a <strong>Too Large to Preview</strong> message with an option to download the file.</li>
<li>Spreadsheet previews are limited to <strong>1,000 rows × 100 columns per worksheet</strong> to maintain performance. If a file exceeds these limits, a notice will appear and the full file can still be downloaded.</li>
<li>Unsupported file types (for example, PowerPoint, ZIP archives, font files, and legacy Word documents) will show a <strong>Preview Not Available</strong> message.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1133', 'Audit logs for preference management', 'Audit Logs now provides clearer visibility into preference and subscription management activity. What’s included Contact preference updates Which contact’s preferences were updated Who made the change When the change was made The previous and updated preference values Subscriptio...', '<p>Audit Logs now provides clearer visibility into preference and subscription management activity.</p>
<h3>What’s included</h3>
<p><strong>Contact preference updates</strong></p>
<ul>
<li>Which contact’s preferences were updated</li>
<li>Who made the change</li>
<li>When the change was made</li>
<li>The previous and updated preference values</li>
</ul>
<p><strong>Subscription type updates</strong></p>
<ul>
<li>Which subscription type was modified</li>
<li>Who made the change</li>
<li>When the update occurred</li>
<li>What settings or details were changed</li>
</ul>
<h3>Why this matters</h3>
<ul>
<li>Export audit records for compliance and reporting</li>
<li>Improve transparency and accountability across your team</li>
<li>Quickly see what changed, who changed it, and when</li>
</ul>
<h3>How to access</h3>
<ul>
<li>Go to Settings → Audit Logs</li>
<li>Review the user, affected record, timestamp, and change details</li>
</ul>
<h3>Coming soon</h3>
<p>A History tab on Contact Preferences to show a complete timeline of preference changes, including sources, legal basis, and update details.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1152', 'Smarter duration discounts and scheduling notice logic for rentals', 'Overview We’ve improved how duration-based discounts and minimum scheduling notice work for rental booking modes that use predefined rental periods and rental times. Previously, some calculations could behave differently than businesses expected because eligibility was evaluated ...', '<h2>Overview</h2>
<p>We’ve improved how <strong>duration-based discounts</strong> and <strong>minimum scheduling notice</strong> work for rental booking modes that use predefined rental periods and rental times.</p>
<p>Previously, some calculations could behave differently than businesses expected because eligibility was evaluated using the underlying booking duration rather than the configured rental period. This was most noticeable for day-based, night-based, weekly, and monthly rental configurations where customers select dates rather than specific times.</p>
<p>With this improvement, discounts and booking restrictions align more closely with how rental businesses define and sell their rentals.</p>
<h2>What’s new</h2>
<h3>Smarter duration-based discounts</h3>
<p>Duration discounts now evaluate eligibility based on the listing’s configured rental period, so discounts apply more consistently across date-based rental modes.</p>
<p><strong>Example</strong></p>
<p>A vacation rental is configured with:</p>
<ul>
<li>Rental start: 3:00 PM</li>
<li>Rental end: 11:00 AM</li>
<li>2-day+ discount enabled</li>
</ul>
<p>A customer books from Monday to Wednesday.</p>
<p>Even though the booking duration is less than 48 hours, the booking represents a 2-day stay and will qualify for the discount.</p>
<h3>Improved minimum scheduling notice</h3>
<p>For rental modes configured using Days, Weeks, or Months, minimum scheduling notice is now evaluated using the configured rental period instead of exact hour calculations.</p>
<p>A listing requires:</p>
<ul>
<li>Minimum scheduling notice: 2 days</li>
</ul>
<p>If today is Wednesday and the booking starts on Friday, the booking is valid (regardless of the exact start time on Friday) because it satisfies the 2-day notice requirement.</p>
<p>Previously, the system evaluated this as an exact 48-hour requirement, which could sometimes produce unexpected results.</p>
<p><strong>Note:</strong> Businesses that need precise time-based restrictions can continue using the Hours option for scheduling notice. For example, a 48-hour notice requirement configured using hours will continue to be evaluated as an exact 48 hours.</p>
<h2>Why this matters</h2>
<ul>
<li>Makes duration discounts behave more consistently for day-based, night-based, weekly, and monthly rentals.</li>
<li>Aligns booking restrictions with how rental businesses define their rental periods.</li>
<li>Creates a more intuitive booking experience for both businesses and customers.</li>
<li>Reduces confusion around discount eligibility and scheduling notice requirements.</li>
<li>Helps rentals behave more naturally for businesses that operate using predefined rental periods.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:44.000Z'),
('wp-1171', 'Layers panel search in the website and funnel builder', 'What’s included Layers Panel Search adds a search bar inside the Layers panel in the Leadli website and funnel builder. It helps you find any element on your page quickly by name, type, or element ID. Why it matters On pages with many sections and nested rows/columns, finding a s...', '<h2>What’s included</h2>
<p>Layers Panel Search adds a search bar inside the Layers panel in the Leadli website and funnel builder. It helps you find any element on your page quickly by name, type, or element ID.</p>
<h2>Why it matters</h2>
<p>On pages with many sections and nested rows/columns, finding a specific element can take time. This update makes it faster to locate and select the exact item you need without manually expanding the full layer tree.</p>
<h2>Key details</h2>
<ul>
<li><strong>Search by name, type, or ID:</strong> Match elements by title (for example, “Headline”), by element type (for example, “Image” or “Column”), or by element ID.</li>
<li><strong>Flat results list:</strong> Matches appear in a single list grouped under Page and Popup, with a live match count.</li>
<li><strong>Jump to an element:</strong> Click a result to select and scroll to that element on the canvas and open its settings.</li>
<li><strong>Actions from results:</strong> Hide/Show, Edit, Clone, and Delete are available from the options menu for each result.</li>
<li><strong>Clear search:</strong> Clear the search to return to the full Layers tree.</li>
</ul>
<h2>How to use it</h2>
<p><strong>Path:</strong> Website/Funnel Builder → Edit Page → Layers panel (left toolbar) → Search layers</p>
<ol>
<li>Open the Layers panel.</li>
<li>Type an element name, type, or ID in the search box.</li>
<li>Select a result to jump to that element, or use the options menu for additional actions.</li>
<li>Clear the search to return to the full Layers tree.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Search applies to the current page’s layers (Page and Popup) and does not search other pages or funnel steps.</li>
<li>Matching is case-insensitive and supports partial text.</li>
<li>Results update as you type.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1170', 'Instagram direct connection onboarding', 'Instagram Unified Integration is now available in Labs. Businesses can now connect Instagram accounts directly without requiring a connected Facebook Page. This provides more flexibility in how Instagram accounts are connected and managed, and it supports future Instagram-native ...', '<p>Instagram Unified Integration is now available in Labs. Businesses can now connect Instagram accounts directly without requiring a connected Facebook Page. This provides more flexibility in how Instagram accounts are connected and managed, and it supports future Instagram-native capabilities that require direct connection.</p>
<h2>What’s new</h2>
<ul>
<li>An Instagram integration card under Settings → Integrations</li>
<li>A centralized view of all connected Instagram accounts</li>
<li>Support for both direct Instagram connections and Facebook Page-based Instagram connections</li>
<li>A Messaging &amp; Automations toggle for account-level control</li>
</ul>
<h2>Supported capabilities</h2>
<ul>
<li>Sync Instagram Direct conversations into the CRM</li>
<li>Create and manage contacts from Instagram conversations</li>
<li>Trigger workflows and automations based on Instagram interactions</li>
<li>Manage Instagram conversations alongside other messaging channels</li>
</ul>
<h2>How to enable</h2>
<p>Enable the Labs feature: Labs → Instagram Direct Integration. Then go to Settings → Integrations → Instagram.</p>
<h2>Important notes</h2>
<ul>
<li>Facebook Page-based Instagram connections will continue to work.</li>
<li>Enabling direct connection will disable the toggle for Page-based Instagram connections.</li>
<li>Instagram accounts connected through a Facebook Page cannot be disconnected independently. Disconnect the associated Facebook Page first.</li>
<li>Existing workflows and automations will continue to work if the same Instagram account is switched between connection methods.</li>
<li>Disabling the Messaging &amp; Automations toggle will stop both Instagram messaging and automation for that account.</li>
<li>Some upcoming Instagram-native features will require direct connection support (for example: DM to followers and poll replies).</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>More flexible account connection and management</li>
<li>Better visibility into connected Instagram accounts</li>
<li>A simpler setup experience without Facebook Page dependencies</li>
<li>Support for upcoming features such as follow-to-DM and poll reply automations</li>
</ul>
<h2>Next step</h2>
<p>This lays the groundwork to support DM-to-follower capability when Meta releases it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1169', 'Auto-detect and connect review profiles across 52+ platforms', 'What’s new Leadli can now auto-detect review profiles across 52+ supported platforms. This helps you quickly find where a business already has reviews and connect the most valuable profiles first. In Reputation, you’ll see recommended review profiles directly in the product. Each...', '<p><strong>What’s new</strong></p>
<p>Leadli can now auto-detect review profiles across 52+ supported platforms. This helps you quickly find where a business already has reviews and connect the most valuable profiles first.</p>
<p>In Reputation, you’ll see recommended review profiles directly in the product. Each recommendation includes detected review counts, match confidence, and business details so you can connect the right platforms without manual searching.</p>
<p><strong>Key updates</strong></p>
<p><strong>1) Auto-detected review profiles</strong></p>
<ul>
<li>View detected profiles across supported platforms such as Google Business Profile, Facebook, TripAdvisor, Agoda, Booking.com, Yelp, Trustpilot, and more.</li>
<li>Before you connect a profile, you can review details like platform, business name, address preview, and available review count.</li>
</ul>
<p><strong>2) Top recommendation</strong></p>
<ul>
<li>A new Top Recommendation highlights the best profile to connect first, based on value and review volume.</li>
</ul>
<p><strong>3) Review counts before connecting</strong></p>
<ul>
<li>Detected listings now show review volume up front, so you can prioritize the platforms that matter most.</li>
</ul>
<p><strong>4) In-app notifications for newly found review sites</strong></p>
<ul>
<li>You’ll receive in-app notifications when high-confidence review sites are discovered for a sub-account. These notifications summarize the opportunity and guide you to connect recommended profiles in Reputation.</li>
</ul>
<p><strong>5) Faster connect flow</strong></p>
<p>Recommended profiles can be connected directly from:</p>
<ul>
<li>Reputation → Overview</li>
<li>Reputation → Settings → Integrations</li>
</ul>
<p><strong>6) Confidence-based suggestions</strong></p>
<ul>
<li>Detected listings include confidence indicators (High match, Medium match, Multiple matches) to help you choose the right profile.</li>
</ul>
<p><strong>7) Multiple matches support</strong></p>
<p>If multiple possible listings are found for a platform, you can review and compare matches before selecting the correct business profile. Supported platforms allow multi-page connections, so you can connect multiple review pages when needed.</p>
<p><strong>8) Control for incorrect matches</strong></p>
<p>You can manage suggestions with actions such as:</p>
<ul>
<li>View page</li>
<li>Integrate different profile</li>
<li>Not my business</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Discover review profiles you may not have known existed.</li>
<li>See social proof and review volume before connecting.</li>
<li>Reduce manual setup and connect the highest-impact platforms faster.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1168', 'New templates now available in Leadli', 'We have released new web templates to support common marketing tasks such as building websites, creating funnels, and sending email campaigns. These templates are customizable and designed to help you publish faster. What’s included in this release Website templates: 2 new templa...', '<p>We have released new web templates to support common marketing tasks such as building websites, creating funnels, and sending email campaigns. These templates are customizable and designed to help you publish faster.</p>
<p><strong>What’s included in this release</strong></p>
<ul>
<li><strong>Website templates:</strong> 2 new templates</li>
<li><strong>Funnel templates:</strong> 7 new templates</li>
<li><strong>Email templates:</strong> 1 new template</li>
<li><strong>Social templates:</strong> 4 new templates</li>
<li><strong>Facebook ad templates:</strong> 3 new templates</li>
<li><strong>Google ad templates:</strong> 5 new templates</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates</li>
<li><strong>Snapshot:</strong> 1 new snapshot</li>
</ul>
<p><strong>Template details</strong></p>
<p><strong>Website</strong><br />Automotive (1)</p>
<p><strong>Email</strong><br />Real Estate (1)</p>
<p><strong>Social</strong><br />Automotive (2)<br />Restaurant and Bar (2)</p>
<p><strong>Facebook Ads</strong><br />Restaurant and Bar: Sanitation<br />Legal: Defense Lawyer<br />Health &amp; Wellness: Self Defense Training</p>
<p><strong>Google Ads</strong><br />Beauty &amp; Fashion: Hair Studio<br />Automotive: Automotive Mechanic<br />Travel &amp; Hospitality: Vacation Lodge<br />Restaurant &amp; Bar: Pastry Shop<br />Real Estate: Real Estate Sales Agent</p>
<p><strong>LinkedIn Ads</strong><br />Business Coaching &amp; Consulting: Lifestyle Coaching<br />Finance: Accounting Firm<br />Marketing Agency: Marketing Agency<br />Finance: Financial Planner<br />Marketing Agency: Services Strategies</p>
<p><strong>Snapshot</strong><br />Finance: Banking and Payment</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1167', 'SLA widgets in dashboards for response-time accountability', 'This update adds new SLA widgets in the Dashboards widget panel to help you monitor response times and SLA performance across your team. What’s new Four new SLA widgets are available at the bottom of the Conversations section in the Dashboards widget panel. Track SLA met trend, S...', '<p>This update adds new SLA widgets in the Dashboards widget panel to help you monitor response times and SLA performance across your team.</p>
<h2>What’s new</h2>
<ul>
<li>Four new SLA widgets are available at the bottom of the Conversations section in the Dashboards widget panel.</li>
<li>Track SLA met trend, SLA breached trend, average response time trend, and SLA performance across users and channels in one place.</li>
<li>Each widget supports filtering by assigned user and message channel (Call, SMS, Email, Web chat, Facebook, GMB, Instagram).</li>
<li>These widgets work alongside the existing Conversations widgets already on your dashboard—no separate setup required.</li>
<li>SLA met and SLA breached are available as dimensions in Custom Metrics, so you can build KPIs like an SLA compliance rate using the formula builder.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Open any dashboard and select <strong>Edit Dashboard</strong>.</li>
<li>Select <strong>+ Add Widget</strong> and scroll to the <strong>Conversations</strong> section.</li>
<li>Select one of the SLA widgets, configure filters and chart type, then select <strong>Save Changes</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Adds an on-time performance layer to conversation tracking.</li>
<li>Helps you identify SLA breach patterns early so you can investigate and correct them.</li>
<li>Makes it easier to track response speed trends over time.</li>
<li>Breaks down SLA performance by team member and channel for a clear, data-backed view.</li>
</ul>
<h2>What’s next</h2>
<p>No additional updates have been announced for this feature.</p>
<h2>Notes</h2>
<ul>
<li>Conversations SLA widgets are limited to a 1-year date range.</li>
<li>All widgets support filtering by assigned user and message channel.</li>
<li>Available on all plans that include Dashboards &amp; Reporting.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1166', 'Book Appointment action now includes timezone control', 'Summary The Leadli Book Appointment workflow action now includes a Timezone field. You can set a fixed timezone or use a dynamic value such as the contact’s timezone. How it works When the action runs, Leadli reads the Start Date & Time using the selected timezone and books the a...', '<p><strong>Summary</strong></p>
<p>The Leadli Book Appointment workflow action now includes a Timezone field. You can set a fixed timezone or use a dynamic value such as the contact’s timezone.</p>
<p><strong>How it works</strong></p>
<p>When the action runs, Leadli reads the Start Date &amp; Time using the selected timezone and books the appointment at the correct absolute time. If no timezone is selected, it uses the account timezone.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the Book Appointment action in a workflow.</li>
<li>Set the Start Date &amp; Time and choose a fixed timezone or Contact Timezone.</li>
<li>Save the action.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Without a timezone setting, dynamic appointment times can be interpreted in the wrong timezone, which can cause bookings to land at the wrong time for contacts in different regions.</p>
<p><strong>Notes and limitations</strong></p>
<ul>
<li>The account timezone is used by default, but you can set a specific timezone if needed.</li>
<li>The selected timezone is used to interpret the Start Date &amp; Time and check slot availability.</li>
<li>If Override Availability is enabled, the appointment can be booked without checking calendar availability.</li>
<li>This update applies only to the Book Appointment action.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1165', 'Email Sequences are available in Leadli Beta Labs', 'Email Sequences are now available in Beta Labs. They let you automate single-thread email conversations using delays, conditions, and scheduling. After strong interest during the private beta, early feedback continues to show clear demand. Key features Single-thread automated ema...', '<p>Email Sequences are now available in Beta Labs. They let you automate single-thread email conversations using delays, conditions, and scheduling.</p>
<p>After strong interest during the private beta, early feedback continues to show clear demand.</p>
<h3>Key features</h3>
<ul>
<li>Single-thread automated email conversations</li>
<li>Conditional sending based on open and delivery status</li>
<li>Stop on reply automation</li>
<li>Support for designed emails and plain text emails</li>
<li>Sequence and step-level analytics</li>
</ul>
<h3>Impact</h3>
<ul>
<li>Automate follow-ups, reminders, and nurture campaigns</li>
<li>Improve engagement with behavior-based outreach</li>
<li>Keep conversation context with threaded emails</li>
<li>Create email automation without needing to learn complex automations</li>
</ul>
<h3>How to access</h3>
<ol>
<li>Go to <strong>Settings</strong> and open <strong>Beta Labs</strong>.</li>
<li>Enable <strong>Email Sequences</strong>.</li>
<li>Navigate to <strong>Marketing &rarr; Email &rarr; Campaigns</strong>.</li>
<li>Click <strong>Create New Sequence</strong>.</li>
<li>Configure your audience, delays, conditions, and email steps.</li>
<li>Enable <strong>Stop on Reply</strong> and launch your sequence.</li>
<li>Open <strong>Statistics</strong> to review overall metrics and step-level metrics.</li>
</ol>
<h3>Coming soon</h3>
<ol>
<li>Enroll contacts into a sequence through workflows</li>
<li>Create a sequence using Email AI</li>
<li>A/B testing for each step</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1164', 'New Leadli mobile app task manager (Tasks V2)', 'Overview Tasks V2 is an updated task manager in the Leadli mobile app. It is designed to be faster to use, easier to review at a glance, and more flexible for team workflows. The problem it solves The previous task experience made it harder to manage repeatable follow-ups and to ...', '<p><strong>Overview</strong></p>
<p>Tasks V2 is an updated task manager in the Leadli mobile app. It is designed to be faster to use, easier to review at a glance, and more flexible for team workflows.</p>
<p><strong>The problem it solves</strong></p>
<p>The previous task experience made it harder to manage repeatable follow-ups and to keep tasks connected to the right records. Tasks could not easily repeat, only one contact could be attached, and it was difficult to see key details without opening each task.</p>
<p><strong>What’s included in Tasks V2</strong></p>
<ul>
<li><strong>Recurring tasks</strong>: Repeat tasks hourly, daily, weekly, or monthly, with optional end conditions.</li>
<li><strong>Link tasks to opportunities</strong>: Associate tasks with both contacts and an opportunity so follow-ups stay connected to revenue-related work.</li>
<li><strong>Multiple contacts on a task</strong>: Attach more than one contact to a single task to reduce duplicates.</li>
<li><strong>List and board views</strong>: Switch between a simple list and a board layout depending on how you prefer to work.</li>
<li><strong>Today’s progress</strong>: Track completion progress for tasks due today.</li>
<li><strong>Organized sections</strong>: Tasks are grouped into Overdue, Today, This Week, and Upcoming.</li>
<li><strong>More details on the task card</strong>: See linked contact and opportunity details without opening the task.</li>
<li><strong>Updated interface</strong>: A cleaner UI/UX for creating, finding, and completing tasks.</li>
</ul>
<p><strong>How to get started</strong></p>
<ol>
<li>Open the <strong>Tasks</strong> tab in the mobile app.</li>
<li>Tap <strong>+</strong> to create a task, then add a title, due date, contact(s), and an opportunity. Assign a teammate if needed.</li>
<li>Turn on <strong>Repeat</strong> if you want the task to recur, then choose the schedule.</li>
</ol>
<p><strong>What’s next</strong></p>
<p>Planned improvements include a dynamic task widget on the homepage, richer recurring options, additional filters and grouping, and deeper links between tasks, contacts, and opportunities.</p>
<p><strong>Rollout and availability</strong></p>
<ul>
<li><strong>Release date</strong>: 11/06/2026</li>
<li><strong>Status</strong>: Public</li>
<li><strong>Availability</strong>: Leadli app, LeadConnector, and WL app</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1163', 'Internal notifications: notify followers and opportunity owners', 'Update summary You can now notify contact followers, opportunity followers, or both from the Internal Notification workflow action. Opportunity Owner is also available as a recipient option in the "User Type" picker. How it works A new "Notify followers" section appears below "To...', '<p><strong>Update summary</strong></p>
<p>You can now notify contact followers, opportunity followers, or both from the Internal Notification workflow action. Opportunity Owner is also available as a recipient option in the &#8220;User Type&#8221; picker.</p>
<p><strong>How it works</strong></p>
<p>A new &#8220;Notify followers&#8221; section appears below &#8220;To User Type&#8221;. The follower options are additive, meaning they notify followers in addition to the recipient selected above. Recipients are resolved when the action runs, and duplicates are removed automatically.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open an Internal Notification action in a workflow.</li>
<li>Select the recipient in &#8220;To User Type&#8221;.</li>
<li>Enable Contact followers, Opportunity followers, or both.</li>
</ul>
<p><strong>Why this change was made</strong></p>
<p>Teams often collaborate on contacts and opportunities they do not own. This makes it easier to keep the right teammates informed without manual mentions or extra workflow branches.</p>
<p><strong>Examples</strong></p>
<ul>
<li>Keep &#8220;To User Type&#8221; set to Assigned User and enable Contact followers so everyone following the contact is notified when the lead replies.</li>
<li>Enable both Contact followers and Opportunity followers so followers are notified when a form is submitted or an opportunity stage changes.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Available for Email, In-App Notification, SMS, and WhatsApp.</li>
<li>Duplicate recipients are automatically removed.</li>
<li>Opportunity followers are skipped if no opportunity is in scope or the opportunity was deleted.</li>
<li>Followers without the required channel address are skipped for that notification type.</li>
<li>Existing Internal Notification actions are unchanged.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1162', 'Easier field search in workflows', 'What’s new Field dropdowns in workflow trigger filters now rank search results better and use an updated layout. When you search for a field, the closest match appears at the top for both standard and custom fields. How it works All matching fields still appear in one list while ...', '<p><strong>What’s new</strong></p>
<p>Field dropdowns in workflow trigger filters now rank search results better and use an updated layout. When you search for a field, the closest match appears at the top for both standard and custom fields.</p>
<p><strong>How it works</strong></p>
<p>All matching fields still appear in one list while you are searching. When you clear the search, the dropdown returns to the standard sections for Standard Fields and Custom Fields.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a workflow trigger filter (for example: Contact Changed → Filters).</li>
<li>Search for a field in the Field dropdown.</li>
<li>Select the best match from the top of the results.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>This change reduces time spent scanning long lists and makes field selection faster and more predictable.</p>
<p><strong>Scope</strong></p>
<ul>
<li>Applies anywhere this field dropdown is used in the workflow builder.</li>
<li>Search results continue to appear under a single Search Result header.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1161', 'Reorder pipelines in the Opportunities pipeline view', 'You can now reorder your pipelines directly in the Opportunities pipeline view. You can drag and drop pipelines to change the order, or move a pipeline to a specific position from the Actions menu. The order stays the same after page refreshes. What’s new Drag and drop to reorder...', '<p>You can now reorder your pipelines directly in the Opportunities pipeline view. You can drag and drop pipelines to change the order, or move a pipeline to a specific position from the Actions menu. The order stays the same after page refreshes.</p>
<h2>What’s new</h2>
<ul>
<li>Drag and drop to reorder pipelines in the Opportunities pipeline view.</li>
<li>Use “Move to position” in the Actions menu to place a pipeline at an exact position, including moving a pipeline across pages.</li>
<li>The pipeline order is saved for the location and is consistent for all users.</li>
<li>Only admins can reorder pipelines in a location.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>Go to Opportunities → Pipelines.</li>
<li>Drag a pipeline by its handle to the position you want.</li>
<li>Or open the Actions menu on a pipeline and select “Move to position”.</li>
<li>The new order saves automatically.</li>
</ul>
<h2>Why this update</h2>
<p>Previously, the pipeline list order in Opportunities was fixed and couldn’t be changed from the user interface. This update makes it easier to prioritize the pipelines you use most.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1160', 'All Pipelines option in the pipeline dropdown', 'You can now select an All Pipelines option in the pipeline dropdown to view opportunities across every pipeline in one place. What’s new An All Pipelines option has been added to the pipeline dropdown. In List view, this shows opportunities from all pipelines in one unified list....', '<p>You can now select an <strong>All Pipelines</strong> option in the pipeline dropdown to view opportunities across every pipeline in one place.</p>
<h2>What’s new</h2>
<ul>
<li>An <strong>All Pipelines</strong> option has been added to the pipeline dropdown.</li>
<li>In <strong>List</strong> view, this shows opportunities from all pipelines in one unified list.</li>
<li>The option is available only in <strong>List</strong> view and is disabled in <strong>Kanban (Board)</strong> view.</li>
<li>Smartlists saved from the All Pipelines view are <strong>List</strong> type only; Kanban board Smartlists are not supported for this view.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>Opportunities</strong>.</li>
<li>Switch to <strong>List</strong> view.</li>
<li>Open the <strong>Pipeline</strong> dropdown and select <strong>All Pipelines</strong>.</li>
<li>Browse opportunities across all pipelines in one place.</li>
<li>If needed, save the view as a Smartlist (List type only).</li>
</ol>
<p><strong>Note:</strong> The All Pipelines option is disabled in Kanban view. Switch to List view to enable it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1159', 'Blogs: Updated author layout', 'Blogs now support a new author layout that highlights author information in a modern, professional format so readers can better connect with the person behind the content. What’s new Choose between two author layouts Select the author experience that best fits your brand: Modern ...', '<p>Blogs now support a new author layout that highlights author information in a modern, professional format so readers can better connect with the person behind the content.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Choose between two author layouts</strong>
<p>Select the author experience that best fits your brand:</p>
<p><strong>Modern preview (new)</strong></p>
<ul>
<li>Card-based design</li>
<li>Clearer visual hierarchy</li>
<li>Designed to improve reader engagement</li>
<li>Default layout for newly created blog posts</li>
</ul>
<p><strong>Classic preview</strong></p>
<ul>
<li>The existing author layout</li>
<li>Available if you prefer the current experience</li>
</ul>
</li>
<li><strong>Enhanced author profiles</strong>
<p>Author details are presented in a more structured format, including:</p>
<ul>
<li>Profile image</li>
<li>Author name</li>
<li>Designation or role</li>
<li>Author bio</li>
<li>Social media links</li>
<li>Email address</li>
</ul>
<p>This helps readers quickly understand the author’s background and expertise.</p>
</li>
<li><strong>Expandable “Read More” for long bios</strong>
<p>Long author bios are condensed by default. Readers can select Read More to expand the full description without disrupting the blog layout.</p>
</li>
<li><strong>Responsive on all devices</strong>
<p>The author section is optimized for desktop, tablet, and mobile.</p>
</li>
</ol>
<h3>How to use</h3>
<ul>
<li>Go to <strong>Sites → Blogs</strong></li>
<li>Open <strong>Blog Post Settings</strong></li>
<li>Select your preferred <strong>Author Layout</strong></li>
<li>Configure author details, social links, and email information</li>
<li>Publish your blog</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Build trust and credibility with clearer author branding</li>
<li>Increase engagement with richer author profiles</li>
<li>Create a more professional blog reading experience</li>
<li>Highlight expertise and thought leadership more effectively</li>
</ul>
<h3>Notes</h3>
<ul>
<li>The Modern Author Layout is the default for newly created blog posts.</li>
<li>Existing blogs will continue using their current layout unless you update them manually.</li>
<li>Dedicated author profile pages are not included in this release.</li>
<li>Multiple authors per blog post are not currently supported.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1158', 'Meta Pixel update: improved legacy event suppression', 'Overview: This update makes Meta Pixel tracking more reliable for accounts migrating to the new Events tab. Legacy event suppression now works at the individual event level instead of acting like an all-or-nothing switch. This helps prevent newly configured events from unintentio...', '<p>Overview:</p>
<p>This update makes Meta Pixel tracking more reliable for accounts migrating to the new Events tab. Legacy event suppression now works at the individual event level instead of acting like an all-or-nothing switch. This helps prevent newly configured events from unintentionally disabling tracking elsewhere. External_id coverage has also been expanded, along with several reliability improvements.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Event-level suppression:</strong> Legacy events are now suppressed only when their direct replacement has been configured, rather than when the Events tab is enabled globally.</li>
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
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1154', 'Add to Cart from Product Lists and Featured Products', 'Update: Store owners can enable an Add to Cart action directly on the Product List page and the Featured Products element. This lets customers add items to their cart without opening the full Product Details page. What changed Add to Cart toggle: A setting is available to enable ...', '<p><strong>Update:</strong> Store owners can enable an Add to Cart action directly on the Product List page and the Featured Products element. This lets customers add items to their cart without opening the full Product Details page.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Add to Cart toggle:</strong> A setting is available to enable or disable Add to Cart on Product List and Featured Products.</li>
<li><strong>Product card button behavior:</strong>
<ul>
<li>Products with a single variant or a single price show an <strong>Add to Cart</strong> button on the product card.</li>
<li>Products with multiple variants or multiple prices show <strong>Choose Options</strong>. Customers can pick variants and quantity in a modal, then use Add to Cart or Buy Now.</li>
<li>A <strong>View Full Details</strong> link is available in the modal.</li>
</ul>
</li>
<li><strong>Modal matches your Product Details page:</strong> Product Details page settings and styling are reflected in the Add to Cart modal for a consistent experience.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open Store Builder.</li>
<li>Select the Product List element or the Featured Products element.</li>
<li>Enable the Add to Cart option in the settings panel.</li>
<li>Adjust Product Details page settings as needed (they will be reflected in the modal).</li>
<li>Save and publish.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Add to Cart shows for single-variant/single-price products. Choose Options shows for products with multiple variants or prices.</li>
<li>Variant selections in the modal reset after you close and reopen it.</li>
<li>If all variants are out of stock, buttons are hidden, but the product card remains visible.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1153', 'Transfer calls to any teammate device (Labs)', 'June 10, 2026 You can now transfer calls to teammates even if they do not have a personal phone number. How to use this Place or receive a call in the web app. Select Warm transfer or Blind transfer . Choose the teammate to transfer the call to. You will see which device types th...', '<p><strong>June 10, 2026</strong></p>
<p>You can now transfer calls to teammates even if they do not have a personal phone number.</p>
<hr>
<p><strong>How to use this</strong></p>
<ol>
<li>Place or receive a call in the web app.</li>
<li>Select <strong>Warm transfer</strong> or <strong>Blind transfer</strong>.</li>
<li>Choose the teammate to transfer the call to. You will see which device types they can receive the call on.</li>
<li>Click <strong>Hold &amp; Call</strong>.</li>
<li>The receiving teammate will see that the call is a transfer (when answering in the web app).</li>
<li>They answer the call.</li>
<li>Complete the transfer as usual.</li>
</ol>
<hr>
<p><strong>Key points</strong></p>
<ul>
<li>Works for warm and blind transfers.</li>
<li>Works for outbound and inbound calls.</li>
<li>Mobile apps as a transfer destination are planned in the next few weeks.</li>
<li>Subsequent call transfers are not supported yet.</li>
<li>Transfers ring every device set under “Forward calls to” at the same time (Web App, Phone, and SIP desk phone).</li>
</ul>
<hr>
<p><strong>Enable this in Labs</strong></p>
<ol>
<li>Go to <strong>Agency Settings</strong> → <strong>Labs</strong> → <strong>Sub-Account</strong>.</li>
<li>Find “Transfer calls to any teammate device” and set it to <strong>Active Feature</strong>.</li>
<li>Enable access for the sub-accounts you want.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1172', 'Blog Post AI now supports Brand Boards', 'Blog Post AI can now use your existing Brand Voice and Design Kits while generating blog posts. This helps the generated content match your brand from the start, reducing the need for rewrites or formatting changes after generation. What’s new Apply Brand Voice to AI blog generat...', '<p>Blog Post AI can now use your existing Brand Voice and Design Kits while generating blog posts. This helps the generated content match your brand from the start, reducing the need for rewrites or formatting changes after generation.</p>
<p><strong>What’s new</strong></p>
<ol>
<li value="1">Apply Brand Voice to AI blog generation</li>
</ol>
<p>When you generate a blog post with AI, you can select an existing Brand Voice. Blog Post AI will use your guidelines to:</p>
<ul>
<li>Match your preferred tone and writing style</li>
<li>Maintain consistent messaging</li>
<li>Reflect your brand personality throughout the content</li>
</ul>
<ol>
<li value="2">Apply Design Kits to blog posts</li>
</ol>
<p>You can also select a Design Kit in the Blog Post AI workflow. This helps keep your blog content aligned with your:</p>
<ul>
<li>Visual identity</li>
<li>Content structure preferences</li>
<li>Brand presentation standards</li>
</ul>
<ol>
<li value="3">Create brand assets in the same workflow</li>
</ol>
<p>If you do not have a Brand Voice or Design Kit yet, you can create them directly from the Blog Post AI experience without leaving the page.</p>
<p><strong>How to use this feature</strong></p>
<ul>
<li>Go to Sites → Blogs → Create with AI</li>
<li>Enable Apply Brand Boards</li>
<li>Select a Brand Voice</li>
<li>Select a Design Kit</li>
<li>Generate your blog using Assist Mode or Build Mode</li>
<li>Review and publish</li>
</ul>
<p>Note: If Blog Post AI is not enabled in your account, you can enable it from Beta.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Generate content that matches your brand</li>
<li>Maintain consistency across AI-generated blogs</li>
<li>Reduce time spent editing AI output</li>
<li>Create a cohesive content and design experience</li>
<li>Scale content production while maintaining brand identity</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Brand Voice and Design Kit selection is optional during blog generation</li>
<li>New brand assets can be created directly from the blog creation workflow</li>
<li>Works across both Assist Mode and Build Mode</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:35.000Z'),
('wp-1193', 'Recover expired domains inside Leadli', 'What’s new You can now recover expired domains directly inside Leadli during the 41–70 day redemption window without contacting support. The renewal prompt remains available through day 40. During days 41–70, a dedicated recovery flow calculates fees, takes payment, and completes...', '<h2>What’s new</h2>
<p>You can now recover expired domains directly inside Leadli during the 41–70 day redemption window without contacting support.</p>
<p>The renewal prompt remains available through day 40. During days 41–70, a dedicated recovery flow calculates fees, takes payment, and completes recovery in one place.</p>
<h2>How it works</h2>
<ul>
<li>In Domain Settings, select <strong>Recover</strong> for an expired domain. The system checks status in real time and routes you to the correct flow.</li>
<li><strong>Days 1–40 (grace period)</strong>: You’ll see the standard renewal prompt and pay the normal renewal fee. The renewal window has been extended from 28 days to 40 days.</li>
<li><strong>Days 41–70 (redemption period)</strong>: You’ll see a recovery prompt that includes both the renewal fee and the registry redemption fee. Payment and recovery happen in-product.</li>
<li><strong>If the zone is inactive</strong>: You’ll be shown a prompt to contact support.</li>
<li><strong>After day 70</strong>: If the domain has passed day 70 or the zone has been deleted, recovery is no longer available in-product and the domain is moved to External.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Reduces support tickets for domain recovery</li>
<li>Provides a clear self-serve recovery path during the redemption window</li>
<li>Helps prevent churn by making recovery easier at a critical point</li>
<li>Keeps domain lifecycle management inside the product</li>
</ul>
<h2>Important notes</h2>
<ul>
<li>The renewal grace period has been extended from 28 days to 40 days</li>
<li>All expiry logic runs on UTC</li>
<li>Redemption fees are charged at the fixed registry rate with no Leadli or agency markup</li>
<li>Auto-recharge is disabled during recovery to prevent partial payment issues</li>
<li>Some TLDs (including .co and .uk) may still require support help if the zone has already been deleted</li>
<li>No setup is required; the correct recovery flow appears automatically based on the domain’s current status</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1192', 'New templates are now available in Leadli', 'New templates are now available to help you build websites, funnels, and email campaigns more quickly. They are fully customizable and designed to save time while keeping your marketing assets consistent. What’s new Website templates (2) : Finance (1) Email templates (1) : Legal ...', '<p>New templates are now available to help you build websites, funnels, and email campaigns more quickly. They are fully customizable and designed to save time while keeping your marketing assets consistent.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Website templates (2)</strong>: Finance (1)</li>
<li><strong>Email templates (1)</strong>: Legal (1)</li>
<li><strong>Social templates (8)</strong>: Creative (2), Beauty &amp; Fashion (2), Travel &amp; Hospitality (2), Real Estate (2)</li>
<li><strong>Facebook ad templates (2)</strong>: Business Coaching &amp; Consulting – IT Advising; Automotive – Car Rental</li>
<li><strong>Google ad templates (5)</strong>: Home Services – Bathroom Renovation; Health &amp; Wellness – Fitness Center; Finance – Financial Recordkeeper; Creative – Disc Jockey; Business Coaching &amp; Consulting – Personal Development Coach</li>
<li><strong>LinkedIn ad templates (5)</strong>: Creative – Web Designer; Insurance – Auto Insurance Agency; Marketing Agency – Marketing Agency; Business Coaching &amp; Consulting – Business Coach; Finance – Tax Specialist</li>
<li><strong>Workflow templates</strong>: Internal Operations – Lead Score Follow-Up with Asana; Content &amp; Engagement – Instagram Comment to Asana; Internal Operations – Asana Task Slack Alert; Internal Operations – Channel Message to ClickUp Task; Internal Operations – Form to ClickUp Task; Internal Operations – Create Google Contact; Workflow AI – Google Form Email Automation; Sales &amp; Appointments – Notion Opportunity Sync</li>
<li><strong>Snapshot (1)</strong>: Medical – Family Practice Physician</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1188', 'Courses experience improvements', 'Overview We’re introducing three updates to improve the Courses experience in Leadli: a faster way to view member progress from Contacts, better navigation after signing in from shared course and lesson links, and more flexible drip scheduling with hourly release options. These u...', '<h2>Overview</h2>
<p>We’re introducing three updates to improve the Courses experience in Leadli: a faster way to view member progress from Contacts, better navigation after signing in from shared course and lesson links, and more flexible drip scheduling with hourly release options.</p>
<p>These updates help course creators manage learners more efficiently and deliver content with better timing.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Course progress quick link in Contacts</strong>: You can now open Member Analytics for a specific contact directly from Contact Actions in the Client Portal → Offers.</li>
<li><strong>Improved post-login redirects for shared course and lesson links</strong>: If a learner opens a shared link while logged out, after signing in they’ll return to the exact course or lesson they intended to access (instead of the course library homepage).</li>
<li><strong>Drip scheduling now supports hours</strong>: Content can be set to unlock based on hours after enrollment or course access. You can choose an interval between 1 and 23 hours.</li>
</ul>
<h2>How to use</h2>
<h3>Course progress shortcut</h3>
<ol>
<li>Open a contact with an assigned offer.</li>
<li>Go to Contact Actions → Client Portal → Offers.</li>
<li>Select <strong>Course Progress</strong> to open Member Analytics for that contact.</li>
</ol>
<h3>Drip in hours</h3>
<ol>
<li>Open your course outline.</li>
<li>Select the lesson or module status option.</li>
<li>Choose <strong>Drip Hours</strong>.</li>
<li>Set an unlock interval between 1 and 23 hours.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Faster access to individual learner progress without extra navigation</li>
<li>A smoother learner experience by returning users to the right content after sign-in</li>
<li>More control over content timing for onboarding, coaching, and time-sensitive training</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1187', 'Google Ads widgets for dashboards (view ad performance in your workspace)', 'What’s new A dedicated Google Ads section is now available in the Dashboards widget panel. Connect your Google Ads account once at the sub-account level, and all 11 widgets pull data automatically. 11 ready-to-use widgets: Total conversions, Conversions over time, Total cost, Cos...', '<h2>What’s new</h2>
<ul>
<li>A dedicated Google Ads section is now available in the Dashboards widget panel. Connect your Google Ads account once at the sub-account level, and all 11 widgets pull data automatically.</li>
<li>11 ready-to-use widgets: Total conversions, Conversions over time, Total cost, Cost over time, Total clicks, Clicks over time, Total impressions, Impressions over time, Clicks by campaign, Conversions by campaign, and CPC (cost per click).</li>
<li>Each widget is configurable. You can filter by Campaign, Campaign type, Zero impressions, Zero conversions, or PPC markup to show the data your clients need.</li>
<li>Google Ads metrics are now available as dimensions in Custom Metrics, so you can build cross-module KPIs like ROAS or Cost per closed deal using the formula builder.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Connect Google Ads at the sub-account level under Settings → Integrations → Google Ads. All widgets inherit this connection automatically.</li>
<li>Open any dashboard and click Edit dashboard.</li>
<li>Click + Add widget and scroll to the Google Ads section.</li>
<li>Select a widget, confirm your linked ad account in the Integration tab, configure filters and chart type, and click Save changes.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>See Google Ads performance alongside your other reporting widgets, without logging into a separate platform.</li>
<li>Track spend clearly with Total cost and Cost over time.</li>
<li>Identify what’s working with Clicks by campaign and Conversions by campaign.</li>
<li>Connect ad spend to business outcomes by combining Google Ads data with pipeline and revenue data in Custom Metrics.</li>
</ul>
<h2>What’s next</h2>
<p>More cross-channel reporting that combines Google Ads with other marketing sources is on the roadmap.</p>
<h2>Notes</h2>
<ol>
<li>Google Ads must be connected at the sub-account level before widgets will show data (Settings → Integrations → Google Ads).</li>
<li>All 11 widgets support filtering by Campaign, Campaign type, Zero impressions, Zero conversions, and PPC markup.</li>
<li>Available in Dashboards, Reporting, and Custom Metrics.</li>
<li>Available on all plans that include Dashboards and Reporting.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1186', 'Xero sync: more control over which contacts sync', 'Sync only the contacts you want, and send them to the right place. Connecting Xero to Leadli now gives you control over which contacts sync in and where they are created. This helps prevent vendors and suppliers from cluttering your CRM. The problem Previously, when you connected...', '<p><em>Sync only the contacts you want, and send them to the right place.</em></p>
<p>Connecting Xero to Leadli now gives you control over which contacts sync in and where they are created. This helps prevent vendors and suppliers from cluttering your CRM.</p>
<p><strong>The problem</strong></p>
<p>Previously, when you connected Xero, every active contact synced automatically with no filtering. Vendors, suppliers, and other contacts you may not need could flood your Leadli contact list. Suppliers (people you pay) could also end up mixed in with customers and leads, making the CRM harder to trust and use.</p>
<p><strong>What’s new</strong></p>
<p>There are now two settings on your Xero connection screen that let you control your contact sync:</p>
<ul>
<li>Choose which contacts come into Leadli.</li>
<li>Choose how suppliers are handled: keep them with contacts, or separate them as business records.</li>
</ul>
<p>Your existing setup does not change unless you opt in.</p>
<p><strong>How this helps</strong></p>
<ul>
<li><strong>Keep your CRM clean</strong>: Sync only the contacts you need (customers, suppliers, specific groups, or all contacts).</li>
<li><strong>Separate suppliers from leads</strong>: Route suppliers to business records instead of mixing them into your contact list.</li>
<li><strong>Work with more reliable data</strong>: Cleaner records make segmentation and outreach easier.</li>
<li><strong>No disruption</strong>: Settings default to the previous behavior until you change them.</li>
</ul>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to Payments &gt; Invoices &amp; Estimates &gt; Accounting Sync.</li>
<li>Click <strong>Manage</strong> on your connected Xero account.</li>
<li>Set <strong>Which contacts to sync</strong>: All Contacts, Only Customers, Only Suppliers, or specific Xero contact groups.</li>
<li>Set <strong>How suppliers are handled</strong>: All to Contacts (default) or Split by type (routes suppliers to business records).</li>
<li>Save your preferences. Your next sync will use the new settings.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li>Available on web only.</li>
<li>Applies to Xero only; QuickBooks and Wave contact sync settings are not configurable yet.</li>
<li>Both settings default to the previous behavior until you opt in.</li>
<li>Split by type routes suppliers to business records, not the standard contact list.</li>
<li>Contact group filtering requires Xero contact groups to be set up in Xero first.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1185', 'Opportunity owners and followers can be used in If/Else conditions', 'Update You can now use Opportunity Owners and Opportunity Followers as conditions in If/Else workflow branches. This lets you route contacts based on whether an opportunity has assigned owners or followers. How it works When an If/Else step evaluates an opportunity, it can check ...', '<p><strong>Update</strong></p>
<p>You can now use Opportunity Owners and Opportunity Followers as conditions in If/Else workflow branches. This lets you route contacts based on whether an opportunity has assigned owners or followers.</p>
<p><strong>How it works</strong></p>
<p>When an If/Else step evaluates an opportunity, it can check the Opportunity Owners and Opportunity Followers fields. The workflow routes contacts down the branch that matches the condition you set.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add or edit an If/Else action in your workflow.</li>
<li>Select Opportunity Owners or Opportunity Followers as the condition field.</li>
<li>Configure your condition and save the workflow.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>Teams often assign owners and followers to opportunities as part of sales and account management. Workflows can now branch based on those assignments, making it easier to automate routing, notifications, and follow-up actions.</p>
<p><strong>Example</strong></p>
<ul>
<li>Route opportunities to a follow-up sequence when an Opportunity Owner has been assigned.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Available in If/Else workflow conditions.</li>
<li>Supports both Opportunity Owners and Opportunity Followers fields.</li>
<li>Conditions are evaluated using the owners and followers assigned to the opportunity when the workflow reaches the If/Else step.</li>
<li>Existing workflows are unchanged unless you add these conditions.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1184', 'Improved validation and error handling for Meta ad campaigns', 'What''s new We''ve improved the campaign publishing experience for Meta campaigns in Ad Manager by adding better validation and clearer error handling before a campaign is published. When users click Publish , Ad Manager now checks for key campaign setup issues and highlights error...', '<h2>What&#8217;s new</h2>
<p>We&#8217;ve improved the campaign publishing experience for <strong>Meta campaigns</strong> in Ad Manager by adding better validation and clearer error handling before a campaign is published.</p>
<p>When users click <strong>Publish</strong>, Ad Manager now checks for key campaign setup issues and highlights errors that must be fixed before the campaign can be submitted. This helps teams catch missing or incorrect details earlier and reduces failed publishes.</p>
<h2>How it works</h2>
<ul>
<li>When a user clicks <strong>Publish</strong>, a validation check runs before the campaign is submitted.</li>
<li>If required information is missing or incorrect, the user will see an error indicator in the campaign builder.</li>
<li>Clicking the error helps the user navigate to the relevant section or field that needs attention.</li>
<li>Errors are shown with clearer messages so users understand what needs to be fixed.</li>
<li>Campaigns with blocking errors will not be submitted until the issues are resolved.</li>
<li>A publishing progress modal is shown while the campaign setup is being processed.</li>
<li>Users can continue publishing in the background while the campaign is being processed.</li>
<li>Success and failure messages have been improved to clearly communicate the final publishing status.</li>
</ul>
<h2>Why it matters</h2>
<p>This update helps users avoid failed campaign submissions by catching important setup issues before the campaign is sent for review. It makes the publishing flow more reliable by:</p>
<ul>
<li>Helping users fix errors before publishing</li>
<li>Reducing confusion around failed or incomplete campaign setup</li>
<li>Making error messages easier to understand</li>
<li>Preventing campaigns from moving forward with missing or invalid details</li>
<li>Improving confidence when publishing Meta campaigns</li>
</ul>
<h2>Notes</h2>
<ol>
<li>This enhancement is currently available for Meta campaigns only.</li>
<li>Google and LinkedIn campaign validation improvements are planned for a future release.</li>
<li>Users may still see platform-level review outcomes from Meta after successful submission, as Meta continues to review campaigns for policy compliance.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1183', 'Workflow Builder: Quick access sidebar toggle in Leadli', 'Summary Leadli now includes a sidebar toggle in the Workflow Builder. This lets you open the common Leadli navigation sidebar from inside a workflow so you can move to other areas of the platform without leaving the builder. How it works Use the toggle in the top-left corner of t...', '<p><strong>Summary</strong></p>
<p>Leadli now includes a sidebar toggle in the Workflow Builder. This lets you open the common Leadli navigation sidebar from inside a workflow so you can move to other areas of the platform without leaving the builder.</p>
<p><strong>How it works</strong></p>
<p>Use the toggle in the top-left corner of the Workflow Builder to show or hide the standard Leadli navigation sidebar. You can also use the keyboard shortcut Cmd+\ (Mac) or Ctrl+\ (Windows).</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open any workflow in the Workflow Builder.</li>
<li>Click the sidebar toggle in the top-left corner, or press Cmd+\ (Mac) / Ctrl+\ (Windows).</li>
<li>Use the sidebar to go to other Leadli products or pages.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>This reduces switching back and forth while building automations and keeps navigation consistent across Leadli.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>The sidebar can be shown or hidden at any time.</li>
<li>Keyboard shortcut: Cmd+\ (Mac) / Ctrl+\ (Windows).</li>
<li>This is a navigation improvement only and does not affect workflow execution.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1182', 'TikTok DM replies can now resume workflows', 'You can now use TikTok Interactive Messenger as the reply channel in the Wait → Until the contact replies workflow action. This lets a workflow pause and only continue after the contact replies through TikTok DM. How it works When a workflow reaches a Wait Until the Contact Repli...', '<p>You can now use TikTok Interactive Messenger as the reply channel in the <strong>Wait → Until the contact replies</strong> workflow action.</p>
<p>This lets a workflow pause and only continue after the contact replies through TikTok DM.</p>
<h3>How it works</h3>
<p>When a workflow reaches a <strong>Wait Until the Contact Replies</strong> step, select <strong>TikTok Interactive Messenger</strong> in the <strong>Reply to</strong> field. The workflow resumes after a valid TikTok DM reply is received.</p>
<h3>How to set it up</h3>
<ul>
<li>Add a <strong>Wait</strong> action to your workflow.</li>
<li>Select <strong>Until the contact replies</strong>.</li>
<li>Choose <strong>TikTok Interactive Messenger</strong> under <strong>Reply to</strong>.</li>
</ul>
<h3>Why this change was made</h3>
<p>Teams using TikTok for customer conversations can now build reply-based automation and follow-up sequences without switching channels.</p>
<h3>Example</h3>
<p>A fitness studio sends a TikTok DM inviting prospects to claim a free trial. The workflow waits for a reply through TikTok DM before sending the next message or assigning the lead to a team member.</p>
<h3>Notes</h3>
<ul>
<li>Available in the <strong>Wait → Until the contact replies</strong> workflow action.</li>
<li>Supports replies received through <strong>TikTok Interactive Messenger</strong>.</li>
<li>Workflows resume automatically after a valid TikTok DM reply is received.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1181', 'Housecall Pro: More workflow actions and triggers', 'Based on customer feedback, we added more actions and triggers for Housecall Pro. What’s new The Housecall Pro integration in workflows now covers the full field-service lifecycle. It includes nine triggers for jobs, estimates, leads, and customers, and fourteen actions for manag...', '<p>Based on customer feedback, we added more actions and triggers for Housecall Pro.</p>
<h2>What’s new</h2>
<p>The Housecall Pro integration in workflows now covers the full field-service lifecycle. It includes nine triggers for jobs, estimates, leads, and customers, and fourteen actions for managing customers, jobs, estimates, leads, and job appointments.</p>
<h2>How it works</h2>
<p>Triggers poll Housecall Pro on a schedule: creation events (Job created, Estimate created, Lead created, Customer created) run every 5 minutes, and schedule/finish/cancel events (Job scheduled, Job finished, Job canceled, Estimate scheduled, Estimate finished) run every 10 minutes.</p>
<p>Actions support customer and address management, job and job-appointment management, estimate creation and retrieval, and lead creation and retrieval. Authentication uses an API key, and you can target multiple accounts through the Connected Account dropdown.</p>
<h2>How to use it</h2>
<ul>
<li>In workflows, add a Housecall Pro trigger or action.</li>
<li>Click <strong>Connect your account</strong>. In the API Key connection modal, paste your Housecall Pro API key (Housecall Pro → My Apps → App Store → API Key Management → Generate API Key with Full Access).</li>
<li>For triggers: optionally add filters (customer, tag, employee, or any captured field), then use <strong>Find new records</strong> to capture a sample payload.</li>
<li>For actions: fill in the required fields (varies by action; most require a customer or object ID), then run <strong>Test Action</strong>.</li>
<li>Save and publish.</li>
</ul>
<h2>Example</h2>
<p>A homeowner submits a “Request a Quote” form. The workflow creates a Housecall Pro lead, notifies dispatch, and tags the CRM contact. When an estimate is booked, the Estimate scheduled trigger can send a reminder with the technician’s ETA. After the estimate is finished, the workflow can send a link to review and approve the quote. Once approved, the workflow can create a job and continue through scheduling, completion, and follow-up.</p>
<h2>Additional notes</h2>
<ul>
<li>Triggers (9): Job created (5 min), Job scheduled (10 min), Job finished (10 min), Job canceled (10 min), Estimate created (5 min), Estimate scheduled (10 min), Estimate finished (10 min), Lead created (5 min), Customer created (5 min).</li>
<li>Actions (14): Create new customer, Get customer details, Update a customer, Find customers, Get a customer address, Create a customer address, Create a job, Get job details, Create a job appointment, Update a job appointment, Create an estimate, Get an estimate, Create a lead, Get a lead.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1180', 'Calendly workflow actions and triggers', 'You can connect Calendly to Leadli Workflows so your automations can respond to scheduling events and manage Calendly meetings. What’s included Triggers (5) Invitee created (instant) Invitee canceled (instant) Invitee no show created (instant) New routing form submission (instant...', '<p>You can connect Calendly to Leadli Workflows so your automations can respond to scheduling events and manage Calendly meetings.</p>
<h2>What’s included</h2>
<p><strong>Triggers (5)</strong></p>
<ul>
<li>Invitee created (instant)</li>
<li>Invitee canceled (instant)</li>
<li>Invitee no show created (instant)</li>
<li>New routing form submission (instant)</li>
<li>Event cancelled (polled every 5 minutes for host-initiated cancellations)</li>
</ul>
<p><strong>Actions (9)</strong></p>
<ul>
<li>Create one-off meeting</li>
<li>Book meeting for invitee</li>
<li>Find event</li>
<li>Cancel an event</li>
<li>Mark invitee as no show</li>
<li>Create contact</li>
<li>Find contact</li>
<li>Update contact</li>
<li>Find user</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Most triggers run instantly using Calendly webhooks (invitee.created, invitee.canceled, invitee_no_show.created, routing_form_submission.created).</li>
<li>&quot;Event cancelled&quot; is checked on an interval because Calendly does not provide a native webhook for host-initiated cancellations.</li>
<li>Instant triggers support a Webhook Subscription Scope filter (User or Organization).</li>
<li>Authentication uses OAuth through an External Authentication Configuration step where each connected account is labeled with a name and email.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In Workflows, add a Calendly trigger or action.</li>
<li>Connect your Calendly account, provide a name and email, and complete the OAuth authorization.</li>
<li>Configure the trigger/action fields and test.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Example</h2>
<p>When a prospect books a discovery call through a rep’s Calendly link, the &quot;Invitee created&quot; trigger can find or create the matching contact, store booking details, and send a pre-call message. If the prospect cancels, &quot;Invitee canceled&quot; can start a follow-up sequence with a rescheduling option.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1179', 'Group contacts by source in dashboards and reports', 'Overview You can now group Contacts widgets by Source in your dashboards and reports. This lets you see how many contacts come from each source, and it matches the same Source grouping already available for Opportunities. How to use it Open a dashboard and add or edit a Contacts ...', '<h2>Overview</h2>
<p>You can now group Contacts widgets by <strong>Source</strong> in your dashboards and reports. This lets you see how many contacts come from each source, and it matches the same Source grouping already available for Opportunities.</p>
<h2>How to use it</h2>
<ol>
<li>Open a dashboard and add or edit a Contacts widget.</li>
<li>In the widget settings, open the <strong>Group By</strong> dropdown.</li>
<li>Select <strong>Source</strong> to group contacts by their source.</li>
</ol>
<h2>Why this helps</h2>
<ul>
<li>See which sources generate the most contacts.</li>
<li>Use the same grouping approach across Contacts and Opportunities.</li>
<li>Make better decisions about which channels to focus on.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1178', 'MMLite adoption banner in Conversations', 'Leadli now shows an MMLite adoption banner in Conversations for eligible WhatsApp subscribers. The banner appears above the message composer and prompts users to switch to the WhatsApp MMLite API version. What changed Eligible WhatsApp subscribers will see a banner in Conversatio...', '<p>Leadli now shows an MMLite adoption banner in Conversations for eligible WhatsApp subscribers. The banner appears above the message composer and prompts users to switch to the WhatsApp MMLite API version.</p>
<h2>What changed</h2>
<p>Eligible WhatsApp subscribers will see a banner in Conversations that links to the option to move to the MMLite API version.</p>
<p>This complements the existing banner on the WhatsApp Services page.</p>
<h2>Why this matters</h2>
<p>Switching to the MMLite API version can improve WhatsApp messaging performance and supports a more efficient messaging infrastructure.</p>
<h2>Availability</h2>
<p>The MMLite adoption banner is available in Conversations for eligible WhatsApp subscribers.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1177', 'Workflow Builder loads faster', 'Overview Workflow Builder now opens workflows faster from the Workflow list. In many cases, the first load is up to 4x faster, so you spend less time waiting. What changed The way Workflow Builder resources load and render has been optimized so workflows and builder components ar...', '<p><strong>Overview</strong></p>
<p>Workflow Builder now opens workflows faster from the Workflow list. In many cases, the first load is up to 4x faster, so you spend less time waiting.</p>
<p><strong>What changed</strong></p>
<p>The way Workflow Builder resources load and render has been optimized so workflows and builder components are available sooner. This improves responsiveness as soon as you open a workflow.</p>
<p><strong>Notes</strong></p>
<ul>
<li>The biggest improvement is usually on the first time a workflow is opened.</li>
<li>Load time can still vary based on workflow complexity, browser state, network conditions, and device performance.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1176', 'Smarter calendar sync for rentals', 'Overview We improved how imported calendars affect availability in Rentals. Some OTA platforms and external calendar providers sync availability as date-only bookings without specific start and end times. Previously, those imports were blocked from 12:00 AM to 12:00 AM by default...', '<h2>Overview</h2>
<p>We improved how imported calendars affect availability in Rentals.</p>
<p>Some OTA platforms and external calendar providers sync availability as date-only bookings without specific start and end times. Previously, those imports were blocked from 12:00 AM to 12:00 AM by default.</p>
<p>If you use pre-defined rental times (for example, a 3:00 PM start and an 11:00 AM end), the midnight-to-midnight block could make adjacent dates look unavailable when they should not be.</p>
<p>With this update, imported calendar bookings now follow your listing’s booking period configuration and your configured rental times. This results in more accurate availability across your booking page and calendar views.</p>
<h2>What’s new</h2>
<h3>Imported date-only events respect your rental times</h3>
<p>For applicable rental booking periods, imported bookings without specific times are now blocked using your configured rental times or rental hours (instead of generic midnight-to-midnight blocks).</p>
<p>This applies to:</p>
<ul>
<li>Date Selector mode</li>
<li>Fixed Durations mode (Daily/Weekly/Monthly)</li>
</ul>
<p><strong>Example:</strong> If your rental uses <strong>3:00 PM – 11:00 AM</strong> and an imported calendar blocks <strong>April 15 – April 17</strong>, Rentals will block availability from <strong>April 15, 3:00 PM</strong> to <strong>April 17, 11:00 AM</strong>.</p>
<h3>Timestamped bookings use exact times</h3>
<ul>
<li>If imported events include specific start and end times, those exact times are respected.</li>
<li>This helps partial-day and overnight events block only the intended time range.</li>
<li>For booking modes where customers select time, imports will continue to use exact timestamps when provided. If exact times are not provided, the block will remain for the full day.</li>
</ul>
<h3>Future imported events stay in sync</h3>
<ul>
<li>If you update booking modes or rental times, future and ongoing imported events are recalculated using the latest configuration.</li>
<li>Past events are not changed.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Edit a rental listing.</li>
<li>Connect an external calendar using Calendar Sync.</li>
<li>Configure your booking mode and rental times.</li>
<li>Imported bookings will be blocked using the appropriate logic for that listing.</li>
</ol>
<p>If you later change your booking mode or rental times, future imported events will automatically reflect the update.</p>
<h2>Why this matters</h2>
<ul>
<li>More accurate availability from connected calendars</li>
<li>Better compatibility with OTA platforms that sync date-only events</li>
<li>Prevents listings from being unintentionally blocked on neighboring dates</li>
<li>Clearer behavior for how synced calendars affect bookings</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1175', 'Media Library access in AI Studio', 'What’s new AI Studio now works with your Media Library. In Chat, Visual Edits, and Publish, you can browse and reuse images and other assets you already have. You can add reference images to guide the AI, insert asset links into prompts, replace an image while editing a page, and...', '<h2>What’s new</h2>
<p>AI Studio now works with your Media Library. In Chat, Visual Edits, and Publish, you can browse and reuse images and other assets you already have. You can add reference images to guide the AI, insert asset links into prompts, replace an image while editing a page, and set your site favicon and social images. You can also upload files directly from your device when needed.</p>
<p>Assets used in a project stay with that project, including remixed projects and projects loaded from snapshots.</p>
<h2>Why we added this</h2>
<p>Teams asked for a way to use existing Media Library assets and keep branding consistent without leaving AI Studio or re-uploading files. This update makes your saved assets available throughout the build process and helps keep visuals consistent across projects.</p>
<h2>Key capabilities</h2>
<ul>
<li>Use Media Library reference images in Chat to help the AI match your brand</li>
<li>Insert Media Library asset links (images, documents, video, or audio) directly into prompts</li>
<li>Replace images in Visual Edits using an asset from your Media Library</li>
<li>Choose Media Library files for favicon and social/OG images in Publish settings</li>
<li>Upload, paste, or drag-and-drop files when an asset is not already in your Media Library</li>
<li>Keep used assets attached to projects when remixed or loaded from a snapshot</li>
</ul>
<h2>How to use it</h2>
<ol>
<li><strong>Chat:</strong> Open the attach menu, choose Media Library, then add a reference image or insert a link.</li>
<li><strong>Visual Edits:</strong> Select an image element, then use the Media Library option next to the Image URL field to choose a replacement.</li>
<li><strong>Publish:</strong> In Publish settings, choose Media Library for favicon and social image fields, or upload from your device.</li>
</ol>
<h2>Good to know</h2>
<ul>
<li>You can still upload files directly from your device when needed</li>
<li>Media used in AI Studio stays with the project when it is remixed or loaded from a snapshot</li>
<li>This helps keep branding and assets consistent across builds</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1174', 'Enhanced affiliate commission splits', 'Leadli has updated affiliate commission splits to support more flexible and accurate attribution. What changed Three-way commission splits Commissions can now be automatically split across up to three promoters when multiple affiliates contribute to the same customer. Downgrade h...', '<p>Leadli has updated affiliate commission splits to support more flexible and accurate attribution.</p>
<p><strong>What changed</strong></p>
<p><strong>Three-way commission splits</strong><br />Commissions can now be automatically split across up to three promoters when multiple affiliates contribute to the same customer.</p>
<p><strong>Downgrade handling</strong><br />When a customer downgrades, commission splits are recalculated based on actual affiliate contribution so commissions reflect the customer’s current plan.</p>
<p>This update supports new leads and existing leads that do not already have commission splits.</p>
<p>A migration for existing records that need three-way splits is planned next.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1173', 'Delete published posts directly from Social Planner', 'You can now delete published posts directly from Social Planner. Where supported, you can also remove the post from the social network at the same time. What’s new Delete published posts from supported social networks Delete a published post from Social Planner, and choose whethe...', '<p>You can now delete published posts directly from Social Planner. Where supported, you can also remove the post from the social network at the same time.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Delete published posts from supported social networks</strong><br />Delete a published post from Social Planner, and choose whether to remove it only in Social Planner or also from the connected social platform (for example, Facebook or LinkedIn).</li>
<li><strong>Works across multiple platforms</strong><br />Native deletion is supported for Facebook, LinkedIn, Google Business Profile, YouTube, Pinterest, Threads, Bluesky, and Community. For platforms that don’t support third-party deletion (such as Instagram and TikTok), you can still remove the post from Social Planner while it remains live on the platform.</li>
<li><strong>Delete any post status</strong><br />The same delete flow works for draft, scheduled, and published posts.</li>
<li><strong>Reconnect flow if access expires</strong><br />If a connected social account expires or disconnects, you’ll be prompted to reconnect and then continue the deletion process.</li>
<li><strong>Consistent experience</strong><br />The delete workflow is available from both the Post List view and the Calendar view.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Find the post you want to delete.</li>
<li>Open the three-dot menu and select <strong>Delete</strong>.</li>
<li>(Optional) Enable deleting the post from the selected social platform.</li>
<li>Confirm deletion.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Native platform deletion depends on each platform’s API support.</li>
<li>Instagram and TikTok do not currently allow third-party post deletion.</li>
<li>Reconnect prompts appear automatically when account access expires.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1195', 'Retry and reschedule failed Social Planner posts', 'You can now retry or reschedule failed publishing attempts in Social Planner without cloning posts or rebuilding content. What’s new Retry a failed post Open the failed post and select Retry Now to try publishing again using the original content, settings, and connected accounts....', '<p>You can now retry or reschedule failed publishing attempts in Social Planner without cloning posts or rebuilding content.</p>
<h2>What’s new</h2>
<h3>Retry a failed post</h3>
<ul>
<li>Open the failed post and select <strong>Retry Now</strong> to try publishing again using the original content, settings, and connected accounts.</li>
<li>If the retry succeeds, the post moves to <strong>Published</strong> automatically.</li>
</ul>
<h3>Reschedule a failed post</h3>
<ul>
<li>Select <strong>Reschedule Post</strong> and choose a new date and time.</li>
<li>The post moves back to <strong>Scheduled</strong> and publishes at the updated time.</li>
</ul>
<h3>Quick recovery actions</h3>
<p>Failed posts include recovery actions directly in the post actions menu. You can access them from:</p>
<ul>
<li>List view</li>
<li>Grid view</li>
<li>Post preview</li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Go to <strong>Marketing → Social Planner</strong>.</li>
<li>Open the <strong>Failed Posts</strong> section.</li>
<li>Click the 3-dot menu on a failed post.</li>
<li>Choose <strong>Retry Now</strong> or <strong>Reschedule Post</strong>, then confirm.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Recover from publishing failures faster</li>
<li>Avoid cloning posts to fix temporary issues</li>
<li>Keep campaigns running with less disruption</li>
<li>Reduce support requests for common publishing problems</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This is available only for posts in the <strong>Failed</strong> state.</li>
<li>Bulk retry is not included in this release.</li>
<li>Automatic retries are not currently supported.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:27.000Z'),
('wp-1194', 'YouTube previews now display correctly in sent emails', 'YouTube previews now display correctly in sent emails. When you paste a YouTube link into an email from Conversations, recipients will see a clickable video thumbnail that opens the video in a new tab. In the past, some pasted YouTube links could appear as a blank rectangle in ce...', '<p>YouTube previews now display correctly in sent emails.</p>
<p>When you paste a YouTube link into an email from Conversations, recipients will see a clickable video thumbnail that opens the video in a new tab.</p>
<p>In the past, some pasted YouTube links could appear as a blank rectangle in certain inboxes, even when the preview looked correct while composing. This was caused by major email providers (such as Gmail, Outlook, and Yahoo) blocking embedded video players. This update changes how previews are sent so they display more reliably across major inboxes.</p>
<p>This works with both standard YouTube watch links and shortened YouTube share links. There is no change to how you add videos—paste the link as you normally do.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:27.000Z'),
('wp-1215', 'Faster contact management in the Leadli mobile app', 'Contacts in the Leadli mobile app are now faster to navigate, more consistent, and easier to manage. What’s updated Contact list: Updated header, search, smart list picker, swipe actions, and improved empty states. Contact card: A redesigned profile card that keeps the avatar, ow...', '<p>Contacts in the Leadli mobile app are now faster to navigate, more consistent, and easier to manage.</p>
<p><strong>What’s updated</strong></p>
<ul>
<li><strong>Contact list:</strong> Updated header, search, smart list picker, swipe actions, and improved empty states.</li>
<li><strong>Contact card:</strong> A redesigned profile card that keeps the avatar, owner, followers, and tags in one clear layout.</li>
<li><strong>Profile header:</strong> The Edit button is front and center, with a menu for Share, Do Not Disturb, and Delete.</li>
<li><strong>Details tab:</strong> Search within fields and folders, filters to show or hide empty fields, and inline editing.</li>
<li><strong>Folder structure:</strong> Expandable folders with tap-to-edit for any field, plus copy and map actions.</li>
<li><strong>Contact tabs:</strong> Activity, Tasks, Notes, Appointments, Payments, Docs &amp; Files, and Opportunities have been updated. Tasks and Opportunities now show counts on their tabs.</li>
<li><strong>Create and edit:</strong> Refreshed forms, tag editor, Do Not Disturb settings, automations, and profile photo options.</li>
<li><strong>List interactions:</strong> Swipe for Call, Message, Share, Delete, and More (copy name, email, phone, address, or all details).</li>
</ul>
<p><strong>How this helps</strong></p>
<ul>
<li>Edit is easier to find and use.</li>
<li>Quick actions from the contact list reduce extra taps.</li>
<li>Task and opportunity counts help you see what needs attention.</li>
<li>Searching and filtering makes it faster to find the right fields.</li>
<li>Copying and mapping information is more direct.</li>
<li>Expandable folders make custom fields easier to work with while you stay in context.</li>
<li>Profile photos can be added, updated, or removed from the camera or gallery.</li>
<li>The list, profile, edit flows, and tabs use a consistent design.</li>
</ul>
<p><strong>How to get started</strong></p>
<p>Open Contacts, browse or search, swipe left for quick actions, and tap a contact to view the profile. Use the Edit button in the header. Under Details, tap any field to edit inline. Use the menu for additional options, and refine what you see with search and filters.</p>
<p><strong>What’s next</strong></p>
<p>Contact customization settings from the web app will be supported on mobile so field visibility, ordering, and shown tabs stay consistent.</p>
<p><strong>Availability</strong></p>
<p>This update is available now on iOS and Android.</p>
<p><strong>Rollout details</strong></p>
<ul>
<li><strong>Available version:</strong> 4.19.1 (build 833)</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Leadli:</strong> Yes</li>
<li><strong>LeadConnector:</strong> Yes</li>
<li><strong>White-label app:</strong> Yes</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1214', 'Workflow trigger for file uploads in the Client Portal', 'Overview Leadli now includes a workflow trigger called Client Portal File Uploaded . It lets you start a workflow automatically when a contact uploads a document in the Client Portal Shared Documents area. What’s included New workflow trigger: Client Portal File Uploaded Automati...', '<p><strong>Overview</strong></p>
<p>Leadli now includes a workflow trigger called <strong>Client Portal File Uploaded</strong>. It lets you start a workflow automatically when a contact uploads a document in the Client Portal Shared Documents area.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>New workflow trigger: Client Portal File Uploaded</strong></li>
<li>Automatically starts workflows when a contact uploads a file to Shared Documents in the Client Portal</li>
</ul>
<p><strong>How to set it up</strong></p>
<ul>
<li>Go to <strong>Automation → Workflows</strong>.</li>
<li>Create a new workflow or open an existing one.</li>
<li>Add the trigger <strong>Client Portal File Uploaded</strong>.</li>
<li>Configure the actions you want to run.</li>
<li>Publish the workflow.</li>
</ul>
<p><strong>How to share a file with a client in the Client Portal</strong></p>
<ul>
<li>Open the contact record.</li>
<li>Select the <strong>Files</strong> option from the right-side panel.</li>
<li>Upload a file.</li>
<li>Select <strong>Upload to Client Portal</strong>.</li>
<li>Save the file.</li>
<li>The file will be available to the contact in their Client Portal.</li>
</ul>
<p><strong>How a client uploads a file</strong></p>
<ul>
<li>Log in to the Client Portal.</li>
<li>Open <strong>Shared Documents</strong>.</li>
<li>Select <strong>Share File</strong>.</li>
<li>Upload one or more files (up to 10 at a time).</li>
<li>Submit the files.</li>
</ul>
<p><strong>Notes</strong></p>
<p>Multiple file types are supported. When a file is uploaded, the workflow trigger runs automatically. This helps reduce manual monitoring and keeps document-based processes moving.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1213', 'Multiple download formats for certificates and badges', 'You can now download certificates and badges in the format that best fits your needs. What’s new PDF for professional printing and high-quality documents PNG for high-quality images with transparency JPG for sharing via email and on websites Available for both certificates and ba...', '<p>You can now download certificates and badges in the format that best fits your needs.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>PDF for professional printing and high-quality documents</li>
<li>PNG for high-quality images with transparency</li>
<li>JPG for sharing via email and on websites</li>
</ul>
<p><strong>Available for both certificates and badges</strong></p>
<p>Download options are now supported across both credential types for a consistent experience.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Print certificates in a professional format</li>
<li>Share credentials more easily across different platforms</li>
<li>Choose the format that best suits your workflow</li>
<li>Give creators and learners more flexibility when using credentials</li>
</ul>
<p>More improvements to the credential experience are planned.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1212', 'New templates are now available in Leadli', 'We have released new templates to help you build websites, funnels, forms, ads, and social content more quickly. These templates are customizable and designed to keep your workflow simple and consistent. What’s included in this release Website templates: 1 new template (Medical) ...', '<p>We have released new templates to help you build websites, funnels, forms, ads, and social content more quickly. These templates are customizable and designed to keep your workflow simple and consistent.</p>
<h3>What’s included in this release</h3>
<ul>
<li><strong>Website templates:</strong> 1 new template (Medical)</li>
<li><strong>Form templates:</strong> 1 new template (Home Services)</li>
<li><strong>Social templates:</strong> 8 new templates (Home Services: 2, Financial: 2, Health &amp; Wellness: 2, Business Coaching and Consulting: 2)</li>
<li><strong>Facebook ad templates:</strong> 2 new templates (Steak Restaurant; Bed &amp; Breakfast)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Feed the Hungry Charity; In-Home Health Care; Visual Advertising Agency; Real Estate Law; International Travel Insurance)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (SaaS Company; Real Estate Agent; Property Management; CRM Software; IT Advising)</li>
<li><strong>Snapshot:</strong> 1 new snapshot (Phone Repair Shop)</li>
</ul>
<p>These updates are now available in Leadli.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1211', 'White-label desktop app download banner', 'This update adds a download banner for your white-label desktop app inside each sub-account. Once your app is published, sub-account users can download it in a few clicks without needing shared links or manual hand-offs. How it works Agency-controlled promotion: Turn the Promote ...', '<p>This update adds a download banner for your white-label desktop app inside each sub-account. Once your app is published, sub-account users can download it in a few clicks without needing shared links or manual hand-offs.</p>
<h3>How it works</h3>
<ul>
<li><strong>Agency-controlled promotion:</strong> Turn the Promote toggle on in the Desktop App Customizer. The banner only appears when the app is in a published state.</li>
<li><strong>OS-aware downloads:</strong> The banner highlights the correct download for the user’s operating system (macOS, Windows, or Linux), with the other platforms available as additional options.</li>
<li><strong>Always current:</strong> Download links point to the latest published build.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Go to the Agency Dashboard.</li>
<li>Open the Desktop App tab.</li>
<li>Build your app and publish it.</li>
<li>Turn the Promote toggle on.</li>
<li>Sub-accounts will see the download banner and can download the app for their OS.</li>
</ol>
<h3>Planned improvements</h3>
<ul>
<li>Multi-tab and multi-window support</li>
<li>App Store and Microsoft Store listings</li>
<li>Performance improvements</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1210', 'Password compliance notifications', 'Overview As part of the ongoing password compliance initiative, Leadli is rolling out platform notifications for users whose passwords do not meet the updated security requirements. What’s included Persistent notification banner: A banner will appear across the platform for affec...', '<p><strong>Overview</strong></p>
<p>As part of the ongoing password compliance initiative, Leadli is rolling out platform notifications for users whose passwords do not meet the updated security requirements.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Persistent notification banner:</strong> A banner will appear across the platform for affected users and will prompt them to update their password before September 9, 2026. Selecting the <em>Update password</em> call-to-action takes the user to the My Profile page to complete the update.</li>
<li><strong>Inline notice on My Profile:</strong> A notice on the My Profile page will remind affected users to update their password based on the updated guidelines. This notice will remain visible until September 9, 2026 for non-compliant users.</li>
</ul>
<p><strong>Note:</strong> Users who have already updated their password will not see these notifications.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1209', 'Password compliance enforcement', 'We are rolling out stronger password security standards in Leadli to improve account security and meet updated requirements. What''s changing Password complexity checks are now enforced across key sign-in and account update areas. Passwords must include: At least 12 characters At ...', '<p>We are rolling out stronger password security standards in Leadli to improve account security and meet updated requirements.</p>
<p><strong>What&#8217;s changing</strong></p>
<p>Password complexity checks are now enforced across key sign-in and account update areas. Passwords must include:</p>
<ul>
<li>At least 12 characters</li>
<li>At least one uppercase letter (A-Z), one lowercase letter (a-z), one number (0-9), and one special character (for example: !, @, #, $)</li>
</ul>
<p><strong>Where this applies</strong></p>
<ul>
<li>Signup and account activation</li>
<li>Password reset and forgot password</li>
<li>Profile updates</li>
<li>Editing user information</li>
</ul>
<p><strong>Effective date</strong></p>
<p>Starting June 4, 2026, this applies to all new users and to existing users when they change their password.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1208', 'Sub-account billing: A clearer invoice list', 'We updated the invoice list in sub-account billing to make charges easier to understand at a glance. What changed See what you were charged for The Products column now shows product names instead of invoice codes. If an invoice includes multiple items, it shows the first product ...', '<p>We updated the invoice list in sub-account billing to make charges easier to understand at a glance.</p>
<h3>What changed</h3>
<ol>
<li><strong>See what you were charged for</strong><br />The Products column now shows product names instead of invoice codes. If an invoice includes multiple items, it shows the first product name and the number of additional items. You can hover to see the full list.</li>
<li><strong>A cleaner invoice table</strong><br />The Invoice ID column was removed. A Transaction ID is now shown (shortened for readability) and includes a one-click copy option to copy the full ID.</li>
<li><strong>Review invoices without automatically downloading</strong><br />Selecting “View” now opens an invoice details panel instead of immediately downloading a PDF. From the panel you can review the amount, payment method, status, and line items, then choose to view in Stripe or download the invoice.</li>
<li><strong>Clearer labels for external charges</strong><br />Invoices and products that come from outside the Leadli platform are labeled “External” so it’s easier to distinguish platform charges from third-party charges.</li>
</ol>
<h3>Why this matters</h3>
<p>These updates reduce guesswork when reviewing billing history. You can identify charges faster, review invoices without unintended downloads, and see where each charge originates.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1207', 'Payment links: customize the checkout button text', 'You can now customize the label on your payment link checkout button. Choose a standard option or enter a custom label that matches your brand and offer. No code is required. The problem The checkout button is one of the last steps before a customer completes a purchase. Generic ...', '<p>You can now customize the label on your payment link checkout button. Choose a standard option or enter a custom label that matches your brand and offer. No code is required.</p>
<h3>The problem</h3>
<p>The checkout button is one of the last steps before a customer completes a purchase. Generic button labels may not match your offer, which can create hesitation and reduce conversions.</p>
<h3>What’s new</h3>
<p>The payment link builder now includes a custom button text field under Advanced Options. You can select a default label or type your own (up to 50 characters). The preview updates immediately so you can confirm how it will look before publishing.</p>
<h3>Why it matters</h3>
<ul>
<li><strong>Improve conversion</strong>: Use a call to action that matches what the customer is buying.</li>
<li><strong>Stay consistent</strong>: Keep the button text aligned with your messaging.</li>
<li><strong>Move faster</strong>: Update the button label in seconds without workarounds.</li>
<li><strong>Works for many offers</strong>: Useful for courses, events, services, memberships, donations, and more.</li>
</ul>
<h3>How to set it up</h3>
<ol>
<li>Open the Payment Link builder (Payments → Payment Links) and create a new link or edit an existing one.</li>
<li>Go to Advanced Options and find the setting for the payment link button call to action.</li>
<li>Select a default option or enter a custom label (up to 50 characters).</li>
<li>Review the live preview and save your changes.</li>
</ol>
<h3>Good to know</h3>
<ul>
<li>Custom button text is available on all payment link types.</li>
<li>Maximum length is 50 characters.</li>
<li>The button text shows on all devices.</li>
<li>Changes apply to new sessions. Anyone already on the checkout page may need to refresh to see the updated label.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1206', 'Inbound call routing based on working hours', 'Release date: June 25, 2026 What’s new You can choose to receive inbound calls only during your working hours. Turn on "Only ring during working hours" in your profile, select the schedule that defines your availability, and inbound calls that arrive outside those hours will auto...', '<p><strong>Release date:</strong> June 25, 2026</p>
<p><strong>What’s new</strong></p>
<p>You can choose to receive inbound calls only during your working hours. Turn on &#8220;Only ring during working hours&#8221; in your profile, select the schedule that defines your availability, and inbound calls that arrive outside those hours will automatically skip you and go to the phone number’s existing backup.</p>
<p>The setting is off by default, so nothing changes until you turn it on. During your working hours, calls will ring as they do today.</p>
<p><strong>Where to find it</strong></p>
<ul>
<li>Settings &gt; My Profile, in the &#8220;Inbound call routing&#8221; section.</li>
<li>Admins can also manage this for team members under Settings &gt; My Staff &gt; Edit &gt; User Availability.</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li><strong>Direct calls:</strong> If you are assigned and outside your hours, the call skips you and goes to the number’s backup.</li>
<li><strong>Ring all:</strong> Teammates outside their hours are skipped. Anyone still within hours rings as normal. If everyone is outside hours, the call goes to the number’s backup.</li>
<li><strong>Call menu (IVR):</strong> If a connect step is set up to ring you and you are outside your hours, you are skipped while other people and numbers on that step still ring. If you were the only target, that step connects no one and the workflow continues on its normal &#8220;not connected&#8221; path.</li>
<li><strong>Forwarding numbers:</strong> If your phone is set as the phone number’s forwarding number or business number, it is also skipped when you are outside your hours so the call still goes to the backup.</li>
</ul>
<p><strong>Holidays and days off</strong></p>
<p>The schedule supports date-specific hours that override your normal weekly hours for a single date. Add a date-specific day with no hours to stop inbound calls for a holiday or day off without changing your regular weekly schedule.</p>
<p><strong>Admin controls</strong></p>
<p>This setting is tied to the &#8220;Manage calendars&#8221; permission. If you do not want staff members to change their own call availability, remove that permission from their role under Settings &gt; My Staff &gt; Roles and Permissions. When the permission is off, the &#8220;Inbound call routing&#8221; section cannot be used and changes are blocked.</p>
<p><strong>Known limitations</strong></p>
<ul>
<li>Transfers are not included yet. This release applies to inbound calls to assigned users, ring all, and call menu (IVR) steps. Transferred calls are planned for a future update.</li>
<li>There are no per-user backup options yet. Calls outside your hours follow the phone number’s existing backup.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1205', 'Python is now available in the Custom Code action', 'What’s new You can now use Python in the Custom Code action. Select Python from the language dropdown to run your custom code. This expands what you can automate with Leadli Custom Code.', '<p><strong>What’s new</strong></p>
<p>You can now use Python in the Custom Code action. Select Python from the language dropdown to run your custom code.</p>
<p>This expands what you can automate with Leadli Custom Code.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1204', 'Ask AI Artifacts: Interactive AI Responses in the Leadli Mobile App', 'Ask AI V2 updates the Leadli mobile AI assistant so you can get clear answers and take action from your phone, not only from a computer. Responses support multiple interactive formats, your history is searchable, and answers can stream in live. The problem Many people run their b...', '<p>Ask AI V2 updates the Leadli mobile AI assistant so you can get clear answers and take action from your phone, not only from a computer. Responses support multiple interactive formats, your history is searchable, and answers can stream in live.</p>
<p><strong>The problem</strong></p>
<p>Many people run their business away from a desk. Previously, the mobile AI experience was limited to plain text, with no easy way to revisit past conversations and no built-in actions to complete tasks while you were mobile.</p>
<p><strong>What’s new</strong></p>
<p>Ask AI V2 brings a more complete AI experience to the Leadli mobile app. Interactive response formats (such as charts, tables, code blocks, and guided workflows) render directly on mobile and respond to touch. Answers can stream in real time, and your conversation history is searchable.</p>
<p><strong>How this helps</strong></p>
<ul>
<li>Make decisions faster with interactive charts and tables on mobile.</li>
<li>Complete structured tasks using approval steps and guided questions.</li>
<li>Return to prior conversations quickly with searchable history.</li>
<li>Follow responses as they arrive with real-time streaming.</li>
</ul>
<p><strong>How to get started</strong></p>
<ol>
<li>Open Ask AI in the Leadli mobile app.</li>
<li>Type your question.</li>
<li>Use the interactive responses (tap charts, copy code, follow a guided flow, or review sources when available).</li>
</ol>
<p><strong>What’s next</strong></p>
<p>More response formats and richer mobile interactions are planned. A preview pipeline for additional formats is already in place and can be enabled through a backend toggle without an app update.</p>
<p><strong>Rollout and availability</strong></p>
<ul>
<li>Release date: June 18, 2026</li>
<li>Available version: 4.18.1 (build 833)</li>
<li>Status: Public</li>
<li>Platforms: iOS and Android</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Dark mode is supported across response formats and matches your device theme.</li>
<li>Model selection is available (Claude Sonnet 4.6 by Anthropic).</li>
<li>The preview pipeline ships inactive and can be enabled via backend toggle.</li>
</ul>
<p><strong>Feedback</strong></p>
<p>If you have feedback, you can contact the product team here: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1203', 'Improved notification access and clearer tooltips in forms, surveys, and quizzes', 'Summary Notifications in Forms, Surveys, and Quizzes are now easier to find. They have moved from an icon in the builder to a dedicated Notifications tab. Tooltips in the builder have also been updated with clearer descriptions, more context, and links to related help articles, s...', '<p><strong>Summary</strong></p>
<p>Notifications in Forms, Surveys, and Quizzes are now easier to find. They have moved from an icon in the builder to a dedicated <strong>Notifications</strong> tab.</p>
<p>Tooltips in the builder have also been updated with clearer descriptions, more context, and links to related help articles, so users can understand settings without leaving the builder.</p>
<p><strong>Key changes</strong></p>
<ul>
<li>Notifications are now in a dedicated Notifications tab in the builder.</li>
<li>Notification settings are easier to locate and manage.</li>
<li>Tooltips across Forms, Surveys, and Quizzes include clearer guidance and more context.</li>
<li>Some tooltips include links to related help documentation.</li>
</ul>
<p><strong>How it works</strong></p>
<p>Previously, notification settings were accessed through an icon within the builder, which was easy to miss. With this update, notifications are available as a clearly labeled tab so users can find and manage them more quickly.</p>
<p>Tooltips have also been improved to better explain options based on the selected product or field type, with documentation links where applicable.</p>
<p><strong>Notes</strong></p>
<ul>
<li>No changes were made to the underlying notification functionality.</li>
<li>This update focuses on accessibility, navigation, and in-product guidance.</li>
<li>Available across Forms, Surveys, and Quizzes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1202', 'Notifications are now easier to find in Forms, Surveys, and Quizzes', 'Summary Notifications in Forms, Surveys, and Quizzes are now easier to locate. Instead of being hidden behind an icon, they are available in a dedicated Notifications tab inside the builder. What changed Notifications are now accessed from a clearly labeled Notifications tab. Bui...', '<p><strong>Summary</strong></p>
<p>Notifications in Forms, Surveys, and Quizzes are now easier to locate. Instead of being hidden behind an icon, they are available in a dedicated <strong>Notifications</strong> tab inside the builder.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Notifications are now accessed from a clearly labeled Notifications tab.</li>
<li>Builder tooltips have been updated with clearer descriptions and more context.</li>
<li>Some tooltips include “Learn more” links to relevant Help Center articles.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>This update improves accessibility and navigation, and it reduces the need to contact support to find notification settings or understand builder options.</p>
<p><strong>Notes</strong></p>
<ul>
<li>There are no functional changes to how notifications work.</li>
<li>This update applies to Forms, Surveys, and Quizzes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1201', 'Your Ask AI Chats Are Private', 'Ask AI chat history on mobile now shows only the conversations you started. The issue When multiple users in the same sub-account used Ask AI on mobile, chat history could display sessions started by other teammates. This made it harder to find your own threads and created privac...', '<p>Ask AI chat history on mobile now shows only the conversations you started.</p>
<h3>The issue</h3>
<p>When multiple users in the same sub-account used Ask AI on mobile, chat history could display sessions started by other teammates. This made it harder to find your own threads and created privacy concerns.</p>
<h3>What changed</h3>
<p>Mobile now loads Ask AI chat history per user, consistent with how it works on the web. When you open <strong>Chat history</strong>, you will only see conversations you started. The list also refreshes when you switch sub-accounts or sign in as a different user.</p>
<h3>Benefits</h3>
<ul>
<li><strong>Improved privacy:</strong> Teammates only see their own Ask AI conversations.</li>
<li><strong>Faster navigation:</strong> Your history is easier to find and review.</li>
<li><strong>Smoother team adoption:</strong> Teams can use Ask AI without sharing chat history across users.</li>
<li><strong>Accurate results:</strong> History updates correctly when switching locations or users.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li><strong>Open Ask AI:</strong> Tap <strong>Ask AI</strong> from the FAB, home screen, or dashboard.</li>
<li><strong>Open your history:</strong> Tap the history icon in the Ask AI header to open <strong>Chat history</strong>.</li>
<li><strong>Continue a conversation:</strong> Select any of your past sessions to pick up where you left off.</li>
</ol>
<h3>Release details</h3>
<ul>
<li><strong>Release date:</strong> June 5, 2026</li>
<li><strong>Available version:</strong> 4.18.0 (build 831)</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Platforms:</strong> iOS and Android</li>
<li><strong>Availability:</strong> Leadli, LeadConnector, and the white-label app</li>
</ul>
<h3>Good to know</h3>
<ul>
<li><strong>Scope:</strong> This change applies to the <strong>Chat history</strong> list only. It does not affect live chat or new messages.</li>
<li><strong>Who sees what:</strong> Each logged-in user only sees sessions tied to their account within the current sub-account.</li>
<li><strong>Switching context:</strong> History clears and reloads when you switch sub-accounts or when a different user signs in on the same device.</li>
<li><strong>Empty history:</strong> If your location or user context is not ready, you may see an empty list rather than partial results.</li>
</ul>
<p><strong>Questions or feedback</strong></p>
<p>If you would like to share feedback, contact our team here: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1200', 'Ask AI is now available for your whole team in the Leadli mobile app', 'Ask AI on mobile now follows the same per-user access you set on web. Grant a teammate access once, and they can use Ask AI from the Leadli mobile app. It is no longer limited to agency admins. The problem On mobile, Ask AI was limited to agency admins only , even when you had al...', '<p>Ask AI on mobile now follows the same per-user access you set on web. Grant a teammate access once, and they can use Ask AI from the Leadli mobile app. It is no longer limited to agency admins.</p>
<h2>The problem</h2>
<p>On mobile, Ask AI was limited to <strong>agency admins only</strong>, even when you had already enabled it for sub-account users on web. Your team could use AI in the browser but could not access it in the app.</p>
<h2>What changed</h2>
<p>Mobile now respects the same per-user access you already grant on web. Teammates with access will see Ask AI in the app and can chat normally. Everyone else will not see the entry point.</p>
<p>Agency users also get a <strong>non-blocking banner</strong> when some sub-account teammates still need access, prompting you to finish setup on web. If a usage limit or policy blocks a message, you will see a <strong>clear in-chat explanation</strong> instead of a generic error.</p>
<h2>How this helps</h2>
<ul>
<li><strong>AI where your team works:</strong> Sub-account users can use Ask AI from their phones while in the field or with clients.</li>
<li><strong>Access control stays with you:</strong> Access is per user and granted by you.</li>
<li><strong>Easier rollout:</strong> Agency admins can see who still needs access inside the app.</li>
<li><strong>Clearer troubleshooting:</strong> Limit and access issues show specific guidance instead of a generic error.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li><strong>Grant access on web:</strong> Enable Ask AI for the sub-account users who should have it.</li>
<li><strong>Open the mobile app:</strong> Sign in as a user with Ask AI access (agency admin, agency staff, or sub-account user).</li>
<li><strong>Start chatting:</strong> Tap <strong>Ask AI</strong> from the FAB, home screen, or dashboard and send your first message.</li>
<li><strong>Finish team rollout (agency only):</strong> If some users still lack access, you will see a banner above the composer. Tap through to configure access on web. The composer stays enabled for users who already have access.</li>
</ol>
<h2>What is next</h2>
<ul>
<li>Paid-feature consent will return on mobile when metered Ask AI billing goes live, aligned with web.</li>
<li>Continued parity improvements between the mobile and web Ask AI experiences.</li>
</ul>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Release date:</strong> June 18, 2026</li>
<li><strong>Available version:</strong> 4.18.1 (build 833)</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Leadli:</strong> Available</li>
<li><strong>LeadConnector:</strong> Available</li>
<li><strong>WL App:</strong> Available</li>
<li><strong>Platforms:</strong> iOS and Android</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>Who can see Ask AI:</strong> Only users you have granted access. Everyone else will not see the entry point. Direct links show “not available.”</li>
<li><strong>Agency setup banner:</strong> Shown only to agency-type users when some teammates still need access. It is advisory and never blocks the composer for users who already have access.</li>
<li><strong>Sub-account users without access:</strong> They will not see Ask AI until an agency admin grants it on web.</li>
<li><strong>Usage limits:</strong> If a sub-account hits its monthly limit or access is blocked, you will see a specific in-chat banner and the composer is disabled until it is resolved.</li>
<li><strong>Offline:</strong> If access cannot be verified, you will see a retry screen instead of a broken chat.</li>
<li><strong>Paid consent:</strong> Not collected on mobile during the current free period (Summer of AI), matching web.</li>
</ul>
<h2>Feedback</h2>
<p>Speak with us: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1199', 'Conversations: SLA workflow triggers and permission controls', 'Overview Teams previously had to manually watch for conversations that were close to breaching or had already missed their SLA targets. With this release, SLAs become actionable. You can automate workflows when conversation SLAs are due soon, overdue, or manually dismissed. This ...', '<p><strong>Overview</strong></p>
<p>Teams previously had to manually watch for conversations that were close to breaching or had already missed their SLA targets. With this release, SLAs become actionable. You can automate workflows when conversation SLAs are due soon, overdue, or manually dismissed. This helps teams manage response times proactively. It also adds more control over manual SLA removal so admins can decide who can dismiss SLAs and keep actions auditable.</p>
<p><strong>What’s new</strong></p>
<p>You can build workflows that run automatically when a conversation’s SLA is:</p>
<ul>
<li>Due soon</li>
<li>Overdue</li>
<li>Manually dismissed</li>
</ul>
<p>Instead of relying on users or managers to monitor SLA timers, you can define what should happen when these events occur. For example, you can notify a user when a conversation becomes overdue or reassign a contact for escalation.</p>
<p>To reduce excess notifications, there is an <strong>Avoid Repeated Triggers</strong> option. When enabled, the workflow will only run once per conversation within a 24-hour period, even if multiple messages from the same contact trigger additional SLA events.</p>
<p><strong>Manual SLA removal permissions</strong></p>
<p>For conversations where no response is required (for example: “Thank you”, “Got it”, or “Not interested”), users can dismiss the SLA without replying. Admins can choose whether this action is available to all users or restricted to admins only.</p>
<p><strong>How to use</strong></p>
<p><strong>Build a Conversations SLA workflow</strong></p>
<ol>
<li>Go to <strong>Automation → Workflows</strong>.</li>
<li>Create a new workflow and select <strong>Conversation SLA</strong> as the trigger.</li>
<li>Choose the SLA event: <strong>Due Soon</strong>, <strong>Overdue</strong>, or <strong>SLA dismissed</strong>.</li>
<li>Optional: Add filters (message channel, tags, owner, custom fields), add the actions you want, and publish the workflow.</li>
</ol>
<p><strong>Configure manual SLA removal permissions</strong></p>
<ol>
<li>Go to <strong>Conversations Settings</strong>.</li>
<li>Under <strong>Who can manually dismiss SLA from conversations?</strong> select <strong>All users</strong> or <strong>Admins only</strong>, then save.</li>
<li>Eligible users can click the SLA timer in the conversation panel to dismiss the SLA.</li>
<li>When the SLA is dismissed, a log entry is posted in the conversation showing who dismissed it and the SLA status at the time.</li>
</ol>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1198', 'In Labs: Better document privacy and access controls', 'Overview As agencies handle sensitive client information, it is important to control who can access shared documents. Leadli now includes improved document privacy and access controls for files stored in the contact record’s Documents panel. This helps teams follow internal secur...', '<p>Overview</p>
<p>As agencies handle sensitive client information, it is important to control who can access shared documents. Leadli now includes improved document privacy and access controls for files stored in the contact record’s Documents panel. This helps teams follow internal security policies, meet client expectations, and keep workflows secure.</p>
<p>What’s new</p>
<p>You can generate document links with different access options when sharing a file:</p>
<p>&#8211; Public link: Anyone with the link can access it<br />
&#8211; Private link: Only authorized Leadli users can access it<br />
&#8211; One-time code link: Access is verified with a one-time password sent to the contact’s email address<br />
&#8211; Password-protected link: Access is secured with a user-defined passcode</p>
<p>Additional controls</p>
<p>&#8211; Set expiration dates for shared links<br />
&#8211; Allow or restrict downloads<br />
&#8211; View document details and access history for visibility and auditing</p>
<p>Note: The default document link behavior is internal/private unless the user changes it during sharing.</p>
<p>What’s next</p>
<p>Leadli is continuing to expand privacy and data controls across the platform. Next improvements include:</p>
<p>&#8211; Extending these controls to document attachments shared through notes and custom fields<br />
&#8211; Enhanced security for email attachments sent through marketplace apps</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1197', 'Contact detail page customization updates', 'Overview These updates improve Contact detail page customization so you can adjust layouts, use space more efficiently, and tailor the contact record to your team’s workflow while keeping the experience clean and consistent. What’s new Resizable panels Panels can now be resized t...', '<p><strong>Overview</strong></p>
<p>These updates improve Contact detail page customization so you can adjust layouts, use space more efficiently, and tailor the contact record to your team’s workflow while keeping the experience clean and consistent.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Resizable panels</strong>
<ul>
<li>Panels can now be resized to better fit your workflow.</li>
<li>The left panel can be expanded as needed and is no longer limited to a narrow width.</li>
</ul>
</li>
<li><strong>Owners and Followers managed separately</strong>
<ul>
<li>Owners and Followers can now be managed independently.</li>
<li>You can show only Owners, only Followers, both, or neither on the contact card.</li>
</ul>
</li>
<li><strong>Custom fields on the contact card</strong>
<ul>
<li>You can add up to two custom fields directly to the contact card for quick visibility.</li>
<li>These fields display in read-only mode.</li>
<li>To edit values, continue using the <strong>All fields</strong> tab.</li>
</ul>
</li>
<li><strong>Flexible tag placement</strong>
<ul>
<li>Tags no longer need to take up space on the contact card.</li>
<li>You can choose to show tags in the left panel or the center panel.</li>
</ul>
</li>
<li><strong>Customizable tabs</strong>
<ul>
<li>The <strong>Actions</strong> and <strong>All fields</strong> tabs can be renamed.</li>
<li>Tabs can be reordered to match your workflow.</li>
</ul>
</li>
<li><strong>Dynamic tabs expanded by default</strong>
<ul>
<li>Modules placed within a Dynamic Tab will be expanded and visible by default when the tab is opened.</li>
</ul>
</li>
</ol>
<p><strong>What’s next</strong></p>
<ul>
<li>Support for placing the same module more than once on the same page, in any panel.</li>
<li>User permissions for adding or editing customized views.</li>
<li>When clicking the email icon, the Leadli email composer will open instead of the system default email composer.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1196', 'Meta Special Ad Categories: Default settings and compliance warnings', 'Summary Ad Manager now provides guidance for Meta Special Ad Category campaigns. When you select a Special Ad Category, you will see notices, audience guidelines, and field-level warnings that help you spot targeting values that may not meet Meta’s compliance requirements. This h...', '<h2>Summary</h2>
<p>Ad Manager now provides guidance for Meta Special Ad Category campaigns. When you select a Special Ad Category, you will see notices, audience guidelines, and field-level warnings that help you spot targeting values that may not meet Meta’s compliance requirements.</p>
<p>This helps reduce publishing failures caused by Special Ad Category restrictions.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Campaign guidance:</strong> An informational notice appears when a Special Ad Category is selected.</li>
<li><strong>Audience compliance banner:</strong> Ad set targeting indicates whether audience values look compliant or need attention.</li>
<li><strong>Guidelines section:</strong> Key Special Ad Category targeting rules are available within Audience controls.</li>
<li><strong>Field-level warnings:</strong> Targeting values that may be non-compliant are highlighted near the relevant field.</li>
<li><strong>Fix it action:</strong> You can apply recommended compliant values with one click.</li>
<li><strong>Non-blocking flow:</strong> You can continue building the campaign, but Ad Manager warns when values may cause publishing to fail.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Create or edit a Meta campaign in Ad Manager.</li>
<li>Select a <strong>Special Ad Category</strong> at the campaign level.</li>
<li>Review the notice shown under the category field.</li>
<li>Open the ad set <strong>Audience controls</strong>.</li>
<li>Review the compliance banner and guidelines.</li>
<li>Use <strong>Fix it</strong> or update the targeting values manually if warnings appear.</li>
<li>Continue to Review and Publish.</li>
</ol>
<h2>Why this feature exists</h2>
<p>Meta applies targeting restrictions to campaigns related to housing, employment, credit, financial products, and social issues, elections, or politics. If these requirements are missed, campaigns can fail during publishing.</p>
<p>This update provides clearer guidance while you build the campaign so you can address issues before publishing.</p>
<h2>Notes</h2>
<ul>
<li>This release applies to Meta campaigns in Ad Manager.</li>
<li>Warnings are advisory and do not block you from proceeding.</li>
<li>Ad Manager does not automatically change targeting values. You choose whether to apply fixes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1235', 'Services (v2): Payment improvements', 'This update improves the Services payment checkout experience. Customers have more flexibility at checkout, and deposit calculations are more accurate. What''s included Let customers choose deposit or full payment You can enable a setting that lets customers choose how they want t...', '<p>This update improves the Services payment checkout experience. Customers have more flexibility at checkout, and deposit calculations are more accurate.</p>
<h2>What&#8217;s included</h2>
<h3>Let customers choose deposit or full payment</h3>
<ul>
<li>You can enable a setting that lets customers choose how they want to pay during checkout.</li>
<li>If enabled and a service has a deposit configured, customers will see two options: <strong>Pay Deposit</strong> or <strong>Pay Full Amount</strong>.</li>
<li>This is available only when <strong>Online Payments</strong> are enabled and the service has a deposit configured.</li>
<li>If the setting is disabled, checkout stays deposit-only (the current behavior).</li>
</ul>
<h3>Better support for Buy Now, Pay Later (BNPL)</h3>
<ul>
<li>Customers who want financing can choose to pay the <strong>full service amount</strong>, so supported Buy Now, Pay Later (BNPL) providers can finance the full booking instead of only the deposit.</li>
<li>This provides a smoother checkout experience and more payment flexibility.</li>
</ul>
<h3>More accurate deposit calculations</h3>
<ul>
<li>Percentage-based deposits are calculated using the <strong>final payable amount after discounts</strong>.</li>
<li>If a coupon is added, removed, or changed during checkout, the deposit amount is recalculated automatically.</li>
<li>Deposit calculations now include <strong>applicable add-ons and taxes</strong> based on the configured deposit percentage.</li>
<li>Flat deposit amounts are unchanged.</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Services &gt; Global Settings &gt; Payment Settings</strong>.</li>
<li>Set the payment mode to <strong>Online Payment</strong>.</li>
<li>Enable <strong>Allow Deposit or Full Payment Choice</strong>.</li>
<li>Save your changes.</li>
</ol>
<p>After enabling this, customers booking services with deposits can choose whether to pay the deposit or the full amount during checkout.</p>
<h2>Why this matters</h2>
<ul>
<li>Customers can choose the payment option that works best for them.</li>
<li>Businesses can better support BNPL payment methods.</li>
<li>Deposits match the final booking value more accurately.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1234', 'Buffer time is now visible in calendar day and week views', 'You can now see pre-buffer and post-buffer times directly in the Day and Week calendar views. Buffer periods appear as informational blocks so you can understand spacing between appointments without changing how scheduling works. What’s changed Previously Buffer times were applie...', '<p>You can now see pre-buffer and post-buffer times directly in the Day and Week calendar views. Buffer periods appear as informational blocks so you can understand spacing between appointments without changing how scheduling works.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Previously</strong></p>
<ul>
<li>Buffer times were applied in the background but were not visible on the calendar.</li>
<li>It was harder to tell the difference between an appointment and the buffer time around it.</li>
</ul>
<p><strong>Now</strong></p>
<ul>
<li>Pre-buffer and post-buffer times are visible in both Day and Week views.</li>
<li>Buffer blocks are visually distinct from appointments to make the schedule easier to interpret.</li>
<li>Buffer visibility works across calendar filters, including Staff/User, Service/Calendar, and Category/Group.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Calendars</strong>.</li>
<li>Switch to <strong>Day</strong> or <strong>Week</strong> view.</li>
<li>Turn on the <strong>Show buffer time</strong> toggle.</li>
<li>Review the highlighted buffer periods before and after appointments.</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li>Get a clearer view of your schedule.</li>
<li>Identify transition time between appointments.</li>
<li>Plan your day more effectively while maintaining scheduling flexibility.</li>
<li>Understand buffer allocations without changing how appointments are booked.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1233', 'Control Google Sign-In options in your Client Portal', 'Overview Leadli now lets sub-accounts control whether the "Sign in with Google" option appears on the Client Portal sign-up and login pages. Admins can enable or disable Google Sign-In in the Client Portal app permissions. This helps businesses align the sign-up experience with t...', '<p><strong>Overview</strong></p>
<p>Leadli now lets sub-accounts control whether the &#8220;Sign in with Google&#8221; option appears on the Client Portal sign-up and login pages. Admins can enable or disable Google Sign-In in the Client Portal app permissions. This helps businesses align the sign-up experience with their compliance and data-handling requirements (for example, GDPR).</p>
<p><strong>Key highlights</strong></p>
<ul>
<li>Google Sign-In toggle: Show or hide the Google button on your portal’s sign-up and login pages.</li>
<li>Managed in App Permissions: Control is handled by the sub-account admin (no support ticket needed).</li>
<li>Compliance flexibility: Disable third-party sign-in to better match regional privacy rules (for example, GDPR).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>In your sub-account, go to <strong>Sites</strong> &gt; <strong>Client Portal settings</strong>.</li>
<li>Open <strong>App Permissions</strong> and find <strong>Sign-up &amp; sign-in methods</strong>.</li>
<li>Turn <strong>Disable Google sign-in &amp; sign-up</strong> on or off.</li>
<li>Click <strong>Save Settings</strong>.</li>
</ol>
<p><strong>Why this change</strong></p>
<ul>
<li>Previously, Google Sign-In was always enabled, which could create compliance concerns for businesses operating under European (GDPR) data-handling requirements.</li>
<li>Now, sub-accounts can choose which authentication options appear on their portal so the sign-up experience can match regulatory and business needs.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>When disabled, contacts can sign up and log in using email and password, or by using a secure code.</li>
<li>This is configured per sub-account in Client Portal app permissions.</li>
</ul>
<p>Available on the Client Portal Web platform.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1232', 'New community triggers in workflows', 'Overview We added four new Communities triggers to Leadli Workflows. These triggers help admins respond faster and automate follow-ups, alerts, moderation steps, and event-based engagement based on what members do inside groups. What’s new Group joining request rejected Trigger a...', '<p><strong>Overview</strong></p>
<p>We added four new Communities triggers to Leadli Workflows. These triggers help admins respond faster and automate follow-ups, alerts, moderation steps, and event-based engagement based on what members do inside groups.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Group joining request rejected</strong><br />Trigger a workflow when a member’s request to join a group is rejected.<br /><em>Filters:</em> Group (required)</li>
<li><strong>Group post created</strong><br />Trigger a workflow when a new post is created in a group.<br /><em>Filters:</em> Group (required), Channel, Post Title, Post Content</li>
<li><strong>Group comment created</strong><br />Trigger a workflow when a new comment is added to a group post.<br /><em>Filters:</em> Group (required), Channel, Post Title, Post Content, Comment Content</li>
<li><strong>Member registered for group event</strong><br />Trigger a workflow when a member registers for a group event.<br /><em>Filters:</em> Group (required), Event Title</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li>More automation options: Turn community activity into workflow actions.</li>
<li>Better targeting: Use filters (channel, post content, comment content, event title) so workflows run only when needed.</li>
<li>Faster moderation and visibility: Alert the right people and route updates automatically.</li>
<li>Less manual work as groups grow: Automate common engagement and follow-up tasks.</li>
<li>Stronger connection between Communities and Workflows: Posts, comments, event registrations, and membership decisions can start automated journeys.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <em>Automation &gt; Workflows</em> in your account.</li>
<li>Create a new workflow or open an existing workflow.</li>
<li>Click <em>Add New Trigger</em> and search for “Community.”</li>
<li>Select a trigger, choose the Group (required), and add any optional filters (Channel, Post Title, Post Content, Comment Content, Event Title).</li>
<li>Save the trigger and publish the workflow.</li>
</ol>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1231', 'RCS messaging is now available in Leadli workflows (private beta)', 'You can now build richer customer journeys with RCS messaging directly inside Workflows. The new Send RCS and RCS Interactive Message actions let you automate conversations using the next generation of business messaging. You can now: Send standard RCS messages from Workflows Bui...', '<p>You can now build richer customer journeys with RCS messaging directly inside Workflows. The new <strong>Send RCS</strong> and <strong>RCS Interactive Message</strong> actions let you automate conversations using the next generation of business messaging.</p>
<h2>You can now:</h2>
<ul>
<li>Send standard <strong>RCS messages</strong> from Workflows</li>
<li>Build <strong>interactive RCS experiences</strong> with rich cards and buttons</li>
<li>Trigger different workflow paths based on customer interactions</li>
<li>Automate reminders, promotions, follow-ups, and customer engagement using RCS</li>
</ul>
<h2>Build richer customer journeys</h2>
<p>With these new Workflow actions, you can move beyond traditional messaging and create RCS conversations that guide customers through more personalized journeys, all within your existing Workflow automations.</p>
<h2>Available in private beta</h2>
<p>RCS is currently available as part of our private beta.</p>
<p>If you want early access and would like to help shape RCS in Leadli, reach out to your Customer Success Manager or contact the Leadli team to join the private beta.</p>
<h2>Also included in the RCS private beta</h2>
<p>In addition to Workflow support, private beta users can also use:</p>
<ul>
<li><strong>1:1 RCS messaging</strong> from Conversations</li>
<li><strong>Bulk RCS messaging</strong> for customer outreach</li>
<li><strong>RCS template creation and management</strong></li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Navigate to Automation → Workflows</li>
<li>Create a new Workflow or edit an existing one</li>
<li>Add either the Send RCS or RCS Interactive Message action</li>
<li>Configure your message or interactive experience</li>
<li>Publish your Workflow</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Automate rich, conversational customer experiences</li>
<li>Increase engagement with interactive RCS messages</li>
<li>Route contacts based on button selections and responses</li>
<li>Deliver a more modern messaging experience directly from Workflows</li>
</ul>
<h2>What’s next</h2>
<p>We are continuing to expand our RCS capabilities. Here is what is coming soon:</p>
<ul>
<li><strong>RCS onboarding flows</strong> to simplify sender registration and provisioning programmatically</li>
<li><strong>General availability (GA)</strong> of RCS, currently planned for end of Q3 2026, bringing the feature to all eligible Leadli customers</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1229', 'Course tags for memberships', 'Course tags are now available You can now add tags to courses to help organize your library and make it easier for learners to find relevant content. What changed Add Language , Difficulty , and Topic tags from Memberships → Courses → Settings . Learners can filter the course lib...', '<h2>Course tags are now available</h2>
<p>You can now add tags to courses to help organize your library and make it easier for learners to find relevant content.</p>
<h2>What changed</h2>
<ul>
<li>Add <strong>Language</strong>, <strong>Difficulty</strong>, and <strong>Topic</strong> tags from <strong>Memberships → Courses → Settings</strong>.</li>
<li>Learners can filter the course library using these tags.</li>
<li>Tags appear on course cards for easier scanning.</li>
<li>Predefined, standardized tags help keep categorization consistent.</li>
<li>Available in both <strong>All Courses</strong> and <strong>My Courses</strong> views.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Memberships → Courses → Settings</strong>.</li>
<li>Under <strong>Course Tags</strong>, choose the appropriate <strong>Language</strong>, <strong>Difficulty</strong>, and <strong>Topic</strong>.</li>
<li>Save the course.</li>
</ol>
<h2>What is coming next</h2>
<p>The ability to create custom tags will be added in a future update.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1228', 'Client Portal: Shared File Notifications', 'Release summary Leadli now notifies contacts when a subaccount admin shares a file with them through the Client Portal. Contacts receive real-time notifications in the Client Portal and the White Label mobile app, so they do not miss newly shared documents. Contacts can manage th...', '<p><strong>Release summary</strong></p>
<p>Leadli now notifies contacts when a subaccount admin shares a file with them through the Client Portal. Contacts receive real-time notifications in the Client Portal and the White Label mobile app, so they do not miss newly shared documents. Contacts can manage these notifications in their Client Portal notification preferences.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>File share notifications for contacts</strong>: When an admin shares a file with a contact through the Client Portal, the contact automatically receives a notification that a new file is available.</li>
<li><strong>Notification preferences</strong>: Contacts can choose whether to receive in-app and push notifications for shared files by updating their notification preferences in the Client Portal.</li>
<li><strong>Available across platforms</strong>: Supported on Client Portal (web) and White Label Mobile App.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Businesses often share contracts, invoices, onboarding documents, and other important files through the Client Portal. Without notifications, clients may not know when a new document has been shared. These notifications improve visibility and help reduce missed updates.</p>
<p><strong>How to use</strong></p>
<ol>
<li><strong>Share a file with a contact</strong>
<ol>
<li>Go to a contact.</li>
<li>Open the <em>Files</em> section from the right-side navigation.</li>
<li>Upload or select a file.</li>
<li>Enable <em>Upload to Client Portal</em>.</li>
<li>Save the file.</li>
<li>The contact will receive an in-app notification and, if enabled, a push notification.</li>
</ol>
</li>
<li><strong>Manage notification preferences (client)</strong>
<ol>
<li>Log in to the Client Portal.</li>
<li>Go to <em>Settings → Notification Preferences</em>.</li>
<li>Enable or disable in-app and push notifications.</li>
<li>Save your preferences.</li>
</ol>
</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1227', 'New templates are now available in Leadli', 'New templates have been added to help you build websites, funnels, and email campaigns more quickly. These templates are customizable and designed to streamline setup. What’s included Website templates (1) Other (1) Social templates (4) Restaurant and Bar (2) Marketing Agency (2)...', '<p>New templates have been added to help you build websites, funnels, and email campaigns more quickly. These templates are customizable and designed to streamline setup.</p>
<h3>What’s included</h3>
<p><strong>Website templates (1)</strong></p>
<ul>
<li>Other (1)</li>
</ul>
<p><strong>Social templates (4)</strong></p>
<ul>
<li>Restaurant and Bar (2)</li>
<li>Marketing Agency (2)</li>
<li>Other (2)</li>
<li>Insurance (2)</li>
</ul>
<p><strong>Facebook ad templates (2)</strong></p>
<ul>
<li>Automotive – Auto Body and Painting</li>
<li>Finance – Banking</li>
</ul>
<p><strong>Google ad templates (5)</strong></p>
<ul>
<li>Beauty &amp; Fashion – Eyelash Boutique</li>
<li>Automotive – Automotive Repair</li>
<li>Travel &amp; Hospitality – Travel Writer</li>
<li>Restaurant &amp; Bar – Bistro Restaurant</li>
<li>Real Estate – Real Estate Management</li>
</ul>
<p><strong>LinkedIn ad templates (3)</strong></p>
<ul>
<li>Finance – Financial Planner</li>
<li>Marketing Agency – Affiliate</li>
<li>Insurance – Commercial Insurance</li>
</ul>
<p><strong>Workflow templates (3)</strong></p>
<ul>
<li>Lead Generation &amp; Nurturing – Speed-to-Lead SMS + Email</li>
<li>Review &amp; Reputation – Employee/Team Review Collection</li>
<li>Internal Operations – Task Overdue Escalation</li>
</ul>
<p><strong>Snapshot (1)</strong></p>
<ul>
<li>Real Estate – Home Staging</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1226', 'Ad Manager: Use custom values in ad copy', 'Release summary Custom Values are now supported in Ad Manager ad copy fields across Meta, Google, and LinkedIn campaigns. You can insert reusable business details such as business name, city, support email, offer name, service area, phone number, and other saved Custom Values dir...', '<h2>Release summary</h2>
<p>Custom Values are now supported in Ad Manager ad copy fields across Meta, Google, and LinkedIn campaigns.</p>
<p>You can insert reusable business details such as business name, city, support email, offer name, service area, phone number, and other saved Custom Values directly into supported ad copy fields.</p>
<p>These values resolve in the campaign preview and review screens so you can confirm the final ad content before publishing.</p>
<h2>What’s new</h2>
<ol>
<li><strong>Custom values in ad copy</strong> — Insert Custom Values into eligible ad copy fields across Meta, Google, and LinkedIn campaigns.</li>
<li><strong>Custom values picker</strong> — Search, select, and add saved Custom Values into supported fields such as primary text, headlines, descriptions, and introduction text.</li>
<li><strong>Map custom values before publishing</strong> — Review and add missing values used in a campaign before you publish.</li>
<li><strong>Resolved preview</strong> — Preview and review screens show the final resolved copy so you can verify what will appear in the published ad.</li>
<li><strong>Validation for safer publishing</strong> — Alerts appear when Custom Values are missing, invalid, empty, or exceed platform character limits.</li>
<li><strong>Reusable templates across sub-accounts</strong> — Campaign templates can retain Custom Value keys so you can reuse a template across multiple sub-accounts while mapping client-specific values before launch.</li>
</ol>
<h2>How to use</h2>
<ol>
<li>Go to Ad Manager.</li>
<li>Create or edit a campaign for Meta, Google, or LinkedIn.</li>
<li>Open the ad copy section.</li>
<li>Click the Insert Custom Values icon next to a supported copy field.</li>
<li>Search for and select the Custom Value you want to use.</li>
<li>Continue building the campaign.</li>
<li>If prompted, click Map custom values to add or review missing values.</li>
<li>Review the resolved copy in the preview/review screen.</li>
<li>Publish the campaign after validations are cleared.</li>
</ol>
<h2>Why this matters</h2>
<p>Agencies and businesses often reuse the same details across multiple campaigns, such as business name, location, phone number, support email, service area, offer name, and promotional copy.</p>
<p>Previously, these details had to be added manually for each campaign, which increased effort and created inconsistencies.</p>
<p>With Custom Values in ad copy, you can:</p>
<ul>
<li>Create campaigns faster</li>
<li>Reduce repetitive copy entry</li>
<li>Keep ad copy consistent</li>
<li>Reuse templates across sub-accounts</li>
<li>Preview the final resolved copy before publishing</li>
<li>Avoid publishing issues caused by missing or invalid values</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Custom Values are supported only in eligible ad copy fields.</li>
<li>Custom Values are not supported in URL fields, CTA dropdowns, lead form selectors, media upload fields, targeting, budget, or bid strategy fields.</li>
<li>You can save campaigns as drafts even if Custom Values still need attention.</li>
<li>Warnings are shown if required Custom Values are missing, invalid, or exceed character limits.</li>
<li>Updating a Custom Value after publishing will not automatically update already-running ads; you will need to republish after changes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1225', 'Clearer payment provider selection when enabling SaaS or rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step. What’s changed Provider options are shown as cards Payment provi...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Provider options are shown as cards</strong></p>
<p>Payment providers are now displayed as cards with the provider logo, a V1 or V2 version label, and a short description of where billing data is stored (for example, your agency Stripe account vs. directly in Leadli). This makes it easier to compare options side by side.</p>
<p><strong>Unsupported providers are clearly marked</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now shown with a “Not supported” label, instead of appearing as selectable options that fail later in the setup.</p>
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same way whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or create a new SaaS plan in SaaS Configurator.</p>
<p><strong>Step progress is shown during setup</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) is now displayed so you can see where you are in the process and how many steps remain.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including a silent error that could stop the plan selection screen from appearing and a case where reopening the setup could take you to step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Enabling SaaS or rebilling requires choosing how sub-account payments are processed. The updated layout provides clearer context so you can make the right choice the first time, and the consistent experience across entry points reduces confusion during setup.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1224', 'Clearer payment provider selection when enabling SaaS or rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step. What’s changed Provider options are shown as cards Payment provi...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see an updated payment provider selection screen. It is designed to make the available options easier to understand from the first step.</p>
<p><strong>What’s changed</strong></p>
<p><strong>Provider options are shown as cards</strong></p>
<p>Payment providers are now displayed as cards with the provider logo, a V1 or V2 version label, and a short description of where billing data is stored (for example, your agency Stripe account vs. directly in Leadli). This makes it easier to compare options side by side.</p>
<p><strong>Unsupported providers are clearly marked</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now shown with a “Not supported” label, instead of appearing as selectable options that fail later in the setup.</p>
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same way whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or create a new SaaS plan in SaaS Configurator.</p>
<p><strong>Step progress is shown during setup</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) is now displayed so you can see where you are in the process and how many steps remain.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including a silent error that could stop the plan selection screen from appearing and a case where reopening the setup could take you to step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Enabling SaaS or rebilling requires choosing how sub-account payments are processed. The updated layout provides clearer context so you can make the right choice the first time, and the consistent experience across entry points reduces confusion during setup.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1223', 'Dashboards and custom reports: refreshed interface for a more consistent experience', 'What’s new Dashboards have a more polished look: header, navigation, breadcrumbs, side panel, and modals are now visually unified. Charts and widgets (numeric, bar, donut, line, table, funnel, and more) have updated loading states, error states, and consistent card styling. Advan...', '<h2>What’s new</h2>
<ul>
<li>Dashboards have a more polished look: header, navigation, breadcrumbs, side panel, and modals are now visually unified.</li>
<li>Charts and widgets (numeric, bar, donut, line, table, funnel, and more) have updated loading states, error states, and consistent card styling.</li>
<li>Advanced filters, the quick filter panel, and the date picker now follow the same visual style across dashboards and reports.</li>
<li>The custom metric builder (including the formula builder and filter panel) has a cleaner, more consistent layout.</li>
<li>The report builder, report list, scheduling page, and clone/duplicate flows are now aligned end to end.</li>
<li>The update includes the widget AI summary and widgets for Google Ads, Facebook, and Google Analytics.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Go to Settings → Labs in your account and enable “Dashboard and custom reporting – UI consistency update” to try the refreshed experience.</li>
<li>The updated interface loads automatically when you open Dashboards or Custom Reports.</li>
<li>Your existing dashboards, reports, widgets, filters, and custom metrics remain unchanged.</li>
<li>If something looks off, use the feedback button to let us know.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>More consistency across Dashboards and Custom Reports, so the experience feels the same as you move between pages.</li>
<li>More predictable spacing, typography, dropdowns, and tooltips across the product.</li>
<li>This update sets the foundation for faster improvements in Dashboards and Reporting.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This is a UI consistency update only. No functionality, data, or workflows have changed.</li>
<li>If you use custom CSS styling, you may need to review and adjust styles due to the interface changes.</li>
<li>Minor spacing differences may appear in some areas as part of the alignment work.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1222', 'Clearer payment provider selection for SaaS and rebilling', 'When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see a redesigned provider selection screen. It is easier to understand your options and move forward with confidence from the first step. What’s new Visual cards instead of a dropdown Payment providers...', '<p>When setting up SaaS subscriptions or rebilling for sub-accounts, you will now see a redesigned provider selection screen. It is easier to understand your options and move forward with confidence from the first step.</p>
<p><strong>What’s new</strong></p>
<p><strong>Visual cards instead of a dropdown</strong></p>
<p>Payment providers are now shown as cards with the provider logo, a V1 or V2 version label, and a clear note about where billing data is stored (your agency Stripe account vs. directly in Leadli). This makes it easier to compare options before choosing.</p>
<p><strong>Provider compatibility is shown up front</strong></p>
<p>Processors that cannot be used for SaaS subscription billing are now labeled as not supported, instead of appearing as options that fail later.</p>
<p><strong>A consistent setup experience</strong></p>
<p>The provider selection screen now looks and behaves the same whether you enable SaaS from the Manage Client panel, enable rebilling, use bulk actions from the Locations list, or add a payment source from Location Billing.</p>
<p><strong>Step progress indicator</strong></p>
<p>A step indicator (for example, “Step 1 of 3: Choose Payment Provider”) now appears during setup so you can see where you are in the process.</p>
<p><strong>Bug fixes</strong></p>
<p>Two issues that could prevent SaaS activation from completing have been resolved, including an error that stopped the plan selection screen from appearing and a case where reopening setup could place you on step 2 instead of step 1.</p>
<p><strong>Why this matters</strong></p>
<p>Setting up SaaS or rebilling requires choosing how sub-account payments are processed. The new layout provides clearer context so you can make the right choice on the first try, and the consistent experience across entry points reduces confusion.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1221', 'More control when adding prospects in the Prospecting Tool', 'We’ve made prospect creation more flexible by giving you control over when Marketing Audit Reports are generated. Previously, every time you added a prospect from search results, a Marketing Audit Report was generated automatically. Some teams prefer to save prospects first and d...', '<p>We’ve made prospect creation more flexible by giving you control over when Marketing Audit Reports are generated.</p>
<p>Previously, every time you added a prospect from search results, a Marketing Audit Report was generated automatically. Some teams prefer to save prospects first and decide later which businesses need a full audit.</p>
<p>Now you can choose what happens when you add a new prospect.</p>
<h2>Choose whether to generate a Marketing Audit Report</h2>
<p>When adding a new prospect, you’ll see an option called <strong>Run marketing audit report</strong>.</p>
<p><strong>If enabled:</strong></p>
<ul>
<li>The prospect is saved.</li>
<li>A Marketing Audit Report is generated automatically.</li>
</ul>
<p><strong>If disabled:</strong></p>
<ul>
<li>The prospect is saved immediately.</li>
<li>No audit is generated.</li>
<li>You can generate the report later from the Prospect Details page.</li>
</ul>
<h2>Faster prospect list building</h2>
<p>This helps teams that prefer to:</p>
<ul>
<li>Save prospects in bulk</li>
<li>Build prospect lists first</li>
<li>Generate audits only for the highest-priority opportunities</li>
</ul>
<p>With this update, you can add prospects without waiting for audit generation each time.</p>
<h2>Audits are still available when you need them</h2>
<p>Marketing Audit Reports can help you identify:</p>
<ol>
<li>Website performance issues</li>
<li>Google Business Profile opportunities</li>
<li>Local SEO insights</li>
<li>Reputation and review gaps</li>
<li>Listings and visibility improvements</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1220', 'Ad Manager: Opportunity Score for Meta campaigns', 'Release summary We added Opportunity Score for Meta campaigns in Leadli Ad Manager. Opportunity Score helps you check how ready a campaign is before you publish. It reviews your setup, highlights areas that may need improvement, and points you to the exact section to update. This...', '<h2>Release summary</h2>
<p>We added <strong>Opportunity Score</strong> for Meta campaigns in Leadli Ad Manager.</p>
<p>Opportunity Score helps you check how ready a campaign is before you publish. It reviews your setup, highlights areas that may need improvement, and points you to the exact section to update. This can reduce missed setup items during review.</p>
<h2>What’s new</h2>
<ol>
<li><strong>Pre-publish Opportunity Score for Meta campaigns</strong> – You can now see an Opportunity Score on the campaign Review screen before publishing a Meta ad campaign.</li>
</ol>
<ul>
<li>Shows a campaign readiness score before launch.</li>
<li>Displays a percentage score with a status such as <strong>Low</strong>, <strong>Medium</strong>, or <strong>High</strong>.</li>
<li>Helps you quickly identify whether the setup needs attention before publishing.</li>
</ul>
<ol>
<li><strong>Detailed improvement suggestions</strong> – The Opportunity Score panel provides recommendations across key setup areas.</li>
</ol>
<ul>
<li><strong>Audience</strong>: Checks whether the audience may be too narrow, too broad, or missing important details.</li>
<li><strong>Budget</strong>: Helps identify whether the budget may limit delivery or learning.</li>
<li><strong>Creative</strong>: Reviews ad content, media, CTA, destination links, and other creative inputs.</li>
<li><strong>Tracking</strong>: Checks whether conversion tracking and related setup are configured where applicable.</li>
</ul>
<ol>
<li><strong>Click-to-fix navigation</strong> – Each suggestion links you directly to the relevant section of the campaign builder.</li>
</ol>
<ul>
<li>Click recommendations such as improving creative, refining audience, or reviewing budget.</li>
<li>Jump to the area that needs attention.</li>
<li>Make updates without searching through the campaign setup.</li>
</ul>
<ol>
<li><strong>Prioritized guidance before publishing</strong> – The panel highlights what to address first before launching.</li>
</ol>
<ul>
<li>Surfaces the most important improvement areas.</li>
<li>Helps you focus on higher-impact fixes first.</li>
<li>Supports a clearer review and publish process.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Create or edit a <strong>Meta campaign</strong> in Ad Manager.</li>
<li>Complete the campaign setup.</li>
<li>Open the <strong>Review</strong> screen before publishing.</li>
<li>Check the <strong>Opportunity Score</strong>.</li>
<li>Open the score panel to review suggested improvements.</li>
<li>Select a recommendation to navigate to the relevant setup area.</li>
<li>Make updates as needed and continue publishing.</li>
</ol>
<h2>Why this feature</h2>
<p>Before publishing a campaign, it may not be clear whether the setup is complete or optimized enough to launch. Opportunity Score helps by:</p>
<ul>
<li>Making campaign readiness easier to understand.</li>
<li>Highlighting missing or weak setup areas.</li>
<li>Guiding you to the right place to make improvements.</li>
<li>Reducing guesswork during the campaign review process.</li>
</ul>
<h2>What’s next</h2>
<p>Planned improvements include:</p>
<ul>
<li>Updates to Opportunity Score accuracy and recommendation quality.</li>
<li>Polish around score refresh behavior and loading states.</li>
<li>Better handling of edge cases across multiple ad sets and ads.</li>
<li>Future support for <strong>post-publish Opportunity Score</strong> using <strong>Meta-sourced recommendations</strong>.</li>
<li>Potential expansion to other platforms such as Google and LinkedIn with separate scoring models.</li>
</ul>
<h2>Notes</h2>
<ol>
<li>Opportunity Score is currently available for Meta campaigns only.</li>
<li>The score is shown before publishing on the Review screen.</li>
<li>Opportunity Score is a guidance tool and does not guarantee campaign performance.</li>
<li>Recommendations do not make automatic changes. You choose which updates to apply.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1219', 'SMS notifications are now available for rentals', 'Overview You can now send SMS notifications for rental bookings. This gives you more flexibility for confirmations, reminders, and other updates. SMS can help improve attendance and keep clients and your team informed in real time. What’s new SMS support for rental booking events...', '<h2>Overview</h2>
<p>You can now send SMS notifications for rental bookings. This gives you more flexibility for confirmations, reminders, and other updates. SMS can help improve attendance and keep clients and your team informed in real time.</p>
<h2>What’s new</h2>
<ul>
<li>SMS support for rental booking events: unconfirmed, booked, canceled, rescheduled, reminder, follow-up</li>
<li>Recipient options: send messages to the contact or the business</li>
<li>Separate templates per recipient (Contacts vs. Business)</li>
<li>Default templates included, with options to customize, select an existing template, or create a new one</li>
<li>Send a test SMS to preview the message before enabling it</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendar Settings &gt; Rentals &gt; Global settings &gt; Notifications</strong></li>
<li>Edit a notification type, open the <strong>SMS</strong> tab, and enable the <strong>SMS toggle</strong></li>
<li>Select recipients (Contact and/or Business)</li>
<li>Select the SMS template</li>
<li>Send a test SMS</li>
<li>Save your settings</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Helps increase show-up rates with faster communication</li>
<li>Lets businesses choose how to notify different recipients</li>
<li>Reduces manual follow-ups</li>
<li>Gives more control over template messaging and delivery</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1218', 'WhatsApp notifications are now available for rentals', 'Overview WhatsApp is now available as a notification channel for rentals. This provides a direct way to reach clients on a widely used messaging platform. What’s included WhatsApp support for rental notifications: Available for Unconfirmed, Booked, Canceled, Rescheduled, Reminder...', '<h2>Overview</h2>
<p>WhatsApp is now available as a notification channel for rentals. This provides a direct way to reach clients on a widely used messaging platform.</p>
<h2>What’s included</h2>
<ul>
<li><strong>WhatsApp support for rental notifications:</strong> Available for Unconfirmed, Booked, Canceled, Rescheduled, Reminder, and Follow-up notifications. You can enable it per notification.</li>
<li><strong>Recipient options:</strong> Send WhatsApp messages to either Contacts or Business so you can choose who receives each notification.</li>
<li><strong>Templates by recipient:</strong> Use different WhatsApp templates for Contacts vs. Business.</li>
<li><strong>Template selection and creation:</strong> Each notification type includes a default template. You can keep it, choose an existing approved template, or create a new one in the template builder. Use the “Fetch WhatsApp templates” option to refresh the list.</li>
<li><strong>Send a test message:</strong> Send a test WhatsApp notification to confirm the message before turning it on for live bookings.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Calendar Settings &gt; Rentals &gt; Global settings &gt; Notifications</strong>.</li>
<li>For each notification type, turn <strong>WhatsApp</strong> on.</li>
<li>Select the recipients.</li>
<li>Select an approved WhatsApp template or create a new one.</li>
<li>Send a test notification to confirm the content.</li>
<li>Save your changes. WhatsApp messages will send automatically for rental notifications.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Helps improve show-up rates with fast, mobile-first communication.</li>
<li>Reduces the need for manual follow-ups.</li>
<li>Gives more control over template messaging and delivery.</li>
<li>Makes it easier to choose different recipients for different notifications.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1217', 'Prospecting updates: better contact creation and enrichment in Leadli', 'We’ve improved how Prospecting creates and enriches contacts in your CRM. Prospects are now added as cleaner, more complete CRM contacts that are ready for outreach and automation. Richer contact details from business websites Prospecting now goes beyond Google Business Profile d...', '<p>We’ve improved how Prospecting creates and enriches contacts in your CRM.</p>
<p>Prospects are now added as cleaner, more complete CRM contacts that are ready for outreach and automation.</p>
<h2>Richer contact details from business websites</h2>
<p>Prospecting now goes beyond Google Business Profile data.</p>
<p>When available in sub-account Prospecting, we automatically enrich a prospect by pulling phone numbers and email addresses from the business website. This helps you start with more complete CRM records from day one.</p>
<h2>Better CRM contact records</h2>
<p>New contacts created by Prospecting now include more useful information automatically, including:</p>
<ul>
<li>Contact source = Prospecting Tool</li>
<li>Prospect tags for workflows and segmentation</li>
<li>Phone number (and additional phone)</li>
<li>Email (and additional emails)</li>
<li>Prospect website URL</li>
<li>Address and location details (city, state, ZIP code, etc.)</li>
<li>Business information available during prospect creation</li>
</ul>
<p>This makes it easier to:</p>
<ul>
<li>Build automations</li>
<li>Trigger workflows</li>
<li>Filter Prospecting contacts</li>
</ul>
<h2>Control whether business points of contact are created</h2>
<p>A contact enrichment setting lets you decide whether Prospecting should look for additional points of contact (POCs), such as owners, managers, or other decision-makers, and create separate contacts for them.</p>
<p>If enabled:</p>
<ul>
<li>Prospecting searches for POCs and additional emails and phone numbers from websites and listings</li>
<li>Each POC found is created as its own CRM contact</li>
</ul>
<p>If disabled:</p>
<ul>
<li>Only the primary business contact is created from Google Business Profile data</li>
<li>This is useful if you want faster prospect creation or don’t need additional contacts</li>
</ul>
<h2>Fewer duplicate business contacts</h2>
<p>We also improved how contacts are created to reduce duplicates.</p>
<p>Previously, businesses could end up with multiple contacts when different emails or phone numbers were found.</p>
<p>Now:</p>
<ul>
<li>One primary business contact is created</li>
<li>Additional phone numbers and email addresses are added to the same contact record</li>
<li>Individual POCs are still created separately when found</li>
</ul>
<p>This results in a cleaner CRM with fewer duplicates while keeping valuable contact details.</p>
<h2>Why this matters</h2>
<ul>
<li>Cleaner CRM records</li>
<li>Better contact enrichment</li>
<li>More automation-ready data</li>
<li>Less duplicate cleanup</li>
<li>Easier outreach to both businesses and decision-makers</li>
</ul>
<p>Whether you’re creating one prospect or hundreds, Prospecting now produces CRM records that are more useful for sales, marketing, and automation.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;