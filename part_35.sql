INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;