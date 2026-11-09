INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Review any step:</strong> Open a step to review the email, change the template, or adjust details.</li>
<li><strong>You stay in control:</strong> Nothing is sent until you confirm the audience and start time.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to <strong>Marketing &gt; Emails &gt; Email sequences</strong>.</li>
<li>Click <strong>Create with AI</strong>.</li>
<li>Describe the sequence you want, or choose a suggested idea.</li>
<li>Answer the questions about the audience, sender, and start time.</li>
<li>Review the steps, then confirm to schedule the sequence.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li><strong>Faster setup:</strong> One prompt becomes a complete multi-step sequence.</li>
<li><strong>Consistent branding:</strong> Emails use your Brand Board settings by default.</li>
<li><strong>Clear review process:</strong> You can review each step before anything is sent.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Sequences send only after you confirm, and you can pause a sequence at any time to edit its steps.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:13:16.000Z'),
('wp-1633', 'Email AI Editor (Labs): Create a send-ready email from a short description', 'Email AI Editor lets you generate a complete email layout from a short description. After it generates the draft, you can refine the email by chatting, editing the HTML, making visual adjustments, or switching to the design editor. Walkthrough video What’s included Start from a p...', '<p>Email AI Editor lets you generate a complete email layout from a short description. After it generates the draft, you can refine the email by chatting, editing the HTML, making visual adjustments, or switching to the design editor.</p>
<p><a href="https://drive.google.com/file/d/13uxmpAYIQmQuPfk8RJnsizJ2M8UPii9r/view?usp=sharing" rel="ugc nofollow noopener noreferrer" target="_blank">Walkthrough video</a></p>
<h3>What’s included</h3>
<ul>
<li><strong>Start from a prompt or idea:</strong> Describe the email in plain language, or start from a suggested idea.</li>
<li><strong>Generates a full email draft:</strong> Produces a layout with common sections like a header, content blocks, calls to action, and a footer.</li>
<li><strong>Uses your brand settings:</strong> Applies your Brand Board (logo and brand colors) by default.</li>
<li><strong>Personalization:</strong> Supports merge fields such as <code>Brian</code>.</li>
<li><strong>Chat-based editing:</strong> Ask for changes (for example, changing a color) and the editor updates the relevant elements.</li>
<li><strong>Code view:</strong> Edit HTML with a live preview.</li>
<li><strong>Visual edits:</strong> Adjust typography, colors, spacing, and borders.</li>
<li><strong>Design editor option:</strong> Open a copy in the drag-and-drop design editor at any time.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Marketing &gt; Emails</strong>.</li>
<li>Click <strong>Create with AI</strong>.</li>
<li>Enter a short description (or pick a suggested idea).</li>
<li>Refine the result using chat, code view, visual edits, or the design editor.</li>
</ol>
<h3>Why this is useful</h3>
<ul>
<li><strong>Faster email creation:</strong> A short prompt becomes a structured email draft.</li>
<li><strong>Less manual design work:</strong> You can make changes through chat, visual edits, or HTML.</li>
<li><strong>More consistent branding:</strong> Your Brand Board is applied automatically.</li>
</ul>
<h3>Good to know</h3>
<ul>
<li>Keep your Brand Board up to date so the editor uses your latest logo and colors.</li>
<li>When you switch to the design editor, it creates a copy of the email, and the converted layout may differ slightly.</li>
</ul>
<p>Learn more: <a href="https://help.leadli.com/support/solutions/articles/155000009290" rel="ugc nofollow noopener noreferrer" target="_blank">Email AI help article</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:08:21.000Z'),
('wp-1632', 'Community badges are now available', 'Badges are now available in Leadli Communities. You can automatically recognize members when they reach milestones or stay active through posts, comments, reactions, and consistent participation. Badges make recognition visible across the community and give members clear goals to...', '<p>Badges are now available in Leadli Communities. You can automatically recognize members when they reach milestones or stay active through posts, comments, reactions, and consistent participation.</p>
<p>Badges make recognition visible across the community and give members clear goals to work toward.</p>
<h2>What&#8217;s included</h2>
<ul>
<li>Automatically award badges based on milestones and engagement.</li>
<li>Show one selected badge next to a member&#8217;s name in the feed, comments, and the member list.</li>
<li>Let members view earned badges and progress from the Badges tab on their profile.</li>
<li>Notify members when they earn a badge.</li>
<li>Send an almost there notification when a member reaches 80% of a badge requirement.</li>
<li>Filter the member list by badge and see how many members currently have each badge.</li>
<li>Refresh engagement badges every quarter to keep recognition timely.</li>
</ul>
<h2>Badge types</h2>
<p><strong>One-time badges</strong></p>
<ul>
<li>Group Admin: Awarded when a member becomes a community admin.</li>
<li>Newbie: Awarded when a member joins the community.</li>
<li>Founding Member: Awarded to qualifying early members.</li>
</ul>
<p><strong>Engagement badges</strong></p>
<p>These badges refresh quarterly based on member activity:</p>
<ul>
<li><strong>Always On</strong>: Earned by posting, commenting, or reacting for a set number of consecutive days.</li>
<li><strong>Top Contributor</strong>: Earned after publishing a set number of comments.</li>
<li><strong>Power User</strong>: Earned after publishing a set number of posts.</li>
<li><strong>Crowd Favourite</strong>: Earned after receiving a set number of likes across posts.</li>
</ul>
<h2>Member experience</h2>
<ul>
<li>Members can see badges next to other members&#8217; names throughout the community.</li>
<li>Members can track earned badges and progress toward the next badge.</li>
<li>Members can receive notifications when they are close to earning a badge or when they earn one.</li>
<li>Members can choose which earned badge appears next to their name.</li>
</ul>
<h2>Admin setup</h2>
<p>Admins can configure badge automation under Community &gt; Settings &gt; Badges.</p>
<p>For each trigger, admins can:</p>
<ul>
<li>Turn automatic awarding on or off.</li>
<li>Set the milestone or engagement threshold.</li>
<li>Select which badge members will receive.</li>
<li>Update the badge design under Memberships &gt; Credentials.</li>
</ul>
<p>If a trigger is enabled, members who already meet the requirements will receive the badge.</p>
<h2>How to get started</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;