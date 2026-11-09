INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Go to Community &gt; Settings &gt; Badges.</li>
<li>Enable the one-time or engagement triggers you want to use.</li>
<li>Set the qualification threshold and select a badge for each trigger.</li>
<li>Create or customize badge templates under Memberships &gt; Credentials.</li>
</ul>
<p>After setup, qualifying members will be recognized automatically and can choose an earned badge to display on their profile.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-10-27T17:49:20.000Z'),
('wp-1631', 'Introducing Meeting Room in Leadli', 'Meeting Room is a built-in video conferencing experience in Leadli. It brings scheduling, video calls, collaboration, recordings, transcripts, and AI summaries together in one place. What you can do Create a personal meeting room with a permanent, reusable link. Start instant mee...', '<p>Meeting Room is a built-in video conferencing experience in Leadli. It brings scheduling, video calls, collaboration, recordings, transcripts, and AI summaries together in one place.</p>
<h2>What you can do</h2>
<ul>
<li>Create a personal meeting room with a permanent, reusable link.</li>
<li>Start instant meetings without scheduling an appointment.</li>
<li>Automatically generate unique Meeting Room links for calendar appointments.</li>
<li>Invite guests with a link (no account required).</li>
<li>Host HD video and audio calls with screen sharing and live chat.</li>
<li>Assign co-hosts and manage participant microphones, cameras, and screen-sharing permissions.</li>
<li>Use waiting rooms and passcodes for added security.</li>
<li>Use reactions, hand raising, and flexible meeting layouts to collaborate.</li>
<li>Upload custom backgrounds when signed in.</li>
<li>Use picture-in-picture mode to keep a meeting visible while you work.</li>
</ul>
<h2>Recordings and meeting history</h2>
<p>You can record meetings and review them later in Meeting History. When available, a meeting may include:</p>
<ul>
<li>Recordings</li>
<li>Speaker-labeled transcripts</li>
<li>Participant and meeting details</li>
</ul>
<h2>AI meeting summaries</h2>
<p>If a transcript is available, you can generate an AI summary to quickly review:</p>
<ul>
<li>Key takeaways</li>
<li>Action items and next steps</li>
<li>Important decisions and outcomes</li>
</ul>
<p>This can reduce time spent reviewing calls and help teams focus on follow-up.</p>
<h2>Common use cases</h2>
<ul>
<li>Sales calls and client consultations</li>
<li>Calendar-based client appointments</li>
<li>Team discussions and project reviews</li>
<li>Coaching sessions, training calls, and product demonstrations</li>
</ul>
<h2>Get started</h2>
<p>Go to Meeting Rooms in the side panel to create your personal meeting room or start an instant meeting.</p>
<p>To use Meeting Room for booked appointments, select Meeting Room as the meeting location when you configure your calendar.</p>
<p><em>Custom background uploads are available for signed-in users.</em></p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-27T17:49:11.000Z'),
('wp-1630', 'Breakout rooms are now available in Leadli Meeting Rooms', 'Breakout Rooms let you split a Meeting Room into smaller groups for focused discussions, activities, and collaboration. What you can do Create up to 100 breakout rooms in a single meeting. Assign participants automatically or manually. Let participants choose their own room (when...', '<p>Breakout Rooms let you split a Meeting Room into smaller groups for focused discussions, activities, and collaboration.</p>
<h2>What you can do</h2>
<ul>
<li>Create up to 100 breakout rooms in a single meeting.</li>
<li>Assign participants automatically or manually.</li>
<li>Let participants choose their own room (when enabled by the host).</li>
<li>Rename rooms and adjust assignments before starting the breakout session.</li>
</ul>
<h2>Host controls during a session</h2>
<ul>
<li>Move participants between rooms.</li>
<li>Join any breakout room.</li>
<li>Send a message to all rooms at once.</li>
<li>Set a session timer and extend it if needed.</li>
<li>Automatically bring everyone back to the main meeting when time is up.</li>
</ul>
<h2>Recordings and transcripts</h2>
<p>Recording and live transcription can be managed separately for each breakout room.</p>
<ul>
<li>Start or stop recording per room.</li>
<li>Enable or disable live transcription per room.</li>
<li>See which rooms are currently recording or transcribing.</li>
</ul>
<h2>Participant experience</h2>
<ul>
<li>Join an assigned room with one click (or be moved automatically).</li>
<li>Switch rooms when the host allows it.</li>
<li>Get a countdown reminder before the breakout session ends.</li>
<li>Return to the main meeting automatically or with one click.</li>
</ul>
<h2>How to start</h2>
<p>While hosting a Meeting Room, select <strong>Breakout Rooms</strong> from the meeting toolbar. Create the rooms, choose how participants should be assigned, and start the breakout session.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:48:10.000Z'),
('wp-1629', 'Inbox Preview: See how your emails look in real inboxes', 'Overview Inbox Preview lets you check how an email will look in common email clients before you send it. This helps you catch formatting and rendering issues early. What this feature includes Real email client previews Preview your email in clients such as Gmail, Outlook, and App...', '<h2>Overview</h2>
<p>Inbox Preview lets you check how an email will look in common email clients before you send it. This helps you catch formatting and rendering issues early.</p>
<h2>What this feature includes</h2>
<h3>Real email client previews</h3>
<ul>
<li>Preview your email in clients such as Gmail, Outlook, and Apple Mail.</li>
<li>Review real client rendering rather than only simulated device previews.</li>
<li>Optionally preview as a specific contact to see personalization filled in.</li>
</ul>
<h3>Compare across multiple clients</h3>
<ul>
<li>Select the clients you want to test (or start with a recommended set).</li>
<li>Filter by device type (web, desktop, mobile) and by light/dark mode.</li>
<li>Compare layouts across clients to find differences in formatting and design.</li>
<li>Open a preview in full size and switch between clients for review.</li>
</ul>
<h3>Spot problems before you send</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;