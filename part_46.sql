INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>Flagged content appears in a <strong>Needs review</strong> area so admins can:</p>
<ul>
<li>See which keyword triggered the flag</li>
<li>Preview the full post or comment</li>
<li>Approve and publish, or remove the content</li>
</ul>
<p>Flagged content remains invisible to other members until it is approved.</p>
<h2>Reported by members</h2>
<p>Member-reported posts and comments appear in a separate review area. Admins can review the full thread and choose to keep or remove the content.</p>
<h2>Author visibility</h2>
<p>Authors can still see their own pending posts with a clear <strong>In review</strong> status, while the content stays hidden from everyone else until approved.</p>
<h2>Notifications</h2>
<p>Admins can be notified when content is flagged so items can be reviewed promptly.</p>
<h2>Admin content is not blocked</h2>
<p>Posts and comments from admins and owners are not held for review. Moderation rules apply only to member-generated content.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Settings</strong> → <strong>Content Moderation</strong>.</li>
<li>In the <strong>Keywords</strong> tab, add flagged words/phrases or load the starter pack.</li>
<li>Optionally, test sample text using the rule-testing tool.</li>
<li>When a matching post or comment is submitted, it is held and shown in <strong>Needs review</strong>.</li>
<li>Review the item, then approve and publish or remove it.</li>
<li>Review member-reported content in the separate reporting area.</li>
</ol>
<h2>Improved post and comment search</h2>
<p>Search now better handles typos, alternate phrasing, synonyms, and accented or non-English text. Results are ranked by relevance so the best matches appear first.</p>
<h2>Notes</h2>
<ul>
<li>Keyword matching is case-insensitive. Phrases are recommended for better accuracy.</li>
<li>Flagged content is hidden from members until an admin approves it.</li>
<li>Admins and owners are not subject to moderation holds.</li>
<li>Additional spam detection improvements may be added in the future.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T13:37:08.000Z'),
('wp-1452', 'Course filtering in Leadli Communities', 'Members can now filter and sort courses on the Learning page. This makes it easier to find the right content as your community course library grows. What’s included Filter by topic, difficulty, and language: Members can select one or more values across these filters to narrow res...', '<p>Members can now filter and sort courses on the Learning page. This makes it easier to find the right content as your community course library grows.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Filter by topic, difficulty, and language:</strong> Members can select one or more values across these filters to narrow results.</li>
<li><strong>Sort courses:</strong> Members can sort the course list by title (A–Z or Z–A), newest, or oldest.</li>
<li><strong>Available on mobile:</strong> The same filtering options are available in the Leadli mobile app.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Filters are based on the topic, difficulty, and language values set on each course in the course builder.</li>
<li>Multiple filters can be combined to get more specific results.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T13:33:08.000Z'),
('wp-1451', 'Dark mode is now available for Communities and Courses in GoKollab', 'Communities and Courses now support Dark Mode on the GoKollab web experience. Members can switch to a darker appearance, and community owners can set separate light and dark brand color palettes. What’s included Dark Mode for members Switch between Light and Dark from the top nav...', '<p>Communities and Courses now support Dark Mode on the GoKollab web experience. Members can switch to a darker appearance, and community owners can set separate light and dark brand color palettes.</p>
<h2>What’s included</h2>
<h3>Dark Mode for members</h3>
<ul>
<li>Switch between Light and Dark from the top navigation.</li>
<li>Your selection is saved and stays in effect after refreshes.</li>
</ul>
<h3>Separate light and dark branding for owners</h3>
<ul>
<li>Set up and preview Light and Dark palettes independently in <strong>Settings → Appearance</strong>.</li>
<li>Updating one palette does not overwrite the other.</li>
<li>Use a preset theme or customize colors.</li>
</ul>
<h3>Coverage across the community experience</h3>
<p>Dark Mode applies across posts, comments, channels, chats, member lists, events, calendars, mentions, attachments, About pages, and community cards.</p>
<h3>Learning experience</h3>
<p>Courses, lessons, assessments, assignments, quizzes, and live sessions remain readable and consistent in Dark Mode.</p>
<h3>Discovery and shell</h3>
<p>Dark Mode also applies to platform areas such as discovery, onboarding, pricing, integrations, information pages, and account surfaces.</p>
<h2>How to use it</h2>
<h3>For members</h3>
<ol>
<li>Open a community on the web.</li>
<li>Use the appearance switcher in the top navigation.</li>
<li>Select <strong>Dark Mode</strong>.</li>
</ol>
<h3>For community owners</h3>
<ol>
<li>Open your community settings.</li>
<li>Go to <strong>Settings → Appearance</strong>.</li>
<li>Choose Light or Dark mode.</li>
<li>Select a preset theme or customize the palette.</li>
<li>Preview changes, then save.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Dark Mode is currently available on the web experience.</li>
<li>Light and Dark palettes are configured independently.</li>
<li>Member preferences persist across sessions.</li>
<li>Some areas (for example, Studio navigation) may not fully retain the setting during navigation yet.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-23T12:25:05.000Z'),
('wp-1450', 'Opportunities: Snapshot support for Smart Lists and Smart Tags', 'Opportunity Smart Lists and Opportunity Smart Tags can now be included in Snapshots. Create your views and tags once in a template sub-account, then push them to new sub-accounts instead of rebuilding them each time. What’s included Opportunity Smart Lists and Opportunity Smart T...', '<p>Opportunity Smart Lists and Opportunity Smart Tags can now be included in Snapshots. Create your views and tags once in a template sub-account, then push them to new sub-accounts instead of rebuilding them each time.</p>
<h2>What’s included</h2>
<ul>
<li>Opportunity Smart Lists and Opportunity Smart Tags can now be selected as assets when you create or push a Snapshot.</li>
<li>Smart List configuration is carried over, including filters, sorting, manage-fields setup, list vs. board type, and pipeline visibility.</li>
<li>Smart Tags are carried over with their color coding and linked pipeline.</li>
<li>Conflicts are handled on load so pushing to a sub-account that already has these assets does not create duplicates.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Smart Lists and Smart Tags depend on Pipelines. Include the related pipelines in the same push, or the smart lists and tags will not be created in the destination sub-account.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;