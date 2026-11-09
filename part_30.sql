INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;