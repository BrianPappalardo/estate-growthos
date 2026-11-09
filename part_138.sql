INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T14:59:57.000Z'),
('wp-1052', 'Improved AI Assistant responses in Leadli workflows', 'What’s new The AI Assistant in Leadli workflows now provides more accurate and relevant answers across a wider range of questions. Updates were made to how the assistant selects and sources responses, with a focus on areas that previously produced incomplete results. This improve...', '<h2>What’s new</h2>
<p>The AI Assistant in Leadli workflows now provides more accurate and relevant answers across a wider range of questions. Updates were made to how the assistant selects and sources responses, with a focus on areas that previously produced incomplete results.</p>
<p>This improvement is ongoing. Response quality is expected to continue improving over time.</p>
<h2>Why this matters</h2>
<p>Questions that previously went unanswered or received partial answers are now handled more consistently. As more people use the assistant, its coverage expands, which reduces gaps and lowers the need for manual support.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T14:59:34.000Z'),
('wp-1053', 'Array Formatter is now free and easier to use in Leadli', 'Summary Array Formatter is no longer a premium action in Leadli. The interface has also been updated to make array actions easier to understand and more predictable. What changed Array Formatter is billed at $0 as a standard execution. The Premium Action badge and related banners...', '<p><strong>Summary</strong></p>
<p>Array Formatter is no longer a premium action in Leadli. The interface has also been updated to make array actions easier to understand and more predictable.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Array Formatter is billed at $0 as a standard execution.</li>
<li>The Premium Action badge and related banners have been removed.</li>
<li>The action panel now includes clearer descriptions, icons, return types, and output previews.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Add <strong>Array Formatter</strong> after a webhook or any step that outputs an array.</li>
<li>Select an action type using the updated dropdown descriptions.</li>
<li>Review the return type and preview before saving.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>“Array Functions” has been renamed to “Array Formatter”.</li>
<li>Workflow behavior is otherwise unchanged.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-08T14:59:18.000Z'),
('wp-1041', 'Chat widget public APIs', 'Summary You can now create and manage chat widgets through public APIs. This makes it easier to automate setup and integrate widget workflows into your systems. What’s new API-based chat widget creation — Create chat widgets programmatically without relying on the UI. Supported c...', '<h2>Summary</h2>
<p>You can now create and manage chat widgets through public APIs. This makes it easier to automate setup and integrate widget workflows into your systems.</p>
<h2>What’s new</h2>
<ol>
<li><strong>API-based chat widget creation</strong> — Create chat widgets programmatically without relying on the UI.</li>
<li><strong>Supported chat types</strong> — Live Chat and Email Chat are supported for API-based creation.</li>
<li><strong>End-to-end widget management</strong> — APIs are available to list, fetch, update, and delete chat widgets.</li>
<li><strong>Flexible listing support</strong> — Retrieve all widgets (including those created in the UI) with filtering options.</li>
<li><strong>Improved validation and error handling</strong> — Clear error responses for unsupported chat types and invalid requests.</li>
</ol>
<h2>How to use</h2>
<ol>
<li>Generate API credentials from your Leadli account.</li>
<li>Use the chat widget APIs to create widgets (Live Chat / Email Chat) and fetch or update existing widgets.</li>
<li>Integrate this into your onboarding, SaaS workflows, or automation systems.</li>
</ol>
<h2>Why this feature</h2>
<ul>
<li><strong>Scale faster</strong>: Automate widget creation across multiple locations.</li>
<li><strong>Enable integrations</strong>: Connect chat widgets with external tools, CRMs, or onboarding systems.</li>
<li><strong>Improve efficiency</strong>: Reduce manual setup effort for agencies and SaaS builders.</li>
<li><strong>Future-ready</strong>: Establish a foundation for expanding chat types and deeper automation.</li>
</ul>
<h2>What’s next</h2>
<ul>
<li>Support for additional chat types (WhatsApp, Facebook, Instagram, Voice AI, All in One).</li>
<li>More advanced configuration APIs.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Widget creation via API is currently limited to Live Chat and Email Chat.</li>
<li>Other chat types can still be listed if they were created in the UI.</li>
<li>Contact support to get started with the API!</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-07T18:05:28.000Z'),
('wp-1040', 'Quiz results page improvements', 'We updated the quiz results page to make styling easier and the builder workflow clearer. What’s improved You can adjust the results page width to better fit your layout. You can add a background color to the results page. When you select or add a section, the preview scrolls to ...', '<p>We updated the quiz results page to make styling easier and the builder workflow clearer.</p>
<h2>What’s improved</h2>
<ul>
<li>You can adjust the results page width to better fit your layout.</li>
<li>You can add a background color to the results page.</li>
<li>When you select or add a section, the preview scrolls to that section automatically.</li>
<li>If no quiz categories have been created, a clearer empty state is shown.</li>
<li>A “How Scoring Works” link is available to explain quiz scoring while building results pages.</li>
<li>The results page editing flow is smoother when working in the builder.</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Quiz Builder.</li>
<li>Go to the Results Page (or Edit Result Template).</li>
<li>Update styling, manage categories, and customize the layout and sections.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>More control over how your quiz results page looks.</li>
<li>Easier creation of branded quiz experiences.</li>
<li>Less confusion when categories are missing.</li>
<li>Clearer guidance on how quiz scoring works.</li>
<li>Faster editing on longer results pages.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-07T18:04:58.000Z'),
('wp-1042', 'Schema markup: extended schema type support', 'Overview Leadli schema markup now includes 7 additional schema types in the manual setup flow. This increases the total number of parent-level schema types available from 12 to 19. You can find the new types in the Add Schema Markup and Edit Schema Markup dialogs. Choose a type, ...', '<p><strong>Overview</strong></p>
<p>Leadli schema markup now includes 7 additional schema types in the manual setup flow. This increases the total number of parent-level schema types available from 12 to 19.</p>
<p>You can find the new types in the <strong>Add Schema Markup</strong> and <strong>Edit Schema Markup</strong> dialogs. Choose a type, enter the fields using Form view or JSON view, then select <strong>Validate &amp; Save</strong>.</p>
<p><strong>New schema types</strong>: Offer, Review, Aggregate Rating, Recipe, ImageObject, Service, Course</p>
<p><strong>Notes</strong>: This update applies to the manual flow only. The AI-assisted flow already supports all Schema.org types.</p>
<p><strong>Supported modules</strong>: Websites and Funnel Pages</p>
<p><strong>Why this matters</strong></p>
<ul>
<li>Businesses in e-commerce, food, education, and service industries can add more category-specific structured data to improve eligibility for rich results in Google.</li>
<li>More precise schema markup can help search engines and AI systems better understand and reference your business content.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;