INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1174', 'Enhanced affiliate commission splits', 'Leadli has updated affiliate commission splits to support more flexible and accurate attribution. What changed Three-way commission splits Commissions can now be automatically split across up to three promoters when multiple affiliates contribute to the same customer. Downgrade h...', '<p>Leadli has updated affiliate commission splits to support more flexible and accurate attribution.</p>
<p><strong>What changed</strong></p>
<p><strong>Three-way commission splits</strong><br />Commissions can now be automatically split across up to three promoters when multiple affiliates contribute to the same customer.</p>
<p><strong>Downgrade handling</strong><br />When a customer downgrades, commission splits are recalculated based on actual affiliate contribution so commissions reflect the customer’s current plan.</p>
<p>This update supports new leads and existing leads that do not already have commission splits.</p>
<p>A migration for existing records that need three-way splits is planned next.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1173', 'Delete published posts directly from Social Planner', 'You can now delete published posts directly from Social Planner. Where supported, you can also remove the post from the social network at the same time. What’s new Delete published posts from supported social networks Delete a published post from Social Planner, and choose whethe...', '<p>You can now delete published posts directly from Social Planner. Where supported, you can also remove the post from the social network at the same time.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Delete published posts from supported social networks</strong><br />Delete a published post from Social Planner, and choose whether to remove it only in Social Planner or also from the connected social platform (for example, Facebook or LinkedIn).</li>
<li><strong>Works across multiple platforms</strong><br />Native deletion is supported for Facebook, LinkedIn, Google Business Profile, YouTube, Pinterest, Threads, Bluesky, and Community. For platforms that don’t support third-party deletion (such as Instagram and TikTok), you can still remove the post from Social Planner while it remains live on the platform.</li>
<li><strong>Delete any post status</strong><br />The same delete flow works for draft, scheduled, and published posts.</li>
<li><strong>Reconnect flow if access expires</strong><br />If a connected social account expires or disconnects, you’ll be prompted to reconnect and then continue the deletion process.</li>
<li><strong>Consistent experience</strong><br />The delete workflow is available from both the Post List view and the Calendar view.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Go to Marketing → Social Planner.</li>
<li>Find the post you want to delete.</li>
<li>Open the three-dot menu and select <strong>Delete</strong>.</li>
<li>(Optional) Enable deleting the post from the selected social platform.</li>
<li>Confirm deletion.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Native platform deletion depends on each platform’s API support.</li>
<li>Instagram and TikTok do not currently allow third-party post deletion.</li>
<li>Reconnect prompts appear automatically when account access expires.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1195', 'Retry and reschedule failed Social Planner posts', 'You can now retry or reschedule failed publishing attempts in Social Planner without cloning posts or rebuilding content. What’s new Retry a failed post Open the failed post and select Retry Now to try publishing again using the original content, settings, and connected accounts....', '<p>You can now retry or reschedule failed publishing attempts in Social Planner without cloning posts or rebuilding content.</p>
<h2>What’s new</h2>
<h3>Retry a failed post</h3>
<ul>
<li>Open the failed post and select <strong>Retry Now</strong> to try publishing again using the original content, settings, and connected accounts.</li>
<li>If the retry succeeds, the post moves to <strong>Published</strong> automatically.</li>
</ul>
<h3>Reschedule a failed post</h3>
<ul>
<li>Select <strong>Reschedule Post</strong> and choose a new date and time.</li>
<li>The post moves back to <strong>Scheduled</strong> and publishes at the updated time.</li>
</ul>
<h3>Quick recovery actions</h3>
<p>Failed posts include recovery actions directly in the post actions menu. You can access them from:</p>
<ul>
<li>List view</li>
<li>Grid view</li>
<li>Post preview</li>
</ul>
<h2>How to use this feature</h2>
<ol>
<li>Go to <strong>Marketing → Social Planner</strong>.</li>
<li>Open the <strong>Failed Posts</strong> section.</li>
<li>Click the 3-dot menu on a failed post.</li>
<li>Choose <strong>Retry Now</strong> or <strong>Reschedule Post</strong>, then confirm.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Recover from publishing failures faster</li>
<li>Avoid cloning posts to fix temporary issues</li>
<li>Keep campaigns running with less disruption</li>
<li>Reduce support requests for common publishing problems</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This is available only for posts in the <strong>Failed</strong> state.</li>
<li>Bulk retry is not included in this release.</li>
<li>Automatic retries are not currently supported.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:27.000Z'),
('wp-1194', 'YouTube previews now display correctly in sent emails', 'YouTube previews now display correctly in sent emails. When you paste a YouTube link into an email from Conversations, recipients will see a clickable video thumbnail that opens the video in a new tab. In the past, some pasted YouTube links could appear as a blank rectangle in ce...', '<p>YouTube previews now display correctly in sent emails.</p>
<p>When you paste a YouTube link into an email from Conversations, recipients will see a clickable video thumbnail that opens the video in a new tab.</p>
<p>In the past, some pasted YouTube links could appear as a blank rectangle in certain inboxes, even when the preview looked correct while composing. This was caused by major email providers (such as Gmail, Outlook, and Yahoo) blocking embedded video players. This update changes how previews are sent so they display more reliably across major inboxes.</p>
<p>This works with both standard YouTube watch links and shortened YouTube share links. There is no change to how you add videos—paste the link as you normally do.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:27.000Z'),
('wp-1215', 'Faster contact management in the Leadli mobile app', 'Contacts in the Leadli mobile app are now faster to navigate, more consistent, and easier to manage. What’s updated Contact list: Updated header, search, smart list picker, swipe actions, and improved empty states. Contact card: A redesigned profile card that keeps the avatar, ow...', '<p>Contacts in the Leadli mobile app are now faster to navigate, more consistent, and easier to manage.</p>
<p><strong>What’s updated</strong></p>
<ul>
<li><strong>Contact list:</strong> Updated header, search, smart list picker, swipe actions, and improved empty states.</li>
<li><strong>Contact card:</strong> A redesigned profile card that keeps the avatar, owner, followers, and tags in one clear layout.</li>
<li><strong>Profile header:</strong> The Edit button is front and center, with a menu for Share, Do Not Disturb, and Delete.</li>
<li><strong>Details tab:</strong> Search within fields and folders, filters to show or hide empty fields, and inline editing.</li>
<li><strong>Folder structure:</strong> Expandable folders with tap-to-edit for any field, plus copy and map actions.</li>
<li><strong>Contact tabs:</strong> Activity, Tasks, Notes, Appointments, Payments, Docs &amp; Files, and Opportunities have been updated. Tasks and Opportunities now show counts on their tabs.</li>
<li><strong>Create and edit:</strong> Refreshed forms, tag editor, Do Not Disturb settings, automations, and profile photo options.</li>
<li><strong>List interactions:</strong> Swipe for Call, Message, Share, Delete, and More (copy name, email, phone, address, or all details).</li>
</ul>
<p><strong>How this helps</strong></p>
<ul>
<li>Edit is easier to find and use.</li>
<li>Quick actions from the contact list reduce extra taps.</li>
<li>Task and opportunity counts help you see what needs attention.</li>
<li>Searching and filtering makes it faster to find the right fields.</li>
<li>Copying and mapping information is more direct.</li>
<li>Expandable folders make custom fields easier to work with while you stay in context.</li>
<li>Profile photos can be added, updated, or removed from the camera or gallery.</li>
<li>The list, profile, edit flows, and tabs use a consistent design.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;