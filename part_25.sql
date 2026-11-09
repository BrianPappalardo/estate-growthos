INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>Why this matters</h2>
<ul>
<li><strong>Run more lead gen in one place:</strong> Plan, launch, and report TikTok campaigns alongside Meta, Google, and LinkedIn.</li>
<li><strong>Reach engaged audiences:</strong> Use TikTok targeting to reach the right people by interests and behaviors.</li>
<li><strong>Fewer publishing issues:</strong> Built-in checks help catch missing details and incomplete setup before you publish.</li>
<li><strong>Keep ad operations centralized:</strong> Manage your ad spend and workflows inside Leadli.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T16:31:59.000Z'),
('wp-1618', 'Shareable AI agent chat pages for Leadli workflows', 'You can now host a workflow AI agent on a dedicated chat page and share the link with customers. Customers can chat with the agent directly without adding a website widget or writing code. What’s included Hosted chat page: Each AI Agent Action can have its own shareable link. Ver...', '<p>You can now host a workflow AI agent on a dedicated chat page and share the link with customers. Customers can chat with the agent directly without adding a website widget or writing code.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Hosted chat page:</strong> Each AI Agent Action can have its own shareable link.</li>
<li><strong>Verified visitors:</strong> Visitors sign in with their email and a one-time code. The email must match an existing contact in your account.</li>
<li><strong>Page appearance:</strong> Set a display name, avatar initials, and a welcome message.</li>
<li><strong>Suggested prompts:</strong> Add quick replies to help visitors start a conversation.</li>
<li><strong>Unavailable message:</strong> Choose what visitors see when the page is offline.</li>
<li><strong>Offline or live:</strong> The page stays offline until you turn it on, and you can preview it before sharing.</li>
<li><strong>Full chat experience:</strong> Visitors can type or dictate, start a new chat, and return to past chats.</li>
<li><strong>Agent chat history:</strong> Review each session, including messages, tools used, and token usage.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open the workflow that contains your <strong>AI Agent Action</strong>.</li>
<li>In the AI Agent Action, scroll to <strong>Share</strong> and select <strong>Set up shareable link</strong>.</li>
<li>Enter the display name, avatar initials, welcome message, suggested prompts, and unavailable message.</li>
<li>Select <strong>Create link</strong>.</li>
<li>Publish your workflow.</li>
<li>Switch the hosted chat page from <strong>Offline</strong> to <strong>Live</strong>.</li>
<li>Use <strong>Preview</strong> to see the page the same way customers will.</li>
<li>Share the link.</li>
<li>Use the <strong>Share</strong> section to review agent chat sessions.</li>
</ol>
<h2>Billing and access notes</h2>
<ul>
<li><strong>Billing:</strong> Each visitor reply is billed like an AI Agent execution in your workflow.</li>
<li><strong>Publishing requirement:</strong> The shared page remains offline until the workflow is published.</li>
<li><strong>Access:</strong> Only verified visitors can chat, and they must already exist as contacts in your account.</li>
<li><strong>Accuracy:</strong> AI replies can be incorrect, and the page displays a note to visitors.</li>
</ul>
<h2>Example use case</h2>
<p>You can use the hosted chat page as a simple support desk. A customer signs in, asks for a ticket status, and the agent can look up the ticket and respond with the latest details. The same chat can be used to capture new issues, add notes, or create a new ticket.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T16:27:29.000Z'),
('wp-1617', 'Automatic company creation and contact association by email domain', 'Leadli can now automatically create or match a company based on a contact’s email domain. When a contact is created or their email address changes, Leadli looks for an existing company with the same domain, links the contact, and can create and enrich a new company when needed. W...', '<p>Leadli can now automatically create or match a company based on a contact’s email domain. When a contact is created or their email address changes, Leadli looks for an existing company with the same domain, links the contact, and can create and enrich a new company when needed.</p>
<h2>What’s included</h2>
<ul>
<li>Available to all sub-accounts (no Labs toggle required).</li>
<li>For new agencies, <strong>Create companies from contact’s email domain</strong> is on by default. Existing agencies can enable it in settings.</li>
<li>One domain per company (unique by default) to reduce duplicate companies.</li>
<li>Automatic contact-to-company association using the email domain.</li>
<li>Optional automatic enrichment when a new company is created (domain, name, and logo).</li>
<li>Exclusions for common free email providers, plus support for custom excluded domains.</li>
<li>Options to add domains to existing companies and apply the automation to existing contacts.</li>
</ul>
<h2>Why it matters</h2>
<p>For B2B teams, a contact’s email domain is a reliable signal for which company they belong to. This helps reduce manual work, avoids duplicates, and keeps existing company records (including deals and notes) connected to the right contacts.</p>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Settings &gt; Objects &gt; Companies</strong>.</li>
<li>Under <strong>Automations</strong>, enable the options you want, such as <strong>Create companies from contact’s email domain</strong>, <strong>Enrich companies automatically</strong>, and <strong>Automatically prevent duplicate companies</strong>.</li>
<li>Add any domains you want to ignore under <strong>Exclude domains from automatic association</strong>.</li>
<li>If needed, fill in domains for existing companies, then apply the automation to existing contacts, and save your changes.</li>
</ol>
<h2>Notes and tips</h2>
<ul>
<li>Keep duplicate prevention enabled to reduce accidental duplicate company records.</li>
<li>If you are applying this to existing data, add or verify company domains first so contacts attach to the correct companies.</li>
<li>Existing contact-to-company links are respected and will not be overwritten.</li>
<li>Domain matching is exact (for example, <code>company.com</code> and <code>mail.company.com</code> are treated as different domains).</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T15:38:17.000Z'),
('wp-1616', 'Search conversation messages by keyword', 'You can now search for words or phrases in your Conversations inbox, across all conversations or within a single conversation. This helps you find the right message quickly without scrolling through long threads. What’s included Search across conversations: Enter a keyword to see...', '<p>You can now search for words or phrases in your Conversations inbox, across all conversations or within a single conversation. This helps you find the right message quickly without scrolling through long threads.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Search across conversations:</strong> Enter a keyword to see every conversation that includes it. Results show a preview of the matching message and let you open the conversation at the match.</li>
<li><strong>Search within a conversation:</strong> Open a contact thread and search inside that conversation. Matches are highlighted and you can jump between them using next/previous controls.</li>
</ul>
<h3>Filters</h3>
<p>You can narrow results using filters such as date range, channel (Email, SMS, Facebook, WhatsApp, Instagram), direction, owner, attachments, and followers.</p>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Conversations</strong>.</li>
<li>Select the search option and type a keyword, contact name, email address, or phone number.</li>
<li>Choose a result to open the conversation at the matching message.</li>
<li>Optional: use filters to narrow the results.</li>
</ol>
<h3>Why it matters</h3>
<p>This makes it easier to locate past details like quoted prices, dates, requests, and product mentions, even in large inboxes.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T15:38:14.000Z'),
('wp-1615', 'Workflow trigger: start a workflow when CRM records are linked', 'You can now start a Leadli workflow automatically when a new association links two CRM records. Use the associated record type and the relationship label to control when follow-up begins. What’s included Works across CRM record types: Contacts, Opportunities, Custom Objects, and ...', '<p>You can now start a Leadli workflow automatically when a new association links two CRM records. Use the associated record type and the relationship label to control when follow-up begins.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Works across CRM record types:</strong> Contacts, Opportunities, Custom Objects, and Companies.</li>
<li><strong>Supported workflow types:</strong> Standard workflows, Custom Object workflows, and Company workflows.</li>
<li><strong>Relationship filters:</strong> Choose the associated object and (optionally) filter by association label to control when the workflow runs.</li>
</ul>
<h2>Why it matters</h2>
<p>When records are linked, it often means a next step is needed. For example, you can notify your team when a buyer is linked to a property, create a follow-up task when records connect, or start an onboarding process.</p>
<h2>How to set it up</h2>
<ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;