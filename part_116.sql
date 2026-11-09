INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;