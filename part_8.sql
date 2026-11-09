INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
', 'general', ARRAY['wp-import']::text[], '2026-10-30T12:37:37.000Z'),
('wp-1673', 'Mobile: View every call recording in Leadli (not just the first)', 'Leadli mobile now shows every recording on a call, not just the first one. Each recording plays on its own and can have its own transcript, so transferred or multi-leg calls don’t hide the part you need. How to use this Open Recents, a contact’s Call Details, or the call in Conve...', '<p>Leadli mobile now shows every recording on a call, not just the first one. Each recording plays on its own and can have its own transcript, so transferred or multi-leg calls don’t hide the part you need.</p>
<p><strong>How to use this</strong></p>
<ol>
<li>Open Recents, a contact’s Call Details, or the call in Conversations.</li>
<li>Find a call that has more than one recording.</li>
<li>Play each recording (look for the 1/2 and 2/2 labels) and read the matching transcript in Conversations.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li>Calls with a single recording look the same as before.</li>
<li>A transcript appears only when one is available for that recording.</li>
<li>Available on Leadli, LeadConnector, and white-label mobile apps (iOS and Android) version 4.27.x or later.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-30T09:48:16.000Z'),
('wp-1672', 'See who answered each call on mobile in Leadli', 'You can now see who answered each call and which device they used. In the mobile app call details, Leadli shows the person who actually picked up the call (not just the user the conversation is assigned to). What''s new Answered by in call details: shows the teammate name, or the ...', '<p>You can now see who answered each call and which device they used.</p>
<p>In the mobile app call details, Leadli shows the person who actually picked up the call (not just the user the conversation is assigned to).</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Answered by</strong> in call details: shows the teammate name, or the phone number if no teammate answered</li>
<li><strong>Answering device</strong> at a glance: shows where it was picked up (web app, mobile app, phone number, or SIP)</li>
<li><strong>Works across call types</strong>: regular calls, IVR, and WhatsApp calls</li>
</ul>
<h2>Why it matters</h2>
<p>With ring groups and call forwarding, the assigned user and the person who answered can be different. Previously on mobile, it was not clear who took the call. This update makes it clear so you can follow up faster and coach more effectively.</p>
<h2>How to use</h2>
<ol>
<li>Open Conversations and open a conversation that includes a call</li>
<li>Long-press the call message and select <strong>Details</strong></li>
<li>Review <strong>Answered by</strong> and the device indicator</li>
</ol>
<h2>Availability</h2>
<ul>
<li><strong>Version:</strong> 4.27.x+</li>
<li><strong>Platforms:</strong> Leadli, LeadConnector, and White-Label (self-serve)</li>
<li><strong>Devices:</strong> iOS and Android</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>If a call is answered on a phone number, numbers are masked</li>
<li>If the device is unknown, no device indicator is shown</li>
</ul>
<h2>What&#8217;s next</h2>
<p>This same call context will be added to call logs so you can understand a call without opening Conversations.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-30T09:40:20.000Z'),
('wp-1671', 'Analyze videos in workflows with the AI Analyze Video action', 'Workflows can now analyze video using the AI Analyze Video action under AI Actions . Provide a video URL and a prompt, and the system will review the video and return a text response you can use in later steps. Note: This is a premium action. Each execution may have an additional...', '<p>Workflows can now analyze video using the <strong>AI Analyze Video</strong> action under <strong>AI Actions</strong>. Provide a video URL and a prompt, and the system will review the video and return a text response you can use in later steps.</p>
<p><strong>Note:</strong> This is a premium action. Each execution may have an additional charge.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Model options:</strong> Choose between two Gemini models (a default option and a lighter option).</li>
<li><strong>YouTube support:</strong> You can use public YouTube links, including standard and Shorts formats.</li>
<li><strong>Direct video files:</strong> You can also use public links to common formats like MP4 and MOV.</li>
<li><strong>Dynamic video URLs:</strong> You can insert a URL from an earlier step, a form submission, a webhook, or a custom value.</li>
<li><strong>Flexible prompts:</strong> Ask for a summary, a transcript, a timestamped list, or a simple yes/no check. Prompts can include custom values.</li>
<li><strong>Built-in testing:</strong> You can test the action in the builder using sample trigger data and review the response before publishing.</li>
</ul>
<h2>Pricing</h2>
<p>Video analysis is billed per execution based on tokens consumed. Cost depends mainly on the model you select, the video length, and the length of the response you request.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add <strong>AI Analyze Video</strong> from <strong>AI Actions</strong>.</li>
<li>Select the model.</li>
<li>Add a <strong>public</strong> video URL.</li>
<li>Write the analysis prompt (what to look for and how to respond).</li>
<li>Use the <strong>Test</strong> tab to run a quick test and review the response (optional).</li>
<li>Save the action and use the response in the steps that follow.</li>
</ol>
<p><strong>Important:</strong> The video URL must be public. Some sites block direct analysis from page links, so use a supported public video link instead.</p>
<h2>Why this matters</h2>
<p>Previously, a video link inside a workflow could not be automatically reviewed. With this action, workflows can read what is shown and said in the video, then take action based on the result.</p>
<p>You can save the output to a custom field, include it in an email or SMS, send it to a webhook, or pass it into another AI action.</p>
<h2>Good to know</h2>
<ul>
<li>Each execution analyzes a single video URL.</li>
<li>The response can include Markdown depending on your prompt. Ask for plain text if you need it.</li>
<li>Longer videos can take more time to process.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T19:32:30.000Z'),
('wp-1670', 'Service booking is now available in the Leadli Client Portal', 'Your clients can now discover, book, reschedule, and manage service appointments directly from the Leadli Client Portal. This keeps service booking and meeting management in one place, without separate booking links. What’s new Book services in the Client Portal — Clients can vie...', '<p>Your clients can now discover, book, reschedule, and manage service appointments directly from the Leadli Client Portal. This keeps service booking and meeting management in one place, without separate booking links.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Book services in the Client Portal</strong> — Clients can view available services, choose a date and time, and complete the booking from the portal.</li>
<li><strong>Faster booking</strong> — Client details are pre-filled, and your setup can allow booking one or multiple services.</li>
<li><strong>Reschedule and cancel</strong> — Clients can reschedule or cancel eligible bookings based on your calendar settings.</li>
<li><strong>All appointments in one view</strong> — Meetings and service bookings show together under <strong>Appointments</strong>, grouped into Upcoming and Past.</li>
<li><strong>Control visibility</strong> — You decide which service booking pages are available from the Client Portal.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, clients often needed separate booking links to schedule services. Now the Client Portal can be the central place where clients access services and manage appointments.</p>
<h2>How to enable it</h2>
<h3>Step 1: Enable service booking on a booking page</h3>
<ol>
<li>Go to <strong>Calendars → Services → Booking Pages</strong>.</li>
<li>Open the booking page you want to make available.</li>
<li>Under <strong>Client Portal</strong>, enable <strong>Allow booking from client portal</strong>.</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h3>Step 2: Enable Appointments in the Client Portal</h3>
<ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;