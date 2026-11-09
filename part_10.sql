INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ol>
<h3>Pricing note</h3>
<p>Video generation is billed per execution. Cost depends on model, quality, duration, and whether audio is enabled. Treat any examples as estimates.</p>
<h3>Good to know</h3>
<ul>
<li>The generated video is stored at a public URL. Anyone with the link can access it, so avoid including sensitive customer data in prompts.</li>
<li>Videos are 4–8 seconds long.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T12:48:36.000Z'),
('wp-1666', 'Calendar view updates: settings panel, export, and staff colors', 'Overview The calendar view now has more display controls, easier exporting, and clearer event colors. These updates only change how the calendar looks and how you work with it. Availability, booking rules, and what customers see on the booking page stay the same. What’s changed C...', '<h2>Overview</h2>
<p>The calendar view now has more display controls, easier exporting, and clearer event colors. These updates only change how the calendar looks and how you work with it. Availability, booking rules, and what customers see on the booking page stay the same.</p>
<h2>What’s changed</h2>
<ul>
<li><strong>Calendar view settings panel:</strong> Open the three-dot menu next to “Manage view” and choose “Calendar view settings” to adjust display preferences. Your selections are saved for next time.</li>
<li><strong>Timezone setting moved:</strong> “View appointments in timezone” is now part of Calendar view settings. Any timezone you previously set carries over.</li>
<li><strong>More display preferences:</strong> Choose the default grid interval (15/30/60 minutes), grey out hours outside working time, hide empty rows and columns, and show buffer time.</li>
<li><strong>Staff colors for admins:</strong> Admins can set staff colors to make schedules easier to scan.</li>
<li><strong>Event color options:</strong> Color events by calendar, service, or assigned staff. The secondary color appears as a strip on the left.</li>
<li><strong>Export current view:</strong> Export the current calendar view (including filters and date range) to PDF or CSV from the same menu.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In the unified calendar, open the three-dot menu next to “Manage view”.</li>
<li>Select “Calendar view settings” and adjust your preferences.</li>
<li>If you’re an admin, open “Staff colors” to update staff color assignments.</li>
<li>To export, choose “Export to PDF” or “Export to CSV”.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Faster scanning and less clutter in busy calendars.</li>
<li>Clearer visual cues for working hours and buffers.</li>
<li>Exports make it easier to share schedules or work with calendar data elsewhere.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-29T12:19:59.000Z'),
('wp-1665', 'AI Agent skills are now available in Workflows', 'AI Agents can now use skills . A skill is a reusable set of instructions that the agent loads only when it needs them. You can create a skill once, keep it in a library, and attach it to any AI Agent action in Workflows. What’s new Skills section in the AI Agent action The Skills...', '<p>AI Agents can now use <strong>skills</strong>. A skill is a reusable set of instructions that the agent loads only when it needs them. You can create a skill once, keep it in a library, and attach it to any AI Agent action in Workflows.</p>
<h2>What’s new</h2>
<h3>Skills section in the AI Agent action</h3>
<ul>
<li>The Skills section appears below Tools in the AI Agent action.</li>
<li>Each attached skill is listed, and you can edit or detach it from the list.</li>
</ul>
<h3>Ways to add a skill</h3>
<ul>
<li><strong>Create with AI:</strong> Answer a few questions about what the skill should do, when to use it, and what it must not do. Then review and create it.</li>
<li><strong>Write skill instructions:</strong> Provide a name, when the agent should use it, and the instructions.</li>
<li><strong>Add an existing skill:</strong> Search your skill library and attach a skill you already made.</li>
</ul>
<h3>Built-in skills</h3>
<p>Every account includes built-in skills that you can attach, edit, or delete like any other skill:</p>
<ul>
<li><strong>Humanizer:</strong> Reduces common signs of AI-generated writing.</li>
<li><strong>Write-well:</strong> Keeps messages clear, simple, and direct.</li>
<li><strong>Cold-email:</strong> Helps write first-touch and follow-up emails for leads who have not replied.</li>
<li><strong>Sms-writer:</strong> Helps write short, natural text messages.</li>
</ul>
<h3>Loads only when relevant</h3>
<ul>
<li>On each run, the agent checks the skill names and their “when to use” lines.</li>
<li>Full instructions load only when a skill matches the situation.</li>
<li>If more than one skill matches, the agent can use them together.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Open a workflow and add (or open) an AI Agent action.</li>
<li>Open the Skills section.</li>
<li>Click <strong>Add skill</strong> and choose how you want to add it.</li>
<li>Review the skill and attach it.</li>
<li>Save the action.</li>
</ol>
<h2>Example: one agent for different lead situations</h2>
<p>A heating and cooling company follows up on every quote request with an email and a text message. Some leads have urgent issues and need a different response.</p>
<p>They keep the main instructions simple (send an email and an SMS to confirm the request and offer a time to talk), and then attach skills like:</p>
<ul>
<li>Cold-email</li>
<li>Sms-writer</li>
<li>A custom skill for urgent service requests (for example: “no heat”, “no cooling”, “gas smell”, or “water leak”)</li>
</ul>
<p>This helps the same AI Agent handle routine requests and urgent requests consistently.</p>
<h2>Why this matters</h2>
<ul>
<li>Your main instructions can stay short.</li>
<li>Rules that apply only sometimes can live in skills.</li>
<li>You can fix or improve a skill once and reuse it across AI Agents.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Skills can be shared across actions and agents.</li>
<li>Detaching removes a skill from one action; deleting removes it from the library.</li>
<li>Skills guide the agent, but the agent still needs the right tools (like Send SMS) to take action.</li>
<li>If a skill needs knowledge base information, include the knowledge base details in the skill and add the knowledge base search tool to the action.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:49:14.000Z'),
('wp-1664', 'Router action: run every matching workflow branch', 'Leadli now includes a Router action for workflows. It sends one contact through every branch they match, in the order you set. What changed Previously, If/Else would send a contact into the first matching branch and skip the rest. The Router action checks every branch and runs ea...', '<p>Leadli now includes a Router action for workflows. It sends one contact through every branch they match, in the order you set.</p>
<h2>What changed</h2>
<p>Previously, If/Else would send a contact into the first matching branch and skip the rest. The Router action checks every branch and runs each branch that matches, one after another.</p>
<h2>Branch types</h2>
<ul>
<li><strong>Custom rules:</strong> runs only when the branch conditions match.</li>
<li><strong>Always run:</strong> runs for every contact, with no conditions.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;