INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Set <strong>Access</strong> (choose included channels, events, and courses, or select full access).</li>
<li>Fill in <strong>Details</strong> (plan name and description).</li>
<li>Set <strong>Pricing</strong> (frequency, currency, price, and optional free trial).</li>
<li>Review <strong>Benefits</strong> (what members will see).</li>
<li><strong>Publish</strong> and activate the plan. Optionally mark one plan as Most Popular.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Plans support weekly, monthly, yearly, and one-time pricing.</li>
<li>Multiple currencies are supported.</li>
<li>Free trials can be configured per plan.</li>
<li>Members can switch plans at any time; the existing subscription remains active until the new one is confirmed.</li>
<li>Admins can reorder plans and highlight one as Most Popular.</li>
<li>Free plan configuration is planned, allowing you to define what is included in the free tier alongside paid plans.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T08:37:58.000Z'),
('wp-1681', 'Ask AI Mobile: Connectors', 'Connectors let Ask AI work with the apps your team already uses, directly from your phone. Overview You can now set up and manage Connectors in the Leadli mobile app inside Ask AI. This makes it easier to connect accounts, fix expired logins, and choose which tools Ask AI can use...', '<p>Connectors let Ask AI work with the apps your team already uses, directly from your phone.</p>
<h2>Overview</h2>
<p>You can now set up and manage Connectors in the Leadli mobile app inside Ask AI. This makes it easier to connect accounts, fix expired logins, and choose which tools Ask AI can use while you are away from your desk.</p>
<h2>What you can do</h2>
<ul>
<li><strong>View connected apps:</strong> See every connected app, how many accounts are connected, and how many tools are enabled.</li>
<li><strong>Browse and connect new apps:</strong> Search the app catalog and connect a new app in a few taps.</li>
<li><strong>Sign in securely:</strong> For most apps, sign-in happens on the app provider’s page in a secure in-app browser.</li>
<li><strong>Control tool access:</strong> Select the exact tools Ask AI can use for each app.</li>
<li><strong>Add a custom MCP server:</strong> Enter a name and URL to connect your own server. MCP (Model Context Protocol) is a standard way for AI assistants to communicate with other apps.</li>
<li><strong>Stay in sync:</strong> Apps you connect on the web appear on mobile, and apps you connect on mobile appear on the web.</li>
</ul>
<h2>Why it helps</h2>
<ul>
<li><strong>Save time:</strong> Connect or repair app access quickly from your phone.</li>
<li><strong>Stay in control:</strong> Decide which tools Ask AI can use, per app.</li>
<li><strong>Keep work moving:</strong> Reconnect an expired account without waiting to return to your computer.</li>
<li><strong>Keep accounts private:</strong> The accounts you connect are only visible to you. Other users in the sub-account do not see them.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Open <strong>Ask AI</strong> in the Leadli mobile app.</li>
<li>Open <strong>Customize</strong>, then select <strong>Connectors</strong>.</li>
<li>On the <strong>Browse</strong> tab, choose an app and select <strong>Connect</strong>.</li>
<li>Sign in when prompted, choose the account, and select the tools you want Ask AI to use.</li>
<li>Select <strong>Save</strong>, then return to Ask AI and start using it.</li>
</ol>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Status:</strong> Public (for users with Ask AI access)</li>
<li><strong>Support:</strong> Leadli, LeadConnector, and white-label apps</li>
</ul>
<h2>Good to know</h2>
<ul>
<li><strong>Who can use it:</strong> Anyone with access to Ask AI in the mobile app.</li>
<li><strong>Sub-accounts only:</strong> Connectors are configured per sub-account. At agency level, you will be asked to switch to a sub-account first.</li>
<li><strong>Connection methods:</strong> Most apps use a standard sign-in page. Some require credentials or basic details. Some do not require an account.</li>
<li><strong>Custom MCP requirements:</strong> The server URL must start with <code>https://</code> or <code>http://</code>.</li>
<li><strong>Enabling a connector:</strong> A connector needs a connected account and at least one tool selected.</li>
<li><strong>Saving changes:</strong> If you leave without saving, your changes are discarded.</li>
<li><strong>Deleting a custom MCP server:</strong> Deleting it also removes every account connected to it and cannot be undone.</li>
<li><strong>Offline behavior:</strong> You may see the last loaded list with a refresh warning until you are back online.</li>
</ul>
<h2>Feedback</h2>
<ul>
<li>Speak with us: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-11-02T06:59:07.000Z'),
('wp-1680', 'Ask AI in the mobile app: view a contact summary from the contact screen', 'Ask AI now opens from any contact’s details screen with a summary of that relationship already visible. You can prepare for an upcoming meeting, get a recap, or dictate a note without leaving the contact. The problem this solves When you open a contact in the middle of a call or ...', '<p>Ask AI now opens from any contact’s details screen with a summary of that relationship already visible. You can prepare for an upcoming meeting, get a recap, or dictate a note without leaving the contact.</p>
<h2>The problem this solves</h2>
<p>When you open a contact in the middle of a call or chat, it can be hard to quickly understand what is happening next. You may need to check messages, appointments, opportunities, and tasks one at a time. Notes may also be skipped because typing on a phone is slow.</p>
<h2>What’s new</h2>
<p>Tap the Ask AI icon at the top of any contact to open a summary card for that contact. The card is built from your actual account data.</p>
<ul>
<li><strong>Last message:</strong> the channel and how long ago it was sent</li>
<li><strong>Next appointment:</strong> the status (including custom statuses) and a “+N more” indicator when more appointments are coming up</li>
<li><strong>Biggest open deal:</strong> the pipeline and stage, plus the number of days since it last moved</li>
<li><strong>Open tasks:</strong> including an indicator for overdue tasks</li>
</ul>
<p>You can tap any row to open that record in its normal screen. Below the card are three actions: <strong>Prep me for next appointment</strong>, <strong>Summarize this contact</strong>, and <strong>Dictate to add a note</strong>. Dictation creates a proposed note (and a task if needed). Nothing is saved until you approve it.</p>
<h2>Why it matters</h2>
<ul>
<li><strong>Save time:</strong> view key contact activity in one place instead of switching between multiple screens.</li>
<li><strong>Prepare faster:</strong> get a short briefing before your next appointment.</li>
<li><strong>Capture notes more reliably:</strong> dictate notes on mobile and approve them quickly.</li>
<li><strong>Stay up to date:</strong> Ask AI reads the contact’s latest records each time you open it.</li>
<li><strong>Keep control:</strong> Ask AI only runs when you request it, and nothing is saved without approval.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open any contact from Contacts, Conversations, or search.</li>
<li>Tap the Ask AI icon in the top bar to view the contact summary card.</li>
<li>Choose an action (Prep me, Summarize, or Dictate) or type your own question about the contact.</li>
</ol>
<h2>What’s next</h2>
<p>This release adds a way for different parts of the app to open Ask AI for a specific record. Contacts is the first screen to use it, and more screens will follow.</p>
<h2>Rollout and availability</h2>
<ul>
<li><strong>Release date:</strong> October 2026</li>
<li><strong>Available version:</strong> v4.27.0 and later</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Leadli:</strong> Available</li>
<li><strong>LeadConnector:</strong> Available</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;