INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Go to <strong>Labs → Subaccounts → Discovery of Course and Offers</strong> and enable the feature.</li>
<li>Go to <strong>Client Portal → Settings → App permissions</strong> and enable Discover.</li>
<li>Open a course’s <strong>Pricing</strong> tab or a published offer and enable <strong>Show in Discover</strong>.</li>
<li>If you want, set Discover as the default landing page for learners.</li>
</ol>
<p><strong>Availability:</strong> Currently available under Labs.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-28T09:32:07.000Z'),
('wp-1644', 'Use Leadli AI Computer from the mobile app', 'AI Computer is now available in the Leadli mobile app. It gives you access to the same private cloud machine you use on the web, so AI can browse in a real Chrome browser, fill in forms, run code, and work with files while you watch from your phone. What’s new Start from any chat...', '<p>AI Computer is now available in the Leadli mobile app. It gives you access to the same private cloud machine you use on the web, so AI can browse in a real Chrome browser, fill in forms, run code, and work with files while you watch from your phone.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Start from any chat:</strong> Each new chat shows a Computer option above the message box. You can also open the Computer’s own chat from History.</li>
<li><strong>Watch live:</strong> Open the browser full screen to see the desktop. A status line shows whether it’s working, idle, done, needs input, or you are in control.</li>
<li><strong>Take over on mobile:</strong> Tap to click, use two fingers to scroll, and type with your phone keyboard. When you are finished, hand control back and it continues.</li>
<li><strong>Keep chatting while it runs:</strong> A live status indicator stays available across chats so you can jump back to the Computer at any time.</li>
<li><strong>Approve actions as needed:</strong> When it pauses to ask, you can approve, deny, or allow an action for the current chat. You can review and revoke allowed actions in Settings.</li>
<li><strong>Private sign-ins:</strong> Sign-in details are entered through a private form and sent directly to the site, not through chat.</li>
<li><strong>Secure Store for logins:</strong> Save logins and choose whether they are never used, used after asking, or used on matching sites. Saved passwords are not filled on look-alike sites.</li>
<li><strong>Secure Store on mobile:</strong> Add, edit, and delete saved logins for each sub-account.</li>
<li><strong>Files and results:</strong> Outputs like spreadsheets, documents, and PDFs appear as files in chat. Files you attach in chat are available to the Computer. A Files view shows recent files and storage usage.</li>
<li><strong>Activity log:</strong> Review the steps the Computer took, written in plain language.</li>
<li><strong>One conversation across devices:</strong> Messages sent on the web appear in the mobile chat. If the screen is open elsewhere, you can move it to your phone.</li>
<li><strong>Computer settings on mobile:</strong> Clear browsing data, set saved-login rules, review allowed actions, check storage, or reset one sub-account profile.</li>
<li><strong>Automatic recovery:</strong> If the Computer is asleep, you can turn it on and continue with files and sign-ins intact. If the connection drops, it reconnects. If a task stops early, you can resume.</li>
</ul>
<h3>Impact</h3>
<ul>
<li>Run tasks away from your desk by starting or continuing work from your phone.</li>
<li>Stay in control with live viewing, takeovers, and approvals.</li>
<li>Keep passwords out of chat, including on mobile.</li>
<li>Use the same access controls as the web experience, including agency switches and sub-account limits.</li>
</ul>
<h3>Example use case</h3>
<p>If a task needs a one-time code while you are away from your desk, you can open the live screen on your phone, take control to enter the code, and then hand control back so the task can finish.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T07:26:22.000Z'),
('wp-1643', 'Resizable panels in Conversations', 'Update You can resize the panels in Conversations to better match how you work. Drag the divider between the conversation list, the message thread, and the contact details panel to make any section wider or narrower. How to use it Open Conversations. Drag the resize handle left o...', '<p><strong>Update</strong></p>
<p>You can resize the panels in Conversations to better match how you work. Drag the divider between the conversation list, the message thread, and the contact details panel to make any section wider or narrower.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open Conversations.</li>
<li>Drag the resize handle left or right to adjust the width of each panel.</li>
</ul>
<p><strong>What to expect</strong></p>
<ul>
<li>Your panel sizes are saved, so your layout stays the same the next time you open Conversations.</li>
<li>Each panel has minimum and maximum widths to keep the layout readable.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>Different teams work in different ways. This makes it easier to focus on the conversation thread or review contact details without changing screens.</p>
', 'general', ARRAY['wp-import']::text[], '2026-10-28T05:58:10.000Z'),
('wp-1642', 'Google Sheets workflow triggers: new spreadsheets, rows, and worksheets', 'Summary You can now start a workflow in Leadli when something new happens in Google Sheets. This helps you move from data entry to the next step in your process without manual checks. What’s included There are three new Google Sheets triggers: New spreadsheet: Starts a workflow w...', '<p><strong>Summary</strong></p>
<p>You can now start a workflow in Leadli when something new happens in Google Sheets. This helps you move from data entry to the next step in your process without manual checks.</p>
<p><strong>What’s included</strong></p>
<p>There are three new Google Sheets triggers:</p>
<ul>
<li><strong>New spreadsheet:</strong> Starts a workflow when a new Google Sheets file is created in the selected Drive.</li>
<li><strong>New spreadsheet row:</strong> Starts a workflow when a new row is appended after the last row of a selected sheet/tab.</li>
<li><strong>New worksheet:</strong> Starts a workflow when a new tab is added to a selected spreadsheet.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>Teams often track leads, projects, and reports in Google Sheets. These triggers let Leadli react to new sheet activity right away, so your workflow can run automatically.</p>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong> and open the workflow you want to update.</li>
<li>Select <strong>Add Trigger</strong>, then find the Google Sheets triggers.</li>
<li>Choose the event (new spreadsheet, new row, or new worksheet).</li>
<li>Select the connected Google account and Drive. For row/worksheet triggers, select the spreadsheet; for the row trigger, also select the sheet/tab.</li>
<li>Use <strong>Find new records</strong> and map the fields you want to use in the next steps.</li>
<li>Save, test using <strong>Test &gt; Test using events</strong>, and then publish the workflow when ready.</li>
</ol>
<p><strong>Common use cases</strong></p>
<ul>
<li>Start a lead intake workflow when a new inquiry row is added to a sheet.</li>
<li>Start a monthly reporting workflow when a new month tab is created.</li>
<li>Kick off an internal workflow when a new spreadsheet is created in a specific Drive.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Google Sheets is marked as <strong>Premium</strong> in the workflow builder, so usage charges may apply.</li>
<li>The row trigger is based on row position. Appending rows at the bottom works best. Inserting or deleting rows can cause re-triggers or skipped rows.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T21:03:19.000Z'),
('wp-1641', 'Slack integration: 5 new workflow triggers', 'Leadli now lets you start workflows from Slack activity using five new instant triggers. You can use these triggers to turn Slack messages and reactions into automated steps, such as routing requests, welcoming teammates, or notifying the right person. To set this up, go to Autom...', '<p>Leadli now lets you start workflows from Slack activity using five new instant triggers.</p>
<p>You can use these triggers to turn Slack messages and reactions into automated steps, such as routing requests, welcoming teammates, or notifying the right person.</p>
<p>To set this up, go to <strong>Automation &gt; Workflows</strong>, open a workflow, click <strong>Add trigger</strong>, and search for <strong>Slack</strong>. Then choose a trigger and select your connected Slack account.</p>
<ul>
<li><strong>New direct message:</strong> Start a workflow when someone sends a direct message to your Slack app (bot).</li>
<li><strong>User invited to channel:</strong> Start a workflow when a user joins or is invited to a selected channel.</li>
<li><strong>New mention:</strong> Start a workflow when your Slack app (bot) is mentioned in a channel it has been added to.</li>
<li><strong>New message posted to channel:</strong> Start a workflow when a new message is posted to a selected public or private channel.</li>
<li><strong>New reaction added:</strong> Start a workflow when a reaction is added to a message in a selected channel.</li>
</ul>
<p>After you choose a trigger, configure the channel and any available filters.</p>
<p><strong>Common use cases</strong></p>
<ul>
<li><strong>Route incoming requests:</strong> Notify a triage channel when someone messages or mentions your Slack app.</li>
<li><strong>Welcome new teammates:</strong> Post an onboarding message when a user joins your team’s channel.</li>
<li><strong>Follow up on feedback:</strong> Alert reviewers when a message in a review channel receives a reaction.</li>
<li><strong>Keep teams informed:</strong> Notify another team when a new message is posted to a shared request channel.</li>
</ul>
<p><strong>Notes</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;