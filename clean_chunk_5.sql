INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1216', 'Two-step checkout option for ecommerce stores', 'You can now choose between a one-step checkout and a two-step checkout in the store builder. What changed A new checkout type setting is available on the Checkout element. Available options: One-step checkout, Two-step checkout. How two-step checkout works Step 1: Customer enters...', '<p>You can now choose between a one-step checkout and a two-step checkout in the store builder.</p>
<h2>What changed</h2>
<ul>
<li>A new checkout type setting is available on the Checkout element.</li>
<li>Available options: One-step checkout, Two-step checkout.</li>
</ul>
<h2>How two-step checkout works</h2>
<ul>
<li><strong>Step 1:</strong> Customer enters contact details and shipping information.</li>
<li><strong>Step 2:</strong> Customer enters billing and payment details, reviews the order, and places the order.</li>
</ul>
<h2>Default behavior</h2>
<ul>
<li>One-step checkout remains the default.</li>
<li>Existing checkout pages continue to work as they do today.</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Open the store builder and edit the checkout page.</li>
<li>Select the Checkout element.</li>
<li>Open Form Options in the settings panel.</li>
<li>Select one-step checkout or two-step checkout.</li>
<li>Save and publish the page.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Two-step checkout can help capture contact and shipping details earlier in the process.</li>
<li>Customers can move to step 2 only after valid step 1 details are entered.</li>
<li>This setting applies to each Checkout element, so different pages can use different checkout types.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1236', 'Sub-account Snapshot Load History', 'Overview Sub-account Snapshot History provides a clear record of every snapshot that has been loaded into a sub-account. You can access this history from the Actions menu on the Sub-accounts page. What’s included A View Snapshot History option in the Actions menu next to Load Sna...', '<h2>Overview</h2>
<p>Sub-account Snapshot History provides a clear record of every snapshot that has been loaded into a sub-account. You can access this history from the Actions menu on the Sub-accounts page.</p>
<h2>What’s included</h2>
<ul>
<li>A <strong>View Snapshot History</strong> option in the Actions menu next to <strong>Load Snapshot</strong>.</li>
<li>A list of all snapshots that have been loaded into the sub-account.</li>
<li>Details for each snapshot, including every time that snapshot was applied.</li>
<li>Visibility into the assets included in each snapshot load (for example, workflows and calendars).</li>
</ul>
<h2>History entry fields</h2>
<ul>
<li>Who loaded the snapshot</li>
<li>When it was loaded</li>
<li>Snapshot version</li>
<li>Snapshot type (Template, Created, Imported, or Marketplace)</li>
</ul>
<h2>Why it matters</h2>
<p>This makes it easier to review account changes, support troubleshooting, and audit when and how snapshots were applied.</p>
<h2>What’s next</h2>
<p>Improvements such as search and filtering are planned to make snapshot history easier to navigate as your accounts grow.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:08.000Z'),
('wp-1256', 'Separate email templates for welcome badges and badges', 'Overview Leadli now supports separate email templates for Welcome Badge emails and Badge emails. This lets you customize the enrollment-triggered welcome badge email without changing other badge emails. Key highlights A new Welcome Badge Issued notification type, separate from Ba...', '<p><strong>Overview</strong></p>
<p>Leadli now supports separate email templates for Welcome Badge emails and Badge emails. This lets you customize the enrollment-triggered welcome badge email without changing other badge emails.</p>
<p><strong>Key highlights</strong></p>
<ul>
<li>A new <em>Welcome Badge Issued</em> notification type, separate from <em>Badge Issued</em></li>
<li>Dedicated email template settings for welcome badge emails in Client Portal email settings</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Adjust welcome badge messaging without affecting other badge emails</li>
<li>Clearer settings for certificate vs badge email types</li>
</ul>
<p><strong>Getting started</strong></p>
<ul>
<li>Open Client Portal → Email Settings</li>
<li>Find <em>Welcome Badge Issued</em> alongside <em>Badge Issued</em> and <em>Certificate Issued</em></li>
<li>Edit the welcome badge email template and mute settings as needed</li>
<li>Enrollment-triggered welcome badges will use the <em>Welcome Badge Issued</em> path automatically</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1255', 'Credential expiration options for certificates', 'Overview You can now set credential expiration for certificates and templates. Choose whether issued credentials never expire, expire on a fixed date, or expire after a set duration from the issue date. Key details Expiration options: Never, fixed date, or duration from the issue...', '<p><strong>Overview</strong></p>
<p>You can now set credential expiration for certificates and templates. Choose whether issued credentials never expire, expire on a fixed date, or expire after a set duration from the issue date.</p>
<p><strong>Key details</strong></p>
<ul>
<li>Expiration options: Never, fixed date, or duration from the issue date</li>
<li>Duration options: 3, 6, 9, 12, 24, or 36 months</li>
<li>Optional reminders can be sent before expiration using offsets you choose</li>
<li>Expiration timing is calculated with timezone awareness</li>
<li>Expiration settings are shown in certificate and template lists and in the configuration screens</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Set consistent expiration rules without manual follow-ups</li>
<li>Help recipients avoid unexpected expirations with advance reminders</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a certificate or credential template</li>
<li>Set the expiration rule (Never, fixed date, or duration from issue date)</li>
<li>Optionally configure reminder offsets</li>
<li>New credentials will store an expiration date based on your settings</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1254', 'Layers panel in the Certificate and Badge Builder', 'A Layers panel is now available in the Certificate and Badge Builder. It helps you manage stacking order, lock elements, and identify invalid custom-field placeholders before publishing. What’s included: A Layers tab in the builder sidebar showing the full stack order Select a la...', '<p>A Layers panel is now available in the Certificate and Badge Builder. It helps you manage stacking order, lock elements, and identify invalid custom-field placeholders before publishing.</p>
<p><strong>What’s included:</strong></p>
<ul>
<li>A Layers tab in the builder sidebar showing the full stack order</li>
<li>Select a layer from the list, and drag and drop to reorder</li>
<li>Lock and unlock layers (locked layers cannot be moved, resized, deleted, or edited with shortcuts)</li>
<li>Delete unlocked layers from the panel</li>
<li>Invalid custom-field placeholders are flagged</li>
<li>A manual save warning appears when invalid placeholders exist (auto-save behavior is unchanged)</li>
</ul>
<p><strong>How to use it:</strong></p>
<ul>
<li>Open the Certificate and Badge Builder</li>
<li>Open the Layers tab in the left sidebar</li>
<li>Select layers from the list, reorder as needed, lock to prevent changes, and delete to remove</li>
<li>Fix any invalid custom fields shown before publishing</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1253', 'Client Portal: File upload notifications for admins and users', 'Account admins and users can now receive in-app notifications when a client uploads a file through the client portal. What’s included In-app notifications for file uploads: When a contact uploads one or more files in Client Portal → Shared Documents , the relevant account admins ...', '<p>Account admins and users can now receive in-app notifications when a client uploads a file through the client portal.</p>
<h2>What’s included</h2>
<ul>
<li><strong>In-app notifications for file uploads:</strong> When a contact uploads one or more files in <strong>Client Portal → Shared Documents</strong>, the relevant account admins and users receive an in-app notification automatically.</li>
<li><strong>Upload limit:</strong> Clients can upload up to 10 files at a time.</li>
</ul>
<h2>Manage notification preferences</h2>
<p>Account admins can choose which staff members receive these notifications at the subaccount level.</p>
<ol>
<li>Go to <strong>Settings → My Staff</strong>.</li>
<li>Select a staff member.</li>
<li>Open <strong>Notification Settings</strong>.</li>
<li>Under <strong>Client Portal Notifications</strong>, enable or disable the option to notify when a contact uploads a file in the client portal.</li>
<li>Save your changes.</li>
</ol>
<h2>How it works</h2>
<ol>
<li>The client logs in to the client portal.</li>
<li>They open <strong>Shared Documents</strong>.</li>
<li>They select <strong>Share File</strong> and upload one or more files.</li>
<li>After the upload completes, the relevant admins and users receive an in-app notification.</li>
</ol>
<h2>Why this matters</h2>
<p>Uploaded documents often need timely follow-up, such as reviewing contracts, verifying documents, or completing onboarding steps. Notifications help teams respond sooner without checking the client portal manually.</p>
<h2>Notes</h2>
<ul>
<li>Notifications trigger only for uploads made in the client portal Shared Documents area.</li>
<li>Each staff member’s preferences are managed individually.</li>
<li>The only supported notification channel at this time is in-app notifications.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1252', 'Improved product sales in Forms and Surveys', 'Selling products in Forms and Surveys is now easier. The Sell Products element has a single payment configuration panel, so you can connect a payment provider and configure products in one place. This update also adds support for selecting price levels and product variants. What’...', '<p>Selling products in Forms and Surveys is now easier. The Sell Products element has a single payment configuration panel, so you can connect a payment provider and configure products in one place. This update also adds support for selecting price levels and product variants.</p>
<p><strong>What’s new</strong></p>
<ol>
<li>A unified payment configuration panel</li>
<li>Connect payment providers without leaving the builder</li>
<li>Support for product price level selection</li>
<li>Support for product variant selection</li>
</ol>
<p><strong>Key details</strong></p>
<ol>
<li>Configure products, pricing, and payment settings from one interface</li>
<li>Customers can choose from multiple price levels when available</li>
<li>Customers can select variants when variants are available</li>
<li>Selections are shown in the payment summary</li>
<li>Selections pass through to checkout, invoicing, and payment processing</li>
<li>Required selections are validated before submission</li>
<li>Existing payment settings remain supported</li>
</ol>
<p><strong>How it works</strong></p>
<ol>
<li>Add a Sell Products element to your Form or Survey.</li>
<li>Open the Payment panel.</li>
<li>Connect your payment provider if it is not already connected.</li>
<li>Select the products and configure available price levels and variants.</li>
<li>Customers choose their options before submitting.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>Existing Forms and Surveys continue to work as before.</li>
<li>Price level and variant selection are available for supported products with multi-price or variant setups.</li>
<li>No changes are made unless you update the payment configuration.</li>
<li>Supported on desktop and mobile.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1251', 'Generate submission documents for forms, surveys, and quizzes', 'Capturing responses is useful, and having them available as printable documents can be even more helpful. Leadli now includes a Generate submission document setting that automatically creates and stores PDF copies of every submission. What’s new A Generate submission document tog...', '<p>Capturing responses is useful, and having them available as printable documents can be even more helpful. Leadli now includes a <strong>Generate submission document</strong> setting that automatically creates and stores PDF copies of every submission.</p>
<p><strong>What’s new</strong></p>
<p>A <strong>Generate submission document</strong> toggle is available in the Settings panel for:</p>
<ul>
<li>Forms</li>
<li>Surveys</li>
<li>Quizzes</li>
</ul>
<p>When enabled, each new submission automatically generates a formatted PDF document.</p>
<p><strong>Key highlights</strong></p>
<ol>
<li>Automatically generates a printable PDF for every submission</li>
<li>Includes all questions and submitted responses</li>
<li>Captures submission details including:</li>
</ol>
<ul>
<li>Submission date and time</li>
<li>Form, Survey, or Quiz name</li>
<li>Contact information</li>
</ul>
<ol start="4">
<li>Automatically stores the document under:</li>
</ol>
<ul>
<li>Contacts → Documents → Forms</li>
<li>Contacts → Documents → Surveys</li>
<li>Contacts → Documents → Quizzes</li>
</ul>
<ol start="5">
<li>Automatically associates the document with the submitting contact</li>
<li>PDFs can be viewed, downloaded, and used throughout the CRM</li>
<li>Supported across desktop and mobile experiences</li>
</ol>
<p><strong>How it works</strong></p>
<ul>
<li>Open the settings for a Form, Survey, or Quiz.</li>
<li>Turn <strong>Generate submission document</strong> on.</li>
<li>Each new submission generates and stores a PDF document.</li>
<li>Access the document from the contact’s Documents section or in supported CRM workflows.</li>
</ul>
<p><strong>PDF naming convention</strong></p>
<ul>
<li><strong>Forms and Surveys:</strong> <code>[FormName]_[ContactName]_[YYYY-MM-DD_HHMM]</code></li>
<li><strong>Quizzes:</strong> <code>Result_[FormName]_[ContactName]_[YYYY-MM-DD_HHMM]</code></li>
</ul>
<p><strong>Notes</strong></p>
<ol>
<li>PDF generation is optional and controlled per Form, Survey, or Quiz.</li>
<li>Documents are organized into their respective folders (Forms, Surveys, or Quizzes).</li>
<li>Existing submissions are not affected; only new submissions generate documents after the setting is enabled.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1250', 'Course progress analytics has been rebuilt', 'Overview Course Progress Analytics has been rebuilt and is now available. It provides a faster and more reliable way to understand how learners engage with your courses. You can track completion trends, identify drop-offs, and review individual learner progress from one dashboard...', '<h2>Overview</h2>
<p>Course Progress Analytics has been rebuilt and is now available. It provides a faster and more reliable way to understand how learners engage with your courses. You can track completion trends, identify drop-offs, and review individual learner progress from one dashboard.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Unified dashboard</strong> with filters for course and enrollment date</li>
<li><strong>Key metrics</strong> including completion rate, average progress, and time to complete, with period-over-period comparisons</li>
<li><strong>Learner journey funnel</strong> showing Enrolled → Started → Completed</li>
<li><strong>Member progress table</strong> with enrollment, activity, completion, and session details</li>
<li><strong>CSV export</strong> for filtered reports, with email delivery for larger exports</li>
</ul>
<h2>Faster performance</h2>
<ul>
<li>About 43% faster page loads</li>
<li>About 90% less data downloaded</li>
<li>A smoother, more responsive analytics experience</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Measure learner engagement in one place</li>
<li>Spot learners who may need attention before they disengage</li>
<li>Make data-driven improvements to your courses</li>
<li>Export insights to share with your team</li>
</ul>
<h2>Availability</h2>
<p>Enable <strong>New Course Progress Analytics</strong> in <strong>Labs</strong>, then access it via <strong>Memberships → Courses → Analytics → Course Progress</strong>.</p>
<h2>Coming next</h2>
<p>Assessment Analytics and Revenue Analytics are planned next to round out the courses analytics experience.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1249', 'Inline validation errors in the schema markup JSON view', 'Overview The Schema Markup JSON view in the Website and Funnel Builder now shows validation errors directly on the exact lines that need attention. Previously, JSON validation errors appeared as a general alert, which made it harder to find the source of the problem. Now, each er...', '<h2>Overview</h2>
<p>The Schema Markup JSON view in the Website and Funnel Builder now shows validation errors directly on the exact lines that need attention.</p>
<p>Previously, JSON validation errors appeared as a general alert, which made it harder to find the source of the problem. Now, each error is marked inline with a tooltip that explains the issue.</p>
<h2>What’s improved</h2>
<ul>
<li>Validation errors appear inline next to the exact JSON line causing the issue</li>
<li>Hovering over an error marker shows a plain-language explanation</li>
<li>Works for nested fields and more complex schema structures</li>
<li>Supports multi-schema (@graph) JSON, with errors routed to the correct schema block</li>
<li>Errors clear one by one as each issue is fixed</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open Website Builder or Funnel Builder</li>
<li>Open the page editor</li>
<li>Go to SEO and AI search optimization &gt; Schema Markup</li>
<li>Open Add/Edit Schema and switch to JSON view</li>
<li>Select Validate and Save to see inline error markers</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Makes schema errors easier to find and fix</li>
<li>Reduces guesswork when editing large or complex JSON-LD scripts</li>
<li>Helps you save valid schema faster</li>
<li>Improves the editing experience for advanced schema use cases</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Works across Website Builder and Funnel Builder</li>
<li>Supports common schema types, including Product, Organization, FAQ, LocalBusiness, Article, Recipe, and Event</li>
<li>Fully supports multi-schema (@graph) payloads</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1248', 'Updated placeholder images in the Store Builder', 'Summary We updated the placeholder images used across Ecommerce Store pages and elements in the Page Builder. The new illustration-style placeholders make the editor look cleaner and more consistent, and they help avoid confusion that can happen when realistic product images appe...', '<h2>Summary</h2>
<p>We updated the placeholder images used across Ecommerce Store pages and elements in the Page Builder. The new illustration-style placeholders make the editor look cleaner and more consistent, and they help avoid confusion that can happen when realistic product images appear in placeholders.</p>
<h2>Where you will see the updates</h2>
<ul>
<li>Product Listing, Product Detail, Cart, Checkout, and Thank You pages</li>
<li>Featured Product, Featured Products, Upsell, and Collection elements</li>
</ul>
<h2>Other improvements</h2>
<p>We also standardized placeholder text (for example, <strong>Product title</strong> and <strong>Collection title</strong>) and improved previews in the builder by showing:</p>
<ul>
<li>Subscription and Free Trial badges below the price on product cards</li>
<li>A product image placeholder for collections without an image (instead of a gray placeholder)</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Admin Portal → Settings → Labs</strong>.</li>
<li>Search for <strong>Page Builder: New Image Placeholders</strong>.</li>
<li>Turn the feature <strong>On</strong>.</li>
<li>Reload the Page Builder to see the updated placeholders.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This is a visual-only update. Layouts, functionality, and live store content are not changed.</li>
<li>This only affects placeholder images shown when no product or collection is connected.</li>
<li>The Labs setting is enabled per sub-account and can be turned off at any time to restore the original placeholders.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1247', 'New templates are now available in Leadli', 'We’ve added new web templates to help you launch pages and campaigns faster. These templates are fully customizable and designed to keep your workflow simple so you can focus on your audience and results. New templates included Website templates (1) Beauty & Fashion (1) Social te...', '<p>We’ve added new web templates to help you launch pages and campaigns faster. These templates are fully customizable and designed to keep your workflow simple so you can focus on your audience and results.</p>
<h3>New templates included</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Beauty &amp; Fashion (1)</li>
</ul>
<h4>Social templates (4)</h4>
<ul>
<li>Real Estate (2)</li>
<li>Automotive (2)</li>
</ul>
<h4>Facebook ad templates (2)</h4>
<ul>
<li>Travel &amp; Hospitality: Travel Blogger</li>
<li>Creative: Architectural Design</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Other: Retirement Living Community</li>
<li>Medical: Cosmetic Medical Spa</li>
<li>Marketing Agency: Affiliate Marketing Services</li>
<li>Legal: Debt Relief Attorney</li>
<li>Insurance: Travel Coverage</li>
</ul>
<h4>LinkedIn ad templates (5)</h4>
<ul>
<li>Business Coaching &amp; Consulting: Investment Advisor</li>
<li>Marketing Agency: Social Networking Services</li>
<li>Finance: Bookkeeper</li>
<li>Marketing Agency: Public Relations Firm</li>
<li>Insurance: Health Insurance</li>
</ul>
<h4>Workflow templates (3)</h4>
<ul>
<li>Lead Generation &amp; Nurturing: Voicemail Drop Follow-Up</li>
<li>Industry-specific: Open House Follow-Up</li>
<li>Industry-specific: Buyer Search Drip</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Travel &amp; Hospitality: Boat Tour Agency</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1246', 'Expanded permissions for meetings, services, and rentals', 'Overview We have expanded and improved Roles & Permissions to provide a consistent permission model across Meetings, Services, and Rentals . The existing permissions now extend to Services and Rentals. You can configure more granular permissions for agency and account admins and ...', '<h2>Overview</h2>
<p>We have expanded and improved <strong>Roles &amp; Permissions</strong> to provide a consistent permission model across <strong>Meetings, Services, and Rentals</strong>.</p>
<p>The existing permissions now extend to Services and Rentals. You can configure more granular permissions for <strong>agency and account admins and users</strong>, making it easier to control what each team member can view and manage across all scheduling modules.</p>
<h2>What’s new</h2>
<ul>
<li>The existing permission model used for Meetings now applies to Services and Rentals.</li>
<li>Permissions now cover:</li>
</ul>
<ol>
<li><strong>Appointments and bookings</strong> across Meetings, Services, and Rentals.</li>
<li><strong>Groups and categories</strong> across Meetings, Services, and Rentals.</li>
<li><strong>Setup</strong> for calendars, services, and rental listings.</li>
</ol>
<ul>
<li>Added <strong>Manage associated resources</strong> to control access to locations, staff, resources, add-ons, and related components.</li>
<li>Added <strong>Manage preferences and global settings</strong> to control access to module-level global settings and preferences.</li>
</ul>
<h2>How it works</h2>
<p>Each module follows the same permission structure:</p>
<ul>
<li><strong>View Calendars</strong> – Access Meetings, Services, or Rentals.</li>
<li><strong>Manage setup</strong> – Manage calendars, services, or rental listings.</li>
<li><strong>Manage appointments</strong> – Manage appointments and bookings across all verticals.</li>
<li><strong>Manage groups and categories</strong> – Manage meeting groups, service categories, and rental categories.</li>
<li><strong>Manage associated resources</strong> – Manage locations, staff, resources, add-ons, and other associated components.</li>
<li><strong>Manage preferences and global settings</strong> – Manage vertical-level global settings and preferences.</li>
</ul>
<p>Administrators can mix and match these permissions to create role-specific access for each team member.</p>
<h2>How to set it up</h2>
<h3>Agency view</h3>
<p>Navigate to: <strong>Settings → Team → Select Team Member → Roles &amp; Permissions → Calendars</strong></p>
<h3>Account view</h3>
<p>Navigate to: <strong>Settings → My Staff → Select Team Member → Roles &amp; Permissions → Calendars</strong></p>
<p>Configure the required View and Manage permissions, then click Save.</p>
<h2>Why this matters</h2>
<ul>
<li>Provides a consistent permissions experience across Meetings, Services, and Rentals.</li>
<li>Gives administrators more granular control over what each team member can manage.</li>
<li>Makes it easier to assign role-specific responsibilities without granting unnecessary access.</li>
<li>Improves security and scalability as teams and operations grow.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1245', 'New templates are now available in Leadli', 'New templates have been added to help you build websites, funnels, and email campaigns faster. They are designed to be easy to customize and ready to use. What’s included Website templates (1) Real Estate (1) Social templates (4) Other (2) Medical (2) Facebook ad templates (5) Ot...', '<p>New templates have been added to help you build websites, funnels, and email campaigns faster. They are designed to be easy to customize and ready to use.</p>
<h3>What’s included</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Real Estate (1)</li>
</ul>
<h4>Social templates (4)</h4>
<ul>
<li>Other (2)</li>
<li>Medical (2)</li>
</ul>
<h4>Facebook ad templates (5)</h4>
<ul>
<li>Other (1)</li>
<li>Insurance (1)</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Home Services: Bathroom Remodel Contractor</li>
<li>Health &amp; Wellness: Health Club</li>
<li>Finance: Accounting Bookkeeper</li>
<li>Creative: Mobile DJ</li>
<li>Business Coaching &amp; Consulting: Personal Development Coach</li>
</ul>
<h4>LinkedIn templates (2)</h4>
<ul>
<li>Creative (1)</li>
<li>Real Estate (1)</li>
</ul>
<h4>Lead generation and nurturing templates</h4>
<ul>
<li>Facebook Lead Ad Auto-Responder</li>
<li>Property Inquiry Follow-Up</li>
<li>Home Valuation Funnel</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Restaurant &amp; Bar: Donut Shop</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1244', 'Targeted edits in the Leadli AI Builder', 'Overview The AI Builder now follows targeted edit instructions more precisely. You can name the specific actions or triggers you want changed, and it will update only those items while leaving the rest of the workflow untouched. You can also apply the same change across multiple ...', '<h2>Overview</h2>
<p>The AI Builder now follows targeted edit instructions more precisely. You can name the specific actions or triggers you want changed, and it will update only those items while leaving the rest of the workflow untouched. You can also apply the same change across multiple actions in one instruction.</p>
<h2>What’s new</h2>
<ul>
<li><strong>More precise scoping:</strong> Specify which actions or triggers to change (all, a set number, or only specific ones) and the AI Builder applies updates only to that set.</li>
<li><strong>Bulk copy updates:</strong> Update email, SMS, or multi-channel message copy across multiple actions in a single pass.</li>
<li><strong>Bulk pipeline stage changes:</strong> Swap pipeline stages across all or selected actions and triggers at once.</li>
<li><strong>Bulk sender identity updates:</strong> Set From Name and From Email across all or selected email actions in one instruction.</li>
<li><strong>Targeted copy editing at scale:</strong> Provide exact copy for a subset of messages (for example, 20 out of 50), and the AI Builder updates only that subset.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open the AI assistant in the sidebar within the workflow builder.</li>
<li>Describe the change and its scope (for example, “Set the From Name to Aviv in all email actions” or “Update the SMS copy in only the first two actions”).</li>
<li>Review the preview, then save.</li>
</ol>
<h2>Why this matters</h2>
<p>Editing effort no longer scales with workflow size. For larger workflows, this reduces manual action-by-action updates and helps ensure changes apply only where intended.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1243', 'Prospect AI now includes an activity center and pipeline integration', 'We updated the Prospect AI experience to make it easier to see what your AI sales agents are doing, what they found, and what is happening in the background. What’s new Updated AI agent cards AI agent cards now show key details at a glance: Total prospects discovered Last success...', '<p>We updated the Prospect AI experience to make it easier to see what your AI sales agents are doing, what they found, and what is happening in the background.</p>
<h2>What’s new</h2>
<h3>Updated AI agent cards</h3>
<p>AI agent cards now show key details at a glance:</p>
<ul>
<li>Total prospects discovered</li>
<li>Last successful run</li>
<li>Next scheduled run</li>
<li>Agent description and specialization</li>
<li>Quick access to view all prospects found by that agent</li>
</ul>
<h3>New agent workspace</h3>
<p>When you open an AI agent, you will now land on a workspace with two views:</p>
<ul>
<li><strong>Summary</strong>: configuration, prospect statistics, criteria, next scheduled run, and a link to discovered prospects</li>
<li><strong>Activity</strong>: complete execution history, previous runs, upcoming schedules, and success/failure logs</li>
</ul>
<h3>Agent activity center</h3>
<p>You can now review what an agent has been doing, including:</p>
<ul>
<li>When it last ran</li>
<li>When it is scheduled to run next</li>
<li>How many prospects were found</li>
<li>Which business categories were discovered</li>
<li>Historical execution logs</li>
</ul>
<p>If no prospects are found, Prospect AI will explain why and suggest changes such as adjusting search radius, conversion score filters, and rating requirements.</p>
<h3>Dashboard metrics and faster navigation</h3>
<p>The Prospect AI dashboard includes quick totals (agents, active agents, prospects discovered, and monthly lead usage) plus search to help you find and manage specific agents.</p>
<h3>Native CRM pipeline integration</h3>
<p>Prospect AI can now place newly discovered prospects directly into your CRM pipeline. When configuring an agent, you can select the pipeline and stage where new prospects should be added.</p>
<h2>Why this matters</h2>
<p>These updates make Prospect AI easier to manage across multiple agents, with clearer visibility into performance and easier ways to review and organize discovered prospects.</p>
<p>If you have feedback or ideas, share them in your ideas portal.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1242', 'Jira integration for Leadli workflows: triggers and actions', 'Leadli workflows now include a native Jira integration. You can trigger automations when Jira issues are created or updated, and you can also take actions in Jira from a workflow. This integration supports common issue lifecycle tasks, including creating and updating issues, link...', '<p>Leadli workflows now include a native Jira integration. You can trigger automations when Jira issues are created or updated, and you can also take actions in Jira from a workflow.</p>
<p>This integration supports common issue lifecycle tasks, including creating and updating issues, linking issues, adding comments and watchers, attaching files, logging work, and moving issues to a sprint.</p>
<p><strong>Triggers (Jira → Workflows)</strong></p>
<ul>
<li>New issue</li>
<li>Updated issue</li>
</ul>
<p><strong>Actions (Workflows → Jira)</strong></p>
<ul>
<li>Discovery</li>
<li>Find users</li>
<li>Find projects</li>
<li>Find issues</li>
<li>Create issue</li>
<li>Update issue</li>
<li>Add comment to issue</li>
<li>Add watcher to issue</li>
<li>Add attachment to issue</li>
<li>Add work log to issue</li>
<li>Link issue</li>
<li>Move issue to sprint</li>
</ul>
<p><strong>Setup</strong></p>
<p>Connect Jira using OAuth, then use the triggers and actions in any workflow.</p>
<p><strong>Steps</strong></p>
<ul>
<li>Open the Workflow Builder and add a Jira trigger or action.</li>
<li>Click <em>Connect your account</em>.</li>
<li>Enter a friendly label (for example, “Engineering Jira” or “Support Jira”) and the email address for the Jira account.</li>
<li>Approve the requested Jira permissions in Atlassian.</li>
<li>Return to the Workflow Builder and confirm the connection shows as connected.</li>
<li>Select the target Jira Cloud site for each step (required for Create issue and used as a filter on triggers).</li>
</ul>
<p><strong>Examples</strong></p>
<ul>
<li><strong>Notify a customer when an issue is resolved:</strong> Updated issue (status = Done) → Find contact → Send a resolution message that includes a fix summary.</li>
<li><strong>Link related issues automatically:</strong> New issue → Find issues (by shared reference) → Link issue (for example, “relates to” or “duplicates”).</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1241', 'Edit service bookings after payment', 'You can now edit both paid and unpaid service bookings without canceling and recreating the appointment. This lets you make changes while keeping the booking, order, and payment details in sync. What’s included Edit paid and unpaid service bookings. Add or remove services from an...', '<p>You can now edit both paid and unpaid service bookings without canceling and recreating the appointment. This lets you make changes while keeping the booking, order, and payment details in sync.</p>
<h3>What’s included</h3>
<ul>
<li>Edit paid and unpaid service bookings.</li>
<li>Add or remove services from an existing appointment.</li>
<li>Add, update, or remove add-ons.</li>
<li>Change the assigned staff member.</li>
<li>Apply, update, or remove coupons.</li>
<li>Update appointment details without recreating the booking.</li>
</ul>
<h3>Payment updates stay accurate</h3>
<ul>
<li>Each edit recalculates the booking total.</li>
<li>The appointment reflects the current payment status (additional payment required, fully paid, or refund due).</li>
<li>If a refund is due, you can process it from the appointment details.</li>
<li>If a refund is in progress, editing is temporarily disabled until it completes. You can still reschedule the appointment during this time.</li>
</ul>
<h3>Order management</h3>
<ul>
<li>Service bookings remain linked to their order.</li>
<li>When you edit a booking, the existing order is updated instead of creating a new one.</li>
</ul>
<h3>Mobile app</h3>
<p>Editing service bookings in the mobile app is scheduled to roll out during the week of July 20.</p>
<h3>How to use it</h3>
<ol>
<li>Open an existing service booking.</li>
<li>Select <strong>Edit</strong>.</li>
<li>Make changes (services, add-ons, staff member, coupons, or other details).</li>
<li>Save.</li>
<li>Review the updated payment status and process a refund if needed.</li>
</ol>
<h3>Why this matters</h3>
<ul>
<li>Handle customer requests after booking without starting over.</li>
<li>Keep payments, orders, and appointment details aligned automatically.</li>
<li>Reduce manual cleanup and save staff time.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1240', 'Improved Forms, Surveys, and Quizzes Submission Page (HighRise Migration)', 'Summary The submission page for Forms, Surveys, and Quizzes has been migrated to the HighRise framework. This update modernizes the underlying architecture to improve maintainability and support future enhancements while keeping the existing submission experience the same. What c...', '<p><strong>Summary</strong></p>
<p>The submission page for Forms, Surveys, and Quizzes has been migrated to the HighRise framework. This update modernizes the underlying architecture to improve maintainability and support future enhancements while keeping the existing submission experience the same.</p>
<p><strong>What changed</strong></p>
<ol>
<li>The Forms, Surveys, and Quizzes submission page is now built on the HighRise framework.</li>
<li>The user experience remains consistent to avoid disruption.</li>
<li>The underlying architecture has been updated to improve scalability and simplify future updates.</li>
</ol>
<p><strong>Key points</strong></p>
<ol>
<li>Improved stability and performance as part of the HighRise migration.</li>
<li>A modernized codebase to support faster maintenance and development.</li>
<li>No changes to submission workflows—users can continue submitting as usual.</li>
<li>Sets a foundation for upcoming improvements and feature delivery.</li>
</ol>
<p><strong>How it works</strong></p>
<p>From an end-user perspective, the submission process is unchanged. Behind the scenes, the page is now powered by the HighRise framework for a more robust and maintainable implementation.</p>
<p><strong>Notes</strong></p>
<ol>
<li>No action is required from customers or end users.</li>
<li>Existing functionality and submission flows continue to work as expected.</li>
<li>This update focuses on infrastructure improvements to support future platform growth.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1239', 'Goal action now supports user replies', 'Summary The Goal action now supports User Replied as a goal event. This lets a workflow jump a contact directly to a goal step when a team member replies in a conversation, so your automation can stop or change course once a person has engaged. How it works In a Goal action, choo...', '<p><strong>Summary</strong></p>
<p>The <strong>Goal</strong> action now supports <strong>User Replied</strong> as a goal event. This lets a workflow jump a contact directly to a goal step when a team member replies in a conversation, so your automation can stop or change course once a person has engaged.</p>
<p><strong>How it works</strong></p>
<p>In a <strong>Goal</strong> action, choose <strong>User Replied</strong> as the goal event. When a user sends a reply in a supported conversation channel, the contact skips ahead to the Goal step and bypasses any steps in between.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Add a <strong>Goal</strong> action to your workflow.</li>
<li>Select <strong>User Replied</strong> as the goal event.</li>
<li>Set the actions you want to run after the Goal is reached.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>This helps prevent contacts from receiving extra automated messages after a team member has already replied. It can reduce duplicate communication and support a smoother handoff from automation to human-led conversations.</p>
<p><strong>Examples</strong></p>
<ul>
<li>If a lead is in a 7-day nurture sequence and a sales rep replies on Day 2, the workflow can immediately reach the <strong>User Replied</strong> goal, skip the remaining messages, and move the contact to the next step.</li>
<li>If a support workflow is sending reminders while waiting for an agent response, the workflow can stop reminders as soon as the agent replies and the contact reaches the <strong>User Replied</strong> goal.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>The goal is achieved only when a <strong>user</strong> sends a reply to the contact.</li>
<li>Contacts jump to the Goal step and skip intermediate workflow actions.</li>
<li>This is useful for ending nurture sequences, preventing duplicate messaging, and moving from automation to human conversations.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1238', 'Wait step now supports waiting for a team member reply', 'Summary The Wait action now supports User Replied as a wait condition. In addition to waiting for a contact to reply, you can keep the contact waiting until a team member responds in the conversation before continuing to the next step. With the timeout option, you can set up SLA ...', '<p><strong>Summary</strong></p>
<p>The Wait action now supports <em>User Replied</em> as a wait condition. In addition to waiting for a contact to reply, you can keep the contact waiting until a team member responds in the conversation before continuing to the next step. With the timeout option, you can set up SLA workflows that escalate if a user reply is not sent within your target response time.</p>
<p><strong>How it works</strong></p>
<p>When you configure a Wait action, select <em>User Replied</em> as the wait condition and (optionally) set a timeout. The workflow pauses until a user replies or the timeout is reached—whichever happens first. If a reply is detected, the workflow continues immediately. If the timeout expires first, you can route the contact through escalation steps such as notifications, reassignments, or reminders.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add a Wait action to your workflow.</li>
<li>Select <em>User Replied</em> and set an optional timeout.</li>
<li>Choose what should happen after a user replies or when the timeout is reached.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>Response-time SLAs are important for sales and support teams. This update helps you track first responses, reduce manual monitoring, and escalate conversations when response targets are missed.</p>
<p><strong>Examples</strong></p>
<ul>
<li><strong>Support:</strong> Wait up to 30 minutes for <em>User Replied</em>. If an agent responds within the SLA, the workflow continues. If the timeout is reached first, notify a supervisor and reassign the conversation.</li>
<li><strong>Sales:</strong> Wait 15 minutes for a representative to reply to a new lead. If no reply is sent before the timeout, create an urgent task and notify the sales manager.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>The contact resumes as soon as a user sends a reply, or when the configured timeout is reached.</li>
<li>If no timeout is configured, the workflow waits until a user reply is received.</li>
<li>This is useful for first-response SLAs, escalation workflows, and internal response-time automations.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1237', 'New workflow trigger: User Replied', 'Overview You can now start workflows when a team member replies to a contact in a conversation. This trigger runs when a user sends a reply, which helps you automate internal steps after your team responds. How it works Add the User Replied trigger to a workflow and set any condi...', '<p><strong>Overview</strong></p>
<p>You can now start workflows when a team member replies to a contact in a conversation. This trigger runs when a user sends a reply, which helps you automate internal steps after your team responds.</p>
<p><strong>How it works</strong></p>
<p>Add the <strong>User Replied</strong> trigger to a workflow and set any conditions you need. When a user replies through a supported conversation channel, the workflow starts and can continue with actions like notifications, tagging, assignments, or follow-ups.</p>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to <strong>Automations &gt; Workflows</strong> and add the <strong>User Replied</strong> trigger.</li>
<li>Configure the trigger filters for your workflow.</li>
<li>Publish the workflow so it runs when a user replies.</li>
</ol>
<p><strong>Example uses</strong></p>
<ul>
<li>When a sales rep replies to a lead’s SMS, move the opportunity to a “Contacted” stage and notify a manager.</li>
<li>When a support agent replies to an email, apply a “Support Responded” tag and create a follow-up task for 48 hours later.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This trigger activates only when a user sends a reply, not when a contact responds.</li>
<li>Use it to automate internal workflows based on team activity.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1276', 'Redeem gift cards when recording or collecting offline payments', 'Summary You can now redeem a customer’s gift card when you record or collect payments inside Leadli. This makes gift card redemption consistent across customer checkout and payments initiated by your team. Where gift cards can be redeemed Gift card redemption is supported in thes...', '<h2>Summary</h2>
<p>You can now redeem a customer’s gift card when you record or collect payments inside Leadli. This makes gift card redemption consistent across customer checkout and payments initiated by your team.</p>
<h2>Where gift cards can be redeemed</h2>
<p>Gift card redemption is supported in these payment flows:</p>
<ul>
<li>Orders → Record Payment → Charge a Card</li>
<li>Invoices → Record Payment → Charge a Card</li>
<li>Contacts → Charge Now</li>
<li>Contacts → Create Subscription</li>
<li>Subscriptions → Create Subscription</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Enter the gift card code, validate it, and apply the available balance during payment.</li>
<li>If the gift card covers the full amount, the payment is completed using the gift card.</li>
<li>If the gift card covers part of the amount, the gift card is applied first and the remaining balance is charged to the saved payment method.</li>
<li>Invalid, expired, or zero-balance gift cards show validation messages.</li>
</ul>
<h2>Payment visibility</h2>
<p>When a gift card is redeemed:</p>
<ul>
<li>Transaction details show the amount paid using the gift card.</li>
<li>Split payments show the gift card amount separately from the remaining payment method.</li>
<li>The related gift card order updates the remaining balance after a successful redemption.</li>
</ul>
<h2>Where to find it</h2>
<p>You can use gift cards while collecting payments in:</p>
<ul>
<li>Payments → Orders → Record Payment</li>
<li>Payments → Invoices → Record Payment</li>
<li>Contacts → Charge Now</li>
<li>Contacts → Create Subscription</li>
<li>Payments → Subscriptions → Create Subscription</li>
</ul>
<h2>Notes</h2>
<p>For “Create Subscription”, gift cards are not currently redeemable on future-dated or scheduled subscriptions.</p>
<h2>What’s next</h2>
<ul>
<li>Gift card redemption while collecting payments through Calendars</li>
<li>Gift card redemption through POS</li>
<li>User permissions for gift card redemption</li>
<li>Validity settings on individual gift card orders</li>
<li>Voiding or cancelling issued gift card orders</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1275', 'Smarter drip campaigns with review date range targeting', 'What’s new You can now set an exact review date range when creating a drip campaign, instead of targeting reviews by a fixed review age. Before you launch the campaign, you’ll see: The total number of eligible reviews Whether any reviews match your selected filters Validation tha...', '<p><strong>What’s new</strong></p>
<p>You can now set an exact <strong>review date range</strong> when creating a drip campaign, instead of targeting reviews by a fixed review age.</p>
<p><strong>Before you launch the campaign, you’ll see:</strong></p>
<ul>
<li>The total number of eligible reviews</li>
<li>Whether any reviews match your selected filters</li>
<li>Validation that prevents creating empty campaigns</li>
</ul>
<p>Existing age-based campaigns will continue to work without any changes.</p>
<p><strong>Why this helps</strong></p>
<ul>
<li>Target specific groups of historical reviews more precisely</li>
<li>Preview the campaign’s impact before launching</li>
<li>Avoid empty campaigns and unnecessary processing</li>
<li>Clear review backlogs more efficiently using Reviews AI</li>
</ul>
<p><strong>How to enable</strong></p>
<p>Go to Reputation &rarr; Settings &rarr; Reviews AI &rarr; Drip Campaign.</p>
<p>If you have feedback, please contact the support team.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1274', 'Communities UI: a new experience in the unified client portal and GoKollab', 'Communities has been rebuilt inside the unified client portal and GoKollab to provide a faster, smoother experience for members and admins. Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings in one portal, without unnecessar...', '<p>Communities has been rebuilt inside the unified client portal and GoKollab to provide a faster, smoother experience for members and admins.</p>
<p>Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings in one portal, without unnecessary reloads or context switching.</p>
<h2>What’s included</h2>
<h3>A unified Communities and Courses experience</h3>
<p>Members can move between community discussions and courses without leaving the unified portal.</p>
<ul>
<li>Courses open in the Learning tab without loading the legacy application.</li>
<li>Members can continue from the lesson where they last stopped.</li>
<li>Progress is kept when switching between courses and discussions.</li>
<li>Communities, Courses, Dashboard, and Billing use consistent navigation.</li>
<li>Page transitions are faster and more responsive.</li>
</ul>
<h3>Updated discussions</h3>
<p>The discussion feed has been redesigned to make content easier to find, read, and engage with.</p>
<ul>
<li>Comments, replies, and attachments display directly in the feed.</li>
<li>Post and comment editors are simpler and easier to use.</li>
<li>Members can react to posts and comments with multiple reaction types.</li>
<li>Post nudges can encourage participation when engagement is low.</li>
<li>Search can cover posts, comments, and members from one place.</li>
<li>User profiles have a cleaner layout with clickable group details.</li>
<li>Profile popovers provide a quick member overview.</li>
<li>Creating community events follows a more streamlined flow.</li>
</ul>
<h3>More control for community admins</h3>
<p>Admins can manage posts directly from the discussion feed using the post menu. Available actions include:</p>
<ul>
<li>Pin or unpin posts</li>
<li>Move posts between channels</li>
<li>Disable comments</li>
<li>Ban users</li>
<li>Download video or audio recordings</li>
<li>Report or delete posts</li>
<li>Additional post-level moderation actions</li>
</ul>
<h3>Improved community settings</h3>
<p>Community settings are now organized into dedicated sections, making groups easier to configure and manage.</p>
<p>Admins can more easily:</p>
<ul>
<li>Update community details and descriptions</li>
<li>Set public or private group access</li>
<li>Manage member invitation permissions</li>
<li>Enable mandatory member profiles</li>
<li>Configure branding and membership questions</li>
<li>Select from predefined community themes</li>
<li>Customize the appearance of the community</li>
</ul>
<h2>How to enable</h2>
<p>In the Leadli app, go to <strong>Client Portal Dashboard</strong> and select <strong>Enable</strong> to activate the new experience.</p>
<p>No migration is required. Existing community content, members, courses, and settings will carry over automatically.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1273', 'Choose your sender for review requests', 'Update You can set a default phone number (SMS and WhatsApp) and email address for review requests at the location level. The selected sender will be used automatically for: Manual review requests Campaigns Workflows Why this is useful Send requests from a familiar number or emai...', '<p><strong>Update</strong></p>
<p>You can set a default phone number (SMS and WhatsApp) and email address for review requests at the location level. The selected sender will be used automatically for:</p>
<ul>
<li>Manual review requests</li>
<li>Campaigns</li>
<li>Workflows</li>
</ul>
<p><strong>Why this is useful</strong></p>
<ul>
<li>Send requests from a familiar number or email address.</li>
<li>Keep a consistent customer experience.</li>
<li>Avoid confusion caused by automatically selected sender identities.</li>
<li>Improve the professionalism of your review requests.</li>
</ul>
<p>To configure this, go to Reputation &rarr; Settings &rarr; Email Review Request (or Phone/WhatsApp Review Request).</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1272', 'Communities in the unified client portal and GoKollab', 'Communities has been rebuilt inside the unified client portal and GoKollab. This provides a faster, more seamless experience for members and admins. Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings within one branded porta...', '<p>Communities has been rebuilt inside the unified client portal and GoKollab. This provides a faster, more seamless experience for members and admins.</p>
<p>Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings within one branded portal, without unnecessary reloads or context switching.</p>
<h2>What’s new</h2>
<p><strong>A unified Communities and Courses experience</strong></p>
<p>Members can move between community discussions and courses without leaving the unified portal.</p>
<ul>
<li>Courses open within the Learning tab without reloading the legacy application.</li>
<li>Members can resume from the lesson where they previously stopped.</li>
<li>Progress is preserved when switching between courses and discussions.</li>
<li>Communities, Courses, Dashboard, and Billing share consistent navigation.</li>
<li>Page transitions are faster and smoother.</li>
</ul>
<p><strong>A redesigned discussion experience</strong></p>
<p>The discussion feed has been redesigned to make content easier to discover, read, and engage with.</p>
<ul>
<li>Comments, replies, and attachments are shown directly in the feed.</li>
<li>Post and comment editors are simpler and more intuitive.</li>
<li>Members can react to posts and comments with six different reactions.</li>
<li>Post nudges help encourage participation when engagement is low.</li>
<li>Unified search lets members search posts, comments, and members from one place.</li>
<li>User profiles have a cleaner layout with clickable group details.</li>
<li>Profile popovers provide a quick member overview without leaving the page.</li>
<li>Creating community events is more streamlined.</li>
</ul>
<h2>More control for community admins</h2>
<p>Admins can manage posts directly from the discussion feed using the enhanced three-dot menu.</p>
<p><strong>Available actions include:</strong></p>
<ul>
<li>Pin or unpin posts</li>
<li>Move posts between channels</li>
<li>Disable comments</li>
<li>Ban users</li>
<li>Download video or audio recordings</li>
<li>Report or delete posts</li>
<li>Access additional post-level moderation actions</li>
</ul>
<h2>Improved community settings</h2>
<p>Community settings have been reorganized into dedicated sections, making groups easier to configure and manage.</p>
<p><strong>Admins can more easily:</strong></p>
<ul>
<li>Update community details and descriptions</li>
<li>Configure public or private group access</li>
<li>Manage member invitation permissions</li>
<li>Enable mandatory member profiles</li>
<li>Configure branding and membership questions</li>
<li>Select from predefined community themes</li>
<li>Customize the appearance of the community</li>
</ul>
<h2>How to enable the new experience</h2>
<p><strong>Navigate to:</strong></p>
<p><strong>Leadli App → Client Portal Dashboard</strong></p>
<p>Select <strong>Enable</strong> to activate the new experience.</p>
<p>No migration is required. Existing community content, members, courses, and settings will automatically carry over.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1271', 'Client Portal: File share notifications', 'Contacts are now notified as soon as an admin shares a file with them in the Client Portal. Notifications are available in the Client Portal (web) and in the white-label mobile app, so shared documents are less likely to be missed. Contacts can also manage these notifications in ...', '<p>Contacts are now notified as soon as an admin shares a file with them in the Client Portal. Notifications are available in the Client Portal (web) and in the white-label mobile app, so shared documents are less likely to be missed. Contacts can also manage these notifications in their Client Portal preferences.</p>
<h2>What’s new</h2>
<p><strong>File share notifications for contacts</strong></p>
<p>When an admin shares a file with a contact through the Client Portal, the contact automatically receives a notification that a new file is available.</p>
<p><strong>Manage notification preferences</strong></p>
<p>Contacts can choose whether to receive notifications for shared files by updating their notification preferences within the Client Portal.</p>
<p><strong>Available across platforms</strong></p>
<ul>
<li>Client Portal (web)</li>
<li>White-label mobile app</li>
</ul>
<p><strong>Improved client communication</strong></p>
<p>Clients stay informed when documents, contracts, invoices, or other files are shared. This helps reduce missed updates and improves the overall client experience.</p>
<h2>How to use</h2>
<p><strong>Share a file with a contact</strong></p>
<ul>
<li>Navigate to a contact.</li>
<li>Open the <em>Files</em> section from the right-side navigation panel.</li>
<li>Upload or select a file.</li>
<li>Enable the <em>Upload to Client Portal</em> option.</li>
<li>Save the file.</li>
</ul>
<p>After the file is shared, the contact receives an in-app notification and (if enabled) a push notification.</p>
<p><strong>Manage notification preferences (client)</strong></p>
<ul>
<li>Log in to the Client Portal.</li>
<li>Go to <em>Settings</em> → <em>Notification Preferences</em>.</li>
<li>Enable or disable in-app and push notifications.</li>
<li>Save your preferences.</li>
</ul>
<h2>Why this feature</h2>
<p>Businesses often share important files with clients through the Client Portal, but clients did not always have an automatic notification when a new file was shared. File share notifications help clients see updates right away, reduce missed communications, and support a smoother client experience.</p>
<h2>Notes</h2>
<ul>
<li>Notifications are triggered when an admin shares a file with a contact through the Client Portal.</li>
<li>Contacts can manage notification preferences from the Client Portal settings.</li>
<li>Supported notification channels: in-app notifications and push notifications.</li>
<li>Available on both the Client Portal (web) and the white-label mobile app.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1270', 'Better Facebook profile detection in Leadli Prospecting and Marketing Audit Reports', 'We have improved how Prospecting and Marketing Audit Reports detect a business’s Facebook profile. Before this update, Facebook profile detection relied mostly on public sources. That sometimes caused missing or incorrect profiles, and there was no direct way to correct them, whi...', '<p>We have improved how Prospecting and Marketing Audit Reports detect a business’s Facebook profile.</p>
<p>Before this update, Facebook profile detection relied mostly on public sources. That sometimes caused missing or incorrect profiles, and there was no direct way to correct them, which reduced report accuracy.</p>
<p>This release improves detection by using multiple data sources and adds an option to manually update a prospect’s Facebook profile when needed.</p>
<h2>What’s new</h2>
<p><strong>Multi-source Facebook profile detection</strong></p>
<p>Facebook profiles are now identified using multiple sources rather than a single public lookup. Detection can use information from:</p>
<ul>
<li>The prospect’s website</li>
<li>The prospect’s local listing profiles</li>
<li>Internal data partners</li>
</ul>
<p>This improves Facebook profile coverage and accuracy across Prospecting and Marketing Audit Reports.</p>
<h2>Edit or add a Facebook profile at any time</h2>
<p>If a profile is missing or incorrect, you can now manually update the Facebook profile URL for a prospect.</p>
<p><strong>How to update it:</strong></p>
<ol>
<li>Open a prospect in the Prospecting Tool</li>
<li>Go to the Social Profiles tab</li>
<li>Add or update the Facebook profile URL</li>
<li>Click the update button at the bottom to save</li>
<li>The report will refresh based on the new URL (this can take 1–2 minutes)</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>More accurate Facebook profile detection</li>
<li>More reliable Social Presence and Marketing Audit Reports</li>
<li>Manual control when public data is incomplete or outdated</li>
<li>Better consistency in future audits</li>
</ul>
<p>This update improves the overall quality of Marketing Audit Reports while giving teams a straightforward way to correct Facebook profile information when needed.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1269', 'Email actions are now available in company and custom object workflows in Leadli', 'Overview Email actions are now available in Leadli company workflows and custom object workflows. What’s new Before this update, workflow email actions were only available in contact workflows. You can now send automated emails from: Company workflows Custom object workflows Key ...', '<p><strong>Overview</strong></p>
<p>Email actions are now available in Leadli company workflows and custom object workflows.</p>
<p><strong>What’s new</strong></p>
<p>Before this update, workflow email actions were only available in contact workflows. You can now send automated emails from:</p>
<ul>
<li>Company workflows</li>
<li>Custom object workflows</li>
</ul>
<p><strong>Key benefits</strong></p>
<ul>
<li>Automate emails from company and custom object workflows.</li>
<li>Notify associated contacts without extra workflow steps or manual triggering.</li>
<li>Support more custom business processes.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Go to <strong>Settings → Labs</strong> and enable <strong>Email Action in Company &amp; Custom Object Workflows</strong>.</li>
<li>Open a company or custom object workflow.</li>
<li>Add an action and select <strong>Send Email</strong>.</li>
<li>Choose the association label(s) for the contacts who should receive the email.</li>
<li>For custom object workflows, choose whether to email the earliest associated contact, the most recently associated contact, or all associated contacts.</li>
<li>Add the email subject and content, then save and publish the workflow.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Emails are sent using the domain configured for Bulk Email.</li>
<li>You can select up to 10 association labels for a single email action.</li>
<li>If a contact matches multiple selected labels, they will receive only one email.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1268', 'Social Planner: Post Sync for LinkedIn and TikTok (Beta)', 'This feature is currently available in beta. We are introducing Post Sync for LinkedIn and TikTok (beta), which lets you automatically import published posts into the Social Planner. After you enable it, recent posts are synced into the planner so you can review past content, mon...', '<p>This feature is currently available in beta.</p>
<p>We are introducing Post Sync for LinkedIn and TikTok (beta), which lets you automatically import published posts into the Social Planner.</p>
<p>After you enable it, recent posts are synced into the planner so you can review past content, monitor performance, and manage publishing history alongside scheduled posts in one place.</p>
<h3>What’s new</h3>
<p><strong>LinkedIn Post Sync (beta)</strong></p>
<p>With LinkedIn Post Sync, you can:</p>
<ul>
<li>View historical LinkedIn posts alongside scheduled content</li>
<li>Track engagement metrics including reactions, comments, and shares</li>
<li>Manage LinkedIn content from a unified publishing calendar</li>
</ul>
<p><strong>TikTok Post Sync (beta)</strong></p>
<p>You can now:</p>
<ul>
<li>Import published TikTok videos into the Social Planner</li>
<li>View historical TikTok content in one place</li>
<li>Track likes, comments, shares, and views</li>
<li>Manage TikTok alongside your other connected social accounts</li>
<li>Automatic daily insight refresh</li>
</ul>
<p>Engagement metrics for LinkedIn and TikTok are refreshed every 24 hours to keep analytics up to date while staying within platform API limits.</p>
<h3>How to use this feature</h3>
<ul>
<li>Go to Marketing → Social Planner → Settings</li>
<li>Connect your LinkedIn Page or TikTok account</li>
<li>Enable Post Sync</li>
<li>Allow the initial sync to complete</li>
<li>View your synced posts and performance metrics inside Social Planner</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Centralize published content across more social platforms</li>
<li>Access historical posts without manual imports</li>
<li>Monitor engagement from one unified dashboard</li>
<li>Simplify reporting for agencies and businesses</li>
<li>Reduce the need to switch between native social apps</li>
</ul>
<h3>Notes</h3>
<p><strong>LinkedIn</strong></p>
<ul>
<li>Beta supports LinkedIn Organization Pages only</li>
<li>Personal LinkedIn profiles are not supported due to API limitations</li>
<li>Reactions, comments, and shares refresh every 24 hours</li>
<li>PDF, Event, Poll, and Article posts are synced but do not support in-app previews</li>
<li>Mentions, hashtag highlighting, and tagged-user details are not available due to LinkedIn API limitations</li>
<li>Deleted LinkedIn posts remain visible in the Social Planner since sync is one-way (LinkedIn → Social Planner)</li>
</ul>
<p><strong>TikTok</strong></p>
<ul>
<li>Beta supports both TikTok Personal and Business accounts</li>
<li>Likes, comments, shares, and views refresh every 24 hours</li>
<li>Videos are played using TikTok’s hosted player</li>
<li>Synced TikTok videos cannot be cloned into new posts due to API restrictions</li>
<li>Location tags, tagged users, and music details are not available through the TikTok API</li>
<li>Deleted TikTok posts remain visible in the Social Planner since sync is one-way (TikTok → Social Planner)</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1267', 'Choose the right AI Employee plan for your SaaS clients', 'Update When you add the AI Employee add-on to one of your SaaS plans, you can now choose which AI Employee plan to include: Growth or Unlimited. In the SaaS Configurator, you can compare pricing and features for each option before selecting one. Your selection is then shown on th...', '<p><strong>Update</strong></p>
<p>When you add the AI Employee add-on to one of your SaaS plans, you can now choose which AI Employee plan to include: Growth or Unlimited. In the SaaS Configurator, you can compare pricing and features for each option before selecting one. Your selection is then shown on the main plan screen along with the cost.</p>
<p><strong>Why this matters</strong></p>
<p>Previously, AI Employee was a single add-on option. Now you can choose the tier that matches what you want to offer, price your SaaS plans more accurately, and make sure clients start on the right plan.</p>
<p><strong>Notes</strong></p>
<ul>
<li>This is available in the SaaS Configurator add-on flow anywhere AI Employee can be added to a plan.</li>
<li>If AI Employee was already enabled on a plan, confirm the displayed tier is correct. If not, reselect the intended plan.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1266', 'Add llms.txt support to your Leadli sites', 'Overview Leadli Funnels & Websites supports managing an llms.txt file for each connected domain. You can edit the file in the Edit Domain settings, and it will be served automatically at https://<your-domain>/llms.txt . Why this matters Some AI crawlers and site audit tools check...', '<p><strong>Overview</strong></p>
<p>Leadli Funnels &amp; Websites supports managing an <code>llms.txt</code> file for each connected domain. You can edit the file in the Edit Domain settings, and it will be served automatically at <code>https://&lt;your-domain&gt;/llms.txt</code>.</p>
<p><strong>Why this matters</strong></p>
<p>Some AI crawlers and site audit tools check for an <code>llms.txt</code> file at the root of a domain. Adding one can help AI agents better understand your site’s purpose and structure and can support newer audit checks related to agent-based browsing.</p>
<p><strong>Key highlights</strong></p>
<ul>
<li><strong>Hosted automatically:</strong> Your <code>llms.txt</code> file is available at <code>https://&lt;your-domain&gt;/llms.txt</code></li>
<li><strong>Edit in-app:</strong> Update the file directly from the Edit Domain settings</li>
<li><strong>Per-domain control:</strong> Maintain different <code>llms.txt</code> content for each connected domain</li>
</ul>
<p><strong>How to access</strong></p>
<ol>
<li>Open <strong>Funnels &amp; Websites</strong> in your sub-account.</li>
<li>Go to <strong>Settings</strong> → <strong>Domains</strong>.</li>
<li>Select a domain and open <strong>Edit Domain</strong>.</li>
<li>Find the <strong>llms.txt</strong> section, add or update the content, then save.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li><code>llms.txt</code> is an emerging standard intended to provide guidance to large language model crawlers, similar in concept to <code>robots.txt</code>.</li>
<li>Adoption has been increasing across the web, and it is appearing more frequently in modern site audit checks.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1265', 'AI Studio form submitted workflow trigger', 'Summary The new AI Studio Form Submitted trigger lets you start workflows when visitors submit connected forms on AI Studio websites. This provides a dedicated way to automate follow-up actions for AI Studio leads, such as sending notifications, emails, SMS messages, tags, or cre...', '<p><strong>Summary</strong></p>
<p>The new AI Studio Form Submitted trigger lets you start workflows when visitors submit connected forms on AI Studio websites. This provides a dedicated way to automate follow-up actions for AI Studio leads, such as sending notifications, emails, SMS messages, tags, or creating opportunities.</p>
<p>AI Studio form submissions will continue to work with the existing External Tracking functionality as well.</p>
<p><strong>How it works</strong></p>
<p>Add the AI Studio Form Submitted trigger to a workflow.</p>
<p>When a visitor submits a connected AI Studio form, the workflow can start automatically.</p>
<p>Add the actions needed to follow up with the contact. The existing External Tracking script and trigger will continue to work alongside this new trigger.</p>
<p><strong>Important note: How existing forms can use this trigger</strong></p>
<p>Forms connected before this trigger was released need to refresh their tracking setup:</p>
<ol>
<li>Open the AI Studio project.</li>
<li>In AI Studio, run: “Re-trigger form integration.”</li>
<li>Connect the form to CRM tracking again.</li>
<li>Publish the project.</li>
<li>Submit a test form entry.</li>
<li>Refresh the workflow builder and configure the trigger.</li>
</ol>
<p><strong>Learn more</strong>: <a href="https://help.leadli.com/support/solutions/articles/155000008298-ai-studio-form-submitted-workflow-trigger/" rel="ugc nofollow noopener noreferrer" target="_blank">AI Studio Form Submitted Workflow Trigger</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1264', 'Prompt Optimizer for Conversations AI: test and improve your Leadli chat agents', 'What’s new Prompt Optimizer now works with Conversations AI so you can test how your agent handles realistic customer chats before you publish changes. It creates customer scenarios, runs real conversations against a cloned copy of your agent, evaluates the results, and suggests ...', '<p><strong>What’s new</strong></p>
<p>Prompt Optimizer now works with Conversations AI so you can test how your agent handles realistic customer chats before you publish changes.</p>
<p>It creates customer scenarios, runs real conversations against a cloned copy of your agent, evaluates the results, and suggests prompt updates to improve performance. Your production agent is not changed until you review and apply the updated prompt.</p>
<p><strong>How it works</strong></p>
<p><strong>1) Configure: build a test plan</strong></p>
<ul>
<li>Auto-generated scenarios based on your agent prompt, language, knowledge base, appointment setup, and actions.</li>
<li>Reuse scenarios from earlier runs.</li>
<li>Multi-language support for scenarios, evaluations, and optimized prompts.</li>
<li>Usage visibility for daily free messages used and remaining, plus a pre-run checklist.</li>
</ul>
<p><strong>2) Test: run real chats and track actions</strong></p>
<ul>
<li>Sends customer-style messages and waits for your agent’s actual replies.</li>
<li>Tracks key actions such as appointment booking, handover, workflow triggers, bot transfer, stop bot, auto follow-up, contact field updates, and knowledge base queries.</li>
<li>Provides full transcripts with scoring and clear notes on what passed or failed.</li>
<li>Runs in the background so you can return when results are ready.</li>
</ul>
<p><strong>3) Improve: update prompts with guided optimization</strong></p>
<ul>
<li>Improvise: analyzes failed chats, identifies likely causes, proposes an updated prompt, and can retest.</li>
<li>Auto Optimize: runs multiple attempts until you reach a target accuracy.</li>
<li>Prompt diff viewer to review changes before applying.</li>
<li>Highlights the best variation based on accuracy.</li>
</ul>
<p><strong>Safe by design</strong></p>
<ul>
<li>Tests run against a cloned agent so your live agent is not modified during testing.</li>
<li>Temporary test contacts can be created for runs and cleaned up automatically to avoid cluttering your CRM.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Evaluation scores can vary between runs; use them as directional guidance.</li>
<li>Real actions can execute during testing, so use test calendars and workflows when appropriate.</li>
<li>Long or stuck conversations time out automatically so runs complete.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1263', 'Threads comment management is now available in Social Planner', 'Comment Management now supports Threads. You can view, manage, and reply to Threads comments directly from Social Planner. What’s new Manage Threads comments in one place View and reply to Threads comments from Social Planner without switching tools. Rich reply support Reply usin...', '<p>Comment Management now supports Threads. You can view, manage, and reply to Threads comments directly from Social Planner.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Manage Threads comments in one place</strong><br />View and reply to Threads comments from Social Planner without switching tools.</li>
<li><strong>Rich reply support</strong><br />Reply using supported capabilities such as text, images, emojis, and location attachments (based on Threads platform support).</li>
<li><strong>Real-time comment sync</strong><br />Comments stay synchronized with Threads using webhook-based updates so you see the latest conversations.</li>
<li><strong>Unified engagement inbox</strong><br />Threads appears alongside other supported networks such as Facebook, Instagram, LinkedIn, TikTok, Communities, and Bluesky.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Go to Marketing → Social Planner → Comment Management.</li>
<li>Select your Threads account.</li>
<li>Open the Comments tab to view and reply.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Manage Threads conversations without switching platforms.</li>
<li>Respond faster from a centralized inbox.</li>
<li>Keep engagement consistent across multiple social channels.</li>
<li>Support team productivity with unified comment management.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Existing Threads users may need to reconnect their account once to enable additional permissions required for Comment Management.</li>
<li>Synchronization is near real-time.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1262', 'Email AI: Smart countdown timer creation and suggestions', 'Email AI can now identify when an email would benefit from a live countdown timer and help you add one while creating or updating a template. What changed Countdown timer tools were added to Email AI so it can suggest and insert a timer when it is relevant. How it works Email AI ...', '<p>Email AI can now identify when an email would benefit from a live countdown timer and help you add one while creating or updating a template.</p>
<h3>What changed</h3>
<p>Countdown timer tools were added to Email AI so it can suggest and insert a timer when it is relevant.</p>
<h3>How it works</h3>
<p>Email AI looks for time-sensitive messages such as flash sales, product launches, webinars, and expiring offers. It will suggest a timer only when the email has a clear deadline or when a user explicitly asks for one.</p>
<ul>
<li>You can select an existing timer.</li>
<li>You can create a new timer.</li>
</ul>
<p>When creating a new timer, Email AI collects the end date, style, and destination link, and then embeds the selected timer into the generated email.</p>
<p>If the timer prompt is skipped or times out, Email AI falls back gracefully and continues without interruption.</p>
<h3>Benefits</h3>
<ul>
<li>Makes time-sensitive campaigns easier to create.</li>
<li>Helps add urgency without manual timer configuration.</li>
<li>Reuses existing timers when available.</li>
<li>Avoids showing irrelevant suggestions.</li>
<li>Creates more context-aware promotional emails.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1261', 'PIT token limit per subaccount increased', 'Overview The PIT token limit per subaccount has been increased to support more integrations and workflows. Previously, each subaccount could create up to 5 PIT tokens. This update raises the limit to 20 PIT tokens per subaccount, making it easier to manage API access. What’s impr...', '<p><strong>Overview</strong></p>
<p>The PIT token limit per subaccount has been increased to support more integrations and workflows.</p>
<p>Previously, each subaccount could create up to 5 PIT tokens. This update raises the limit to 20 PIT tokens per subaccount, making it easier to manage API access.</p>
<p><strong>What’s improved</strong></p>
<ul>
<li>PIT token limit increased from 5 to 20 per subaccount</li>
<li>More integrations can use dedicated PIT tokens</li>
<li>More flexibility when managing API access</li>
</ul>
<p><strong>How to access</strong></p>
<ul>
<li>Open the PIT token management section in the relevant subaccount.</li>
<li>Create and manage up to 20 PIT tokens.</li>
<li>Review existing tokens.</li>
<li>Generate additional tokens as needed.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Supports a larger number of integrations and workflows</li>
<li>Reduces the need to reuse tokens across multiple services</li>
<li>Makes API access management more scalable</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1260', 'New Leadli templates are available', 'We have released new templates to support common marketing needs such as websites, funnels, and email campaigns. These templates are customizable and designed to help you build faster while keeping a consistent look and feel. New templates included Website templates (2) Health & ...', '<p>We have released new templates to support common marketing needs such as websites, funnels, and email campaigns. These templates are customizable and designed to help you build faster while keeping a consistent look and feel.</p>
<p><strong>New templates included</strong></p>
<p><strong>Website templates (2)</strong></p>
<ul>
<li>Health &amp; Wellness (1)</li>
<li>Home Services (1)</li>
</ul>
<p><strong>Social templates (8)</strong></p>
<ul>
<li>Health &amp; Wellness (2)</li>
<li>Business Coaching and Consulting (2)</li>
<li>Creative (2)</li>
<li>Travel &amp; Hospitality (2)</li>
</ul>
<p><strong>Facebook ad templates (2)</strong></p>
<ul>
<li>Finance (1)</li>
<li>Insurance (1)</li>
</ul>
<p><strong>Google ad templates (5)</strong></p>
<ul>
<li>Beauty &amp; Fashion: Makeup Artist</li>
<li>Automotive: Auto Body Repair</li>
<li>Travel &amp; Hospitality: B&amp;B</li>
<li>Restaurant &amp; Bar: Brewpub</li>
<li>Real Estate: Home Inspector</li>
</ul>
<p><strong>LinkedIn ad templates (5)</strong></p>
<ul>
<li>Insurance: Life Insurance</li>
<li>Business Coaching &amp; Consulting: Lifestyle Coaching</li>
<li>Finance: Accounting Firm</li>
<li>Insurance: Home Insurance</li>
<li>Creative: Video Production &amp; Editing</li>
</ul>
<p><strong>Workflow templates (1)</strong></p>
<ul>
<li>Industry-Specific: Client Onboarding Workflow</li>
</ul>
<p><strong>Updated template (1)</strong></p>
<p>One existing template set has been refreshed with a modern website design, a matching funnel, updated forms, and updated email templates for a more consistent customer journey. We also improved pipeline setup, naming, and automation organization.</p>
<ul>
<li>Home Services: Plumber</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1259', 'Automatic schema markup when publishing Websites, Funnels, and Webinars', 'Overview There is a new setting called Auto-generate schema . When it is enabled, it creates schema markup for any page that is published without schema. Previously, schema had to be added manually in the editor, one page at a time. If a page was published without schema, it coul...', '<p><strong>Overview</strong></p>
<p>There is a new setting called <strong>Auto-generate schema</strong>. When it is enabled, it creates schema markup for any page that is published without schema.</p>
<p>Previously, schema had to be added manually in the editor, one page at a time. If a page was published without schema, it could miss structured data that helps search and AI discovery.</p>
<p>With this update, when the setting is on and you publish a page that does not have schema:</p>
<ul>
<li>Schema markup is generated automatically in the background</li>
<li>Publishing is not delayed; generation runs in parallel</li>
<li>Existing schema is not overwritten</li>
<li>It works across page publishing methods (builder publish, save-triggered publish, and version-history publish)</li>
<li>It is available for Websites, Funnels, and Webinars</li>
</ul>
<p>You can find it under <strong>Settings</strong> in the <strong>SEO &amp; AEO</strong> section:</p>
<ul>
<li>Auto-generate schema — “Automatically add schema markup to pages that don’t have it when published.”</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Schema markup can improve rich results in Google and helps AI answer engines understand your pages. Auto-generation ensures new pages are published with structured data without extra manual steps.</p>
<p><strong>Impact on existing users</strong></p>
<ul>
<li>Existing schema is preserved and is not overwritten.</li>
<li>For assets created before this release, the setting defaults to OFF until you enable it.</li>
<li>For assets created on or after this release, the setting defaults to ON for new pages published without schema.</li>
<li>You can turn it on or off per Website, Funnel, or Webinar and then save.</li>
</ul>
<p><strong>Action required</strong></p>
<p>No action is required for existing assets. If you do not want new assets to auto-generate schema, turn the toggle off under Settings → SEO &amp; AEO and select Save.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1258', 'Save progress for forms, surveys, and quizzes', 'You can now let respondents save their progress on multi-step forms, surveys, and quizzes, then come back later to finish. What changed A new Save exit confirmation toggle is available in the Settings tab for: Forms Surveys Quizzes When enabled, progress is saved automatically if...', '<p>You can now let respondents save their progress on multi-step forms, surveys, and quizzes, then come back later to finish.</p>
<h3>What changed</h3>
<p>A new <strong>Save exit confirmation</strong> toggle is available in the <strong>Settings</strong> tab for:</p>
<ul>
<li>Forms</li>
<li>Surveys</li>
<li>Quizzes</li>
</ul>
<p>When enabled, progress is saved automatically if someone leaves before submitting.</p>
<h3>Key highlights</h3>
<ul>
<li>Saves progress for multi-step forms, surveys, and quizzes</li>
<li>Turn the feature on or off using the Save exit confirmation toggle</li>
<li>Respondents can return later and continue where they left off</li>
<li>A resume window lets them continue or start over</li>
<li>The resume window matches your existing form, survey, or quiz styling (button color and fonts)</li>
<li>Works on desktop and mobile</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Open the form, survey, or quiz editor.</li>
<li>Go to <strong>Settings</strong> and enable <strong>Save exit confirmation</strong>.</li>
<li>If a respondent closes the browser, refreshes, or navigates away before submitting, their progress is saved.</li>
<li>When they return to the same form, survey, or quiz, they can resume where they left off or start a new submission.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>This is available for multi-step forms, surveys, and quizzes.</li>
<li>Nothing changes in existing assets until you enable the toggle.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1257', 'Automatically associate CRM records in Leadli workflows', 'You can now use the Associate Records workflow action to automatically connect records in your CRM when field values match. This action works with Contacts, Companies, Opportunities, and Custom Objects (depending on the workflow type and which associations are set up in your sub-...', '<p>You can now use the <strong>Associate Records</strong> workflow action to automatically connect records in your CRM when field values match.</p>
<p>This action works with Contacts, Companies, Opportunities, and Custom Objects (depending on the workflow type and which associations are set up in your sub-account).</p>
<p><strong>What’s new</strong></p>
<ul>
<li>Find records using one or more field-based filters</li>
<li>Use merge fields from the enrolled record as filter values</li>
<li>Choose whether to associate the earliest created record, the latest created record, or all matching records</li>
<li>Apply an existing association label</li>
<li>Create associations between different objects</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Add the Associate Records action to a Contact, Company, or Custom Object workflow</li>
<li>Select the object that contains the records you want to associate</li>
<li>Add filters to identify matching records</li>
<li>Choose how to handle multiple matches</li>
<li>Select an association label (when required)</li>
<li>Save and publish the workflow</li>
</ol>
<p>When you add multiple filters, a record must meet every condition to qualify.</p>
<p><strong>Example</strong></p>
<p>A real estate agency can automatically associate a buyer with Property records that match their preferred city, property type, and number of bedrooms. This helps teams keep associations up to date without doing it manually.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Reduces manual record association</li>
<li>Helps keep CRM associations accurate</li>
<li>Makes it easier to build workflows that use associated records</li>
<li>Supports automation across standard objects and Custom Objects</li>
</ul>
<p><strong>Availability</strong></p>
<p>Associate Records is currently available through Labs. To enable it, go to: Settings → Labs → Associate Records &#8211; Workflow Action.</p>
<p><strong>Learn more:</strong> <a href="https://help.Leadli.com/support/solutions/articles/155000007718-workflow-action-associate-records" rel="ugc nofollow noopener noreferrer" target="_blank">Help article</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1294', 'Set which devices ring for web dialer calls', 'You can now choose which devices ring and which devices handle call audio in the Leadli web dialer. How to use it Open Audio Settings from the gear icon in the dialer header. Select your main speaker for call audio. Optionally choose an additional device to ring at the same time ...', '<p><strong>You can now choose which devices ring and which devices handle call audio in the Leadli web dialer.</strong></p>
<p><strong>How to use it</strong></p>
<ol>
<li>Open <strong>Audio Settings</strong> from the gear icon in the dialer header.</li>
<li>Select your main speaker for call audio.</li>
<li>Optionally choose an additional device to ring at the same time (for example, a headset and your computer speakers).</li>
<li>Select the microphone you want to use.</li>
<li>Use the test controls to preview your speaker and ring device, and confirm input using the microphone volume meter.</li>
</ol>
<hr>
<p><strong>Enable in Labs</strong></p>
<ol>
<li>Go to <strong>Agency Settings</strong> &gt; <strong>Labs</strong>.</li>
<li>Find <strong>Audio settings for voice calls</strong>.</li>
<li>Choose <strong>Activate Feature</strong>.</li>
<li>Select the locations you want and enable it.</li>
</ol>
<p><strong>Note:</strong> Safari supports only one audio output device. Use Chrome or Edge if you need full control over device selection.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1293', 'Google Business Profile post sync in Social Planner (beta)', 'Managing your Google Business Profile content is now simpler. With Google Business Profile (GBP) Post Sync, you can import existing GBP posts into Social Planner and manage both past and newly published content from one dashboard. Availability This feature is available through La...', '<p>Managing your Google Business Profile content is now simpler.</p>
<p>With Google Business Profile (GBP) Post Sync, you can import existing GBP posts into Social Planner and manage both past and newly published content from one dashboard.</p>
<p><strong>Availability</strong></p>
<p>This feature is available through Labs. Enable it to start syncing your Google Business Profile posts.</p>
<p><strong>What’s included</strong></p>
<ul>
<li>Sync existing GBP posts (standard, event, offer, and call-to-action posts).</li>
<li>Keep important post details such as summary text, media, call-to-action buttons, event information, and offer details.</li>
<li>View synced Google Business Profile posts alongside scheduled and published posts from other social channels in your content calendar.</li>
<li>Automatic daily refresh of supported posts and engagement data every 24 hours, with clear sync status and reconnect prompts if needed.</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Marketing → Social Planner → Settings.</li>
<li>Enable Google Business Profile Post Sync.</li>
<li>Allow the initial sync to complete.</li>
<li>View your synced posts inside Social Planner.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Manage Google Business Profile content alongside your other social channels.</li>
<li>Import historical posts without manual recreation.</li>
<li>Improve reporting with a more complete content history.</li>
<li>Simplify content management for businesses and agencies with multiple locations.</li>
<li>Save time by keeping everything in one place.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Must be enabled per location through Labs.</li>
<li>By default, posts from the last 30 days are synced. If fewer posts exist, older posts (up to 365 days) are imported automatically.</li>
<li>Sync runs every 24 hours and is not real-time.</li>
<li>Cloning is supported for text-only and single-image posts only.</li>
<li>Multi-image and video posts cannot be cloned due to composer limitations.</li>
<li>Engagement metrics are limited to data supported by Google Business Profile APIs.</li>
<li>Deleted Google Business Profile posts continue to appear in Social Planner because sync is one-way (GBP → Social Planner).</li>
<li>Supported only for Google Business Profile accounts.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1292', 'WhatsApp message statistics in workflows', 'You can now review how your WhatsApp messages perform directly in your workflows. WhatsApp statistics are available inside workflows so you can track delivery results for each message and review individual message details in one place. What is included Message status tracking: Se...', '<p>You can now review how your WhatsApp messages perform directly in your workflows. WhatsApp statistics are available inside workflows so you can track delivery results for each message and review individual message details in one place.</p>
<h2>What is included</h2>
<ul>
<li><strong>Message status tracking:</strong> See totals for sent, pending, delivered, read, and failed messages for a workflow WhatsApp action, based on the statuses provided by Meta.</li>
<li><strong>Date range filtering:</strong> Choose a specific time period to review performance for a campaign or send window.</li>
<li><strong>Individual message details:</strong> Open a message to view recipient information and timestamps.</li>
<li><strong>Export:</strong> Export statistics for reporting or deeper analysis.</li>
<li><strong>Refresh:</strong> Refresh the data to pull the latest message statuses.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Automation</strong> and select the workflow that contains a WhatsApp action.</li>
<li>Open the <strong>WhatsApp</strong> action and select <strong>Statistics</strong>.</li>
<li>Review the summary metrics and open a message to see details.</li>
<li>Use the date range selector to adjust the reporting window.</li>
<li>Select <strong>Export</strong> if you want to download the results.</li>
</ol>
<h2>Why this matters</h2>
<p>WhatsApp delivery is not guaranteed. Messages can remain pending, fail, or go undelivered. Having delivered, read, and failed counts inside the workflow that sent the messages helps you identify issues quickly and export details when needed.</p>
<h2>Resources</h2>
<ul>
<li>WhatsApp workflow statistics support article (Leadli)</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1291', 'WhatsApp: AI template generator for Leadli', 'AI template generator for WhatsApp You can create WhatsApp message templates from a plain description inside Leadli. Describe your use case (for example, a payment reminder or a delivery update) and the AI drafts a template aligned with Meta''s rules, including Leadli variables yo...', '<h2>AI template generator for WhatsApp</h2>
<p>You can create WhatsApp message templates from a plain description inside Leadli. Describe your use case (for example, a payment reminder or a delivery update) and the AI drafts a template aligned with Meta&#8217;s rules, including Leadli variables you can personalize before submitting.</p>
<p>Describe what you want to say and get a drafted, pre-categorized template you can review and submit instead of building it field by field.</p>
<h2>What&#8217;s new</h2>
<p><strong>AI drafting from a plain description</strong></p>
<ul>
<li><strong>New entry point:</strong> Under <strong>Create Template</strong>, choose <strong>AI Template</strong>.</li>
<li><strong>Describe, don&#8217;t build:</strong> Provide your scenario and audience, and the AI drafts the template with Leadli variables ready to personalize.</li>
</ul>
<p><strong>Built-in categorization and checks</strong></p>
<ul>
<li><strong>Automatic categorization:</strong> The AI classifies the draft as Utility, Marketing, or Authentication (the same categories Meta uses for its messaging rules).</li>
<li><strong>Inline validation:</strong> While you draft, you get recommendations on length, formatting, and policy fit before you submit to Meta.</li>
</ul>
<p><strong>Fully editable before submit</strong></p>
<ul>
<li><strong>You stay in control:</strong> Edit the copy, variables, and calls to action, then submit to Meta for approval when it looks right.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>CRM → WhatsApp → Templates → Create Template → AI Template</strong>.</li>
<li>Describe your use case and audience.</li>
<li>Review the AI-drafted template, its category, and the validation hints.</li>
<li>Optional: edit copy, variables, and calls to action.</li>
<li>Submit for Meta approval.</li>
</ol>
<h2>Why this matters</h2>
<p>Meta applies different messaging rules by template category. For example, Utility templates are not subject to the same per-user marketing frequency limits that Marketing templates are. Getting the category and formatting right before you submit can reduce surprises during approval and sending. The AI template generator includes categorization and flags formatting or policy issues while you write so you can review earlier in the process.</p>
<p><strong>Open CRM → WhatsApp → Templates, choose AI Template, and draft your next template from a description.</strong></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1290', 'WhatsApp template management redesign', 'We rebuilt the WhatsApp Templates and Template Folders experience on our latest design system. This gives you a cleaner and faster way to manage templates at scale, including finding, organizing, and restructuring your template library. What''s new Refresh without a full page relo...', '<p>We rebuilt the WhatsApp Templates and Template Folders experience on our latest design system. This gives you a cleaner and faster way to manage templates at scale, including finding, organizing, and restructuring your template library.</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Refresh without a full page reload:</strong> Use the refresh button to update templates and folders in place. This also pulls the latest Meta approval statuses without reloading the page.</li>
<li><strong>Folder navigation:</strong> Open a folder and work inside it. Inside a folder, the Templates view shows only that folder&#8217;s templates, and the Folders view shows only its subfolders. The templates list also shows where each template is located.</li>
<li><strong>Filters and sorting:</strong> Filter by Status, Language, Last edited, and Category. Sort by Template name, Language, Category, Last edited, or Status.</li>
<li><strong>Flexible reorganization:</strong> Move folders and templates across levels. You can nest folders, move them back to a parent level, and move templates between folders.</li>
<li><strong>Updated interface:</strong> The templates and folders screens have been rebuilt for a cleaner, more consistent experience.</li>
</ul>
<h2>Why this matters</h2>
<p>As WhatsApp usage grows, template libraries can become hard to manage. Filters, sorting, clear folder navigation, and visibility into where templates live make it easier to find and reorganize templates, especially on larger accounts.</p>
<p>Open WhatsApp Templates to try filtering, sorting, or moving a folder. Updates appear immediately in the new structure.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1289', 'WhatsApp templates: cleaner selection, RTL editing, and compliance visibility', 'We released several improvements to WhatsApp templates to make selection more reliable, support right-to-left (RTL) languages while editing, and show compliance status before a send fails. What’s changed Cleaner, faster template selection Approved-only dropdowns: When you select ...', '<p>We released several improvements to WhatsApp templates to make selection more reliable, support right-to-left (RTL) languages while editing, and show compliance status before a send fails.</p>
<h2>What’s changed</h2>
<h3>Cleaner, faster template selection</h3>
<ul>
<li><strong>Approved-only dropdowns:</strong> When you select a WhatsApp template in Conversations, Bulk Actions, or Workflow WhatsApp actions, you will now only see approved templates.</li>
<li><strong>Faster loading:</strong> Template pickers load faster by fetching lightweight data instead of full template documents.</li>
</ul>
<h3>RTL editing in the CRM</h3>
<ul>
<li><strong>Native RTL support:</strong> Create and edit right-to-left templates (such as Arabic, Urdu, and Hebrew) directly in the CRM without using an external editor.</li>
</ul>
<h3>Phone Numbers tab improvements</h3>
<ul>
<li><strong>Scrolling and pagination fixes:</strong> The WhatsApp Phone Numbers tab now scrolls cleanly and uses pagination, which helps on smaller screens and with longer lists.</li>
</ul>
<h2>Why this matters</h2>
<p>WhatsApp template management is now more reliable and transparent. You should spend less time troubleshooting failed sends and more time messaging customers.</p>
<ul>
<li>Fewer avoidable send failures from selecting non-approved templates</li>
<li>Faster template pickers across key sending screens</li>
<li>Built-in RTL editing for supported languages</li>
</ul>
<p>Open your WhatsApp templates and try selecting or editing one to see the changes.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1288', 'Updated QR Code Profile and Digital Business Cards', 'This update refreshes the QR Code Profile and Digital Business Cards with a cleaner design, more customization options, and new ways to share and capture contact details. What’s included Updated design: Profile and Business Cards have a more modern, professional look. Save Contac...', '<p>This update refreshes the QR Code Profile and Digital Business Cards with a cleaner design, more customization options, and new ways to share and capture contact details.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Updated design:</strong> Profile and Business Cards have a more modern, professional look.</li>
<li><strong>Save Contact button:</strong> A built-in button lets visitors save your contact information to their device.</li>
<li><strong>Customization options:</strong> Add a cover image, choose colors for key page elements, and optionally hide icon labels for a simpler layout.</li>
<li><strong>Custom links:</strong> Add links such as your website, calendar booking page, portfolio, social profiles, or landing pages, and choose an icon for each link.</li>
<li><strong>Exchange Contact forms and CRM tracking:</strong> Create an Exchange Contact form with the built-in form builder, or select an existing Leadli form. When someone submits their details, a new contact is created in your CRM and the activity log records the source.</li>
<li><strong>Automation settings:</strong> Optionally open the Exchange Contact form by default, and optionally download contact info automatically when someone opens the card.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open the QR Code Builder.</li>
<li>Update your Profile or Business Card using the new design and styling settings.</li>
<li>Add custom links and select icons.</li>
<li>Set up your Exchange Contact form (built-in or an existing Leadli form).</li>
<li>Enable the optional automation settings if you want to use them.</li>
<li>Publish your QR code and share your updated digital business card.</li>
</ol>
<p>Note: Existing Profile and Business Cards need to be updated manually to use the new customization options.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1287', 'Certain critical email types now bypass Do Not Disturb (DND)', 'We updated email delivery so that these critical email types are still sent even when a contact is marked as Do Not Disturb (DND): Payments (invoices) Calendar notifications System notifications Why this change? In the past, enabling DND could also block these transactional and t...', '<p>We updated email delivery so that these critical email types are still sent even when a contact is marked as Do Not Disturb (DND):</p>
<ol>
<li>Payments (invoices)</li>
<li>Calendar notifications</li>
<li>System notifications</li>
</ol>
<p><strong>Why this change?</strong></p>
<p>In the past, enabling DND could also block these transactional and time-sensitive emails. That could prevent important items like invoices, calendar updates, and system alerts from being delivered.</p>
<p>Because these messages are required for account and day-to-day operations (not marketing or promotional emails), they are now exempt from DND rules in Leadli. This helps ensure contacts do not miss critical communications.</p>
<p><strong>Note:</strong> This applies only to the three email types listed above. Marketing and promotional emails still follow DND settings as usual.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1286', 'Ad Manager and Ask AI: Build and manage ad campaigns', 'Leadli now supports conversational campaign management inside Ad Manager using Ask AI. You can create, manage, and review Meta and Google Ads by describing what you want to accomplish. What’s included Create campaigns by chat Ask AI can gather campaign requirements, configure sup...', '<p>Leadli now supports conversational campaign management inside Ad Manager using Ask AI. You can create, manage, and review Meta and Google Ads by describing what you want to accomplish.</p>
<h2>What’s included</h2>
<ol>
<li><strong>Create campaigns by chat</strong>
<ul>
<li>Ask AI can gather campaign requirements, configure supported settings, and create campaigns for review.</li>
<li>Supported campaign types:
<ul>
<li>Meta: Lead Generation, Website Traffic, Engagement, Sales</li>
<li>Google: Search, Demand Gen</li>
</ul>
</li>
<li>Campaigns are created as drafts and are only published after you approve them.</li>
</ul>
</li>
<li><strong>Manage existing campaigns</strong>
<ul>
<li>List and filter campaigns across supported platforms</li>
<li>Review campaign details and performance</li>
<li>Edit supported campaign settings</li>
<li>Clone, pause, resume, or delete campaigns</li>
<li>Republish campaigns after changes</li>
<li>Publishing and destructive actions require confirmation</li>
</ul>
</li>
<li><strong>Create and manage audiences</strong>
<ul>
<li>Meta: Custom, lookalike, website, Page engagement, lead-form, and Smart List-based audiences</li>
<li>Google: Customer Match, website visitor, lookalike, interest, custom, and Demand Gen audience segments</li>
<li>Ask AI can also show available audience sources and help you select the right option.</li>
</ul>
</li>
<li><strong>Access campaign setup resources</strong>
<ul>
<li>Meta Pages and Instagram accounts</li>
<li>Meta datasets, pixels, lead forms, and conversation forms</li>
<li>Google conversion actions, conversion goals, and campaign assets</li>
<li>Keywords, interests, locations, languages, and demographic targeting options</li>
</ul>
</li>
<li><strong>Understand performance</strong>
<ul>
<li>Request performance data for campaigns, ad groups/ad sets, ads, and keywords over a selected date range.</li>
<li>Ask AI can provide summaries, metric breakdowns, trends, and improvement suggestions.</li>
</ul>
</li>
<li><strong>Connect advertising accounts</strong>
<ul>
<li>Ask AI can guide you through account connection and authorization for supported ad platforms.</li>
<li>Existing permissions, subscription rules, access controls, and compliance requirements still apply.</li>
</ul>
</li>
</ol>
<h2>User control and safeguards</h2>
<ul>
<li>Campaigns are saved as drafts by default.</li>
<li>Publishing always requires explicit approval.</li>
<li>Deleting campaigns, removing Pages, and disconnecting accounts require confirmation.</li>
<li>Meta Special Ad Category requirements are enforced.</li>
<li>Role and permission checks continue to apply.</li>
<li>Unsupported actions will direct you to the relevant Ad Manager screen.</li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Open Ask AI in Leadli</li>
<li>Describe the advertising task you want to complete</li>
<li>Provide any requested details</li>
<li>Review the generated campaign or proposed action</li>
<li>Approve to complete the action</li>
</ol>
<p><strong>Example prompts</strong></p>
<ul>
<li>“Create a Meta lead generation campaign.”</li>
<li>“Build a Google Search campaign for my website.”</li>
<li>“Show my active campaigns.”</li>
<li>“How can I improve this campaign?”</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Launch campaigns faster with AI-guided setup</li>
<li>Manage campaigns, audiences, and reporting from one conversation</li>
<li>Reduce manual navigation in Ad Manager</li>
<li>Stay in control with draft-first creation and approval-based publishing</li>
<li>Simplify advertising workflows for agencies and businesses</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Supports Meta Ads and Google Ads</li>
<li>Campaigns are created as drafts and require approval before publishing</li>
<li>Publishing, deleting, and disconnecting always require confirmation</li>
<li>Existing Ad Manager permissions and platform compliance rules continue to apply</li>
<li>LinkedIn Ads, Workflows, Templates, and Snapshots are not included in this release</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1285', 'Abandoned checkouts updates: export, filters, and notifications', 'Summary Leadli has updated the Abandoned Checkouts page to make it easier to find, manage, and export checkout recovery details. What changed Export CSV : Select one or more records on the current page and export customer, cart, product, activity, and recovery details. Search and...', '<h2>Summary</h2>
<p>Leadli has updated the Abandoned Checkouts page to make it easier to find, manage, and export checkout recovery details.</p>
<h2>What changed</h2>
<ul>
<li><strong>Export CSV</strong>: Select one or more records on the current page and export customer, cart, product, activity, and recovery details.</li>
<li><strong>Search and filters</strong>: Search by customer name or email. Filter by Email Status, Recovery Status, or Date Range.</li>
<li><strong>Notification settings</strong>: Open Abandoned Cart Notification Settings from the page.</li>
<li><strong>General improvements</strong>: Updated empty states, loading states, pagination, and responsive layout.</li>
<li><strong>Recovery link</strong>: Open a checkout to copy and share the checkout URL with the customer.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to Payments &gt; Orders &gt; Abandoned Checkouts.</li>
<li>Search or filter the records you need.</li>
<li>Select checkouts and click Export CSV.</li>
<li>Use Notification settings to manage abandoned cart notifications.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Export is available after you select at least one record.</li>
<li>Select All applies to the current page.</li>
<li>Exports over 5,000 records are delivered by email.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1284', 'Multi-role signing for Documents and Contracts templates in Workflows', 'You can now add multiple signer roles to your Documents and Contracts templates, such as buyer, seller, witness, or any custom role you define. When you send a document through a Workflow, each role is automatically populated and routed for signature, which reduces manual entry. ...', '<p>You can now add multiple signer roles to your Documents and Contracts templates, such as buyer, seller, witness, or any custom role you define.</p>
<p>When you send a document through a Workflow, each role is automatically populated and routed for signature, which reduces manual entry.</p>
<h3>The problem this solves</h3>
<p>Many agreements require more than one signature (for example, a client and a co-signer). Previously, templates supported only one signer, which meant you had to manually add additional people each time or maintain separate templates.</p>
<h3>How it works</h3>
<ul>
<li>Define up to 6 signer roles on a template.</li>
<li>Assign fields (signature, date, and other fillable elements) to each role.</li>
<li>When the template is sent from a Workflow, Leadli uses the roles you configured.</li>
<li>If details are missing, you can fill them in or override a role’s name, email, or phone at the Workflow step.</li>
</ul>
<h3>Benefits</h3>
<ul>
<li>Save time by avoiding repeated manual entry.</li>
<li>Reduce errors with consistent role-based field population.</li>
<li>Stay flexible by overriding signer details when needed.</li>
<li>Support more complex agreements that require multiple parties.</li>
</ul>
<h3>Getting started</h3>
<ol>
<li><strong>Build your template:</strong> Open your Proposal/Estimate template, add signer roles (name, email, phone), and assign at least one fillable element to each role.</li>
<li><strong>Assign a Contact field:</strong> Ensure at least one fillable element is assigned to “Contact” (required for the Workflow send action).</li>
<li><strong>Select the template in a Workflow:</strong> Add the “Send Document” action and choose your multi-role template so roles can populate.</li>
<li><strong>Override if needed:</strong> Adjust any role’s details at the Workflow level; these values take precedence over template defaults.</li>
<li><strong>Send:</strong> Start the Workflow to route the document for signature.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Up to 6 roles can be added per template.</li>
<li>Roles populate automatically only when sending via a Workflow (not manual send).</li>
<li>If a required role email is missing, you will be prompted to add it before sending.</li>
<li>Duplicate emails across roles will trigger an alert.</li>
<li>Currently available on web.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1283', 'AI Builder version history and one-click restore', 'Overview The Workflow AI Builder now keeps a record of each version it creates. Every AI build or edit adds a version card in the chat, and you can restore any version with one click. What’s included A version card for every AI iteration: Each build or edit from the AI Assistant ...', '<p><strong>Overview</strong></p>
<p>The Workflow AI Builder now keeps a record of each version it creates. Every AI build or edit adds a version card in the chat, and you can restore any version with one click.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>A version card for every AI iteration:</strong> Each build or edit from the AI Assistant adds a card in the chat where the change happened.</li>
<li><strong>Current version indicator:</strong> The card that matches the active canvas is highlighted, so you can easily see the version you are on.</li>
<li><strong>One-click restore:</strong> Use the three-dot menu on any earlier card and choose “Restore this version” to revert immediately.</li>
<li><strong>Non-destructive history:</strong> Restoring an older version does not remove newer versions. You can move between versions as needed.</li>
<li><strong>Unsaved indicator:</strong> If auto-save is off, cards show an “Unsaved” label until you manually save the workflow. If auto-save is on, this label does not appear.</li>
<li><strong>Works with Version History:</strong> “Show in version history” opens the Version History tab, where AI and manual versions appear together in a single timeline.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Ask the AI Assistant to build or edit your workflow.</li>
<li>A version card appears in the chat and the current version is highlighted.</li>
<li>Ask for another change. The new card becomes the current version, and earlier cards remain available to restore.</li>
<li>Use the three-dot menu on any card to restore that version or open it in Version History.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>AI edits are easier to manage when you can roll back changes quickly. This update makes it safer to experiment, compare different versions, and restore a previous setup without rebuilding from scratch. Keeping AI and manual changes in the same Version History timeline also helps you track what changed and when.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1282', 'Explain this workflow for snapshot-imported workflows', 'Overview Workflows imported through a snapshot now show an "Explain this workflow" option at the top of the builder. Selecting it opens the AI Assistant with a clear breakdown of what the workflow does. What’s changed Explain this workflow option : Shown at the top of workflows b...', '<p><strong>Overview</strong></p>
<p>Workflows imported through a snapshot now show an &#8220;Explain this workflow&#8221; option at the top of the builder. Selecting it opens the AI Assistant with a clear breakdown of what the workflow does.</p>
<p><strong>What’s changed</strong></p>
<ul>
<li><strong>Explain this workflow option</strong>: Shown at the top of workflows brought in through a snapshot.</li>
<li><strong>One-click explanation</strong>: Opens the AI Assistant with an explanation of triggers, actions, and branching logic.</li>
<li><strong>Dismissible</strong>: You can dismiss it once and it will not reappear for that workflow.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open a workflow imported through a snapshot.</li>
<li>Select &#8220;Explain this workflow&#8221; at the top of the builder.</li>
<li>Read the explanation in the AI Assistant panel.</li>
<li>Ask follow-up questions or describe changes you want to make.</li>
</ol>
<p><strong>Why it matters</strong></p>
<p>Snapshot workflows are inherited, so it is not always clear what they do. This makes it easier to understand a workflow right away and adjust it without needing additional support.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1281', 'New templates are now available', 'We have published new templates to help you build websites, funnels, email campaigns, ads, and workflows more quickly. All templates are designed to be easy to edit so you can adjust them to your brand and launch faster. New website templates (1) Business, Coaching & Consulting (...', '<p>We have published new templates to help you build websites, funnels, email campaigns, ads, and workflows more quickly. All templates are designed to be easy to edit so you can adjust them to your brand and launch faster.</p>
<h3>New website templates (1)</h3>
<ul>
<li>Business, Coaching &amp; Consulting (1)</li>
</ul>
<h3>New store templates (1)</h3>
<ul>
<li>Restaurant and Bar (1)</li>
</ul>
<h3>New email templates (1)</h3>
<ul>
<li>Real Estate (1)</li>
</ul>
<h3>New social templates (4)</h3>
<ul>
<li>Insurance (2)</li>
<li>Other (2)</li>
<li>Home Services (2)</li>
<li>Financial (2)</li>
</ul>
<h3>New Facebook ad templates (2)</h3>
<ul>
<li>Real Estate: Residential Architect</li>
<li>Travel &amp; Hospitality: Tour Guide</li>
</ul>
<h3>New Google ad templates (5)</h3>
<ul>
<li>Home Services: House Cleaning</li>
<li>Health &amp; Wellness: Wellness Guidance</li>
<li>Finance: Credit Score Repair</li>
<li>Creative: Live Band</li>
<li>Business Coaching &amp; Consulting: Financial Advisor</li>
</ul>
<h3>New LinkedIn ad templates (5)</h3>
<ul>
<li>Business Coaching &amp; Consulting: Career Counselor</li>
<li>Creative: Website Developer</li>
<li>Finance: Ledger Manager</li>
<li>Marketing Agency: Creative Agency</li>
<li>Business Coaching &amp; Consulting: Entrepreneur Coach</li>
</ul>
<h3>New workflow templates (2)</h3>
<ul>
<li>Sales &amp; Appointments: Appointment Reminder (24h + 1h)</li>
<li>Lead Generation &amp; Nurturing: New Lead Round-Robin Assignment</li>
</ul>
<h3>New snapshot (1)</h3>
<ul>
<li>Automotive: Roadside Assistance</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1280', 'Hover animations are now available for buttons', 'Buttons can now animate when a visitor hovers over them. You can choose from 21 built-in hover effects and adjust settings like color, size, distance, and timing from the sidebar. No custom CSS is required. What this solves Previously, button hover behavior was limited to a small...', '<p>Buttons can now animate when a visitor hovers over them. You can choose from 21 built-in hover effects and adjust settings like color, size, distance, and timing from the sidebar. No custom CSS is required.</p>
<p><strong>What this solves</strong></p>
<p>Previously, button hover behavior was limited to a small set of effects with no customization. More polished hover interactions required custom CSS, which was harder to manage across templates and not accessible to everyone.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>21 hover effects</strong> across these groups: Scale, Rotation, Movement, Background, Border, and Shadow.</li>
<li><strong>Live previews</strong> in the sidebar so you can test an effect on your selected button before choosing it.</li>
<li><strong>Adjustable controls</strong> such as duration, delay, easing, and effect-specific settings (for example: scale factor, rotation angle, movement distance, fill and border colors, shadow blur/spread).</li>
<li><strong>Smart behavior</strong> that disables hover on touch devices and smaller screens, waits for entrance animations to finish, and keeps hover behavior consistent on duplicated elements.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Select a button in the page builder.</li>
<li>Open the <strong>Animation</strong> tab in the sidebar.</li>
<li>Go to <strong>Hover Animation</strong>.</li>
<li>Preview effects by hovering over an effect card.</li>
<li>Select an effect, then adjust settings as needed.</li>
</ol>
<p><strong>Where to find it</strong></p>
<p>Page Builder → select a Button → Animation tab → Hover Animation.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1279', 'Entrance animations for sections, rows, and columns', 'You can now apply entrance animations to sections, rows, and columns (not just individual elements). Animations are automatically sequenced as visitors scroll, creating a consistent reveal without manual timing work. What this solves Previously, creating a coordinated animation s...', '<p>You can now apply entrance animations to sections, rows, and columns (not just individual elements). Animations are automatically sequenced as visitors scroll, creating a consistent reveal without manual timing work.</p>
<h2>What this solves</h2>
<p>Previously, creating a coordinated animation sequence required setting animations and timing delays for each element. Changing the layout often broke the sequence and required reworking delays. There was also no simple way to animate larger layout blocks like an entire section or column container.</p>
<h2>What’s included</h2>
<ol>
<li><strong>Layout block support:</strong> Apply entrance animations to sections, rows, and columns.</li>
<li><strong>Expanded animation library:</strong>
<ul>
<li>Fade: In, Up, Down, Left, Right</li>
<li>Slide: Up, Down, Left, Right</li>
<li>Bounce: In, Up, Down, Left, Right</li>
<li>Flip: Flip, Flip In X, Flip In Y</li>
<li>Rotate and Zoom: Rotate In, Zoom In</li>
<li>Special effects: Light Speed (Left, Right), Infinite Loops (Glow, Rocking, Bounce)</li>
</ul>
</li>
<li><strong>Entrance tuning:</strong>
<ul>
<li>Duration: 0.1s to 3s</li>
<li>Delay: 0s to 5s</li>
<li>Scale: 0.5× to 2×</li>
<li>Easing: Linear, Ease-in, Ease-out, Ease-in-out</li>
</ul>
</li>
<li><strong>Live hover previews:</strong> Hover an animation option in the sidebar to preview it on the selected block before applying it.</li>
<li><strong>Automatic sequencing:</strong> Blocks animate in order (Section → Row → Column → Content). Each element waits for its parent container to finish.</li>
<li><strong>Mobile control:</strong> Animations are disabled on mobile by default for performance. You can enable them per block with the “Enable animations on mobile” toggle.</li>
</ol>
<h2>How to use it</h2>
<ol>
<li>Select a section, row, or column in the page builder.</li>
<li>Open the <strong>Animations</strong> tab in the sidebar and choose an <strong>Entrance Animation</strong>.</li>
<li>Hover over an animation to preview it on the selected block.</li>
<li>Select an animation style.</li>
<li>Adjust settings like duration, delay, scale, and easing.</li>
<li>Optional: Enable animations on mobile if you want the effect to run on mobile devices.</li>
</ol>
<h2>Impact</h2>
<ol>
<li><strong>No timing math:</strong> Automatic sequencing removes the need for manual delay calculations and custom CSS.</li>
<li><strong>More resilient layouts:</strong> Reordering or editing blocks updates the sequence automatically.</li>
<li><strong>Scroll-triggered motion:</strong> Animations run when elements scroll into view.</li>
<li><strong>Backward compatible:</strong> Existing published pages benefit from the updated sequencing without requiring a re-save.</li>
</ol>
<h2>Where to find it</h2>
<p>In the page builder, select a section, row, or column, then open the <strong>Animations</strong> tab in the sidebar.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1278', 'Add hover animations to buttons in the Leadli Funnel and Website Builder', 'What’s new You can now add hover animations to any button directly from the page builder—no CSS required. How to use it Open Page Builder and select a button on the canvas. In the sidebar, open the Animation tab. Select Hover Animation . Choose from 20 effects (for example: Grow,...', '<h2>What’s new</h2>
<p>You can now add hover animations to any button directly from the page builder—no CSS required.</p>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Page Builder</strong> and select a button on the canvas.</li>
<li>In the sidebar, open the <strong>Animation</strong> tab.</li>
<li>Select <strong>Hover Animation</strong>.</li>
<li>Choose from 20 effects (for example: Grow, Shrink, Pulse, Bounce In, Rotate, Float, Skew Forward, Wobble Horizontal, Buzz, Fade, Sweep To Right, Sweep To Bottom, Radial In, Bounce To Top, Ripple Out, Outline In, Underline From Center, Shadow, Glow, Box Shadow Outset).</li>
</ol>
<h2>Preview and adjust</h2>
<ul>
<li>Hover over an effect card to preview it on the selected button.</li>
<li>Each effect supports <strong>Duration</strong> (0.1–3s), <strong>Delay</strong> (0–5s), and <strong>Easing</strong> (Linear, Ease-in, Ease-out, Ease-in-out).</li>
<li>Additional controls only appear when they apply to the chosen effect (for example: Scale, Angle, Distance, Fill Color, Border settings, or Shadow settings).</li>
</ul>
<h2>Behavior details</h2>
<ul>
<li>Hover animations are automatically disabled on touch devices and screens under 1024px to prevent stuck hover states on mobile.</li>
<li>If a button also has an entrance animation, the hover animation waits until the entrance animation finishes.</li>
<li>If the same button appears multiple times on the page (for example in sticky bars or cloned navigation), the hover animation stays consistent across instances.</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Create button micro-interactions from the sidebar without custom code.</li>
<li>Make calls-to-action feel more interactive.</li>
<li>See only the settings that apply to the selected effect.</li>
<li>Keep published markup cleaner by applying hover settings as styling.</li>
<li>Entrance animations are steadier and do not replay unnecessarily during editing.</li>
</ul>
<h2>Where to find it</h2>
<p><strong>Page Builder</strong> → select a button → <strong>Animation</strong> tab (sidebar) → <strong>Hover Animation</strong>. After you choose an effect, its parameters appear in the <strong>Adjust</strong> panel below the effect grid.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1277', 'Ask AI in the mobile app can read files you attach', 'Ask AI now lets you attach images and documents directly in the chat composer. You can take a photo, choose a PDF, or select a file from your Media Library and then ask a question about it. The problem Sometimes the information you need is already in a file, such as: a screenshot...', '<p>Ask AI now lets you attach images and documents directly in the chat composer. You can take a photo, choose a PDF, or select a file from your Media Library and then ask a question about it.</p>
<h3>The problem</h3>
<p>Sometimes the information you need is already in a file, such as:</p>
<ul>
<li>a screenshot of an issue</li>
<li>a CSV export</li>
<li>a signed contract PDF</li>
</ul>
<p>Previously, Ask AI could only use what you typed into the chat.</p>
<h3>The update: attachments in Ask AI</h3>
<p>In the composer, tap the attachment (paperclip) icon and choose one of these sources: Camera, Gallery, Files, or Media Library. The file uploads in the background and is included with your next message so Ask AI can read it.</p>
<h3>How this helps</h3>
<ul>
<li><strong>Saves time:</strong> Attach a screenshot instead of retyping details.</li>
<li><strong>Works on mobile:</strong> Handle document-based questions from your phone.</li>
<li><strong>Improves answers:</strong> Ask AI can use your actual file content.</li>
<li><strong>Uses existing files:</strong> Attach items from your Media Library without uploading again.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Open <strong>Ask AI</strong> in the app and start (or open) a chat.</li>
<li>Tap the attachment (paperclip) icon and choose Camera, Gallery, Files, or Media Library.</li>
<li>Wait for the attachment to finish uploading, type your question, and send.</li>
</ol>
<p>If you are not sure what to ask, you can send the file by itself and Ask AI will analyze it.</p>
<h3>What’s next</h3>
<p>We are expanding what Ask AI can read. Planned improvements include larger document limits, more file types (spreadsheets, plain text, and Markdown), and in-app previews. Attachment history and reuse across sessions are also being explored.</p>
<p><strong>Rollout and availability:</strong> 4.21.0+844</p>
<p><strong>Speak with us:</strong> <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1296', 'Slack integration moved to the Leadli Marketplace architecture', 'The Slack integration now runs on the Leadli Marketplace framework. This provides a more secure and scalable foundation while keeping the experience the same for existing users. What changed Slack connections now use Marketplace authentication, improving credential handling and a...', '<p>The Slack integration now runs on the Leadli Marketplace framework. This provides a more secure and scalable foundation while keeping the experience the same for existing users.</p>
<h2>What changed</h2>
<ul>
<li>Slack connections now use Marketplace authentication, improving credential handling and account security.</li>
<li>The integration runs on a Marketplace foundation designed to support future Slack updates.</li>
<li>Existing Slack connections continue to work without requiring users to reconfigure anything. Older connections will be migrated automatically in a future update.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>When the feature is released from Labs, existing Slack users will be migrated to the Marketplace-based integration automatically.</li>
<li>New Slack connections are created through the Marketplace architecture.</li>
<li>Existing Slack workflows continue to run as expected (backward compatibility is maintained).</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Stronger security and authentication controls</li>
<li>Improved reliability and maintainability</li>
<li>A scalable base for future Slack features</li>
</ul>
<h2>How to enable</h2>
<p>Enable this feature in your sub-account Labs to get early access.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:40.000Z'),
('wp-1295', 'Callers now hear a local ringtone when you call them', 'August 6, 2026 When your business operates outside the US, callers could previously hear a US-style ringback tone while a call was being forwarded, routed through an IVR menu, transferred by Voice AI, or dialed out. This could feel unfamiliar and cause some people to hang up befo...', '<p>August 6, 2026</p>
<p>When your business operates outside the US, callers could previously hear a US-style ringback tone while a call was being forwarded, routed through an IVR menu, transferred by Voice AI, or dialed out. This could feel unfamiliar and cause some people to hang up before the call was answered.</p>
<p>We have now localized the ringback tone to match the country of the phone number involved. This applies to inbound call forwarding, outbound calls, IVR call routing, and Voice AI transfers across 37 countries, so callers hear the tone they expect.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:40.000Z'),
('wp-1310', 'Chat Widget: Embed any chat widget inline', 'What’s new You can now use embedded placement with all Chat Widget types. This lets you show conversations directly inside pages across websites, funnels, and landing pages. Previously, the Sticky/Embedded placement option was available only for Live Chat and Voice AI. Other chat...', '<h2>What’s new</h2>
<p>You can now use embedded placement with all Chat Widget types. This lets you show conversations directly inside pages across websites, funnels, and landing pages.</p>
<p>Previously, the Sticky/Embedded placement option was available only for Live Chat and Voice AI. Other chat types always appeared as a floating chat bubble, even when the widget was added within a page section.</p>
<p>Now you can choose Embedded placement for any supported Chat Widget type to display the full conversation experience within the page.</p>
<h3>Embedded placement is supported for</h3>
<ul>
<li>All-in-One Chat</li>
<li>Email / SMS</li>
<li>WhatsApp</li>
<li>Facebook</li>
<li>Instagram</li>
<li>Live Chat</li>
<li>Voice AI</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Open the Chat Widget Builder and select a supported Chat Widget type.</li>
<li>In placement settings, choose Sticky or Embedded.</li>
<li>When Embedded placement is selected, the widget opens inline within the page and stays visible. It does not show a floating chat bubble or the initial prompt popup, and it cannot be minimized. Layout dimensions are optimized for embedded display.</li>
<li>For All-in-One Chat, visitors can switch between available channels without leaving the embedded experience.</li>
<li>The builder preview updates automatically when you select Embedded.</li>
<li>Controls that only apply to floating chat bubbles are hidden when Embedded is selected.</li>
</ol>
<h2>Why it matters</h2>
<p>This gives businesses more control over where and how conversations happen across their digital experiences. You can create dedicated chat experiences within landing pages, funnels, website pages, AI-powered experiences, contact pages, and support pages.</p>
<p>Instead of relying on a floating chat bubble, messaging can be part of the page layout, which can support more intentional and contextual customer journeys.</p>
<h2>Notes</h2>
<ul>
<li>Embedded placement is available for all supported Chat Widget types.</li>
<li>Embedded widgets remain visible and cannot be minimized.</li>
<li>Floating bubble and initial prompt behaviors are disabled in Embedded mode.</li>
<li>The builder preview and related settings adjust based on the selected placement.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1309', 'Ad Manager: Opportunity Score for Google and LinkedIn campaigns', 'Release summary Opportunity Score is now available across Meta, Google, and LinkedIn campaign builders in the Leadli Ad Manager. After launching Opportunity Score for Meta campaigns, we extended the same pre-publish checks to Google and LinkedIn. You can review campaign readiness...', '<h2>Release summary</h2>
<p>Opportunity Score is now available across Meta, Google, and LinkedIn campaign builders in the Leadli Ad Manager.</p>
<p>After launching Opportunity Score for Meta campaigns, we extended the same pre-publish checks to Google and LinkedIn. You can review campaign readiness, spot potential setup issues, and improve your campaigns before publishing from the Review screen.</p>
<h2>What’s new</h2>
<h3>Opportunity Score for Google and LinkedIn</h3>
<ul>
<li>View a 0–100 campaign readiness score before publishing.</li>
<li>Campaign health is summarized as Low, Medium, or High.</li>
<li>Recommendations adjust based on the selected platform and campaign configuration.</li>
</ul>
<h3>Platform-aware recommendations</h3>
<ul>
<li><strong>Google</strong>: Reviews areas such as keywords, audience, budget, creatives, tracking, ad schedule, language, placements, bidding setup, and applicable campaign assets.</li>
<li><strong>LinkedIn</strong>: Reviews audience and location targeting, budget, creatives, destination URLs, lead-gen setup, language, and other campaign-specific requirements.</li>
<li>Only applicable settings are considered based on the selected objective, ad format, and configuration.</li>
</ul>
<h3>Prioritized improvement suggestions</h3>
<ul>
<li>Recommendations are grouped into areas such as Audience, Budget, Creative, Tracking, and Keywords where applicable.</li>
<li>Suggestions indicate potential impact so you can focus on the most important improvements first.</li>
</ul>
<h3>Click to review and fix</h3>
<ul>
<li>Select a suggestion to jump directly to the relevant campaign section and make changes faster, consistent with the Meta Opportunity Score experience.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Create or edit a Google, LinkedIn, or Meta campaign in Ad Manager.</li>
<li>Complete your campaign setup and move to the Review screen.</li>
<li>Open the Opportunity Score panel.</li>
<li>Review your overall score and individual recommendations.</li>
<li>Click a suggested action to navigate to the relevant campaign setting.</li>
<li>Make the required improvements and review the updated score before publishing.</li>
</ol>
<h2>Why this feature</h2>
<p>Opportunity Score adds an extra validation layer before launch to help you catch missing or limiting settings earlier, understand which improvements may have the greatest impact, reduce guesswork during review, and build better-configured campaigns across supported advertising platforms.</p>
<p>The score is guidance rather than a guarantee of campaign performance. Recommendations do not automatically change campaign settings.</p>
<h2>Notes</h2>
<ul>
<li>Opportunity Score is available on the pre-publish Review screen.</li>
<li>Suggestions vary based on platform, objective, campaign type, ad format, and applicable settings.</li>
<li>Opportunity Score is advisory and does not guarantee campaign performance.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1308', 'Bulk keyword management for Google Ads in Ad Manager', 'Keyword management in Google Ads campaigns is now faster and more flexible: The previous 40-keyword limit has been removed for both Positive Keywords and Negative Keywords. A larger text area makes it easier to work with multiple keywords. You can bulk paste keywords instead of a...', '<p>Keyword management in Google Ads campaigns is now faster and more flexible:</p>
<ul>
<li><strong>The previous 40-keyword limit has been removed</strong> for both Positive Keywords and Negative Keywords.</li>
<li>A larger text area makes it easier to work with multiple keywords.</li>
<li>You can bulk paste keywords instead of adding them one by one.</li>
<li>Bulk paste supports keywords separated by new lines or commas.</li>
<li>Duplicate keywords and extra blank spaces are automatically cleaned up.</li>
<li>Select the required match type and add the keywords together.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Go to <strong>Ad Manager → Google Campaign → Ad Group</strong>.</li>
<li>Open the <strong>Positive Keywords</strong> or <strong>Negative Keywords</strong> section.</li>
<li>Type or paste multiple keywords into the keyword field.</li>
<li>Separate keywords using new lines or commas.</li>
<li>Select the desired match type and click <strong>Add</strong>.</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li>Managing large keyword lists is significantly faster. Advertisers can bring existing keyword lists into Leadli in one go, reduce repetitive manual entry, and build more comprehensive Google Search campaigns without the previous 40-keyword limit.</li>
</ul>
<p><strong>Notes</strong></p>
<ol>
<li>Available for both <strong>Positive</strong> and <strong>Negative</strong> keywords in Google Ads campaigns.</li>
<li>Duplicate and empty keyword entries are automatically removed during bulk entry.</li>
<li>Keyword eligibility remains subject to Google Ads requirements.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1307', 'New templates are now available in Leadli', 'New templates are now available to help you build websites, funnels, and email campaigns more quickly. These templates are designed to be easy to customize so you can focus on your message and results. What was added Website templates: 1 (Travel & Hospitality) Funnel templates: 1...', '<p>New templates are now available to help you build websites, funnels, and email campaigns more quickly. These templates are designed to be easy to customize so you can focus on your message and results.</p>
<p><strong>What was added</strong></p>
<ul>
<li>Website templates: 1 (Travel &amp; Hospitality)</li>
<li>Funnel templates: 1 (Home Services)</li>
<li>Email templates: 1 (Beauty &amp; Fashion)</li>
<li>Social templates: 8 (Automotive 2, Medical 2, Legal 2, Marketing Agency 2)</li>
<li>Facebook ad templates: 4 (Tea Parlors, RV Rentals, Boat Tours, Holistic Wellness)</li>
<li>Google ad templates: 5 (Assisted Living, Skin Med Spa, Affiliate Program, Bankruptcy Attorney, Property and Casualty Insurance Agent)</li>
<li>LinkedIn ad templates: 7 (Brand Advertising, Digital Creator, Creative Copywriter, Financial Services, IT Security Consultant, PR Agency, Web-Based Software Firm)</li>
<li>Snapshots: 1 (Skin Care Clinic)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1301', 'Port your existing US numbers into Leadli from the Phone Numbers page', 'You can now move your existing US local and toll-free numbers into Leadli without leaving the platform. You can submit a port request using a guided, four-step process and track it in one place. Where to find it Phone System → Phone Numbers → Add Number → Port-in Numbers After yo...', '<p>You can now move your existing US local and toll-free numbers into Leadli without leaving the platform. You can submit a port request using a guided, four-step process and track it in one place.</p>
<h2>Where to find it</h2>
<p><strong>Phone System → Phone Numbers → Add Number → Port-in Numbers</strong></p>
<p>After you submit, each request appears on the <strong>Port-in Numbers</strong> tab so you can follow its status.</p>
<h2>How it works</h2>
<ol>
<li><strong>Agreement checklist</strong> — Review and accept the porting terms. Standard rates apply after the port completes. Keep your numbers active with your current carrier until the port is finished. You are responsible for any carrier termination charges. Messaging may be unavailable for up to 3 business days after the port.</li>
<li><strong>Number entry</strong> — Enter your carrier account number and the numbers you want to port. You can add multiple numbers separated by commas. If your carrier requires a port-out PIN or the last 4 digits of the account holder’s SSN, add it when prompted.</li>
<li><strong>Additional details</strong> — Optionally name the request, choose whether the account is residential or business, and enter the account holder’s name, authorized email, and the service address on file with your current carrier.</li>
<li><strong>Document upload</strong> — Upload a recent billing statement as proof of ownership.</li>
</ol>
<p>Select <strong>Submit request</strong> to receive a confirmation and Request ID.</p>
<h2>What this improves</h2>
<ul>
<li><strong>Automatic LOA generation.</strong> Leadli generates the Letter of Authorization (LOA) from the details you enter and emails it for digital signature.</li>
<li><strong>Fewer documents.</strong> A recent billing statement is the only required attachment.</li>
<li><strong>Clear status tracking.</strong> Each request shows numbers, Request ID, created date, status (In review, In progress, Completed, or Rejected), and a plain-language description of progress.</li>
<li><strong>Bulk-friendly.</strong> Submit a single number or a list of numbers in one request.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>US local and toll-free numbers only</strong> for now. Other number types and international porting are planned for a later phase.</li>
<li><strong>Typical timeline:</strong> 5–15 business days. It can take up to 4 weeks if your current carrier rejects the request.</li>
<li><strong>Double-check your details.</strong> Mismatched name, account number, or PIN is a common reason for delays or cancellations.</li>
<li><strong>Keep numbers active</strong> with your current carrier until the port completes.</li>
<li><strong>Billing statement requirements:</strong> PDF or image, up to 10 MB, not password-protected, dated within the last 60 days.</li>
<li>If a request is cancelled, you can submit a new one.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1300', 'Fix: Accurate email notice when a Marketplace app plan change affects your SaaS plan', 'Update If a Marketplace app plan included in one of your SaaS plans is updated or deleted, and that app is automatically removed from your SaaS plan as a result, you will now receive an email that correctly explains what happened. Previously, this email incorrectly said the app h...', '<p><strong>Update</strong></p>
<p>If a Marketplace app plan included in one of your SaaS plans is updated or deleted, and that app is automatically removed from your SaaS plan as a result, you will now receive an email that correctly explains what happened. Previously, this email incorrectly said the app had been uninstalled.</p>
<p><strong>Why this matters</strong></p>
<p>The notification now reflects the actual reason the app was removed (a plan change, not an uninstall), so you can take the right next step without confusion.</p>
<p><strong>Notes</strong></p>
<p>This applies to notifications sent when an app plan attached to a SaaS plan is deleted or updated. Notifications sent when a Marketplace app itself is uninstalled are unchanged.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1299', 'TikTok Lead Ads moved to the Leadli Marketplace architecture', 'Leadli has moved the TikTok Lead Ads integration to the Marketplace framework. This change provides a more secure and scalable foundation for future improvements while keeping the day-to-day experience the same for existing users. What changed Improved security: TikTok Lead Ads c...', '<p>Leadli has moved the TikTok Lead Ads integration to the Marketplace framework. This change provides a more secure and scalable foundation for future improvements while keeping the day-to-day experience the same for existing users.</p>
<h2>What changed</h2>
<ul>
<li><strong>Improved security:</strong> TikTok Lead Ads connections now use Marketplace authentication flows for better credential handling.</li>
<li><strong>More scalable foundation:</strong> The integration now runs on Marketplace architecture designed for future enhancements.</li>
<li><strong>Sets up multi-account support:</strong> This work enables future options to connect and manage multiple TikTok accounts in a single location.</li>
<li><strong>No disruption to existing setups:</strong> Current connections continue to work without requiring reconfiguration.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Existing TikTok Lead Ads users will be migrated to the Marketplace-based integration when the feature is released from labs.</li>
<li>New TikTok Lead Ads connections are created through the Marketplace architecture.</li>
<li>Current workflows continue to run as expected.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Stronger authentication controls</li>
<li>Better reliability and maintainability</li>
<li>A platform for future TikTok Lead Ads features</li>
</ul>
<h2>Early access</h2>
<p>You can enable the Marketplace flow through labs.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1298', 'Set a fixed price for your AI products', 'What’s new You can now bill your sub-accounts a fixed rate for Conversation AI and Voice AI instead of only using a markup on usage. For example, you can charge $0.50 for every message sent through Conversation AI. This amount stays the same each time, regardless of what that mes...', '<p><strong>What’s new</strong></p>
<p>You can now bill your sub-accounts a fixed rate for Conversation AI and Voice AI instead of only using a markup on usage. For example, you can charge $0.50 for every message sent through Conversation AI. This amount stays the same each time, regardless of what that message costs to process.</p>
<p>You can choose the billing model (markup or fixed rate) separately for each product and sub-account, and you can switch between them at any time.</p>
<p><strong>Why it matters</strong></p>
<p>AI usage costs are based on tokens, which can be difficult to explain and estimate. A fixed rate gives customers one simple, consistent price for AI usage. This helps reduce surprises and makes pricing easier to communicate.</p>
<p><strong>Notes</strong></p>
<ul>
<li>This is available at both the product and sub-account level. You can set a fixed rate for one AI product or sub-account and keep markup pricing for another.</li>
<li>Markup-based billing is still supported if you prefer it.</li>
<li>You are still billed based on your actual usage, so review your costs when setting a fixed rate to protect your margins.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1297', 'Prospecting audit reports now detect LeadConnector AI Studio websites', 'Marketing Audit Reports now include improved website hosting detection. Prospecting can detect websites built with LeadConnector AI Studio, which helps you understand a prospect’s website technology more accurately. What’s included The website hosting section can identify sites b...', '<p>Marketing Audit Reports now include improved website hosting detection.</p>
<p>Prospecting can detect websites built with LeadConnector AI Studio, which helps you understand a prospect’s website technology more accurately.</p>
<h2>What’s included</h2>
<p>The website hosting section can identify sites built with:</p>
<ul>
<li>WordPress</li>
<li>LeadConnector</li>
<li>LeadConnector AI Studio</li>
<li>Webflow</li>
<li>Wix</li>
<li>Squarespace</li>
<li>Framer</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>More accurate website technology detection</li>
<li>Clearer visibility into how a prospect’s site is built</li>
<li>Better identification of migration and website opportunities</li>
<li>More reliable reporting as AI-generated websites become more common</li>
</ul>
<h2>How to enable</h2>
<ul>
<li>LeadConnector AI Studio detection is enabled by default.</li>
<li>To exclude it from the website hosting audit, go to Prospecting → Settings → Report settings → Website hosting, uncheck LeadConnector AI Studio, and save.</li>
</ul>
<h2>Availability</h2>
<p>Available for Free and Premium Prospecting users.</p>
<p>If you have feedback, share it in the ideaboard.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1321', 'Use dynamic custom values in dashboards and reporting', 'This update lets you insert dynamic custom values into dashboard and report widgets using a token picker. What changed You can insert dynamic custom values into dashboard and report widget conditions and elements using the token picker. Supported in widget conditions anywhere you...', '<p>This update lets you insert dynamic custom values into dashboard and report widgets using a token picker.</p>
<h3>What changed</h3>
<ul>
<li>You can insert dynamic custom values into dashboard and report widget conditions and elements using the token picker.</li>
<li>Supported in widget conditions anywhere you enter a text value (for example, Address or Source).</li>
<li>Supported in dashboard elements such as Embed (URL), Title, and Text.</li>
<li>Location fields available include Location ID, Location Name, Email, Phone, Website, Address, City, State, Country, Postal Code, and Timezone.</li>
<li>User fields available include User ID, Email, Phone, Role, Type, First Name, Last Name, Name, and Full Name.</li>
<li>Custom values you created under Settings → Custom values are available in the picker and organized by folder.</li>
<li>Tokens resolve automatically per sub-account when the dashboard is viewed.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Open a dashboard and switch to Edit mode.</li>
<li>Add or edit a widget and open the Conditions tab, or add an element (Embed, Title, or Text).</li>
<li>Click the token picker button next to a text input field.</li>
<li>Browse or search across Location, User, or Custom values.</li>
<li>Select a field to insert a token (for example, <code>Flying Leap Studio/Leadli</code>).</li>
<li>Save, then switch to View mode to see the token resolve automatically for that location.</li>
</ol>
<h3>Why it matters</h3>
<ol>
<li>You can reuse one dashboard template across locations without duplicating setups.</li>
<li>You can build dynamic embed URLs that load the correct external report for each location.</li>
<li>Titles and text can adapt per location to make dashboards clearer for clients.</li>
<li>Agency setup is faster because you configure the dashboard once.</li>
</ol>
<h3>What’s next</h3>
<p>NA</p>
<h3>Notes</h3>
<ol>
<li>Custom value insertion is available to dashboard editors only.</li>
<li>If a token has no value set for a location, it resolves as blank in view mode.</li>
<li>Location and User system fields are available by default. Custom values require prior setup under Settings → Custom values.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1320', 'Add ecommerce stores directly to funnels', 'What’s new You can now add a full ecommerce store experience inside a funnel. This lets visitors browse products, add items to a cart, check out, and see an order confirmation without leaving the funnel flow. When you add a store, Leadli creates five store steps automatically: Pr...', '<h2>What’s new</h2>
<p>You can now add a full ecommerce store experience inside a funnel. This lets visitors browse products, add items to a cart, check out, and see an order confirmation without leaving the funnel flow.</p>
<ul>
<li>When you add a store, Leadli creates five store steps automatically: <strong>Product List</strong>, <strong>Product Details</strong>, <strong>Cart</strong>, <strong>Checkout</strong>, and <strong>Thank You</strong>.</li>
<li>You can add store elements to funnel steps, such as <strong>Featured Product</strong>, <strong>Upsell</strong>, <strong>Collection List</strong>, and <strong>Search Bar</strong>. Adding a store element will convert the funnel into a store-enabled funnel and create the required five store steps.</li>
<li>A new <strong>Store Products</strong> tab is available on the funnel step list page, where you can exclude products and set product priority.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open a funnel and add a store from the <strong>Store</strong> section, or add a store element to any funnel step.</li>
<li>Select a theme and complete the store setup when prompted.</li>
<li>Use the <strong>Store Products</strong> tab to manage product visibility and priority.</li>
<li>Customize the generated store pages and publish your funnel.</li>
</ol>
<h2>Key points</h2>
<ul>
<li>The five store steps keep a fixed internal order, but you can move them together relative to other funnel steps.</li>
<li>Converted funnels display a Store tag in Funnels and a <strong>Funnel store</strong> tag in Stores.</li>
<li>Only one store can be added per funnel.</li>
<li><strong>Clone Step</strong> and <strong>A/B split testing</strong> are not supported on store steps.</li>
<li>Deleting any store step removes all five store steps and disables the store for that funnel.</li>
<li>Cloning a funnel also clones its store setup and store steps, but products are not duplicated.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1319', 'Threads post sync in Social Planner (Labs beta)', 'You can now sync existing Threads posts into the Social Planner so your past content and engagement details are available in one place. This feature is available as a beta in Labs. What’s included Automatic Threads post sync Import existing Threads posts, including text posts, im...', '<p>You can now sync existing Threads posts into the Social Planner so your past content and engagement details are available in one place.</p>
<p>This feature is available as a beta in Labs.</p>
<h3>What’s included</h3>
<ol>
<li><strong>Automatic Threads post sync</strong><br />Import existing Threads posts, including text posts, images, videos, carousels, GIFs, and polls.</li>
<li><strong>Post and engagement details</strong><br />Synced posts can retain available content and engagement data such as caption text, media previews, location tags, views, likes, replies, reposts, quotes, and shares.</li>
<li><strong>Clone existing Threads content</strong><br />Reuse supported Threads posts by cloning text and supported media posts directly from Social Planner.</li>
<li><strong>Automatic daily sync</strong><br />After you enable it, Threads posts sync every 24 hours. You can track sync progress and you’ll be notified if your account needs to be reconnected.</li>
</ol>
<h3>How to enable</h3>
<ul>
<li>Go to Marketing → Social Planner → Settings</li>
<li>Enable Threads Post Sync in Labs</li>
<li>Allow the initial sync to complete</li>
<li>View synced Threads posts in Social Planner</li>
<li>Clone supported posts when you want to reuse them</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Sync is enabled per location.</li>
<li>By default, posts from the last 30 days are synced. Older posts (up to 365 days) may be imported when needed.</li>
<li>Sync runs every 24 hours and is not real-time.</li>
<li>Polls can be viewed but cannot be cloned because poll creation is not supported in the Threads composer.</li>
<li>Deleted Threads posts remain visible in Social Planner because sync is one-way (Threads to Social Planner).</li>
<li>Text file attachments are not supported for sync or preview.</li>
<li>Some engagement data may be limited by Threads API capabilities.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1318', 'Conditional custom fields for opportunities', 'Opportunity forms can now adjust automatically based on each deal. Admins can choose which fields or folders appear, and which fields are required, based on an opportunity’s pipeline, stage, status, or other field values. What’s included Create rules using a single condition or c...', '<p>Opportunity forms can now adjust automatically based on each deal.</p>
<p>Admins can choose which fields or folders appear, and which fields are required, based on an opportunity’s pipeline, stage, status, or other field values.</p>
<h2>What’s included</h2>
<ul>
<li>Create rules using a single condition or combined AND/OR conditions.</li>
<li>Use pipeline, pipeline stage, status, and field types like dropdown, radio, checkbox, and multi-select as triggers.</li>
<li>Show individual fields or entire folders when conditions are met.</li>
<li>Mark visible fields as required so incomplete opportunities can’t be saved.</li>
<li>Preview each rule before saving.</li>
<li>Apply rules in Add, Edit, and Bulk Edit on web and mobile.</li>
<li>Manage pipeline-specific rules from the Pipelines page.</li>
<li>Activate rules immediately after saving.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings → Labs</strong>.</li>
<li>Enable <strong>Show &amp; Require Opportunity Fields Conditionally</strong> for the sub-account.</li>
<li>Go to <strong>Settings → Custom Fields → Opportunity → Conditional Rules</strong>.</li>
<li>Select <strong>Create conditional rule</strong>.</li>
<li>Choose the trigger conditions and connect them using AND/OR logic.</li>
<li>Select an outcome (show field, show folder, or make mandatory).</li>
<li>Review the live preview, then select <strong>Save rule</strong>.</li>
</ol>
<p>You can also go to <strong>Settings → Opportunities &amp; Pipelines</strong>, open a pipeline or stage’s <strong>Actions</strong> menu, and select <strong>Manage conditional rules</strong>.</p>
<h2>Why it matters</h2>
<ul>
<li>Keep opportunity forms focused on the fields that matter for the current stage.</li>
<li>Collect required details at the right point in the sales process.</li>
<li>Improve reporting accuracy and consistency.</li>
<li>Standardize data collection across pipelines and teams.</li>
<li>Reduce missing required information on saved opportunities.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Fields and folders included in a <strong>Show</strong> rule stay hidden until conditions are met.</li>
<li>Fields not included in a <strong>Show</strong> rule remain visible as usual.</li>
<li>If multiple rules apply, required-field rules are combined.</li>
<li>Only Admins can create, edit, or delete rules.</li>
<li>Rules are configured separately for each sub-account.</li>
<li>Nothing changes until an Admin creates the first rule.</li>
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
<li>The related <strong>Gift Card Order</strong> is updated with the remaining balance after each successful redemption.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1312', 'AI agent actions now cost up to 50% less to run', 'Overview Leadli has reduced the cost of running AI agent actions by improving the agent execution pipeline. In internal testing, agent runs are now about 40% to 50% cheaper, with no change to behavior, output quality, or setup. What changed Lower cost per AI agent execution (up t...', '<h2>Overview</h2>
<p>Leadli has reduced the cost of running AI agent actions by improving the agent execution pipeline. In internal testing, agent runs are now about 40% to 50% cheaper, with no change to behavior, output quality, or setup.</p>
<h2>What changed</h2>
<ul>
<li>Lower cost per AI agent execution (up to 50%).</li>
<li>Prompt caching: repeated context across agent steps is cached instead of being resent on every call, reducing token usage.</li>
<li>More efficient system and tool prompts: instructions were tightened to reduce tokens per run.</li>
<li>Right-sized models for supporting tasks (summarization, structured output, memory generation) while keeping the core reasoning model the same.</li>
<li>Fewer tokens used per execution overall.</li>
</ul>
<h2>Why it matters</h2>
<p>You get the same results with lower spend, and there is nothing to reconfigure.</p>
<p>The biggest savings are typically seen in longer conversations and multi-step agents.</p>
<h2>How to use</h2>
<p>No action is required. These optimizations are already live and apply automatically to all new and existing AI agent actions.</p>
<p>Setup guide: <a href="https://ideas.Leadli.com/changelog/ai-agent-action-in-workflows" rel="ugc nofollow noopener noreferrer" target="_blank">https://ideas.Leadli.com/changelog/ai-agent-action-in-workflows</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1311', 'Clearer and more accurate invoice line items for rentals', 'Overview We improved how rental pricing is shown on invoices. Each invoice line item now shows the per-unit cost and the quantity booked, which makes invoices clearer and easier to verify. What changed Invoice line items now show per-unit pricing Invoices now show the per-unit co...', '<h2>Overview</h2>
<p>We improved how rental pricing is shown on invoices. Each invoice line item now shows the per-unit cost and the quantity booked, which makes invoices clearer and easier to verify.</p>
<h2>What changed</h2>
<p><strong>Invoice line items now show per-unit pricing</strong></p>
<ul>
<li>Invoices now show the per-unit cost as the unit price, and the quantity reflects the number of units booked. This makes each line item clear and verifiable.</li>
<li><strong>Before:</strong> A rental booked for 3 days across 4 units at $50/day</li>
<li>Invoice showed → Unit price: $540.00 | Qty: 1</li>
<li><strong>After:</strong> A rental booked for 3 days across 4 units at $50/day</li>
<li>Invoice now shows → Unit price: $135.00 | Qty: 4 | Total: $540.00</li>
</ul>
<p><strong>More precise internal pricing calculations</strong></p>
<ul>
<li>Pricing is now calculated per unit before the final total, which improves accuracy across discount configurations and booking setups.</li>
</ul>
<p><strong>Note:</strong> In rare cases involving non-round discount percentages (for example, 16.67%), per-unit rounding ensures the invoice total adds up cleanly. In those cases, the final total may vary by $0.01. This is the most accurate representation of the configured price.</p>
<h2>Why this matters</h2>
<ul>
<li><strong>Clearer invoices:</strong> Customers see a meaningful unit price and quantity instead of a single lump sum.</li>
<li><strong>Consistent across setups:</strong> The calculation follows the same per-unit logic whether renting one item or managing bulk inventory with discount tiers.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1127', 'Quiz results page default values are easier to set up', 'What’s new We expanded smart default values across multiple sections of the Quiz Results Page to make setup faster and more consistent. Previously available only in the Call to Action section, this now also applies to: Individual Category section Category Score section Overall Sc...', '<h2>What’s new</h2>
<p>We expanded smart default values across multiple sections of the Quiz Results Page to make setup faster and more consistent.</p>
<p>Previously available only in the Call to Action section, this now also applies to:</p>
<ul>
<li>Individual Category section</li>
<li>Category Score section</li>
<li>Overall Score section</li>
</ul>
<h2>Key highlights</h2>
<ul>
<li><strong>Smart default value propagation:</strong> When you configure the first tier (Low/Medium/High) within a category, the values you enter will populate as defaults for the remaining tiers in that category. You can also preview changes in real time across tiers.</li>
<li><strong>Faster results page setup:</strong> Less repetitive configuration across tiers and sections.</li>
<li><strong>Cleaner user experience:</strong> Conditional display behavior stays the same. If required Call to Action fields like Name or Link are blank, the button stays hidden while the content still displays.</li>
<li><strong>Reduced support overhead:</strong> Fewer setup steps should reduce setup-related support requests.</li>
<li><strong>Improved score configuration structure:</strong> Overall Score and Category Score configurations now map by Category ID and Tier ID instead of tier label to avoid overlap and improve reliability.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Configure the first tier within a section (for example, Low).</li>
<li>Relevant values automatically populate across the remaining tiers of that category.</li>
<li>Customize individual tiers only where needed.</li>
<li>Save the quiz to apply changes.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>These enhancements apply automatically to all new quizzes.</li>
<li>For existing quizzes, re-save the quiz for the updated behavior to take effect.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:20:39.000Z'),
('wp-1126', 'API documentation is now available for Leadli', 'API documentation is now available on the LeadConnector domain, which supports a consistent developer experience for our customers and partners using Leadli. What changed The documentation is now hosted on the LeadConnector domain Access the documentation: https://marketplace.lea...', '<p>API documentation is now available on the LeadConnector domain, which supports a consistent developer experience for our customers and partners using Leadli.</p>
<p><strong>What changed</strong></p>
<ul>
<li>The documentation is now hosted on the LeadConnector domain</li>
</ul>
<p>Access the documentation: <a href="https://marketplace.leadconnectorhq.com/docs" target="_blank" rel="ugc nofollow noopener noreferrer">https://marketplace.leadconnectorhq.com/docs</a></p>
<p><strong>Why this matters</strong></p>
<p>Your developers can now build on top of Leadli. Previously, you had to reach out to our support for API documentation, but now it is publicly available.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:20:25.000Z'),
('wp-1125', 'New templates published in Leadli', 'New templates have been published in Leadli. Website templates Legal: 1 Email templates Marketing Agency: 1 Survey templates Legal: 1 Social Planner templates Insurance: 2 Legal: 2 Google Ad templates Home Services – Appliance Service Health & Wellness – Natural Wellness Finance ...', '<p>New templates have been published in Leadli.</p>
<h3>Website templates</h3>
<ul>
<li>Legal: 1</li>
</ul>
<h3>Email templates</h3>
<ul>
<li>Marketing Agency: 1</li>
</ul>
<h3>Survey templates</h3>
<ul>
<li>Legal: 1</li>
</ul>
<h3>Social Planner templates</h3>
<ul>
<li>Insurance: 2</li>
<li>Legal: 2</li>
</ul>
<h3>Google Ad templates</h3>
<ul>
<li>Home Services &#8211; Appliance Service</li>
<li>Health &amp; Wellness &#8211; Natural Wellness</li>
<li>Finance &#8211; Accounting</li>
<li>Creative &#8211; Photography</li>
<li>Business Coaching &amp; Consulting &#8211; Career Coaching</li>
</ul>
<h3>LinkedIn Ad templates</h3>
<ul>
<li>Real Estate &#8211; Commercial Property Inspector</li>
<li>Business Coaching &amp; Consulting &#8211; Cyber Security Consulting</li>
<li>Creative &#8211; Copy Writer</li>
<li>Marketing Agency &#8211; Digital Marketing</li>
<li>Real Estate &#8211; Title Insurance Representative</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-06-01T21:18:39.000Z'),
('wp-1124', 'Conversations AI: Automatic reply suggestions', 'We updated Suggestive Mode in Conversations AI so reply suggestions are prepared before you open a conversation. This reduces waiting and keeps you in control of what gets sent. What’s new Suggestions are generated automatically: a draft reply is prepared in the background as soo...', '<p>We updated Suggestive Mode in Conversations AI so reply suggestions are prepared before you open a conversation. This reduces waiting and keeps you in control of what gets sent.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Suggestions are generated automatically:</strong> a draft reply is prepared in the background as soon as a new message arrives.</li>
<li><strong>Updated suggestion layout:</strong> a redesigned suggestion card makes it easier to review, edit, and send suggested replies.</li>
<li><strong>Faster review and sending:</strong> you can use the suggestion as-is or adjust the wording before sending.</li>
<li><strong>You stay in control:</strong> suggestions are drafts only, and nothing is sent automatically.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>A new message arrives and Conversations AI prepares a suggested response in the background.</li>
<li>When you open the conversation, the suggested reply is already available.</li>
<li>Review and edit the suggestion if needed.</li>
<li>Send when you’re ready. If a newer message arrives, the suggestion updates to stay relevant.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:18:25.000Z'),
('wp-1123', 'AI Data Extract is now available in Leadli Workflows', 'Workflows now include a native AI-powered action that extracts structured data from unstructured text. AI Data Extract can take raw input such as emails, SMS messages, webhook payloads, or AI outputs, and return clean, typed values that you can use in later workflow steps. To set...', '<p>Workflows now include a native AI-powered action that extracts structured data from unstructured text.</p>
<p>AI Data Extract can take raw input such as emails, SMS messages, webhook payloads, or AI outputs, and return clean, typed values that you can use in later workflow steps.</p>
<p>To set it up, define the fields you want to extract, choose the input source, and optionally provide extra context to improve accuracy.</p>
<h2>Key capabilities</h2>
<ul>
<li><strong>Custom value input:</strong> Select any text-based data in your workflow as the input source.</li>
<li><strong>Optional context:</strong> Add supplementary context to improve extraction for complex or ambiguous inputs.</li>
<li><strong>Templates:</strong> Start from a pre-built template or create your own field set.</li>
<li><strong>Downstream ready:</strong> Extracted fields are saved as workflow variables for use in later actions.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In your workflow, click <strong>+ Add Action</strong>.</li>
<li>Search for <strong>AI Data Extract</strong> in the AI action category.</li>
<li>Select the input source (for example: email body or webhook payload).</li>
<li>Optionally add extra context.</li>
<li>Choose a template or define your custom fields.</li>
<li>Save. The extracted fields will be available in downstream actions.</li>
</ol>
<h2>Why this matters</h2>
<p>This makes it easier to turn unstructured text into structured variables directly inside the workflow builder, without manual workarounds or external tools.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-06-01T21:18:06.000Z'),
('wp-1122', 'Test Action for integrations', 'Overview Test Action is a live testing option available on every external app action step in the workflow builder. It lets you confirm your inputs, run the action as a real call against the connected app, and review both the payload that was sent and the provider’s raw response. ...', '<p><strong>Overview</strong></p>
<p>Test Action is a live testing option available on every external app action step in the workflow builder. It lets you confirm your inputs, run the action as a real call against the connected app, and review both the payload that was sent and the provider’s raw response. The response schema can also be used to populate output fields for later workflow steps.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>A Test Action button on every external app action step.</li>
<li>Run Test Action from the action configuration panel.</li>
</ul>
<p><strong>Live test execution</strong></p>
<ul>
<li>Runs the action against the connected app as a real API call, using the resolved values from the builder.</li>
<li>Applies workflow variables, custom values, and transformations the same way they run in production.</li>
<li>Uses the same connected account the workflow will use when it runs.</li>
<li>Shows side-by-side “Data In” (the resolved inputs) and “Data Out” (the raw JSON response).</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li>Configure the action: choose the integration, select the action, and map the inputs.</li>
<li>If the action depends on values produced by previous workflow steps, those values must be resolvable before Test Action can run.</li>
<li>Click Test Action to open the test drawer and run the live call.</li>
<li>Review the results in Data In and Data Out.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:17:51.000Z'),
('wp-1121', 'Reviews AI supports Facebook review replies', 'Reviews AI now supports replies for Facebook reviews in both assisted and automatic modes. You can use AI to reply to Facebook reviews from Reputation Management. This helps teams respond faster, keep messaging consistent, and manage engagement across Google and Facebook. What’s ...', '<p><strong>Reviews AI now supports replies for Facebook reviews in both assisted and automatic modes.</strong></p>
<p>You can use AI to reply to Facebook reviews from Reputation Management. This helps teams respond faster, keep messaging consistent, and manage engagement across Google and Facebook.</p>
<h3>What’s new</h3>
<h4>AI reply for Facebook reviews (assisted)</h4>
<ul>
<li>Generate AI-assisted replies for Facebook reviews from the Reviews page.</li>
<li>Review, edit, and send the suggested reply manually.</li>
</ul>
<h4>Automatic responses for Facebook reviews</h4>
<ul>
<li>Reviews AI Agents can automatically respond to Facebook reviews based on rules you configure.</li>
<li>After you create an agent, it can respond to matching reviews automatically to improve coverage and reduce manual work.</li>
</ul>
<h4>Select which Facebook pages to use</h4>
<p>When creating or editing an AI Agent, you can choose which Facebook pages should receive automated replies.</p>
<p>Supported review source options include:</p>
<ul>
<li>All sources</li>
<li>All Google pages</li>
<li>All Facebook pages</li>
</ul>
<h4>Agent rules and settings</h4>
<p>Facebook auto responses support existing agent settings, including:</p>
<ul>
<li>Review type or rating conditions</li>
<li>Tone selection</li>
<li>Language preference</li>
<li>Review source selection</li>
<li>Page-level source control</li>
</ul>
<h4>Available workflows</h4>
<ul>
<li><strong>Assisted mode:</strong> AI drafts a reply that users review, edit, and send.</li>
<li><strong>Auto response mode:</strong> AI Agents respond automatically based on selected pages and configured rules.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Faster replies to Facebook reviews</li>
<li>Better response coverage</li>
<li>Less manual effort for agencies and businesses</li>
<li>More consistent replies based on selected tone and language</li>
<li>Page-level automation for multi-location clients</li>
<li>Reviews AI support expanded beyond Google to another major review source</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Go to Reputation → Reviews.</li>
<li>Select AI Reply to generate a suggested response.</li>
<li>For auto responses: go to Reputation → Settings → Reviews AI, create an agent, choose tone/language/conditions, select All Facebook pages or specific pages under Review Source, and save.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:17:34.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;