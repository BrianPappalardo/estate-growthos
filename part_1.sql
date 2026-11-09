INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1694', 'New in Leadli Communities: custom levels and point sources', 'Leadli Communities now includes expanded gamification settings. Admins can define custom levels, control how members earn points, and reward the actions that matter most from one settings area. What’s included Custom levels Define up to 9 levels for your community. Each level can...', '<p>Leadli Communities now includes expanded gamification settings. Admins can define custom levels, control how members earn points, and reward the actions that matter most from one settings area.</p>
<h2>What’s included</h2>
<h3>Custom levels</h3>
<p>Define up to 9 levels for your community. Each level can have its own name and point threshold. Members move through levels automatically as they earn points. The default levels can be edited so they match your community’s style and goals.</p>
<h3>Configurable point sources</h3>
<p>Choose exactly how members earn (or lose) points. Point sources can be configured across these categories:</p>
<ul>
<li><strong>Posts</strong>: Reward publishing content, with separate values for text, media, and audio posts.</li>
<li><strong>Participation</strong>: Award points for commenting and successful referral invites.</li>
<li><strong>Moderation</strong>: Deduct points when an admin confirms content as spam.</li>
<li><strong>Reactions received</strong> (optional): Award points when someone reacts to a member’s post or comment.</li>
<li><strong>Course completion</strong>: Assign point values to specific courses, set per course.</li>
</ul>
<p>Set any value to 0 to disable that action.</p>
<h2>How to configure</h2>
<ol>
<li>Go to <strong>Settings &gt; Gamification &amp; Rewards</strong>.</li>
<li>Open the <strong>Levels</strong> tab to rename levels and adjust point thresholds.</li>
<li>Open the <strong>Point Sources</strong> tab to set point values for each action.</li>
<li>If needed, enable <strong>Reactions received</strong> and add courses with custom completion points.</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Active communities are built by reinforcing the right behaviors. These settings help you encourage posting, engagement, referrals, and course completion, while reducing spam.</p>
<h2>Notes</h2>
<ul>
<li>All point values and level thresholds are customizable.</li>
<li>Members move between levels automatically as total points change.</li>
<li>Course completion points apply only to courses you add.</li>
<li>Updates to the Rewards tab configuration are planned.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T16:07:16.000Z'),
('wp-1693', 'GoKollab: App banner added to the mobile website', 'A new app banner is now shown on the GoKollab mobile website. It helps members install the app or open it directly, without losing the page they are viewing. What’s new App banner across the mobile site: A dismissible banner appears at the bottom of mobile pages and provides a cl...', '<p>A new app banner is now shown on the GoKollab mobile website. It helps members install the app or open it directly, without losing the page they are viewing.</p>
<h3>What’s new</h3>
<ul>
<li><strong>App banner across the mobile site:</strong> A dismissible banner appears at the bottom of mobile pages and provides a clear path to the native app.</li>
<li><strong>Smart detection and redirection:</strong> If the app is installed, the banner opens it using deep links. If it is not installed, the banner sends members to the Apple App Store on iOS or Google Play Store on Android.</li>
<li><strong>Seamless web-to-app navigation:</strong> Deep links keep the current page context so members land on the same community, discussion, or page they were viewing on the web.</li>
</ul>
<h3>Why this matters</h3>
<p>Previously, members browsing on mobile web did not have an easy way to discover or switch to the GoKollab app. This banner provides a consistent, one-tap way to move from web to app.</p>
<h3>Notes</h3>
<ul>
<li>The banner appears on all GoKollab mobile web pages.</li>
<li>Members can dismiss the banner if they prefer to stay on the mobile web.</li>
<li>Deep linking helps keep members on the same content when switching from web to app.</li>
<li>Supports both iOS (App Store) and Android (Play Store).</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T15:39:55.000Z'),
('wp-1692', 'Automatic welcome messages and onboarding steps in Communities', 'First impressions matter. You can now set up automated welcome direct messages and onboarding steps that greet new members as soon as they join, helping them get started in your community. What’s new Automatic welcome DM to new members Send an automatic welcome message to each ne...', '<p>First impressions matter. You can now set up automated welcome direct messages and onboarding steps that greet new members as soon as they join, helping them get started in your community.</p>
<h2>What’s new</h2>
<h3>Automatic welcome DM to new members</h3>
<p>Send an automatic welcome message to each new member who joins your community.</p>
<ul>
<li>Configure this in <strong>Settings → Welcome Setup</strong>.</li>
<li>Choose which admin or owner appears as the sender.</li>
<li>Write the message using the rich text editor (bold, italic, underline, strikethrough, links, and attachments).</li>
<li>Use <strong>@Member name</strong> to insert the member’s name.</li>
<li>Turn the feature on or off at any time.</li>
</ul>
<h3>Onboarding steps (up to 5)</h3>
<p>Guide new members through their first actions with a checklist that can include up to 5 steps. When enabled, eligible new members will see a “Get Started” checklist on the community home/feed.</p>
<p>Examples of steps you can include:</p>
<ul>
<li>Update profile</li>
<li>Engage with a post</li>
<li>RSVP to an event</li>
<li>Watch an introductory video</li>
<li>Add a custom step (optionally with a link)</li>
</ul>
<p>Members can complete steps from the checklist, track progress, and dismiss it when finished. Steps can be reordered and customized.</p>
<h2>How to configure</h2>
<h3>Automatic DM</h3>
<ol>
<li>Go to <strong>Settings → Welcome Setup</strong>.</li>
<li>Turn on <strong>Auto DM to new members</strong>.</li>
<li>Select which admin or owner should appear as the sender.</li>
<li>Write your welcome message. Type <strong>@</strong> to insert the member’s name.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h3>Onboarding steps</h3>
<ol>
<li>On the same <strong>Welcome Setup</strong> page, turn on <strong>Onboarding steps</strong>.</li>
<li>Click <strong>+ Add</strong> to create your first step.</li>
<li>Add up to 5 steps and choose the actions you want new members to complete.</li>
<li>Reorder steps if needed.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>When new members are not sure what to do first, they often disengage early. A structured welcome message and a simple checklist give them clear next steps, which helps improve early engagement and participation.</p>
<h2>Notes</h2>
<ul>
<li>Automatic DMs support rich text formatting, links, mentions, and media attachments.</li>
<li>The sender can be any admin or owner in the community.</li>
<li>Onboarding steps support up to 5 actions per community.</li>
<li>Members see the onboarding checklist on the community home/feed and can dismiss it after completing the steps.</li>
<li>Both features can be enabled independently or together.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-09T15:36:02.000Z'),
('wp-1691', 'Workflow AI can now answer questions about your contacts, versions, and performance', 'You can now ask Workflow AI what happened in a workflow, and it will explain it clearly. The chat can trace a contact’s path, follow a contact across workflows, compare versions, compare workflows, and generate a PDF report. This helps you avoid jumping between Enrollment History...', '<p>You can now ask Workflow AI what happened in a workflow, and it will explain it clearly. The chat can trace a contact’s path, follow a contact across workflows, compare versions, compare workflows, and generate a PDF report. This helps you avoid jumping between Enrollment History, Execution Logs, and Version History to piece together what happened.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;