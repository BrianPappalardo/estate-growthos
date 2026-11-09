INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Notes on available operations</strong></p>
<ul>
<li><strong>Update</strong>: Replaces the current value(s).</li>
<li><strong>Add</strong>: Adds to existing value(s) without removing them.</li>
<li><strong>Clear</strong>: Empties the field.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-18T12:22:48.000Z'),
('wp-1343', 'Better validation and clearer error messages for Google and LinkedIn ad campaigns', 'What’s new We improved validation and error handling for Google and LinkedIn campaigns in Ad Manager to make publishing more reliable and easier to troubleshoot. Multiple validation issues are now shown together instead of one at a time. Error messages provide clearer context abo...', '<h2>What’s new</h2>
<p>We improved validation and error handling for Google and LinkedIn campaigns in Ad Manager to make publishing more reliable and easier to troubleshoot.</p>
<ul>
<li>Multiple validation issues are now shown together instead of one at a time.</li>
<li>Error messages provide clearer context about what needs to be fixed and where.</li>
<li>Selecting an error takes you directly to the relevant section or field.</li>
<li>Error highlighting works better in campaigns with multiple ads or creatives.</li>
<li>After you fix issues, the validation state refreshes correctly when campaigns are updated or republished.</li>
<li>Publishing status and background processing messages are clearer during campaign creation.</li>
</ul>
<h2>Google-specific improvements</h2>
<ul>
<li>Added a pre-publish validation flow covering campaign fields, advertising requirements, and Google platform requirements.</li>
<li>Improved validation for Demand Gen campaigns, including required images, logos, videos, headlines, descriptions, long headlines, and carousel assets.</li>
<li>Improved messaging for missing website URLs and duplicate creative content.</li>
</ul>
<h2>LinkedIn-specific improvements</h2>
<ul>
<li>Improved validation for LinkedIn carousel cards, including required headlines and URLs.</li>
<li>Error messages now provide better context about which carousel card needs attention.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Configure the campaign, ad groups/ad sets, and ads as usual.</li>
<li>Click <strong>Publish</strong>.</li>
<li>Ad Manager checks campaign and creative requirements before publishing.</li>
<li>If issues are detected, you will see a prompt to fix errors before publishing.</li>
<li>Open the error list to view all identified issues together.</li>
<li>Select an error to jump to the affected field or section.</li>
<li>Fix the issues and publish the campaign again.</li>
</ol>
<p>For Google campaigns, an additional validation flow checks campaign fields, advertising requirements, and platform requirements before submission.</p>
<p>For LinkedIn campaigns, the improved experience focuses on UI validation and clearer identification of issues across creatives and carousel cards.</p>
<h2>Why it matters</h2>
<p>Previously, some validation issues appeared only after a publishing attempt or surfaced one at a time, which led to repeated fix-and-retry cycles.</p>
<p>These improvements help you:</p>
<ul>
<li>Identify more issues before publishing.</li>
<li>Resolve multiple errors in a single pass.</li>
<li>Quickly understand where an issue exists.</li>
<li>Reduce failed publishing attempts.</li>
<li>Get a more consistent campaign creation experience across Meta, Google, and LinkedIn.</li>
</ul>
<h2>Notes</h2>
<ol>
<li>Google campaigns now use the expanded pre-publish validation flow.</li>
<li>LinkedIn continues to use its existing publishing flow, with improvements focused on UI validation and error handling.</li>
<li>Additional platform-level errors or policy rejections may still be returned by Google or LinkedIn after submission.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T11:47:54.000Z'),
('wp-1342', 'Meta Pixel tracking for events is now available in Leadli', 'Overview Leadli Events now supports Meta Pixel tracking. This helps you see how people move from finding an event to completing an RSVP or purchasing a ticket. What’s included Meta Pixel integration Add a Meta Pixel ID from Events → Settings → Link & tracking . Select which Meta ...', '<p><strong>Overview</strong></p>
<p>Leadli Events now supports Meta Pixel tracking. This helps you see how people move from finding an event to completing an RSVP or purchasing a ticket.</p>
<p><strong>What’s included</strong></p>
<p><strong>Meta Pixel integration</strong></p>
<ol>
<li>Add a Meta Pixel ID from <em>Events → Settings → Link &amp; tracking</em>.</li>
<li>Select which Meta event should fire for each step in the attendee journey.</li>
<li>Set up tracking per event.</li>
</ol>
<p><strong>Tracking for RSVP events</strong></p>
<p>You can track these steps:</p>
<ol>
<li>Event page viewed (when the published event page loads)</li>
<li>RSVP started (when someone opens the RSVP form)</li>
<li>RSVP completed (when the RSVP is confirmed)</li>
</ol>
<p><strong>Tracking for ticketed events</strong></p>
<p>You can track the ticket purchase flow:</p>
<ol>
<li>Event page viewed</li>
<li>Checkout started</li>
<li>Ticket selection completed</li>
<li>Registration form submitted</li>
<li>Payment details submitted</li>
<li>Ticket order completed</li>
</ol>
<p>Ticket orders are tracked even when the total is $0, so you get a consistent conversion signal for both free and paid tickets.</p>
<p><strong>Richer purchase data</strong></p>
<p>Completed ticket orders can also send commerce details to Meta, including order value, currency, ticket quantities, and ticket identifiers. This gives you better data for measuring and improving campaigns that drive ticket sales.</p>
<p><strong>Smarter conversion deduplication</strong></p>
<p>Leadli uses session-based deduplication to reduce duplicate event reporting for actions caused by things like back navigation, refreshes, payment redirects, or repeated completion checks.</p>
<p><strong>Why this matters</strong></p>
<p>This update makes it easier to measure what happens after someone lands on your event page. You can track the full path from page visit to RSVP or ticket purchase and use those conversion signals to measure performance and improve targeting.</p>
<p><strong>Availability</strong></p>
<p>Available now for Events Beta users under: <em>Events → Settings → Link &amp; tracking → Meta Pixel</em></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T11:21:54.000Z'),
('wp-1341', 'Rearrange and rename tabs in Leadli Communities', 'You can now customize your community navigation by reordering tabs, renaming them, and hiding the tabs you do not need. Community admins and owners can adjust the tab layout to match how their community is organized. What’s changed Reorder tabs: Drag tabs (Discussion, Learning, E...', '<p>You can now customize your community navigation by reordering tabs, renaming them, and hiding the tabs you do not need.</p>
<p>Community admins and owners can adjust the tab layout to match how their community is organized.</p>
<h3>What’s changed</h3>
<ul>
<li><strong>Reorder tabs:</strong> Drag tabs (Discussion, Learning, Events, Leaderboards, Members, About) to change the order members see.</li>
<li><strong>Rename tabs:</strong> Edit a tab label to use the wording that fits your community and branding.</li>
<li><strong>Show or hide tabs:</strong> Turn optional tabs on or off using the existing toggles.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;