INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>Many people run their business away from a desk. Previously, the mobile AI experience was limited to plain text, with no easy way to revisit past conversations and no built-in actions to complete tasks while you were mobile.</p>
<p><strong>What’s new</strong></p>
<p>Ask AI V2 brings a more complete AI experience to the Leadli mobile app. Interactive response formats (such as charts, tables, code blocks, and guided workflows) render directly on mobile and respond to touch. Answers can stream in real time, and your conversation history is searchable.</p>
<p><strong>How this helps</strong></p>
<ul>
<li>Make decisions faster with interactive charts and tables on mobile.</li>
<li>Complete structured tasks using approval steps and guided questions.</li>
<li>Return to prior conversations quickly with searchable history.</li>
<li>Follow responses as they arrive with real-time streaming.</li>
</ul>
<p><strong>How to get started</strong></p>
<ol>
<li>Open Ask AI in the Leadli mobile app.</li>
<li>Type your question.</li>
<li>Use the interactive responses (tap charts, copy code, follow a guided flow, or review sources when available).</li>
</ol>
<p><strong>What’s next</strong></p>
<p>More response formats and richer mobile interactions are planned. A preview pipeline for additional formats is already in place and can be enabled through a backend toggle without an app update.</p>
<p><strong>Rollout and availability</strong></p>
<ul>
<li>Release date: June 18, 2026</li>
<li>Available version: 4.18.1 (build 833)</li>
<li>Status: Public</li>
<li>Platforms: iOS and Android</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Dark mode is supported across response formats and matches your device theme.</li>
<li>Model selection is available (Claude Sonnet 4.6 by Anthropic).</li>
<li>The preview pipeline ships inactive and can be enabled via backend toggle.</li>
</ul>
<p><strong>Feedback</strong></p>
<p>If you have feedback, you can contact the product team here: <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1203', 'Improved notification access and clearer tooltips in forms, surveys, and quizzes', 'Summary Notifications in Forms, Surveys, and Quizzes are now easier to find. They have moved from an icon in the builder to a dedicated Notifications tab. Tooltips in the builder have also been updated with clearer descriptions, more context, and links to related help articles, s...', '<p><strong>Summary</strong></p>
<p>Notifications in Forms, Surveys, and Quizzes are now easier to find. They have moved from an icon in the builder to a dedicated <strong>Notifications</strong> tab.</p>
<p>Tooltips in the builder have also been updated with clearer descriptions, more context, and links to related help articles, so users can understand settings without leaving the builder.</p>
<p><strong>Key changes</strong></p>
<ul>
<li>Notifications are now in a dedicated Notifications tab in the builder.</li>
<li>Notification settings are easier to locate and manage.</li>
<li>Tooltips across Forms, Surveys, and Quizzes include clearer guidance and more context.</li>
<li>Some tooltips include links to related help documentation.</li>
</ul>
<p><strong>How it works</strong></p>
<p>Previously, notification settings were accessed through an icon within the builder, which was easy to miss. With this update, notifications are available as a clearly labeled tab so users can find and manage them more quickly.</p>
<p>Tooltips have also been improved to better explain options based on the selected product or field type, with documentation links where applicable.</p>
<p><strong>Notes</strong></p>
<ul>
<li>No changes were made to the underlying notification functionality.</li>
<li>This update focuses on accessibility, navigation, and in-product guidance.</li>
<li>Available across Forms, Surveys, and Quizzes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1202', 'Notifications are now easier to find in Forms, Surveys, and Quizzes', 'Summary Notifications in Forms, Surveys, and Quizzes are now easier to locate. Instead of being hidden behind an icon, they are available in a dedicated Notifications tab inside the builder. What changed Notifications are now accessed from a clearly labeled Notifications tab. Bui...', '<p><strong>Summary</strong></p>
<p>Notifications in Forms, Surveys, and Quizzes are now easier to locate. Instead of being hidden behind an icon, they are available in a dedicated <strong>Notifications</strong> tab inside the builder.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Notifications are now accessed from a clearly labeled Notifications tab.</li>
<li>Builder tooltips have been updated with clearer descriptions and more context.</li>
<li>Some tooltips include “Learn more” links to relevant Help Center articles.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>This update improves accessibility and navigation, and it reduces the need to contact support to find notification settings or understand builder options.</p>
<p><strong>Notes</strong></p>
<ul>
<li>There are no functional changes to how notifications work.</li>
<li>This update applies to Forms, Surveys, and Quizzes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1201', 'Your Ask AI Chats Are Private', 'Ask AI chat history on mobile now shows only the conversations you started. The issue When multiple users in the same sub-account used Ask AI on mobile, chat history could display sessions started by other teammates. This made it harder to find your own threads and created privac...', '<p>Ask AI chat history on mobile now shows only the conversations you started.</p>
<h3>The issue</h3>
<p>When multiple users in the same sub-account used Ask AI on mobile, chat history could display sessions started by other teammates. This made it harder to find your own threads and created privacy concerns.</p>
<h3>What changed</h3>
<p>Mobile now loads Ask AI chat history per user, consistent with how it works on the web. When you open <strong>Chat history</strong>, you will only see conversations you started. The list also refreshes when you switch sub-accounts or sign in as a different user.</p>
<h3>Benefits</h3>
<ul>
<li><strong>Improved privacy:</strong> Teammates only see their own Ask AI conversations.</li>
<li><strong>Faster navigation:</strong> Your history is easier to find and review.</li>
<li><strong>Smoother team adoption:</strong> Teams can use Ask AI without sharing chat history across users.</li>
<li><strong>Accurate results:</strong> History updates correctly when switching locations or users.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li><strong>Open Ask AI:</strong> Tap <strong>Ask AI</strong> from the FAB, home screen, or dashboard.</li>
<li><strong>Open your history:</strong> Tap the history icon in the Ask AI header to open <strong>Chat history</strong>.</li>
<li><strong>Continue a conversation:</strong> Select any of your past sessions to pick up where you left off.</li>
</ol>
<h3>Release details</h3>
<ul>
<li><strong>Release date:</strong> June 5, 2026</li>
<li><strong>Available version:</strong> 4.18.0 (build 831)</li>
<li><strong>Status:</strong> Public</li>
<li><strong>Platforms:</strong> iOS and Android</li>
<li><strong>Availability:</strong> Leadli, LeadConnector, and the white-label app</li>
</ul>
<h3>Good to know</h3>
<ul>
<li><strong>Scope:</strong> This change applies to the <strong>Chat history</strong> list only. It does not affect live chat or new messages.</li>
<li><strong>Who sees what:</strong> Each logged-in user only sees sessions tied to their account within the current sub-account.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;