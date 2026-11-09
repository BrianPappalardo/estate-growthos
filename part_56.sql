INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h3>Notes</h3>
<ul>
<li>This applies to both SaaS V1 and V2 accounts.</li>
<li>For bulk SaaS enablement, attaching a snapshot is not available yet, so your existing assets are protected by default in that flow.</li>
</ul>
<h3>Coming next</h3>
<ul>
<li>The same conflict warning and choice used in individual SaaS enablement will be added to bulk SaaS enablement once snapshot attachment is available.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-10T12:11:00.000Z'),
('wp-1405', 'Conditional form support for Services and Rentals', 'Overview Leadli now supports full conditional logic for custom forms used with bookings in Services and Rentals. Field show/hide rules continue to work during booking, and you can now apply post-booking actions (such as redirects, custom messages, and lead disqualification) throu...', '<h2>Overview</h2>
<p>Leadli now supports full conditional logic for custom forms used with bookings in Services and Rentals. Field show/hide rules continue to work during booking, and you can now apply post-booking actions (such as redirects, custom messages, and lead disqualification) through a global setting.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Post-booking conditional rules are supported:</strong> Redirect to URL, display a custom message, or disqualify a lead after the booking is submitted (when enabled in Global Settings).</li>
<li><strong>Form “On Submit” actions apply to the confirmation page:</strong> When enabled, the form’s submission action controls the confirmation experience instead of calendar-level confirmation settings.</li>
<li><strong>New global setting:</strong> In Global Settings &gt; Form &amp; confirmation, enable “Let a custom form override this with its own rules” to turn on full form control.</li>
<li><strong>Fallback behavior:</strong> If the attached form has no applicable post-booking settings, the confirmation page uses whatever is configured in Global Settings.</li>
<li><strong>Listing/service guidance:</strong> When choosing a custom form at the listing or service level, an inline banner explains how the form’s rules will behave.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Services/Rentals &gt; Global settings &gt; Form &amp; confirmation</strong>.</li>
<li>Select a <strong>custom form</strong> under <strong>Global form settings</strong>.</li>
<li>Under <strong>Confirmation page</strong>, enable <strong>Let a custom form override this with its own rules</strong>.</li>
<li>At the listing or service level, select the custom form. The inline banner will confirm whether the form rules are active.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>You can route customers to different URLs, show tailored messages, or disqualify leads based on booking answers.</li>
<li>Conditional logic now covers the full booking flow, not just the form fields.</li>
<li>Existing setups are protected by a fallback to Global Settings when the form has no post-booking rules.</li>
<li>Inline banners reduce confusion by explaining what will happen and where to change settings.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-10T11:48:57.000Z'),
('wp-1404', 'GPT Image 2.5 is now available in the AI Image Generation workflow action', 'GPT Image 2.5 is now available in the AI Image Generation action in Leadli workflows. Two model variants are included: Flare and Sunburst. What’s new GPT Image 2.5 Flare Flare is the default choice for most use cases. It is designed to produce higher quality output than GPT Image...', '<p>GPT Image 2.5 is now available in the AI Image Generation action in Leadli workflows. Two model variants are included: Flare and Sunburst.</p>
<h3>What’s new</h3>
<p><strong>GPT Image 2.5 Flare</strong></p>
<p>Flare is the default choice for most use cases. It is designed to produce higher quality output than GPT Image 2 with lower latency, which can help with creator content, social posts, product visuals, visual search, quick prototypes, and high-volume image generation.</p>
<p><strong>GPT Image 2.5 Sunburst</strong></p>
<p>Sunburst is designed for premium visual work where you need tighter control across edits. It is a good fit for campaign creative and polished product imagery.</p>
<h3>How to use it</h3>
<ol>
<li>Add the AI Image Generation action to your workflow.</li>
<li>Open the model dropdown.</li>
<li>Select GPT Image 2.5 Flare or GPT Image 2.5 Sunburst.</li>
<li>Write your prompt and save.</li>
</ol>
<h3>Why this matters</h3>
<p>Reference images should hold up better across changes in settings, style, and composition, while keeping subjects more consistent. You can also change a single element (such as a product, background, or text) while keeping the overall layout and brand treatment consistent, which makes it easier to iterate and localize variations inside a workflow.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-10T10:03:49.000Z'),
('wp-1403', 'Add reference images to the AI Image Generation action', 'The AI Image Generation action now supports reference images. You can attach up to five images to guide the output alongside your prompt. What’s included Up to five reference images per action: Add up to five images to a single AI Image Generation action. Each image is sent as vi...', '<p>The AI Image Generation action now supports reference images. You can attach up to five images to guide the output alongside your prompt.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Up to five reference images per action:</strong> Add up to five images to a single AI Image Generation action. Each image is sent as visual context together with your prompt.</li>
<li><strong>Multiple ways to add images:</strong> Upload from your computer, choose from the Media Library, or provide an image URL.</li>
<li><strong>Dynamic reference URLs:</strong> The URL field supports custom values, so you can pull a reference image from a webhook payload, a contact field, or a previous step in the workflow.</li>
<li><strong>Ordering matters:</strong> Images are processed in the order you add them, so you can refer to “the first image”, “the second image”, and so on in your prompt.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open the AI Image Generation action in your workflow.</li>
<li>Write your prompt as usual.</li>
<li>Scroll to the <strong>Reference images</strong> section.</li>
<li>Choose a source (upload, Media Library, or URL).</li>
<li>Add up to five images.</li>
<li>Refer to each image by position in your prompt.</li>
<li>Save the action.</li>
</ol>
<h3>Example</h3>
<p>If you want a lifestyle image without a photo shoot, you can upload reference images for the setting, the subject, and the logo. Then write a prompt that tells the model which reference image to use for each part of the scene.</p>
<h3>Why this helps</h3>
<p>Reference images make it easier to keep faces, settings, and logos consistent, and they reduce the guesswork that happens when you try to describe visual details with text alone. Using dynamic URLs can also help you generate personalized visuals at scale within a single workflow.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-10T09:13:58.000Z'),
('wp-1402', 'Self-service cancellation links for rental bookings', 'Overview Customers can now cancel their own rental bookings using a cancellation link. This release includes the main self-service cancellation flow, an optional cancellation window you can configure, and clearer operator visibility, while keeping refunds and security deposit dec...', '<h2>Overview</h2>
<p>Customers can now cancel their own rental bookings using a cancellation link. This release includes the main self-service cancellation flow, an optional cancellation window you can configure, and clearer operator visibility, while keeping refunds and security deposit decisions manual and controlled by the operator.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Self-service cancellation:</strong> Customers can cancel an upcoming booking from their confirmation link. The booking is released immediately with no approval step. Self-service cancellation is available until the booking starts. Once a booking is active or completed, self-service cancellation is not offered.</li>
<li><strong>Cancellation reason (optional):</strong> Customers can add a reason in their own words. This is optional and is saved to the booking for operator context.</li>
<li><strong>Configurable cancellation window:</strong> You can optionally set a cutoff period (minutes, hours, or days) before the booking start time. If you leave this off, customers can cancel any time up until the booking begins.</li>
<li><strong>Multi-listing booking support:</strong> For bookings with more than one listing, the booking details panel shows each listing with its dates. Cancelling applies to the full booking.</li>
<li><strong>Clear messaging for expired or already-used links:</strong> If a link has already been used or is no longer valid, the customer sees a clear message explaining what happened and how to get help.</li>
</ul>
<h2>How to use it</h2>
<ul>
<li>No setup is required for the core cancellation flow. It is automatically available in confirmation and reminder notifications for rental bookings.</li>
<li>To optionally set a cutoff window, go to <strong>Rentals → Global settings → Booking settings</strong> and enable <strong>Set cancellation link expiry</strong>, then choose your cutoff window.</li>
<li>To place the cancellation link into a notification template or confirmation page, insert <strong>null</strong> where the link should appear.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Reduces routine “please cancel my booking” requests that operators would otherwise handle manually.</li>
<li>Gives customers a straightforward way to manage cancellations without needing to email or call.</li>
<li>Keeps payments, security deposits, and refunds under operator control so nothing financial happens automatically.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-09-10T09:13:52.000Z'),
('wp-1401', 'User management update: refreshed profiles, user list, and permissions', 'Overview This update refreshes the user management experience with a cleaner layout across Agency and Sub-account. The actions and data remain the same, but navigation is simpler and more consistent. My Profile is now organized into tabs. The user list and the Create/Edit User fl...', '<p><strong>Overview</strong></p>
<p>This update refreshes the user management experience with a cleaner layout across Agency and Sub-account. The actions and data remain the same, but navigation is simpler and more consistent.</p>
<p>My Profile is now organized into tabs. The user list and the Create/Edit User flows have been redesigned. The labels &#8220;Team&#8221; (Agency) and &#8220;My Staff&#8221; (Sub-account) are now unified under one name: <strong>Users</strong>.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;