INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1605', 'Sub-account Affiliate Manager: audit logs are now available', 'Audit Logs now includes an Affiliate Manager module, so admins can see who made changes and when. This is useful when multiple team members manage campaigns, commissions, and payouts. What’s included Campaigns: created, updated, deleted, and cloned (including tier, product, and c...', '<p>Audit Logs now includes an Affiliate Manager module, so admins can see who made changes and when. This is useful when multiple team members manage campaigns, commissions, and payouts.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Campaigns:</strong> created, updated, deleted, and cloned (including tier, product, and commission changes)</li>
<li><strong>Affiliates:</strong> created, updated, deleted, added to or removed from campaigns, marked inactive, and manual sales/leads/coupons added</li>
<li><strong>Customers:</strong> manual commissions added, deleted, disabled, or moved</li>
<li>Before and after values are recorded for every change</li>
<li>Filter logs by action and by affiliate, campaign, customer, or payout</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Settings</strong> &gt; <strong>Audit Logs</strong>.</li>
<li>Set <strong>Module</strong> to <strong>Affiliate Manager</strong>.</li>
<li>Filter by action, or search by affiliate, campaign, customer, or payout name/ID.</li>
<li>Open a log entry to see who made the change and the before/after values.</li>
</ol>
<p>Available to sub-account admins.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Clear accountability for changes to campaigns, commissions, and payouts</li>
<li>Faster investigation of commission disputes and payout mistakes</li>
<li>Better visibility for larger or compliance-focused teams</li>
</ul>
<p><strong>Help document:</strong> <a href="https://help.leadli.com/support/solutions/articles/155000009073-how-to-track-affiliate-manager-activity-with-audit-logs" rel="ugc nofollow noopener noreferrer" target="_blank">https://help.leadli.com/support/solutions/articles/155000009073-how-to-track-affiliate-manager-activity-with-audit-logs</a></p>
<p><strong>Changelog link:</strong> <a href="https://ideas.leadli.com/changelog/sub-account-affiliate-manager-audit-logs-for-affiliate-manager" rel="ugc nofollow noopener noreferrer" target="_blank">https://ideas.leadli.com/changelog/sub-account-affiliate-manager-audit-logs-for-affiliate-manager</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T09:03:15.000Z'),
('wp-1604', 'Affiliate Manager: Review and retry PayPal-denied payouts', 'Leadli Affiliate Manager now detects payouts that PayPal denies or fails. This keeps payout statuses accurate and helps you recover failed payouts without contacting support. Previously, payouts sent to PayPal could be marked as paid before confirming PayPal’s response. That mean...', '<p>Leadli Affiliate Manager now detects payouts that PayPal denies or fails. This keeps payout statuses accurate and helps you recover failed payouts without contacting support.</p>
<p>Previously, payouts sent to PayPal could be marked as paid before confirming PayPal’s response. That meant a denied payout (for example, after a risk review) could still appear as paid in Leadli.</p>
<h2>What’s new</h2>
<ul>
<li>A new <strong>Failed</strong> tab on the Payouts page to show payouts denied or failed by the payment gateway</li>
<li>A new <strong>Processing</strong> tab for payouts that are still being confirmed (shown only when there are in-progress payouts)</li>
<li>Each failed payout shows a clear status indicator along with the reason returned by PayPal</li>
<li>New admin actions on failed payouts: View Contact, View Commission(s), View Payment Status, and Retry Payment</li>
<li>Retry Payment moves the payout back to <strong>Approved for Payout</strong> so it can be paid again</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Go to <strong>Marketing &gt; Affiliate Manager &gt; Payouts</strong>.</li>
<li>Open the <strong>Processing</strong> tab to see payouts still being confirmed (if available).</li>
<li>Open the <strong>Failed</strong> tab to see denied or failed payouts (if available).</li>
<li>Review the failure reason, then open the menu and select <strong>Retry Payment</strong>.</li>
<li>The payout returns to <strong>Approved for Payout</strong>. You can pay it again from there.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Payout status matches PayPal’s actual result, so payouts do not show as paid when they are not</li>
<li>You can recover failed payouts without waiting on support</li>
<li>You can address payout issues before affiliates report them</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-27T09:02:27.000Z'),
('wp-1603', 'Use Claude and Gemini models in Leadli Conversation AI', 'Leadli Conversation AI agents can now run on models from multiple providers. Along with GPT models, you can choose Anthropic Claude or Google Gemini from the same Model menu. This lets you pick the best fit for each agent: a higher-capability model for complex conversations, or a...', '<p>Leadli Conversation AI agents can now run on models from multiple providers. Along with GPT models, you can choose <strong>Anthropic Claude</strong> or <strong>Google Gemini</strong> from the same <strong>Model</strong> menu.</p>
<p>This lets you pick the best fit for each agent: a higher-capability model for complex conversations, or a faster, lower-cost model for simple questions and higher-volume replies.</p>
<h2>Key capabilities</h2>
<ul>
<li><strong>Claude and Gemini available alongside GPT:</strong> The Model menu includes Claude Opus 5.5, Claude Sonnet 5.5, Claude Haiku 5.5 and Claude Haiku 4.5, plus Gemini 3.8 Flash, Gemini 3.7 Flash and Gemini 3.5 Flash Lite.</li>
<li><strong>Cost indicators:</strong> Each model shows a relative cost from <strong>$</strong> to <strong>$$$$</strong> to help you balance quality and cost.</li>
<li><strong>Primary and secondary model support:</strong> You can set a Primary Model and a Secondary Model. The secondary model can be from a different provider and will be used automatically if the primary model is unavailable.</li>
<li><strong>Switch models by chatting:</strong> In <strong>Build with AI</strong>, you can ask to change the model (for example, “Switch the model to Claude”) and Leadli will update the agent’s primary model.</li>
<li><strong>Per-agent model selection:</strong> Each agent can use its own model, so agents in the same sub-account can run different providers.</li>
<li><strong>No other settings changes:</strong> Your prompt, actions, knowledge base, channels, and settings stay the same when you switch models.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Enable <strong>Conversations AI Provider Support</strong> under <strong>Settings → Labs</strong>.</li>
<li>Go to <strong>AI Agents → Conversation AI</strong> and open an agent.</li>
<li>Open the <strong>Model</strong> menu and choose a Claude or Gemini model.</li>
<li>(Optional) Set a <strong>Secondary Model</strong> in the model settings.</li>
<li>Test the agent, then click <strong>Save</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li><strong>Match the model to the job:</strong> Use higher-capability models where replies need more care, and lighter models where speed matters more.</li>
<li><strong>Manage costs:</strong> Lower-cost models can work well for simple, high-volume conversations.</li>
<li><strong>Reduce reliance on a single provider:</strong> Set a secondary model from another provider for better resilience.</li>
</ul>
<h2>Important notes</h2>
<ul>
<li><strong>Test after switching:</strong> Each model has its own writing style, so test before you roll out changes.</li>
<li><strong>GPT 5 and GPT 5 Mini retire on 30 Oct:</strong> If any agents use these models, move them to another model before then.</li>
</ul>
<h2>Availability</h2>
<p>Multi-provider model support is available in Labs. Enable it under <strong>Settings → Labs → Conversations AI Provider Support</strong>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T08:55:10.000Z'),
('wp-1602', 'New in Leadli: QR code usage limits and a refreshed QR builder', 'QR codes are now easier to manage in Leadli. You can set usage limits to control how many times a QR link can be scanned and when it is valid. The QR builder has also been updated, and the QR codes list now clearly indicates when a code has active usage rules. What’s new 1) Dynam...', '<p>QR codes are now easier to manage in Leadli.</p>
<p>You can set usage limits to control how many times a QR link can be scanned and when it is valid. The QR builder has also been updated, and the QR codes list now clearly indicates when a code has active usage rules.</p>
<h2>What’s new</h2>
<h3>1) Dynamic QR codes: scan limits and expiration</h3>
<ul>
<li><strong>Set scan limits:</strong> Control how many times a link can be scanned. You can set a limit of 1 for one-time use, or choose a higher number for a fixed number of scans.</li>
<li><strong>Choose how a QR code expires:</strong> Use a duration (for example, valid for 30 minutes from creation) or a date range with a specific start and end time. If a start time is in the future, the code stays inactive until that time.</li>
<li><strong>Timezone-aware scheduling:</strong> Date ranges follow the timezone you select, regardless of where the code is scanned.</li>
<li><strong>Clear messages when a code is not available:</strong> If a code has expired, reached its scan limit, or is not active yet, scanners see an explanation instead of an unclear error.</li>
<li><strong>Rules are enforced at scan time:</strong> Limits and expiry rules are checked when someone scans the code. This means the same printed QR code can continue to be used without reprinting.</li>
</ul>
<h3>2) A clearer QR builder</h3>
<ul>
<li><strong>Updated layout:</strong> The QR builder uses a side navigation to organize settings into clear sections.</li>
<li><strong>Clearer language:</strong> Labels and helper text have been revised to make each setting easier to understand before you save.</li>
<li><strong>Translated labels:</strong> New labels, status tags, and tooltips are available across all supported languages.</li>
</ul>
<h3>3) A redesigned QR codes list</h3>
<ul>
<li><strong>Status at a glance:</strong> QR codes with usage rules are tagged so you can quickly identify which codes have limits and which are inactive.</li>
<li><strong>Quick details:</strong> You can view what rule is in effect (scan limit, expiry date, or validity window) without opening the QR code.</li>
</ul>
<h2>Why it matters</h2>
<p>Usage limits make it practical to share QR codes that only work during a specific time window or for a set number of scans, even after the code has been printed. The updated builder and list views also make it faster to configure codes and easier to see which codes have active restrictions.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T08:29:13.000Z'),
('wp-1601', 'Conversation AI can use your business apps with MCP servers', 'Leadli Conversation AI can now connect to MCP servers so the agent can use other apps during a conversation. You can connect an MCP server from the Marketplace (for example: Google Calendar, Google Drive, Google Sheets, Google Docs, Canva, Zapier, or Apify), or add your own MCP s...', '<p>Leadli Conversation AI can now connect to MCP servers so the agent can use other apps during a conversation.</p>
<p>You can connect an MCP server from the Marketplace (for example: Google Calendar, Google Drive, Google Sheets, Google Docs, Canva, Zapier, or Apify), or add your own MCP server by URL. You decide which tools the agent is allowed to use and when it should use each server.</p>
<p>This helps when a customer’s answer lives outside Leadli, such as open times in a calendar, a price list in a spreadsheet, or a policy in a document. Instead of waiting for a person, the agent can look up the information and respond using real data.</p>
<h2>Key capabilities</h2>
<ul>
<li><strong>MCP Servers section in the agent builder:</strong> Add MCP servers to a Conversation AI agent (up to 5 servers per agent).</li>
<li><strong>Marketplace servers or custom servers:</strong> Choose a server from the Marketplace or add a custom MCP server by providing its HTTPS URL.</li>
<li><strong>Clear guidance for when to use a server:</strong> Provide instructions for when the agent should use each MCP server, and optionally what it should say after using it.</li>
<li><strong>Tool-level permissions:</strong> Enable only the tools you want the agent to use, so it can retrieve information without making unwanted changes.</li>
<li><strong>Follow-up support:</strong> The agent can remember what it looked up for a contact for 2 hours so follow-up questions can be answered without starting over.</li>
<li><strong>Automatic retries:</strong> If a server rejects a call because a value is missing or incorrect, the agent can correct and retry (up to 2 times in the same turn).</li>
<li><strong>Logging and visibility:</strong> Each MCP call is shown in the agent logs along with the result.</li>
</ul>
<h2>What you can do with this</h2>
<ul>
<li><strong>Check availability:</strong> Read open appointment times from Google Calendar.</li>
<li><strong>Answer from documents:</strong> Use content from Google Docs or Google Drive for policies, menus, and service details.</li>
<li><strong>Look up pricing or inventory:</strong> Read the latest information from Google Sheets.</li>
<li><strong>Share the right file:</strong> Find a brochure or form in Google Drive and send the link.</li>
<li><strong>Connect internal systems:</strong> Use a custom MCP server to access orders, bookings, or other internal data.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Enable <strong>MCP support for Conversation AI</strong> in <strong>Settings → Labs</strong>.</li>
<li>Go to <strong>AI Agents → Conversation AI</strong>, open your agent, and expand <strong>MCP Servers</strong>.</li>
<li>Click <strong>Connect MCP Server</strong> and select a server, or choose <strong>Add custom MCP</strong> to enter your own server URL.</li>
<li>Under <strong>Accounts</strong>, connect the app account you want the agent to use.</li>
<li>Add guidance for <strong>When should this MCP be used?</strong> and optionally <strong>What to say after using this MCP server</strong>.</li>
<li>Disable any tools the agent should not use, then click <strong>Save</strong>.</li>
<li>Send a test message and review <strong>Agent Logs</strong> to confirm MCP calls are working.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Channels:</strong> Works on channels where Conversation AI replies.</li>
<li><strong>Limits:</strong> Up to 5 MCP servers per agent, with one connection per server.</li>
<li><strong>Account requirements:</strong> The app account must be connected under the same sub-account as the agent.</li>
<li><strong>Response time:</strong> Replies that call a slow server may take a few seconds longer.</li>
<li><strong>Testing:</strong> The builder test chat does not remember earlier lookups between messages, but real conversations do.</li>
</ul>
<h2>Availability</h2>
<p>MCP Servers for Conversation AI is available in Labs. Enable it in <strong>Settings → Labs → MCP support for Conversation AI</strong>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T08:20:18.000Z'),
('wp-1600', 'Leadli Conversation AI: Appointment booking now uses the contact’s local time zone', 'Leadli Conversation AI appointment booking now checks the contact’s time zone before showing available times. This helps prevent missed appointments when the contact and the business are in different time zones. What changed Confirms the time zone before showing time slots: If th...', '<p>Leadli Conversation AI appointment booking now checks the contact’s time zone before showing available times. This helps prevent missed appointments when the contact and the business are in different time zones.</p>
<h2>What changed</h2>
<ul>
<li><strong>Confirms the time zone before showing time slots:</strong> If the system can’t confidently determine the time zone, the agent will ask.</li>
<li><strong>Uses the contact’s city or address:</strong> A city or street address is usually enough to identify the correct time zone (for example, Denver → America/Denver).</li>
<li><strong>Clarifies locations that span multiple time zones:</strong> If the contact shares a broad region (for example, “Texas” or “Australia”), the agent asks for the nearest city.</li>
<li><strong>Reuses known details:</strong> If the contact already has a valid time zone saved, or mentioned it earlier in the chat, the agent uses it and does not ask again.</li>
<li><strong>Optionally saves to the contact record:</strong> When available, the time zone can be written to the standard <strong>Time Zone</strong> contact field through the <strong>Contact Info</strong> action.</li>
<li><strong>Shows the correct time on both sides:</strong> Slots are shown in the contact’s time zone, and the booked appointment lands on the business calendar at the matching time.</li>
<li><strong>Respects contacts who prefer not to share:</strong> Booking can continue in the business time zone, and nothing is saved to the contact record.</li>
</ul>
<h2>Where it works</h2>
<ul>
<li>Prompt-based Conversation AI agents in <strong>Auto-Pilot</strong> mode.</li>
<li><strong>Single and Multi calendar</strong> booking (slot lookup, booking, and rescheduling).</li>
</ul>
<h2>How to enable</h2>
<ol>
<li>Enable <strong>Conversations AI | Advanced Time Zone Support</strong> under <strong>Settings → Labs</strong>.</li>
<li>Open your agent and go to <strong>Actions → Contact Info</strong>.</li>
<li>Add the standard field <strong>Time Zone</strong> and save.</li>
<li>Keep <strong>Appointment Booking</strong> enabled. In your prompt, instruct the agent to confirm the contact’s time zone before showing any times.</li>
<li>Run a test conversation using <strong>Test your agent</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li><strong>Fewer missed appointments:</strong> Contacts book in their own local time.</li>
<li><strong>Less manual cleanup:</strong> The time zone can be captured during the chat and stored on the contact.</li>
<li><strong>Consistent rescheduling:</strong> Later bookings and reschedules can use the saved time zone.</li>
</ul>
<h2>Availability</h2>
<p>Advanced Time Zone Support is available in Labs under <strong>Settings → Labs → Conversations AI | Advanced Time Zone Support</strong>.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-27T08:20:16.000Z'),
('wp-1599', 'Conversation AI updates: preview rich elements, test outbound messages, and use the new Deploy tab', 'You can now test your agent in a way that closely matches what customers will see on each channel. You can also safely test outbound opening messages, and the Deploy tab has been reorganized so setup options are easier to find. What’s new Channel-accurate previews for rich elemen...', '<p>You can now test your agent in a way that closely matches what customers will see on each channel. You can also safely test outbound opening messages, and the Deploy tab has been reorganized so setup options are easier to find.</p>
<h2>What’s new</h2>
<h3>Channel-accurate previews for rich elements</h3>
<p>When you choose a channel under <strong>Preview as</strong>, the test chat reflects how that channel displays messages. This helps you verify the experience before turning an agent on for real conversations.</p>
<ul>
<li>Live chat: buttons</li>
<li>Facebook and Instagram: quick replies</li>
<li>WhatsApp: reply buttons and lists</li>
<li>SMS: plain text</li>
<li>Files sent by the agent appear in the test chat</li>
</ul>
<h3>Test outbound messages before going live</h3>
<p>To test the first message your agent sends to a new lead, set <strong>Starts with</strong> to <strong>Outbound</strong> and open the outbound test setup. You can select what triggered the outreach, choose a test contact to populate fields, and optionally set test-only values. The selected test contact will not receive any messages.</p>
<h3>Deploy tab redesigned</h3>
<p>The Deploy tab is now organized so inbound channels, outbound activation, triggers, schedules, and agent details can be managed in one place.</p>
<h2>How to use</h2>
<ol>
<li>Go to <strong>AI Agents → Conversation AI</strong> and open your agent.</li>
<li>In the Build tab, open <strong>Test your agent</strong>.</li>
<li>Use <strong>Preview as</strong> to choose a channel and run a test conversation.</li>
<li>For outbound testing, set <strong>Starts with</strong> to <strong>Outbound</strong>, complete the setup, and run the test.</li>
<li>When ready, open the <strong>Deploy</strong> tab to turn it on.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Confirm the customer experience across channels before launch.</li>
<li>Find configuration issues earlier, before real leads see them.</li>
<li>Test outbound behavior without messaging real contacts.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Test messages are not sent to your contacts and do not change your agent settings.</li>
<li><strong>Preview as</strong> is available when rich element support is enabled under Response Behavior, and elements only appear if they are allowed in agent settings.</li>
<li>Outbound testing requires outbound agent support enabled in Labs and an outbound opening message configured.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T08:20:12.000Z'),
('wp-1598', 'Contact Info now supports radio, checkbox, dropdown, and phone fields', 'The Contact Info action lets a Conversation AI agent save what a customer says into the contact record. Previously it supported only text, number, date, and time fields. It now also supports option-based fields, so customers can answer in their own words and the agent will save t...', '<p>The Contact Info action lets a Conversation AI agent save what a customer says into the contact record. Previously it supported only text, number, date, and time fields.</p>
<p>It now also supports option-based fields, so customers can answer in their own words and the agent will save the matching option to the contact record.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Custom fields:</strong> Radio, Checkbox, Dropdown (single), Dropdown (multiple), and Phone</li>
<li><strong>Standard fields:</strong> Contact Source and Contact Type</li>
</ul>
<h2>Key capabilities</h2>
<ul>
<li><strong>Matches answers to the available options:</strong> The agent maps a customer’s reply to the closest field option. For example, “Business class” can be saved as <strong>Business</strong>.</li>
<li><strong>Supports multiple selections:</strong> Checkbox fields and multi-select dropdowns can save more than one option.</li>
<li><strong>Saves only valid values:</strong> If a reply doesn’t match any available option, it is not saved. Fields that allow custom options can still accept new values.</li>
<li><strong>Makes supported values visible:</strong> When you select an option field, you can review the choices under <strong>Values the Conversation AI can update</strong>.</li>
<li><strong>Stays in sync with your settings:</strong> If you change a field’s options in <strong>Custom Fields</strong>, the agent uses the updated list on the next message.</li>
<li><strong>Keeps an audit trail:</strong> A <strong>Contact Field Updated</strong> event appears in the conversation, including the field and saved value.</li>
</ul>
<h2>Where it works</h2>
<ul>
<li>Prompt-based Conversation AI agents in <strong>Auto-Pilot</strong> mode, in every sub-account</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Open your agent and go to <strong>Actions → Contact Info</strong>.</li>
<li>Choose a radio, checkbox, or dropdown field.</li>
<li>Review the options listed under <strong>Values the Conversation AI can update</strong>.</li>
<li>Make sure your prompt asks the question so the contact can answer.</li>
<li>Save and test the agent.</li>
</ol>
<h2>Availability</h2>
<p>Available now in every sub-account for prompt-based Conversation AI agents in Auto-Pilot mode.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T08:20:09.000Z'),
('wp-1597', 'Build with AI: Create a Conversation AI agent by describing what you need', 'Build with AI helps you create a Conversation AI agent in Leadli by describing what you want the agent to do. Leadli builds the core setup for you in about a minute, and you can refine it by chatting and testing it in the same place. What you can do with Build with AI Describe yo...', '<p>Build with AI helps you create a Conversation AI agent in Leadli by describing what you want the agent to do. Leadli builds the core setup for you in about a minute, and you can refine it by chatting and testing it in the same place.</p>
<h2>What you can do with Build with AI</h2>
<ul>
<li><strong>Describe your agent in plain language:</strong> Start from a template or write a short description. Include your business, the goal, and when the agent should hand off to a person.</li>
<li><strong>Answer a few key questions:</strong> Build with AI asks only for details it can’t reliably infer, such as who should receive specific hand-offs.</li>
<li><strong>Get a complete starting setup:</strong> Triggers, channels, booking and hand-off actions, and your knowledge base are added for you. It also drafts the agent instructions and the opening message.</li>
<li><strong>Make changes by chatting:</strong> Ask for adjustments (like working hours or a reply delay), and the agent configuration updates.</li>
<li><strong>Manage setup from one place:</strong> Add triggers, actions, hand-offs, and working hours without switching screens.</li>
<li><strong>Adjust tone and goals easily:</strong> If you ask for a different tone or objective, Build with AI rewrites the instructions for you.</li>
<li><strong>Enable richer responses when needed:</strong> Turn on options like quick-reply buttons and file attachments.</li>
<li><strong>Test in the builder:</strong> Use <strong>Test agent</strong> to try conversations without leaving the builder.</li>
<li><strong>Switch to manual editing anytime:</strong> Everything Build with AI creates remains editable in the manual editor.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>Go to <strong>AI Agents → Conversation AI</strong> and click <strong>Create Agent</strong>.</li>
<li>Choose <strong>Create with AI</strong>, then click <strong>Start with AI</strong>.</li>
<li>Describe your agent in plain words, or start from a template.</li>
<li>Answer the questions Build with AI asks.</li>
<li>Review the agent and request any changes in the chat.</li>
<li>Click <strong>Test agent</strong> to try it, then turn the agent on when you’re ready.</li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>The agent starts turned off:</strong> It won’t reply until you turn it on, so you can review and test first.</li>
<li><strong>Outbound needs activation:</strong> If you configure outbound triggers, enable outbound before the first outbound message can be sent.</li>
<li><strong>Test messages are not sent to your contacts.</strong></li>
</ul>
<h2>Availability</h2>
<p>Build with AI is available in Labs. Turn it on under <strong>Settings → Labs</strong>.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T08:19:56.000Z'),
('wp-1596', 'WhatsApp flows in your customer’s language', 'Appointment booking flows now support 13 languages. Choose a language when you create the flow, and the booking experience is shown in that language, including the timezone picker, date and time selectors, and the confirmation button. Form flows already work in any language you w...', '<p>Appointment booking flows now support 13 languages. Choose a language when you create the flow, and the booking experience is shown in that language, including the timezone picker, date and time selectors, and the confirmation button. Form flows already work in any language you write them in.</p>
<h2>What’s new</h2>
<h3>13 languages for appointment booking</h3>
<ul>
<li><strong>Choose a language during setup:</strong> Set the language on the flow and the full booking experience follows.</li>
<li><strong>Regional variants where needed:</strong> French (France and Canada) and Portuguese (Brazil and Portugal) are available so wording matches the market.</li>
<li><strong>All booking steps translate:</strong> Timezone picker, date and time selection, field labels, helper text, and the confirm button.</li>
</ul>
<p><strong>Supported languages:</strong> English, German, Spanish, French (France and Canada), Italian, Dutch, Norwegian, Portuguese (Brazil and Portugal), Danish, Finnish, and Swedish.</p>
<h3>Form flows in any language</h3>
<ul>
<li><strong>Write it and send it:</strong> A form flow displays in whatever language you write the questions in.</li>
<li><strong>Build per market if needed:</strong> Create separate versions for different audiences and send the one that fits.</li>
</ul>
<h3>Preview before you publish</h3>
<ul>
<li><strong>Live preview:</strong> Preview shows the flow in the language you selected.</li>
<li><strong>Easy to review:</strong> Language is visible in your flows list so you can confirm coverage.</li>
</ul>
<h2>Where this helps</h2>
<ul>
<li><strong>Latin America:</strong> Spanish and Portuguese options help customers book in the language they use most.</li>
<li><strong>Europe:</strong> German, French, Italian, Dutch, and Nordic languages help reduce friction when booking.</li>
<li><strong>Mixed audiences:</strong> Use different language versions of the same flow and send the right one for each contact.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → Communications → WhatsApp → Flows</strong>.</li>
<li>Click <strong>Create Flow</strong> and choose <strong>Appointment booking</strong>.</li>
<li>In <strong>Flow details</strong>, select your calendar and choose the <strong>Language</strong>.</li>
<li>Use the preview to confirm the wording.</li>
<li>Continue to the WhatsApp template step and publish.</li>
</ol>
<p>For a form flow, write your form in the language you want and send it as a flow. Customers will see the form in the same language it is written in.</p>
<h2>Why this matters</h2>
<p>WhatsApp is a primary messaging channel across Latin America and much of Europe. When booking is presented in the customer’s language, it can reduce confusion and increase completed bookings.</p>
<p><strong>Open Settings → Communications → WhatsApp → Flows to build your next booking flow in your customer’s language.</strong></p>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T16:31:49.000Z'),
('wp-1595', 'WhatsApp call recording and transcripts', 'Leadli can now record WhatsApp calls and generate transcripts automatically. The recording and transcript are saved in the same conversation thread as your messages, so call details are easy to review later. Whats included Call recording stored in the conversation: Completed call...', '<p>Leadli can now record WhatsApp calls and generate transcripts automatically. The recording and transcript are saved in the same conversation thread as your messages, so call details are easy to review later.</p>
<h2>Whats included</h2>
<ul>
<li><strong>Call recording stored in the conversation:</strong> Completed calls appear in Conversations as a playable recording next to the related messages.</li>
<li><strong>Transcripts for faster review:</strong> A transcript is generated alongside the audio so you can scan what was said without listening to the full call.</li>
<li><strong>Searchable call history:</strong> Transcripts make it easier to find specific details later.</li>
<li><strong>Language detection:</strong> Transcripts are generated in the language spoken on the call.</li>
</ul>
<h2>Consent and caller notification</h2>
<ul>
<li><strong>Caller announcement:</strong> Callers hear a short message explaining the call is being recorded and why.</li>
<li><strong>Choose the announcement language:</strong> Select the language used for the announcement so it matches your audience.</li>
<li><strong>Customize the reason:</strong> Set the wording the caller hears so it aligns with how your business operates.</li>
</ul>
<h2>Where this is useful</h2>
<ul>
<li><strong>Agencies:</strong> Keeps a clear record of client calls for smoother handoffs and fewer misunderstandings.</li>
<li><strong>Real estate:</strong> Captures requirements and property details discussed on calls.</li>
<li><strong>Home services and trades:</strong> Helps document quotes and job details shared over the phone.</li>
<li><strong>Clinics and appointment-based businesses:</strong> Creates a reliable record for scheduling changes and instructions.</li>
<li><strong>Recruitment:</strong> Makes it easier to share screening call details with hiring teams.</li>
<li><strong>Coaching and training teams:</strong> Supports quality review and training using real call examples.</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Settings -&gt; Communications -&gt; WhatsApp</strong>.</li>
<li>Open the <strong>Calling</strong> tab.</li>
<li>Select the number you want to configure.</li>
<li>Under <strong>Recording and transcription</strong>, enable <strong>Record calls</strong>, <strong>Transcribe calls</strong>, or both.</li>
<li>Set the caller announcement reason and language.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Calls often include important commitments such as pricing, scope, and next steps. Recording and transcription make those details reviewable later, reduce disputes, and make handoffs easier when someone else needs to pick up the conversation.</p>
<p><em>Note:</em> Recording and transcription are currently free to use, but may become chargeable in the future by Meta.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T15:34:03.000Z'),
('wp-1594', 'WhatsApp call recording and transcripts', 'Leadli can now record WhatsApp calls and generate transcripts automatically. The recording and transcript are saved in the same conversation thread as your messages, so call details are easy to review later. What’s included Call recording stored in the conversation: Completed cal...', '<p>Leadli can now record WhatsApp calls and generate transcripts automatically. The recording and transcript are saved in the same conversation thread as your messages, so call details are easy to review later.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Call recording stored in the conversation:</strong> Completed calls appear in Conversations as a playable recording next to the related messages.</li>
<li><strong>Transcripts for faster review:</strong> A transcript is generated alongside the audio so you can scan what was said without listening to the full call.</li>
<li><strong>Searchable call history:</strong> Transcripts make it easier to find specific details later.</li>
<li><strong>Language detection:</strong> Transcripts are generated in the language spoken on the call.</li>
</ul>
<h2>Consent and caller notification</h2>
<ul>
<li><strong>Caller announcement:</strong> Callers hear a short message explaining the call is being recorded and why.</li>
<li><strong>Choose the announcement language:</strong> Select the language used for the announcement so it matches your audience.</li>
<li><strong>Customize the reason:</strong> Set the wording the caller hears so it aligns with how your business operates.</li>
</ul>
<h2>Where this is useful</h2>
<ul>
<li><strong>Agencies:</strong> Keeps a clear record of client calls for smoother handoffs and fewer misunderstandings.</li>
<li><strong>Real estate:</strong> Captures requirements and property details discussed on calls.</li>
<li><strong>Home services and trades:</strong> Helps document quotes and job details shared over the phone.</li>
<li><strong>Clinics and appointment-based businesses:</strong> Creates a reliable record for scheduling changes and instructions.</li>
<li><strong>Recruitment:</strong> Makes it easier to share screening call details with hiring teams.</li>
<li><strong>Coaching and training teams:</strong> Supports quality review and training using real call examples.</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Settings → Communications → WhatsApp</strong>.</li>
<li>Open the <strong>Calling</strong> tab.</li>
<li>Select the number you want to configure.</li>
<li>Under <strong>Recording and transcription</strong>, enable <strong>Record calls</strong>, <strong>Transcribe calls</strong>, or both.</li>
<li>Set the caller announcement reason and language.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Calls often include important commitments such as pricing, scope, and next steps. Recording and transcription make those details reviewable later, reduce disputes, and make handoffs easier when someone else needs to pick up the conversation.</p>
<p><em>Note:</em> Recording and transcription are currently free to use, but may become chargeable in the future by Meta.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T15:33:50.000Z'),
('wp-1593', 'WhatsApp Template Library is now available in Leadli', 'A new WhatsApp template library is now available in Leadli. It includes 52 pre-built templates for common business messages. You can choose a template, customize it, and submit it for approval. What’s included 52 ready-to-use templates: Appointment reminders, follow-ups, promotio...', '<p>A new WhatsApp template library is now available in Leadli. It includes 52 pre-built templates for common business messages. You can choose a template, customize it, and submit it for approval.</p>
<h2>What’s included</h2>
<ul>
<li><strong>52 ready-to-use templates:</strong> Appointment reminders, follow-ups, promotions, and service updates across marketing and utility message types.</li>
<li><strong>Industry-focused wording:</strong> Templates written for common industries so you can adapt instead of starting from scratch.</li>
<li><strong>Multiple languages supported:</strong> English (US), English (UK), Spanish, Portuguese (BR), French, and German.</li>
</ul>
<h2>Find the right template quickly</h2>
<ul>
<li><strong>Browse, search, and filter:</strong> Filter by category, tag, or language, search by keyword, and sort by popularity.</li>
<li><strong>Favorites:</strong> Save frequently used templates and access them alongside your own.</li>
</ul>
<h2>Edit and submit</h2>
<ul>
<li><strong>Full editing:</strong> Update the name, language, header, body, and variables.</li>
<li><strong>Preview before submitting:</strong> Use the live preview to see how the message will appear on a phone.</li>
<li><strong>Structured for WhatsApp review:</strong> Templates follow WhatsApp’s expected format to help with approvals.</li>
</ul>
<h2>Where this is useful</h2>
<ul>
<li><strong>Agencies onboarding new clients:</strong> Start with a complete set of templates on day one.</li>
<li><strong>Multi-language outreach:</strong> Communicate with customers in supported languages using templates written for each language.</li>
<li><strong>Teams new to WhatsApp templates:</strong> Learn faster by starting from proven examples.</li>
<li><strong>Businesses using proven messaging:</strong> Deploy reminders and follow-ups that are already common best practices.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → Communications → WhatsApp → Templates</strong>.</li>
<li>Click <strong>Create template</strong> and choose <strong>Pre-built templates</strong>.</li>
<li>Browse, search, or filter by category and language to find a template.</li>
<li>Select a template and edit the name, language, header, body, and variables.</li>
<li>Review the preview, then click <strong>Submit for approval</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>WhatsApp is where many customers already communicate. A good template helps turn that into conversations, bookings, and sales. This library provides a practical starting point with proven message types, industry-appropriate wording, and ready-to-edit language options.</p>
<h2>Resources</h2>
<ul>
<li><a href="https://help.leadli.com/support/solutions/articles/155000009127" rel="ugc nofollow noopener noreferrer" target="_blank">WhatsApp template library (support article)</a></li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T14:32:26.000Z'),
('wp-1592', 'Updated site menu and sites list', 'WordPress sites now open to a single page with a left-side menu. The sites list shows key metrics for each site in one table. You can find tools faster, switch between sites more quickly, and review site health at a glance. What’s new 1. One menu for everything Tools are grouped ...', '<p>WordPress sites now open to a single page with a left-side menu. The sites list shows key metrics for each site in one table.</p>
<p>You can find tools faster, switch between sites more quickly, and review site health at a glance.</p>
<p><strong>What’s new</strong></p>
<p><strong>1. One menu for everything</strong></p>
<p>Tools are grouped by purpose:</p>
<ul>
<li>Info: live access, staging, and domains</li>
<li>Analytics: Site, Visitor, and Performance</li>
<li>WordPress management: Plugins, Themes, Core, Pages, and Users</li>
<li>Backups</li>
<li>Antivirus: Shield, Hardening, Troubleshooter, and Activity Logs</li>
<li>Advanced settings: FTP, File manager, Cache management, Search and replace, WordPress debugging, Server settings, and Delete site</li>
</ul>
<p><strong>2. Site details always in view</strong></p>
<ul>
<li>Site name, address, Site ID (with copy), and region are shown at the top of the menu</li>
<li>Open WordPress and Visit site shortcuts are available at the bottom</li>
</ul>
<p><strong>3. Switch sites without going back</strong></p>
<ul>
<li>Use the arrows next to the site name</li>
<li>Search and jump to another site</li>
</ul>
<p><strong>4. Troubleshooter and Activity Logs moved</strong></p>
<ul>
<li>Both are now under the Antivirus group and work as before</li>
</ul>
<p><strong>5. A full sites table</strong></p>
<ul>
<li>Status, Threats, Updates, Uptime, Backups, Performance, and Storage for each site</li>
<li>One clear action per site, such as Manage site or Finish setup</li>
<li>Search sites, switch between List and Cards, and page through large lists</li>
</ul>
<p><strong>How to use this</strong></p>
<ol>
<li>Go to Sites → WordPress</li>
<li>Find your site and click Manage site</li>
<li>Use the left menu to open any tool for that site</li>
<li>Use the arrows next to the site name to switch to another site</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Find site tools without digging through multiple screens</li>
<li>Manage multiple client sites more efficiently</li>
<li>See which sites need attention directly from the list</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Only the navigation locations changed. Sites and settings stay the same.</li>
<li>Troubleshooter and Activity Logs are now under Antivirus.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T14:22:23.000Z'),
('wp-1591', 'Antivirus is now available for every WordPress site', 'Every WordPress site now includes Antivirus. It helps you find harmful files and common security gaps, explains them in plain language, and lets you fix them with a click. You can scan at any time, review what needs attention, and apply fixes safely. What''s new 1) Shield: scan, r...', '<p>Every WordPress site now includes Antivirus. It helps you find harmful files and common security gaps, explains them in plain language, and lets you fix them with a click.</p>
<p>You can scan at any time, review what needs attention, and apply fixes safely.</p>
<h3>What&#8217;s new</h3>
<h4>1) Shield: scan, review, and fix</h4>
<p>Shield shows how many items need attention and when the site was last scanned.</p>
<ul>
<li><strong>Scan now</strong> runs a fresh scan at any time</li>
<li><strong>Action required</strong> lists each issue and why it matters</li>
<li>Use <strong>Apply fix</strong>, or <strong>Apply all fixes</strong> to resolve everything at once</li>
<li>You can snooze an item until the next scan, for 7 days, or for 30 days</li>
<li><strong>Resolved</strong> keeps the last 30 days of fixes</li>
</ul>
<h4>2) Checks included in each scan</h4>
<p>Antivirus runs ten checks and shows a clear result for each one (Passed or Action required). These checks include:</p>
<ul>
<li>Core and plugin files compared against their official versions</li>
<li>Unused plugins and protections that are turned off</li>
<li>HTTPS status, WordPress version, and supported server software</li>
<li>Hidden error messages and search engine visibility settings</li>
</ul>
<h4>3) Safer fixes with backups</h4>
<p>Before applying a fix, you’ll be asked to confirm. You can also see when the last backup was taken and choose to back up first.</p>
<h4>4) Hardening</h4>
<p>Antivirus includes ten one-click protections. Each one includes a short explanation, and you can turn them all on together if you prefer.</p>
<ul>
<li>Block application passwords and user enumeration</li>
<li>Hide the WordPress version and mask login errors</li>
<li>Disable the file editor and XML-RPC</li>
<li>Add security headers and rate-limit login attempts</li>
<li>Harden .htaccess</li>
</ul>
<h4>5) Threat visibility across all sites</h4>
<ul>
<li>A Threats column is available on the WordPress sites list</li>
<li>Hover the count to see what was found, then select <strong>Check threats</strong></li>
<li>Scan all sites in one click</li>
</ul>
<h3>How to use this feature</h3>
<ol>
<li>Go to <strong>Sites → WordPress</strong></li>
<li>Open a site</li>
<li>Open <strong>Antivirus → Shield</strong></li>
<li>Review <strong>Action required</strong>, then click <strong>Apply fix</strong> or <strong>Apply all fixes</strong></li>
<li>Open <strong>Antivirus → Hardening</strong> and enable the protections you want</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Find and fix site issues before visitors notice them</li>
<li>Reduce the risk of break-ins with straightforward protections</li>
<li>Apply fixes with more confidence by taking a backup first</li>
<li>Manage security for every client site from one place</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Applying a fix changes the live site. Take a backup first if you may need to roll back.</li>
<li>Leave <strong>Disable XML-RPC</strong> off if you use the WordPress phone app.</li>
<li>Antivirus helps close common security gaps, but it does not replace updates and regular backups.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T14:10:59.000Z'),
('wp-1590', 'Collect form submissions inside WhatsApp with Leadli Flows', 'Leads often message you on WhatsApp. Instead of sending them to a separate link, you can now open a form inside the WhatsApp conversation so they can answer questions without leaving the chat. Sending someone out of a WhatsApp conversation can lower completion rates. Keeping the ...', '<p>Leads often message you on WhatsApp. Instead of sending them to a separate link, you can now open a form inside the WhatsApp conversation so they can answer questions without leaving the chat.</p>
<p>Sending someone out of a WhatsApp conversation can lower completion rates. Keeping the form in the chat removes that extra step.</p>
<h2>What’s new</h2>
<h3>Forms inside the conversation</h3>
<ul>
<li><strong>No redirect, no browser:</strong> Send a form as a WhatsApp Flow so the customer fills it out in the chat window they are already using.</li>
<li><strong>Use existing forms:</strong> Select a form you already created. If you need a new form, you can create it while setting up the Flow.</li>
</ul>
<h3>Preview while you build</h3>
<ul>
<li><strong>Live preview:</strong> See how fields will appear in WhatsApp while you configure the Flow.</li>
<li><strong>Unsupported field types are excluded:</strong> If a field type is not supported by WhatsApp Flows, it is removed before publishing so you can catch issues early.</li>
</ul>
<h3>Responses are saved automatically</h3>
<ul>
<li><strong>Saved in Forms submissions:</strong> Each response is stored and mapped to the right contact automatically, so there is no manual copy/paste.</li>
<li><strong>Published flows stay stable:</strong> After a Flow is published, later edits to the underlying form do not change what the published Flow collects.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Flows</strong> and select <strong>Create Flow</strong>.</li>
<li>Choose <strong>Form submission</strong>.</li>
<li>Select the form you want to send and review the preview.</li>
<li>Configure the WhatsApp template, including the button customers tap to open the form.</li>
<li>Publish the Flow, then send it from Conversations, a workflow, or a bulk action.</li>
</ol>
<h2>Why this matters</h2>
<p>The gap between an interested lead and a qualified lead is often a form that lives outside the conversation. When you ask someone to switch apps, open a browser, and complete a form elsewhere, it creates more chances for them to drop off.</p>
<ul>
<li><strong>Fewer drop-offs:</strong> Questions and answers stay in the same WhatsApp thread.</li>
<li><strong>Better first conversations:</strong> Details like budget, goals, and timing can be collected up front and saved to the contact.</li>
<li><strong>Less manual work:</strong> Responses map to the contact automatically, helping keep your data consistent.</li>
<li><strong>Useful beyond lead intake:</strong> The same approach works for onboarding, feedback, and registrations.</li>
</ul>
<p>In Leadli, you can use WhatsApp Flows to turn a high-traffic form into an in-chat experience.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-26T11:32:15.000Z'),
('wp-1589', 'WhatsApp carousel templates are now available in Leadli', 'Leadli now supports WhatsApp carousel templates. You can include between 2 and 10 cards in a single WhatsApp message so people can swipe through multiple products, offers, or services in one conversation. What’s new Up to ten cards in one message Scrollable cards: Write the messa...', '<p>Leadli now supports WhatsApp carousel templates. You can include between 2 and 10 cards in a single WhatsApp message so people can swipe through multiple products, offers, or services in one conversation.</p>
<h2>What’s new</h2>
<h3>Up to ten cards in one message</h3>
<ul>
<li><strong>Scrollable cards:</strong> Write the message once, then add 2–10 cards. Each card can include an image or video header, optional text, and up to two buttons.</li>
<li><strong>One message charge:</strong> A multi-card carousel is sent as a single WhatsApp marketing message (instead of separate messages for each item), which helps manage messaging limits and cost.</li>
</ul>
<h3>Buttons with clearer intent</h3>
<ul>
<li><strong>Two buttons per card:</strong> Use quick reply, call, and website buttons on each card.</li>
<li><strong>Quick replies stay in the chat:</strong> When someone taps a quick reply, the response stays in the thread and can trigger a webhook you route into a workflow for follow-up.</li>
<li><strong>Per-card links:</strong> Website buttons can be unique per card, so each item can link to its own page.</li>
</ul>
<h3>Image or video per card</h3>
<ul>
<li><strong>Show the item clearly:</strong> Each card can use an image or video header that is cropped to fit the customer’s device.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Templates</strong> and click <strong>Create template</strong>.</li>
<li>Set <strong>Category</strong> to <strong>Marketing</strong> and choose the <strong>Carousel</strong> type.</li>
<li>Write the message body, then add your cards with images or video, text, and buttons.</li>
<li>Submit for Meta approval, then send from Conversations, a workflow, or a bulk action.</li>
</ol>
<p><strong>Planning notes:</strong></p>
<ul>
<li><strong>Card count is fixed after approval:</strong> If a template is approved with five cards, it will always send five. Create another template if you need a different number of cards.</li>
<li><strong>Cards must match:</strong> If one card has body text, they all need body text. If one has two buttons, they all need two buttons.</li>
</ul>
<h2>Why this matters</h2>
<p>Carousels let you present multiple options in one WhatsApp message. This reduces back-and-forth, keeps message volume lower, and makes it easier to see what someone is interested in based on the card they tap.</p>
<ul>
<li>Lower cost per set of offers shown.</li>
<li>Less pressure on per-customer messaging limits.</li>
<li>Clearer intent based on the specific card clicked.</li>
<li>Less guesswork about which offer to lead with.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T11:32:12.000Z'),
('wp-1588', 'Add comments to your blog posts', 'You can now enable comments on your blog posts. Readers can leave comments, reply to each other, and react to discussions directly on the post. You can review and respond to comments from a new Comments tab in Blogs. What’s included Comments and replies available on every post wh...', '<p>You can now enable comments on your blog posts. Readers can leave comments, reply to each other, and react to discussions directly on the post. You can review and respond to comments from a new Comments tab in Blogs.</p>
<h2>What’s included</h2>
<ul>
<li>Comments and replies available on every post when the Comments element is added to your blog post page</li>
<li>Simple reader sign-in using email and a one-time code (no password required)</li>
<li>A moderator badge on replies from your team</li>
<li>A central Comments tab to view, search, filter, reply to, approve, or delete comments across your blog site</li>
<li>A guided review flow for pending comments, with the full conversation visible</li>
<li>Per-site settings including approval requirements and email notifications, with an option to apply settings across blog sites</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to Sites → Blogs and open your blog site.</li>
<li>Open the blog post page in the builder.</li>
<li>Add the Comments element and style it to match your site.</li>
<li>Save and publish.</li>
<li>Manage comments and settings from the Comments tab.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Turn one-time readers into an engaged community</li>
<li>Answer questions where they are asked, in a public thread</li>
<li>Keep control over what appears on your site through moderation</li>
<li>Keep posts active as discussions grow</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Comments are enabled for an entire blog site, not per post. Removing the Comments element removes comments from every post on that site.</li>
<li>Anyone can read comments; readers must sign in to comment or reply.</li>
<li>Comments do not yet appear in Conversations, and commenters are not added to Contacts.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-26T11:21:21.000Z'),
('wp-1587', 'Social comments are now available in the Conversations inbox', 'You can now manage comments from your social posts directly in the Conversations team inbox. This helps your team reply faster, keep context in one place, and turn social engagement into leads and opportunities. What’s included 1. Social comments in the team inbox View comments i...', '<p>You can now manage comments from your social posts directly in the Conversations team inbox. This helps your team reply faster, keep context in one place, and turn social engagement into leads and opportunities.</p>
<h2>What’s included</h2>
<h3>1. Social comments in the team inbox</h3>
<ul>
<li>View comments inside Conversations with key details like the commenter name/handle, a comment preview, the original post, the platform, and the timestamp.</li>
<li>Use the Social Comments filter to find and manage comment conversations quickly.</li>
</ul>
<h3>2. Post context in every conversation</h3>
<ul>
<li>Each comment conversation includes the original post so your team has context before responding.</li>
<li>See the post caption, the connected social account, the platform, and a link to view the post.</li>
</ul>
<h3>3. Automatic contact creation</h3>
<ul>
<li>New commenters are automatically created as contacts.</li>
<li>Repeat commenters are matched to existing contacts to reduce duplicates.</li>
</ul>
<h3>4. Public replies and private DMs</h3>
<ul>
<li>Reply publicly under the original comment.</li>
<li>Send a DM to continue the conversation privately in a standard DM thread.</li>
</ul>
<h3>5. Prioritize high-intent comments</h3>
<ul>
<li>Use buying-intent keywords (for example: “price,” “interested,” “how much”) to focus on comments that are more likely to convert.</li>
<li>Prioritize comments that contain questions to identify purchase intent faster.</li>
</ul>
<h3>6. Agency and sub-account controls</h3>
<ul>
<li>Agency admins can control comment sync for eligible sub-accounts under <strong>Agency Settings → Social Comments</strong>.</li>
<li>Each sub-account can choose which connected social platforms sync comments under <strong>Marketing → Social Planner → Settings → Comments</strong>.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Turns social engagement into leads and opportunities.</li>
<li>Keeps social conversations alongside SMS, email, and DMs in one inbox.</li>
<li>Reduces context switching between Social Planner and Conversations.</li>
</ul>
<h2>Supported platforms</h2>
<p><strong>Available at launch:</strong> Facebook, Instagram, TikTok</p>
<p><strong>Coming soon:</strong> LinkedIn, YouTube, Pinterest, Threads, Bluesky, Community</p>
<h2>Notes</h2>
<ul>
<li>Only comments on posts published through Social Planner are synced to Conversations.</li>
<li>Enabling comment sync automatically creates contacts for new commenters.</li>
<li>Disabling comment sync stops new comments from syncing but does not delete existing contacts, conversations, or workflows.</li>
<li>Existing comment workflow triggers continue to work as before.</li>
<li>Comment management in Social Planner continues to work as usual.</li>
<li>If a social account connection expires, reconnect it in Social Planner Settings to resume syncing.</li>
<li>Instagram DM and Instagram interactive messenger workflow actions aren’t supported for Instagram accounts connected through Facebook in Social Planner.</li>
<li>This update is part of Leadli.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T03:31:24.000Z'),
('wp-1586', 'Invite clients to connect their social accounts in Leadli Social Planner', 'Social account onboarding is now faster, simpler, and more secure. With Social Connect Invite in Leadli, you can send clients a secure invite link so they can connect their own social accounts without sharing passwords and without giving them access to your sub-account. After the...', '<p>Social account onboarding is now faster, simpler, and more secure.</p>
<p>With Social Connect Invite in Leadli, you can send clients a secure invite link so they can connect their own social accounts without sharing passwords and without giving them access to your sub-account.</p>
<p>After they connect, the social accounts are automatically added to the correct sub-account to make onboarding smoother.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Create secure invite links:</strong> Generate a Social Connect invite with an auto-generated or custom password.</li>
<li><strong>Share invites your way:</strong> Send the invite from Social Planner, or copy and share the link and password using your preferred channel.</li>
<li><strong>Let clients connect their own accounts:</strong> Clients connect through an external page without needing access to your Leadli sub-account.</li>
</ul>
<p><strong>Manage invites</strong></p>
<p>You can view and manage Social Connect invites from <strong>Settings → Manage Links → Social Connect Link</strong>. From there, you can extend validity, regenerate an invite, or revoke an invite.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Reduces back-and-forth during account connection</li>
<li>Keeps credentials private</li>
<li>Avoids giving clients unnecessary sub-account access</li>
<li>Lets you manage all connection invites in one place</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to <strong>Settings → Labs</strong> and enable <strong>Social Connect Invite</strong>.</li>
<li>Navigate to <strong>Marketing → Social Planner → Settings → Social Accounts</strong>.</li>
<li>Select <strong>Social Connect Invite</strong> and generate an invite link.</li>
<li>Share the invite link and password with your client.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Invite links expire 30 days after creation.</li>
<li>Only share the invite link and password with trusted clients.</li>
<li>Revoking an invite immediately disables access.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-26T03:31:21.000Z'),
('wp-1585', 'Reviews AI Agents now have more control and customization', 'What''s new Leadli has updated Reviews AI Agents with controls that help you keep replies consistent, on-brand, and safe. Key capabilities Brand voice controls Choose whether replies use "we" or "I", set the business name, tone traits, length limits, and sign-off preferences. Qual...', '<h2>What&#8217;s new</h2>
<p>Leadli has updated Reviews AI Agents with controls that help you keep replies consistent, on-brand, and safe.</p>
<h2>Key capabilities</h2>
<ol>
<li><strong>Brand voice controls</strong><br />Choose whether replies use &#8220;we&#8221; or &#8220;I&#8221;, set the business name, tone traits, length limits, and sign-off preferences.</li>
<li><strong>Quality guardrails</strong><br />Enable options to remember recent replies, reduce repeated openings, and avoid risky language (for example: refund promises, guarantees, admissions of fault, liability statements, or medical/financial advice).</li>
<li><strong>Hold sensitive reviews for human approval</strong><br />Flag higher-risk reviews so a team member can review them before anything is posted.</li>
<li><strong>Live response preview</strong><br />Preview example replies for positive, neutral, and negative reviews, and regenerate responses as you adjust settings.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Keeps AI replies aligned with your brand voice</li>
<li>Reduces repetitive or risky responses</li>
<li>Adds human oversight when needed</li>
<li>Makes it easier to test and tune agents before enabling them</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T03:31:13.000Z'),
('wp-1584', 'Social Intelligence is available in Leadli (limited beta)', 'Social Intelligence helps you understand what people are saying about your brand, track industry trends, and keep an eye on competitors from one place in Leadli. During the limited beta, selected accounts can: View an AI-generated overview of brand mentions, industry trends, and ...', '<p>Social Intelligence helps you understand what people are saying about your brand, track industry trends, and keep an eye on competitors from one place in Leadli.</p>
<p>During the limited beta, selected accounts can:</p>
<ul>
<li>View an AI-generated overview of brand mentions, industry trends, and competitor comparisons (up to 3 competitors).</li>
<li>Search social conversations by brand, keyword, hashtag, or topic and review volume, sentiment, and engagement patterns.</li>
<li>Save searches as topics and review 7, 15, or 30 days of history.</li>
<li>Create smart alerts when important metrics change, with daily or weekly email notifications.</li>
</ul>
<p>Where to find it:</p>
<ul>
<li>Go to Marketing → Social Planner → Social Intelligence.</li>
<li>Use Overview for a snapshot, Explore to search, and Topics to monitor saved searches.</li>
</ul>
<p>Beta notes:</p>
<ul>
<li>Available to selected users during the limited beta.</li>
<li>Each location has 100 searches for the full beta period.</li>
<li>You can actively monitor up to 50 topics per location (paused topics do not count).</li>
<li>Each topic can have up to 3 alerts.</li>
<li>Platform and metric availability may vary depending on the underlying social data source.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T03:31:13.000Z'),
('wp-1583', 'Conversations: More ways to filter your inbox', 'Overview This update adds six new filters in Conversations. These filters make it easier to sort your inbox and focus on the conversations that need attention. What’s new You can now filter conversations by: Channel Account (for example, a specific phone number, Facebook page, or...', '<h2>Overview</h2>
<p>This update adds six new filters in Conversations. These filters make it easier to sort your inbox and focus on the conversations that need attention.</p>
<h2>What’s new</h2>
<p>You can now filter conversations by:</p>
<ul>
<li><strong>Channel Account</strong> (for example, a specific phone number, Facebook page, or Instagram account)</li>
<li><strong>Last Call Status</strong> (for example, completed, no answer, voicemail)</li>
<li><strong>Contact Type</strong> (Leads, Customers, or custom contact types in your sub-account)</li>
<li><strong>Opportunity Pipeline</strong> (shows conversations tied to contacts with at least one opportunity in the selected pipeline)</li>
<li><strong>Opportunity Stage</strong> (stage options adjust based on the pipeline you choose)</li>
<li><strong>Opportunity Status</strong> (open, won, lost, abandoned)</li>
</ul>
<p>You can also combine these with existing filters using AND/OR conditions.</p>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Conversations</strong>.</li>
<li>Click the <strong>Filters</strong> icon at the top of the conversation list.</li>
<li>Choose a filter type and select one or more values.</li>
<li>Click <strong>Apply</strong>.</li>
<li>Add more filters if needed, or use <strong>Clear</strong> to reset.</li>
</ol>
<h2>Why it matters</h2>
<p>These filters bring more CRM context into your inbox, so you can quickly find missed calls, follow up on open deals, and prioritize customer support without manually scanning the full list.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T03:31:13.000Z'),
('wp-1582', 'Keyword search in Conversations', 'Overview You can now search for words and phrases across your Conversations inbox and within an individual thread. This makes it easier to find a specific message without scrolling through long conversations. What’s new Search across conversations: Find every conversation where a...', '<h2>Overview</h2>
<p>You can now search for words and phrases across your Conversations inbox and within an individual thread. This makes it easier to find a specific message without scrolling through long conversations.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Search across conversations:</strong> Find every conversation where a word or phrase appears. Results update as you type and include a short preview of the matching message. You can also use the same search box to look up a contact by name, email, or phone number.</li>
<li><strong>Search within a conversation:</strong> Search inside a single contact’s thread. Matches are highlighted, and you can move between results using the previous/next controls.</li>
</ul>
<h2>Filters</h2>
<p>You can narrow results by date range, channel (Email, SMS, Facebook, WhatsApp, Instagram), direction, owner, attachments, and followers.</p>
<h2>How to use</h2>
<ol>
<li>Open <strong>Conversations</strong>.</li>
<li>Select the search icon at the top of the conversation list.</li>
<li>Type a keyword, contact name, email, or phone number.</li>
<li>Select a result to open the conversation at the matching message.</li>
<li>Inside a conversation, use the search icon in the header to search within that thread and move between matches.</li>
<li>Use the filter icon to refine your results when needed.</li>
</ol>
<h2>Why it matters</h2>
<p>This helps teams quickly find prior context like pricing, promised dates, issues, or product mentions without relying on memory or manual scrolling.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-26T03:31:13.000Z'),
('wp-1581', 'Automate workflows based on Social Planner posts', 'You can now trigger workflows based on activity in Social Planner posts. This lets you automate follow-ups and internal actions when a post changes status or publishing outcomes occur. What’s new Trigger workflows based on post status Automate actions across the social publishing...', '<p>You can now trigger workflows based on activity in Social Planner posts. This lets you automate follow-ups and internal actions when a post changes status or publishing outcomes occur.</p>
<p><strong>What’s new</strong></p>
<p><strong>Trigger workflows based on post status</strong></p>
<p>Automate actions across the social publishing lifecycle using these statuses:</p>
<ul>
<li><strong>Approval Requested:</strong> Take action when a post is submitted for approval.</li>
<li><strong>Approved:</strong> Trigger actions when a post is approved.</li>
<li><strong>Approval Rejected:</strong> Notify your team when a post’s approval is rejected.</li>
<li><strong>Scheduled:</strong> Take action when a post is scheduled for publishing.</li>
<li><strong>Published:</strong> Trigger follow-ups when a post is successfully published.</li>
<li><strong>Failed:</strong> Alert your team when a post fails to publish so it can be reviewed and corrected.</li>
</ul>
<p><strong>Filter by category, platform, and post type</strong></p>
<p>Use filters to target the right posts:</p>
<ul>
<li><strong>Category:</strong> Run workflows for specific content categories (for example, promotions, announcements, or educational posts).</li>
<li><strong>Platform:</strong> Choose from Facebook, Instagram, Bluesky, Google Business Profile (GBP), LinkedIn, Pinterest, Threads, TikTok, and YouTube.</li>
<li><strong>Post Type:</strong> Apply rules to Carousels, Posts, Reels, Shorts, and Stories.</li>
</ul>
<p><strong>Target specific accounts and tags</strong></p>
<p>Make workflows more precise by filtering for connected Social Planner accounts and existing post tags. This is helpful when managing multiple brands or clients with different publishing requirements.</p>
<p><strong>How to use</strong></p>
<ul>
<li>Go to Automation → Workflows.</li>
<li>Create a new workflow or open an existing one.</li>
<li>Add the Social Planner Posts trigger.</li>
<li>Configure your filters (category, platform, post status, post type, social account, and tags).</li>
<li>Add the actions you want (for example, internal notifications or follow-up steps).</li>
<li>Save and publish the workflow.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Social publishing often requires approvals, monitoring, and quick response when posts fail. This trigger helps you:</p>
<ul>
<li>Reduce manual monitoring by automating actions around post statuses.</li>
<li>Resolve issues faster with alerts for failed posts.</li>
<li>Simplify approvals with automation when posts are submitted, approved, or rejected.</li>
<li>Keep stakeholders informed about publishing activity.</li>
<li>Scale consistent processes across platforms and accounts.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Only social accounts connected through Social Planner are supported.</li>
<li>Social accounts connected through Integrations are not supported yet; support is in progress.</li>
<li>Workflows trigger based on the filters you configure and the Social Planner post conditions that are met.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-25T03:31:26.000Z'),
('wp-1580', 'Attach forms when creating service or rental bookings in the app', 'Overview You can now attach a form to service and rental bookings you create in the app, not just bookings made from the booking page. When you create a booking from the appointment modal, you can open the form and complete it on the customer’s behalf so your intake information s...', '<h2>Overview</h2>
<p>You can now attach a form to service and rental bookings you create in the app, not just bookings made from the booking page. When you create a booking from the appointment modal, you can open the form and complete it on the customer’s behalf so your intake information stays consistent.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Attach a form in the appointment modal:</strong> Service and rental bookings now include a Booking form section. Select Attach form to open the form within the booking flow. This is optional, and you can still create bookings without a form.</li>
<li><strong>Form preselection:</strong> If you have a configured form, it will be preselected. You can switch to any available form from the dropdown.</li>
<li><strong>Prefilled contact details:</strong> First name, last name, email, and phone are prefilled based on the contact you select.</li>
<li><strong>Cleaner in-app form filling:</strong> CAPTCHA, product selling, and payment elements are not shown when completing a form from the appointment modal.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Create a service or rental booking from the in-app appointment modal and select the contact.</li>
<li>In the <strong>Booking form</strong> section, select <strong>Attach form</strong>.</li>
<li>Complete the form on the customer’s behalf and create the booking.</li>
<li>Open the appointment details at any time to view the submitted form.</li>
</ol>
<p><strong>Note:</strong> Forms can only be attached while creating the booking right now and can’t be added or edited later.</p>
<h2>Why this matters</h2>
<ul>
<li>Bookings created manually can capture the same intake details as online bookings.</li>
<li>Important information is collected up front and stored with the booking.</li>
<li>Prefilled contact details save time and help reduce mismatches.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-22T08:52:56.000Z'),
('wp-1579', 'Filter HubSpot records before importing into Leadli', 'Overview You can now choose exactly which HubSpot records are imported into Leadli. During the preview step, you can filter Contacts, Deals, Companies, and Tasks based on when they were created or last modified in HubSpot. This helps you import only the data you need. What’s incl...', '<h2>Overview</h2>
<p>You can now choose exactly which HubSpot records are imported into Leadli. During the preview step, you can filter Contacts, Deals, Companies, and Tasks based on when they were created or last modified in HubSpot. This helps you import only the data you need.</p>
<h2>What’s included</h2>
<ul>
<li>Filter each object (Contacts, Deals, Companies, Tasks) separately during preview before you import</li>
<li>Filter by HubSpot Created Date or HubSpot Last Modified Date</li>
<li>Use relative ranges (for example, last 6 months or this quarter) or specific dates (on, before, after, between)</li>
<li>Review the exact date range before applying a filter</li>
<li>Combine conditions using AND / OR</li>
<li>Apply the same filters to all selected objects</li>
<li>See record counts update immediately so you know what will be imported</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to Contacts, Companies, or Opportunities.</li>
<li>Select <strong>Import</strong> and choose <strong>Import from HubSpot</strong>.</li>
<li>Continue to the preview step.</li>
<li>Edit the filter settings for an object (for example, Contacts).</li>
<li>Choose a field, condition, and value. Add nested filters if you need AND/OR logic.</li>
<li>Apply the filters and review the updated record counts.</li>
<li>Confirm to start the import.</li>
</ol>
<h2>Benefits</h2>
<ul>
<li>Import only recent or active records</li>
<li>Reduce import size to make review faster and easier</li>
<li>Limit unwanted records that would need cleanup later</li>
<li>Know how many records will be imported before you start</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Filters are optional. Leave them empty to import everything.</li>
<li>&quot;In the last&quot; excludes today.</li>
<li>Filters currently support HubSpot Created Date and HubSpot Last Modified Date.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-22T07:49:58.000Z'),
('wp-1578', 'New templates are now available in Leadli', 'We’ve added new templates in Leadli to help you build websites, funnels, email campaigns, surveys, social posts, and ads faster. All templates are customizable and ready to use. What’s new Website templates (1) Beauty & Fashion (1) Email templates (1) Other (1) Survey templates (...', '<p>We’ve added new templates in Leadli to help you build websites, funnels, email campaigns, surveys, social posts, and ads faster. All templates are customizable and ready to use.</p>
<h3>What’s new</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Beauty &amp; Fashion (1)</li>
</ul>
<h4>Email templates (1)</h4>
<ul>
<li>Other (1)</li>
</ul>
<h4>Survey templates (1)</h4>
<ul>
<li>Marketing Agency (1)</li>
</ul>
<h4>Social templates</h4>
<ul>
<li>Medical (2)</li>
<li>Legal (2)</li>
<li>Home Services (2)</li>
<li>Other (2)</li>
</ul>
<h4>Facebook ad templates (5)</h4>
<ul>
<li>Travel &amp; Hospitality — Campground &amp; RV Park</li>
<li>Home Services — Housekeeping Services</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Beauty &amp; Fashion — Barber Shop</li>
<li>Automotive — Paint Protection Film Installation</li>
<li>Travel &amp; Hospitality — RV Rental Agency</li>
<li>Restaurant &amp; Bar — Ice Cream Shop</li>
<li>Real Estate — Property Investor</li>
</ul>
<h4>LinkedIn ad templates (6)</h4>
<ul>
<li>Business Coaching &amp; Consulting — Executive Recruiter</li>
<li>Business Coaching &amp; Consulting — Franchise Consultant</li>
<li>Creative — Trade Show Booth Designer</li>
<li>Finance — Payroll Provider</li>
<li>Finance — Equipment Financing</li>
<li>Real Estate — Corporate Relocation Specialist</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Real Estate — Commercial Property Inspector</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-17T19:59:17.000Z'),
('wp-1577', 'Correct ad platform labels for number pool calls', 'October 6, 2026 Call tracking now shows the correct ad platform for new number pool calls. Previously, some Facebook ad calls appeared as "Facebook" or "Direct", which made it harder to confirm which ads were driving calls. Going forward, these calls will show as "Facebook Paid" ...', '<p>October 6, 2026</p>
<p>Call tracking now shows the correct ad platform for new number pool calls. Previously, some Facebook ad calls appeared as &#8220;Facebook&#8221; or &#8220;Direct&#8221;, which made it harder to confirm which ads were driving calls. Going forward, these calls will show as &#8220;Facebook Paid&#8221; when appropriate.</p>
<h3>What changed</h3>
<ul>
<li>Facebook ad calls are now labeled &#8220;Facebook Paid&#8221;.</li>
<li>Calls from other ad platforms are also labeled by platform, including TikTok, LinkedIn, Microsoft (Bing), and Google (including clicks from some in-app browsers).</li>
<li>If you use tagged links (for example, UTM parameters), the call source will reflect the platform plus &#8220;Paid&#8221; when it can be identified.</li>
<li>Traffic from AI tools such as ChatGPT may appear as its own source category.</li>
</ul>
<h3>Good to know</h3>
<ul>
<li>There is nothing to set up. The number pool tracking script updates automatically.</li>
<li>These changes apply to new calls only. Past calls keep their existing source.</li>
<li>Some calls may still show as &#8220;Direct&#8221; if the browser does not share referral data and the link has no tracking information.</li>
<li>If multiple ad tracking signals are present, the first matching rule is used.</li>
</ul>
<h3>Where to find it</h3>
<p>You will see the improved source labels in call reports and call details.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-16T13:56:03.000Z'),
('wp-1576', 'Route number pool calls to multiple users on their preferred devices', 'October 6, 2026 Route number pool calls to multiple users on their preferred devices What’s new You can now route number pool calls to several team members at the same time. Each person can answer on the device they prefer, including web, mobile, desk phone, or their own phone nu...', '<p><strong>October 6, 2026</strong></p>
<p><strong>Route number pool calls to multiple users on their preferred devices</strong></p>
<p><strong>What’s new</strong></p>
<p>You can now route number pool calls to several team members at the same time. Each person can answer on the device they prefer, including web, mobile, desk phone, or their own phone number.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Open your number pool settings and enable <strong>Ring Incoming Call to selected users</strong>.</li>
<li>Select up to 6 team members. Their devices will ring at the same time, based on each person’s ring settings.</li>
<li>Your selections are saved for the next time you open the pool.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>You can set a user’s preferred device type under <strong>Settings &gt; Users/My Staff &gt; Edit &gt; Call &amp; voicemail &gt; Default channel for ring all</strong>.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-16T13:13:29.000Z'),
('wp-1575', 'Localized gift card messages', 'Gift card communications now support automatic translations, so customers receive messages in the language that matches the locale you select. What changed Gift card purchase confirmations, recipient emails, and SMS notifications are translated based on the selected locale. Previ...', '<p>Gift card communications now support automatic translations, so customers receive messages in the language that matches the locale you select.</p>
<h2>What changed</h2>
<ul>
<li>Gift card purchase confirmations, recipient emails, and SMS notifications are translated based on the selected locale.</li>
<li>Previews in the gift card send flow update when you change the locale, across all supported delivery methods.</li>
<li>Email previews now show translated content using both sample and real gift card data.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Translations are applied automatically based on the selected locale.</li>
<li>Both previews and customer-facing messages use the selected language.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-15T19:18:19.000Z'),
('wp-1574', 'Limited-time offer templates for WhatsApp', 'You can now create WhatsApp marketing templates that include a live countdown timer inside the message. The timer is rendered by WhatsApp and counts down to the expiry you set when you send. Your offer code appears under the timer so customers can copy it with a tap. What’s new L...', '<p>You can now create WhatsApp marketing templates that include a live countdown timer inside the message. The timer is rendered by WhatsApp and counts down to the expiry you set when you send. Your offer code appears under the timer so customers can copy it with a tap.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Limited-time offer template type:</strong> Create this under <strong>Settings → WhatsApp → Templates</strong>.</li>
<li><strong>Live countdown timer:</strong> The countdown runs inside the customer’s chat until the expiry time you choose, and becomes more noticeable near the end.</li>
<li><strong>Copy code and open link buttons:</strong> Customers can copy the discount code and tap through to your offer without retyping.</li>
<li><strong>Set expiry at send time:</strong> Use one approved template repeatedly and choose a new deadline for each campaign.</li>
<li><strong>Available anywhere you send:</strong> Supported in conversations, bulk actions, workflows, and calendar sends.</li>
</ul>
<h2>Examples</h2>
<ul>
<li>A salon promoting a same-day discount that expires at noon</li>
<li>An online store recovering carts with a discount that expires tonight</li>
<li>A gym running a joining offer before month-end</li>
<li>A travel agency filling unsold seats before a cutoff time</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Templates → Create template</strong>.</li>
<li>Set <strong>Category</strong> to <strong>Marketing</strong> and <strong>Type</strong> to <strong>Limited time offer</strong>.</li>
<li>Add your offer heading, message body (with variables if needed), discount code, and URL.</li>
<li>Submit the template for approval as usual.</li>
<li>When sending, choose the expiry for that specific campaign.</li>
</ol>
<p><strong>Note:</strong> If you send with an expiry time that has already passed, WhatsApp may still deliver the message but it will show as expired. Double-check the deadline before sending.</p>
<h2>Why this matters</h2>
<p>Time-sensitive offers are clearer when customers can see the deadline counting down, rather than just reading “offer ends soon.” This also lets you run multiple promotions using the same approved template by changing only the expiry each time you send.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-15T14:04:16.000Z'),
('wp-1573', 'AI Studio Payments: checkout updates', 'AI Studio Payments checkouts are now more flexible. You can control which fields buyers complete, capture leads before payment with a two-step checkout, and show clearer order details after payment. Choose which fields appear at checkout You can show, hide, or require the phone n...', '<p>AI Studio Payments checkouts are now more flexible. You can control which fields buyers complete, capture leads before payment with a two-step checkout, and show clearer order details after payment.</p>
<h2>Choose which fields appear at checkout</h2>
<p>You can show, hide, or require the phone number and billing address fields (street, city, state, ZIP, country). Name and email are always required.</p>
<h2>Two-step checkout</h2>
<p>Collect contact details first, then take payment in a second step.</p>
<ul>
<li><strong>Step 1</strong> saves the buyer as a CRM contact, even if they do not complete payment.</li>
<li><strong>Step 2</strong> collects the payment.</li>
</ul>
<p><strong>Note:</strong> New leads trigger <strong>Contact Created</strong>, not <strong>Order Form Submission</strong>. Update your workflows if needed.</p>
<h2>Order details after payment</h2>
<p>The confirmation screen now includes the order ID, items, taxes, total paid, and the next subscription charge (if applicable). You can also redirect buyers to a custom thank-you page that displays their order details.</p>
<h2>Availability</h2>
<p>If you already use Payments, these updates will be available on your next prompt. No reconnection is required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-15T12:52:53.000Z'),
('wp-1572', 'GitHub sync for Leadli AI Studio projects', 'You can now connect a GitHub account to any Leadli AI Studio project and keep your project in sync in both directions. What’s included Connect GitHub : In a project, go to More → Git and connect a personal account or an organization. You can share the connection with the whole su...', '<p>You can now connect a GitHub account to any Leadli AI Studio project and keep your project in sync in both directions.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Connect GitHub</strong>: In a project, go to <em>More → Git</em> and connect a personal account or an organization. You can share the connection with the whole sub-account or keep it private.</li>
<li><strong>A repository is created for you</strong>: Leadli creates a private repository named after your project and makes the first push. If you reconnect later, it reuses the same repository and does not force-push.</li>
<li><strong>Two-way sync</strong>: When you save a version (prompts, code edits, visual edits, restores), changes can be pushed to GitHub. Commits made on the connected branch in GitHub can be pulled back into the project automatically. You can also use manual <em>Push now</em> and <em>Pull now</em>.</li>
<li><strong>Branch selection</strong>: Sync starts on <code>main</code>, and you can switch to another branch at any time. New branches are created on the next push.</li>
<li><strong>Preview updates after a pull</strong>: After pulling, a new preview builds in the background. When ready, select <em>Update preview</em>. If the build fails, use <em>Retry build</em> or <em>Try to fix</em>.</li>
<li><strong>Handling diverged branches</strong>: If both sides have new commits, choose <em>Force push</em> (project version wins) or create a <em>New branch</em> to keep both histories.</li>
<li><strong>Sync history</strong>: View totals, success rate, push vs. pull activity, and the commits that were moved, with links to GitHub when available.</li>
<li><strong>Safety checks</strong>: Pushes are scanned for common secrets (for example AWS, GitHub, Stripe, OpenAI keys, and private keys) and are blocked if secrets are detected. Binary files such as images and fonts are preserved.</li>
</ul>
<p><strong>Permission update</strong></p>
<p>There is a new permission called <em>Manage Git &amp; download code</em>. It is enabled by default for existing roles. Agency admins can change it per user under <em>Settings → Team → Permissions → AI Studio</em>. If a user does not have this permission, they won’t see the Git tab or download options, but they can still build, edit, and preview projects.</p>
<p><strong>Good to know</strong></p>
<ul>
<li>Works with React (Vite) and TanStack Start projects.</li>
<li>Commits created by the system may appear as “Leadli AI Studio” in GitHub.</li>
<li>Only the connected branch is synced.</li>
<li>Projects that do not connect GitHub are not affected.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-15T09:28:58.000Z'),
('wp-1571', 'AI Studio chat widgets are now available', 'You can now add native chat widgets to your AI Studio apps. The widget is built and styled by AI Studio to match your site, rather than using a generic chat bubble. To get started, ask AI Studio to “add a live chat”. AI Studio will create a chat widget and add it to your app. Wha...', '<p>You can now add native chat widgets to your AI Studio apps. The widget is built and styled by AI Studio to match your site, rather than using a generic chat bubble.</p>
<p>To get started, ask AI Studio to “add a live chat”. AI Studio will create a chat widget and add it to your app.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Widget creation inside your account:</strong> The widget is created in your account, named after your project, and connected to your app.</li>
<li><strong>Basic setup help:</strong> For a new widget, AI Studio asks a few simple design questions (greeting, placement, tone) and then configures it.</li>
<li><strong>Matches your site:</strong> Because the chat is built into your app’s code, it can follow your site’s colors, fonts, and layout. You can also ask AI Studio to adjust it later.</li>
<li><strong>Multiple widgets per project:</strong> You can use more than one widget (for example, a general live chat plus an after-hours widget).</li>
</ul>
<h2>How it works with Leadli</h2>
<p>These chat widgets use Leadli’s chat widget system. That means your conversations, contacts, and widget settings are the same ones you already use in your Leadli account—there’s nothing additional to set up.</p>
<ul>
<li><strong>Security:</strong> Visitor sessions use secure tokens, and captcha may appear automatically when suspicious behavior is detected.</li>
<li><strong>Spam and abuse controls:</strong> Rate limits and your widget’s spam settings apply to messages sent through the widget.</li>
<li><strong>Attachments:</strong> Visitors can share files in live chat (within supported file types and size limits).</li>
<li><strong>Conversation history:</strong> Returning visitors can continue previous conversations, and older messages load as they scroll.</li>
<li><strong>Delivery status:</strong> Messages show sending, sent, or failed states, and failed messages can be retried.</li>
<li><strong>Business rules:</strong> Business hours, out-of-hours messages, inactivity timeouts, chat ratings, and chat-ended messages follow your widget settings.</li>
<li><strong>Inbox visibility:</strong> Messages appear in Leadli Conversations, the same as the standard widget.</li>
</ul>
<h2>Chat widget analytics</h2>
<p>You can review performance in <strong>More → Analytics → Chat Widgets</strong>. This includes chat loads, opens, open rate, and satisfaction/feedback from chat ratings. You can also see each lead (contact details, chat type, starting page, and which widget generated it) and filter or export results.</p>
<h2>Manage widget settings in AI Studio</h2>
<p>You can manage your project’s widgets in <strong>More → Chat Widgets</strong>. From there you can rename the widget, adjust visitor messaging, change the contact form fields, update compliance/consent notices, and configure spam protection and business hours.</p>
<h2>Availability</h2>
<ul>
<li>Live Chat and Email Chat are supported in both TanStack Start and React projects.</li>
<li>Voice chat, WhatsApp, Facebook Messenger, and Instagram chat widgets are not supported in AI Studio yet.</li>
</ul>
<p>Source: https://ideas.leadli.com/changelog/ai-studio-chat-widgets-native-live-chat-built-into-your-ai-studio-apps</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-14T18:34:45.000Z'),
('wp-1559', 'Update feature access for multiple sub-accounts in Leadli', 'Overview You can now update feature access for multiple sub-accounts in one action. On the Sub-Accounts page, select the sub-accounts you want to update, choose the features, and decide whether each feature should be enabled or disabled. After you apply the changes, the updates a...', '<p><strong>Overview</strong></p>
<p>You can now update feature access for multiple sub-accounts in one action. On the Sub-Accounts page, select the sub-accounts you want to update, choose the features, and decide whether each feature should be enabled or disabled. After you apply the changes, the updates are queued and processed automatically.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to the Sub-Accounts page.</li>
<li>Select the sub-accounts you want to update.</li>
<li>Click <strong>Update features</strong>.</li>
<li>Select the features you want to change, then click <strong>Next</strong>.</li>
<li>For each feature, choose <strong>Enable</strong> or <strong>Disable</strong>.</li>
<li>Click <strong>Apply changes</strong>.</li>
</ol>
<p>You can also search for features, select groups of features at once, use <strong>Enable all</strong> or <strong>Disable all</strong>, and remove a feature from the list before applying the update.</p>
<p><strong>Why it matters</strong></p>
<p>This reduces the need to open each sub-account to manage feature access. Rolling out a feature, restricting access, or standardizing settings across multiple sub-accounts now takes a few clicks.</p>
<p><strong>Notes</strong></p>
<ul>
<li>Changes usually take effect within 2 to 5 minutes after you apply them.</li>
<li>You can track each request in <strong>Bulk Actions History</strong>.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-14T07:56:52.000Z'),
('wp-1558', 'Schema management for websites and funnels', 'Leadli now includes a schema markup dashboard for each website and funnel under SEO & AEO . You can review and maintain schema without opening each page in the builder. See overall schema health : A coverage card rates your site as Needs work, Getting there, Good, or Excellent, a...', '<p>Leadli now includes a schema markup dashboard for each website and funnel under <strong>SEO &amp; AEO</strong>.</p>
<p>You can review and maintain schema without opening each page in the builder.</p>
<ul>
<li><strong>See overall schema health</strong>: A coverage card rates your site as Needs work, Getting there, Good, or Excellent, and shows counts for Up to date, Might be outdated, and No schema.</li>
<li><strong>Review every page</strong>: Each page shows its schema types, status (Up to date / Might be outdated / No schema / Unpublished / Unsaved), and the last updated time.</li>
<li><strong>Generate schema with AI</strong>: Select one or more pages and run Generate schema. You can review results before publishing.</li>
<li><strong>Add or edit schema manually</strong>: Add schema to pages that have none, or open an existing schema tag to edit.</li>
<li><strong>Review, then publish</strong>: Changes remain unsaved until you choose Save and publish. You can also discard changes.</li>
<li><strong>Find what needs work</strong>: Search by page name or path, and filter by schema status.</li>
<li><strong>Identify outdated schema</strong>: Pages that have been edited and republished two or more times since schema was created can be flagged as Might be outdated.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Accurate schema helps search engines and AI answer engines understand your pages and may improve eligibility for rich results. This dashboard makes it easier to keep schema current across multiple pages.</p>
<p><strong>Impact on existing accounts</strong></p>
<ul>
<li>No data loss and no action required.</li>
<li>Every website and funnel has an SEO &amp; AEO tab, and any existing schema appears there automatically.</li>
<li>Pages without schema are labeled No schema so you can address them in bulk.</li>
<li>Schema editing in the page builder still works as before, and both views stay in sync.</li>
<li>If you generate schema on a page that already has schema, it replaces the existing schema. Review before saving and publishing.</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Sites → Websites/Funnels, select a website or funnel, then open SEO &amp; AEO.</li>
<li>Review the Schema coverage card, and filter by No schema or Might be outdated.</li>
<li>Select pages and choose Generate schema, or add/edit schema manually.</li>
<li>Review the results, then select Save and publish.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-10-12T15:37:19.000Z'),
('wp-1557', 'Meta Pixel: more accurate InitiateCheckout and improved AddPaymentInfo data', 'This update improves how Meta Pixel events are tracked in Leadli funnels, websites, and stores. Summary InitiateCheckout now fires when a buyer reaches the checkout page (not when they submit payment). AddPaymentInfo now sends more complete order and customer details to Meta when...', '<p>This update improves how Meta Pixel events are tracked in Leadli funnels, websites, and stores.</p>
<p><strong>Summary</strong></p>
<ul>
<li><strong>InitiateCheckout</strong> now fires when a buyer reaches the checkout page (not when they submit payment).</li>
<li><strong>AddPaymentInfo</strong> now sends more complete order and customer details to Meta when available.</li>
</ul>
<p><strong>What changed</strong></p>
<ul>
<li><strong>InitiateCheckout timing</strong>: The event fires when checkout begins:</li>
</ul>
<ol>
<li>When the checkout page loads on store checkout pages.</li>
<li>When a page loads where you added InitiateCheckout at the page level.</li>
<li>On the buyer’s first click, tap, or keystroke in an order form everywhere else (covers one-step, two-step, popup, and the new order form).</li>
</ol>
<ul>
<li><strong>Page-level control</strong>: If you add InitiateCheckout at the page level, it fires on page load. If you add it at the funnel, website, or webinar level, it fires on the buyer’s first interaction with the order form.</li>
<li><strong>Duplicate and false-trigger protection</strong>: InitiateCheckout fires at most once per page visit. Autofill and fields focused automatically on load do not trigger it.</li>
<li><strong>Abandoned-cart support</strong>: If a buyer returns via an abandoned-cart link, the event waits for the saved cart to load so cart value and products are included.</li>
<li><strong>Express wallet coverage</strong>: If a buyer goes straight to Apple Pay (or similar) without interacting with the form, InitiateCheckout fires when payment starts.</li>
<li><strong>Richer AddPaymentInfo</strong>: AddPaymentInfo now includes order value, currency, product IDs, and hashed customer details (email, phone, name, external ID) when available.</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li><strong>More accurate checkout drop-off reporting</strong>: You can now see how many buyers reach checkout but leave before paying.</li>
<li><strong>Better ad optimization</strong>: Meta can optimize and build audiences based on stronger checkout-intent signals.</li>
<li><strong>Improved Event Match Quality</strong>: More complete data can help Meta match events to people more reliably.</li>
<li><strong>More consistent data</strong>: Currency is reported consistently, and invalid or blank values are not sent.</li>
</ul>
<p><strong>What stays the same</strong></p>
<ul>
<li><strong>No setup changes required</strong>: Your Meta Pixel settings continue to work as before.</li>
<li>Other events (PageView, ViewContent, Purchase) fire at the same points as before.</li>
<li><strong>Consent behavior is unchanged</strong>: If a visitor hasn’t accepted advertising cookies, nothing is sent.</li>
<li><strong>Conversions API behavior is unchanged</strong>: Browser and server events are still deduplicated in Meta Events Manager when enabled.</li>
<li><strong>Free orders</strong>: If an order does not require payment details, AddPaymentInfo is not sent. If an order is fully covered by a gift card, AddPaymentInfo is sent with a value of 0.</li>
<li><strong>Pixels without InitiateCheckout enabled</strong>: No change.</li>
</ul>
<p><strong>What to expect</strong></p>
<ul>
<li><strong>InitiateCheckout counts may increase</strong>: This is expected because the event now includes buyers who reach checkout and leave without paying.</li>
<li><strong>Page-level changes may take up to 24 hours</strong> to take effect on already-published pages. To apply immediately, edit and save the page.</li>
<li><strong>No action required</strong>: The update applies automatically.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-12T12:53:59.000Z'),
('wp-1556', 'Voice pricing update: October 13, 2026 changes will not take effect', 'Overview The voice pricing changes that were previously scheduled to take effect on October 13, 2026 will not be implemented. Our underlying providers have confirmed these changes were canceled, so the affected voice rates will remain the same. No action is required at this time....', '<h2>Overview</h2>
<p>The voice pricing changes that were previously scheduled to take effect on October 13, 2026 will not be implemented.</p>
<p>Our underlying providers have confirmed these changes were canceled, so the affected voice rates will remain the same.</p>
<p>No action is required at this time.</p>
<p>We’re sharing this update so you have the latest pricing information and to avoid confusion ahead of the previously communicated date.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-12T08:01:59.000Z'),
('wp-1555', 'New templates are now available in Leadli', 'New templates have been added to Leadli to help you build websites, funnels, email campaigns, surveys, and ads more quickly. What’s included Website templates 21 new website templates Category highlighted: Legal (1) Funnel templates 1 new funnel template Category: Automotive (1) ...', '<p>New templates have been added to Leadli to help you build websites, funnels, email campaigns, surveys, and ads more quickly.</p>
<h2>What’s included</h2>
<h3>Website templates</h3>
<ul>
<li>21 new website templates</li>
<li>Category highlighted: Legal (1)</li>
</ul>
<h3>Funnel templates</h3>
<ul>
<li>1 new funnel template</li>
<li>Category: Automotive (1)</li>
</ul>
<h3>Email templates</h3>
<ul>
<li>1 new email template</li>
<li>Category: Restaurant &amp; Bar (1)</li>
</ul>
<h3>Survey templates</h3>
<ul>
<li>1 new survey template</li>
<li>Category: Business, Coaching &amp; Consulting (1)</li>
</ul>
<h3>Social templates</h3>
<ul>
<li>8 new social templates</li>
<li>Marketing Agency (2)</li>
<li>Creative (2)</li>
<li>Business Coaching and Consulting (2)</li>
<li>Financial (2)</li>
</ul>
<h3>Facebook ad templates</h3>
<ul>
<li>2 new Facebook ad templates</li>
<li>Creative: Interior Designer</li>
<li>Real Estate: Realtor</li>
</ul>
<h3>Google ad templates</h3>
<ul>
<li>5 new Google ad templates</li>
<li>Other: Medical Research</li>
<li>Medical: Dental Clinic</li>
<li>Marketing Agency: Digital Marketing Services</li>
<li>Legal: Mediation Services</li>
<li>Insurance: Life Insurance</li>
</ul>
<h3>LinkedIn ad templates</h3>
<ul>
<li>6 new LinkedIn ad templates</li>
<li>Real Estate: Real Estate Appraiser</li>
<li>Real Estate: Escrow Officer</li>
<li>Marketing Agency: AI Marketing Implementation Specialist</li>
<li>Marketing Agency: Conversion Rate Optimization</li>
<li>Business Coaching &amp; Consulting: Diversity, Equality &amp; Inclusion Consultant</li>
<li>Creative: Interior Architecture Firm</li>
</ul>
<h3>Snapshot</h3>
<ul>
<li>1 new snapshot</li>
<li>Finance: Bookkeeper</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-12T01:20:56.000Z'),
('wp-1554', 'Snapshot and API support for new custom field types in Leadli', 'Overview Snapshot support and public API support are now available for the newer custom field types: URL, Date & Time, Rich Text, Users, and Image support in Radio and Checkbox fields. This makes it easier to copy custom field setups across sub-accounts using snapshots and to man...', '<p><strong>Overview</strong></p>
<p>Snapshot support and public API support are now available for the newer custom field types: URL, Date &amp; Time, Rich Text, Users, and Image support in Radio and Checkbox fields.</p>
<p>This makes it easier to copy custom field setups across sub-accounts using snapshots and to manage custom field data programmatically through the public API.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Snapshot support</strong>: You can include these custom field types in snapshots, so you don’t have to recreate the same configuration for each sub-account.</li>
<li><strong>Public API support</strong>: You can create and manage these custom field types through the API.</li>
</ul>
<p><strong>References</strong></p>
<ul>
<li>https://leadli.canny.io/changelog/introducing-new-custom-fields</li>
<li>https://marketplace.leadli.com/docs/Leadli/locations/create-custom-field/</li>
</ul>
<p><strong>Availability</strong></p>
<p>This is live in production for all accounts. If you previously enabled the new custom field types in Labs, you can use these updates immediately.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-10T13:50:58.000Z'),
('wp-1553', 'AI Studio: Sell products and take payments', 'You can now take payments in apps built with AI Studio. Connect products from your catalog, ask the agent to add payments, and your app will include a secure hosted checkout. Payments in AI Studio uses Leadli’s native payments. Your products, orders, payment providers, and subscr...', '<p>You can now take payments in apps built with AI Studio. Connect products from your catalog, ask the agent to add payments, and your app will include a secure hosted checkout.</p>
<p>Payments in AI Studio uses Leadli’s native payments. Your products, orders, payment providers, and subscriptions are the ones already set up in your Leadli account.</p>
<h3>What’s included</h3>
<h4>Enable payments in a few steps</h4>
<ul>
<li>In <strong>More → Payments</strong>, turn Payments on, switch between test and live mode, and choose which catalog products your app can sell.</li>
<li>For each product, choose the pricing approach: one fixed price, a selected set of variations (sizes, tiers, plans), or the full product catalog pricing.</li>
<li>Only the products and prices you allow can be shown or charged.</li>
</ul>
<h4>Let the agent add checkout</h4>
<ul>
<li>Ask the agent to add payments. You will be prompted to approve the connection, and then the agent adds a storefront and checkout to your app.</li>
<li>The checkout code is managed by the platform to reduce accidental breaking changes. If it is edited, it will be restored on the next turn.</li>
</ul>
<h4>Hosted checkout and supported options</h4>
<ul>
<li>Card details are entered and processed in the platform’s hosted checkout, not inside your app’s code.</li>
<li>PayPal Express Checkout is supported.</li>
<li>Coupon codes can be applied at checkout, including fully discounted orders.</li>
<li>Subscriptions are supported in checkout and upsells, including carts with more than one subscription product.</li>
<li>The checkout uses your site’s color scheme.</li>
<li>Bot protection runs on every purchase.</li>
</ul>
<h4>Post-purchase upsells</h4>
<ul>
<li>After a successful purchase, you can show an offer page. Buyers can accept with one click without entering card details again.</li>
<li>One-click works with saved cards from Stripe (3D Secure supported), Square, Authorize.net, NMI, Adyen, and Mercado Pago. Other payment methods use the standard payment form.</li>
<li>Upsells can only be charged after the original order is paid, and only once per order.</li>
</ul>
<h4>Product pages</h4>
<ul>
<li>Generated storefronts can show product listings and product detail pages from your catalog.</li>
</ul>
<h4>Availability</h4>
<ul>
<li>Payments currently works only with apps built on TanStack Start.</li>
<li>To use Payments in an existing React project, go to <strong>Project Settings → Migrate to SSR</strong>. This creates an upgraded copy of your project and keeps the original unchanged and live.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T18:16:44.000Z'),
('wp-1552', 'Clearer A2P rejection guidance for Chat Widget and manual campaigns', 'We updated the guidance shown in the "View required fixes" window so it matches how your A2P campaign was registered. What changed Guidance that matches your setup: Common rejection reasons now show separate steps for campaigns created through the Chat Widget (Quick Setup) versus...', '<p>We updated the guidance shown in the &#8220;View required fixes&#8221; window so it matches how your A2P campaign was registered.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Guidance that matches your setup:</strong> Common rejection reasons now show separate steps for campaigns created through the Chat Widget (Quick Setup) versus Manual Setup, since the fix is in a different place.</li>
<li><strong>Clear next steps:</strong> Each reason explains what happened in plain language and lists the actions to take.</li>
<li><strong>Clear when the issue is platform-generated:</strong> If a rejection is caused by wording the platform generates (for example, consent text), the guidance will say so and point you to support.</li>
<li><strong>Required carrier wording included:</strong> When carriers require specific statements (such as for privacy policy verification), the guidance includes the exact text.</li>
<li><strong>Warning when resubmitting will not help:</strong> For issues like a business type mismatch, the guidance explains what must be corrected before resubmission.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>More accurate guidance helps you fix the right issue on the first try and resubmit with fewer delays.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T14:22:49.000Z'),
('wp-1551', 'AI Studio adds site analytics and form submission tracking', 'Your published Leadli AI Studio sites now include built-in analytics. You can review site performance and see every form submission with links to the related contact record. Analytics inside each project Open Your project → More → Analytics → Overview to see page views, unique vi...', '<p>Your published Leadli AI Studio sites now include built-in analytics. You can review site performance and see every form submission with links to the related contact record.</p>
<h2>Analytics inside each project</h2>
<p>Open <strong>Your project → More → Analytics → Overview</strong> to see page views, unique visitors, opt-ins, and opt-in rate, along with trends for the selected time period. You can also review top pages, time on page, traffic sources, devices, browsers, and visitor locations.</p>
<h2>Form submissions in one place</h2>
<p>Open <strong>Your project → More → Analytics → Form Submissions</strong> to view all leads collected through your site forms. Filter by form and date, and open the linked contact record when needed.</p>
<h2>Compare all sites in Sites Analytics</h2>
<p>Go to <strong>Sites → Analytics → AI Studio</strong> to see AI Studio sites alongside Funnels and Websites, or select a single project to focus on.</p>
<h2>Track where each lead came from</h2>
<p>In <strong>Contacts → Contact details → Activity</strong>, contacts created from your site include visit history, including pages viewed, traffic source, and the form submitted.</p>
<h2>Reconnect forms to capture the full visitor path</h2>
<p>Submissions from previously connected forms will continue to be counted. To link new submissions to the pages a visitor viewed first, reconnect form tracking in AI Studio and publish your site again.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T13:23:41.000Z'),
('wp-1550', 'Reviews AI agents are more flexible and customizable', 'What is new Leadli has updated Reviews AI agents with additional controls to improve response quality, brand consistency, and safety. This update adds brand voice controls, quality guardrails, sensitive review holds, and a live response preview. These changes help you review and ...', '<p><strong>What is new</strong></p>
<p>Leadli has updated Reviews AI agents with additional controls to improve response quality, brand consistency, and safety.</p>
<p>This update adds brand voice controls, quality guardrails, sensitive review holds, and a live response preview. These changes help you review and adjust AI-generated replies before they are published.</p>
<p><strong>Key capabilities</strong></p>
<ol>
<li><strong>Brand voice controls</strong><br />You can fine-tune how each AI agent sounds by setting the response style (&#8220;we&#8221; or &#8220;I&#8221;), business name, tone traits, response length/character limits, and sign-off preferences.</li>
<li><strong>Quality guardrails</strong><br />You can enable guardrails to help keep responses consistent and reduce risky output. Options include remembering recent responses, avoiding repeated opening lines, and avoiding risky language such as refund promises, guarantees, fault admissions, liability statements, or medical and financial advice.</li>
<li><strong>Hold sensitive reviews for human review</strong><br />You can hold higher-risk reviews for human review before posting, adding an extra layer of oversight where it matters most.</li>
<li><strong>Live response preview</strong><br />You can preview example responses (positive, neutral, and negative) before saving. Responses can be regenerated as you adjust tone and other settings.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Keeps AI responses aligned with your brand voice</li>
<li>Reduces repetitive and potentially risky responses</li>
<li>Adds human oversight for sensitive review scenarios</li>
<li>Makes it easier to test and fine-tune agents before going live</li>
<li>Gives you more confidence when automating review responses</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T11:54:53.000Z'),
('wp-1549', 'Social Planner: Publish Community posts with the public API', 'Developers and integration partners can now schedule and publish Community posts using the Social Planner public API. You can also choose which Community member the post is published as. What’s included List Community members Search members by name Paginate through member lists O...', '<p>Developers and integration partners can now schedule and publish Community posts using the Social Planner public API. You can also choose which Community member the post is published as.</p>
<p><strong>What’s included</strong></p>
<p><strong>List Community members</strong></p>
<ul>
<li>Search members by name</li>
<li>Paginate through member lists</li>
<li>Only active members with publishing permission are returned</li>
<li>Private Communities return only members of that specific group</li>
</ul>
<p><strong>Validate member eligibility</strong></p>
<p>Before scheduling a post, you can confirm a selected member is still active and authorized to publish in the Community.</p>
<p><strong>Publish as a specific member</strong></p>
<p>When creating a Community post through the API, you can specify which eligible member the post should be published as.</p>
<p><strong>Publish-time verification</strong></p>
<p>Social Planner performs a final eligibility check before publishing. If the selected member has left the Community or lost permission, the post will fail with a clear error instead of publishing under the wrong identity.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Connect a Community group in Marketing → Social Planner → Settings → Social Accounts</li>
<li>Use Get Accounts to retrieve the Community account ID</li>
<li>Use Get Community Members to retrieve eligible members</li>
<li>Select the member you want to publish as</li>
<li>Create the post using the Community post API</li>
<li>(Optional) Validate the member before scheduling</li>
<li>Social Planner verifies the member again before publishing</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Enable Community publishing through marketplace apps and custom integrations</li>
<li>Automate Community announcements from external workflows</li>
<li>Ensure posts are published by an eligible member</li>
<li>Catch invalid member selections before publishing</li>
<li>Get clear error messages instead of silent failures</li>
<li>Bring Community posting closer in capability to other social channels</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Community account connection and management remain available in the Leadli UI.</li>
<li>The public API supports member listing, member validation, scheduling, and publishing.</li>
<li>Draft posts don’t require a post-as-user selection.</li>
<li>Member eligibility is checked when posts are scheduled or published.</li>
<li>The selected member must remain active and permitted in the Community at publish time.</li>
<li>API access requires the appropriate Social Planner scopes.</li>
</ul>
<p>Documentation is available in the Leadli Marketplace developer docs.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-10-08T07:24:44.000Z'),
('wp-1548', 'Improved notifications for recurring appointments', 'Overview Notifications for recurring appointments are now more consistent across default and custom recurrence patterns. When a recurring appointment is booked, a single confirmation can cover the entire series. Reminders and follow-ups still send for each occurrence. What change...', '<h2>Overview</h2>
<p>Notifications for recurring appointments are now more consistent across default and custom recurrence patterns. When a recurring appointment is booked, a single confirmation can cover the entire series. Reminders and follow-ups still send for each occurrence.</p>
<h2>What changed</h2>
<ul>
<li><strong>One confirmation per series (default recurring appointments):</strong> A confirmation or unconfirmed notification is sent once per booking and covers the full series. Previously, a confirmation could be sent for each occurrence.</li>
<li><strong>Confirmations for custom recurring appointments:</strong> Custom recurring appointments created in the app now send a confirmation or unconfirmed notification once per booking, covering the whole series.</li>
<li><strong>Reminders and follow-ups for every occurrence:</strong> Reminders and follow-ups continue to be scheduled for each occurrence and now apply to custom recurring appointments as well.</li>
<li><strong>Reschedule and cancellation notifications for custom recurrences:</strong> Notifications are sent based on the scope you choose when making changes: This appointment (single occurrence), All appointments (entire series), or This and following (series from that point forward).</li>
<li><strong>Recurrence details in notifications:</strong> For custom recurrences, notifications can include the recurrence pattern alongside the date and time (for example, “October 14, 2026 12:00 PM (recurs every Thursday)”).</li>
</ul>
<h2>How to use</h2>
<p>No setup is required. These updates apply automatically to newly booked appointments and to appointments that are edited.</p>
<ul>
<li><strong>Default recurring appointments:</strong> Confirmations are sent once per booking; reminders and follow-ups send for each occurrence.</li>
<li><strong>Custom recurring appointments:</strong> Confirmations, reminders, follow-ups, and change notifications follow the scope you select when making updates.</li>
<li><strong>Including recurrence details:</strong> To show recurrence details, ensure your notification template uses the appointment date and time custom value.</li>
<li><strong>Scope:</strong> These changes apply to calendar notifications only. Workflows are not affected.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-10-06T13:40:43.000Z'),
('wp-1547', 'See A2P Number Registration Status in Real Time', 'Overview: You can now see the real-time A2P carrier registration status for each of your phone numbers. What’s new: Any number linked to an A2P campaign shows a live status: Pending, Registered, or Failed. Numbers that are fully registered show an "A2P Verified" tag on the Phone ...', '<p><strong>Overview:</strong> You can now see the real-time A2P carrier registration status for each of your phone numbers.</p>
<p><strong>What’s new:</strong></p>
<ul>
<li>Any number linked to an A2P campaign shows a live status: Pending, Registered, or Failed.</li>
<li>Numbers that are fully registered show an &#8220;A2P Verified&#8221; tag on the Phone Numbers page.</li>
<li>Existing numbers were updated automatically. No action is required.</li>
</ul>
<p><strong>Before this update:</strong></p>
<ul>
<li>After adding a number to a campaign, you could only tell that it was submitted.</li>
<li>Carrier registration could take minutes to several days.</li>
<li>If you sent messages before registration finished, they could fail with error 30034 (number not registered for A2P), which often required a support ticket.</li>
</ul>
<p><strong>Why it matters:</strong></p>
<ul>
<li>Know as soon as a number is ready to text, without waiting for a fixed window.</li>
<li>Reduce 30034 failures by avoiding sends from numbers that are not registered yet.</li>
<li>See failed registrations quickly so you can take action sooner.</li>
</ul>
<p><strong>Note:</strong> Registration usually completes within 24 hours, but timing depends on the carrier. Seeing a &#8220;Pending&#8221; status during that time is expected.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-06T08:16:36.000Z'),
('wp-1546', 'Leadli update: Lead Source Report drill-down and value by status', 'This update improves the Lead Source Report so you can quickly see which opportunities make up each number and how much value sits in each status. What’s new Drill down into any number: Click any count under Total Leads, Open, Won, Lost, or Abandoned to view the opportunities beh...', '<p>This update improves the Lead Source Report so you can quickly see which opportunities make up each number and how much value sits in each status.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Drill down into any number:</strong> Click any count under Total Leads, Open, Won, Lost, or Abandoned to view the opportunities behind it.</li>
<li><strong>Value for every status:</strong> The report now shows monetary value for Open, Won, Lost, and Abandoned, not only the total.</li>
<li><strong>Find leads without a source:</strong> The Source filter now supports “Is empty” and “Is not empty”.</li>
<li><strong>Missing sources are visible:</strong> Opportunities without a source now appear as “N/A” instead of being excluded.</li>
<li><strong>Cleaner table layout:</strong> Row height is consistent and columns stay readable on smaller screens.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Add the Lead Source Report widget to your dashboard, or open an existing widget.</li>
<li>Each source row shows both the count and the value for every status.</li>
<li>Click any count greater than zero to open the list of opportunities included in that number.</li>
<li>To review data quality, filter Source by “Is empty” or check the “N/A” row to find opportunities missing a source.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li><strong>From numbers to names:</strong> You can see the exact opportunities behind a count without leaving the report.</li>
<li><strong>Know what each channel is worth:</strong> Compare value by source across Open, Won, and Lost to understand what drives revenue.</li>
<li><strong>More reliable attribution:</strong> Quickly find and fix opportunities that are missing a source.</li>
</ul>
<h3>What’s next</h3>
<ul>
<li>Support for using a custom field as the revenue source in the Lead Source Report.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Values are shown only to users with permission to view lead value.</li>
<li>Drill-down is available for any count greater than zero.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-06T04:43:37.000Z'),
('wp-1545', 'New templates are now available', 'We have released new templates to help you build websites, funnels, surveys, blogs, ads, and more. These templates are designed to be easy to customize and to help you move faster. What’s included in this release Website templates: 1 new template (Marketing Agency) Survey templat...', '<p>We have released new templates to help you build websites, funnels, surveys, blogs, ads, and more. These templates are designed to be easy to customize and to help you move faster.</p>
<h2>What’s included in this release</h2>
<ul>
<li><strong>Website templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Survey templates:</strong> 1 new template (Other)</li>
<li><strong>Blog templates:</strong> 1 new template (Medical)</li>
<li><strong>Social templates:</strong> 8 new templates (Other: 2; Home Services: 2; Restaurant and Bar: 2; Health &amp; Wellness: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (including Full-Service Advertising Agency; Customer Relationship Management Solutions)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Licensed HVAC; Yoga Classes; Wealth Advisor; Architecture Studio; IT Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 7 new templates (Land Developer; Home Loan Provider; Local SEO &amp; Reputation Management; Professional DJ Services; Real Estate Inspector; HR &amp; Workplace Culture Consultant; Wealth Management Firm)</li>
<li><strong>Snapshot:</strong> 1 new snapshot (Medical: Pharmacy)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-05T01:29:27.000Z'),
('wp-1462', 'More control over community email unsubscribe settings', 'Members can now manage community email notifications more precisely. Unsubscribing from one notification type in one community will not affect emails from other communities or other parts of Leadli. What changed Previously, using an unsubscribe link from a community email could t...', '<p>Members can now manage community email notifications more precisely. Unsubscribing from one notification type in one community will not affect emails from other communities or other parts of Leadli.</p>
<h3>What changed</h3>
<p>Previously, using an unsubscribe link from a community email could turn off broader email communication. With this update, the unsubscribe choice is limited to the specific community and the specific notification type (for example, a comment mention or a new post with @everyone).</p>
<h3>How it works</h3>
<ol>
<li>A confirmation page shows the community name and the notification type being turned off.</li>
<li>The member confirms the unsubscribe choice.</li>
<li>Future emails for that community and notification type stop.</li>
<li>All other community and platform emails continue as normal.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Unsubscribe preferences are scoped per community and per notification type.</li>
<li>If an unsubscribe link has already been used or has expired, the member sees a clear message confirming no settings were changed.</li>
<li>Disabled notifications can be re-enabled at any time from the member’s notification settings.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-30T11:12:56.000Z'),
('wp-1461', 'Fix: Remove options from Company and Custom Object choice fields', 'You can now remove options from choice-based fields (Dropdown, Multi-select, Radio, and Checkbox) for Companies and Custom Objects. If an option is already in use, existing records will keep their current value. The option will only be removed from future selection. What changed ...', '<p>You can now remove options from choice-based fields (Dropdown, Multi-select, Radio, and Checkbox) for Companies and Custom Objects.</p>
<p>If an option is already in use, existing records will keep their current value. The option will only be removed from future selection.</p>
<h2>What changed</h2>
<ul>
<li>Delete unused options permanently</li>
<li>Remove used options from future selection without changing existing records</li>
<li>See how many records use an option before you delete it</li>
<li>Existing filters, Smart Lists, and workflows continue to work</li>
</ul>
<h2>Why this matters</h2>
<p>This helps you clean up outdated or incorrect options without breaking historical data or automations.</p>
<h2>How to use it</h2>
<ol>
<li>Go to Settings → Custom Fields</li>
<li>Open a Company field or a Custom Object field</li>
<li>Select the option you want to remove</li>
<li>Review the affected record count (if shown)</li>
<li>Confirm the deletion</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Used options remain visible on existing records</li>
<li>Deleted options cannot be selected for new records, filters, or workflow conditions</li>
<li>Contact and Opportunity fields are not included in this update</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-29T14:14:31.000Z'),
('wp-1460', 'Mexico fixed-line SMS is no longer supported (status label in Phone Numbers)', 'Because of an upstream carrier migration, SMS is no longer available on Mexico local phone numbers. What changed In Settings > Phone Numbers > Manage Numbers > Phone Numbers, Mexico local numbers now show an “SMS unavailable” label. This applies to existing and newly purchased Me...', '<p>Because of an upstream carrier migration, SMS is no longer available on Mexico local phone numbers.</p>
<h2>What changed</h2>
<ul>
<li>In Settings &gt; Phone Numbers &gt; Manage Numbers &gt; Phone Numbers, Mexico local numbers now show an “SMS unavailable” label.</li>
<li>This applies to existing and newly purchased Mexico local numbers.</li>
<li>If a number has multiple status labels, they will now wrap to avoid breaking the table layout.</li>
</ul>
<h2>Where to look</h2>
<ul>
<li>Go to Settings &gt; Phone Numbers &gt; Manage Numbers &gt; Phone Numbers.</li>
<li>For Mexico local numbers, you will see an “SMS not supported” label with a tooltip.</li>
<li>Voice (and WhatsApp, where available) will continue to work.</li>
</ul>
<p>No setup is required. The label appears automatically for affected numbers.</p>
<p>If you have questions, contact Leadli support.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-29T13:16:31.000Z'),
('wp-1459', 'Leadli update: Meta campaign budget controls in Ad Manager', 'We improved Meta campaign budgeting in Ad Manager so you can choose where budgets are managed and how Meta can optimize spend across ad sets. What’s new Choose budget level: Set a single campaign budget or manage budgets per ad set. Optional budget sharing: When using ad set budg...', '<p>We improved Meta campaign budgeting in Ad Manager so you can choose where budgets are managed and how Meta can optimize spend across ad sets.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Choose budget level:</strong> Set a single campaign budget or manage budgets per ad set.</li>
<li><strong>Optional budget sharing:</strong> When using ad set budgets, you can allow Meta to share up to 20% of the budget across eligible ad sets.</li>
<li><strong>Daily and lifetime budgets:</strong> Supported at the campaign level and, when applicable, at the ad set level.</li>
<li><strong>Bid strategy controls:</strong> Use supported bid strategies such as Highest volume or Cost per result goal (configured at the ad set level when selected).</li>
<li><strong>Post-publish editing:</strong> Update budget setup after publishing and switch between campaign and ad set budgets.</li>
<li><strong>In-app guidance:</strong> The builder explains how campaign and ad set budgets work and what budget sharing means.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open Ad Manager and create or edit a Meta campaign.</li>
<li>Under <strong>Budget</strong>, choose <strong>Campaign budget</strong> or <strong>Ad set budget</strong>.</li>
<li>If you choose <strong>Ad set budget</strong>, optionally enable sharing up to 20% of the budget with other ad sets.</li>
<li>Select <strong>Daily</strong> or <strong>Lifetime</strong> budget and choose the appropriate bid strategy.</li>
<li>If using ad set budgets, open each ad set to configure its budget, schedule, and any cost-per-result goal settings.</li>
<li>Review and publish the campaign.</li>
</ol>
<h2>Why it matters</h2>
<p>These changes give you more flexibility to decide whether Meta optimizes spend across the entire campaign or keeps control at the ad set level, while still allowing optional budget sharing to help shift spend toward better-performing ad sets.</p>
<h2>Notes</h2>
<ul>
<li>Budget sharing and post-publish changes depend on Meta’s eligibility and editing rules.</li>
<li>Budget sharing behavior can vary based on campaign and ad set settings.</li>
<li>Budget and schedule controls appear at the campaign or ad set level based on the setup you choose.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-29T07:45:26.000Z'),
('wp-1458', 'Create custom invoice layouts with the AI layout builder', 'You can now create and manage your own invoice layouts using the AI layout builder in Leadli. Describe the layout you want, let AI generate a starting point, then adjust it in a visual editor before publishing. Create and edit invoice layouts with AI Generate a layout from a prom...', '<p>You can now create and manage your own invoice layouts using the AI layout builder in Leadli. Describe the layout you want, let AI generate a starting point, then adjust it in a visual editor before publishing.</p>
<h3>Create and edit invoice layouts with AI</h3>
<ul>
<li><strong>Generate a layout from a prompt:</strong> Describe the invoice you want (for example, a clean two-column layout with your logo, an itemized table, and payment terms).</li>
<li><strong>Recreate an existing invoice:</strong> Upload or describe your current invoice layout and have AI rebuild it so you do not need to start from scratch.</li>
<li><strong>Refine the layout:</strong> Ask AI for changes or open the layout in the editor to adjust styles, move elements, and add or remove sections.</li>
<li><strong>Restore points:</strong> Each AI update saves a restore point so you can return to an earlier version if needed.</li>
<li><strong>Publish when ready:</strong> Publishing is available once the layout has content. After publishing, the updated version appears in your layouts list.</li>
</ul>
<h3>Manage layouts in one place</h3>
<ul>
<li>Create separate layouts for different clients or use cases.</li>
<li>Preview, download, clone, rename, or delete layouts from the layouts list.</li>
<li>Switch between grid and list views.</li>
<li>Search and sort layouts by name or last updated date.</li>
<li>Use the history view to see who created, edited, published, or copied a layout and when.</li>
</ul>
<h3>How layouts work with invoices</h3>
<ul>
<li>Select a published layout for an invoice to control what your customer sees in the invoice preview.</li>
<li>A layout becomes locked once an invoice is sent or partially paid.</li>
<li>If a layout is deleted, invoices that were already sent will continue to show the original design.</li>
<li>Draft invoices using a deleted layout will switch back to the default layout.</li>
</ul>
<h3>Where to find it</h3>
<ul>
<li>Go to <strong>Payments</strong>, then open the <strong>Invoices &amp; Estimates</strong> menu. The AI layout builder is under <strong>Layouts</strong>.</li>
<li>After you publish a layout, you can select it when creating invoices.</li>
</ul>
<h3>How to activate</h3>
<ul>
<li>Go to <strong>Settings</strong> → <strong>Labs</strong> → <strong>Sub-Account</strong>.</li>
<li>Search for <strong>AI-Powered Custom Invoice Layouts</strong>.</li>
<li>Select <strong>Activate Feature</strong>.</li>
<li>Enable access for specific sub-accounts, or enable it for all sub-accounts.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-28T14:31:27.000Z'),
('wp-1457', 'New templates are available in Leadli', 'New templates have been added to Leadli. You can use them for websites, funnels, email campaigns, social posts, and ads. All templates are customizable and designed to help you publish faster. What’s included Website templates: 1 (Business, Coaching & Consulting) Funnel templates...', '<p>New templates have been added to Leadli. You can use them for websites, funnels, email campaigns, social posts, and ads. All templates are customizable and designed to help you publish faster.</p>
<h3>What’s included</h3>
<ul>
<li>Website templates: 1 (Business, Coaching &amp; Consulting)</li>
<li>Funnel templates: 1 (Other)</li>
<li>Social templates: 8 (Creative: 2; Real Estate: 2; Travel &amp; Hospitality: 2; Other: 2)</li>
<li>Facebook ad templates: 2 (Business Coaching &amp; Consulting – Professional Business Coach; Marketing Agency – Executive Event Marketing)</li>
<li>Google ad templates: 5 (Beauty &amp; Fashion – Cosmetic Skin Clinic; Automotive – Car Rental Agency; Travel &amp; Hospitality – Campground; Restaurant &amp; Bar – Caterer; Real Estate – Home Staging)</li>
<li>LinkedIn ad templates: 7 (Creative – Creative Arts Studio; Creative – Dance Company; Finance – Accounting Support Specialist; Finance – Financial Remediation Services; Marketing Agency – CRM Software; Medical – Family Practice Physician; Medical – Physiotherapy Practice)</li>
<li>Snapshot: 1 (Beauty &amp; Fashion – Hair Salon)</li>
</ul>
<p>To find these items, open the Templates area in Leadli and filter by the template type and industry.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-27T19:05:12.000Z'),
('wp-1456', 'Ask AI Voice is now available in the mobile app', 'You can now talk to Ask AI instead of typing. Tap the microphone, speak your question, and the assistant will respond out loud. It continues listening while it speaks, so you can interrupt and steer the conversation as needed. What was the problem On mobile, Ask AI previously req...', '<p>You can now talk to Ask AI instead of typing. Tap the microphone, speak your question, and the assistant will respond out loud. It continues listening while it speaks, so you can interrupt and steer the conversation as needed.</p>
<p><strong>What was the problem</strong></p>
<p>On mobile, Ask AI previously required typing. That made it hard to use when you were on the go or between appointments.</p>
<p><strong>What changed</strong></p>
<p>Ask AI now supports two-way voice on the mobile app. Your speech is transcribed as you talk, and the assistant’s response plays back as audio while also appearing in the chat.</p>
<p><strong>What you can do</strong></p>
<ul>
<li>Tap the microphone and speak. Your words appear while you are talking and then save as the final transcript.</li>
<li>Listen to replies through your phone speaker or a headset, with the text highlighting as it plays.</li>
<li>Interrupt the assistant at any time by starting to speak.</li>
<li>Respond to approval cards or questions; the microphone will pause and then resume when you are done.</li>
<li>Recover from connection drops with automatic reconnecting so you can continue the same conversation.</li>
<li>Minimize the Ask AI screen and return to the same live voice session.</li>
<li>Use Bluetooth headsets (including AirPods) with echo cancellation.</li>
</ul>
<p><strong>Benefits</strong></p>
<ul>
<li>Ask questions faster without typing long prompts.</li>
<li>Have a more natural back-and-forth conversation with quick follow-ups.</li>
<li>Use Ask AI hands-free when you are moving around.</li>
<li>Keep voice and typed messages in the same conversation history.</li>
</ul>
<p><strong>How to get started</strong></p>
<ul>
<li>Open Ask AI in the mobile app.</li>
<li>Tap the microphone in the message bar and allow microphone access the first time.</li>
<li>Speak your question and listen to the reply.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-25T11:01:07.000Z'),
('wp-1455', 'Configure and filter general widgets in sub-account dashboards', 'Summary This update lets you edit General Widgets on sub-account dashboards, including what data they show and how they are filtered. What changed Edit general widgets: configure displayed data, add filters, set custom date ranges, compare periods, rename, apply themes, duplicate...', '<h2>Summary</h2>
<p>This update lets you edit General Widgets on sub-account dashboards, including what data they show and how they are filtered.</p>
<h2>What changed</h2>
<ul>
<li>Edit general widgets: configure displayed data, add filters, set custom date ranges, compare periods, rename, apply themes, duplicate, or delete.</li>
<li>Add permanent filters in a Conditions tab (assigned user, tags, source, lead value, custom fields, and attribution). Filters stay in place when the dashboard is reopened.</li>
<li>Optionally lock a widget to a specific date range, independent of the dashboard-level date filter.</li>
<li>Widgets now show the date property and date range they are using.</li>
<li>Comparison mode shows the current period against the last period or last year.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Dashboard and select <strong>Edit dashboard</strong>.</li>
<li>Hover over a general widget, open the three-dot menu, and select <strong>Edit</strong>.</li>
<li>In <strong>Configure</strong>, update the widget title and (optional) set a date range override under Advanced Settings.</li>
<li>In <strong>Conditions</strong>, add permanent filters by choosing a field, operator, and value.</li>
<li>In <strong>Themes</strong>, choose a theme to match your branding.</li>
<li>Select <strong>Save</strong>. Your settings remain the next time the dashboard opens.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Each user can focus on their own performance by filtering Assigned user to the logged-in user.</li>
<li>Reporting is clearer because each widget shows the exact date property and date range it uses.</li>
<li>Dashboards can be made client-ready with clearer widget names and consistent styling.</li>
<li>Dashboards can be segmented using filters (custom fields, tags, or source) without reapplying them each session.</li>
<li>Year-over-year and period-over-period comparisons are easier to review.</li>
</ul>
<h2>What’s next</h2>
<ul>
<li>More configuration options for Funnel and Manual Actions widgets.</li>
<li>Dashboard Quick Filter support for general widgets.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Pipeline is available as a runtime filter on the widget and is not included in Conditions.</li>
<li>Available condition fields vary by widget type and the module it belongs to (for example, Opportunities, Email, and Contacts).</li>
<li>General widgets do not currently respond to dashboard-level Quick Filters.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-24T14:21:32.000Z'),
('wp-1454', 'GPT-6 Sol and GPT-6 Luna are now available in Leadli AI Agent and GPT actions', 'Overview GPT-6 Sol and GPT-6 Luna are now available in the AI Agent action and the GPT action in workflows. They replace the GPT-5.6 models and are designed to produce more accurate, clearer responses at a lower cost. What’s new GPT-6 Sol is intended for complex work, including m...', '<p><strong>Overview</strong></p>
<p>GPT-6 Sol and GPT-6 Luna are now available in the AI Agent action and the GPT action in workflows. They replace the GPT-5.6 models and are designed to produce more accurate, clearer responses at a lower cost.</p>
<p><strong>What’s new</strong></p>
<p><strong>GPT-6 Sol</strong> is intended for complex work, including multi-step agent tasks and workflows that span multiple apps.</p>
<p><strong>GPT-6 Luna</strong> is intended for fast, high-volume tasks such as classification, summaries, tagging, and quick replies.</p>
<p><strong>Model selection</strong> is available from the Model dropdown in both the AI Agent action and the GPT action.</p>
<p><strong>How to use</strong></p>
<ol>
<li>Add or open an AI Agent action or a GPT action in your workflow.</li>
<li>Open the Model dropdown.</li>
<li>Select GPT-6 Sol for complex tasks or GPT-6 Luna for faster, high-volume tasks.</li>
<li>Save and publish your workflow.</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li><strong>More reliable automations:</strong> Fewer factual mistakes can reduce downstream errors, such as incorrect tagging or misrouted contacts.</li>
<li><strong>Better results on real workflows:</strong> Both models are designed to improve end-to-end workflow outcomes across common business use cases.</li>
<li><strong>Cleaner outputs:</strong> Clearer responses can reduce the amount of manual cleanup needed before sharing content with customers.</li>
<li><strong>Lower cost:</strong> These models are priced lower than the GPT-5.6 models they replace.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-23T15:24:08.000Z'),
('wp-1453', 'Content moderation in Leadli Communities', 'Leadli Communities now includes content moderation controls to help admins reduce spam and enforce community guidelines. Keyword and phrase flagging Admins can define words, phrases, or domains that should be flagged. When a post or comment matches, it is held for review before i...', '<p>Leadli Communities now includes content moderation controls to help admins reduce spam and enforce community guidelines.</p>
<h2>Keyword and phrase flagging</h2>
<p>Admins can define words, phrases, or domains that should be flagged. When a post or comment matches, it is held for review before it appears in the community feed. Matching is case-insensitive, and phrases are recommended for better accuracy.</p>
<p>A starter pack of common spam and scam phrases is available to load quickly. Admins can also test sample text against their rules before anything goes live.</p>
<h2>Review workflow</h2>
<p>Flagged content appears in a <strong>Needs review</strong> area so admins can:</p>
<ul>
<li>See which keyword triggered the flag</li>
<li>Preview the full post or comment</li>
<li>Approve and publish, or remove the content</li>
</ul>
<p>Flagged content remains invisible to other members until it is approved.</p>
<h2>Reported by members</h2>
<p>Member-reported posts and comments appear in a separate review area. Admins can review the full thread and choose to keep or remove the content.</p>
<h2>Author visibility</h2>
<p>Authors can still see their own pending posts with a clear <strong>In review</strong> status, while the content stays hidden from everyone else until approved.</p>
<h2>Notifications</h2>
<p>Admins can be notified when content is flagged so items can be reviewed promptly.</p>
<h2>Admin content is not blocked</h2>
<p>Posts and comments from admins and owners are not held for review. Moderation rules apply only to member-generated content.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings</strong> → <strong>Content Moderation</strong>.</li>
<li>In the <strong>Keywords</strong> tab, add flagged words/phrases or load the starter pack.</li>
<li>Optionally, test sample text using the rule-testing tool.</li>
<li>When a matching post or comment is submitted, it is held and shown in <strong>Needs review</strong>.</li>
<li>Review the item, then approve and publish or remove it.</li>
<li>Review member-reported content in the separate reporting area.</li>
</ol>
<h2>Improved post and comment search</h2>
<p>Search now better handles typos, alternate phrasing, synonyms, and accented or non-English text. Results are ranked by relevance so the best matches appear first.</p>
<h2>Notes</h2>
<ul>
<li>Keyword matching is case-insensitive. Phrases are recommended for better accuracy.</li>
<li>Flagged content is hidden from members until an admin approves it.</li>
<li>Admins and owners are not subject to moderation holds.</li>
<li>Additional spam detection improvements may be added in the future.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T13:37:08.000Z'),
('wp-1452', 'Course filtering in Leadli Communities', 'Members can now filter and sort courses on the Learning page. This makes it easier to find the right content as your community course library grows. What’s included Filter by topic, difficulty, and language: Members can select one or more values across these filters to narrow res...', '<p>Members can now filter and sort courses on the Learning page. This makes it easier to find the right content as your community course library grows.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Filter by topic, difficulty, and language:</strong> Members can select one or more values across these filters to narrow results.</li>
<li><strong>Sort courses:</strong> Members can sort the course list by title (A–Z or Z–A), newest, or oldest.</li>
<li><strong>Available on mobile:</strong> The same filtering options are available in the Leadli mobile app.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Filters are based on the topic, difficulty, and language values set on each course in the course builder.</li>
<li>Multiple filters can be combined to get more specific results.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T13:33:08.000Z'),
('wp-1451', 'Dark mode is now available for Communities and Courses in GoKollab', 'Communities and Courses now support Dark Mode on the GoKollab web experience. Members can switch to a darker appearance, and community owners can set separate light and dark brand color palettes. What’s included Dark Mode for members Switch between Light and Dark from the top nav...', '<p>Communities and Courses now support Dark Mode on the GoKollab web experience. Members can switch to a darker appearance, and community owners can set separate light and dark brand color palettes.</p>
<h2>What’s included</h2>
<h3>Dark Mode for members</h3>
<ul>
<li>Switch between Light and Dark from the top navigation.</li>
<li>Your selection is saved and stays in effect after refreshes.</li>
</ul>
<h3>Separate light and dark branding for owners</h3>
<ul>
<li>Set up and preview Light and Dark palettes independently in <strong>Settings → Appearance</strong>.</li>
<li>Updating one palette does not overwrite the other.</li>
<li>Use a preset theme or customize colors.</li>
</ul>
<h3>Coverage across the community experience</h3>
<p>Dark Mode applies across posts, comments, channels, chats, member lists, events, calendars, mentions, attachments, About pages, and community cards.</p>
<h3>Learning experience</h3>
<p>Courses, lessons, assessments, assignments, quizzes, and live sessions remain readable and consistent in Dark Mode.</p>
<h3>Discovery and shell</h3>
<p>Dark Mode also applies to platform areas such as discovery, onboarding, pricing, integrations, information pages, and account surfaces.</p>
<h2>How to use it</h2>
<h3>For members</h3>
<ol>
<li>Open a community on the web.</li>
<li>Use the appearance switcher in the top navigation.</li>
<li>Select <strong>Dark Mode</strong>.</li>
</ol>
<h3>For community owners</h3>
<ol>
<li>Open your community settings.</li>
<li>Go to <strong>Settings → Appearance</strong>.</li>
<li>Choose Light or Dark mode.</li>
<li>Select a preset theme or customize the palette.</li>
<li>Preview changes, then save.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Dark Mode is currently available on the web experience.</li>
<li>Light and Dark palettes are configured independently.</li>
<li>Member preferences persist across sessions.</li>
<li>Some areas (for example, Studio navigation) may not fully retain the setting during navigation yet.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T12:25:05.000Z'),
('wp-1450', 'Opportunities: Snapshot support for Smart Lists and Smart Tags', 'Opportunity Smart Lists and Opportunity Smart Tags can now be included in Snapshots. Create your views and tags once in a template sub-account, then push them to new sub-accounts instead of rebuilding them each time. What’s included Opportunity Smart Lists and Opportunity Smart T...', '<p>Opportunity Smart Lists and Opportunity Smart Tags can now be included in Snapshots. Create your views and tags once in a template sub-account, then push them to new sub-accounts instead of rebuilding them each time.</p>
<h2>What’s included</h2>
<ul>
<li>Opportunity Smart Lists and Opportunity Smart Tags can now be selected as assets when you create or push a Snapshot.</li>
<li>Smart List configuration is carried over, including filters, sorting, manage-fields setup, list vs. board type, and pipeline visibility.</li>
<li>Smart Tags are carried over with their color coding and linked pipeline.</li>
<li>Conflicts are handled on load so pushing to a sub-account that already has these assets does not create duplicates.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Smart Lists and Smart Tags depend on Pipelines. Include the related pipelines in the same push, or the smart lists and tags will not be created in the destination sub-account.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-23T10:20:56.000Z'),
('wp-1449', 'New templates now available in Leadli', 'We have added a new set of templates in Leadli to help you launch faster across websites, funnels, social posts, and ads. These templates are customizable and designed to save time while keeping your marketing consistent. Website templates (1) Marketing Agency: 1 Funnel templates...', '<p>We have added a new set of templates in Leadli to help you launch faster across websites, funnels, social posts, and ads. These templates are customizable and designed to save time while keeping your marketing consistent.</p>
<h2>Website templates (1)</h2>
<ul>
<li>Marketing Agency: 1</li>
</ul>
<h2>Funnel templates (4)</h2>
<ul>
<li>Other (Coming Soon pages): 3</li>
<li>Marketing Agency: 1</li>
</ul>
<h2>Social templates (8)</h2>
<ul>
<li>Restaurant and Bar: 2</li>
<li>Automotive: 2</li>
<li>Medical: 2</li>
<li>Legal: 2</li>
</ul>
<h2>Facebook ad templates (5)</h2>
<ul>
<li>Home Services: Solar</li>
<li>Travel &amp; Hospitality: Boutique Hotel &amp; Resort</li>
</ul>
<h2>Google ad templates (5)</h2>
<ul>
<li>Other: Creative Artists</li>
<li>Medical: Dermatology Practice</li>
<li>Marketing Agency: CRM Platform</li>
<li>Legal: Accident Attorney</li>
<li>Insurance: Health Insurance Agent</li>
</ul>
<h2>LinkedIn ad templates (7)</h2>
<ul>
<li>Insurance: Agricultural Insurance</li>
<li>Finance: Transaction Processing Services</li>
<li>Finance: Retirement Planning Specialist</li>
<li>Creative: Architecture &amp; Urban Planning Studio</li>
<li>Medical: Chiropractor</li>
<li>Business Coaching &amp; Consulting: Corporate Mentorship</li>
<li>Marketing Agency: Digital Media Creator</li>
</ul>
<h2>New snapshot (1)</h2>
<ul>
<li>V2 Industry: Legal – Intellectual Property Law Firm</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T18:33:12.000Z'),
('wp-1448', 'AI Studio is now available for all locations', 'AI Studio is now available for all locations and can be enabled for the users who need access. Important permission changes AI Studio permissions for sub-account users and admins are now turned off by default. Access remains enabled only for sub-account users who previously had A...', '<p>AI Studio is now available for all locations and can be enabled for the users who need access.</p>
<h2>Important permission changes</h2>
<ul>
<li>AI Studio permissions for sub-account users and admins are now turned off by default.</li>
<li>Access remains enabled only for sub-account users who previously had AI Studio enabled in Labs.</li>
</ul>
<h2>What’s new</h2>
<ul>
<li>A banner appears if users in your sub-accounts still need AI Studio access.</li>
<li>Open Configure, then search for or select users and confirm access.</li>
<li>You can grant access to everyone or choose specific users.</li>
<li>Setup typically completes in a few minutes. After that, selected users can open and use AI Studio.</li>
</ul>
<h2>Who sees the banner</h2>
<ul>
<li>Agency owners, admins, and agency users with write access.</li>
<li>Sub-account users and read-only agency users do not see the banner.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T14:31:55.000Z'),
('wp-1447', 'Manual taxes: set up tax zones by country or state', 'What’s new You can now create Tax Zones under Manual Taxes to organize and apply your own tax rates based on a customer’s country or state. This helps you manage different manual tax setups by region and keep your tax settings easier to maintain. Create geographic tax zones Creat...', '<h2>What’s new</h2>
<p>You can now create Tax Zones under Manual Taxes to organize and apply your own tax rates based on a customer’s country or state. This helps you manage different manual tax setups by region and keep your tax settings easier to maintain.</p>
<h2>Create geographic tax zones</h2>
<ul>
<li>Create zones by grouping specific countries and states.</li>
<li>Name each zone based on the region or the tax setup it represents.</li>
<li>Each country or state can belong to only one Manual Tax Zone to prevent overlap.</li>
</ul>
<p><strong>Example:</strong> Create a Canada Tax Zone, add the relevant regions, and attach the manual tax rates you want to apply for customers in that zone.</p>
<h2>How tax rates apply</h2>
<ul>
<li>You can attach existing user-defined tax rates to a zone.</li>
<li>You can add up to 10 tax rates per zone.</li>
<li>If a tax rate is attached to both the product and the zone, it applies at checkout (the product + zone intersection).</li>
<li>For regions not included in any zone, all rates attached to the product apply without zone filtering.</li>
<li>If a zone has no tax rates, customers in that zone are not charged taxes (from manual taxes).</li>
<li>Deleting a tax rate from a zone removes it only from that zone (it does not delete the tax rate itself).</li>
</ul>
<h2>Automatic taxes and manual taxes</h2>
<ul>
<li>Automatic Taxes take priority when they are available for the country and product combination.</li>
<li>Manual tax rates in Tax Zones apply only when Automatic Taxes are disabled or unavailable.</li>
</ul>
<h2>Where to find it</h2>
<p>Payments → Settings → Taxes → Manual Taxes</p>
<p>From there you can:</p>
<ul>
<li>Create and manage manual tax rates</li>
<li>Create Tax Zones</li>
<li>Select the countries/states for each zone</li>
<li>Attach existing manual tax rates to a zone</li>
<li>Review and update the rates configured for each zone</li>
</ul>
<h2>What’s next</h2>
<p>We will continue expanding Manual Taxes to support more flexible regional tax configurations.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T14:25:03.000Z'),
('wp-1446', 'Add role badges to staff for services', 'Overview When a service has multiple staff members (for example, junior and senior stylists or different specialists), customers choosing from a simple list of names may not know who is the best fit. You can add a short role badge, such as "Lead Therapist" or "Senior Consultant,"...', '<h2>Overview</h2>
<p>When a service has multiple staff members (for example, junior and senior stylists or different specialists), customers choosing from a simple list of names may not know who is the best fit.</p>
<p>You can add a short role badge, such as &#8220;Lead Therapist&#8221; or &#8220;Senior Consultant,&#8221; to each staff member’s profile. This badge appears during staff selection on your booking widget, making it easier for customers to choose and giving each role clearer visibility.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Reusable badges:</strong> Create as many role badges as you need (for example, Lead Therapist or Senior Consultant). When assigning a badge to a staff member, your existing badges are available to select.</li>
<li><strong>One role badge per staff member:</strong> Assign one text-based role badge (up to 30 characters) to each staff member from their staff details settings.</li>
<li><strong>Custom badge colors:</strong> Choose a color for each badge so roles are easy to distinguish.</li>
<li><strong>Displayed during staff selection:</strong> If a staff member has a badge configured, it appears on their card during staff selection on the booking widget.</li>
<li><strong>No empty badges:</strong> Staff without a configured badge show no badge or placeholder.</li>
<li><strong>Immediate updates:</strong> Editing or removing a badge is reflected the next time the booking widget loads.</li>
<li><strong>Consistent on desktop and mobile:</strong> The badge displays consistently across desktop and mobile layouts.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Services → Staff</strong>.</li>
<li>Edit the staff member you want to update.</li>
<li>Under the <strong>Basic details</strong> tab, find the <strong>Staff badge</strong> dropdown.</li>
<li>Add or select a badge, then save. The badge will appear next to that staff member during staff selection on your booking widget.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Helps customers quickly identify the right person to book with when multiple staff members are available.</li>
<li>Keeps setup simple and easy to scan, without needing detailed staff bios.</li>
<li>Maintains a polished, on-brand booking experience with minimal configuration.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-09-22T13:26:57.000Z'),
('wp-1445', 'Custom pricing for service appointments', 'Overview Service prices do not always match what should be charged. Negotiated pricing or one-off scenarios can mean the final price needs to differ from what is configured. You can now edit a service’s price directly in the service appointment modal before saving a new appointme...', '<h2>Overview</h2>
<p>Service prices do not always match what should be charged. Negotiated pricing or one-off scenarios can mean the final price needs to differ from what is configured.</p>
<p>You can now edit a service’s price directly in the service appointment modal before saving a new appointment, or while editing or duplicating an existing appointment. This changes the price for that appointment only and does not change the service’s global pricing.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Edit the service price on the appointment</strong><br />When creating, editing, or duplicating a service appointment, you can adjust the service price in the appointment modal. The total updates immediately.</li>
<li><strong>Appointment-specific only (not global)</strong><br />Any price change applies only to that appointment. The globally configured service price is not changed.</li>
<li><strong>Validation included</strong><br />Zero is allowed (for complimentary services). Negative values are blocked with a clear validation error.</li>
<li><strong>Overrides staff-specific pricing</strong><br />If a staff member has a custom price set for a service, the appointment price you enter will override it for that appointment.</li>
<li><strong>Available in the mobile app</strong><br />You can edit the service price for an appointment from the mobile app.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the service appointment modal (create, edit, or duplicate).</li>
<li>Click the edit icon next to a service.</li>
<li>Enter the new price for the service.</li>
<li>Save. The custom price applies only to that appointment.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Lets staff charge the correct negotiated or discretionary price without workarounds.</li>
<li>Keeps global service pricing unchanged so one-off pricing does not affect other bookings.</li>
<li>Supports the same workflow on desktop and mobile.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T13:01:57.000Z'),
('wp-1444', 'AI Studio: Migrate an existing project to SSR', 'If you have a React project that needs server-rendered pages, server functions, or secrets, you can now upgrade it from Project Settings. AI Studio creates a second project in the same sub-account and runs the migration there, so your published project and domains stay unchanged....', '<p>If you have a React project that needs server-rendered pages, server functions, or secrets, you can now upgrade it from Project Settings. AI Studio creates a second project in the same sub-account and runs the migration there, so your published project and domains stay unchanged.</p>
<h2>What this solves</h2>
<p>SSR, server functions, and secrets were available for new projects, but existing React sites did not have a safe way to adopt the new stack without risking the live project.</p>
<h2>What’s included</h2>
<p>The <strong>Migrate to SSR</strong> option appears in Project Settings (Advanced) for React/Vite projects when you have edit access. Projects already on TanStack do not show this action.</p>
<p>When you confirm, a new project is created next to the original:</p>
<ul>
<li>Your pages are copied into the new project</li>
<li>You can rename the copy (suggested: “{project name} (TanStack)”)</li>
<li>The new project starts as a draft; the live site and domains stay on the original</li>
<li>Earlier versions remain with the original; the copy starts a new chat history</li>
</ul>
<p>The upgrade runs in the new project’s chat. The dashboard will show “Migrating to SSR” until the new project is ready as a TanStack app.</p>
<p>While migration is in progress, publishing, code save, version restore, domain changes, slug changes, and remix are blocked on the copy. Preview, chat, and delete remain available.</p>
<h2>How to run the migration</h2>
<ol>
<li>Open the React project that needs the new stack</li>
<li>Go to <strong>Project Settings</strong> and find <strong>Migrate to SSR</strong></li>
<li>Confirm the copy’s name</li>
<li>Accept the notes</li>
<li>Click <strong>Migrate</strong></li>
</ol>
<p>If the run stops early, the migration badge stays on the copy. In that project’s chat, you can use “continue the migration” to resume. Starting migration again from the original creates another copy.</p>
<h2>Before you publish the copy</h2>
<ul>
<li>Use this when the project needs server rendering, server functions, or secrets.</li>
<li>Conversion is charged like a normal build.</li>
<li>Review the new project before publishing; you may need to fix minor issues.</li>
<li>Workflow triggers continue to point to the original project until you update them.</li>
<li>Publishing the copy, or moving a domain, is a separate decision from running the migration.</li>
<li>The original project is not edited during the process.</li>
</ul>
<h2>Why this matters</h2>
<p>This lets an existing React project move to an SSR stack without a rebuild and without a risky cutover. Projects that do not need SSR can remain on React.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T11:04:06.000Z'),
('wp-1443', 'Calendar AI now helps troubleshoot availability', 'Overview Calendar AI can now help you troubleshoot availability issues. You can ask why a specific calendar or team member is not bookable and get a direct answer, instead of searching the troubleshooting grid or submitting a support request. What’s new Ask why a time is unavaila...', '<h2>Overview</h2>
<p>Calendar AI can now help you troubleshoot availability issues. You can ask why a specific calendar or team member is not bookable and get a direct answer, instead of searching the troubleshooting grid or submitting a support request.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Ask why a time is unavailable</strong><br />Ask a question like “Why is 5:00 PM on Aug 8 unavailable on my Sales Call calendar?” and Calendar AI will explain what is blocking that time.</li>
<li><strong>Check a team member, not just a calendar</strong><br />Ask about a person by name (for example, “Why isn’t Jane available on Friday?”). If they work across multiple calendars, Calendar AI will either check their overall schedule or ask which calendar you mean.</li>
<li><strong>Get a day-level summary</strong><br />Ask about a full day and get a single summary of what is blocking availability by time segment, with the option to ask follow-up questions for more detail.</li>
<li><strong>Clarifying questions only when needed</strong><br />Calendar AI will only ask you to clarify when a name could refer to more than one thing (such as a calendar and a team member).</li>
<li><strong>No guessed explanations</strong><br />If Calendar AI cannot produce a reliable answer, it will say so and direct you to the full troubleshooting view rather than inventing a reason.</li>
</ul>
<h2>How to use it</h2>
<p>No setup is required. The update is live automatically.</p>
<ol>
<li>Go to <strong>Calendars</strong> and open the <strong>Calendar AI</strong> launcher.</li>
<li>Select <strong>Troubleshoot availability</strong> or ask your question in plain language.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>It gives you quick answers to common booking issues without extra back-and-forth.</li>
<li>Clear guardrails help ensure the explanations are dependable.</li>
<li>Permissions are respected, so troubleshooting only shows information the user is allowed to see.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-09-22T10:59:03.000Z'),
('wp-1442', 'Improved two-way sync for service appointments', 'Overview Previously, if a service appointment’s calendar event was rescheduled or cancelled directly from a connected third-party calendar (such as Google Calendar or Outlook), only the calendar event was updated and the service appointment record could become out of sync. This u...', '<h2>Overview</h2>
<p>Previously, if a service appointment’s calendar event was rescheduled or cancelled directly from a connected third-party calendar (such as Google Calendar or Outlook), only the calendar event was updated and the service appointment record could become out of sync.</p>
<p>This update fixes that behavior for single-service appointments: changes made in a connected third-party calendar now sync back correctly so the calendar event and the service appointment stay aligned. Multi-service appointments are not yet synced when changes are made directly in third-party calendars.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Two-way sync for single-service appointments</strong>: Reschedules and cancellations made in Google Calendar or Outlook now update both the calendar event and the service appointment.</li>
<li><strong>Consistent data across views</strong>: For single-service appointments, the calendar view, appointment list, and appointment details now reflect third-party changes correctly.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>No setup is required. These improvements are live automatically.</li>
<li><strong>Single-service appointments</strong>: Reschedule or cancel in your connected third-party calendar and the update will sync back automatically.</li>
<li><strong>Multi-service appointments</strong>: For now, make schedule changes in the app to avoid the calendar event and appointment record getting out of sync.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Reduces double-booking risk when a third-party cancellation or reschedule occurs.</li>
<li>Keeps appointment information consistent across your calendar and appointment records.</li>
<li>Helps reduce support requests caused by mismatched appointment times or statuses.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T10:54:49.000Z'),
('wp-1441', 'Localized notification templates for Calendars, Services, and Rentals', 'Overview Notification templates now support multiple languages across Calendars, Services, and Rentals. The default templates will display in the language set in your Business Profile (Platform Language). If you have already edited a template, it will stay exactly as you saved it...', '<h2>Overview</h2>
<p>Notification templates now support multiple languages across Calendars, Services, and Rentals. The default templates will display in the language set in your Business Profile (Platform Language). If you have already edited a template, it will stay exactly as you saved it.</p>
<h2>What changed</h2>
<ul>
<li><strong>Localized defaults:</strong> Default templates automatically display in the correct language for supported channels (Email, SMS, and WhatsApp, depending on the product).</li>
<li><strong>Coverage by product:</strong> Calendars includes templates for Assigned User, Additional Email, Additional Phone, Contact, and Guest recipients. Services and Rentals include the relevant recipient templates for each notification type.</li>
<li><strong>One language setting:</strong> Templates use the Business Profile Platform Language as the single source of truth.</li>
<li><strong>Custom edits are preserved:</strong> Edited templates are never overwritten or retranslated.</li>
<li><strong>New setups are ready immediately:</strong> Newly created Calendars, Services, and Rentals locations get localized default templates automatically.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li><strong>Calendars:</strong> Go to Calendar Settings → Notifications for the calendar you want to update.</li>
<li><strong>Services and Rentals:</strong> Go to Global Settings → Notifications.</li>
<li><strong>Existing locations:</strong> Your current templates remain unchanged. To use the localized default version, open the template and select <strong>Reset to Default</strong>.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Multi-language businesses can use notification templates without manual translation.</li>
<li>Using the Business Profile language keeps behavior consistent across products and recipient types.</li>
<li>Your existing customized templates remain protected.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-09-22T10:43:00.000Z'),
('wp-1440', 'Mobile App: Diagnose Notification Issues', 'If you are not receiving notifications, you can now run a quick diagnosis in the mobile app settings. The tool checks your network connection, notification permissions, sound settings, and test delivery, then explains what needs attention. What this helps with When notifications ...', '<p>If you are not receiving notifications, you can now run a quick diagnosis in the mobile app settings. The tool checks your network connection, notification permissions, sound settings, and test delivery, then explains what needs attention.</p>
<h2>What this helps with</h2>
<p>When notifications stop arriving, it is often unclear whether the issue is your device settings, your connection, or the app. This diagnosis gives you a clear answer in under a minute.</p>
<h2>What it checks</h2>
<ul>
<li><strong>Network:</strong> confirms your device can reach the service.</li>
<li><strong>Notifications:</strong> confirms notifications are allowed for the app.</li>
<li><strong>Sound and focus settings:</strong> checks common settings that can silence alerts.</li>
<li><strong>Test delivery:</strong> sends a real test notification and lets you confirm whether it arrived.</li>
</ul>
<h2>What you can do with the results</h2>
<ul>
<li>See clear “pass” or “needs attention” results for each check.</li>
<li>Retry test delivery if it does not arrive.</li>
<li>Follow the recommended fix for any failed check.</li>
<li>Copy a short report to share with support if you still need help.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Settings</strong> in the mobile app.</li>
<li>Select <strong>Diagnose Notifications</strong>, then start the diagnosis.</li>
<li>Confirm whether the test notification arrived, and retry if needed.</li>
<li>Apply any suggested fixes and run the diagnosis again.</li>
</ol>
<h2>Availability</h2>
<ul>
<li><strong>Release:</strong> September 2026</li>
<li><strong>Version:</strong> 4.25.0 or later</li>
<li><strong>Status:</strong> Available now</li>
<li><strong>Supported apps:</strong> Leadli, LeadConnector, and the white-label mobile app</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T09:24:56.000Z'),
('wp-1439', 'Messaging and phone number pricing updates (effective October 13, 2026)', 'Effective date List prices for select international outbound SMS destinations and phone number monthly rentals will change on October 13, 2026 . Outbound messaging (SMS) The following outbound SMS prices will change on October 13, 2026: Albania: $0.1167 → $0.1419 Angola: $0.3062 ...', '<h2>Effective date</h2>
<p>List prices for select international outbound SMS destinations and phone number monthly rentals will change on <strong>October 13, 2026</strong>.</p>
<h2>Outbound messaging (SMS)</h2>
<p>The following outbound SMS prices will change on October 13, 2026:</p>
<ul>
<li>Albania: $0.1167 → <strong>$0.1419</strong></li>
<li>Angola: $0.3062 → <strong>$0.3154</strong></li>
<li>Burkina Faso: $0.2233 → <strong>$0.2568</strong></li>
<li>Congo (DRC): $0.2584 → <strong>$0.2994</strong></li>
<li>Guam &amp; Northern Mariana Islands: $0.0847 → <strong>$0.0983</strong></li>
<li>Maldives: $0.3581 → <strong>$0.4047</strong></li>
<li>Mali: $0.3485 → <strong>$0.3590</strong></li>
<li>Moldova: $0.1474 → <strong>$0.1695</strong></li>
<li>Mongolia: $0.2957 → <strong>$0.3541</strong></li>
<li>Montenegro: $0.1928 → <strong>$0.2044</strong></li>
<li>Nepal: $0.3022 → <strong>$0.3082</strong></li>
<li>Nicaragua: $0.1567 → <strong>$0.1856</strong></li>
</ul>
<h2>Phone number monthly price updates</h2>
<p>Monthly rental prices for the following phone number types will change on October 13, 2026:</p>
<ul>
<li>Austria — Mobile phone number: $6.00/month → <strong>$6.90/month</strong></li>
<li>Belgium — Local phone number: $1.25/month → <strong>$1.70/month</strong>; Mobile phone number: $1.25/month → <strong>$1.40/month</strong></li>
<li>Chile — Mobile phone number: $10.00/month → <strong>$11.40/month</strong></li>
<li>Colombia — Local phone number: $14.00/month → <strong>$17.50/month</strong></li>
<li>Finland — Mobile phone number: $5.00/month → <strong>$6.60/month</strong></li>
<li>Hong Kong — Local phone number: $6.00/month → <strong>$14.70/month</strong>; Mobile phone number: $15.00/month → <strong>$18.50/month</strong>; Toll-free number: $25.00/month → <strong>$28.60/month</strong></li>
<li>Indonesia — Local phone number: $23.00/month → <strong>$24.15/month</strong>; Toll-free number: $25.00/month → <strong>$28.60/month</strong></li>
<li>Norway — Local phone number: $3.00/month → <strong>$3.90/month</strong>; Mobile phone number: $12.00/month → <strong>$16.40/month</strong></li>
<li>Philippines — Local phone number: $15.00/month → <strong>$17.80/month</strong>; Mobile phone number: $120.00/month → <strong>$142.00/month</strong>; Toll-free number: $25.00/month → <strong>$28.40/month</strong></li>
<li>Switzerland — Mobile phone number: <strong>$9.00/month → $11.70/month</strong></li>
<li>Thailand — Mobile phone number: <strong>$22.00/month → $25.30/month</strong>; Toll-free number: <strong>$25.00/month → $28.60/month</strong></li>
</ul>
<h2>Why prices are changing</h2>
<p>Telecommunications carriers periodically update the costs associated with delivering messages and providing phone numbers across different countries and networks. These pricing adjustments reflect changes in underlying carrier and infrastructure costs.</p>
<h2>What you need to do</h2>
<p><strong>No action is required.</strong> The new list prices will automatically take effect on October 13, 2026.</p>
<p>If you have an active fixed-price agreement covering any of the affected messaging routes or phone numbers, your contracted pricing will remain unchanged for the duration of that agreement.</p>
<p>If you have questions, please contact support.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-21T05:36:53.000Z'),
('wp-1438', 'Jotform: new workflow triggers and actions in Leadli', 'You can now automate Jotform directly inside Workflows in Leadli. This lets you react to form submissions and signed documents as soon as they happen, and create Jotform submissions from any workflow. What’s new Triggers (events in Jotform that start a workflow in Leadli) New Sub...', '<p>You can now automate Jotform directly inside Workflows in Leadli. This lets you react to form submissions and signed documents as soon as they happen, and create Jotform submissions from any workflow.</p>
<h2>What’s new</h2>
<h3>Triggers (events in Jotform that start a workflow in Leadli)</h3>
<ul>
<li><strong>New Submission</strong> – Starts a workflow when a new response is submitted to a Jotform form.</li>
<li><strong>New Signed Document</strong> – Starts a workflow when a document with an e-signature field is completed and signed. Checked every 5 minutes.</li>
</ul>
<h3>Actions (steps you can run in Jotform from a Leadli workflow)</h3>
<ul>
<li><strong>Create Submission</strong> – Adds a new submission to any form in your Jotform account, with values mapped from your workflow.</li>
</ul>
<h2>Why this matters</h2>
<p>These triggers and actions help you automate common tasks without manual imports or extra integrations.</p>
<ul>
<li>Follow up on new leads as soon as a form is submitted.</li>
<li>Start onboarding as soon as a contract is signed.</li>
<li>Record phone, event, and walk-in sign-ups in Jotform so reporting includes all leads.</li>
<li>Reduce reliance on third-party automations and webhooks.</li>
</ul>
<h2>Example use cases</h2>
<h3>Lead capture and CRM sync</h3>
<p>A “Website Lead Form” submission creates the contact in Leadli, sends an acknowledgment email, applies a “New Lead” tag, and posts a notification to a Slack channel.</p>
<h3>Signed contract to project kickoff</h3>
<p>A client signs your “Service Agreement” in Jotform Sign. Their opportunity stage updates to “Contract Signed”, an onboarding task is created in ClickUp, an operations channel is notified, and the client receives next steps.</p>
<h3>Offline sign-up to Jotform</h3>
<p>Someone registers for an event over the phone. The workflow creates a matching submission in your Jotform event form so every attendee appears in one report.</p>
<h3>Appointment to intake form</h3>
<p>A consultation is booked in Leadli. An intake submission is created in Jotform with the client’s details already filled in.</p>
<h2>How to connect</h2>
<ol>
<li>Open the Workflow Builder and search for Jotform actions or triggers.</li>
<li>Click <strong>Connect Now</strong> and sign in with your Jotform account.</li>
<li>Once connected, select a form and the available fields will load for mapping.</li>
<li>You can also connect from <strong>Settings → Integrations → Jotform</strong>.</li>
</ol>
<h2>Notes and details</h2>
<p><strong>Supported fields for Create Submission:</strong> Full Name, Email, Address, Phone, Short Text, Long Text, Number, Dropdown, Single Choice, Multiple Choice, Yes/No, Star Rating, Scale Rating, Date Picker, and Time.</p>
<p><strong>Unsupported fields</strong> will not appear in the mapping list. Examples include File Upload, Signature, Appointment, Payment, Product List, Input Table, Fill in the Blanks, Spinner, Slider fields, Image Choice, Captcha, and widgets such as Terms and Conditions and Checklist.</p>
<ul>
<li>Unsupported fields are saved empty. If a field is required on the form, Jotform will still accept the submission and mark it active.</li>
<li>Submissions created by this action do not include payment, amount, product, or a booked time slot. Treat them as unpaid unless payment was collected elsewhere.</li>
<li>The New Signed Document trigger reads documents signed in Jotform. Create Submission cannot write a signature; signatures must be captured from the signer.</li>
<li>Dates use YYYY-MM-DD and times use HH:MM.</li>
<li>Field support will expand over time.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-09-20T10:20:01.000Z'),
('wp-1437', 'Bulk update tag colors and create categories while assigning tags', 'We added faster ways to organize tags in Leadli, based on customer feedback. You can now update the color on many tags at once and create a new tag category while you are assigning tags. What changed 1) Bulk update tag colors Before, tag colors had to be updated one at a time. No...', '<p>We added faster ways to organize tags in Leadli, based on customer feedback.</p>
<p>You can now update the color on many tags at once and create a new tag category while you are assigning tags.</p>
<p><strong>What changed</strong></p>
<p><strong>1) Bulk update tag colors</strong></p>
<p>Before, tag colors had to be updated one at a time. Now you can:</p>
<ul>
<li>Select up to 100 tags from the Tags page.</li>
<li>Choose the “Update color” action and apply one color to all selected tags in a single step.</li>
</ul>
<p>This helps you keep a consistent color system across categories, teams, or use cases—especially if you already manage a large tag library.</p>
<p><strong>2) Create categories while assigning tags</strong></p>
<p>Before, if the category you needed didn’t exist, you had to leave the flow to create it and then come back. Now you can create a new category from the category selector and continue without interruption.</p>
<p>These updates reduce repetitive work and make it easier to organize and manage tags at scale.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-20T03:18:01.000Z'),
('wp-1436', 'Leadli update: Chat widget color picker adapts to browser support', 'Chat widget color picker adapts to your browser The chat widget color picker now shows only the options your browser supports. What changed Safari and Firefox: The eyedropper option is hidden because these browsers do not support the required native API. Chrome: No change. The ey...', '<h2>Chat widget color picker adapts to your browser</h2>
<p>The chat widget color picker now shows only the options your browser supports.</p>
<h3>What changed</h3>
<ul>
<li><strong>Safari and Firefox:</strong> The eyedropper option is hidden because these browsers do not support the required native API.</li>
<li><strong>Chrome:</strong> No change. The eyedropper stays available and works as before.</li>
</ul>
<p>The color spectrum, hue controls, and hex input are still available, so you can set any custom color.</p>
<h3>How it works</h3>
<p>This update uses the Highrise design system package (<code>@platform-ui/highrise</code> 4.8.4) used by the chat widget color picker.</p>
<p>The app detects browser support automatically:</p>
<ul>
<li>If the native eyedropper API is available, the eyedropper is shown.</li>
<li>If the API is not available, the eyedropper is hidden.</li>
</ul>
<p>No chat widget configuration or code changes are required.</p>
<h3>Why it matters</h3>
<p>Previously, Safari and Firefox could show an eyedropper option that looked usable but did not work when clicked. This could make the color picker seem broken even though other color selection options worked.</p>
<p>We identified the issue through Sentry error monitoring and adjusted the UI so the color picker matches the actual capabilities of each browser.</p>
<h3>Availability</h3>
<p>This update is live for everyone. Existing chat widget settings and previously saved colors are not affected.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T16:22:40.000Z'),
('wp-1435', 'Chat Widget: Spam Protection', 'The Leadli Chat Widget now includes built-in spam protection to help reduce bot and high-volume suspicious submissions. This can help control messaging costs and protect your sender reputation. Spam protection runs in the background and does not add CAPTCHA, extra form fields, or...', '<p>The Leadli Chat Widget now includes built-in spam protection to help reduce bot and high-volume suspicious submissions. This can help control messaging costs and protect your sender reputation.</p>
<p>Spam protection runs in the background and does not add CAPTCHA, extra form fields, or extra steps for normal visitors.</p>
<h2>How it works</h2>
<p>When a submission looks suspicious, Leadli keeps the contact for review instead of deleting it.</p>
<ul>
<li>The contact is tagged with <code>chat_widget_high_volume_flag</code>.</li>
<li>Based on your settings, Leadli can pause SMS, email, or both for that contact.</li>
</ul>
<h2>Why this helps</h2>
<p>Sending messages to invalid phone numbers or email addresses can lead to unnecessary costs, bounces, and delivery issues. Spam protection can prevent outbound messages on the channels you select, helping reduce wasted messaging and protect deliverability.</p>
<h2>Configure per widget</h2>
<p>Spam protection is set at the individual Chat Widget level. You can choose one of these actions:</p>
<ul>
<li>Tag Only</li>
<li>Pause SMS</li>
<li>Pause Email</li>
<li>Pause Both</li>
</ul>
<p>Only the selected channel is affected. Other channels and existing DND preferences remain unchanged.</p>
<h2>Activity history and review</h2>
<p>When messaging is paused by spam protection, the contact activity log records the action and shows which channel was affected. You can also find flagged contacts by filtering for the <code>chat_widget_high_volume_flag</code> tag.</p>
<h2>Defaults</h2>
<ul>
<li>Existing Chat Widgets: spam protection is off by default.</li>
<li>New Chat Widgets: spam protection is on by default with <strong>Pause Both</strong> selected.</li>
</ul>
<h2>How to enable spam protection</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget</strong>.</li>
<li>Open the Chat Widget you want to configure.</li>
<li>In the builder sidebar, open <strong>Spam Protection</strong>.</li>
<li>Turn spam protection on.</li>
<li>Select the action to take when a suspicious submission is detected.</li>
<li>Save your changes.</li>
</ol>
<p>If you expect a large but legitimate traffic spike (for example, during a campaign, launch, event, or press announcement), you can temporarily disable spam protection for that widget and enable it again afterward.</p>
<h2>Why this was built</h2>
<p>A spam attack against a Chat Widget can create hundreds of fake contacts in a short period of time. If automated follow-ups are triggered for those contacts, businesses can end up sending SMS and emails to invalid destinations. Repeated failures and bounces can also hurt sender reputation and the deliverability of legitimate campaigns.</p>
<p>For security reasons, the specific signals and thresholds used to identify suspicious activity are not published.</p>
<h2>What’s next</h2>
<ul>
<li>Broader protection coverage</li>
<li>Better visibility into flagged contacts</li>
<li>Additional review and management controls</li>
<li>Ongoing detection improvements based on real-world traffic</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T16:18:42.000Z'),
('wp-1434', 'Granular WhatsApp user permissions are now available', 'You can now control who on your team can manage each part of WhatsApp. These per-action permissions help agency and sub-account admins limit access to templates, flows, phone numbers, business profile changes, and disconnecting WhatsApp. What’s included A dedicated WhatsApp permi...', '<p>You can now control who on your team can manage each part of WhatsApp. These per-action permissions help agency and sub-account admins limit access to templates, flows, phone numbers, business profile changes, and disconnecting WhatsApp.</p>
<h2>What’s included</h2>
<ul>
<li><strong>A dedicated WhatsApp permissions section:</strong> You can find it under <strong>Settings → Users → Edit → Roles &amp; permissions</strong> at both the agency and sub-account level.</li>
<li><strong>Seven per-action permissions:</strong>
<ul>
<li>Create and edit templates</li>
<li>Delete templates</li>
<li>Create and edit flows</li>
<li>Delete or deprecate flows</li>
<li>Update business profile</li>
<li>Add and manage phone numbers</li>
<li>Disconnect WhatsApp integration</li>
</ul>
</li>
</ul>
<h2>Safe by default</h2>
<p>All seven permissions are granted by default to the standard agency and sub-account roles, so nothing changes unless you decide to adjust access.</p>
<h2>Enforced beyond the UI</h2>
<p>Restricted actions are disabled in the WhatsApp settings screen with an explanation, and the same rules are enforced behind the scenes.</p>
<h2>Available in all supported languages</h2>
<p>The permission section is translated, so teams can use it in their preferred language.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings → Users</strong>.</li>
<li>Select the user and click <strong>Edit</strong>.</li>
<li>Open <strong>Roles &amp; permissions</strong>.</li>
<li>Find the <strong>WhatsApp</strong> section and set the permissions you want.</li>
<li>Save your changes. They apply immediately.</li>
</ol>
<h2>Good to know</h2>
<ul>
<li><strong>Permissions follow the user:</strong> Access is granted or revoked for that user across the sub-accounts they belong to.</li>
<li><strong>Changes are auditable:</strong> Permission changes appear in your audit logs at the agency level under Users.</li>
<li><strong>Works with or without reselling:</strong> The WhatsApp permission toggles appear under Users regardless of WhatsApp reselling settings.</li>
</ul>
<h2>Why this matters</h2>
<p>As teams grow, more people may need WhatsApp access, but not everyone should be able to change critical settings. These permissions reduce risk by limiting sensitive actions like disconnecting the integration, managing phone numbers, and editing templates.</p>
<p>Go to <strong>Settings → Users → Roles &amp; permissions</strong> to review and adjust WhatsApp access for your team.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T13:41:59.000Z'),
('wp-1433', 'App QR Codes now send users to the right app store', 'You can now create App QR Codes that automatically send people to the correct app store based on their device. Instead of using separate QR codes for iOS and Android (or sending users to a landing page to choose a store), one App QR Code can handle the full experience. What’s new...', '<p>You can now create <strong>App QR Codes</strong> that automatically send people to the correct app store based on their device.</p>
<p>Instead of using separate QR codes for iOS and Android (or sending users to a landing page to choose a store), one App QR Code can handle the full experience.</p>
<h2>What’s new</h2>
<p>When you create a QR Code, you can select the <strong>App</strong> type and set:</p>
<ul>
<li><strong>App Store URL</strong> (for iOS)</li>
<li><strong>Play Store URL</strong> (for Android)</li>
<li><strong>Other devices URL</strong> (optional fallback)</li>
</ul>
<h2>How it works</h2>
<p>When someone scans the QR code, the device is detected and they are redirected automatically:</p>
<ul>
<li><strong>iOS</strong> → Apple App Store</li>
<li><strong>Android</strong> → Google Play Store</li>
<li><strong>Other/unknown devices</strong> → Fallback URL</li>
</ul>
<h2>Why it matters</h2>
<p>This makes app downloads simpler by removing extra steps and avoiding multiple QR codes. You can use one QR code across campaigns, print materials, websites, and other channels.</p>
<h2>How to set it up</h2>
<p>Go to <strong>QR Codes → Create QR Code → select “App”</strong>, then add your App Store URL, Play Store URL, and optional fallback URL.</p>
<p>Your existing QR Code design and customization options are unchanged.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-09-18T12:51:40.000Z'),
('wp-1432', 'Local presence dialing improvements: better pickup rates and more control', 'September 17, 2026 Local presence dialing chooses a local caller ID for outbound calls to help improve answer rates. This update improves matching, expands international coverage, and adds more administrative control. What’s new Expanded country support: Location-based matching i...', '<p>September 17, 2026</p>
<p>Local presence dialing chooses a local caller ID for outbound calls to help improve answer rates.</p>
<p>This update improves matching, expands international coverage, and adds more administrative control.</p>
<h3>What’s new</h3>
<ul>
<li>Expanded country support: Location-based matching is now active across the United States, Canada, the United Kingdom, and Australia, using postal-code distance calculations rather than static lookup tables.</li>
<li>Consistent caller ID: Contacts will now see the same number from you on repeat attempts. This helps build familiarity and supports consistent carrier reputation.</li>
<li>Universal outbound coverage: Local presence now works across the web dialer, mobile app, and desk phones.</li>
<li>Reserved numbers: You can reserve up to 50 numbers per sub-account so they are not auto-selected, while still keeping them available for manual dialing.</li>
<li>Smarter matching ladder: Calls cycle through a priority order to find the best match: lead’s zip code → area code → overlay code → nearest available distance → same region → account default.</li>
<li>Fail-safe reliability: If a local match is not available or lead data is missing, calls route immediately using your account default.</li>
</ul>
<h3>How to get started</h3>
<p>To configure reserved numbers or adjust your settings, go to Settings &gt; Phone System &gt; Voice &gt; Other Settings &gt; Outbound calls, then scroll to the Local presence dialing section.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-18T12:39:34.000Z'),
('wp-1431', 'Reputation Management: Video testimonial updates', 'Leadli now includes additional automation and publishing controls for video testimonials. This helps you respond to new submissions quickly and choose which testimonials appear on your widgets. What’s included A workflow trigger when a video testimonial is received Approval and v...', '<p>Leadli now includes additional automation and publishing controls for video testimonials. This helps you respond to new submissions quickly and choose which testimonials appear on your widgets.</p>
<h2>What’s included</h2>
<ul>
<li>A workflow trigger when a video testimonial is received</li>
<li>Approval and visibility controls for video testimonials</li>
</ul>
<h2>Key updates</h2>
<h3>1) Workflow trigger: Video testimonial received</h3>
<p>You can trigger an automated workflow as soon as a new video testimonial is submitted through a Video Testimonial Collector.</p>
<p>This can be used to:</p>
<ul>
<li>Notify internal team members</li>
<li>Send a thank-you or follow-up message to the reviewer</li>
<li>Create tasks or notes</li>
<li>Pass testimonial details into webhooks or other workflow actions</li>
<li>Route submissions differently based on the collector used or marketing consent</li>
</ul>
<h3>2) Workflow filters for video testimonials</h3>
<p>The trigger supports filters so you can control which submissions enter a workflow. Available filters include:</p>
<ol>
<li>Marketing consent (run workflows based on whether consent was granted)</li>
<li>Video collector (trigger workflows only for submissions from a specific collector)</li>
</ol>
<p>This makes it easier to build separate automations for different campaigns, products, events, partners, or testimonial use cases.</p>
<h3>3) Video testimonial custom values</h3>
<p>Testimonial data is now available as custom values inside supported workflow actions. Available values include:</p>
<ul>
<li>Reviewer name</li>
<li>Reviewer email</li>
<li>Reviewer phone</li>
<li>Marketing consent</li>
<li>Submitted at</li>
<li>Collector name</li>
<li>Video link</li>
</ul>
<p>You can use these values in internal notifications, notes, emails, SMS, webhooks, and other workflow steps.</p>
<h3>4) Approval and widget visibility controls</h3>
<p>You can choose how new video testimonials are handled in the Reputation widget settings:</p>
<ul>
<li><strong>Auto-publish:</strong> New submissions are shown on the widget automatically (default behavior).</li>
<li><strong>Manual approval:</strong> New submissions must be reviewed before they are shown.</li>
</ul>
<p>This supports both fully automated publishing and moderated publishing.</p>
<h3>5) Review and manage from the Responses page</h3>
<p>The Video Testimonials &rarr; Responses page includes additional visibility indicators and controls. You can:</p>
<ul>
<li>Identify new testimonials that have not been reviewed</li>
<li>See whether a testimonial is currently shown on the widget</li>
<li>Show or hide individual testimonials directly from the Responses page</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Follow up automatically as soon as a video testimonial is received</li>
<li>Reduce the need to manually monitor new submissions</li>
<li>Support collector-specific and consent-aware automation</li>
<li>Make testimonial data usable across workflows immediately</li>
<li>Control which testimonials appear publicly</li>
<li>Manage testimonial visibility faster from one central view</li>
</ul>
<p>If you have questions or feedback, contact support through your usual channel.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-18T07:47:34.000Z'),
('wp-1430', 'Marketplace app details page: easier to review apps before installing', 'We updated the Marketplace app details page so it’s faster and easier to understand an app, decide if it fits your needs, and install with confidence. Previously, important details were available but spread across the listing. Now the page brings the key information into a cleare...', '<p>We updated the Marketplace app details page so it’s faster and easier to understand an app, decide if it fits your needs, and install with confidence.</p>
<p>Previously, important details were available but spread across the listing. Now the page brings the key information into a clearer, more structured layout.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Clearer overview:</strong> Rating, install count, target user, install eligibility, white-label support, pricing, version, and developer info are easier to scan.</li>
<li><strong>Structured sections:</strong> Details are organized into Overview, Pricing, Permissions, and Reviews so you can jump to what matters.</li>
<li><strong>More transparent pricing:</strong> Monthly and yearly plans, free trials, agency and sub-account pricing, multiple tiers, and usage-based charges are easier to understand.</li>
<li><strong>Clearer permissions:</strong> Permissions are grouped by capability and shown with clearer scope, including Read and Write access.</li>
<li><strong>More product context:</strong> Screenshots, videos, descriptions, categories, version info, and developer details are presented in a cleaner format to help you evaluate before installing.</li>
<li><strong>Improved reviews:</strong> Ratings, distributions, individual reviews, and sorting are easier to explore in one place.</li>
<li><strong>Better discovery:</strong> Similar Apps and other apps from the same developer help you find alternatives.</li>
<li><strong>Cleaner install flow:</strong> Install actions and account context are connected more closely to the evaluation experience.</li>
</ul>
<h2>Why it matters</h2>
<p>Installing a Marketplace app is more than knowing what it does. You also need to understand who can install it, what it costs, what access it requires, and what other customers think.</p>
<p>This update brings those answers together so it’s easier to move from discovery to evaluation to install.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-18T06:56:22.000Z'),
('wp-1429', 'Automatically link contacts to companies by email domain', 'Leadli can automatically connect a contact to the correct company based on the contact’s email domain. If no matching company exists, Leadli can create one, save the domain, and add the company name and logo. What’s included A new Company Domain Name field (unique by default) Aut...', '<p>Leadli can automatically connect a contact to the correct company based on the contact’s email domain. If no matching company exists, Leadli can create one, save the domain, and add the company name and logo.</p>
<h2>What’s included</h2>
<ul>
<li>A new Company Domain Name field (unique by default)</li>
<li>Automatic contact-to-company association when the email domain matches an existing company domain</li>
<li>Automatic company creation when no suitable company match exists</li>
<li>Optional company enrichment with name and logo</li>
<li>Duplicate prevention so multiple companies cannot share the same domain</li>
<li>Domain exclusion for common free email providers (plus a custom exclusion list)</li>
<li>Checks existing company records before creating a new one</li>
<li>Optional backfill to populate domains for existing companies when you enable the feature</li>
</ul>
<h2>Why this matters</h2>
<p>For B2B teams, contacts should be associated with the right company without manual cleanup. This helps reduce manual work, keeps company records organized, and supports more reliable lists, workflows, and reporting.</p>
<h2>How it works</h2>
<p>When a contact is created or their email address is updated, Leadli looks for a company with a matching domain before creating anything new.</p>
<ul>
<li>If a company already has <strong>acme.com</strong> as its domain, the contact is associated with that company automatically.</li>
<li>If a company exists but has no domain, Leadli can populate the domain and reuse the existing company record instead of creating a duplicate.</li>
<li>If there is no suitable match, Leadli creates a new company and (optionally) enriches it.</li>
</ul>
<p>Domain matching is exact. For example, <strong>company.com</strong> and <strong>mail.company.com</strong> are treated as different domains.</p>
<h2>How to enable</h2>
<ol>
<li>Go to <strong>Settings → Labs</strong> and enable “Automatic Company Creation &amp; Association by Domain”.</li>
<li>Go to <strong>Settings → Objects → Companies</strong>.</li>
<li>Under <strong>Automations</strong>, configure the options you want (enrichment, creation from email domain, duplicate prevention, and excluded domains).</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Existing company associations are respected and are not automatically replaced.</li>
<li>Company enrichment is best effort and does not block company creation.</li>
<li>Manually entered company domains are not overwritten during domain backfill.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-17T14:50:38.000Z'),
('wp-1428', 'Subscription payments stay in sync with your default card', 'What’s new In Leadli SaaS V2 accounts, when a client updates their default payment card, Leadli will automatically update the card used for any active SaaS subscriptions. Why this matters This helps subscription renewals use the most recent card, which can reduce missed or failed...', '<p><strong>What’s new</strong></p>
<p>In Leadli SaaS V2 accounts, when a client updates their default payment card, Leadli will automatically update the card used for any active SaaS subscriptions.</p>
<p><strong>Why this matters</strong></p>
<p>This helps subscription renewals use the most recent card, which can reduce missed or failed payments caused by outdated card details.</p>
<p><strong>Notes</strong></p>
<p>This applies to Leadli SaaS V2 accounts with an active subscription plan. Wallet recharges will continue to use your default card as they do today.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-09-17T14:06:53.000Z'),
('wp-1427', 'Gift card permissions with role-based access', 'Overview You can now control which team members can access and perform actions related to gift cards. This helps protect gift card balances, customer information, and sensitive actions like issuing or deactivating cards. What you can control View Gift Card Orders – See issued gif...', '<h2>Overview</h2>
<p>You can now control which team members can access and perform actions related to gift cards. This helps protect gift card balances, customer information, and sensitive actions like issuing or deactivating cards.</p>
<h2>What you can control</h2>
<ul>
<li><strong>View Gift Card Orders</strong> – See issued gift cards and their order details.</li>
<li><strong>View Gift Card Products</strong> – Access gift card products and view their settings.</li>
<li><strong>Create/Edit Gift Card Products</strong> – Create new gift card products or update existing ones.</li>
<li><strong>Access Sell Link / Share via QR</strong> – Access and share the sell link or QR code for a gift card product.</li>
<li><strong>Send Gift Cards</strong> – Issue gift cards to customers using the send flow.</li>
<li><strong>View Full Gift Card Code</strong> – Allow specific users to reveal the complete gift card code.</li>
<li><strong>Access Gift Card Details Page</strong> – Open and view details for individual gift card orders.</li>
<li><strong>Delete/Deactivate Gift Cards</strong> – Limit who can delete or deactivate gift cards.</li>
</ul>
<h2>Additional notes</h2>
<ul>
<li>Permissions can be limited to <em>assigned data</em> so users only see records assigned to them (instead of all records), even when they have page access.</li>
<li>Permissions apply to both the interface and the underlying actions. For example, a support team member can be allowed to view gift card orders without being able to send gift cards, edit gift card products, or reveal full codes.</li>
<li>Full gift card codes are protected separately, so users without the right permission cannot view them on the order details page.</li>
</ul>
<h2>Where to find it</h2>
<ul>
<li>Go to: <strong>Settings → My Staff → Select Staff Member → Edit → Roles &amp; Permissions → Gift Cards</strong></li>
<li>In the Gift Cards section, choose the permissions you want for each user.</li>
<li>Admins keep full access by default; other roles can be limited to only what they need.</li>
</ul>
<h2>What&#8217;s next</h2>
<p>Access controls for gift cards will continue to expand as new capabilities are added.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-17T13:50:38.000Z'),
('wp-1426', 'Build workflows from Ask AI', 'Overview You can now create and edit workflows directly from Ask AI. Describe what you want, and the agent generates a workflow you can review and refine before opening the workflow builder. What’s included Build from a prompt: Start a new chat in Ask AI and describe the workflow...', '<p><strong>Overview</strong></p>
<p>You can now create and edit workflows directly from Ask AI. Describe what you want, and the agent generates a workflow you can review and refine before opening the workflow builder.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Build from a prompt:</strong> Start a new chat in Ask AI and describe the workflow you want.</li>
<li><strong>Preview in the side panel:</strong> Review the full workflow layout without switching screens.</li>
<li><strong>Inspect steps:</strong> Select a trigger or action to view its configuration.</li>
<li><strong>Make edits in chat:</strong> Ask for changes and the workflow updates.</li>
<li><strong>Open in the builder:</strong> Jump into the workflow builder to test and publish.</li>
<li><strong>WhatsApp support:</strong> You can also start workflow creation from WhatsApp.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open Ask AI and start a new chat.</li>
<li>Describe the workflow you want to create.</li>
<li>Review the generated workflow preview and inspect steps as needed.</li>
<li>Request changes until it matches your requirements.</li>
<li>Open it in the workflow builder, run a final test, then publish.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Manual editing is not available inside Ask AI. Use the workflow builder for manual changes.</li>
<li>Publishing still happens in the workflow builder after testing.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-09-17T13:27:33.000Z'),
('wp-1425', 'Send bulk emails to associated contacts from Companies and Custom Objects', 'You can now send bulk emails to associated contacts directly from Company and Custom Object lists in Leadli. What this update adds A new Send email bulk action for Companies and Custom Objects that are associated with Contacts For Custom Objects, you can choose one or more associ...', '<p>You can now send bulk emails to associated contacts directly from Company and Custom Object lists in Leadli.</p>
<h2>What this update adds</h2>
<ul>
<li>A new <strong>Send email</strong> bulk action for Companies and Custom Objects that are associated with Contacts</li>
<li>For Custom Objects, you can choose one or more association labels to decide who should receive the email</li>
<li>You can send to the most recently associated contact, the earliest associated contact, or all associated contacts</li>
<li>You can use Contact, Company, and Custom Object fields as merge fields in the email</li>
<li>You can write the email with Quick Compose, Smart Builder, or a saved template</li>
<li>You can send immediately, schedule it, or use batch mode</li>
<li>You can track delivery and engagement in Bulk Actions and in Marketing → Emails → Bulk Action Campaigns</li>
<li>Contacts that match multiple selected association labels are deduplicated before sending</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Companies or a supported Custom Object.</li>
<li>Select the records you want to send from.</li>
<li>Click <strong>Send email</strong>.</li>
<li>If you are using a Custom Object, choose the association label(s).</li>
<li>Choose which associated contacts should receive the email.</li>
<li>Write and personalize the email.</li>
<li>Send now, schedule it, or use batch mode.</li>
</ol>
<h2>Why it matters</h2>
<p>Smart Lists already let you segment using Company and Custom Object data. This update lets you start an email campaign directly from those segments without rebuilding the audience from the Contacts list.</p>
<h2>Examples</h2>
<ul>
<li>Filter Properties by city, price, type, or status and email the associated buyers.</li>
<li>Filter Policies by renewal date and email the associated policy holders.</li>
<li>Filter Companies by industry, lifecycle stage, tier, or owner and run a targeted B2B campaign.</li>
<li>Filter Memberships or Subscriptions by expiry date and email the associated members.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This action is available for Custom Objects that have an association with Contacts.</li>
<li>For Companies, the Contact association is selected automatically.</li>
<li>Email permissions, consent requirements, and deliverability rules still apply.</li>
<li>The final recipient list is resolved when the bulk action runs.</li>
</ul>
<p>Learn more: <a href="https://help.Leadli.com/en/support/solutions/articles/155000008744-send-bulk-email-to-associated-contacts-from-companies-and-custom-objects" rel="ugc nofollow noopener noreferrer" target="_blank">Help article</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-17T12:48:34.000Z'),
('wp-1424', 'New custom field options in Leadli', 'Overview Leadli now includes more custom field types and configuration options so you can capture and manage information in a more structured way. What’s new 1) URL fields with domain controls Create URL fields for website links, profile URLs, or other web addresses. You can choo...', '<h2>Overview</h2>
<p>Leadli now includes more custom field types and configuration options so you can capture and manage information in a more structured way.</p>
<h2>What’s new</h2>
<h3>1) URL fields with domain controls</h3>
<p>Create URL fields for website links, profile URLs, or other web addresses. You can choose to allow all domains, allow only specific domains, or block specific domains to help keep inputs consistent.</p>
<h3>2) Flexible date and time fields</h3>
<p>Choose between date and time, date-only, or time-only fields. You can also restrict selectable dates to future dates only, past dates only, or a specific date range.</p>
<h3>3) User selection fields</h3>
<p>Select one or multiple users in a custom field to associate the right team members with a record. Users added through this field receive follower-level access.</p>
<h3>4) Radio button options with images or icons</h3>
<p>Radio button fields can include an image or icon for each option to make choices easier to recognize.</p>
<h3>5) Checkbox options with images</h3>
<p>Checkbox fields can also include images per option, which is helpful for visual categories such as products or designs.</p>
<h3>6) Rich text fields</h3>
<p>Rich text fields support formatting such as bold, italics, headings, and lists to make longer notes easier to read.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-09-16T09:35:29.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;