INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>When you create a QR Code, you can select the <strong>App</strong> type and set:</p>
<ul>
<li><strong>App Store URL</strong> (for iOS)</li>
<li><strong>Play Store URL</strong> (for Android)</li>
<li><strong>Other devices URL</strong> (optional fallback)</li>
</ul>
<h2>How it works</h2>
<p>When someone scans the QR code, the device is detected and they are redirected automatically:</p>
<ul>
<li><strong>iOS</strong> → Apple App Store</li>
<li><strong>Android</strong> → Google Play Store</li>
<li><strong>Other/unknown devices</strong> → Fallback URL</li>
</ul>
<h2>Why it matters</h2>
<p>This makes app downloads simpler by removing extra steps and avoiding multiple QR codes. You can use one QR code across campaigns, print materials, websites, and other channels.</p>
<h2>How to set it up</h2>
<p>Go to <strong>QR Codes → Create QR Code → select “App”</strong>, then add your App Store URL, Play Store URL, and optional fallback URL.</p>
<p>Your existing QR Code design and customization options are unchanged.</p>
', 'reporting', ARRAY['wp-import']::text[], '2026-09-18T12:51:40.000Z'),
('wp-1432', 'Local presence dialing improvements: better pickup rates and more control', 'September 17, 2026 Local presence dialing chooses a local caller ID for outbound calls to help improve answer rates. This update improves matching, expands international coverage, and adds more administrative control. What’s new Expanded country support: Location-based matching i...', '<p>September 17, 2026</p>
<p>Local presence dialing chooses a local caller ID for outbound calls to help improve answer rates.</p>
<p>This update improves matching, expands international coverage, and adds more administrative control.</p>
<h3>What’s new</h3>
<ul>
<li>Expanded country support: Location-based matching is now active across the United States, Canada, the United Kingdom, and Australia, using postal-code distance calculations rather than static lookup tables.</li>
<li>Consistent caller ID: Contacts will now see the same number from you on repeat attempts. This helps build familiarity and supports consistent carrier reputation.</li>
<li>Universal outbound coverage: Local presence now works across the web dialer, mobile app, and desk phones.</li>
<li>Reserved numbers: You can reserve up to 50 numbers per sub-account so they are not auto-selected, while still keeping them available for manual dialing.</li>
<li>Smarter matching ladder: Calls cycle through a priority order to find the best match: lead’s zip code → area code → overlay code → nearest available distance → same region → account default.</li>
<li>Fail-safe reliability: If a local match is not available or lead data is missing, calls route immediately using your account default.</li>
</ul>
<h3>How to get started</h3>
<p>To configure reserved numbers or adjust your settings, go to Settings &gt; Phone System &gt; Voice &gt; Other Settings &gt; Outbound calls, then scroll to the Local presence dialing section.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-18T12:39:34.000Z'),
('wp-1431', 'Reputation Management: Video testimonial updates', 'Leadli now includes additional automation and publishing controls for video testimonials. This helps you respond to new submissions quickly and choose which testimonials appear on your widgets. What’s included A workflow trigger when a video testimonial is received Approval and v...', '<p>Leadli now includes additional automation and publishing controls for video testimonials. This helps you respond to new submissions quickly and choose which testimonials appear on your widgets.</p>
<h2>What’s included</h2>
<ul>
<li>A workflow trigger when a video testimonial is received</li>
<li>Approval and visibility controls for video testimonials</li>
</ul>
<h2>Key updates</h2>
<h3>1) Workflow trigger: Video testimonial received</h3>
<p>You can trigger an automated workflow as soon as a new video testimonial is submitted through a Video Testimonial Collector.</p>
<p>This can be used to:</p>
<ul>
<li>Notify internal team members</li>
<li>Send a thank-you or follow-up message to the reviewer</li>
<li>Create tasks or notes</li>
<li>Pass testimonial details into webhooks or other workflow actions</li>
<li>Route submissions differently based on the collector used or marketing consent</li>
</ul>
<h3>2) Workflow filters for video testimonials</h3>
<p>The trigger supports filters so you can control which submissions enter a workflow. Available filters include:</p>
<ol>
<li>Marketing consent (run workflows based on whether consent was granted)</li>
<li>Video collector (trigger workflows only for submissions from a specific collector)</li>
</ol>
<p>This makes it easier to build separate automations for different campaigns, products, events, partners, or testimonial use cases.</p>
<h3>3) Video testimonial custom values</h3>
<p>Testimonial data is now available as custom values inside supported workflow actions. Available values include:</p>
<ul>
<li>Reviewer name</li>
<li>Reviewer email</li>
<li>Reviewer phone</li>
<li>Marketing consent</li>
<li>Submitted at</li>
<li>Collector name</li>
<li>Video link</li>
</ul>
<p>You can use these values in internal notifications, notes, emails, SMS, webhooks, and other workflow steps.</p>
<h3>4) Approval and widget visibility controls</h3>
<p>You can choose how new video testimonials are handled in the Reputation widget settings:</p>
<ul>
<li><strong>Auto-publish:</strong> New submissions are shown on the widget automatically (default behavior).</li>
<li><strong>Manual approval:</strong> New submissions must be reviewed before they are shown.</li>
</ul>
<p>This supports both fully automated publishing and moderated publishing.</p>
<h3>5) Review and manage from the Responses page</h3>
<p>The Video Testimonials &rarr; Responses page includes additional visibility indicators and controls. You can:</p>
<ul>
<li>Identify new testimonials that have not been reviewed</li>
<li>See whether a testimonial is currently shown on the widget</li>
<li>Show or hide individual testimonials directly from the Responses page</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Follow up automatically as soon as a video testimonial is received</li>
<li>Reduce the need to manually monitor new submissions</li>
<li>Support collector-specific and consent-aware automation</li>
<li>Make testimonial data usable across workflows immediately</li>
<li>Control which testimonials appear publicly</li>
<li>Manage testimonial visibility faster from one central view</li>
</ul>
<p>If you have questions or feedback, contact support through your usual channel.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-18T07:47:34.000Z'),
('wp-1430', 'Marketplace app details page: easier to review apps before installing', 'We updated the Marketplace app details page so it’s faster and easier to understand an app, decide if it fits your needs, and install with confidence. Previously, important details were available but spread across the listing. Now the page brings the key information into a cleare...', '<p>We updated the Marketplace app details page so it’s faster and easier to understand an app, decide if it fits your needs, and install with confidence.</p>
<p>Previously, important details were available but spread across the listing. Now the page brings the key information into a clearer, more structured layout.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Clearer overview:</strong> Rating, install count, target user, install eligibility, white-label support, pricing, version, and developer info are easier to scan.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;