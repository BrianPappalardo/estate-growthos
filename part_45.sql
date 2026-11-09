INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Google ad templates: 5 (Beauty &amp; Fashion – Cosmetic Skin Clinic; Automotive – Car Rental Agency; Travel &amp; Hospitality – Campground; Restaurant &amp; Bar – Caterer; Real Estate – Home Staging)</li>
<li>LinkedIn ad templates: 7 (Creative – Creative Arts Studio; Creative – Dance Company; Finance – Accounting Support Specialist; Finance – Financial Remediation Services; Marketing Agency – CRM Software; Medical – Family Practice Physician; Medical – Physiotherapy Practice)</li>
<li>Snapshot: 1 (Beauty &amp; Fashion – Hair Salon)</li>
</ul>
<p>To find these items, open the Templates area in Leadli and filter by the template type and industry.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-27T19:05:12.000Z'),
('wp-1456', 'Ask AI Voice is now available in the mobile app', 'You can now talk to Ask AI instead of typing. Tap the microphone, speak your question, and the assistant will respond out loud. It continues listening while it speaks, so you can interrupt and steer the conversation as needed. What was the problem On mobile, Ask AI previously req...', '<p>You can now talk to Ask AI instead of typing. Tap the microphone, speak your question, and the assistant will respond out loud. It continues listening while it speaks, so you can interrupt and steer the conversation as needed.</p>
<p><strong>What was the problem</strong></p>
<p>On mobile, Ask AI previously required typing. That made it hard to use when you were on the go or between appointments.</p>
<p><strong>What changed</strong></p>
<p>Ask AI now supports two-way voice on the mobile app. Your speech is transcribed as you talk, and the assistant’s response plays back as audio while also appearing in the chat.</p>
<p><strong>What you can do</strong></p>
<ul>
<li>Tap the microphone and speak. Your words appear while you are talking and then save as the final transcript.</li>
<li>Listen to replies through your phone speaker or a headset, with the text highlighting as it plays.</li>
<li>Interrupt the assistant at any time by starting to speak.</li>
<li>Respond to approval cards or questions; the microphone will pause and then resume when you are done.</li>
<li>Recover from connection drops with automatic reconnecting so you can continue the same conversation.</li>
<li>Minimize the Ask AI screen and return to the same live voice session.</li>
<li>Use Bluetooth headsets (including AirPods) with echo cancellation.</li>
</ul>
<p><strong>Benefits</strong></p>
<ul>
<li>Ask questions faster without typing long prompts.</li>
<li>Have a more natural back-and-forth conversation with quick follow-ups.</li>
<li>Use Ask AI hands-free when you are moving around.</li>
<li>Keep voice and typed messages in the same conversation history.</li>
</ul>
<p><strong>How to get started</strong></p>
<ul>
<li>Open Ask AI in the mobile app.</li>
<li>Tap the microphone in the message bar and allow microphone access the first time.</li>
<li>Speak your question and listen to the reply.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-25T11:01:07.000Z'),
('wp-1455', 'Configure and filter general widgets in sub-account dashboards', 'Summary This update lets you edit General Widgets on sub-account dashboards, including what data they show and how they are filtered. What changed Edit general widgets: configure displayed data, add filters, set custom date ranges, compare periods, rename, apply themes, duplicate...', '<h2>Summary</h2>
<p>This update lets you edit General Widgets on sub-account dashboards, including what data they show and how they are filtered.</p>
<h2>What changed</h2>
<ul>
<li>Edit general widgets: configure displayed data, add filters, set custom date ranges, compare periods, rename, apply themes, duplicate, or delete.</li>
<li>Add permanent filters in a Conditions tab (assigned user, tags, source, lead value, custom fields, and attribution). Filters stay in place when the dashboard is reopened.</li>
<li>Optionally lock a widget to a specific date range, independent of the dashboard-level date filter.</li>
<li>Widgets now show the date property and date range they are using.</li>
<li>Comparison mode shows the current period against the last period or last year.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Dashboard and select <strong>Edit dashboard</strong>.</li>
<li>Hover over a general widget, open the three-dot menu, and select <strong>Edit</strong>.</li>
<li>In <strong>Configure</strong>, update the widget title and (optional) set a date range override under Advanced Settings.</li>
<li>In <strong>Conditions</strong>, add permanent filters by choosing a field, operator, and value.</li>
<li>In <strong>Themes</strong>, choose a theme to match your branding.</li>
<li>Select <strong>Save</strong>. Your settings remain the next time the dashboard opens.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Each user can focus on their own performance by filtering Assigned user to the logged-in user.</li>
<li>Reporting is clearer because each widget shows the exact date property and date range it uses.</li>
<li>Dashboards can be made client-ready with clearer widget names and consistent styling.</li>
<li>Dashboards can be segmented using filters (custom fields, tags, or source) without reapplying them each session.</li>
<li>Year-over-year and period-over-period comparisons are easier to review.</li>
</ul>
<h2>What’s next</h2>
<ul>
<li>More configuration options for Funnel and Manual Actions widgets.</li>
<li>Dashboard Quick Filter support for general widgets.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Pipeline is available as a runtime filter on the widget and is not included in Conditions.</li>
<li>Available condition fields vary by widget type and the module it belongs to (for example, Opportunities, Email, and Contacts).</li>
<li>General widgets do not currently respond to dashboard-level Quick Filters.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-24T14:21:32.000Z'),
('wp-1454', 'GPT-6 Sol and GPT-6 Luna are now available in Leadli AI Agent and GPT actions', 'Overview GPT-6 Sol and GPT-6 Luna are now available in the AI Agent action and the GPT action in workflows. They replace the GPT-5.6 models and are designed to produce more accurate, clearer responses at a lower cost. What’s new GPT-6 Sol is intended for complex work, including m...', '<p><strong>Overview</strong></p>
<p>GPT-6 Sol and GPT-6 Luna are now available in the AI Agent action and the GPT action in workflows. They replace the GPT-5.6 models and are designed to produce more accurate, clearer responses at a lower cost.</p>
<p><strong>What’s new</strong></p>
<p><strong>GPT-6 Sol</strong> is intended for complex work, including multi-step agent tasks and workflows that span multiple apps.</p>
<p><strong>GPT-6 Luna</strong> is intended for fast, high-volume tasks such as classification, summaries, tagging, and quick replies.</p>
<p><strong>Model selection</strong> is available from the Model dropdown in both the AI Agent action and the GPT action.</p>
<p><strong>How to use</strong></p>
<ol>
<li>Add or open an AI Agent action or a GPT action in your workflow.</li>
<li>Open the Model dropdown.</li>
<li>Select GPT-6 Sol for complex tasks or GPT-6 Luna for faster, high-volume tasks.</li>
<li>Save and publish your workflow.</li>
</ol>
<p><strong>Why this matters</strong></p>
<ul>
<li><strong>More reliable automations:</strong> Fewer factual mistakes can reduce downstream errors, such as incorrect tagging or misrouted contacts.</li>
<li><strong>Better results on real workflows:</strong> Both models are designed to improve end-to-end workflow outcomes across common business use cases.</li>
<li><strong>Cleaner outputs:</strong> Clearer responses can reduce the amount of manual cleanup needed before sharing content with customers.</li>
<li><strong>Lower cost:</strong> These models are priced lower than the GPT-5.6 models they replace.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-23T15:24:08.000Z'),
('wp-1453', 'Content moderation in Leadli Communities', 'Leadli Communities now includes content moderation controls to help admins reduce spam and enforce community guidelines. Keyword and phrase flagging Admins can define words, phrases, or domains that should be flagged. When a post or comment matches, it is held for review before i...', '<p>Leadli Communities now includes content moderation controls to help admins reduce spam and enforce community guidelines.</p>
<h2>Keyword and phrase flagging</h2>
<p>Admins can define words, phrases, or domains that should be flagged. When a post or comment matches, it is held for review before it appears in the community feed. Matching is case-insensitive, and phrases are recommended for better accuracy.</p>
<p>A starter pack of common spam and scam phrases is available to load quickly. Admins can also test sample text against their rules before anything goes live.</p>
<h2>Review workflow</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;