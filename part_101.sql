INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;