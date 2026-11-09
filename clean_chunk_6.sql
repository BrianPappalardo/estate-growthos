INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1107', 'Browse AI integration: triggers and actions', 'What''s new You can now connect Browse AI directly to Workflows in Leadli. There is one instant trigger, New Completed Task, and four actions: Run Task, Bulk Run Tasks, Get Task, and Get Bulk Run. These let your automations respond to Browse AI robot runs and start new runs when n...', '<p><strong>What&#8217;s new</strong></p>
<p>You can now connect Browse AI directly to Workflows in Leadli. There is one instant trigger, New Completed Task, and four actions: Run Task, Bulk Run Tasks, Get Task, and Get Bulk Run. These let your automations respond to Browse AI robot runs and start new runs when needed.</p>
<p><strong>How it works</strong></p>
<p>The trigger fires when a Browse AI robot task finishes (filterable by Robot). It returns captured data plus task metadata. The four actions let workflows run a single robot, queue a bulk run, or fetch results from a previously started task or bulk run. Workflow variables are supported in every input field.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>In Workflows, add the Browse AI trigger or action.</li>
<li>Select Connect your account and paste your Browse AI API key (Settings > API Keys in your Browse AI dashboard).</li>
<li>For triggers, choose the Robot to monitor and optionally add a Select Operator filter, then run Find New Records to capture a sample payload.</li>
<li>For actions, choose the Robot ID and pass any input parameters the robot expects, then run Test Action to validate.</li>
<li>Save and publish.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Web scraping and content monitoring often live in a separate tool. Bringing Browse AI into Workflows in Leadli lets a customer-submitted URL trigger an on-demand scrape, a daily competitor monitor send an internal alert, and a CSV upload of URLs run as a bulk job with the results flowing back into the CRM.</p>
<p><strong>Use case</strong></p>
<p>A customer submits a competitor URL through a request form. The workflow runs the relevant Browse AI robot against the URL, waits for the task to finish (via the New Completed Task trigger), parses the captured fields, and writes them to the customer&#8217;s CRM record.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Trigger: New Completed Task (instant, webhook-backed). Filterable by Robot and Select Operator.</li>
<li>Actions: Run Task, Bulk Run Tasks, Get Task, Get Bulk Run.</li>
<li>API key authentication: generate a key in the Browse AI dashboard under Settings > API Keys.</li>
<li>Premium trigger and actions are billed per execution at the standard automation rate. Browse AI usage (robot/task credits) is billed by Browse AI.</li>
<li>Beta. Multi-account support is available via the Connected Account dropdown on each step.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:17:07.000Z'),
('wp-1106', 'AI Studio user permissions are now available', 'Leadli AI Studio now supports dedicated user permissions, giving admins and owners more control over who can access and manage AI Studio in their account. AI Studio has also been migrated to IAM V2 for more consistent permission management. What’s new View AI Studio : read-only a...', '<p>Leadli AI Studio now supports dedicated user permissions, giving admins and owners more control over who can access and manage AI Studio in their account. AI Studio has also been migrated to IAM V2 for more consistent permission management.</p>
<h2>What’s new</h2>
<ul>
<li><strong>View AI Studio</strong>: read-only access</li>
<li><strong>View &amp; Manage AI Studio</strong>: full read and write access</li>
</ul>
<p>Additional updates:</p>
<ul>
<li>AI Studio UI components and APIs are protected based on assigned permissions.</li>
<li>Only authorized users can create, edit, or manage AI Studio resources.</li>
<li>Permission enforcement is standardized through the IAM V2 framework.</li>
</ul>
<h2>Why this matters</h2>
<ol>
<li>Admins have more granular control over team access and responsibilities.</li>
<li>Teams can collaborate more safely while ensuring only the right users can manage AI Studio resources.</li>
<li>This update is based on a highly requested feature from the community</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:16:40.000Z'),
('wp-1105', 'Shopify integration is simpler with one-click connection', 'Connecting your Shopify store is now faster and easier. You can set up the integration in under a minute using an OAuth connection, without API tokens, custom app setup, or developer configuration. Note: If you already connected Shopify using the custom app method, your existing ...', '<p>Connecting your Shopify store is now faster and easier. You can set up the integration in under a minute using an OAuth connection, without API tokens, custom app setup, or developer configuration.</p>
<p><strong>Note:</strong> If you already connected Shopify using the custom app method, your existing integration continues to work. No action is required.</p>
<h2>What’s new</h2>
<ul>
<li><strong>One-click OAuth connection:</strong> Connect your Shopify store directly without creating a custom app or generating API tokens.</li>
<li><strong>Improved security:</strong> OAuth 2.0 avoids long-lived API credentials. Access is scoped and can be reviewed or revoked from Shopify at any time.</li>
<li><strong>Same sync features:</strong> Historic and real-time sync for customers, orders, transactions, products, and collections.</li>
<li><strong>Faster onboarding:</strong> Setup takes under a minute with fewer manual steps.</li>
</ul>
<h2>How to connect</h2>
<ol>
<li>Go to <strong>Settings</strong> &gt; <strong>Integrations</strong> &gt; <strong>Shopify</strong>, then click <strong>Connect</strong>.</li>
<li>Enter your Shopify store URL and click <strong>Next</strong>.</li>
<li>Choose your import and sync preferences, then click <strong>Save</strong>.</li>
<li>You’ll be redirected to Shopify to review permissions and click <strong>Install</strong>.</li>
<li>After approval, you’ll be redirected back to your account and the connection will be complete.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li><strong>Lower setup effort:</strong> Store owners can connect Shopify without dealing with custom apps or API scopes.</li>
<li><strong>Faster client onboarding:</strong> Agencies managing multiple stores can connect new integrations more quickly.</li>
<li><strong>Standard authorization flow:</strong> Uses Shopify’s familiar install and permission review process.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:16:19.000Z'),
('wp-1104', 'Multi-level ad campaign previews are now supported in the Template Library', 'What’s new The Ad Template Library now supports multi-level ad campaign previews for Meta, Google, and LinkedIn campaigns. You can view the full campaign structure, including multiple Ad Sets / Ad Groups and Ads within each campaign. Previews are aligned with each platform’s nati...', '<h2>What’s new</h2>
<ul>
<li>The Ad Template Library now supports multi-level ad campaign previews for Meta, Google, and LinkedIn campaigns.</li>
<li>You can view the full campaign structure, including multiple Ad Sets / Ad Groups and Ads within each campaign.</li>
<li>Previews are aligned with each platform’s native placements and formats.</li>
<li>The preview component is now shared across the Template Library and the Ad Manager campaign creation flow.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Select a campaign template from the Ad Template Library or while creating a campaign in Ad Manager.</li>
<li>The preview shows the hierarchy: Campaign → Ad Set / Ad Group → Ads.</li>
<li>Use the sidebar to switch between Ad Sets / Ad Groups and instantly preview the related creatives.</li>
<li>This same preview experience is also available when creating campaigns from templates in Leadli Ad Manager.</li>
</ol>
<h2>Why it matters</h2>
<ol>
<li>Helps you review complete campaign structures before creating a campaign.</li>
<li>Makes it easier to understand templates that include multiple ad sets/groups and creatives.</li>
<li>Reduces confusion from earlier single-ad-only previews.</li>
<li>Provides a more consistent preview experience across Meta, Google, and LinkedIn.</li>
<li>Improves confidence when using templates for agencies and advertisers.</li>
</ol>
<h2>Notes</h2>
<ol>
<li>Supports customer-created templates with multiple ad sets/groups and ads.</li>
<li>The preview component has been centralized and simplified for easier maintenance and scalability.</li>
<li>Placements shown in the preview include: Meta (Feed, Story, Reels), Google (Search, YouTube, Gmail), and LinkedIn (native placement).</li>
<li>Includes UI/UX improvements, fullscreen preview refinements, and non-scrollable preview optimizations.</li>
<li>Applies across the Template Library and the Ad Manager template-based campaign creation flow.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:15:57.000Z'),
('wp-1103', 'Enhanced Calendly reschedule handling in Leadli', 'Overview We improved how Calendly appointment reschedules are handled in Leadli to provide a consistent scheduling and automation experience. With this update, Calendly reschedules behave the same way as native Leadli appointment reschedules. This helps reschedule-based workflows...', '<h2>Overview</h2>
<p>We improved how Calendly appointment reschedules are handled in Leadli to provide a consistent scheduling and automation experience.</p>
<p>With this update, Calendly reschedules behave the same way as native Leadli appointment reschedules. This helps reschedule-based workflows, tags, and tracking work consistently across the platform.</p>
<h2>What’s new</h2>
<ul>
<li>Calendly reschedules are treated as true appointment reschedules in Leadli.</li>
<li>Existing appointments are updated instead of being recreated.</li>
<li>Rescheduled appointments are correctly marked as Rescheduled.</li>
<li>Reschedule-based automations and conditions work consistently for Calendly appointments.</li>
</ul>
<h2>How it works</h2>
<p>When an appointment is rescheduled in Calendly:</p>
<ul>
<li>The existing Leadli appointment is updated with the new date and time.</li>
<li>The appointment is marked as Rescheduled.</li>
<li>The previous appointment date and time is preserved for tracking.</li>
<li>Rescheduled tags and workflow conditions are applied correctly.</li>
</ul>
<p>Workflows using a “Rescheduled = True” filter will also work for Calendly reschedules.</p>
<h2>Why this matters</h2>
<ul>
<li>Creates a consistent scheduling experience across Calendly and Leadli.</li>
<li>Improves reliability for reschedule-based workflows and automations.</li>
<li>Enhances appointment tracking and reporting accuracy.</li>
<li>Reduces manual effort when managing appointment changes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-06-01T21:15:24.000Z'),
('wp-1102', 'One-click fixes for common email setup issues', 'Leadli now includes AI-powered one-click fixes for common email configuration issues, such as invalid custom value syntax or missing subject lines. What’s new When an email fails validation, you can run a one-click AI fix. The AI applies the correction, creates a required variant...', '<p>Leadli now includes AI-powered one-click fixes for common email configuration issues, such as invalid custom value syntax or missing subject lines.</p>
<h2>What’s new</h2>
<ul>
<li>When an email fails validation, you can run a one-click AI fix.</li>
<li>The AI applies the correction, creates a required variant when needed, and logs the updates in the Email AI chat window.</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Less manual troubleshooting for email setup errors.</li>
<li>Faster time to send by resolving issues automatically.</li>
<li>Improved send reliability by fixing invalid configurations.</li>
<li>Clear visibility into changes through the AI chat history.</li>
</ul>
<h2>How to test</h2>
<ol>
<li>Enable Email AI in Beta Labs.</li>
<li>Create a campaign email with an issue (for example, incorrect custom field syntax or a missing subject line/preview text).</li>
<li>Click Send, Schedule, or open the Checklist.</li>
<li>If validation errors appear, click <strong>Fix with AI</strong>.</li>
<li>Review the Email AI chat window to see what was fixed and what changes were logged.</li>
</ol>
<h2>Coming soon</h2>
<p>“Beautify with AI” is planned to improve mobile responsiveness, alignment, spacing, and overall email layout consistency with a single click.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:15:05.000Z'),
('wp-1101', 'SEO improvements: automatic alt text for store images and elements', 'This update adds automatic alt text generation for ecommerce images and store elements to improve SEO and accessibility. Alt text is created from existing information such as product name, collection name, store name, variant name, payment method, and the element context. If need...', '<p>This update adds automatic alt text generation for ecommerce images and store elements to improve SEO and accessibility.</p>
<p>Alt text is created from existing information such as product name, collection name, store name, variant name, payment method, and the element context. If needed, translations are used as a fallback.</p>
<h2>What is included</h2>
<ul>
<li><strong>Product images:</strong> main images use the product name; gallery images include the product name and image number; variant images include the product name and variant name; upsell and bundle images use the product name.</li>
<li><strong>Collection and branding:</strong> collection cover images use the collection name; header logos use the store name when no alt text is provided.</li>
<li><strong>Store elements:</strong> product cards, featured product, related products, cart item images, and checkout thumbnails use product-based alt text; components inside store elements use the component name when available.</li>
</ul>
<h2>How to use it</h2>
<p>No action is required. Alt text is generated automatically for supported ecommerce images and store elements.</p>
<h2>Notes</h2>
<ul>
<li>There is no new UI or manual alt text input in this version.</li>
<li>Alt text is generated from existing store and product information.</li>
<li>Storefront design and user workflow remain unchanged.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-06-01T21:14:41.000Z'),
('wp-1100', 'New templates now available in Leadli', 'New templates are now available to help you build websites, funnels, forms, surveys, emails, ads, and social posts more quickly in Leadli. Everything is fully customizable, so you can start with a finished layout and adjust it to match your brand. What’s included in this release ...', '<p>New templates are now available to help you build websites, funnels, forms, surveys, emails, ads, and social posts more quickly in Leadli. Everything is fully customizable, so you can start with a finished layout and adjust it to match your brand.</p>
<h3>What’s included in this release</h3>
<ul>
<li><strong>Website templates:</strong> 1 (Marketing Agency)</li>
<li><strong>Email templates:</strong> 1 (Insurance)</li>
<li><strong>Form templates:</strong> 1 (Creative)</li>
<li><strong>Survey templates:</strong> 1 (Home Services)</li>
<li><strong>Social templates:</strong> 4 (Home Services: 2, Health &amp; Wellness: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 (Restaurant and Bar: Bakery; Legal: Mediation and Arbitration Services; Creative: Jewelry Designer; Health &amp; Wellness: Wellness Coaching; Medical: Compound Pharmacy)</li>
<li><strong>Google ad templates:</strong> 5 (Beauty &amp; Fashion: Spa Services; Automotive: Vehicle Sales; Travel &amp; Hospitality: Hospitality Services; Restaurant &amp; Bar: Fine Dining Steakhouse; Real Estate: Architectural Design Firm)</li>
<li><strong>LinkedIn ad templates:</strong> 5 (Finance: Tax Specialist; Insurance: Commercial Insurance; Marketing Agency: PPC Management; Business Coaching &amp; Consulting: Real Estate Consulting; Marketing Agency: SEO Services)</li>
<li><strong>Snapshot:</strong> 1 (Legal: Mediation Services)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:14:14.000Z'),
('wp-1099', 'Company Smart Lists', 'You can now create Company Smart Lists to save a custom company view with your preferred filters, sorting, and visible fields. You can reopen the list at any time without setting it up again. What’s included Create Company Smart Lists in Companies Save advanced filters, sort orde...', '<p>You can now create Company Smart Lists to save a custom company view with your preferred filters, sorting, and visible fields. You can reopen the list at any time without setting it up again.</p>
<h2>What’s included</h2>
<ul>
<li>Create Company Smart Lists in Companies</li>
<li>Save advanced filters, sort order, and visible fields</li>
<li>Duplicate an existing Smart List</li>
<li>Export Smart List results to CSV</li>
<li>Share Smart Lists with all users or selected users</li>
<li>Choose view access or edit access for shared users</li>
<li>Copy and share a direct link to a Smart List</li>
<li>Update an existing Smart List or save as a new one</li>
<li>Use the Smart Lists management page to review all lists</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Turn on Company Smart Lists in Labs</li>
<li>Go to Contacts → Companies</li>
<li>Select + List</li>
<li>Set the filters, sorting, and fields you want</li>
<li>Name the list and save it</li>
<li>Reopen the list to edit, share, export, or duplicate it</li>
<li>Use the list settings to manage sharing, permissions, exports, duplicates, or deletion</li>
</ol>
<h2>Why this is useful</h2>
<ul>
<li>Reduces repetitive setup for teams working with Companies</li>
<li>Makes it easier to return to the same views you use most</li>
<li>Helps standardize company lists across users</li>
<li>Makes sharing filtered lists simpler</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This feature is currently available in Labs</li>
<li>Users with edit access can change sharing permissions</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:13:36.000Z'),
('wp-1098', 'Improved handling for inactive or unverified campaign domains', 'Email delivery is now better protected when a domain mapped in your Campaign Domain settings becomes inactive or unverified. Previously, emails could continue attempting to send after a mapped domain became inactive. With this update, email delivery is automatically prevented in ...', '<p>Email delivery is now better protected when a domain mapped in your Campaign Domain settings becomes inactive or unverified.</p>
<p>Previously, emails could continue attempting to send after a mapped domain became inactive. With this update, email delivery is automatically prevented in those cases, and a clear failure message is shown in Conversations.</p>
<h3>What’s new</h3>
<ul>
<li>Emails are automatically stopped if the mapped Campaign Domain becomes inactive or unverified.</li>
<li>Failed email attempts display a clear error message in Conversations.</li>
<li>Improved visibility into email delivery issues caused by domain verification status changes.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Helps prevent failed or unauthorized email delivery attempts from inactive domains.</li>
<li>Makes it immediately clear why an email failed.</li>
<li>Improves troubleshooting by surfacing domain verification issues directly in Conversations.</li>
<li>Enhances email reliability and domain compliance handling.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>If a Campaign Domain status changes from <strong>Active</strong> to <strong>Inactive</strong> or <strong>Unverified</strong>, sending automatically stops for emails using that domain.</li>
<li>The email activity is marked as failed.</li>
<li>A message in Conversations explains that the email failed because the domain is not verified.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:13:19.000Z'),
('wp-1097', 'Client Portal domain settings are now managed in Dedicated Domain Setup', 'Client Portal email domain management is now simpler. Client Portal domain settings have moved from Notifications Domain Configuration to the main Domain Configuration page under Dedicated Domain Setup . Client Portal emails can still be viewed in Conversations, and domain manage...', '<p>Client Portal email domain management is now simpler. Client Portal domain settings have moved from <strong>Notifications Domain Configuration</strong> to the main <strong>Domain Configuration</strong> page under <strong>Dedicated Domain Setup</strong>.</p>
<p>Client Portal emails can still be viewed in Conversations, and domain management is now more centralized.</p>
<h3>What’s changed</h3>
<ul>
<li>Client Portal domain configuration has moved from Notifications Domain Configuration to Domain Configuration.</li>
<li>Client Portal emails can be viewed directly within Conversations.</li>
<li>Email domain types are managed in one place.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Email Services</strong>.</li>
<li>Open <strong>Dedicated Domain Setup</strong>.</li>
<li>Go to <strong>Domain Configuration</strong>.</li>
<li>Configure the <strong>Client Portal</strong> domain.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:11:51.000Z'),
('wp-1096', 'Use associated company fields in the custom value picker', 'The Company object is now more useful. You can reference Company fields (standard and custom) across the platform as custom values in emails, workflows, contracts, conversations, and AI context. This lets you use the business details stored on Company records for more accurate pe...', '<p>The Company object is now more useful. You can reference Company fields (standard and custom) across the platform as custom values in emails, workflows, contracts, conversations, and AI context. This lets you use the business details stored on Company records for more accurate personalization and automation.</p>
<h2>What’s new</h2>
<ul>
<li>Company fields are available in the Custom Value Picker, including standard fields and custom Company fields.</li>
<li>These values can be used in Workflows, Email Builder, Email Campaigns, Conversations, Documents and Contracts, Bulk Actions, and Conversation AI.</li>
<li>Each custom value uses the Company associated with the Contact at runtime.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Personalization: reference company name, industry, account tier, or other attributes in messages.</li>
<li>Documents: auto-fill proposals and agreements using Company context.</li>
<li>AI replies: Conversation AI can use Company information in responses.</li>
<li>Automation: use Company data in workflows without workarounds.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open a supported tool (for example, Conversations or a Workflow “Send Email” action).</li>
<li>Open the Custom Value Picker in the editor toolbar.</li>
<li>Select the Company group.</li>
<li>Choose a standard or custom Company field.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:43:21.000Z'),
('wp-1095', 'Math Operation for company and custom object workflows', 'What’s new The Math Operation action is now available in company-based workflows and custom object-based workflows. This lets you run calculations on numeric values stored on a company record or a custom object record. How it works When your workflow reaches the Math Operation ac...', '<p><strong>What’s new</strong></p>
<p>The Math Operation action is now available in company-based workflows and custom object-based workflows. This lets you run calculations on numeric values stored on a company record or a custom object record.</p>
<p><strong>How it works</strong></p>
<p>When your workflow reaches the Math Operation action, Leadli calculates the values you selected and stores the result so you can use it in later steps.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a company-based or custom object-based workflow.</li>
<li>Add the Math Operation action.</li>
<li>Select the values and the operation, then use the result in the next steps.</li>
</ul>
<p><strong>Example</strong></p>
<ul>
<li>Use a custom object workflow to calculate total project cost by adding material cost and labor cost stored on the project record.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Supported in company-based workflows.</li>
<li>Supported in custom object-based workflows.</li>
<li>Uses the same Math Operation behavior available in other workflow types.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-22T15:43:05.000Z'),
('wp-1094', 'Share meeting recordings directly as a Leadli Community post', 'You can now share meeting recordings into a Community as a post in a few clicks. This makes it easier to continue conversations and share updates after a meeting. What’s new A "Share as Post" action is available on recordings, so you can publish a recording without leaving your c...', '<p>You can now share meeting recordings into a Community as a post in a few clicks. This makes it easier to continue conversations and share updates after a meeting.</p>
<p><strong>What’s new</strong></p>
<p>A &#8220;Share as Post&#8221; action is available on recordings, so you can publish a recording without leaving your current workflow.</p>
<p><strong>How to share a recording</strong></p>
<ol>
<li>Go to your profile menu (top-right avatar) and select <em>Manage Profile</em>.</li>
<li>Select <em>Meetings</em>, then view <em>Recordings</em>.</li>
<li>Choose the recording you want to share, then select the three-dot menu.</li>
<li>Select <em>Share as Post</em> to open the Community selection window.</li>
<li>Choose the Community and channel where you want to publish the post.</li>
</ol>
', 'courses', ARRAY['wp-import']::text[], '2026-05-22T15:42:51.000Z'),
('wp-1093', 'Custom modal height for embedded forms, surveys, and quizzes', 'Overview We improved the embed experience for forms, surveys, and quizzes by giving you more control over popup modal sizing and by making key builder actions more reliable while a form is loading. What’s improved You can set a custom modal height for Popup, Polite Slide-in, and ...', '<h2>Overview</h2>
<p>We improved the embed experience for forms, surveys, and quizzes by giving you more control over popup modal sizing and by making key builder actions more reliable while a form is loading.</p>
<h2>What’s improved</h2>
<ul>
<li>You can set a custom modal height for Popup, Polite Slide-in, and Sticky Sidebar embeds.</li>
<li>This helps embedded forms fit better on host pages instead of feeling too tall or too small.</li>
<li>Preview, Integrate, and Save stay disabled until the builder fully loads, which prevents clicks that don’t respond.</li>
<li>Existing embeds work the same unless you add a modal height.</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open a Form, Survey, or Quiz in the builder.</li>
<li>Wait for the builder to finish loading, then click Integrate.</li>
<li>Select Embed Code and choose Popup, Polite Slide-in, or Sticky Sidebar.</li>
<li>Enter a value in Modal height, then copy and use the embed code.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Gives you more control over how embedded forms appear on your site.</li>
<li>Helps avoid awkward modal sizing across different pages and screen sizes.</li>
<li>Reduces confusion caused by clicking actions before the form is ready.</li>
<li>Keeps older embeds compatible.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:42:20.000Z'),
('wp-1092', 'Manage Fields now shows all form, survey, and quiz fields', 'Overview Manage Fields has been updated so you can see all fields from your form, survey, or quiz, even if those fields do not have submission data yet. Previously, Manage Fields only displayed fields that already had data from at least one submission. Now it also includes fields...', '<h2>Overview</h2>
<p>Manage Fields has been updated so you can see all fields from your form, survey, or quiz, even if those fields do not have submission data yet.</p>
<p>Previously, Manage Fields only displayed fields that already had data from at least one submission. Now it also includes fields from the form definition, which makes it easier to set up and manage columns before new submissions come in.</p>
<h2>What’s improved</h2>
<ul>
<li>Manage Fields now shows all fields from your form, survey, or quiz definition</li>
<li>New fields appear even if they have not received any submission data yet</li>
<li>Fields added after earlier submissions will now appear in the available fields list</li>
<li>Available but unselected fields show up in the Add Fields section</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Go to Sites &gt; Forms, Surveys, or Quizzes</li>
<li>Open the three-dot menu for the item you want</li>
<li>Click View Submission</li>
<li>On the Submissions page, click Manage Columns to view and add fields from the definition</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Makes it easier to manage columns before new submissions arrive</li>
<li>Improves visibility into all available fields</li>
<li>Helps you prepare reports and views without waiting for test or live submissions</li>
<li>Creates a more complete and predictable submissions management experience</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:42:02.000Z'),
('wp-1091', 'Gradient backgrounds for buttons in forms, surveys, and quizzes', 'Overview You can now use gradient backgrounds for buttons in the Form, Survey, and Quiz Builder. This lets you switch between a solid color and a gradient directly in the button settings. What’s improved Apply a gradient background to buttons Choose solid color or gradient stylin...', '<h2>Overview</h2>
<p>You can now use gradient backgrounds for buttons in the Form, Survey, and Quiz Builder. This lets you switch between a solid color and a gradient directly in the button settings.</p>
<h2>What’s improved</h2>
<ul>
<li>Apply a gradient background to buttons</li>
<li>Choose solid color or gradient styling</li>
<li>Use linear, radial, or angular gradients</li>
<li>Adjust the gradient angle where supported</li>
<li>Add and edit multiple color stops</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Form, Survey, or Quiz Builder and select a button element.</li>
<li>In the button style settings, open <strong>Button Background</strong>, then switch from solid color to gradient and customize the colors, type, and angle.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>More flexibility when styling buttons</li>
<li>Easier to create modern, dynamic designs</li>
<li>Customize buttons without custom code</li>
<li>Existing button styles continue to work</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-22T15:41:35.000Z'),
('wp-1090', 'Load the chat widget after visitor interaction', 'What’s new A new Load on user interaction toggle is available in Chat Widget > Chat Window tab > Additional Options . When enabled, the chat widget delays loading until a visitor interacts with the website. This can improve initial page performance by reducing widget loading duri...', '<h2>What’s new</h2>
<ul>
<li>A new <strong>Load on user interaction</strong> toggle is available in <strong>Chat Widget &gt; Chat Window tab &gt; Additional Options</strong>.</li>
<li>When enabled, the chat widget delays loading until a visitor interacts with the website.</li>
<li>This can improve initial page performance by reducing widget loading during page render.</li>
<li>Existing widgets keep the current behavior unless this toggle is enabled.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget Builder</strong>.</li>
<li>Open the <strong>Chat Window</strong> tab for the chat widget you want to update.</li>
<li>Under <strong>Additional Options</strong>, enable <strong>Load on user interaction</strong>.</li>
<li>After it is enabled, the widget loads after a visitor interaction such as scroll, click, or touch. If there is no interaction, the widget loads automatically after a fallback delay (about 8 seconds).</li>
<li>If the toggle is disabled or not configured, the widget loads immediately as it does today.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces immediate script execution during page load.</li>
<li>Can improve user experience, especially on mobile devices.</li>
<li>Keeps the widget available while minimizing impact on page speed.</li>
<li>Gives businesses more flexibility in balancing performance and customer engagement.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Existing widgets will continue using immediate load behavior unless the setting is enabled.</li>
<li>This applies to customer-facing chat widgets placed on a website or other digital property.</li>
<li>Fallback auto-load behavior helps ensure the widget is still available even without interaction.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-22T15:41:17.000Z'),
('wp-1089', 'Integration setup is smoother with field previews', 'What’s new Leadli now uses a shared integration experience for workflow actions and triggers. Steps that use integrations show required fields up front, help you connect the right account without leaving the workflow, and support multiple connected accounts when available. How it...', '<p><strong>What’s new</strong></p>
<p>Leadli now uses a shared integration experience for workflow actions and triggers. Steps that use integrations show required fields up front, help you connect the right account without leaving the workflow, and support multiple connected accounts when available.</p>
<p><strong>How it works</strong></p>
<p>If an integration is not connected, the action or trigger panel shows a connection banner and a locked preview of the fields. Selecting <em>Connect your account</em> opens the integration setup in a new browser tab so you can finish connecting without losing your place. After you connect, the fields unlock and the selected account appears in the action or trigger.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open an integration-based action or trigger in a workflow.</li>
<li>Select <em>Connect your account</em> if no account is connected.</li>
<li>Choose the connected account and complete the field setup.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, it was common to find out an integration was missing only after saving a workflow, with limited guidance on what to do next. It was also hard to see which fields and options an integration supports before connecting an account. This update reduces setup errors and makes integration-based steps easier to understand.</p>
<p><strong>Examples</strong></p>
<ul>
<li>When someone opens a Typeform action from a workflow template, they can review the available fields before connecting their account, and then update the configuration after connecting.</li>
<li>When someone opens a Slack action with multiple connected accounts, they can choose the correct account from the dropdown and the available connections reload for that account.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Field options can appear as a preview before an integration is connected.</li>
<li>If a connected account is removed or becomes invalid, the step returns to a locked, connection-required state.</li>
<li>Some apps load fields in stages after connection based on earlier selections.</li>
<li>Dynamic fields that depend on the selected account can reset when the account changes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:40:57.000Z'),
('wp-1088', 'Conditional visibility improvements', 'Conditional visibility is now more flexible and easier to manage, with support for layouts and value-based conditions. What’s changed Visibility rules for layouts : You can apply conditional visibility to an entire layout instead of setting rules on each element. Layouts now incl...', '<p>Conditional visibility is now more flexible and easier to manage, with support for layouts and value-based conditions.</p>
<h3>What’s changed</h3>
<ul>
<li><strong>Visibility rules for layouts</strong>: You can apply conditional visibility to an entire layout instead of setting rules on each element. Layouts now include a dedicated Visibility tab next to Edit. This is also available in HighRise.</li>
<li><strong>New value-based operators</strong>: You can now use <code>IS EMPTY</code> and <code>IS PRESENT</code> for more dynamic conditions. All custom fields, including attachment fields, are supported in the conditional visibility field selector.</li>
</ul>
<h3>Example use cases</h3>
<ul>
<li>Show a “Download Invoice” button only when an attachment field <code>IS PRESENT</code>.</li>
<li>Hide a personalized greeting when <code>first_name</code> is <code>EMPTY</code>.</li>
</ul>
<h3>Impact</h3>
<ul>
<li>Reduces repetitive rule setup across multiple elements.</li>
<li>Helps handle empty or missing field values more cleanly.</li>
<li>Allows entire sections to hide gracefully.</li>
<li>Makes conditional visibility more powerful while preserving existing behavior.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Select a layout or element in the email builder.</li>
<li>Open the Visibility tab.</li>
<li>Choose the field you want to evaluate.</li>
<li>Select a condition (<code>IS</code>, <code>IS NOT</code>, <code>IS EMPTY</code>, or <code>IS PRESENT</code>).</li>
<li>If needed, set the required value and save.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:39:24.000Z'),
('wp-1087', 'Conversation logs for contact preference updates', 'Update: Conversation logs are now created when a contact communication preference is changed. These preference updates will appear directly in the Conversations view when the change is made by either: the contact a user on the contact’s behalf What changed Preference status updat...', '<p><strong>Update:</strong> Conversation logs are now created when a contact communication preference is changed.</p>
<p>These preference updates will appear directly in the Conversations view when the change is made by either:</p>
<ul>
<li>the contact</li>
<li>a user on the contact’s behalf</li>
</ul>
<p><strong>What changed</strong></p>
<ul>
<li>Preference status updates are now logged in Conversations.</li>
<li>This improves visibility into when and how preferences were updated.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Teams can see preference-related updates without leaving Conversations.</li>
<li>It’s easier to understand context for follow-up and compliance.</li>
</ul>
<p><strong>Coming next</strong></p>
<p>Additional visibility improvements are in progress, including filters on the Contact Listing page.</p>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:39:07.000Z'),
('wp-1086', 'Wait action update: redesigned scheduling and setup', 'Overview The Wait action has been redesigned with a clearer setup flow, recurring schedules, and an AI-assisted option to help configure common wait behaviors. What changed Intent-based setup: Instead of a long dropdown, you choose what the contact should wait for first, then con...', '<h2>Overview</h2>
<p>The Wait action has been redesigned with a clearer setup flow, recurring schedules, and an AI-assisted option to help configure common wait behaviors.</p>
<h2>What changed</h2>
<ul>
<li><strong>Intent-based setup:</strong> Instead of a long dropdown, you choose what the contact should wait for first, then configure the details.</li>
<li><strong>Recurring schedules:</strong> You can set weekly, monthly, or yearly recurring waits. Weekly supports specific days and times. Monthly supports a specific day or an nth weekday. Yearly supports renewals and annual check-ins.</li>
<li><strong>Wait until a specific date (single step):</strong> Date-based waiting is now configured in one step, including the option to pull the date from a custom field.</li>
<li><strong>Seconds as a unit:</strong> Time delays can be set in seconds for very short pauses between steps.</li>
<li><strong>Dynamic duration:</strong> Wait duration can be pulled from a contact field, custom field, or other supported variable instead of using a fixed value.</li>
<li><strong>Grouped wait types:</strong> Related wait options are grouped together to reduce clutter (for example, contact actions and email events in one place).</li>
<li><strong>Context-based ordering:</strong> If a Wait step follows a send step (SMS, Email, or WhatsApp), “wait for the contact to reply” is surfaced first.</li>
<li><strong>Wait AI option:</strong> You can describe the wait behavior in plain language, and the builder generates a configured Wait action that you can adjust.</li>
</ul>
<h2>Why this matters</h2>
<p>This update reduces setup confusion and removes extra steps for common scenarios (especially waiting until a specific date). It also makes frequently used options easier to find, which should reduce support requests related to workflow timing.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-22T15:38:48.000Z'),
('wp-1084', 'Facebook Lead Ads: Merge contacts by name for lead form submissions', 'Overview We updated the Facebook contact merge feature to support Facebook Lead Form submissions, in addition to Messenger conversations. What changed Previously, the setting "Merge Facebook contacts by name" only applied to Facebook Messenger conversations. Now there are two sep...', '<h2>Overview</h2>
<p>We updated the Facebook contact merge feature to support Facebook Lead Form submissions, in addition to Messenger conversations.</p>
<h2>What changed</h2>
<p>Previously, the setting &#8220;Merge Facebook contacts by name&#8221; only applied to Facebook Messenger conversations.</p>
<p>Now there are two separate settings under<strong> Business Profile &gt; General</strong>:</p>
<ul>
<li>Merge Facebook contacts by matching contact names from Messenger conversations</li>
<li>Merge Facebook contacts by matching contact names from Facebook Lead Form submissions</li>
</ul>
<p>This lets you control merge behavior separately for Messenger contacts and Facebook Lead Ads lead form submissions.</p>
<h2>Why it matters</h2>
<p>This update helps reduce duplicate contacts when leads do not have consistent phone numbers or email addresses.</p>
<ul>
<li>Fewer duplicate contacts</li>
<li>Cleaner CRM records</li>
<li>Improved lead continuity</li>
<li>More reliable contact management across Facebook sources</li>
</ul>
<p>Separating the Messenger and Lead Form settings also provides clearer control over Facebook contact deduplication.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-05-22T15:38:20.000Z'),
('wp-1082', 'Keyboard shortcuts for product images in the lightbox', 'Update You can now use keyboard shortcuts on the Product Details Page when the Open Lightbox zoom option is enabled. What you can do Escape : Close the lightbox Right Arrow : Next image Left Arrow : Previous image Navigation supports wrap-around (last to first, and first to last)...', '<h2>Update</h2>
<p>You can now use keyboard shortcuts on the Product Details Page when the Open Lightbox zoom option is enabled.</p>
<h2>What you can do</h2>
<ul>
<li><strong>Escape</strong>: Close the lightbox</li>
<li><strong>Right Arrow</strong>: Next image</li>
<li><strong>Left Arrow</strong>: Previous image</li>
</ul>
<p>Navigation supports wrap-around (last to first, and first to last). When the lightbox opens, it auto-focuses so the shortcuts work right away. Arrow keys will not scroll the page behind the lightbox.</p>
<h2>How to use</h2>
<ol>
<li>Open a Product Details Page with Open Lightbox zoom enabled.</li>
<li>Click a product image to open the lightbox.</li>
<li>Use Escape, Left Arrow, or Right Arrow to navigate.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The thumbnail strip auto-scrolls to keep the active thumbnail visible.</li>
<li>Mouse actions (arrows, thumbnails, close, zoom, grid toggle) work the same as before.</li>
<li>Supported in both the Page Builder and Builder Preview.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:57:29.000Z'),
('wp-1081', 'AI Agent can now update custom values', 'The AI Agent tool now supports updating custom values as a built-in action. This lets the agent evaluate context during a workflow run and write directly to custom values inside a sub-account. It replaces complex If/Else branching that previously required many separate steps. Wha...', '<p>The AI Agent tool now supports updating custom values as a built-in action. This lets the agent evaluate context during a workflow run and write directly to custom values inside a sub-account. It replaces complex If/Else branching that previously required many separate steps.</p>
<h2>What’s included</h2>
<ul>
<li>Reduces the need for large If/Else trees used to set custom values based on conditions such as day of the week, contact data, date formatting, timezone, or pipeline stage.</li>
<li>Supports the familiar &#8220;Let AI decide&#8221; option or a static value, consistent with other AI Agent tools.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Select <strong>Update Custom Value</strong> as a tool inside the AI Agent action.</li>
<li><strong>Custom Value:</strong> choose a specific custom value to update, or set it to &#8220;Let AI decide&#8221; so the agent selects the right field.</li>
<li><strong>New Value:</strong> enter a fixed value or variable reference, or set it to &#8220;Let AI decide&#8221; so the agent generates the value based on your instructions.</li>
</ol>
<h2>Why this matters</h2>
<p>Workflows that previously needed branching logic for schedules, formatted dates, rolling promo codes, and other context-aware values can now be handled in a single agent step. This reduces maintenance, speeds up execution, and keeps automations simpler.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:57:10.000Z'),
('wp-1083', 'Customize fields in Leadli Marketing Audit website widgets', 'We released new customization options for Marketing Audit Report website widgets. These updates give you more control over how your lead capture form appears to visitors. What’s new You can now customize: Input field labels Placeholder text Supported fields include: First name La...', '<p>We released new customization options for Marketing Audit Report website widgets. These updates give you more control over how your lead capture form appears to visitors.</p>
<h2>What’s new</h2>
<p>You can now customize:</p>
<ul>
<li>Input field labels</li>
<li>Placeholder text</li>
</ul>
<p>Supported fields include:</p>
<ol>
<li>First name</li>
<li>Last name</li>
<li>Phone number</li>
<li>Email</li>
<li>Business</li>
<li>Website</li>
</ol>
<h2>Why it matters</h2>
<p>Marketing audit widgets are often used as lead magnets on websites, landing pages, ads, and outbound campaigns. Previously, the field wording was fixed and could not be adjusted for different audiences.</p>
<p>With this update, you can:</p>
<ul>
<li>Match the widget text to your brand voice</li>
<li>Use more conversion-focused wording</li>
<li>Adapt labels for different industries or use cases</li>
<li>Create a more personalized lead capture experience</li>
</ul>
<p>Examples:</p>
<ul>
<li>“Business name” → “Company name”</li>
<li>“Website” → “Enter your website URL”</li>
<li>“Phone number” → “Best number to reach you”</li>
</ul>
<h2>Expected impact</h2>
<ol>
<li>Better alignment with landing page messaging</li>
<li>Improved flexibility for agencies managing multiple campaigns</li>
<li>A more personalized and conversion-friendly lead capture form</li>
</ol>
<h2>What’s next</h2>
<p>Upcoming improvements are planned for:</p>
<ol>
<li>Support for custom fields</li>
<li>Field-level visibility and functionality controls</li>
<li>More advanced layout and customization options</li>
</ol>
<p>These changes make Marketing Audit widgets more flexible and easier to tailor to different business needs.</p>
<p>Note: Marketing Audit reports are primarily for lead generation for marketing agencies. If this is you, reach out to our support team to enable this in your account.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-05-19T15:56:53.000Z'),
('wp-1080', 'Customize quiz result content by category', 'Overview You can now personalize quiz result pages by setting different content for each quiz category. This makes results clearer for the contact and reduces the time needed to set up personalized outcomes. What changed Set custom result content per category (text, CTA text, and...', '<h2>Overview</h2>
<p>You can now personalize quiz result pages by setting different content for each quiz category. This makes results clearer for the contact and reduces the time needed to set up personalized outcomes.</p>
<h2>What changed</h2>
<ul>
<li>Set custom result content per category (text, CTA text, and links).</li>
<li>Apply content to the highest-scoring category result or the lowest-scoring category result.</li>
<li>Use the first category as a starting template for other categories to speed up setup.</li>
<li>Previewing and editing category content is clearer during setup.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the Quiz Builder.</li>
<li>Go to <strong>Customize Result Page</strong> and select <strong>Add Section</strong>.</li>
<li>Choose <strong>Individual Category</strong> to add the section to the results page.</li>
<li>Select the new Individual Category section to expand it.</li>
<li>Choose the category you want to edit.</li>
<li>Use <strong>Display Category</strong> to choose whether the content applies to <strong>Highest Score</strong> or <strong>Lowest Score</strong>.</li>
<li>Update the content and save.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:55:56.000Z'),
('wp-1079', 'AI Agent action: Knowledge Base Search', 'Overview The AI Agent action now includes Knowledge Base Search as a built-in tool. During execution, the agent can search your knowledge base in real time and use the results to improve accuracy and responses. What it does Connects to your knowledge base, where your business inf...', '<h2>Overview</h2>
<p>The AI Agent action now includes Knowledge Base Search as a built-in tool. During execution, the agent can search your knowledge base in real time and use the results to improve accuracy and responses.</p>
<h2>What it does</h2>
<ul>
<li>Connects to your knowledge base, where your business information already lives (services, pricing, offerings, booking rules, FAQs, and more).</li>
<li>Pulls only the information needed for the current request instead of loading large, static content into prompts.</li>
<li>Helps avoid copying long FAQ lists and business details into prompts, which can increase token usage and reduce accuracy.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Select <strong>Knowledge Base Search</strong> as a tool inside the AI Agent action.</li>
<li>Choose which knowledge bases the agent should search.</li>
<li>Set a fixed search query, or allow the agent to choose a query based on the conversation.</li>
<li>Set how many content chunks the agent should retrieve.</li>
</ol>
<h2>Why it matters</h2>
<p>Instead of adding pages of business context up front, the agent can fetch what it needs at runtime. This keeps the context window smaller, reduces token usage, and helps the agent stay focused on relevant information.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:55:32.000Z'),
('wp-1078', 'Ask AI blog generation: create full blog drafts from a simple prompt', 'We’ve upgraded Ask AI into a full blog-writing assistant. You can now generate complete, SEO-friendly blog drafts directly inside Ask AI without switching tools or building content from scratch. From topic ideas to long-form content, Ask AI helps you create blogs faster and with ...', '<p>We’ve upgraded Ask AI into a full blog-writing assistant.</p>
<p>You can now generate complete, SEO-friendly blog drafts directly inside Ask AI without switching tools or building content from scratch. From topic ideas to long-form content, Ask AI helps you create blogs faster and with less effort.</p>
<h3>What’s new</h3>
<ol>
<li><strong>AI-powered blog generation</strong><br />Ask AI can generate complete blog drafts from a topic or prompt, including:
<ul>
<li>Blog title suggestions</li>
<li>Structured headings and subheadings</li>
<li>SEO-friendly formatting</li>
<li>Long-form paragraphs</li>
<li>Ready-to-edit blog drafts</li>
</ul>
</li>
<li><strong>Smarter content with web context</strong><br />Ask AI can use web-based context to generate more relevant and up-to-date content. This improves:
<ul>
<li>Topic relevance</li>
<li>Content depth</li>
<li>Accuracy for trending topics</li>
<li>Overall blog quality</li>
</ul>
</li>
<li><strong>Multi-language support</strong><br />Generate blog content in multiple languages to support localized publishing for global teams.</li>
<li><strong>URL referencing support</strong><br />You can provide URLs for contextual reference so Ask AI can generate more aligned content.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Open Ask AI</li>
<li>Enter a topic or custom prompt</li>
<li>Optionally add one or more URLs for context</li>
<li>Generate the structured blog draft</li>
<li>Edit, refine, and publish as needed</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Generate blogs faster</li>
<li>Reduce dependency on external AI writing tools</li>
<li>Create SEO-friendly content directly inside Leadli</li>
<li>Improve publishing consistency and output</li>
<li>Simplify long-form content creation workflows</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:55:18.000Z'),
('wp-1077', 'Media Center: Upload and download folders', 'Overview The Media Center now supports uploading and downloading folders, along with performance and usability improvements. You can upload full folders, download folders as a zip file, and follow clearer progress updates while keeping the folder structure intact. What’s improved...', '<h2>Overview</h2>
<p>The Media Center now supports uploading and downloading folders, along with performance and usability improvements.</p>
<p>You can upload full folders, download folders as a zip file, and follow clearer progress updates while keeping the folder structure intact.</p>
<h2>What’s improved</h2>
<ul>
<li>Added an <strong>Upload Folder</strong> option in the Media Center</li>
<li>Upload entire folders (including subfolders and files) in a single action</li>
<li>Drag and drop now supports folders, multiple folders, and mixed uploads (folders plus individual files)</li>
<li>Download folders as a single zip file</li>
<li>Progress tracking now shows a clearer folder-based view, including nested files and subfolders</li>
<li>Folder uploads and downloads preserve the original folder structure</li>
<li>Sorting changes in the main grid are reflected in the <strong>Move to Folder</strong> modal</li>
<li>Improved upload and download performance for larger file batches</li>
<li>Clearer handling for upload limits, skipped files, and partial completion states</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Media Center.</li>
<li>In the header, select <strong>Upload Folder</strong> (next to <strong>Upload File</strong>), or drag and drop folders directly into the Media Center.</li>
<li>To download a folder, use the <strong>Download</strong> option on the folder to save it as a zip file.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Speeds up uploading and organizing large batches of media</li>
<li>Preserves folder structure without manual reorganization</li>
<li>Improves visibility into upload and download progress</li>
<li>Reduces friction when moving media in and out of the Media Center</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-19T15:54:58.000Z'),
('wp-1076', 'New templates are now available', 'New templates are now available to help you build websites, funnels, forms, surveys, and email campaigns faster. These templates are customizable and designed to help you publish and launch with less setup time. New templates included Website templates: 1 Home Services: 1 Email t...', '<p>New templates are now available to help you build websites, funnels, forms, surveys, and email campaigns faster. These templates are customizable and designed to help you publish and launch with less setup time.</p>
<p><strong>New templates included</strong></p>
<p>Website templates: 1</p>
<p>Home Services: 1</p>
<p>Email templates: 1</p>
<p>Finance: 1</p>
<p>Form templates: 1</p>
<p>Automotive: 1</p>
<p>Survey templates: 1</p>
<p>Business, Coaching &amp; Consulting: 1</p>
<p>Social templates: 4</p>
<p>Financial: 2</p>
<p>Creative: 2</p>
<p>Facebook ad templates: 5</p>
<p>Business Coaching &amp; Consulting (Career Coaching)</p>
<p>Home Services (Plumber)</p>
<p>Restaurant and Bar (Ice Cream Shop)</p>
<p>Creative (Art Gallery)</p>
<p>Medical (Direct Primary Care Provider)</p>
<p>Google ad templates: 5</p>
<p>Other (Pet Groomer)</p>
<p>Medical (Primary Care Provider)</p>
<p>Marketing Agency (Digital Marketer)</p>
<p>Legal (Workers Compensation Attorney)</p>
<p>Insurance (Business Coverage)</p>
<p>LinkedIn ad templates: 5</p>
<p>Real Estate (Title Insurance Representative)</p>
<p>Finance (Bookkeeper)</p>
<p>Insurance (Property &amp; Casualty Insurance Rep)</p>
<p>Marketing Agency (Public Relations Firm)</p>
<p>Real Estate (Property Staging)</p>
<p>New snapshot: 1</p>
<p>Marketing Agency (Visual Advertising Agency)</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:54:41.000Z'),
('wp-1075', 'Contact tag updates now require Apply or Cancel confirmation', 'We updated the tag management experience in the Leadli Contacts module by adding a confirmation step when adding or removing tags. This helps prevent accidental tag changes and reduces unintended workflow triggers. What changed Added an Apply button to confirm tag changes Added a...', '<p>We updated the tag management experience in the Leadli Contacts module by adding a confirmation step when adding or removing tags. This helps prevent accidental tag changes and reduces unintended workflow triggers.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Added an <strong>Apply</strong> button to confirm tag changes</li>
<li>Added a <strong>Cancel</strong> button to discard changes</li>
<li>Added confirmation when adding new tags and when removing existing tags</li>
<li>Reduced unintended workflow triggers caused by accidental tag updates</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open the tag dropdown on a contact</li>
<li>Select or clear the tags you want to change</li>
<li>Click <strong>Apply</strong> to save the change, or <strong>Cancel</strong> to leave tags unchanged</li>
</ol>
<p><strong>What&#8217;s coming next</strong></p>
<ul>
<li>Tag categories for better organization</li>
<li>Tag colors for easier identification</li>
<li>Category and color visibility inside the tag dropdown</li>
<li>Selected tag counts displayed for each category</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:54:27.000Z'),
('wp-1074', 'AskAI for Courses', 'Building courses is now faster and easier with AskAI. You can create, edit, organize, and manage courses directly through chat, which helps you go from an idea to a published product in minutes. What AskAI can do Generate complete course outlines with modules and lessons Create l...', '<p><strong>Building courses is now faster and easier with AskAI.</strong></p>
<p>You can create, edit, organize, and manage courses directly through chat, which helps you go from an idea to a published product in minutes.</p>
<h2>What AskAI can do</h2>
<ul>
<li>Generate complete course outlines with modules and lessons</li>
<li>Create lesson content in HTML format</li>
<li>Build quizzes, assessments, and assignments</li>
<li>Manage course settings such as drip schedules, locks, publishing, instructor details, and branding</li>
<li>Create and configure offers</li>
<li>Guide you step by step through the course creation process</li>
<li>Assist with comments, assignments, and other course management workflows</li>
</ul>
<h2>Built-in guardrails</h2>
<ul>
<li>Confirmation prompts for sensitive actions</li>
<li>Clear risk warnings where applicable</li>
<li>Restricted delete actions to help prevent accidental content loss</li>
</ul>
<h2>Why it matters</h2>
<p>AskAI helps make course creation faster, simpler, more creative, and more scalable.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:33:08.000Z'),
('wp-1072', 'Pinterest multi-board publishing in Leadli Social Planner', 'You can now publish a single Pinterest pin to multiple boards from Leadli Social Planner. What changed Multi-board selection (up to 25 boards) : Choose multiple Pinterest boards for one post. Per-board publishing : Each selected board creates its own published pin automatically. ...', '<p>You can now publish a single Pinterest pin to multiple boards from Leadli Social Planner.</p>
<h3>What changed</h3>
<ul>
<li><strong>Multi-board selection (up to 25 boards)</strong>: Choose multiple Pinterest boards for one post.</li>
<li><strong>Per-board publishing</strong>: Each selected board creates its own published pin automatically.</li>
<li><strong>Works across publishing options</strong>: Instant publish, scheduled posts, approval workflows, recurring posts, category queue, and CSV bulk uploads.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Create a new Pinterest post.</li>
<li>Select your Pinterest account(s).</li>
<li>Choose up to 25 boards in the Boards selector.</li>
<li>Publish, schedule, or queue the post.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Reduces manual duplication.</li>
<li>Speeds up Pinterest publishing.</li>
<li>Keeps tracking and analytics separated by board.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Maximum of 25 boards per Pinterest account.</li>
<li>Failures on one board do not block the others.</li>
<li>Existing Pinterest drafts continue to work.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-14T16:32:53.000Z'),
('wp-1070', 'Default values for custom values in emails', 'Summary Leadli now supports setting default (fallback) values for custom values inside the email editor. This helps emails read naturally when a contact field is missing. Why this matters Personalized emails often use custom values that depend on contact data such as first name, ...', '<p><strong>Summary</strong></p>
<p>Leadli now supports setting default (fallback) values for custom values inside the email editor. This helps emails read naturally when a contact field is missing.</p>
<p><strong>Why this matters</strong></p>
<p>Personalized emails often use custom values that depend on contact data such as first name, company name, or appointment details. When that information is missing, emails can show blank spaces or incomplete text, especially in subject lines and the email body.</p>
<p><strong>What changed</strong></p>
<p>You can now set a fallback value for each custom value used in email content, subject lines, and preview text.</p>
<p><strong>Example</strong></p>
<pre>Hi {{contact.first_name}}
Default value: rockstar</pre>
<p><strong>Impact</strong></p>
<ul>
<li>Reduces blank spaces and broken personalization.</li>
<li>Keeps subject lines and email content consistent and professional.</li>
<li>Improves readability even when CRM data is incomplete.</li>
<li>Allows different fallback values for the same custom value in different places.</li>
</ul>
<p><strong>Note</strong></p>
<p>This is supported across workflow emails, campaign emails, bulk actions, and email templates. Default values apply per usage and do not overwrite existing contact data.</p>
<p>If you need help, contact Leadli support at <a href="mailto:support@pappalar.do">support@pappalar.do</a>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:32:30.000Z'),
('wp-1069', 'Conversations: Find unread messages faster', 'Overview This update makes it easier to find unread messages in long conversations. Visual indicators help you go straight to the first unread message so you can respond sooner. What’s new A “New” divider shows where unread messages begin Unread conversations open at the first un...', '<p><strong>Overview</strong></p>
<p>This update makes it easier to find unread messages in long conversations. Visual indicators help you go straight to the first unread message so you can respond sooner.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>A “New” divider shows where unread messages begin</li>
<li>Unread conversations open at the first unread message automatically</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li>Open an unread conversation</li>
<li>You are taken to the first unread message, marked by the “New” divider</li>
<li>The indicator clears when you reply or manually mark the conversation as read. It remains if you navigate away or refresh.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Unread messages can get buried in long threads. This change reduces missed messages and helps you manage conversations more efficiently.</p>
<p><strong>Note</strong></p>
<ul>
<li>The “New” indicator appears only for messages received after April 23, 2026.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-14T16:31:43.000Z'),
('wp-1068', 'Facebook text posts with backgrounds are now available in Social Planner', 'Leadli Social Planner now supports Facebook text-only posts with native-style background colors. You can create, schedule, and publish these posts without leaving Social Planner. What’s included Facebook background text posts: Create text-only posts with built-in background style...', '<p>Leadli Social Planner now supports Facebook text-only posts with native-style background colors. You can create, schedule, and publish these posts without leaving Social Planner.</p>
<h3>What’s included</h3>
<ol>
<li><strong>Facebook background text posts:</strong> Create text-only posts with built-in background styles directly in the post composer.</li>
<li><strong>Background picker in the composer:</strong> When Facebook is selected, you can choose a text background preset and preview it while you write.</li>
<li><strong>Live preview:</strong> The composer shows a Facebook-style preview, updates the background as you change it, and adjusts font size based on text length.</li>
<li><strong>Automatic rules and validation:</strong> Backgrounds are only available for text-only posts. If you add media, background selection is disabled. If a scheduled post includes media, any selected background will be removed.</li>
</ol>
<h3>How to use</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Create a post and choose Facebook as the platform.</li>
<li>Select <strong>Text Background</strong>, choose a preset, add your caption, then publish or schedule.</li>
</ol>
<h3>Why this matters</h3>
<ul>
<li>Create more engaging Facebook posts faster.</li>
<li>Improve visibility in busy social feeds.</li>
<li>Reduce the need to switch to Facebook for background-style posts.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Backgrounds only apply to text-only Facebook posts.</li>
<li>Adding images or videos disables the background option.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-14T16:31:29.000Z'),
('wp-1061', 'Workflow Builder update: Resize and expand sidebars', 'Summary The workflow builder now includes new workspace controls that make it easier to configure workflows on different screen sizes. What changed Resizable sidebar: You can drag the edge of the action or trigger sidebar to adjust its width. Expand to full screen: You can open a...', '<p><strong>Summary</strong></p>
<p>The workflow builder now includes new workspace controls that make it easier to configure workflows on different screen sizes.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Resizable sidebar:</strong> You can drag the edge of the action or trigger sidebar to adjust its width.</li>
<li><strong>Expand to full screen:</strong> You can open an action or trigger in full screen when you need more room to edit settings (for example, emails, forms, messages, or multi-field actions).</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open any workflow action or trigger.</li>
<li>Drag the sidebar edge to resize the panel.</li>
<li>Use expand mode when you need more space to work.</li>
</ol>
<p><strong>Additional notes</strong></p>
<ul>
<li>Applies to workflow actions, triggers, and items in the left sidebar.</li>
<li>Sidebar width can be adjusted based on your preference and screen size.</li>
<li>Actions and triggers can be expanded to full screen.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-12T15:56:55.000Z'),
('wp-1060', 'Bulk delete records for custom objects, companies, and tasks', 'Summary You can now bulk delete records in custom objects, companies, and tasks with no limit on how many records you delete in one action. What changed Custom objects now support selecting multiple records in list view so you can delete them in bulk. Companies and tasks bulk del...', '<h2>Summary</h2>
<p>You can now bulk delete records in custom objects, companies, and tasks with no limit on how many records you delete in one action.</p>
<h2>What changed</h2>
<ul>
<li>Custom objects now support selecting multiple records in list view so you can delete them in bulk.</li>
<li>Companies and tasks bulk delete is no longer limited to 100 records per action.</li>
<li>Deleted records can be restored for up to 60 days from the Bulk Actions page.</li>
</ul>
<h2>Where to find it</h2>
<p>We&#8217;ve enabled this for all accounts under <strong>Labs</strong>.</p>
<h2>How to use bulk delete</h2>
<ol>
<li>Open the custom object, company, or task list in your sub-account.</li>
<li>Select the records you want to delete using the row checkboxes (use the header checkbox to select all records on the page).</li>
<li>Click <strong>Delete</strong> in the bulk actions bar.</li>
<li>Confirm the deletion in the dialog.</li>
<li>Use the Bulk Actions page to review progress and logs.</li>
</ol>
<h2>What gets removed</h2>
<p>Deleting a record removes its relationships and associations, including:</p>
<ul>
<li>Links to related notes and tasks</li>
<li>Links to related contacts, companies, opportunities, and other custom object records</li>
<li>Any association labels applied to those relationships</li>
</ul>
<p>The related records themselves are not deleted—only the links between them and the deleted record.</p>
<h2>Restore deleted records</h2>
<p>Bulk-deleted records can be restored within 60 days from the Bulk Actions page. Find the deletion job you want to reverse, then use the menu to select <strong>Restore</strong>. The restore runs as a new job and reinstates the records along with their field values, associations, and association labels.</p>
<h2>Why it matters</h2>
<ul>
<li>Clean up large volumes of stale, test, or mis-imported records quickly</li>
<li>Reduce manual work by deleting multiple custom object records at once</li>
<li>Keep the bulk delete experience consistent across the CRM</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:56:33.000Z'),
('wp-1059', 'New dashboard widgets for services and rentals', 'This update adds new dashboard widgets for appointment services and rentals, with improved organization in the widget library. What’s included 11 new appointment service widgets covering revenue, coupon performance, staff rankings, and location-level insights. These are available...', '<p>This update adds new dashboard widgets for appointment services and rentals, with improved organization in the widget library.</p>
<h3>What’s included</h3>
<ul>
<li>11 new appointment service widgets covering revenue, coupon performance, staff rankings, and location-level insights. These are available in the dashboard and in custom reports.</li>
<li>11 new rentals widgets for tracking rental revenue, inventory status, deposit collection, and booking lifecycle (upcoming, active, overdue, and unconfirmed).</li>
<li>“Appointment Count by Service” and “Appointment Count by Service Category” are now grouped under the Services area for easier navigation.</li>
</ul>
<h3>Important change</h3>
<p>Appointment count now reflects meetings only. Previously, appointment count widgets in the Meetings module included both meeting and service bookings. Service and rental booking counts now have their own dedicated widgets under Services.</p>
<h3>How it works</h3>
<ol>
<li>If you don&#8217;t have access to Rentals or Service Calendars, reach out to our support team and we&#8217;ll enable that for you.</li>
<li>Open the sub-account Dashboard or the Custom Reports builder.</li>
<li>In the widget library, you will find all 37 widgets, including the relocated appointment count widgets under Widgets → Appointments.</li>
<li>Add service and rental widgets from the Appointments module to monitor inventory and booking health.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>See which services, staff, and rental listings drive the most revenue.</li>
<li>Track overdue, unconfirmed, and upcoming rentals in one place to reduce manual follow-up.</li>
<li>Measure coupon redemptions and revenue impact to evaluate promotions.</li>
<li>Find widgets faster with a clearer structure for Meetings, Services, and Rentals.</li>
</ul>
<h3>What’s next</h3>
<ul>
<li>More drill-down views for service and rental reporting at the location and staff level.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>All 22 new widgets are available in quick filters and custom metrics.</li>
<li>Available to sub-accounts with Calendar Appointment Services or Rentals enabled.</li>
<li>Internationalization support is included for all supported languages.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:55:54.000Z'),
('wp-1058', 'QR codes are now supported for certificates', 'Overview You can now add QR codes directly to certificates. This makes certificates easier to verify and helps people open related links with a quick scan. What’s new QR code support in the certificate builder : Add a QR code to a certificate while you’re editing it. Two QR code ...', '<p><strong>Overview</strong></p>
<p>You can now add QR codes directly to certificates. This makes certificates easier to verify and helps people open related links with a quick scan.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>QR code support in the certificate builder</strong>: Add a QR code to a certificate while you’re editing it.</li>
<li><strong>Two QR code types</strong>: Choose either a verification QR code that opens the certificate preview/validation page, or a custom link QR code that opens any URL you choose.</li>
<li><strong>Styling options</strong>: Set the background color and stroke color. The preview updates as you edit.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Makes certificates easier to verify</li>
<li>Adds trust and professionalism</li>
<li>Creates more ways to drive traffic and engagement</li>
<li>Gives you more flexibility without using external QR tools</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:55:05.000Z'),
('wp-1057', 'New templates are now available in Leadli', 'New templates have been added to help you create websites, funnels, and email campaigns more quickly. Each template is fully customizable and designed to be easy to use. What’s included in this release Website templates: 1 new template (Health & Wellness) Email templates: 1 new t...', '<p>New templates have been added to help you create websites, funnels, and email campaigns more quickly. Each template is fully customizable and designed to be easy to use.</p>
<p><strong>What’s included in this release</strong></p>
<ul>
<li><strong>Website templates:</strong> 1 new template (Health &amp; Wellness)</li>
<li><strong>Email templates:</strong> 1 new template (Creative)</li>
<li><strong>Form templates:</strong> 1 new template (Travel &amp; Hospitality)</li>
<li><strong>Survey templates:</strong> 2 new templates (Beauty &amp; Fashion; Automotive)</li>
<li><strong>Social templates:</strong> 4 new templates (Business Coaching &amp; Consulting; Beauty &amp; Fashion)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Real Estate Wholesaling; Solar; Advertising; Gym; Car Dealer)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Floor Installation; Nutrition Services; Bookkeeping Services; Music Group; Business Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Automation Software; Real Estate Consultant; Architectural Design; Accounting Services; Social Networking Services)</li>
<li><strong>Snapshot:</strong> 1 new snapshot (Home Services – Pest Control)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-12T15:54:50.000Z'),
('wp-1046', 'Delete and restore blog posts', 'Summary When you delete a blog post in Leadli, it is no longer removed permanently right away. Deleted posts are kept for 30 days so you can restore them if needed. If you want to permanently remove a post, you can choose Delete Forever from the Deleted filter. What changed The b...', '<p><strong>Summary</strong></p>
<p>When you delete a blog post in Leadli, it is no longer removed permanently right away. Deleted posts are kept for 30 days so you can restore them if needed. If you want to permanently remove a post, you can choose <em>Delete Forever</em> from the Deleted filter.</p>
<p><strong>What changed</strong></p>
<ul>
<li>The blog post is marked as deleted</li>
<li>It is hidden from the main list</li>
<li>It can be restored for up to 30 days</li>
</ul>
<p><strong>Deleted filter</strong></p>
<p>You can now use a dedicated <em>Deleted</em> filter to:</p>
<ul>
<li>View deleted blog posts</li>
<li>Restore a post</li>
<li>Permanently delete a post</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Helps prevent accidental content loss</li>
<li>Makes it easier to recover posts without contacting support</li>
<li>Improves control over blog management</li>
</ul>
<p><strong>How to use it</strong></p>
<p>Delete a post:</p>
<ol>
<li>Go to <strong>Sites</strong> → <strong>Blogs</strong></li>
<li>Open the 3-dot menu on a post</li>
<li>Click <strong>Delete</strong> and confirm</li>
</ol>
<p>Restore or permanently delete a post:</p>
<ol>
<li>Open the <em>Deleted</em> filter</li>
<li>Choose <strong>Restore</strong> to bring the post back, or <strong>Delete Forever</strong> to permanently remove it</li>
</ol>
', 'reporting', ARRAY['wp-import']::text[], '2026-05-08T15:01:50.000Z'),
('wp-1047', 'Chat Widget Registration: Compliance Check Before Submission', 'Overview: The Chat Widget compliance check is now more reliable. It detects when the Leadli chat widget is not live on a user’s website and asks them to fix it before submitting. What’s new: During Chat Widget registration, the compliance review scans the user’s website to confir...', '<p><strong>Overview:</strong> The Chat Widget compliance check is now more reliable. It detects when the Leadli chat widget is not live on a user’s website and asks them to fix it before submitting.</p>
<p><strong>What’s new:</strong></p>
<ul>
<li>During Chat Widget registration, the compliance review scans the user’s website to confirm the Lead Connector chat widget is installed.</li>
<li>If the widget is not found, the user sees clear instructions to copy the widget script, add it to the website, and run the check again within the Compliance Review modal.</li>
<li>The user can resubmit only after the check passes.</li>
</ul>
<p><strong>Previously:</strong></p>
<ul>
<li>Users could submit Chat Widget campaigns even when the widget was not present on their website.</li>
<li>These submissions often resulted in rejections and delays.</li>
</ul>
<p><strong>Why it matters:</strong></p>
<ul>
<li>Missing widget installations have been a common reason for Chat Widget campaign rejections.</li>
<li>Checking at the time of submission, with clear steps to fix the issue, helps users get approved faster.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-08T15:01:20.000Z'),
('wp-1050', 'If/Else editing is now fully supported in the AI Builder for workflows', 'The AI Builder now supports full editing of If/Else segments and operator logic. You can add, remove, and update branches, segments, conditions, operators, and values directly in the AI Builder. Updates included in this release: Edits at the branch, segment, and condition level n...', '<p>The AI Builder now supports full editing of If/Else segments and operator logic.</p>
<p>You can add, remove, and update branches, segments, conditions, operators, and values directly in the AI Builder.</p>
<p>Updates included in this release:</p>
<ul>
<li>Edits at the branch, segment, and condition level now work consistently</li>
<li>Multiple changes can be applied in a single request (for example, adding a condition and changing an operator at the same time)</li>
<li>Complex If/Else edit requests now prompt for clarification when needed instead of failing without feedback</li>
<li>Better identification of edit type and target to reduce misclassification</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T15:00:21.000Z'),
('wp-1051', 'Undo and redo in the Leadli AI Workflow Builder', 'Overview The AI Builder in workflows now supports undo and redo. This helps you recover earlier versions while you build or edit workflows with AI during the same session. How it works Undo: Press Ctrl+Z (Cmd+Z on Mac) to return to the previous AI-generated version from the curre...', '<h2>Overview</h2>
<p>The AI Builder in workflows now supports undo and redo. This helps you recover earlier versions while you build or edit workflows with AI during the same session.</p>
<h2>How it works</h2>
<ul>
<li><strong>Undo:</strong> Press Ctrl+Z (Cmd+Z on Mac) to return to the previous AI-generated version from the current session.</li>
<li><strong>Redo:</strong> Press Ctrl+Y (Cmd+Y on Mac) to bring back the change you just undid.</li>
</ul>
<p>This works for AI-generated changes such as adding new actions, editing steps, or reorganizing the workflow.</p>
<h2>Where to find it</h2>
<p>You can also review recent updates using the recent changes area in the Workflow Builder.</p>
<h2>Why this matters</h2>
<p>You can test AI suggestions without worrying about losing a working version. If a result is not a good fit, you can roll back and continue building.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T14:59:57.000Z'),
('wp-1052', 'Improved AI Assistant responses in Leadli workflows', 'What’s new The AI Assistant in Leadli workflows now provides more accurate and relevant answers across a wider range of questions. Updates were made to how the assistant selects and sources responses, with a focus on areas that previously produced incomplete results. This improve...', '<h2>What’s new</h2>
<p>The AI Assistant in Leadli workflows now provides more accurate and relevant answers across a wider range of questions. Updates were made to how the assistant selects and sources responses, with a focus on areas that previously produced incomplete results.</p>
<p>This improvement is ongoing. Response quality is expected to continue improving over time.</p>
<h2>Why this matters</h2>
<p>Questions that previously went unanswered or received partial answers are now handled more consistently. As more people use the assistant, its coverage expands, which reduces gaps and lowers the need for manual support.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T14:59:34.000Z'),
('wp-1053', 'Array Formatter is now free and easier to use in Leadli', 'Summary Array Formatter is no longer a premium action in Leadli. The interface has also been updated to make array actions easier to understand and more predictable. What changed Array Formatter is billed at $0 as a standard execution. The Premium Action badge and related banners...', '<p><strong>Summary</strong></p>
<p>Array Formatter is no longer a premium action in Leadli. The interface has also been updated to make array actions easier to understand and more predictable.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Array Formatter is billed at $0 as a standard execution.</li>
<li>The Premium Action badge and related banners have been removed.</li>
<li>The action panel now includes clearer descriptions, icons, return types, and output previews.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Add <strong>Array Formatter</strong> after a webhook or any step that outputs an array.</li>
<li>Select an action type using the updated dropdown descriptions.</li>
<li>Review the return type and preview before saving.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>“Array Functions” has been renamed to “Array Formatter”.</li>
<li>Workflow behavior is otherwise unchanged.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-08T14:59:18.000Z'),
('wp-1041', 'Chat widget public APIs', 'Summary You can now create and manage chat widgets through public APIs. This makes it easier to automate setup and integrate widget workflows into your systems. What’s new API-based chat widget creation — Create chat widgets programmatically without relying on the UI. Supported c...', '<h2>Summary</h2>
<p>You can now create and manage chat widgets through public APIs. This makes it easier to automate setup and integrate widget workflows into your systems.</p>
<h2>What’s new</h2>
<ol>
<li><strong>API-based chat widget creation</strong> — Create chat widgets programmatically without relying on the UI.</li>
<li><strong>Supported chat types</strong> — Live Chat and Email Chat are supported for API-based creation.</li>
<li><strong>End-to-end widget management</strong> — APIs are available to list, fetch, update, and delete chat widgets.</li>
<li><strong>Flexible listing support</strong> — Retrieve all widgets (including those created in the UI) with filtering options.</li>
<li><strong>Improved validation and error handling</strong> — Clear error responses for unsupported chat types and invalid requests.</li>
</ol>
<h2>How to use</h2>
<ol>
<li>Generate API credentials from your Leadli account.</li>
<li>Use the chat widget APIs to create widgets (Live Chat / Email Chat) and fetch or update existing widgets.</li>
<li>Integrate this into your onboarding, SaaS workflows, or automation systems.</li>
</ol>
<h2>Why this feature</h2>
<ul>
<li><strong>Scale faster</strong>: Automate widget creation across multiple locations.</li>
<li><strong>Enable integrations</strong>: Connect chat widgets with external tools, CRMs, or onboarding systems.</li>
<li><strong>Improve efficiency</strong>: Reduce manual setup effort for agencies and SaaS builders.</li>
<li><strong>Future-ready</strong>: Establish a foundation for expanding chat types and deeper automation.</li>
</ul>
<h2>What’s next</h2>
<ul>
<li>Support for additional chat types (WhatsApp, Facebook, Instagram, Voice AI, All in One).</li>
<li>More advanced configuration APIs.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Widget creation via API is currently limited to Live Chat and Email Chat.</li>
<li>Other chat types can still be listed if they were created in the UI.</li>
<li>Contact support to get started with the API!</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:05:28.000Z'),
('wp-1040', 'Quiz results page improvements', 'We updated the quiz results page to make styling easier and the builder workflow clearer. What’s improved You can adjust the results page width to better fit your layout. You can add a background color to the results page. When you select or add a section, the preview scrolls to ...', '<p>We updated the quiz results page to make styling easier and the builder workflow clearer.</p>
<h2>What’s improved</h2>
<ul>
<li>You can adjust the results page width to better fit your layout.</li>
<li>You can add a background color to the results page.</li>
<li>When you select or add a section, the preview scrolls to that section automatically.</li>
<li>If no quiz categories have been created, a clearer empty state is shown.</li>
<li>A “How Scoring Works” link is available to explain quiz scoring while building results pages.</li>
<li>The results page editing flow is smoother when working in the builder.</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Quiz Builder.</li>
<li>Go to the Results Page (or Edit Result Template).</li>
<li>Update styling, manage categories, and customize the layout and sections.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>More control over how your quiz results page looks.</li>
<li>Easier creation of branded quiz experiences.</li>
<li>Less confusion when categories are missing.</li>
<li>Clearer guidance on how quiz scoring works.</li>
<li>Faster editing on longer results pages.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:04:58.000Z'),
('wp-1042', 'Schema markup: extended schema type support', 'Overview Leadli schema markup now includes 7 additional schema types in the manual setup flow. This increases the total number of parent-level schema types available from 12 to 19. You can find the new types in the Add Schema Markup and Edit Schema Markup dialogs. Choose a type, ...', '<p><strong>Overview</strong></p>
<p>Leadli schema markup now includes 7 additional schema types in the manual setup flow. This increases the total number of parent-level schema types available from 12 to 19.</p>
<p>You can find the new types in the <strong>Add Schema Markup</strong> and <strong>Edit Schema Markup</strong> dialogs. Choose a type, enter the fields using Form view or JSON view, then select <strong>Validate &amp; Save</strong>.</p>
<p><strong>New schema types</strong>: Offer, Review, Aggregate Rating, Recipe, ImageObject, Service, Course</p>
<p><strong>Notes</strong>: This update applies to the manual flow only. The AI-assisted flow already supports all Schema.org types.</p>
<p><strong>Supported modules</strong>: Websites and Funnel Pages</p>
<p><strong>Why this matters</strong></p>
<ul>
<li>Businesses in e-commerce, food, education, and service industries can add more category-specific structured data to improve eligibility for rich results in Google.</li>
<li>More precise schema markup can help search engines and AI systems better understand and reference your business content.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Open <strong>+ Add Schema</strong> or <strong>Edit Schema Markup</strong>.</li>
<li>Select a schema type from the dropdown.</li>
<li>Enter your details or paste JSON-LD, then select <strong>Validate &amp; Save</strong>.</li>
</ol>
<p>Existing schema markups are not affected. The new types are available as additional options in the type dropdown.</p>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:04:43.000Z'),
('wp-1044', 'Visual edits are now available in Leadli AI Studio', 'Summary Visual Edits is an in-canvas editing mode that lets you update your site’s styles directly in the live preview. You can adjust colors, fonts, spacing, images, icons, and layout by clicking an element and changing its settings. These direct edits apply immediately and do n...', '<h2>Summary</h2>
<p>Visual Edits is an in-canvas editing mode that lets you update your site’s styles directly in the live preview. You can adjust colors, fonts, spacing, images, icons, and layout by clicking an element and changing its settings.</p>
<p>These direct edits apply immediately and do not use AI tokens. AI is only used when you send a prompt.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Click to select:</strong> Click an element to open the Visual Edits panel. The controls change based on what you selected (text, button, image, icon, or layout).</li>
<li><strong>Edit text inline:</strong> Double-click text to edit it in place. Press Escape or click outside to finish.</li>
<li><strong>Icon picker:</strong> Replace Lucide icons using a searchable library of 1,600+ icons.</li>
<li><strong>Color palette:</strong> Choose from your project theme colors and the Tailwind palette.</li>
<li><strong>Spacing controls:</strong> Adjust margin and padding with the option to link or unlink sides.</li>
<li><strong>Image layout:</strong> Set image fit to Fill, Contain, Cover, or Scale down.</li>
<li><strong>Icon sizing:</strong> Resize Lucide icons using Tailwind classes or custom values.</li>
<li><strong>Multi-select with prompt:</strong> Select multiple elements and apply a single prompt to update them consistently.</li>
<li><strong>Save or discard:</strong> Preview changes live, then save to apply or discard to revert.</li>
</ul>
<h2>What you can edit</h2>
<ul>
<li>Colors, spacing, borders, shadows, border radius, opacity, typography</li>
<li>Text content (inline editing)</li>
<li>Buttons and inputs (type and aria label)</li>
<li>Links (URL, target, rel)</li>
<li>Images (source, alt text, object-fit)</li>
<li>Lucide icons (swap and resize)</li>
<li>Textareas (placeholder, name, rows)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:04:29.000Z'),
('wp-1043', 'Bluesky comment management is now available in Social Planner', 'Comment Management now supports Bluesky, so you can view and reply to comments directly from Social Planner. This helps you manage Bluesky conversations alongside your other social channels without switching tools. What’s new Reply to Bluesky comments: Respond to comments on Blue...', '<p>Comment Management now supports Bluesky, so you can view and reply to comments directly from Social Planner.</p>
<p>This helps you manage Bluesky conversations alongside your other social channels without switching tools.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Reply to Bluesky comments:</strong> Respond to comments on Bluesky posts directly within Social Planner.</li>
<li><strong>Threaded replies:</strong> Keep conversation context with replies up to 3 levels deep.</li>
<li><strong>Automatic syncing for recent posts:</strong> Comments sync automatically for your latest posts to keep the inbox current.</li>
</ul>
<h3>How to use this feature</h3>
<ol>
<li>Go to <strong>Marketing → Social Planner → Comments</strong></li>
<li>Open the <strong>Comments</strong> tab</li>
<li>Select your <strong>Bluesky</strong> account</li>
<li>View and reply to comments</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Manage Bluesky engagement without switching platforms</li>
<li>Respond faster to conversations</li>
<li>Keep communication consistent across channels</li>
<li>Centralize engagement in one inbox</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Reply character limit: 300 characters</li>
<li>Replies are text-only (no media attachments)</li>
<li>Profile tagging is not supported</li>
<li>Replies are visible up to 3 levels deep (full threads are stored internally)</li>
<li>Comments sync for the last 15 posts</li>
<li>Sync runs every 6 hours</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:03:58.000Z'),
('wp-1039', 'Opportunity list updates: the “me” filter and primary contact notes', 'Two updates are rolling out for Opportunities. These changes make it easier to build personal views and see more context without opening each record. What’s new 1) Dynamic “me” filter for Owner and Follower You can now select a dynamic me value in the Owner and Follower filters. ...', '<p>Two updates are rolling out for Opportunities. These changes make it easier to build personal views and see more context without opening each record.</p>
<h2>What’s new</h2>
<p><strong>1) Dynamic “me” filter for Owner and Follower</strong></p>
<ul>
<li>You can now select a dynamic <strong>me</strong> value in the <strong>Owner</strong> and <strong>Follower</strong> filters.</li>
<li>This is available in <strong>Advanced Filters</strong> and in the <strong>Smart Tag</strong> editor.</li>
<li>When used, <strong>me</strong> automatically resolves to the currently logged-in user.</li>
</ul>
<p><strong>2) Primary contact notes in List view</strong></p>
<ul>
<li><strong>Primary Contact Notes</strong> is now available as a column in the Opportunities <strong>List view</strong>.</li>
<li>It shows all notes from the opportunity’s primary contact.</li>
<li>Like other columns, it can be sorted, resized, and included in saved views.</li>
</ul>
<h2>How it works</h2>
<p><strong>Use the dynamic “me” filter</strong></p>
<ol>
<li>Open <strong>Opportunities</strong>.</li>
<li>Open <strong>Advanced Filters</strong> or the <strong>Smart Tag</strong> editor.</li>
<li>Add a filter on <strong>Owner</strong> or <strong>Follower</strong>.</li>
<li>In the value dropdown, select <strong>me</strong>.</li>
<li>Optionally, save it as a <strong>Smart Tag</strong> to reuse or share with your team.</li>
</ol>
<p>If a Smart Tag that includes “me” is shared, each viewer will only see their own opportunities.</p>
<p><strong>Add the Primary Contact Notes column</strong></p>
<ol>
<li>Open <strong>Opportunities</strong> in <strong>List view</strong>.</li>
<li>Select <strong>Customize Columns</strong>.</li>
<li>Enable <strong>Primary Contact Notes</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces the need to create separate filter views for each user.</li>
<li>Makes it easier to reuse a single personal view across sessions.</li>
<li>Helps standardize “my opportunities” for teams using shared saved views.</li>
<li>Provides faster context for daily review and call preparation.</li>
<li>Lets you review primary contact notes without opening each record.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:03:41.000Z'),
('wp-1036', 'Blocked time slots for rental listings', 'Overview You can now create blocked slots for rental listings. This lets you reduce availability without creating a customer booking. Use blocked time to account for maintenance, internal use, or offline commitments so your calendar and booking flows stay accurate. What’s new Cre...', '<h2>Overview</h2>
<p>You can now create <strong>blocked slots</strong> for rental listings. This lets you reduce availability without creating a customer booking.</p>
<p>Use blocked time to account for maintenance, internal use, or offline commitments so your calendar and booking flows stay accurate.</p>
<h2>What’s new</h2>
<ul>
<li>Create blocked slots for rental listings directly from the calendar.</li>
<li><strong>Blocked slots reduce availability</strong> like a booking, but are not tied to a customer or order.</li>
<li>Optionally block specific <strong>variants and quantities</strong> (if enabled).</li>
<li>View, edit, and delete blocked slots from the calendar view.</li>
<li>Blocked slots are visible on the calendar with relevant details.</li>
</ul>
<h2>How it works</h2>
<p>To create a blocked slot, select:</p>
<ul>
<li>Listing</li>
<li>Date and time range</li>
<li>Optional variant and quantity (if applicable)</li>
</ul>
<p>After you create it:</p>
<ul>
<li>The listing becomes <strong>unavailable</strong> for the selected duration</li>
<li>Availability updates across booking flows</li>
</ul>
<p>You can also:</p>
<ul>
<li><strong>View</strong> blocked-slot details</li>
<li><strong>Edit</strong> it using the same form</li>
<li><strong>Delete</strong> it to release availability</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Helps manage <strong>inventory beyond customer bookings</strong>.</li>
<li>Supports <strong>accurate availability</strong> across booking channels.</li>
<li>Handles scenarios like <strong>maintenance, holds, or internal use</strong>.</li>
<li>Gives you more control over rental operations.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:02:13.000Z'),
('wp-1034', 'Custom Metrics now support filters, Meta Ads, and Google Analytics', 'What’s new You can add filters to individual custom metrics in your formula, such as filtering by contact tag, pipeline, owner, agent, and more. Meta Ads is available as a data source. You can use Spend, Impressions, CTR, CPC, CPM, Conversions, and Reach in your custom KPIs. Goog...', '<p><strong>What’s new</strong></p>
<ul>
<li>You can add <strong>filters</strong> to individual custom metrics in your formula, such as filtering by contact tag, pipeline, owner, agent, and more.</li>
<li><strong>Meta Ads</strong> is available as a data source. You can use Spend, Impressions, CTR, CPC, CPM, Conversions, and Reach in your custom KPIs.</li>
<li><strong>Google Analytics</strong> is available as a data source. You can combine analytics data with your CRM metrics in a single formula.</li>
<li>Custom metrics now open in a <strong>full-page builder</strong> instead of a modal.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Open your Dashboard and create or open a Custom Metric.</li>
<li>In the formula builder, select a metric token to add filters.</li>
<li>Set your filter conditions, for example: Tag = Customer, Pipeline = Sales, Owner = a specific rep.</li>
<li>To use Meta Ads or Google Analytics data, select them from the metric picker under their respective categories.</li>
<li>Combine metrics in the formula builder (for example, total spend divided by opportunity count) and save.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li>You can build segmented KPIs on your dashboard without exporting to spreadsheets.</li>
<li>You can filter contact metrics by tag (for example, Customer or VIP) directly in the platform.</li>
<li>You can combine ad and analytics spend data with your CRM pipeline data to calculate metrics like cost per lead or cost per opportunity in Leadli.</li>
</ol>
<p><strong>What’s next</strong></p>
<ul>
<li>More UX improvements to the custom metric builder are planned.</li>
</ul>
<p><strong>Notes</strong></p>
<ol>
<li>Filters support multiple conditions (AND logic) per metric token.</li>
<li>Available to all accounts.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-05-05T14:35:09.000Z'),
('wp-1035', 'AI Studio: Deleted projects are now marked inactive', 'Summary : Deleted AI Studio projects are now automatically set to inactive, and any pages connected to those projects are also set to inactive. Previous behavior When a project was deleted, its preview and published URLs could remain live. There was no way to take these pages dow...', '<p><strong>Summary</strong>: Deleted AI Studio projects are now automatically set to inactive, and any pages connected to those projects are also set to inactive.</p>
<h2>Previous behavior</h2>
<p>When a project was deleted, its preview and published URLs could remain live.</p>
<p>There was no way to take these pages down from within the product.</p>
<h2>What changed</h2>
<p>Deleted projects are now automatically marked as inactive.</p>
<p>When you delete a project, all associated pages are also marked as inactive.</p>
<h2>Impact</h2>
<p>After a project is deleted:</p>
<ul>
<li>Preview URLs will be inactive</li>
<li>Domains will be inactive</li>
<li>Published URLs will be inactive</li>
</ul>
<p>AI Studio is our new vibe coder tool, right within Leadli! It&#8217;s currently in beta, so if you would like access, go to Settings -&gt; Labs, turn it on and try it out!</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T14:34:36.000Z'),
('wp-1033', 'Google Lead Form: Accurate Attribution and New Activity', 'What’s new Google Lead Form submissions now record the correct Session Source as Paid Search (previously stored as "Paid Social"). Session Source now includes full Campaign , Ad Group , and Ad details. A new contact activity, "Google Lead Form Submission" , is now available for t...', '<p><strong>What’s new</strong></p>
<ul>
<li>Google Lead Form submissions now record the correct Session Source as <strong>Paid Search</strong> (previously stored as &#8220;Paid Social&#8221;).</li>
<li>Session Source now includes full <strong>Campaign</strong>, <strong>Ad Group</strong>, and <strong>Ad</strong> details.</li>
<li>A new contact activity, <strong>&#8220;Google Lead Form Submission&#8221;</strong>, is now available for this submission type.</li>
<li>The activity details include Campaign, Ad Group, Ad, and Form name so you can see which ad and form generated the lead.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Run a Google Ads campaign that uses Lead Forms and connect it to Leadli as you do today.</li>
<li>When someone submits the Google Lead Form, the contact is created or updated in Leadli automatically.</li>
<li>Open the contact and review the Activity panel. Session Source should show <strong>Paid Search</strong>, and Campaign / Ad Group / Ad should be populated from the originating Google Ads entity.</li>
<li>In the contact’s Activity timeline, you’ll see the new <strong>&#8220;Google Lead Form Submission&#8221;</strong> entry containing Campaign, Ad Group, Ad, and Form name.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li><strong>More accurate paid-channel reporting</strong>: Google Lead Form leads are no longer categorized as Paid Social, so dashboards and source reporting are more reliable.</li>
<li><strong>Clear campaign visibility</strong>: Marketers can see the exact campaign, ad group, ad, and form behind each lead.</li>
<li><strong>Cleaner activity timelines</strong>: A dedicated activity type makes it easier to filter, segment, and automate workflows for Google Lead Form leads.</li>
<li><strong>Better automation options</strong>: Workflows can branch on the new activity type to send more relevant follow-up.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>This applies to <strong>new submissions going forward</strong>. Historical contacts keep their original attribution.</li>
<li>No setup changes are required. The corrected attribution and new activity apply automatically.</li>
<li>Availability depends on where Google Ads Lead Form integrations are supported.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-05-05T14:33:48.000Z'),
('wp-1003', 'Embedded Voice AI widgets with orb display options', 'Overview You can now choose how the Voice AI widget appears on your website. You can keep it as a floating widget (Sticky) or place it inside your page content (Embedded/Inline). What changed Widget placement : choose Sticky (floating in a corner) or Embedded/Inline (renders with...', '<h2>Overview</h2>
<p>You can now choose how the Voice AI widget appears on your website. You can keep it as a floating widget (Sticky) or place it inside your page content (Embedded/Inline).</p>
<h2>What changed</h2>
<ul>
<li><strong>Widget placement</strong>: choose <strong>Sticky</strong> (floating in a corner) or <strong>Embedded/Inline</strong> (renders within page content).</li>
<li><strong>Display mode for embedded widgets</strong>: choose <strong>Avatar</strong> (static) or <strong>Visualiser</strong> (animated voice-based visual cues).</li>
<li><strong>Interface size</strong> (Visualiser only): Small, Medium, or Large.</li>
<li><strong>Live preview updates</strong> as you change placement and display options.</li>
<li>For inline widgets, a <strong>call to action</strong> can appear below the avatar/visualiser (for example, “Call us here”).</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget &gt; Style</strong>.</li>
<li>Under <strong>Widget Placement</strong>, choose <strong>Sticky</strong> or <strong>Embedded/Inline</strong>.</li>
<li>If you choose <strong>Embedded/Inline</strong>, select a <strong>Display Mode</strong> (Avatar or Visualiser).</li>
<li>If you choose <strong>Visualiser</strong>, select an <strong>Interface Size</strong>.</li>
<li>Adjust any remaining style settings as needed.</li>
<li>Use <strong>Get Code</strong> to copy the correct code for your placement.</li>
<li>Add the code to your website where you want the widget to appear.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Some options (such as widget position and contact form toggle) are not available in Embedded mode.</li>
<li>Display Mode variations are currently optimized for Voice AI experiences.</li>
<li>You can add multiple embedded widgets on the same site.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Gives you more control over how Voice AI appears on your site.</li>
<li>Makes it easier to match the widget to different page layouts and designs.</li>
<li>Supports placement choices that can better fit conversion-focused pages.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T01:13:27.000Z'),
('wp-995', 'New Leadli templates are available', 'Leadli has published new templates you can use for websites, funnels, email campaigns, forms, and ads. These templates are designed to be easy to customize and help you launch faster. What’s included in this release Website templates: 1 new template (Creative) Email templates: 1 ...', '<p>Leadli has published new templates you can use for websites, funnels, email campaigns, forms, and ads. These templates are designed to be easy to customize and help you launch faster.</p>
<h3>What’s included in this release</h3>
<ul>
<li><strong>Website templates:</strong> 1 new template (Creative)</li>
<li><strong>Email templates:</strong> 1 new template (Restaurant and Bar)</li>
<li><strong>Form templates:</strong> 1 new template (Beauty &amp; Fashion)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Restaurant and Bar – Catering Services; Travel &amp; Hospitality – Hotel; Automotive – Car Towing; Real Estate – Title Insurance Representative; Beauty &amp; Fashion – Clothing Boutique)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Beauty &amp; Fashion – Jewelry Retail Store; Automotive – Brake and Muffler Depot; Travel &amp; Hospitality – Excursion Guide; Restaurant &amp; Bar – Doughnut Shop; Real Estate – Loan Officer)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Marketing Agency – Social Media Influencer; Real Estate – Mortgage Lender; Creative – Event Planner; Finance – Banking &amp; Payment; Insurance – Health Insurance</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T01:13:02.000Z'),
('wp-994', 'AI Agent updates: call transcripts, execution log feedback, and stability improvements', 'Summary This update adds call transcripts to the AI Agent tools, introduces a feedback flow in execution logs, and includes general reliability fixes. What’s included Call transcripts (built in) The AI Agent action now includes a built-in call transcript tool. It gives the agent ...', '<h2>Summary</h2>
<p>This update adds call transcripts to the AI Agent tools, introduces a feedback flow in execution logs, and includes general reliability fixes.</p>
<h2>What’s included</h2>
<h3>Call transcripts (built in)</h3>
<p>The AI Agent action now includes a built-in call transcript tool. It gives the agent access to a contact’s call history without additional setup.</p>
<p>To use it, reference call transcripts in your agent prompt. The agent can retrieve transcripts and use them as context when making decisions or writing responses.</p>
<p>This works alongside conversation history, so the agent can use both chat messages and calls for a more complete view of each contact interaction.</p>
<h3>Feedback flow in execution logs</h3>
<p>You can now submit structured feedback on each AI Agent run directly from the execution logs. This makes it easier to flag issues, document what worked, and share specifics for each run.</p>
<h3>Bug fixes and stability improvements</h3>
<p>Several fixes were made across the AI Agent action to improve reliability and overall performance.</p>
<h2>Why this matters</h2>
<p>With access to both chat history and call transcripts, the AI Agent can respond with better context. The new feedback flow helps teams identify gaps faster and improve future runs.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-02T00:19:26.000Z'),
('wp-993', 'Workflow AI Builder is now more powerful in Leadli', 'The Workflow AI Builder has been rebuilt to make building and editing workflows faster and easier to follow. What changed Live streaming progress: Results update in real time and show each step being taken. Multiple changes at once: You can request several updates in one message ...', '<p>The Workflow AI Builder has been rebuilt to make building and editing workflows faster and easier to follow.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Live streaming progress:</strong> Results update in real time and show each step being taken.</li>
<li><strong>Multiple changes at once:</strong> You can request several updates in one message (for example: rename a step, add a 24-hour wait, and turn off re-entry).</li>
<li><strong>Conversational memory:</strong> The builder keeps context so follow-up changes are applied to the same request.</li>
<li><strong>Edit or start fresh:</strong> If a workflow already exists on the canvas, you can choose to modify it or begin from scratch.</li>
<li><strong>Context-aware suggestions:</strong> Prompts adjust based on whether you are on a blank canvas or editing an existing workflow.</li>
<li><strong>Chat to Build:</strong> You can move from chat guidance into build mode without re-typing the request.</li>
<li><strong>Session continuity:</strong> Closing and reopening the sidebar keeps your progress and history.</li>
<li><strong>Learn mode updates:</strong> Answers stream in real time with suggested follow-up questions.</li>
<li><strong>White-label safe output:</strong> The builder avoids using platform brand names in generated content.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>This update improves speed, clarity, and reliability when building workflows. The underlying architecture is designed to make future improvements easier to ship.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-01T17:55:46.000Z'),
('wp-992', 'Conversation AI: Separate sleep controls for manual and workflow messages', 'We’ve added more precise controls for when Conversation AI pauses (sleeps) after outbound messages are sent. The previous setting, “Send bot to sleep when I send a,” is now split into two separate options: Manual message Workflow message This lets you control bot sleep behavior b...', '<p>We’ve added more precise controls for when Conversation AI pauses (sleeps) after outbound messages are sent.</p>
<p>The previous setting, “Send bot to sleep when I send a,” is now split into two separate options:</p>
<ul>
<li>Manual message</li>
<li>Workflow message</li>
</ul>
<p>This lets you control bot sleep behavior based on how the message was sent, which can reduce unintended bot pauses.</p>
<h2>How it works</h2>
<ol>
<li><strong>Default behavior (no change)</strong><br />If you don’t change anything, your current bot sleep behavior stays the same. Existing automation and manual interactions continue as they do today.</li>
<li><strong>Independent sleep controls (new)</strong><br />You can now configure sleep behavior separately for manual messages (sent directly by a user) and workflow messages (sent by automations/workflows). You can sleep the bot for manual messages only, workflow messages only, or both.</li>
<li><strong>More precise automation handling</strong><br />Manual interventions can pause the bot without affecting workflows, and automated messages can be sent without unintentionally stopping the bot.</li>
<li><strong>Reactivation stays configurable</strong><br />The “Reactivate bot after” setting continues to work as before, regardless of whether sleep was triggered by a manual or workflow message.</li>
</ol>
<h2>Note</h2>
<p>This is an enhancement to existing functionality. Current behavior will remain unchanged unless you update the new settings.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-01T16:50:55.000Z'),
('wp-991', 'Social Planner: Add video thumbnails for CSV posts', 'You can now include a custom video thumbnail when you upload and schedule posts using CSV/XLSX in Leadli Social Planner. This helps your video posts look consistent and ready before publishing. What’s included Thumbnail support in CSV/XLSX uploads: Add a thumbnailUrl column to yo...', '<p>You can now include a custom video thumbnail when you upload and schedule posts using CSV/XLSX in Leadli Social Planner. This helps your video posts look consistent and ready before publishing.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Thumbnail support in CSV/XLSX uploads:</strong> Add a <code>thumbnailUrl</code> column to your file to set a custom thumbnail for video posts.</li>
<li><strong>Automatically applied:</strong> The thumbnail is applied to the first video in the post during upload.</li>
<li><strong>Updated templates:</strong> The latest CSV/XLSX templates include the <code>thumbnailUrl</code> column.</li>
</ul>
<h3>How to use</h3>
<ol>
<li>Go to <strong>Marketing &gt; Social Planner &gt; Create Post &gt; CSV Post</strong>.</li>
<li>Download the latest CSV/XLSX template.</li>
<li>Add the thumbnail link in the <code>thumbnailUrl</code> column.</li>
<li>Upload your file as usual.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The thumbnail applies only to the first video in a post.</li>
<li>Multiple video thumbnails in a single post are not supported.</li>
<li>Results can vary by social platform.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-01T16:50:31.000Z'),
('wp-989', 'Badges in the Leadli Client Portal', 'Badges are now easier to access and manage in a dedicated area of the Leadli Client Portal. What’s new Dedicated Badges tab: Badges now have their own section in the Client Portal. All badges in one view: See all issued badges in a clean, organized layout. Download and share: Dow...', '<p>Badges are now easier to access and manage in a dedicated area of the Leadli Client Portal.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Dedicated Badges tab:</strong> Badges now have their own section in the Client Portal.</li>
<li><strong>All badges in one view:</strong> See all issued badges in a clean, organized layout.</li>
<li><strong>Download and share:</strong> Download and share badges easily, similar to certificates.</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Badges are easier to find and use.</li>
<li>Badges have the same visibility as certificates.</li>
<li>You can share achievements more clearly.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-01T16:50:02.000Z'),
('wp-980', 'Email failure messages are now clearer in Conversations', 'We updated Leadli to make failed email messages easier to understand and troubleshoot without interrupting your work. What changed Failed emails now show clearer error messages. Error detail links open in a new tab so you can review information without losing your place. Why it m...', '<p>We updated Leadli to make failed email messages easier to understand and troubleshoot without interrupting your work.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Failed emails now show clearer error messages.</li>
<li>Error detail links open in a new tab so you can review information without losing your place.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>You can quickly see why an email did not send.</li>
<li>Reviewing error details no longer takes you away from your current view.</li>
</ul>
<p>These updates are intended to make debugging faster and day-to-day work smoother.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-04-30T18:29:40.000Z'),
('wp-981', 'Conversations: Marketplace app source is now shown in message details', 'Overview You can now see which Marketplace app sent a message in Conversations by viewing the message details. What changed Messages sent through Marketplace apps or custom providers now show the app name and app ID. To view it, open a conversation and click a message to open its...', '<p><strong>Overview</strong></p>
<p>You can now see which Marketplace app sent a message in Conversations by viewing the message details.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Messages sent through Marketplace apps or custom providers now show the app name and app ID.</li>
<li>To view it, open a conversation and click a message to open its details. If the message was sent through an OAuth-connected Marketplace app, the app name and ID will be shown.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-04-30T18:29:18.000Z'),
('wp-982', 'Meeting Room updates: seamless rejoin and clearer host controls', 'Overview Meeting Rooms in Communities are now more resilient and easier to manage. Common disruptions like page refreshes, network drops, or permission issues no longer end sessions. Seamless rejoin Meetings no longer end when the host disconnects unexpectedly Hosts can rejoin th...', '<p><strong>Overview</strong></p>
<p>Meeting Rooms in Communities are now more resilient and easier to manage. Common disruptions like page refreshes, network drops, or permission issues no longer end sessions.</p>
<p><strong>Seamless rejoin</strong></p>
<ul>
<li>Meetings no longer end when the host disconnects unexpectedly</li>
<li>Hosts can rejoin the same session</li>
<li>Attendees remain connected</li>
</ul>
<p><strong>Clearer end and leave controls</strong></p>
<ul>
<li><strong>End meeting for all</strong>: ends the session for everyone</li>
<li><strong>Leave</strong>: prompts host reassignment before the host exits</li>
</ul>
<p><strong>Automatic host restoration</strong></p>
<ul>
<li>The original host automatically regains host privileges when they return</li>
<li>A temporary host reverts to participant</li>
<li>No manual reassignment is needed</li>
</ul>
<p><strong>Reliability improvements</strong></p>
<ul>
<li>Handles refreshes, network drops, and permission issues more smoothly</li>
<li>Reduces forced restarts</li>
<li>Supports uninterrupted collaboration</li>
</ul>
<p><strong>Summary</strong></p>
<p>These updates help meetings continue without interruption and make it easier to manage host transitions.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-30T18:28:52.000Z'),
('wp-983', 'Improved sales pages for communities and courses', 'Sales pages across Leadli Communities have been updated to make listings clearer and easier to browse. What’s new Communities A media carousel that supports images and videos (YouTube, Loom, Vimeo) Media auto-syncs so manual updates are not required The carousel cycles automatica...', '<p>Sales pages across Leadli Communities have been updated to make listings clearer and easier to browse.</p>
<p><strong>What’s new</strong></p>
<p><strong>Communities</strong></p>
<ul>
<li>A media carousel that supports images and videos (YouTube, Loom, Vimeo)</li>
<li>Media auto-syncs so manual updates are not required</li>
<li>The carousel cycles automatically to help visitors review media</li>
</ul>
<p><strong>Courses</strong></p>
<ul>
<li>A structured curriculum view with modules, lessons, and thumbnails</li>
<li>An improved course preview to help visitors understand the course before enrolling</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Listings are easier to understand at a glance</li>
<li>Visitors can evaluate offerings faster</li>
<li>The browsing experience is improved</li>
</ul>
<p>More improvements to discovery and sales pages are planned.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-04-30T18:28:05.000Z'),
('wp-985', 'Certificates and badges: editing improvements', 'We introduced improvements to make designing certificates and badges faster, more precise, and easier to use. What’s new Hover highlight : Elements highlight when you hover over them, making it easier to identify and select items on the canvas. Improved resize control : Resize el...', '<p>We introduced improvements to make designing certificates and badges faster, more precise, and easier to use.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Hover highlight</strong>: Elements highlight when you hover over them, making it easier to identify and select items on the canvas.</li>
<li><strong>Improved resize control</strong>: Resize elements from the edge or corner you drag for more predictable adjustments.</li>
<li><strong>Keyboard shortcuts for text</strong>: Use standard shortcuts for faster editing:
<ul>
<li>Ctrl/Cmd + B: Bold</li>
<li>Ctrl/Cmd + I: Italic</li>
<li>Ctrl/Cmd + U: Underline</li>
</ul>
</li>
<li><strong>Copy and paste from anywhere</strong>: Paste content from external tools like Docs or OpenAI without formatting issues.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Faster and smoother design experience</li>
<li>Better control over layouts and elements</li>
<li>Less time fixing formatting issues</li>
<li>More intuitive editing overall</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-30T18:27:09.000Z'),
('wp-987', 'Leadli workflows: Add to Notes now supports note titles and colors', 'The Add to Notes workflow action now supports contact note titles and note colors. How it works When a workflow creates a contact note, you can optionally set a title and choose a color. Existing workflows are not affected because these fields are optional. How to use it Open a w...', '<p>The <strong>Add to Notes</strong> workflow action now supports contact note titles and note colors.</p>
<h3>How it works</h3>
<p>When a workflow creates a contact note, you can optionally set a title and choose a color. Existing workflows are not affected because these fields are optional.</p>
<h3>How to use it</h3>
<ul>
<li>Open a workflow and add or edit the Add to Notes action.</li>
<li>Set a note title and a note color if needed.</li>
<li>Save and publish the workflow.</li>
</ul>
<h3>Additional notes</h3>
<ul>
<li>This update does not change any existing notes.</li>
<li>Attachments are not included in this update.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-30T18:26:30.000Z'),
('wp-988', 'Add Note action now available in Leadli custom object workflows', 'What’s new Leadli workflows now include an Add Note action for custom objects. This lets you automatically save notes directly to a custom object record. How it works When a workflow runs on a custom object record, the Add Note action creates a note on that record. This helps you...', '<p><strong>What’s new</strong></p>
<p>Leadli workflows now include an Add Note action for custom objects. This lets you automatically save notes directly to a custom object record.</p>
<p><strong>How it works</strong></p>
<p>When a workflow runs on a custom object record, the Add Note action creates a note on that record. This helps your team capture updates and context without leaving the record.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a custom object workflow.</li>
<li>Add the Add Note action.</li>
<li>Enter the note content, then save and publish the workflow.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Custom objects let teams track more than contacts. Note support makes it easier to keep important updates attached to the records your team works with every day.</p>
<p><strong>Example</strong></p>
<p>A consulting team can add a note to a Project record when a milestone is completed.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Custom object workflows support the Add Note action.</li>
<li>Support for note titles or color coding may be added in a future update</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-30T18:25:59.000Z'),
('wp-975', 'Meetings: one personal link you can reuse', 'Overview If you are tired of creating a new meeting link for every session, Meetings in the Client Portal now supports reusable links and recurring sessions so scheduling stays consistent. What''s new Reusable meeting links Share one link with your team or clients Reuse it for fut...', '<p><strong>Overview</strong></p>
<p>If you are tired of creating a new meeting link for every session, Meetings in the Client Portal now supports reusable links and recurring sessions so scheduling stays consistent.</p>
<p><strong>What&#8217;s new</strong></p>
<p><strong>Reusable meeting links</strong></p>
<ul>
<li>Share one link with your team or clients</li>
<li>Reuse it for future sessions</li>
<li>Reduce last-minute setup and confusion</li>
<li>Create one-time meetings for single sessions or events</li>
<li>Create recurring meetings that keep the same link each time</li>
</ul>
<p><strong>Where to find it</strong></p>
<p>Go to <strong>Client Portal &gt; Account Settings &gt; Meeting</strong> to get your personal link.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Hosts can start a session at any time</li>
<li>Participants join using the same link</li>
<li>Links do not expire after a session ends</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-04-29T15:51:08.000Z'),
('wp-974', 'API versioning in our public documentation', 'Overview We added API versioning to our public documentation so developers can work against a specific version without unexpected breaking changes. What’s included Versioned documentation for each API version A version switcher inside the documentation Continued access to older v...', '<h2>Overview</h2>
<p>We added API versioning to our public documentation so developers can work against a specific version without unexpected breaking changes.</p>
<h2>What’s included</h2>
<ul>
<li>Versioned documentation for each API version</li>
<li>A version switcher inside the documentation</li>
<li>Continued access to older versions with full documentation</li>
<li>Version-specific changelogs that show additions, updates, and deprecations</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Makes integrations more predictable and stable</li>
<li>Creates a clearer upgrade path to newer API versions</li>
<li>Improves clarity when building and maintaining long-running systems</li>
</ul>
<h2>Key points</h2>
<ul>
<li>No impact to existing integrations</li>
<li>Supports adoption and migration between versions</li>
<li>Sets the groundwork for structured API evolution and deprecation</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Better reliability for API consumers</li>
<li>Lower risk of integration issues during updates</li>
<li>Faster development and debugging with clearer references</li>
</ul>
<h2>How to use it</h2>
<p>Open the API documentation, choose the version you want in the version switcher, then reference endpoints and schemas for that version.</p>
<h2>What’s next</h2>
<p>We’re working toward the next milestone: v3 of our APIs, with expanded capabilities, improved performance, and additional endpoints.</p>
<p>If you need API access, please contact us at support@flyingleapstudio.com.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-29T15:50:10.000Z'),
('wp-976', 'Custom e-Commerce product detail pages now start with your default design', 'Summary When you create a Custom Product Details Page (DPD)in your e-Commerce store, it will now start with the same layout and styling as your Default Product Details Page. This makes it easier to begin with a complete structure instead of a blank page. What changed Custom PDPs ...', '<h2>Summary</h2>
<p>When you create a Custom Product Details Page (DPD)in your e-Commerce store, it will now start with the same layout and styling as your Default Product Details Page. This makes it easier to begin with a complete structure instead of a blank page.</p>
<h2>What changed</h2>
<ul>
<li><strong>Custom PDPs inherit your default design during creation.</strong> You are taken straight into the builder with a ready-to-edit page.</li>
<li><strong>The full design is copied.</strong> This includes sections and layout, store elements (media, title, price, variants, CTA), styling (fonts, colors, spacing, borders, shadows), and visibility rules (desktop/mobile).</li>
<li><strong>The custom page stays independent.</strong> Editing the default PDP will not change any existing custom PDPs.</li>
<li><strong>You can assign one custom PDP to multiple products.</strong> The same inherited design is used for all selected products.</li>
<li><strong>ClickFunnels flows:</strong> In ClickFunnels flows, the “Create Custom Product Details Page” option is hidden to keep the funnel experience consistent.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to Store Builder and create a new page.</li>
<li>Enable “Create Custom Product Details Page” (not available in ClickFunnels flows).</li>
<li>Select the product(s) to assign.</li>
<li>Customize the page in the builder.</li>
<li>Publish when ready.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Your Default PDP is not changed when a Custom PDP is created.</li>
<li>This is a one-time copy (there is no live sync).</li>
<li>Existing Custom PDPs are not affected.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-04-29T15:46:31.000Z'),
('wp-956', 'Automate outreach with a marketing audit report link in workflows', 'You can now use a marketing audit report link as a custom value in Leadli workflows to personalize outreach automatically. What’s new New custom values: Prospect web report link, Prospect business name Available when you use the Generate marketing audit report action in workflows...', '<p>You can now use a marketing audit report link as a custom value in Leadli workflows to personalize outreach automatically.</p>
<h2>What’s new</h2>
<ul>
<li>New custom values: Prospect web report link, Prospect business name</li>
<li>Available when you use the Generate marketing audit report action in workflows</li>
<li>Use these values in follow-up steps like email or SMS</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, you could generate audit reports for prospects, but it was harder to include them directly in your outreach. With these custom values, you can send the report link and the prospect’s business name automatically.</p>
<h2>How to use</h2>
<ol>
<li>Add the Generate marketing audit report action to your workflow.</li>
<li>In a downstream step (email or SMS), insert the custom values: Prospect web report link and Prospect business name.</li>
<li>Send the message to deliver the audit insights automatically.</li>
</ol>
<h2>Expected impact</h2>
<ul>
<li>Faster and more personal outreach</li>
<li>Better lead qualification using audit insights</li>
<li>Improved conversion from prospect to conversation</li>
</ul>
<p>If you have suggestions or feedback, share them on your idea board.</p>
<p>Please note that access to the prospecting tool is an additional subscription of $39/mo. It&#8217;s a very useful tool if you&#8217;re a marketing agency or business consultant looking to build a prospect list of potential clients. The prospect tool checks the type of website that the prospect has, how active they are on social media, what their average review score is and # of reviews, and much more. If you&#8217;re don&#8217;t sell those types of services, this probably isn&#8217;t for you &#8211; if you do, then reach out to us at support@flyingleapstudio.com and we can enable prospecting in your account!</p>
', 'automations', ARRAY['wp-import']::text[], '2026-04-27T18:04:08.000Z'),
('wp-957', 'Email verification in Leadli workflows', 'You can now verify email addresses directly in workflows before sending emails. What this does The Email Verification action checks whether an email address is valid, risky, or invalid before the workflow continues. This helps reduce bounces and protect your sender reputation. Ho...', '<p>You can now verify email addresses directly in workflows before sending emails.</p>
<p><strong>What this does</strong></p>
<p>The Email Verification action checks whether an email address is valid, risky, or invalid before the workflow continues. This helps reduce bounces and protect your sender reputation.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add the Email Verification action in your workflow.</li>
<li>Place it before any email step.</li>
<li>Use the result to continue, branch, or stop the workflow.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Sending emails to invalid or low-quality addresses can hurt deliverability. This helps you automate list hygiene and improve email performance.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Works as a standalone action inside workflows.</li>
<li>Helps reduce bounces and failed deliveries.</li>
<li>Supports better deliverability management.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-04-27T17:58:52.000Z'),
('wp-955', 'Ad Manager public APIs', 'Leadli now provides public APIs for Ad Manager . These APIs let you create, manage, and track campaigns across Facebook, Google, and LinkedIn from one place. This is useful for agencies managing multiple clients and for businesses that want to automate campaign workflows and redu...', '<p>Leadli now provides <strong>public APIs for Ad Manager</strong>. These APIs let you <strong>create, manage, and track campaigns</strong> across <strong>Facebook, Google, and LinkedIn</strong> from one place.</p>
<p>This is useful for agencies managing multiple clients and for businesses that want to automate campaign workflows and reduce manual setup.</p>
<h2>What you can do</h2>
<h3>Create and manage campaigns at scale</h3>
<ul>
<li>Create and manage campaigns across Facebook, Google, and LinkedIn</li>
<li>Set up ad sets/ad groups, targeting, budgets, and creatives</li>
<li>Publish campaigns across multiple platforms in a single workflow</li>
</ul>
<p><strong>Impact:</strong> Faster launches, more consistent setup, and simpler management as you scale.</p>
<h3>Connect ad accounts</h3>
<ul>
<li>Connect and manage Facebook, Google, and LinkedIn ad accounts</li>
<li>Handle authentication and account linking</li>
</ul>
<p><strong>Impact:</strong> Less time spent on setup and fewer repetitive steps when managing multiple accounts.</p>
<h3>Unified reporting and insights</h3>
<ul>
<li>Fetch campaign performance data across platforms</li>
<li>Track impressions, clicks, spend, and conversions</li>
<li>View results in a consistent cross-platform format</li>
</ul>
<p><strong>Impact:</strong> A clearer view of performance without switching between platforms.</p>
<h2>Why this matters</h2>
<ul>
<li><strong>One system for your ads:</strong> Manage campaigns across multiple platforms from one place.</li>
<li><strong>Automation:</strong> Reduce manual work by automating creation, updates, and reporting.</li>
<li><strong>Speed:</strong> Move from plan to live campaign faster by integrating Ad Manager into your workflows.</li>
<li><strong>Better decisions:</strong> Use consolidated data to optimize performance.</li>
<li><strong>Scalability:</strong> Support growth in campaigns and clients without adding complexity.</li>
</ul>
<h2>Documentation</h2>
<p>If you&#8217;re interested in getting access to the API docs, please reach out to us at support@flyingleapstudio.com. </p>


<p class="wp-block-paragraph"></p>
', 'templates', ARRAY['wp-import']::text[], '2026-04-27T17:57:21.000Z'),
('wp-953', 'Store deletion now only removes store pages', 'What changed Leadli now deletes only store-related pages when you delete a store. This helps prevent accidentally deleting the rest of your website. Details Delete Store is scoped to store pages: Deleting a store from the Stores list removes only store pages (Products List, Produ...', '<h2>What changed</h2>
<p>Leadli now deletes only store-related pages when you delete a store. This helps prevent accidentally deleting the rest of your website.</p>
<h2>Details</h2>
<ul>
<li><strong>Delete Store is scoped to store pages:</strong> Deleting a store from the Stores list removes only store pages (Products List, Product Details, Cart, Checkout, Thank You). Your main website pages (Home, About, etc.) are not affected.</li>
<li><strong>Same result from Store Settings:</strong> Deleting a store from Store Settings follows the same behavior and removes only store pages.</li>
<li><strong>Delete Website is unchanged:</strong> Deleting a website from the Websites section still deletes the entire website, including any associated store pages.</li>
<li><strong>Clearer confirmation message:</strong> The delete confirmation text now states that only store pages will be deleted.</li>
</ul>
<h2>How to delete a store</h2>
<ol>
<li>Go to Stores and select the store you want to delete.</li>
<li>Open the three-dot menu or go to Store Settings.</li>
<li>Select Delete Store.</li>
<li>Type DELETE to confirm.</li>
</ol>
<h2>Key points</h2>
<ul>
<li>Only store pages are deleted. Website pages remain intact.</li>
<li>This behavior is consistent wherever you delete the store.</li>
<li>Use Delete Website only when you want to remove the entire website.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-04-23T18:13:02.000Z'),
('wp-952', 'Add terms and privacy consent to store checkout', 'Overview You can add a required Terms & Conditions / Privacy Policy consent checkbox to your store checkout. Customers must agree before they can complete a purchase. What this does Adds a consent checkbox to checkout when enabled. Lets you edit the label text and include links t...', '<h2>Overview</h2>
<p>You can add a required Terms &amp; Conditions / Privacy Policy consent checkbox to your store checkout. Customers must agree before they can complete a purchase.</p>
<h2>What this does</h2>
<ul>
<li>Adds a consent checkbox to checkout when enabled.</li>
<li>Lets you edit the label text and include links to your Terms &amp; Conditions and Privacy Policy.</li>
<li>Shows the checkbox before the payment button and leaves it unchecked by default.</li>
<li>Blocks checkout with an inline message until consent is given.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Open your Store Builder and edit the checkout page.</li>
<li>Select the checkout element.</li>
<li>In the right panel, find the Terms and Conditions setting.</li>
<li>Turn on “Enable Terms and Conditions.”</li>
<li>Update the text and add links as needed.</li>
<li>Save and publish your changes.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>If the setting is enabled, checkout cannot proceed without acceptance.</li>
<li>Works on desktop and mobile.</li>
<li>This can help support common compliance requirements.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-23T15:42:34.000Z'),
('wp-945', 'Social Planner: View and reply to community comments in Comment Management', 'Comment Management in Social Planner now supports Communities. You can view and reply to community comments from the same place you manage other social engagement. This helps you keep up with conversations without switching between tools. What’s included Reply to community post c...', '<p>Comment Management in Social Planner now supports Communities. You can view and reply to community comments from the same place you manage other social engagement.</p>
<p>This helps you keep up with conversations without switching between tools.</p>
<h3>What’s included</h3>
<ul>
<li>Reply to community post comments directly inside Social Planner</li>
<li>Manage community conversations without opening the native community platform</li>
<li>Mention community members in replies for more natural responses</li>
<li>Real-time syncing so updates on the native platform are reflected in Social Planner</li>
</ul>
<p>You can manage community comments alongside Facebook, Instagram, LinkedIn, and TikTok.</p>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner → Comment Management</li>
<li>Open the Comments tab</li>
<li>View and reply to comments</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Respond faster to community conversations</li>
<li>Reduce context switching</li>
<li>Keep communication consistent across platforms</li>
<li>Improve member engagement</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Attachments are not supported in replies</li>
<li>Course mentions and event mentions are not currently supported</li>
<li>You can’t edit comments from Social Planner</li>
<li>Edits made on the native platform will reflect in Social Planner</li>
<li>Maximum comment length is 8000 characters</li>
</ul>


<p class="wp-block-paragraph"></p>
', 'courses', ARRAY['wp-import']::text[], '2026-04-23T14:10:45.000Z'),
('wp-944', 'Custom object templates to set up your CRM faster', 'Custom Objects are now easier to set up with Custom Object Templates. These are pre-built, industry-specific configurations you can apply in one step. Each template includes custom objects, fields (organized into folders), and associations so you can start using your CRM faster. ...', '<p>Custom Objects are now easier to set up with Custom Object Templates. These are pre-built, industry-specific configurations you can apply in one step. Each template includes custom objects, fields (organized into folders), and associations so you can start using your CRM faster.</p>
<p><strong>What’s included</strong></p>
<ul>
<li>Pre-configured custom objects with industry-relevant fields</li>
<li>Fields grouped into folders for simpler navigation</li>
<li>Associations that connect records to the right contacts and companies</li>
</ul>
<p><strong>Available templates</strong></p>
<ul>
<li>Real Estate: Properties and Transactions</li>
<li>Insurance: Policies and Claims</li>
<li>Automotive: Vehicles and Service Orders</li>
<li>SaaS: Subscriptions and Billing</li>
<li>Events: Events and Tickets</li>
<li>Pets: Pets and Pet Care</li>
<li>Home Services: Service Jobs and Projects</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Settings → Objects.</li>
<li>Select Add Custom Object → Use a template.</li>
<li>Choose a template, preview it, then select Import objects to apply it.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-04-22T18:35:31.000Z'),
('wp-941', 'Opportunity Smart Lists', 'Managing opportunities is now more flexible. You can create Opportunity Smart Lists to save a custom opportunity view with your preferred filters, sorting, and visible fields. You can reuse the same view any time without setting it up again. This makes it easier for teams to swit...', '<p>Managing opportunities is now more flexible.</p>
<p>You can create <strong>Opportunity Smart Lists</strong> to save a custom opportunity view with your preferred filters, sorting, and visible fields. You can reuse the same view any time without setting it up again.</p>
<p>This makes it easier for teams to switch between the opportunity views they use most.</p>
<h2>What’s new</h2>
<ul>
<li>Opportunity Smart Lists are available inside Opportunities.</li>
<li>You can save advanced filters, sort order, and visible fields.</li>
<li>You can create Smart Lists in Board view or List view.</li>
<li>You can choose where a Smart List appears: all pipelines or selected pipelines only.</li>
<li>You can set a Smart List as the default view for specific pipelines.</li>
<li>Default views apply for all users in the sub-account.</li>
<li>You can duplicate an existing Smart List.</li>
<li>You can export Smart List results to CSV.</li>
<li>You can share Smart Lists with admins only, all users, or selected users.</li>
<li>You can give shared users view access or edit access.</li>
<li>You can copy and share a direct link to a Smart List.</li>
<li>You can save updates to the same Smart List or save them as a new one.</li>
<li>A Manage Smart Lists page is available to view all Smart Lists in one place.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Turn on <strong>Opportunity Smart Lists – Views &amp; Defaults</strong> in <strong>Subaccount Labs</strong>.</li>
<li>Go to <strong>Opportunities</strong>.</li>
<li>Create a Smart List in Board view or List view.</li>
<li>Set the filters, sorting, and fields you want.</li>
<li>Select which pipelines the Smart List should appear in.</li>
<li>Name the Smart List and save it.</li>
<li>Reopen it any time to edit, share, export, or duplicate it.</li>
<li>Use <strong>Customize list</strong> to manage settings such as Show in, Default view, Duplicate, Export, Sharing &amp; Permissions, and Delete List.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces repetitive setup for teams working in Opportunities.</li>
<li>Makes it easier to return to the exact views you use most.</li>
<li>Helps standardize pipeline views across users.</li>
<li>Makes it easier to share important filtered views.</li>
<li>Gives admins more control over how opportunity views are organized.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This feature is currently available in<strong> Labs (Settings -&gt; Labs)</strong>.</li>
<li>By default, Smart Lists are shared with admins only.</li>
<li>Users with edit access can also change sharing permissions.</li>
<li>Default views are set at the sub-account level, not per individual user.</li>
</ul>
<h2>Feedback</h2>
<p>This is a highly requested feature. Enable it in Labs and share your feedback as you start using it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-22T15:35:02.000Z'),
('wp-935', 'WhatsApp calling (closed beta)', 'WhatsApp Calling lets your team have live voice conversations with customers directly inside the same WhatsApp chat thread. This is useful when a customer is stuck, frustrated, or ready to buy and a short call is faster than a long message exchange. Getting access WhatsApp Callin...', '<p>WhatsApp Calling lets your team have live voice conversations with customers directly inside the same WhatsApp chat thread. This is useful when a customer is stuck, frustrated, or ready to buy and a short call is faster than a long message exchange.</p>
<p>Getting access<br />
WhatsApp Calling is in closed beta. Contact us for access.</p>
<p>What’s included<br />
1) Inbound and outbound calling in WhatsApp<br />
&#8211; Make and receive calls from within the WhatsApp conversation view.<br />
&#8211; Customers stay in the same chat thread without switching apps or sharing a separate phone number.</p>
<p>2) Call actions for customers<br />
&#8211; Callback requests: if a call is missed, customers can request a callback.<br />
&#8211; Call permission prompts: automation can request calling permission when the service window is open.<br />
&#8211; Template-based permission requests: when the service window is closed, send an approved template to request permission before calling.</p>
<p>3) Availability controls<br />
&#8211; Set available hours for when your team can receive calls.<br />
&#8211; Set temporary unavailable hours for meetings, training, and breaks.</p>
<p>Industry examples<br />
&#8211; Real estate: quickly explain a listing and book a showing.<br />
&#8211; Home services: assess urgency, give a rough quote, and dispatch faster.<br />
&#8211; Healthcare: handle sensitive questions with clearer communication.<br />
&#8211; E-commerce: recover high-intent carts when buyers have questions.<br />
&#8211; Education: run consultations and support calls in the same thread.<br />
&#8211; Financial services: build trust with voice while keeping the conversation in one place.<br />
&#8211; Automotive: move from inquiry to test-drive booking more quickly.</p>
<p>Why this matters for SMBs<br />
WhatsApp Calling combines chat and voice into one channel, one inbox, and one conversation history. This can reduce setup overhead and improve speed-to-resolution for complex questions.</p>
<p>Prerequisites (per sub-account)<br />
1. A phone number in connected state.<br />
2. WABA messaging limit at 2,000 tier or higher.<br />
3. The phone number is not on coexistence.</p>
<p>How to activate, once enabled in your account.<br />
1. Go to Settings &gt; WhatsApp &gt; Calling.<br />
2. Select the phone number you want to enable calling on.<br />
3. Turn on Allow Calls and Callback on Missed Calls.<br />
4. Configure call buttons in the conversation view.<br />
5. Set available hours and temporarily unavailable hours.<br />
6. Save your changes.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-22T12:32:10.000Z'),
('wp-934', 'Printful shipping profiles are now managed automatically in Leadli', 'Overview Leadli now manages Printful shipping profiles automatically to make setup easier and improve the reliability of live shipping rates at checkout. What changed Auto-generated profile: A dedicated Printful shipping profile is created automatically to enable live rates at ch...', '<h2>Overview</h2>
<p>Leadli now manages Printful shipping profiles automatically to make setup easier and improve the reliability of live shipping rates at checkout.</p>
<h2>What changed</h2>
<ul>
<li><strong>Auto-generated profile:</strong> A dedicated Printful shipping profile is created automatically to enable live rates at checkout.</li>
<li><strong>New accounts:</strong> The profile is created and configured by default on new installations.</li>
<li><strong>Existing accounts:</strong> Syncing products from Printful automatically enables shipping.</li>
<li><strong>Profile dependency:</strong> If products are removed from the Printful profile, shipping rates will be disabled for those products.</li>
<li><strong>Deletion handling:</strong> If the profile is deleted, it will not be recreated automatically. Reinstall the integration to restore it.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Install and connect the Printful app from the Marketplace.</li>
<li>Sync your Printful products to your store.</li>
<li>Leadli will create and configure the required shipping profile automatically.</li>
<li>Keep products assigned to the Printful profile to keep live rates enabled at checkout.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The Printful shipping profile is system-generated for correct functionality. Manual edits are not recommended.</li>
<li>Removing products from the profile disables shipping rate calculation for those products.</li>
<li>If you delete the profile, reinstall the integration to restore it.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-22T05:33:41.000Z'),
('wp-904', 'AI Pages: customization and content improvements', 'This update makes it easier to build the page you want with the AI-powered WordPress Page Builder. It adds live color previews, the option to regenerate individual images, and more section layout variants. Where to find it WordPress > All Sites > Manage Website > Pages > AI Gener...', '<p>This update makes it easier to build the page you want with the AI-powered WordPress Page Builder. It adds live color previews, the option to regenerate individual images, and more section layout variants.</p>
<h2>Where to find it</h2>
<p>WordPress &gt; All Sites &gt; Manage Website &gt; Pages &gt; AI Generated Pages</p>
<h2>What’s new</h2>
<h3>Live preview for color palette changes</h3>
<p>When you adjust color palettes in the Styles panel, you will now see the results immediately in a live preview.</p>
<ul>
<li><strong>Real-time feedback:</strong> Preview palettes such as Default, Marine, Nature, and Earth and see updates across headings, body text, buttons, backgrounds, and accents.</li>
<li><strong>Changes apply on save:</strong> Your selections are applied only after you click <strong>Update Page</strong>.</li>
</ul>
<h3>Regenerate specific images</h3>
<p>You can regenerate a specific image on the page without changing the rest of the content.</p>
<ul>
<li><strong>Targeted control:</strong> Hover over an AI-generated image and select <strong>Regenerate Image</strong>.</li>
<li><strong>Custom prompts:</strong> Use <strong>Generate Custom Image</strong> to describe the style, lighting, and subject (up to 500 characters).</li>
<li><strong>Preview before inserting:</strong> Review the generated image first and regenerate until it fits.</li>
<li><strong>Non-destructive workflow:</strong> Changes are applied when you save in the final step.</li>
</ul>
<h3>More variants for page sections</h3>
<p>More layout and content variants have been added across sections such as testimonials, services, FAQs, and hero banners. This gives the generator a broader set of templates and can improve out-of-the-box results for different industries and use cases.</p>
<ul>
<li>More templates per section type (for example, different testimonial styles and different service grid layouts).</li>
<li>Better chances of matching your tone and audience from the start.</li>
</ul>
<p>Overall, you can preview styling changes immediately, refine visuals more precisely, and generate pages with more layout variety.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-04-21T21:40:29.000Z'),
('wp-885', 'Delete schema markup from a page', 'You can now remove schema markup from any website or funnel page in Leadli. You can delete a single schema or clear all schemas from the page. Why this matters Previously, once schema markup was added to a page, there was not a clear way to remove it. This update adds a confirmat...', '<p>You can now remove schema markup from any website or funnel page in Leadli. You can delete a single schema or clear all schemas from the page.</p>
<h3>Why this matters</h3>
<p>Previously, once schema markup was added to a page, there was not a clear way to remove it. This update adds a confirmation step and makes deletion available in all the places schema is managed.</p>
<h3>Key updates</h3>
<ul>
<li>Delete schemas from Form View, JSON View, or through AI chat.</li>
<li>Remove one schema or clear all schemas from a page.</li>
<li>Destructive actions require confirmation before changes are applied.</li>
<li>If needed, you can recover deleted schema using the page’s version history.</li>
</ul>
<h3>How to delete schema markup</h3>
<p><strong>Access:</strong> Website/Funnel Builder → Edit Page → SEO &amp; AI search optimization → Schema Markup</p>
<h4>Method 1: Form View</h4>
<ol>
<li>Open the Add/Edit Schema window and stay in Form View.</li>
<li>In the schema list, open the menu next to the schema you want to remove and choose Delete.</li>
<li>To delete all schemas, remove each schema, then click Validate &amp; Save.</li>
<li>Confirm the deletion when prompted.</li>
</ol>
<h4>Method 2: JSON View</h4>
<ol>
<li>Open the Add/Edit Schema window and switch to JSON View.</li>
<li>Remove the JSON-LD from the editor.</li>
<li>Click Validate &amp; Save.</li>
<li>Confirm the deletion when prompted.</li>
</ol>
<h4>Method 3: AI chat</h4>
<ol>
<li>Open Funnel AI, Ask AI, or Schema Markup AI.</li>
<li>Send a request like “remove all schema markup from this page” or “delete the Organization schema”.</li>
<li>Review the changes and confirm when prompted.</li>
</ol>
<h3>Recovery option (if you deleted schema by mistake)</h3>
<ol>
<li>Open the page in the Website/Funnel Builder.</li>
<li>Open Version History and restore a version that still contains the schema.</li>
<li>Copy the JSON-LD from the Schema Markup editor.</li>
<li>Return to the latest version, paste the JSON-LD back in, then Validate &amp; Save and publish.</li>
</ol>
<h3>Good to know</h3>
<ul>
<li>Deletion is page-specific and only affects the page you are editing.</li>
<li>Changes appear in preview after saving, but only go live after publishing.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-04-21T16:19:45.000Z'),
('wp-884', 'Custom date reminders now support custom objects, opportunities, and companies', 'Summary Custom date reminders now work with date fields on more record types, not only Contact custom date fields in contact-based workflows. You can now use Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Compan...', '<p><strong>Summary</strong></p>
<p>Custom date reminders now work with date fields on more record types, not only Contact custom date fields in contact-based workflows. You can now use Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Company date fields in company-based workflows.</p>
<p><strong>How it works</strong></p>
<p>Custom date reminder triggers evaluate date fields based on the supported object in the workflow. In contact-based workflows, this includes Opportunity date fields. In custom object-based and company-based workflows, the trigger reads date fields from the same object the workflow is built around and starts the workflow when the reminder timing matches.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Create or open a workflow for Contacts, Custom Objects, or Companies.</li>
<li>Choose a custom date reminder trigger and select the supported date field for that workflow type.</li>
<li>Set the timing for when the workflow should run before, on, or after that date.</li>
</ul>
<p><strong>Why this change</strong></p>
<p>Previously, custom date reminders were limited to Contact date fields inside contact-based workflows. This update removes that restriction so you can automate date-driven follow-ups across more parts of your CRM without workarounds.</p>
<p><strong>Examples</strong></p>
<ul>
<li>Trigger a contact-based workflow from an Opportunity close date to remind a contact before a renewal conversation.</li>
<li>Trigger a custom object-based workflow from a custom object expiry date to send an internal reminder when that record needs attention.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Supported field types include: Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Company date fields in company-based workflows.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-04-21T15:27:10.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;