INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Current LinkedIn workflows should continue to work as expected.</li>
<li>Future LinkedIn enhancements will be delivered through this Marketplace foundation.</li>
</ul>
<h2>Benefits</h2>
<ul>
<li>Stronger security and authentication controls</li>
<li>Improved reliability and maintainability</li>
<li>Scalable architecture for future LinkedIn features</li>
<li>Foundation for upcoming multi-account LinkedIn support</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1150', 'Find available rentals faster with date filters on the booking page', 'Overview It is now easier for customers to find the right rental. Customers can filter listings on the Rentals Booking Page by selecting a Start Date and End Date before browsing. The system shows listings that are available during the selected rental period and pre-fills booking...', '<h2>Overview</h2>
<p>It is now easier for customers to find the right rental.</p>
<p>Customers can filter listings on the Rentals Booking Page by selecting a <strong>Start Date</strong> and <strong>End Date</strong> before browsing. The system shows listings that are available during the selected rental period and pre-fills booking details when a listing is opened.</p>
<h2>What’s new</h2>
<p><strong>Filter listings by date range</strong></p>
<p>Customers can filter by Start Date and End Date directly from the booking page. After both dates are selected:</p>
<ol>
<li>Listings are filtered based on availability</li>
<li>Only relevant listings are shown</li>
<li>Booking details are pre-filled when a listing is opened</li>
</ol>
<p><strong>Works across all booking modes</strong></p>
<ul>
<li>The date filter adapts to the booking mode configured for each listing.</li>
<li>All booking rules (availability, inventory, lead time, buffers, duration requirements, and advance booking limits) are applied before a listing is shown.</li>
</ul>
<p><strong>Date selector listings</strong></p>
<ul>
<li>Listings are shown only when they can be booked for the complete selected date range.</li>
</ul>
<p><strong>Note:</strong> Nightly rentals that require at least one night will not appear when the same start and end date are selected.</p>
<p><strong>Date and time selector listings</strong></p>
<ul>
<li>Listings are shown only when a continuous booking can be created for the selected date range.</li>
<li><strong>Example:</strong> If a customer searches July 10 to July 12, a listing can appear even if it is available from 11:30 PM on July 10 to 12:30 AM on July 12.</li>
</ul>
<p><strong>Fixed duration listings</strong></p>
<ul>
<li>Listings are shown if the rental can start within the selected date range.</li>
<li>The rental may end after the selected end date depending on the configured duration.</li>
</ul>
<h2>How to use</h2>
<ul>
<li>Open the Rentals Booking Page.</li>
<li>Select a <strong>Start Date</strong> and <strong>End Date</strong> in the Availability filter and click <strong>Apply</strong>.</li>
<li>Browse the filtered listings.</li>
<li>Open a listing to view the pre-filled booking details.</li>
<li>Complete the booking as usual.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Helps customers find available rentals faster.</li>
<li>Reduces time spent checking availability manually for each listing.</li>
<li>Improves booking conversion with clearer discovery and smarter defaults.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1149', 'Improved SEO subscription management in Leadli', 'Overview SEO subscription management has been updated with a more guided cancellation experience and clearer visibility into subscription changes. This update replaces the previous one-click unsubscribe flow with a structured process under Manage Subscription, so users can make c...', '<h2>Overview</h2>
<p>SEO subscription management has been updated with a more guided cancellation experience and clearer visibility into subscription changes.</p>
<p>This update replaces the previous one-click unsubscribe flow with a structured process under Manage Subscription, so users can make clear choices before and after cancellation.</p>
<h2>What’s improved</h2>
<ul>
<li>Cancellation now uses a guided Manage Subscription flow instead of a single unsubscribe action.</li>
<li>Before canceling, users can choose whether to keep their SEO fixes or revert them.</li>
<li>Users can cancel immediately or schedule cancellation for the end of the current billing cycle.</li>
<li>Scheduled cancellations can be revoked in the app using “Keep my subscription.”</li>
<li>Subscription changes are tracked more consistently for better visibility.</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Go to SEO.</li>
<li>Open Settings.</li>
<li>Click Manage Subscription.</li>
<li>Follow the cancellation steps to keep or discard fixes, then cancel immediately or schedule cancellation.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Users have more control over what happens to their SEO work before canceling.</li>
<li>The cancellation process is clearer and more predictable.</li>
<li>Users can reverse a scheduled cancellation without contacting support.</li>
<li>The subscription experience is more consistent across the platform.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1148', 'Upload images to Media Storage from a URL', 'You can now add images to your Media Storage using a public image URL. This helps you avoid downloading files to your device before uploading. What’s new Upload from URL: Import images directly from any publicly accessible image link. Preview before import: Review a thumbnail pre...', '<p>You can now add images to your Media Storage using a public image URL. This helps you avoid downloading files to your device before uploading.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Upload from URL:</strong> Import images directly from any publicly accessible image link.</li>
<li><strong>Preview before import:</strong> Review a thumbnail preview before adding the image to your library.</li>
<li><strong>Auto-detected file details:</strong> File name and image dimensions are pulled from the source URL automatically.</li>
<li><strong>Built-in validation:</strong> Get feedback for invalid links, unsupported formats, or oversized images.</li>
<li><strong>Copyright confirmation:</strong> Confirm you have permission to use the image before importing.</li>
<li><strong>Library management:</strong> Imported images are saved to your current Media Storage folder and behave like standard uploads.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Open <strong>Media Storage</strong>.</li>
<li>Click <strong>Upload</strong>, then select <strong>Upload from URL</strong>.</li>
<li>Paste a public image URL and submit it.</li>
<li>Review the preview and file details.</li>
<li>Click <strong>Import</strong>.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;