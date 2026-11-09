INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Impact on existing users</strong></p>
<ul>
<li>Existing schema is preserved and is not overwritten.</li>
<li>For assets created before this release, the setting defaults to OFF until you enable it.</li>
<li>For assets created on or after this release, the setting defaults to ON for new pages published without schema.</li>
<li>You can turn it on or off per Website, Funnel, or Webinar and then save.</li>
</ul>
<p><strong>Action required</strong></p>
<p>No action is required for existing assets. If you do not want new assets to auto-generate schema, turn the toggle off under Settings → SEO &amp; AEO and select Save.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1258', 'Save progress for forms, surveys, and quizzes', 'You can now let respondents save their progress on multi-step forms, surveys, and quizzes, then come back later to finish. What changed A new Save exit confirmation toggle is available in the Settings tab for: Forms Surveys Quizzes When enabled, progress is saved automatically if...', '<p>You can now let respondents save their progress on multi-step forms, surveys, and quizzes, then come back later to finish.</p>
<h3>What changed</h3>
<p>A new <strong>Save exit confirmation</strong> toggle is available in the <strong>Settings</strong> tab for:</p>
<ul>
<li>Forms</li>
<li>Surveys</li>
<li>Quizzes</li>
</ul>
<p>When enabled, progress is saved automatically if someone leaves before submitting.</p>
<h3>Key highlights</h3>
<ul>
<li>Saves progress for multi-step forms, surveys, and quizzes</li>
<li>Turn the feature on or off using the Save exit confirmation toggle</li>
<li>Respondents can return later and continue where they left off</li>
<li>A resume window lets them continue or start over</li>
<li>The resume window matches your existing form, survey, or quiz styling (button color and fonts)</li>
<li>Works on desktop and mobile</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Open the form, survey, or quiz editor.</li>
<li>Go to <strong>Settings</strong> and enable <strong>Save exit confirmation</strong>.</li>
<li>If a respondent closes the browser, refreshes, or navigates away before submitting, their progress is saved.</li>
<li>When they return to the same form, survey, or quiz, they can resume where they left off or start a new submission.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>This is available for multi-step forms, surveys, and quizzes.</li>
<li>Nothing changes in existing assets until you enable the toggle.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1257', 'Automatically associate CRM records in Leadli workflows', 'You can now use the Associate Records workflow action to automatically connect records in your CRM when field values match. This action works with Contacts, Companies, Opportunities, and Custom Objects (depending on the workflow type and which associations are set up in your sub-...', '<p>You can now use the <strong>Associate Records</strong> workflow action to automatically connect records in your CRM when field values match.</p>
<p>This action works with Contacts, Companies, Opportunities, and Custom Objects (depending on the workflow type and which associations are set up in your sub-account).</p>
<p><strong>What’s new</strong></p>
<ul>
<li>Find records using one or more field-based filters</li>
<li>Use merge fields from the enrolled record as filter values</li>
<li>Choose whether to associate the earliest created record, the latest created record, or all matching records</li>
<li>Apply an existing association label</li>
<li>Create associations between different objects</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Add the Associate Records action to a Contact, Company, or Custom Object workflow</li>
<li>Select the object that contains the records you want to associate</li>
<li>Add filters to identify matching records</li>
<li>Choose how to handle multiple matches</li>
<li>Select an association label (when required)</li>
<li>Save and publish the workflow</li>
</ol>
<p>When you add multiple filters, a record must meet every condition to qualify.</p>
<p><strong>Example</strong></p>
<p>A real estate agency can automatically associate a buyer with Property records that match their preferred city, property type, and number of bedrooms. This helps teams keep associations up to date without doing it manually.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Reduces manual record association</li>
<li>Helps keep CRM associations accurate</li>
<li>Makes it easier to build workflows that use associated records</li>
<li>Supports automation across standard objects and Custom Objects</li>
</ul>
<p><strong>Availability</strong></p>
<p>Associate Records is currently available through Labs. To enable it, go to: Settings → Labs → Associate Records &#8211; Workflow Action.</p>
<p><strong>Learn more:</strong> <a href="https://help.Leadli.com/support/solutions/articles/155000007718-workflow-action-associate-records" rel="ugc nofollow noopener noreferrer" target="_blank">Help article</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1294', 'Set which devices ring for web dialer calls', 'You can now choose which devices ring and which devices handle call audio in the Leadli web dialer. How to use it Open Audio Settings from the gear icon in the dialer header. Select your main speaker for call audio. Optionally choose an additional device to ring at the same time ...', '<p><strong>You can now choose which devices ring and which devices handle call audio in the Leadli web dialer.</strong></p>
<p><strong>How to use it</strong></p>
<ol>
<li>Open <strong>Audio Settings</strong> from the gear icon in the dialer header.</li>
<li>Select your main speaker for call audio.</li>
<li>Optionally choose an additional device to ring at the same time (for example, a headset and your computer speakers).</li>
<li>Select the microphone you want to use.</li>
<li>Use the test controls to preview your speaker and ring device, and confirm input using the microphone volume meter.</li>
</ol>
<hr>
<p><strong>Enable in Labs</strong></p>
<ol>
<li>Go to <strong>Agency Settings</strong> &gt; <strong>Labs</strong>.</li>
<li>Find <strong>Audio settings for voice calls</strong>.</li>
<li>Choose <strong>Activate Feature</strong>.</li>
<li>Select the locations you want and enable it.</li>
</ol>
<p><strong>Note:</strong> Safari supports only one audio output device. Use Chrome or Edge if you need full control over device selection.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1293', 'Google Business Profile post sync in Social Planner (beta)', 'Managing your Google Business Profile content is now simpler. With Google Business Profile (GBP) Post Sync, you can import existing GBP posts into Social Planner and manage both past and newly published content from one dashboard. Availability This feature is available through La...', '<p>Managing your Google Business Profile content is now simpler.</p>
<p>With Google Business Profile (GBP) Post Sync, you can import existing GBP posts into Social Planner and manage both past and newly published content from one dashboard.</p>
<p><strong>Availability</strong></p>
<p>This feature is available through Labs. Enable it to start syncing your Google Business Profile posts.</p>
<p><strong>What’s included</strong></p>
<ul>
<li>Sync existing GBP posts (standard, event, offer, and call-to-action posts).</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;