INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;