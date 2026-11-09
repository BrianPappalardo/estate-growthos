INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Good to know</strong></p>
<ol>
<li>Supported accounting platforms: QuickBooks, Xero, Wave</li>
<li>For Wave, transaction and contact sync are not yet supported (invoices only).</li>
<li>Accounting Sync is currently available on web only.</li>
<li>Invoices created and sent via the Leadli mobile app will sync automatically, but sync status and logs must be reviewed on web.</li>
<li>Retry is available per record; bulk retry is not yet supported.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1138', 'Ad Manager: Save Meta lead forms as drafts', 'What’s new Users can create and save Meta Lead Forms in a Draft state from the Ad Manager campaign flow. A Save as Draft action is available in the Facebook Lead Form builder. Draft forms are labeled with a Draft badge in the lead form selection dropdown. Draft forms can be edite...', '<h2>What’s new</h2>
<ol>
<li>Users can create and save Meta Lead Forms in a <strong>Draft</strong> state from the Ad Manager campaign flow.</li>
<li>A <strong>Save as Draft</strong> action is available in the Facebook Lead Form builder.</li>
<li>Draft forms are labeled with a <strong>Draft</strong> badge in the lead form selection dropdown.</li>
<li>Draft forms can be edited from the lead form selector using the inline edit icon.</li>
<li>Campaign validation detects draft or incomplete forms before publishing ads.</li>
<li>Warnings display for forms with incomplete field mappings or unpublished draft states.</li>
</ol>
<h2>How it works</h2>
<ol>
<li>In the Meta Lead Form builder, configure the form as usual (for example: Form Type, Greeting, Questions, Form Fields Mapping, Privacy Policy, and Message for Leads).</li>
<li>Click <strong>Save as Draft</strong> instead of creating the form on Meta immediately.</li>
<li>Draft forms appear in the <strong>Select a lead form</strong> dropdown with a Draft status indicator, a created timestamp, and quick edit access.</li>
<li>Reopen draft forms anytime to continue editing, complete mappings, and publish when ready.</li>
<li>If a draft or unmapped form is selected during campaign setup, validation messaging will explain what needs to be completed before the form can be used.</li>
<li>Once the form is fully configured and published, it becomes eligible for campaign usage.</li>
</ol>
<h2>Why it matters</h2>
<ol>
<li>Meta does not allow editing of published lead forms, so errors are harder to fix after a form goes live.</li>
<li>Draft support helps advertisers build and review forms before publishing.</li>
<li>This improves campaign preparation by allowing teams to save unfinished work, review forms, complete CRM field mappings later, and reduce accidental publishing.</li>
<li>This is especially helpful for agencies and teams using approvals or multi-step reviews.</li>
</ol>
<h2>Notes</h2>
<ol>
<li>Draft forms cannot be used in live campaigns until they are published.</li>
<li>Validation requirements are relaxed during draft save, but enforced during final publish.</li>
<li>Existing published Meta forms continue to work without changes.</li>
</ol>
<p>API documentation is available in Leadli developer resources.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1137', 'Pricing update: SMS costs for select international destinations (effective June 12, 2026)', 'Effective June 12, 2026 , Leadli will update outbound SMS pricing for select international destinations due to carrier and provider cost increases. What is changing The following outbound SMS routes will have updated rates: Gibraltar: $0.1091 to $0.1225 Iraq: $0.4491 to $0.5030 I...', '<p><strong>Effective June 12, 2026</strong>, Leadli will update outbound SMS pricing for select international destinations due to carrier and provider cost increases.</p>
<h2>What is changing</h2>
<p>The following outbound SMS routes will have updated rates:</p>
<ul>
<li>Gibraltar: $0.1091 to $0.1225</li>
<li>Iraq: $0.4491 to $0.5030</li>
<li>Ivory Coast: $0.4397 to $0.4925</li>
<li>Jordan: $0.3884 to $0.4429</li>
<li>Liberia: $0.2406 to $0.2677</li>
<li>Madagascar: $0.5267 to $0.5899</li>
<li>Malaysia: $0.2594 to $0.3389</li>
<li>Montenegro: $0.1721 to $0.1928</li>
<li>Samoa: $0.2369 to $0.2675</li>
<li>São Tomé and Príncipe: $0.1307 to $0.1581</li>
<li>Togo: $0.4416 to $0.4946</li>
</ul>
<h2>Why prices are changing</h2>
<p>These updates reflect changes in carrier and messaging provider costs needed to maintain reliable delivery and support messaging infrastructure across these destinations.</p>
<h2>What you need to do</h2>
<p>No action is required. The updated rates will be applied automatically on June 12, 2026.</p>
<p>We will continue to monitor carrier pricing and make updates as needed to support reliable message delivery worldwide.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1136', 'Alt text support for images in the Leadli Social Planner', 'You can now add alt text to images in the Leadli Social Planner. This helps make your posts more accessible while keeping the workflow inside Social Planner. What’s included Add custom alt text to each uploaded image Works with single-image posts and multi-image posts/carousels A...', '<p>You can now add alt text to images in the Leadli Social Planner. This helps make your posts more accessible while keeping the workflow inside Social Planner.</p>
<h3>What’s included</h3>
<ul>
<li>Add custom alt text to each uploaded image</li>
<li>Works with single-image posts and multi-image posts/carousels</li>
<li>Alt text is stored per image and can be edited before publishing</li>
<li>Alt text is sent to platforms that support it and ignored on platforms that do not</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to Marketing → Social Planner</li>
<li>Create a new post</li>
<li>Upload one or more images</li>
<li>Open the Alt Text option for an image</li>
<li>Enter or edit the description</li>
<li>Save, schedule, or publish your post</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Improves accessibility for visually impaired audiences</li>
<li>Helps you follow accessibility best practices</li>
<li>Reduces the need to edit posts natively after publishing</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Alt text is configured per image, not per post</li>
<li>You can update or remove alt text before publishing</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1135', 'Conversations AI: improved audio understanding', 'Summary Leadli has improved the audio transcription used by Conversations AI to better understand voice messages and audio notes. What changed Higher transcription accuracy for voice messages and audio notes Support for additional languages More reliable and stable audio processi...', '<h2>Summary</h2>
<p>Leadli has improved the audio transcription used by Conversations AI to better understand voice messages and audio notes.</p>
<h2>What changed</h2>
<ul>
<li>Higher transcription accuracy for voice messages and audio notes</li>
<li>Support for additional languages</li>
<li>More reliable and stable audio processing</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;