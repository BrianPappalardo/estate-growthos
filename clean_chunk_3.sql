INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1419', 'Workflow publishing now blocks publish when errors are found', 'Leadli now prevents publishing a workflow if it has unresolved configuration issues. When you try to publish, you will see a clear list of what needs to be fixed so broken workflows do not go live. What changed One list for all errors: Frontend and backend validation messages are...', '<p>Leadli now prevents publishing a workflow if it has unresolved configuration issues. When you try to publish, you will see a clear list of what needs to be fixed so broken workflows do not go live.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>One list for all errors:</strong> Frontend and backend validation messages are shown together in a single sidebar.</li>
<li><strong>Saving still works:</strong> Auto-save and manual save work even if there are validation errors, so you can keep progress and fix issues later.</li>
<li><strong>Publish requires a clean workflow:</strong> If errors remain, publishing is blocked and you will be prompted to review and resolve them.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Click <strong>Publish</strong> on your workflow.</li>
<li>If issues exist, review the list of errors.</li>
<li>Open each issue to jump to the related step and fix it.</li>
<li>After all issues are resolved, publish again.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>This helps ensure only working workflows are published, reduces guesswork about what is misconfigured, and makes publishing more predictable.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-11T12:41:54.000Z'),
('wp-1418', 'Manually retry failed subscription payments in Leadli', 'You can now manually retry failed subscription payments from the Subscription Details page when using NMI, Authorize.Net, Square, or Mercado Pago. This helps you recover subscription revenue after automatic retries are used up or not available. You can also update the card on the...', '<p>You can now manually retry failed subscription payments from the Subscription Details page when using NMI, Authorize.Net, Square, or Mercado Pago.</p>
<p>This helps you recover subscription revenue after automatic retries are used up or not available. You can also update the card on the subscription and collect payment using a new payment method.</p>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Payments &gt; Subscriptions</strong>.</li>
<li>Open a subscription with an <strong>Unpaid</strong> or <strong>Past due</strong> payment status.</li>
<li>When automatic retries are exhausted, retry the oldest unpaid payment using a saved card or a newly added card.</li>
<li>(Optional) Set the selected card as the subscription’s default payment method.</li>
</ol>
<h2>Retry rules</h2>
<ul>
<li>You can attempt a retry up to <strong>three times</strong> with the same card.</li>
<li>After three unsuccessful attempts, a <strong>24-hour</strong> cool-down applies before that card can be retried.</li>
<li>Warnings will indicate when another retry is not yet available.</li>
</ul>
<h2>Help article</h2>
<p><a href="https://help.leadconnectorhq.com/support/solutions/articles/155000008665-how-to-manually-retry-a-failed-subscription-payment" target="_blank" rel="ugc nofollow noopener noreferrer">How to manually retry a failed subscription payment</a></p>
<h2>Why it matters</h2>
<ul>
<li>Previously, failed payments could remain unpaid after automatic retries were exhausted.</li>
<li>Manual retries give you more control over payment recovery and help reduce involuntary churn without leaving Leadli.</li>
</ul>
<h2>What’s next</h2>
<p>We’ll continue improving subscription payment recovery across payment providers and make failed payment management more seamless.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-11T08:26:52.000Z'),
('wp-1417', 'Leadli Communities: Voice notes in posts and comments', 'Leadli Communities now supports voice notes in posts and comments. This makes it easier to share quick updates and respond without typing long replies. What’s included Record voice notes: Use the microphone button in the post or comment editor to record audio. You can pause, resu...', '<p>Leadli Communities now supports voice notes in posts and comments. This makes it easier to share quick updates and respond without typing long replies.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Record voice notes:</strong> Use the microphone button in the post or comment editor to record audio. You can pause, resume, or cancel before sending.</li>
<li><strong>Upload audio files:</strong> You can also upload audio files as attachments. Multiple audio files can be attached to a single post.</li>
<li><strong>Inline playback:</strong> Voice notes and uploaded audio can be played directly in the feed for both posts and comments. Playback speed options include 1x, 1.5x, and 2x, and audio can continue to the next track for easier listening.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Voice notes work in both posts and comments.</li>
<li>Playback speeds supported: 1x, 1.5x, and 2x.</li>
<li>Multiple audio attachments are supported per post.</li>
<li>Currently available on web. Mobile app support is coming soon.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-11T07:26:57.000Z'),
('wp-1408', 'Find apps in the Leadli Marketplace using Ask AI', 'Overview Ask AI is now connected to the Leadli App Marketplace. This makes it easier to find the right apps without manually browsing the Marketplace. You can describe what you need (for example, an IDX or real estate integration), and Ask AI will suggest relevant Marketplace app...', '<h2>Overview</h2>
<p>Ask AI is now connected to the Leadli App Marketplace. This makes it easier to find the right apps without manually browsing the Marketplace.</p>
<p>You can describe what you need (for example, an IDX or real estate integration), and Ask AI will suggest relevant Marketplace apps based on your request.</p>
<h2>What’s included</h2>
<ol>
<li><strong>AI-powered app discovery</strong>
<ul>
<li>Ask for apps or integrations using natural language.</li>
<li>Ask AI interprets your intent and searches the Marketplace for relevant apps.</li>
<li>You do not need to know the exact app name or category.</li>
</ul>
</li>
<li><strong>Relevant Marketplace recommendations</strong>
<ul>
<li>Ask AI returns the most relevant Marketplace apps for your request.</li>
<li>Recommendations can include details like app name, category, description, and key capabilities.</li>
<li>Select <em>View Details</em> to learn more about a recommended app.</li>
<li>Select <em>Show more apps in Marketplace</em> to see additional options.</li>
</ul>
</li>
<li><strong>Agency controls for discoverability</strong>
<ul>
<li>Agencies can control whether Marketplace apps can be discovered by sub-accounts through Ask AI.</li>
<li>Go to <em>App Marketplace → Settings → Marketplace Visibility</em> and configure <em>Ask AI Discoverability</em> for sub-account users.</li>
<li>If enabled, sub-account users can discover Marketplace apps through Ask AI.</li>
<li>If disabled, Ask AI will not show Marketplace app recommendations to sub-account users.</li>
<li>These controls apply to sub-account admins only; agency admins still have access to Marketplace discovery.</li>
</ul>
</li>
</ol>
<h2>How to use it</h2>
<ol>
<li>Open Ask AI.</li>
<li>Describe the app, integration, or capability you are looking for (for example, an IDX or real estate integration).</li>
<li>Review the recommended Marketplace apps.</li>
<li>Select <em>View Details</em> to explore a recommendation.</li>
<li>Select <em>Show more apps in Marketplace</em> to browse more options.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This update reduces the need to manually search or navigate the Marketplace.</li>
<li>You can discover apps based on a business need, even if you are not sure which integration you need.</li>
<li>Existing Marketplace visibility and app access controls still apply.</li>
<li>If Marketplace visibility through Ask AI is disabled for a sub-account, Ask AI will not show Marketplace app recommendations for that user.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-10T13:52:07.000Z'),
('wp-1407', 'View Meta post-publish recommendations in Leadli Ad Manager', 'Leadli Ad Manager now shows Meta’s post-publish recommendations directly inside published campaigns. This helps you spot optimization opportunities without switching to Meta Ads Manager. What’s new See Meta-generated recommendations from the campaign Review screen. See how many r...', '<p>Leadli Ad Manager now shows Meta’s post-publish recommendations directly inside published campaigns. This helps you spot optimization opportunities without switching to Meta Ads Manager.</p>
<h2>What’s new</h2>
<ul>
<li>See Meta-generated recommendations from the campaign <strong>Review</strong> screen.</li>
<li>See how many recommendations are available at a glance.</li>
<li>Review the suggested change, what it affects, and any expected performance improvement (when Meta provides it).</li>
<li>See the recommendation impact level: High, Medium, or Low.</li>
<li>Select <strong>Review and Update</strong> to jump to the relevant campaign section and apply the change.</li>
<li>When there are no suggestions, you will see a clear “No recommendations right now” message.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open a published Meta campaign in Leadli Ad Manager.</li>
<li>Go to the <strong>Review</strong> screen.</li>
<li>Select <strong>Meta recommendations</strong> to view available suggestions.</li>
<li>Select <strong>Review and Update</strong> on a recommendation.</li>
<li>Make the suggested change in the relevant campaign section.</li>
</ol>
<h2>Why this feature</h2>
<p>Campaign optimization continues after publishing. By showing Meta’s recommendations inside Leadli Ad Manager, you can review and apply improvements without moving between tools.</p>
<h2>What’s next</h2>
<p>We plan to show Opportunity Score alongside Meta recommendations for published campaigns to support ongoing optimization throughout the campaign lifecycle.</p>
<h2>Notes</h2>
<ol>
<li>Recommendations and expected outcomes are provided by Meta and may change as performance data evolves. Applying a recommendation does not guarantee improved results.</li>
<li>Only recommendations that can be addressed directly within Leadli Ad Manager are shown.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-09-10T13:06:09.000Z'),
('wp-1406', 'Sub-account customizations are protected when applying a snapshot', 'This update adds a safeguard when you enable SaaS for a sub-account and attach a snapshot. What changed If the snapshot would overwrite anything you have already customized in the sub-account, you will see a warning before changes are made. You can then choose to keep your existi...', '<p>This update adds a safeguard when you enable SaaS for a sub-account and attach a snapshot.</p>
<h3>What changed</h3>
<p>If the snapshot would overwrite anything you have already customized in the sub-account, you will see a warning before changes are made. You can then choose to keep your existing assets or overwrite them with the snapshot’s version. If there is no conflict, the snapshot applies as usual.</p>
<h3>Why this matters</h3>
<p>Previously, attaching a snapshot could overwrite funnels, websites, or other assets you had already updated in a sub-account without warning. This change makes conflicts visible and lets you decide what happens to your work.</p>
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
<p>This update is available through <strong>Labs</strong>.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>My Profile tabs</strong>: Profile settings are split into clear tabs instead of one long page.
<ul>
<li><strong>Agency</strong>: General and Security</li>
<li><strong>Sub-account</strong>: General, Security, Calendars, Conversations, and Notifications</li>
</ul>
</li>
<li><strong>Notifications tab (Sub-account)</strong>: Channel-by-channel visibility replaces the previous cluttered layout.</li>
<li><strong>Standardized naming</strong>: &#8220;Team&#8221; and &#8220;My Staff&#8221; are now both labeled &#8220;Users&#8221;. This is a label change only; functionality is unchanged.</li>
<li><strong>Updated Users list</strong>: A refreshed layout for viewing and managing users.</li>
<li><strong>Create/Edit User flows</strong>: Updated screens, including how permissions are managed.</li>
<li><strong>Roles &amp; Permissions clarity</strong>: Permissions are organized with a left navigation, collapsible sections, and a module search to jump directly to what you need.</li>
<li><strong>Sub-account user settings tabs</strong>: Call/voicemail settings, availability, calendar configuration, and notification settings have updated layouts.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>This is a UI and navigation refresh; underlying capabilities and permissions are unchanged.</li>
<li>Existing profile settings, user data, and permission configurations carry over as-is.</li>
<li>The tabbed layout supports adding more settings in the future without making the page harder to use.</li>
</ul>
<p><strong>How to enable</strong></p>
<ol>
<li>Open <strong>Labs</strong> in your Agency settings.</li>
<li>Turn on <strong>User Management &#8211; UI Refresh</strong>.</li>
<li>Visit <strong>My Profile</strong> and <strong>Users</strong> to review the changes.</li>
</ol>
<p><strong>Release and availability</strong></p>
<ul>
<li>Release date: Sep 07, 2026</li>
<li>Status: Live via Labs</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-09T14:51:08.000Z'),
('wp-1400', 'Fix: Billing now shows the correct amount for HUF-priced plans', 'Billing in the client portal now shows the exact price your agency set for plans priced in Hungarian Forint (HUF). Previously, the billing view could display a number that was 100 times too high (for example, 9,700 HUF appearing as 970,000 HUF). This update makes it easier to con...', '<p>Billing in the client portal now shows the exact price your agency set for plans priced in Hungarian Forint (HUF). Previously, the billing view could display a number that was 100 times too high (for example, 9,700 HUF appearing as 970,000 HUF).</p>
<p>This update makes it easier to confirm what you’re being charged and avoids confusing totals.</p>
<ul>
<li>Applies to plans priced in HUF.</li>
<li>No action needed—the correct price displays automatically.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-09T05:39:50.000Z'),
('wp-1399', 'AI Studio now supports server-side rendering, server functions, and secrets', 'AI Studio can now generate full-stack web apps that include server-rendered pages, server-side logic, REST APIs, and a secrets vault. Framework: TanStack Start New AI Studio projects use TanStack Start, which provides routing, a server runtime, and an app structure that supports ...', '<p>AI Studio can now generate full-stack web apps that include server-rendered pages, server-side logic, REST APIs, and a secrets vault.</p>
<h2>Framework: TanStack Start</h2>
<p>New AI Studio projects use TanStack Start, which provides routing, a server runtime, and an app structure that supports both frontend and backend code.</p>
<h2>Server-side rendering (SSR)</h2>
<p>Pages are rendered on the server for each request so search engines and link previews can read the page content without relying on client-side rendering.</p>
<h2>Server functions</h2>
<p>You can add server functions to load data, call external APIs, and keep sensitive logic on the server while exposing only the results to the browser.</p>
<h2>REST APIs</h2>
<p>You can also publish REST endpoints under <code>/api/...</code> to accept and return JSON with standard HTTP methods such as GET and POST.</p>
<h2>Secrets</h2>
<p>API keys and tokens can be stored in Secrets so they are not shipped to the browser or exposed in the frontend bundle. Secrets can be used in both preview and production environments.</p>
<h2>Existing projects</h2>
<p>Current React projects continue to run as they do today. A migration guide for moving older projects to the new framework is expected later.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-08T16:12:29.000Z'),
('wp-1394', 'Set working hours for Leadli Conversation AI agents', 'Leadli Conversation AI agents can now follow working hours, so they respond only during the times you choose. What you can set Working days and hours per agent (including multiple time blocks for breaks or split shifts). Channels that follow the schedule , such as SMS, Email, Wha...', '<p>Leadli Conversation AI agents can now follow working hours, so they respond only during the times you choose.</p>
<h3>What you can set</h3>
<ul>
<li><strong>Working days and hours per agent</strong> (including multiple time blocks for breaks or split shifts).</li>
<li><strong>Channels that follow the schedule</strong>, such as SMS, Email, WhatsApp, Instagram, Facebook, Chat Widget, Live Chat, and TikTok. Channels you do not select can continue responding 24/7.</li>
<li><strong>Timezone behavior</strong>: use the contact’s timezone or your business timezone.</li>
</ul>
<h3>After-hours behavior</h3>
<ul>
<li><strong>Continue an active conversation after closing</strong> if it started during working hours, until it becomes inactive.</li>
<li><strong>Send an off-hours auto-reply</strong> with your custom message (supports custom values for personalization).</li>
<li><strong>Notify your team</strong> about after-hours messages (admins, users, assigned users, team members, or custom email addresses).</li>
<li><strong>Tag contacts who message after hours</strong> so they are easier to find and follow up with.</li>
<li><strong>Follow up when business hours resume</strong> if the customer has not already received a response from an agent or a team member.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Working hours are optional. If they are not enabled, agents respond as they do today.</li>
<li>Off-hours replies, notifications, and tagging trigger once per closed period (customers won’t get repeated acknowledgements for every message).</li>
<li>If advanced follow-up hours are also configured, the agent’s working hours take priority for the channels included in the schedule.</li>
<li>Agents can still be manually activated outside working hours when needed.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-07T13:35:05.000Z'),
('wp-1393', 'Generate images in workflows with the AI Image Generation action', 'You can now generate an image inside a workflow using the AI Image Generation action under AI Actions. What’s included Model selection: Choose from multiple supported image models. Prompt input: Type a prompt directly or insert data from a contact field, a webhook payload, or a p...', '<p>You can now generate an image inside a workflow using the AI Image Generation action under AI Actions.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Model selection:</strong> Choose from multiple supported image models.</li>
<li><strong>Prompt input:</strong> Type a prompt directly or insert data from a contact field, a webhook payload, or a previous action.</li>
<li><strong>Prompt enhancement:</strong> Optionally expand a short prompt into a more detailed one.</li>
<li><strong>Templates:</strong> Start from common templates such as product mockups, social posts, promo flyers, or lifestyle images.</li>
<li><strong>Quality settings:</strong> Set the quality level (the default is Auto).</li>
<li><strong>Brand settings:</strong> Optionally apply your Design Kit and Brand Voice.</li>
<li><strong>Output settings:</strong> Configure image size, background, and file format.</li>
<li><strong>Storage and output:</strong> The generated image is saved to Media Storage and the action returns a public Image URL value for later steps.</li>
</ul>
<h2>Pricing</h2>
<p>Image generation is billed per execution. Actual cost depends on the model, quality, size, and any additional context you include (such as Design Kit or Brand Voice).</p>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add the <strong>AI Image Generation</strong> action.</li>
<li>Select the model and set the quality.</li>
<li>Enter a prompt (or insert a value so the prompt is filled from your data at run time).</li>
<li>Optionally use Enhance Prompt or start from a template.</li>
<li>Optionally adjust additional settings such as size, background, format, Design Kit, and Brand Voice.</li>
<li>Save the action and use the returned Image URL in the steps that follow.</li>
</ol>
<h2>Important note about public URLs</h2>
<p>The generated image is stored at a public URL. Anyone with the link can access it without logging in. Avoid including sensitive customer data in prompts when that could be reflected in the generated image.</p>
<h2>Why this matters</h2>
<p>This lets a workflow create a visual asset on demand. You can use the Image URL in later steps to include it in messages, publish it to social channels, store it in a custom field, or pass it to a webhook.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-07T07:34:09.000Z'),
('wp-1392', 'New workflow action: Analyze an image with AI', 'You can now analyze an image inside a workflow using the AI Analyze Image action. Provide a public image URL and an analysis prompt. The action will return the result as text. This is a premium action. Each execution has an additional charge. What this action can do Text extracti...', '<p>You can now analyze an image inside a workflow using the AI Analyze Image action.</p>
<p>Provide a public image URL and an analysis prompt. The action will return the result as text.</p>
<p>This is a premium action. Each execution has an additional charge.</p>
<h2>What this action can do</h2>
<ul>
<li><strong>Text extraction:</strong> Read text from receipts, invoices, screenshots, and documents.</li>
<li><strong>Image descriptions:</strong> Get a written description of what is in an image.</li>
<li><strong>Flexible prompts:</strong> Tell the model what to look for and how to answer. The prompt field supports custom values.</li>
<li><strong>Detail level:</strong> Choose Auto, High, or Low. High is better for small text. Low is faster.</li>
<li><strong>Model choice:</strong> Select between the available AI models.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add the <strong>AI Analyze Image</strong> action.</li>
<li>Select the model.</li>
<li>Enter a public image URL (a direct link to the image file).</li>
<li>Write the analysis prompt.</li>
<li>Set the detail level (Auto is the default).</li>
<li>Save the action.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The image URL must be public and accessible without logging in.</li>
<li>Do not use a link to a page that contains the image. Use the direct link to the image file.</li>
</ul>
<h2>Why this matters</h2>
<p>Your workflow can now read and interpret images, not just pass them between steps. You can use the text output in later actions, save it to a custom field, include it in an email or SMS, or send it through a webhook.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-07T07:21:18.000Z'),
('wp-1391', 'Dynamic value chips now show clearer states for missing or invalid values', 'What changed Dynamic value chips now support three states instead of two. This makes it easier to tell the difference between a value that exists but is not available in the current workflow, and a value that is actually invalid. How it works Each chip will appear in one of these...', '<p><strong>What changed</strong></p>
<p>Dynamic value chips now support three states instead of two. This makes it easier to tell the difference between a value that exists but is not available in the current workflow, and a value that is actually invalid.</p>
<p><strong>How it works</strong></p>
<p>Each chip will appear in one of these states:</p>
<ul>
<li><strong>Blue:</strong> The value is available in this workflow. It can be filled from the contact record, a system value (like the current date), or a previous step.</li>
<li><strong>Yellow:</strong> The value exists, but it is not available in this workflow. For example, a Google Sheets value in a workflow that has no Google Sheets step. In this case the chip renders blank unless another workflow passes the value in through an “Add to Workflow” action with input parameters.</li>
<li><strong>Red:</strong> The value does not exist. Nothing on the platform matches it, so it will not render in any workflow.</li>
</ul>
<p>Spacing inside handlebars is now handled more consistently as well. For example, values like <code>null</code> and <code>null</code> are treated the same.</p>
<p><strong>Why this matters</strong></p>
<p>Previously, any value that did not render could appear as an error, even when the setup was intentional (such as passing values between workflows). With the new split states, red is reserved for truly invalid values, and yellow indicates a valid value that just is not sourced in the current workflow.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-04T20:11:48.000Z'),
('wp-1390', 'Missed call text-back is now more reliable with smarter number selection', 'Overview When you miss a call, the follow-up text should still send successfully. Some phone numbers can receive calls but cannot send SMS, which can cause missed call text-backs to fail. This update improves number selection for missed call text-backs so messages have a better c...', '<h2>Overview</h2>
<p>When you miss a call, the follow-up text should still send successfully. Some phone numbers can receive calls but cannot send SMS, which can cause missed call text-backs to fail.</p>
<p>This update improves number selection for missed call text-backs so messages have a better chance of being delivered while staying aligned with messaging requirements.</p>
<h2>What’s new</h2>
<p>When a contact calls and you miss the call, the system will still try to send the text-back from the same number the contact called, as long as that number can send SMS.</p>
<p>If that number cannot send SMS, the system will automatically choose the next best option in this order:</p>
<ol>
<li>A number you have successfully messaged this contact from before</li>
<li>Your default outbound number</li>
<li>Another eligible messaging number available in the location</li>
</ol>
<p>This helps when calls come through number pools, call tracking numbers, unverified toll-free numbers, or any other number that is not eligible to send SMS.</p>
<h2>What contacts may notice</h2>
<p>Most of the time, nothing changes. The missed caller receives the follow-up text as expected.</p>
<p>In some cases, the text may come from a different number than the one they originally called. This is intentional so the message can be sent from a number that is eligible for SMS.</p>
<h2>Why this matters</h2>
<p>This improves follow-up consistency when calls are missed. It can help you reach more missed callers, keep follow-ups automated, and reduce failures caused by SMS-ineligible numbers.</p>
<h2>Good to know</h2>
<ul>
<li>Answered calls do not trigger a text-back.</li>
<li>If Missed Call Text Back is disabled in Phone System settings, no message will be sent.</li>
<li>Contact communication preferences and DND settings are still respected.</li>
<li>If no eligible sending number is available, the attempt will fail and the reason will be shown in the conversation.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-04T04:57:46.000Z'),
('wp-1389', 'Client Portal: User login workflow trigger supports the new Client Portal experience', 'Overview The User login workflow trigger now runs when someone logs in through the new Client Portal experience, not only through legacy membership logins. There is also a new Client Portal category in the trigger picker so all Client Portal triggers are grouped together. What’s ...', '<h2>Overview</h2>
<p>The <strong>User login</strong> workflow trigger now runs when someone logs in through the new Client Portal experience, not only through legacy membership logins. There is also a new <strong>Client Portal</strong> category in the trigger picker so all Client Portal triggers are grouped together.</p>
<h2>What’s new</h2>
<ul>
<li><strong>User login trigger supports the new Client Portal</strong>: Successful logins from the new Client Portal now emit the same trigger event as legacy membership logins. Existing workflows using the User login trigger will start running for these logins automatically.</li>
<li><strong>New “Client Portal” category in the trigger picker</strong>: Client Portal triggers are now grouped in one place. This includes User login (moved from Courses) and Client portal file uploaded (moved from Membership).</li>
<li><strong>Clearer helper text</strong>: The User login trigger description now explains that it covers both legacy membership logins and logins from the new Client Portal experience.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open the Workflow Builder.</li>
<li>Click <strong>Add trigger</strong> and search for <strong>User login</strong>.</li>
<li>Select it under the <strong>Client Portal</strong> category.</li>
<li>Save your workflow. It will fire for both legacy membership logins and the new Client Portal logins.</li>
</ol>
<p><strong>Already using this trigger?</strong> No changes are required. Existing workflows will automatically include logins from the new Client Portal experience.</p>
<h2>Why this matters</h2>
<p>Previously, agencies using the new Client Portal experience could not automate based on member logins because the trigger only covered legacy memberships. Trigger placement was also inconsistent, which made it harder to find the right option. This update closes that gap and keeps Client Portal triggers together where you would expect them.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-03T11:15:52.000Z'),
('wp-1387', 'Toll-free verification now requires Privacy Policy and Terms &#038; Conditions URLs', 'Toll-free verification now requires two website links: your Privacy Policy URL and your Terms & Conditions URL. Starting September 15, 2026, carriers will reject any new toll-free verification submission that does not include both links. These fields are available now and must be...', '<p>Toll-free verification now requires two website links: your Privacy Policy URL and your Terms &amp; Conditions URL.</p>
<p>Starting September 15, 2026, carriers will reject any new toll-free verification submission that does not include both links. These fields are available now and must be filled out before you submit.</p>
<h3>What changed</h3>
<ul>
<li>Two new required fields have been added on Step 3 (Messaging use case), below the opt-in workflow section.</li>
<li>Steps 1 and 2 are unchanged.</li>
<li>Already verified numbers are not affected and do not need to be resubmitted.</li>
</ul>
<h3>Why this matters</h3>
<ul>
<li>Including both links now helps avoid carrier rejections and keeps new numbers moving.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-02T07:36:43.000Z'),
('wp-1385', 'New templates are now available in Leadli', 'New templates are now available in Leadli for websites, funnels, email campaigns, ads, and workflows. They are designed to be easy to customize so you can publish faster. What’s new Website templates: 1 new template (Business Coaching & Consulting) Funnel templates: 1 new templat...', '<p>New templates are now available in Leadli for websites, funnels, email campaigns, ads, and workflows. They are designed to be easy to customize so you can publish faster.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Website templates:</strong> 1 new template (Business Coaching &amp; Consulting)</li>
<li><strong>Funnel templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Email templates:</strong> 1 new template (Business Coaching &amp; Consulting)</li>
<li><strong>Social templates:</strong> 4 new templates (Other: 2; Home Services: 2)</li>
<li><strong>Facebook Ad templates:</strong> 2 new templates (Automotive – Car Detailing; Business Coaching &amp; Consulting – Education Tutor)</li>
<li><strong>Google Ad templates:</strong> 5 new templates (Other – Cell Phone Repair; Medical – Hair Regrowth; Marketing Agency – Digital Content Creator; Legal – Personal Injury Law Firm; Insurance – Commercial Insurance Services)</li>
<li><strong>LinkedIn Ad templates:</strong> 7 new templates (Finance – Financial Investor; Insurance – P&amp;C Insurance Advisor; Marketing Agency – Digital Networking Services; Creative – Engraving Shop; Business Coaching &amp; Consulting – Learning Specialist; Real Estate – Home Loan Specialist; Finance – Financial Record Keeper)</li>
<li><strong>Workflow templates:</strong> 1 new template (Industry-Specific – Insurance Policy Renewal Reminder)</li>
</ul>
<h3>Updated template</h3>
<p>1 existing template was updated with refreshed copy and improved navigation and heading structure (Business Coaching &amp; Consulting – Career Coach).</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-29T15:33:30.000Z'),
('wp-1383', 'Workflow Builder: Choose a sender domain for each workflow', 'Update You can now choose a sender domain at the workflow level. When set, every email action in that workflow will send from the selected verified dedicated domain, similar to how domain selection works in Email Campaigns. How it works In Workflow Settings, go to Sender details ...', '<p><strong>Update</strong></p>
<p>You can now choose a sender domain at the workflow level. When set, every email action in that workflow will send from the selected verified dedicated domain, similar to how domain selection works in Email Campaigns.</p>
<p><strong>How it works</strong></p>
<ul>
<li>In Workflow Settings, go to Sender details and select a Sender domain.</li>
<li>The dropdown shows verified dedicated domains available in the sub-account, plus an option for All domains.</li>
</ul>
<p><strong>Options</strong></p>
<ul>
<li><strong>All domains:</strong> Enter a sender name and email prefix (for example, <code>marketing</code>). Emails will continue to use the weighted distribution across your configured domains.</li>
<li><strong>Specific domain:</strong> Select a domain and enter the email prefix. For example, <code>marketing@example.com</code>.</li>
</ul>
<p><strong>Important notes</strong></p>
<ul>
<li>If you type a full sender email that uses a different domain than the one selected, the sender email will override the selected domain. A mismatch warning may appear because it can affect deliverability.</li>
<li>Sender details set inside an individual email action override the workflow-level sender settings.</li>
<li>Only verified domains from Email Services appear in the dropdown.</li>
</ul>
<p><strong>Why this change helps</strong></p>
<p>Previously, all workflows in a sub-account used the same sending domain. Now you can separate different types of email (reminders, receipts, promotions, outreach) across different domains, so issues with one type are less likely to impact the others.</p>
<p><strong>Example</strong></p>
<p>Send appointment reminders and payment receipts from <code>mail.acmeclinic.com</code>, and run promotional nurtures from <code>news.acmeclinic.com</code>.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-28T14:53:43.000Z'),
('wp-1382', 'Test SMS in workflows now includes a country picker', 'The “Test Phone Number” field in the Send SMS workflow action now uses the standard phone input with a country picker. This makes it easier to send a quick test without manually adding a country code. The field now shows a simple “Invalid phone number” message when the number for...', '<p>The “Test Phone Number” field in the Send SMS workflow action now uses the standard phone input with a country picker.</p>
<p>This makes it easier to send a quick test without manually adding a country code. The field now shows a simple “Invalid phone number” message when the number format is not valid.</p>
<p><strong>How it works</strong></p>
<ul>
<li>The country picker appears in front of the phone number field.</li>
<li>It defaults to the sub-account’s country.</li>
<li>The selected country is used to save the number in full international format before the test SMS is sent.</li>
<li>You can click the flag to search by country name or dialing code and switch countries.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the Send SMS action in your workflow and scroll to “Test Phone Number.”</li>
<li>Keep the default country, or choose a different one from the picker.</li>
<li>Enter the number in local format and click “Send test SMS.”</li>
</ul>
<p><strong>Why this change matters</strong></p>
<p>Many people enter their number the way they normally dial it. Previously, tests often failed when the country code was missing, which made testing slower and more confusing.</p>
<p><strong>Examples</strong></p>
<ul>
<li>If your sub-account is set to India and you enter <code>9089786755</code>, the test will send to <code>+919089786755</code>.</li>
<li>If you switch the picker to the US and enter <code>4088613552</code>, the test will send to <code>+14088613552</code>.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-27T13:35:20.000Z'),
('wp-1381', 'Certificate AI (Beta) is now available', 'Certificate AI (Beta) lets you create a certificate starting from a short prompt. Describe what you need and it generates a complete, editable certificate design in minutes. What’s new Generate with AI: Describe the certificate you want and the AI creates a first design. Guided c...', '<p>Certificate AI (Beta) lets you create a certificate starting from a short prompt. Describe what you need and it generates a complete, editable certificate design in minutes.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Generate with AI:</strong> Describe the certificate you want and the AI creates a first design.</li>
<li><strong>Guided creation:</strong> The AI asks a few relevant questions (for example, certificate orientation) to match your requirements.</li>
<li><strong>Complete designs:</strong> The AI can include text, frames, signatures, QR codes, and other Certificate Builder elements.</li>
<li><strong>Fully editable:</strong> You can continue customizing the certificate in the Certificate Builder.</li>
<li><strong>Quick prompts:</strong> Start from common use cases like course completions, milestones, event participation, and training.</li>
</ul>
<p><strong>How to access</strong></p>
<ul>
<li>In Leadli, go to <strong>Memberships</strong> → <strong>Credentials</strong>, then describe the certificate you want to create.</li>
</ul>
<p>Certificate AI is currently in beta, and we will keep improving it based on your feedback.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-27T09:50:26.000Z'),
('wp-1380', 'Date range can count only available working days', 'Overview The Date Range setting now has a more accurate counting option across Calendars, Services, and Rentals. You can turn on Count available days only so the booking window is based on working days, not calendar days that include weekends or closed days. What’s new Count avai...', '<h2>Overview</h2>
<p>The Date Range setting now has a more accurate counting option across Calendars, Services, and Rentals. You can turn on <strong>Count available days only</strong> so the booking window is based on working days, not calendar days that include weekends or closed days.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Count available days only</strong>: When enabled, days outside your availability schedule are skipped when calculating the date range. For example, if you’re closed on weekends and use a 2-day range, the window will extend to the next available working days instead of showing empty days.</li>
<li><strong>Works with minimum scheduling notice</strong>: When this option is on, the date range starts from the first available day after the minimum notice period ends, so customers still see the full number of days you configured.</li>
<li><strong>Supported across calendar types</strong>: Available on Meeting Calendars, Services, and Rentals. Round robin and collective calendars are supported (a day is considered available if at least one assigned team member is available). Date-specific hour overrides are respected (added days count, blocked days are skipped).</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendars → Calendar Settings</strong> and edit the calendar you want to update.</li>
<li>For <strong>Services</strong>, go to <strong>Services → Global Settings → Service Settings</strong>.</li>
<li>For <strong>Rentals</strong>, edit a listing and open <strong>Booking Settings</strong>.</li>
<li>Find the <strong>Date range</strong> setting and turn on <strong>Count available days only</strong>.</li>
<li>Save your changes.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Businesses with weekends closed or custom schedules won’t lose booking days to non-working days.</li>
<li>Customers are less likely to see empty calendars when real availability is coming up on the next working day.</li>
<li>Minimum notice and date range behave more predictably, which can reduce confusion and support requests.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-27T08:45:32.000Z'),
('wp-1379', 'WhatsApp messaging limits are now shown at the portfolio level', 'We updated how WhatsApp messaging limits appear in your sub-account to match Meta''s current model. Meta moved messaging limits from a per-phone-number basis to a business portfolio (WABA) basis, so all numbers under a portfolio share one daily limit. Leadli now shows that shared ...', '<p>We updated how WhatsApp messaging limits appear in your sub-account to match Meta&#8217;s current model. Meta moved messaging limits from a per-phone-number basis to a business portfolio (WABA) basis, so all numbers under a portfolio share one daily limit. Leadli now shows that shared limit accurately, instead of implying each number has its own quota.</p>
<p>Under Meta&#8217;s model, one high-volume number can consume your entire portfolio&#8217;s daily capacity. This update helps you understand what your business can send today based on the real shared limit.</p>
<h2>What changed on Meta&#8217;s side (effective Oct 7, 2025)</h2>
<p>Meta&#8217;s messaging limit is the maximum number of unique WhatsApp user phone numbers you can deliver to outside the 24-hour customer service window in a rolling 24-hour period. As of Oct 7, 2025, that limit is calculated and set at the portfolio level and shared across every phone number in the portfolio.</p>
<h3>Tier ladder updates</h3>
<ul>
<li><strong>New entry point above the starting limit:</strong> 2,000 replaces 1,000 as the first step up from the 250 starting limit, and it is the on-ramp to automatic scaling.</li>
<li><strong>How you reach 2,000:</strong> Complete a scaling path (verify your business, have your partner verify it, or send 2,000 delivered messages to unique recipients over a rolling 30-day period using high-quality templates).</li>
<li><strong>Above 2,000 is automatic:</strong> Increases to 10,000, then 100,000, then Unlimited happen automatically if quality stays high across all your numbers and templates, and you use at least 50% of your current limit over 7 days.</li>
<li><strong>Faster re-evaluation:</strong> Meta reassesses roughly every 6 hours, down from 24.</li>
<li><strong>No more quality-based downgrade:</strong> The “Flagged” number-quality state is gone. Low quality now gates scaling up, rather than reducing your limit.</li>
<li><strong>No warm-up for new numbers:</strong> A new phone number instantly inherits the portfolio&#8217;s current limit. On cutover, existing portfolios kept the highest limit among their numbers.</li>
</ul>
<h2>What we changed in Leadli</h2>
<h3>A portfolio-level messaging limits panel</h3>
<ul>
<li><strong>See the real shared limit:</strong> A messaging limits panel under WhatsApp Settings shows the portfolio-level limit that governs all your numbers.</li>
</ul>
<h3>Removed the misleading per-number column</h3>
<ul>
<li><strong>No more false impression of separate quotas:</strong> We removed the messaging limit column from the individual Phone Numbers view, because under the new model each number does not have its own limit.</li>
</ul>
<h3>Clearer context</h3>
<ul>
<li><strong>Tooltip:</strong> A tooltip explains that the limit is shared across the portfolio and that a single number can consume the full quota.</li>
</ul>
<h3>Localized</h3>
<ul>
<li><strong>13 languages:</strong> The new panel is fully localized.</li>
</ul>
<h2>Where to find it</h2>
<ol>
<li>Go to your <strong>sub-account</strong>.</li>
<li>Open <strong>WhatsApp Settings</strong>.</li>
<li>Select <strong>Messaging Limits</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Before this change, the limit shown under each number suggested every number had its own daily quota. It did not. Under Meta&#8217;s portfolio model, that gap can lead to unexpected send failures once the shared limit is reached. Leadli now shows one accurate view of what your business can actually send today, so you can plan volume against the real ceiling instead of a per-number assumption.</p>
<h2>Resources</h2>
<ul>
<li><a href="https://help.leadli.com/support/solutions/articles/155000001637-whatsapp-messaging-limits" rel="ugc nofollow noopener noreferrer" target="_blank">WhatsApp messaging limits (Leadli support)</a></li>
<li><a href="https://developers.facebook.com/docs/whatsapp/messaging-limits/" rel="ugc nofollow noopener noreferrer" target="_blank">Meta: WhatsApp messaging limits</a></li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-27T05:38:18.000Z'),
('wp-1378', 'Trigger workflows in bulk for Companies and Custom Objects', 'You can now trigger workflows for multiple Company or Custom Object records at once, directly from the list view. What''s new Select multiple Company or Custom Object records and trigger an automation in bulk. Choose the workflow you want to run without updating records individual...', '<p>You can now trigger workflows for multiple <strong>Company</strong> or <strong>Custom Object</strong> records at once, directly from the list view.</p>
<h2>What&#8217;s new</h2>
<ul>
<li>Select multiple Company or Custom Object records and trigger an automation in bulk.</li>
<li>Choose the workflow you want to run without updating records individually.</li>
<li>Track progress and review record-level results from <strong>Bulk Actions</strong>.</li>
</ul>
<h2>Why it matters</h2>
<p>Sometimes you need an automation to run for records that already exist, without waiting for a new workflow trigger. This update lets you quickly process a selected group of records for common operational tasks.</p>
<p>Examples include:</p>
<ul>
<li>Running onboarding or follow-up workflows for Companies.</li>
<li>Triggering renewal automation for Policies or Subscriptions.</li>
<li>Processing imported Custom Object records.</li>
<li>Running one-time workflows on selected records.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Companies</strong> or a <strong>Custom Object</strong>.</li>
<li>Select the records you want to process.</li>
<li>Click <strong>Trigger Automation</strong>.</li>
<li>Select the workflow.</li>
<li>Confirm the action.</li>
</ol>
<p>You can monitor the results from <strong>Bulk Actions</strong>.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-26T15:31:43.000Z'),
('wp-1377', 'Calendar guest enhancements: more flexible guest details', 'We improved guest management for calendars so you can choose what information to collect about guests while keeping guest contact data accurate. Choose what to collect for each guest Guest details were previously limited to name and email. You can now choose what to collect for e...', '<p>We improved guest management for calendars so you can choose what information to collect about guests while keeping guest contact data accurate.</p>
<h3>Choose what to collect for each guest</h3>
<p>Guest details were previously limited to name and email. You can now choose what to collect for each guest:</p>
<ul>
<li>Name and email</li>
<li>Name and phone</li>
<li>Name, email, and phone</li>
<li>Guest count only (collect only the number of guests without creating guest contacts)</li>
</ul>
<p>When guest details are collected, a contact is automatically created or matched for each guest using their email and/or phone number.</p>
<p><strong>Existing calendars:</strong> Calendars already collecting guest details will continue to use name and email, so there is no change to the current booking experience.</p>
<p><strong>New calendars:</strong> Guest details will default to name, email, and phone to help capture more complete guest information from the start.</p>
<h3>More accurate guest time zones</h3>
<p>Guest contacts created during a booking now inherit the primary contact’s time zone instead of automatically using the business time zone. If the guest already exists as a contact in the CRM, their existing time zone remains unchanged.</p>
<h3>Why this matters</h3>
<ul>
<li>Collect the guest contact information that is most relevant to your business</li>
<li>Create more complete guest contact records (including phone numbers when needed)</li>
<li>Keep time zone information consistent across attendees</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-26T10:09:41.000Z'),
('wp-1375', 'Request contact info to collect phone numbers from WhatsApp username leads', 'When someone messages you on WhatsApp using a username, WhatsApp may share only their username and not their phone number. Leadli now lets you request the customer’s phone number so the lead becomes fully reachable. What’s new Request contact info Share contact info button on tem...', '<p>When someone messages you on WhatsApp using a username, WhatsApp may share only their username and not their phone number. Leadli now lets you request the customer’s phone number so the lead becomes fully reachable.</p>
<h2>What’s new</h2>
<h3>Request contact info</h3>
<ul>
<li><strong>Share contact info button on templates:</strong> Add a “Share contact info” button to utility and marketing WhatsApp templates. When the customer taps it, their phone number is shared and saved on their contact record.</li>
<li><strong>Request contact info from workflows:</strong> Send the same request as an interactive WhatsApp message from a workflow step so you can ask for the number automatically.</li>
<li><strong>Duplicate-safe capture:</strong> The shared phone number is only added when no existing contact already has that number, helping prevent duplicate records.</li>
</ul>
<h3>WhatsApp calling</h3>
<ul>
<li><strong>Username support on WhatsApp calling:</strong> WhatsApp calling now works for contacts who use usernames, so they can stay in your calling process.</li>
</ul>
<h2>How to activate</h2>
<ol>
<li>Open <strong>Settings &gt; WhatsApp &gt; Templates</strong>.</li>
<li>Create or edit a template, and under <strong>Button (Optional)</strong> choose <strong>Share contact info</strong>.</li>
<li>To automate it, open <strong>Workflow &gt; Action &gt; WhatsApp interactive messages</strong>, set <strong>Interactive message type</strong> to <strong>Request Contact Info</strong>, and add your message body.</li>
</ol>
<h2>Why this matters</h2>
<p>Usernames help customers keep their phone number private, but it can also leave you with contacts you cannot call, export, or run phone-based automations on. Requesting contact info closes that gap by capturing the phone number in one tap while keeping your data clean.</p>
<ul>
<li>Turn username-only WhatsApp leads into contactable leads</li>
<li>Automate the request inside workflows</li>
<li>Maintain data quality with duplicate prevention</li>
<li>Keep WhatsApp calling available for username-based contacts</li>
</ul>
<h2>Resources</h2>
<ul>
<li><a href="https://developers.facebook.com/documentation/business-messaging/whatsapp/messages/interactive-messages" rel="ugc nofollow noopener noreferrer" target="_blank">Requesting phone numbers from users (Meta)</a></li>
<li><a href="https://help.leadli.com/support/solutions/articles/155000008491-how-to-utilise-the-username-in-interactive-messages" rel="ugc nofollow noopener noreferrer" target="_blank">Support article</a></li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-25T13:23:37.000Z'),
('wp-1374', 'Chat Widget now works with Brand Boards', 'The Chat Widget now integrates with Brand Boards, so you can keep every widget consistent with your brand. Your brand colors and fonts are available in the Styles panel. What’s included Brand colors in the color picker: Color pickers show your Brand Colors alongside a shared Defa...', '<p>The Chat Widget now integrates with Brand Boards, so you can keep every widget consistent with your brand. Your brand colors and fonts are available in the <strong>Styles</strong> panel.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Brand colors in the color picker:</strong> Color pickers show your Brand Colors alongside a shared <strong>Default</strong> palette.</li>
<li><strong>Existing colors carried over:</strong> Colors already used in your custom-themed Chat Widgets are added to the Default palette the first time you open the builder.</li>
<li><strong>Shared color palette:</strong> New colors you use are automatically added to the Default palette and become available across all Chat Widgets in that location.</li>
<li><strong>Brand fonts:</strong> Fonts from your Brand Board appear separately from the standard font library for easier access.</li>
<li><strong>Consistent styling experience:</strong> The Styles panel uses the same color picker experience used across Leadli for more consistent behavior.</li>
<li><strong>Cleaner palettes:</strong> Colors are normalized and deduplicated automatically to reduce duplicates.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Set up your Brand Board with your preferred colors and fonts.</li>
<li>Go to <strong>Chat Widget → Styles</strong>.</li>
<li>Open any supported color field.</li>
<li>Choose from your Brand Colors or the shared Default palette.</li>
<li>Select a Brand Font from the font picker, or use the standard font options.</li>
</ol>
<p>Your existing custom colors are automatically added to the Default palette, so there is nothing you need to recreate.</p>
<p>If you do not have a Brand Board set up yet, you will see an option to create one directly from the builder.</p>
<h3>Why this matters</h3>
<p>This update helps you maintain consistent branding across multiple Chat Widgets without repeatedly finding and re-entering the same colors and fonts.</p>
<h3>Notes</h3>
<ul>
<li><strong>Availability:</strong> Live in production for all custom-theme color pickers in Chat Widget.</li>
<li>Brand Colors are read-only in Chat Widget and are managed through Brand Boards.</li>
<li>The Default palette can be updated and is shared at the location level.</li>
<li>A configured Brand Board is required for Brand Colors to appear.</li>
<li>Existing Chat Widgets require no migration or reconfiguration.</li>
<li>Existing website embed snippets require no changes.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-25T07:54:33.000Z'),
('wp-1373', 'Chat widget: compliance notice and consent options', 'The chat widget now includes separate settings for a legal notice and visitor consent. This gives you more control over how compliance messages and opt-ins work. What you can do Show a legal notice below the contact form (no visitor action required). Add a consent checkbox with y...', '<p>The chat widget now includes separate settings for a legal notice and visitor consent. This gives you more control over how compliance messages and opt-ins work.</p>
<h2>What you can do</h2>
<ul>
<li>Show a legal notice below the contact form (no visitor action required).</li>
<li>Add a consent checkbox with your own wording (for example, SMS or email marketing consent).</li>
<li>Make consent required or optional.</li>
<li>Choose whether the consent checkbox is pre-checked when the form loads.</li>
<li>Show a clear validation message when required consent is missing.</li>
<li>Track consent in Activity details, including whether consent was required and the exact text shown.</li>
</ul>
<h2>Where to find the setting</h2>
<p>Go to <strong>Chat Widget → Chat window → Additional options → Compliance notice &amp; consent</strong>.</p>
<h2>Why this change</h2>
<p>Legal disclosures and marketing consent are not always the same thing. These options are now separate so you can configure each one correctly and keep a clear record of what a visitor agreed to.</p>
<h2>Availability and migration</h2>
<ul>
<li>Available to everyone.</li>
<li>Existing widgets do not change until you open them in the builder and save.</li>
<li>Existing legal notice text is carried over automatically.</li>
<li>Widgets created through A2P registration keep their current compliance configuration.</li>
</ul>
<h2>Default settings for new widgets</h2>
<ul>
<li>Legal notice: On</li>
<li>Consent checkbox: On</li>
<li>Required consent: Off</li>
</ul>
<p>No changes to your website embed code are required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-25T07:47:34.000Z'),
('wp-1372', 'Offer multiple meeting lengths in a single Leadli calendar', 'Update: You can now offer multiple meeting lengths in a single calendar, so people booking time with you can choose the duration that fits. Instead of creating separate calendars for 15-minute, 30-minute, or 60-minute meetings, you can set up to three duration options on the same...', '<p><strong>Update:</strong> You can now offer multiple meeting lengths in a single calendar, so people booking time with you can choose the duration that fits.</p>
<p>Instead of creating separate calendars for 15-minute, 30-minute, or 60-minute meetings, you can set up to three duration options on the same calendar.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Add up to <strong>3 duration options</strong></li>
<li>Choose which duration is selected by default</li>
<li>Add or remove duration options at any time</li>
</ul>
<p>When more than one duration is available, bookers will see the options on the booking page. Choosing a different duration refreshes availability to show time slots that fit the selected meeting length.</p>
<p>If only one duration is set, the booking experience stays the same.</p>
<p><strong>Where this is available</strong></p>
<ul>
<li>Web and mobile booking pages</li>
<li>Neo and Classic booking widgets</li>
<li>In-app appointment booking on web</li>
<li>Mobile app</li>
</ul>
<p><strong>Rescheduling</strong></p>
<p>The selected duration is also supported when rescheduling an appointment, so the meeting length can be changed along with the date or time.</p>
<p><strong>Existing appointments</strong></p>
<p>Changing your calendar duration options does not modify or cancel existing appointments.</p>
<p>For example, if you remove a 30-minute duration while future 30-minute appointments are already booked, those appointments remain unchanged. Their events, reminders, and notifications still use the originally booked duration.</p>
<p>New appointments can only use the duration options that are currently configured on the calendar.</p>
<p>When rescheduling, bookers will see the durations that are currently available. If their original duration is no longer offered, they will be asked to select a new duration before completing the reschedule.</p>
<p><strong>Supported calendar types</strong></p>
<ul>
<li>Personal Calendars</li>
<li>Round Robin Calendars</li>
<li>Collective Calendars</li>
<li>Event Calendars</li>
</ul>
<p>This makes it easier to offer flexible meeting lengths while keeping availability, bookings, and calendar management in a single calendar.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-25T02:31:34.000Z'),
('wp-1371', 'Free checkout without a credit card in Leadli Forms and Surveys', 'You can now choose whether a credit card is required when someone places a $0 order using the Sell Products element in Leadli Forms and Surveys. When Require credit card is turned off and the order total is $0 with no recurring charges due, the payment fields are hidden and the o...', '<p>You can now choose whether a credit card is required when someone places a $0 order using the Sell Products element in Leadli Forms and Surveys.</p>
<p>When <em>Require credit card</em> is turned off and the order total is $0 with no recurring charges due, the payment fields are hidden and the order completes as a free checkout.</p>
<h3>What changed</h3>
<ul>
<li>A new <em>Require credit card</em> setting is available on the Sell Products element in Forms and Surveys.</li>
<li>If the total is $0 (including cases where a 100% coupon discount brings the total to $0), payment fields are hidden when the setting is turned off.</li>
<li>If the Forms or Surveys are embedded in a Funnel, the Funnel-level credit card requirement takes precedence.</li>
<li>Subscriptions, free trials, and any order with a recurring amount still require a credit card.</li>
<li>If the total cannot be confirmed as $0, the payment fields will be shown to ensure payment is collected when needed.</li>
<li>Free orders are still created and recorded so submission and order history remain complete.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a Form or Survey and add (or edit) a Sell Products element.</li>
<li>Turn off <em>Require credit card</em>.</li>
<li>Test a $0 order with no recurring charges to confirm the payment fields are hidden and the order completes.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The setting defaults to on, so existing Forms and Surveys will behave the same until you change it.</li>
<li>Donation and custom-amount payment types are not included in this update.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-24T13:41:51.000Z'),
('wp-1370', 'Use custom field numbers as metrics in Leadli dashboards and reports', 'You can now use numeric and monetary custom fields on Contacts and Opportunities as report metrics in Leadli. This works in sub-account dashboards, custom reports, and the custom metrics area. What changed Numeric and monetary custom fields can be used as metrics (not only filter...', '<p>You can now use numeric and monetary custom fields on Contacts and Opportunities as report metrics in Leadli. This works in sub-account dashboards, custom reports, and the custom metrics area.</p>
<h3>What changed</h3>
<ul>
<li>Numeric and monetary custom fields can be used as metrics (not only filters or groupings).</li>
<li>You can aggregate those fields using Sum, Min, Max, or Average.</li>
<li>New numeric or monetary custom fields show up in the metric picker automatically.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a dashboard widget, a custom report, or the custom metrics area and choose to add a metric.</li>
<li>In the Field dropdown, select the numeric or monetary custom field you want to report on.</li>
<li>In the Aggregation dropdown, choose Sum, Min, Max, or Average.</li>
<li>Save the widget or report to see the live aggregated value.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>This applies to numeric and monetary custom field types on Contacts and Opportunities.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-23T17:24:33.000Z'),
('wp-1369', 'New templates are now available', 'New templates have been added to Leadli to help you build websites, funnels, emails, ads, and workflows faster. Each template is customizable and designed to be easy to use. What’s included in this release Website templates: 1 (Automotive) Funnel templates: 1 (Marketing Agency) E...', '<p>New templates have been added to Leadli to help you build websites, funnels, emails, ads, and workflows faster. Each template is customizable and designed to be easy to use.</p>
<h3>What’s included in this release</h3>
<ul>
<li>Website templates: 1 (Automotive)</li>
<li>Funnel templates: 1 (Marketing Agency)</li>
<li>Email templates: 1 (Automotive)</li>
<li>Social templates: 4 (Health &amp; Wellness: 2; Creative: 2)</li>
<li>Facebook ad templates: 2 (Automotive: Car Rental Agency; Health &amp; Wellness: Weight Loss)</li>
<li>Google ad templates: 5 (Home Services: Dry Cleaning; Health &amp; Wellness: Weight Management; Finance: Payment Solutions; Creative: Digital Designer; Business Coaching &amp; Consulting: Education Tutor)</li>
<li>LinkedIn ad templates: 7 (Insurance: Health Insurance; Finance: Credit Repair; Real Estate: Real Estate Management; Business Coaching &amp; Consulting: Business Mentoring; Marketing Agency: Affiliate Marketing Services; Finance: Tax Consultant; Creative: Professional Photographer)</li>
<li>Workflow templates: 3 (Sales &amp; Appointments: Calendar Booking Confirmation; Industry-Specific: Just Sold/Just Listed Announcement; Industry-Specific: Insurance Quote Follow-Up Sequence)</li>
<li>Snapshot: 1 (Creative: Dance Company)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-22T15:34:59.000Z'),
('wp-1368', 'Badge automation is available in workflows', 'You can now issue badges and use them to trigger follow-up actions in workflows. This makes it easier to automate recognition and what should happen next. What’s new Issue Badge action : Automatically issue a selected badge when your workflow conditions are met. Badge Issued trig...', '<p>You can now issue badges and use them to trigger follow-up actions in workflows. This makes it easier to automate recognition and what should happen next.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Issue Badge action</strong>: Automatically issue a selected badge when your workflow conditions are met.</li>
<li><strong>Badge Issued trigger</strong>: Start a workflow when a badge is issued and automate follow-up actions such as sending a message or email, updating a contact, or starting another automation.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ol>
<li>Makes badge recognition part of your existing workflows.</li>
<li>Automates the next steps after a badge is issued.</li>
<li>Helps you build more engaging journeys around achievements and milestones.</li>
</ol>
<p>More improvements are coming.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-21T08:01:01.000Z'),
('wp-1367', 'Anthropic and Google models are now available in the Leadli AI Agent Action', 'You can now use Anthropic and Google models in the Leadli AI Agent Action in workflows, along with OpenAI. What’s included More model options: Choose from supported models by Anthropic, Google, and OpenAI. Updated model selection: Models are grouped by provider, with short descri...', '<p>You can now use Anthropic and Google models in the Leadli AI Agent Action in workflows, along with OpenAI.</p>
<h2>What’s included</h2>
<ul>
<li><strong>More model options:</strong> Choose from supported models by Anthropic, Google, and OpenAI.</li>
<li><strong>Updated model selection:</strong> Models are grouped by provider, with short descriptions to help you choose.</li>
<li><strong>Reasoning effort control:</strong> Set effort to Low, Medium, or High on models that support it.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open your AI Agent Action in a workflow.</li>
<li>Open the model dropdown.</li>
<li>Select a provider and model.</li>
<li>If available, choose an effort level.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Why this matters</h2>
<p>This gives you more flexibility to match the model to the task. Heavier models can handle complex, multi-step work, while lighter models are better for simpler requests and faster responses.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-20T15:29:20.000Z'),
('wp-1366', 'Meta discontinued Instagram Explore Feed as an ad placement', 'Meta has discontinued the Instagram Explore Feed placement as part of its Marketing API v26 update. This means Instagram Explore is no longer available as an ad placement when creating a campaign in Leadli. Existing campaigns continue to run, and the change is applied automatical...', '<p>Meta has discontinued the Instagram Explore Feed placement as part of its Marketing API v26 update.</p>
<p>This means Instagram Explore is no longer available as an ad placement when creating a campaign in Leadli. Existing campaigns continue to run, and the change is applied automatically.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Instagram Explore Feed can no longer be selected as an ad placement.</li>
<li>Leadli’s ad manager remains compatible with Meta’s Marketing API v26 requirements.</li>
</ul>
<p><strong>How this works</strong></p>
<ul>
<li>No action is required. The update happens automatically.</li>
<li>Published Meta campaigns that previously used Explore remain active.</li>
<li>Draft campaigns will have Explore removed when the ad set is saved.</li>
<li>Delivery will shift to other eligible placements.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Live campaigns are not disrupted.</li>
<li>You should not see errors during the transition.</li>
<li>It keeps Leadli compliant with Meta’s current API requirements.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This is a Meta-driven platform change, not a Leadli product decision.</li>
<li>The Template Library and campaign workflows are otherwise unchanged.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-20T13:01:13.000Z'),
('wp-1365', 'Calendar AI: Set up a booking calendar in minutes', 'Calendar AI helps you create a booking calendar, configure it, and make your first test booking in a guided flow. What Calendar AI does Describe what you need, and Calendar AI will recommend and create the right calendar for your use case. During setup, you can: Describe your use...', '<p><strong>Calendar AI</strong> helps you create a booking calendar, configure it, and make your first test booking in a guided flow.</p>
<p><strong>What Calendar AI does</strong></p>
<p>Describe what you need, and Calendar AI will recommend and create the right calendar for your use case.</p>
<p>During setup, you can:</p>
<ul>
<li>Describe your use case instead of choosing a calendar type from scratch</li>
<li>Add team members</li>
<li>Set availability</li>
<li>Choose a meeting location</li>
<li>Preview the booking calendar</li>
<li>Book a test appointment when setup is complete</li>
<li>Learn what the calendar can do by asking questions or using preset prompts</li>
</ul>
<p><strong>Coming next: Calendar troubleshooting</strong></p>
<p>We are adding help for a common question: <strong>&#8220;Why isn’t this specific slot showing on my booking widget?&#8221;</strong></p>
<p>Calendar AI will review your calendar configuration and identify what is blocking the slot and what to change.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-20T11:39:58.000Z'),
('wp-1360', 'Clearer calendar payment settings for saving a card and handling free bookings', 'We updated calendar payment settings to clearly separate saving a customer’s card for later from bookings that do not require payment. What’s changing In the past, some businesses used a $0 payment amount to collect card details without charging the customer. This could create a ...', '<p>We updated calendar payment settings to clearly separate saving a customer’s card for later from bookings that do not require payment.</p>
<p><strong>What’s changing</strong></p>
<p>In the past, some businesses used a $0 payment amount to collect card details without charging the customer. This could create a confusing experience when a booking became free after a 100% discount, because the customer might still be asked for card details and a $0 transaction could be processed.</p>
<p>There is now a dedicated <strong>Collect Card on File</strong> option in calendar payment settings.</p>
<p><strong>Collect Card on File</strong></p>
<ul>
<li>Customers are asked to enter card details during booking</li>
<li>The card is saved securely for future use</li>
<li>The customer is not charged during booking</li>
<li>No payment transaction is created during booking</li>
</ul>
<p><strong>$0 and free bookings</strong></p>
<p>If <strong>Charge upfront</strong> is enabled, the system now uses the final amount due to decide what happens:</p>
<ul>
<li><strong>Final amount &gt; $0</strong>: collect payment details and process payment normally</li>
<li><strong>Configured amount = $0</strong>: skip card collection and skip payment</li>
<li><strong>Coupon reduces the amount to $0</strong>: skip card collection and skip payment</li>
<li><strong>Coupon leaves an amount &gt; $0</strong>: collect the discounted amount normally</li>
</ul>
<p>This prevents customers making a free booking from being asked for unnecessary payment details or going through a $0 transaction.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-20T06:55:58.000Z'),
('wp-1359', 'Email events now include a Message ID in the webhook picker', 'Email event triggers now include a unique Message ID. You can add this value to your Send Webhook payload so each open or click can be tied back to the exact email that generated it. What changed The Email Events trigger now provides a stable Message ID for the email that was ope...', '<p>Email event triggers now include a unique Message ID. You can add this value to your Send Webhook payload so each open or click can be tied back to the exact email that generated it.</p>
<h2>What changed</h2>
<p>The Email Events trigger now provides a stable Message ID for the email that was opened or clicked.</p>
<h2>How to use it</h2>
<ol>
<li>In a workflow that starts with the Email Events trigger, open your <strong>Send Webhook</strong> action.</li>
<li>When building the webhook body, select <strong>Message ID</strong> from the custom value picker.</li>
</ol>
<p>The same email will always produce the same Message ID, even if the contact opens it multiple times. Different emails produce different Message IDs.</p>
<h2>Why it matters</h2>
<p>This makes it easier to deduplicate repeat opens and clicks and to report engagement accurately in external systems.</p>
<h2>Example</h2>
<p>If you send two campaign emails in the same week and push open/click events to a reporting dashboard, the Message ID lets you record engagement against the correct email every time.</p>
<h2>Notes</h2>
<ul>
<li>Applies to both Email Opened and Email Clicked when using the Email Events trigger.</li>
<li>The Message ID remains stable for repeat opens of the same message.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-19T15:18:03.000Z'),
('wp-1358', 'Fix: Create/Update Record dropdowns support dynamic values again', 'Summary In the Create Record and Update Record workflow actions (including the associated record versions), single-select dropdown fields stopped showing dynamic values. If you had saved a merge tag value (for example, null ) the dropdown could open with nothing selected, and you...', '<p><strong>Summary</strong></p>
<p>In the Create Record and Update Record workflow actions (including the associated record versions), single-select dropdown fields stopped showing dynamic values. If you had saved a merge tag value (for example, <code>null</code>) the dropdown could open with nothing selected, and you could not enter a new merge tag.</p>
<p><strong>What’s been fixed</strong></p>
<p>Single-select dropdown fields now include a <strong>Standard</strong> / <strong>Dynamic</strong> toggle (the same approach used in Update Contact Field).</p>
<p><strong>How it works now</strong></p>
<ul>
<li><strong>Standard</strong> mode provides a searchable picklist.</li>
<li><strong>Dynamic</strong> mode provides a text input with a custom value picker so you can insert a merge tag from a trigger, formatter, or inbound webhook.</li>
<li>If a saved value does not match a picklist option, the field opens in <strong>Dynamic</strong> mode so existing configurations display as expected.</li>
<li>Switching between modes clears the field to prevent an unintended value from being saved.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This applies to Create Record, Update Record, and both associated record actions in contact-based and custom object workflows.</li>
<li>Multi-select fields were not affected.</li>
<li>Update Contact Field is unchanged.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-19T14:51:15.000Z'),
('wp-1357', 'Pinned and Recent now show only relevant actions for each workflow', 'Overview The Pinned and Recent sections in the Actions & Triggers sidebar could show actions that did not match the type of workflow you were working in. For example, a Contact action could appear in Custom Object or Company workflows. Update Pinned and Recent now show only the a...', '<h2>Overview</h2>
<p>The Pinned and Recent sections in the Actions &amp; Triggers sidebar could show actions that did not match the type of workflow you were working in. For example, a Contact action could appear in Custom Object or Company workflows.</p>
<h2>Update</h2>
<p>Pinned and Recent now show only the actions and triggers that apply to the workflow you have open.</p>
<h2>Details</h2>
<p>The sidebar checks the workflow object type before showing Pinned and Recent. Contact actions stay in Contact workflows, Company actions stay in Company workflows, and Custom Object actions stay in workflows built for that object. Actions that do not apply are hidden so you do not select a shortcut that will not work in that workflow.</p>
<h2>Notes</h2>
<ul>
<li>This applies to both the Pinned and Recent sections.</li>
<li>Your pinned items are unchanged; they may be hidden in workflows where they do not apply.</li>
<li>The full action and trigger list below these sections is unchanged.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-19T14:47:13.000Z'),
('wp-1356', 'Billing screen now shows an existing saved card', 'What’s new If your sub-account is on hold for a SaaS plan or rebilling and a payment card has already been added (by you or your agency), you will now see that card on the billing screen. This lets you proceed to payment without being prompted to add a card that is already on fil...', '<p><strong>What’s new</strong></p>
<p>If your sub-account is on hold for a SaaS plan or rebilling and a payment card has already been added (by you or your agency), you will now see that card on the billing screen. This lets you proceed to payment without being prompted to add a card that is already on file.</p>
<p><strong>Why it matters</strong></p>
<p>You do not need to re-enter payment details you have already provided. After a successful payment, the account will unlock automatically.</p>
<p><strong>Note</strong></p>
<ul>
<li>Applies to sub-accounts on hold for a SaaS plan or for rebilling.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-19T08:05:00.000Z'),
('wp-1354', 'Rental booking pages: clearer CTAs, a simpler checkout, and a more consistent interface', 'Overview We’ve released improvements to the Rentals Booking Page, Listing Detail Page, and checkout flow. These updates give you more control over call-to-action (CTA) labels, make rental dates and pricing easier to understand during checkout, show listing descriptions more clear...', '<h2>Overview</h2>
<p>We’ve released improvements to the Rentals Booking Page, Listing Detail Page, and checkout flow. These updates give you more control over call-to-action (CTA) labels, make rental dates and pricing easier to understand during checkout, show listing descriptions more clearly, and improve visual consistency across the experience.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Custom label for the “Add to cart” button (multi-cart)</strong><br />When multi-item cart is enabled, you can set a custom label for the “Add to cart” button in Booking Page settings. The button only appears when multi-cart is on, so single-item bookings are not affected.</li>
<li><strong>Rental dates shown during checkout</strong><br />Rental dates now appear on the checkout page in the order summary to help customers confirm they’re booking the correct date and time.</li>
<li><strong>Listing descriptions expanded by default</strong><br />Descriptions on rental detail pages are now displayed inline and expanded by default, including improvements for mobile viewing.</li>
<li><strong>Cart persistence</strong><br />Your cart remains intact even if a visitor clicks the company logo to return to the home page, so an in-progress booking isn’t lost.</li>
<li><strong>General interface improvements</strong><br />Additional polish includes better text wrapping on home page cards, removing redundant single-quantity labels in booking summary and confirmation screens, and other minor UI fixes.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Global settings &gt; Booking page</strong> and enable <strong>Multi-item cart</strong>.</li>
<li>Set the <strong>Add to booking button label</strong> text to match your brand voice, then save. The change appears immediately on the booking page CTA.</li>
<li>No setup is required for the other updates; they are live for all rental listings.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>More control over how the booking flow communicates with customers</li>
<li>Clearer rental dates and pricing at checkout, which can reduce confusion and drop-off</li>
<li>Less friction on listing detail pages by showing descriptions inline</li>
<li>A more reliable browsing experience because carts are not lost during navigation</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-19T05:34:50.000Z'),
('wp-1353', 'Workflow Builder: List values are now supported in text fields', 'What’s new The custom value picker now supports list-type values, such as order line items, inbound webhook lists, and other collections. Instead of inserting the entire list as raw text, you can choose which field to use and how the list should be formatted. How it works When yo...', '<p><strong>What’s new</strong></p>
<p>The custom value picker now supports list-type values, such as order line items, inbound webhook lists, and other collections. Instead of inserting the entire list as raw text, you can choose which field to use and how the list should be formatted.</p>
<p><strong>How it works</strong></p>
<p>When you select a list, the picker stays in the current text field and lets you choose a field plus a format (comma-separated, bulleted, numbered, or a custom separator). The formatting choice is saved and the latest list is rendered each time the workflow runs.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open the custom value picker and select a list-type value.</li>
<li>Choose the field to extract, the list format, and an optional fallback for empty lists.</li>
<li>Preview the result, then click Insert to add it where your cursor is.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, array and list values could not be shown directly inside text fields, which made them harder to use in emails, notes, and other workflow content. With this update, you can insert list data into the editor and control how it appears.</p>
<p><strong>Example</strong></p>
<p>If an inbound webhook sends a <code>line_items</code> list that includes a <code>sku</code> field, you can select <code>line_items</code>, extract <code>sku</code>, and choose a numbered list to output each product SKU on its own line.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Single-value variables (text, number, date, and similar) keep the existing instant-insert behavior.</li>
<li>List formatting options appear only when the workflow detects list-type output in the execution context.</li>
<li>The preview shows how the selected field and format will look before you insert it.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-18T20:13:52.000Z'),
('wp-1352', 'Workflow dynamic values now show as chips with quick add', 'Summary Dynamic values in workflow text fields now display as chips, so they are easier to tell apart from regular text. You can also type ''/'' to quickly search for and insert a custom value. How it works This is a visual change only. Your existing custom values are not changed, ...', '<p><strong>Summary</strong></p>
<p>Dynamic values in workflow text fields now display as chips, so they are easier to tell apart from regular text. You can also type &#8216;/&#8217; to quickly search for and insert a custom value.</p>
<p><strong>How it works</strong></p>
<p>This is a visual change only. Your existing custom values are not changed, and there is no change to how custom values are resolved when a workflow runs.</p>
<ul>
<li>Valid custom values appear as chips.</li>
<li>Stale or unrecognized values are highlighted in red so you can find and fix them.</li>
</ul>
<p><strong>How to use it</strong></p>
<ul>
<li>Type &#8216;/&#8217; in a workflow text field to search for and insert a custom value.</li>
<li>Select an existing chip to replace it with another custom value in the same spot.</li>
<li>If a value appears in red, replace it with a valid custom value from the list.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>When custom values are mixed with static text, they can be hard to notice and verify. Chips make dynamic content easier to identify, speed up editing, and clearly show values that need attention.</p>
<p><strong>Example</strong></p>
<p>Add a user-based custom value (such as User Last Name) to a workflow message. It will display as a chip. If the text includes a stale or unrecognized value, it will appear in red so you know it should be replaced.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-18T18:28:53.000Z'),
('wp-1351', 'WhatsApp updates: more reliable composer and faster Settings', 'We improved two commonly used WhatsApp areas: the conversation composer and WhatsApp Settings/Manage. Two issues are now fixed so WhatsApp behaves correctly on first load: A false “Connect WhatsApp” prompt that could appear after the 24-hour window, even when the account was alre...', '<p>We improved two commonly used WhatsApp areas: the conversation composer and WhatsApp Settings/Manage.</p>
<p>Two issues are now fixed so WhatsApp behaves correctly on first load:</p>
<ul>
<li>A false “Connect WhatsApp” prompt that could appear after the 24-hour window, even when the account was already connected</li>
<li>A Settings/Manage page that could load blank until you refreshed</li>
</ul>
<h2>What’s changed</h2>
<p><strong>Conversations: no more incorrect “Connect WhatsApp” prompt</strong></p>
<ul>
<li><strong>Correct state on first load:</strong> After the 24-hour messaging window closed, the composer could show “Connect WhatsApp” on a fully connected account, which blocked template sends. The composer now waits for connection status to resolve before rendering, so connected locations see the template send option instead of a reconnect prompt.</li>
</ul>
<p><strong>Settings/Manage: loads reliably and faster</strong></p>
<ul>
<li><strong>No more blank page:</strong> The Settings &gt; WhatsApp tab no longer gets stuck on a blank or loading state that required multiple refreshes.</li>
<li><strong>Improved performance:</strong> On the WhatsApp Settings page, Speed Index improved from 13.2s to 4.3s and First Contentful Paint from 3.8s to 1.0s (Lighthouse).</li>
</ul>
<h2>Why it matters</h2>
<p>These are areas WhatsApp users rely on daily. An incorrect reconnect prompt after the 24-hour window can make a working account look broken and prevent agents from sending templates (the message type allowed once the window closes). A blank Settings page can slow down onboarding and day-to-day configuration. Both areas now load correctly the first time, which should reduce confusion and support requests.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T16:03:10.000Z'),
('wp-1350', 'QR Codes: Save to Apple Wallet and Google Wallet', 'What’s new You can now save QR codes directly to Apple Wallet or Google Wallet. This makes it easier to access the correct QR code during offline customer interactions without searching through saved images. Key highlights Save to a digital wallet: Add QR codes to Apple Wallet or...', '<h2>What’s new</h2>
<p>You can now save QR codes directly to Apple Wallet or Google Wallet. This makes it easier to access the correct QR code during offline customer interactions without searching through saved images.</p>
<h2>Key highlights</h2>
<ul>
<li><strong>Save to a digital wallet:</strong> Add QR codes to Apple Wallet or Google Wallet depending on the device.</li>
<li><strong>Quick offline access:</strong> Open your wallet, select the QR code, and have a customer scan it.</li>
<li><strong>Clear identification:</strong> Wallet passes display helpful details such as QR type, associated location, and destination/context.</li>
<li><strong>Wallet-specific design:</strong> The pass design follows the supported layout options for Apple Wallet and Google Wallet.</li>
<li><strong>Agency branding:</strong> Wallet passes currently display agency branding in the header.</li>
<li><strong>Works with existing QR codes:</strong> This applies to both existing and newly created QR codes.</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, QR codes were often saved as images in a phone gallery. As more QR codes were saved, it became harder to identify which one to use and where it would redirect.</p>
<p>With digital wallet support, QR codes are easier to organize and access along with relevant context.</p>
<h2>How it works</h2>
<ol>
<li>Go to the <strong>QR Code Builder</strong>.</li>
<li>Create or edit a QR code and continue to the final step.</li>
<li>Select the option to add the QR code to your digital wallet.</li>
<li>Scan the QR code shown on screen using your phone.</li>
<li>The pass is added to Apple Wallet or Google Wallet based on your device.</li>
<li>Open your wallet when needed and present the QR code for scanning.</li>
</ol>
<h2>Apple Wallet vs. Google Wallet</h2>
<p>The pass appearance can differ between Apple Wallet and Google Wallet because each platform supports different customization options. For example, Apple Wallet can display a profile image on the pass, while Google Wallet may not support the same configuration.</p>
<h2>Notes</h2>
<ul>
<li>This feature supports both existing and new QR codes.</li>
<li>Wallet passes include contextual details to make QR codes easier to identify.</li>
<li>Pass designs can vary between Apple Wallet and Google Wallet based on platform support.</li>
<li>Agency branding is currently displayed in the wallet pass header and may become optional in a future update.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T15:24:47.000Z'),
('wp-1349', 'New A2P campaign setup defaults to Chat Widget', 'Overview: After your brand registration is completed, campaign registration now takes you directly to Chat Widget setup. You can still switch to Manual setup if you do not collect consent through the chat widget. What’s changed: The campaign registration flow now opens in the cha...', '<p><strong>Overview:</strong> After your brand registration is completed, campaign registration now takes you directly to Chat Widget setup. You can still switch to Manual setup if you do not collect consent through the chat widget.</p>
<p><strong>What’s changed:</strong></p>
<ul>
<li>The campaign registration flow now opens in the chat widget setup step immediately after the brand step finishes. You no longer have to choose a path at the start.</li>
<li>If you collect consent through another method (for example, an existing website form, a paper form, a lead form, a QR code, a kiosk, or verbal consent), you can use the “Switch to manual setup” link shown on the first screen.</li>
<li>Your progress is saved, and you will see a confirmation message explaining what will change before you switch to the manual path.</li>
</ul>
<p>If you switch to Manual setup and later want to go back, the Campaign details screen includes a recommendation in the left step panel to return to chat widget setup.</p>
<p><strong>Previously:</strong></p>
<ul>
<li>You selected Quick setup or Manual setup at step 2, and switching required restarting the campaign.</li>
<li>If you used Manual setup, resubmissions kept you on that path, so you often did not see the chat widget path.</li>
</ul>
<p><strong>Why this matters:</strong></p>
<ul>
<li>Campaigns registered through the chat widget are often approved faster and rejected less, because the widget is auto-verified and sample messages and consent language are generated for you.</li>
<li>This change makes that the default while still supporting Manual setup when you need it.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T15:05:01.000Z'),
('wp-1348', 'Ask AI Scheduler (Mobile): Schedule prompts to run automatically', 'Ask AI Scheduler helps your assistant keep working when you are not in the app. Save a prompt once, choose how often it should run, and Ask AI will run it on schedule. The next time you open your phone, you can review the completed run and the conversation it produced. The proble...', '<p>Ask AI Scheduler helps your assistant keep working when you are not in the app. Save a prompt once, choose how often it should run, and Ask AI will run it on schedule. The next time you open your phone, you can review the completed run and the conversation it produced.</p>
<h3>The problem</h3>
<p>Previously, every Ask AI prompt was interactive. You needed to be in the chat to ask for a daily summary (for example, new contacts from yesterday) or to check upcoming appointments. There was no way to save a prompt and have it run on its own, no central list of scheduled jobs, and no simple way to pause, re-run, or edit a scheduled prompt without rebuilding it.</p>
<h3>What we changed</h3>
<p>The Scheduler turns any Ask AI prompt into a recurring task.</p>
<h3>What you can do</h3>
<ul>
<li>Choose a frequency: manual (run on demand), hourly, daily, weekdays, or weekly with your selected day and time.</li>
<li>Manage tasks on mobile: create, edit, pause, resume, and delete scheduled tasks.</li>
<li>Run now: trigger any task immediately (including a paused task) and see the result in the run history.</li>
<li>Run history: track every run per task with completed/skipped/failed status and timestamps.</li>
<li>Open the conversation: tap a completed run to open the full Ask AI session in chat.</li>
<li>Organized chat history: scheduled runs appear in a separate Scheduled section so they do not clutter your recent chats.</li>
</ul>
<h3>How this helps day to day</h3>
<ul>
<li>Automate routine checks: schedule a morning summary and review it when you are ready.</li>
<li>Set it once: save the prompt as a task and let it run on your cadence.</li>
<li>Stay in control: pause tasks when needed, resume later, or run manually at any time.</li>
<li>See outcomes clearly: review what ran and when, without guessing.</li>
<li>Works across devices: tasks created on desktop and mobile stay in sync with shared history.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Open Ask AI in the Leadli mobile app.</li>
<li>Tap the Scheduler icon in the Ask AI header.</li>
<li>Select New task, name it, add an optional description, paste your prompt, choose a frequency, set the time (and day for weekly), and save.</li>
<li>Review results anytime in the task run history, or tap a completed run to open the conversation.</li>
</ol>
<h3>What is coming next</h3>
<ul>
<li>Notifications when a scheduled run completes</li>
<li>More detail for skipped or failed runs</li>
<li>Advanced scheduling controls on mobile</li>
<li>Improved navigation for accounts with many scheduled tasks</li>
</ul>
<h3>Release and availability</h3>
<ul>
<li>Release date: August 2026</li>
<li>Available in version 4.20.0 or higher</li>
<li>Status: Production</li>
<li>Platforms: iOS and Android</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T14:44:03.000Z'),
('wp-1347', 'Custom field grouping and bulk management for forms, surveys, and quizzes', 'Building long forms can get slow when you have to add custom fields one at a time. Leadli now includes a faster way to browse, select, and add multiple custom fields in Forms, Surveys, and Quizzes. What changed The Custom Fields sidebar is reorganized to make fields easier to fin...', '<p>Building long forms can get slow when you have to add custom fields one at a time. Leadli now includes a faster way to browse, select, and add multiple custom fields in Forms, Surveys, and Quizzes.</p>
<h3>What changed</h3>
<ul>
<li>The Custom Fields sidebar is reorganized to make fields easier to find.</li>
<li>You can search for fields by name and filter by object type (Contact, Opportunity, Business, or your custom objects).</li>
<li>You can select multiple fields and add them to the canvas in one step.</li>
</ul>
<h3>Highlights</h3>
<ul>
<li>Multi-select checkboxes for quick batch selection.</li>
<li>A single action to add all selected fields to the canvas.</li>
<li>Bulk-added fields insert after the currently active element when possible, instead of always going to the end.</li>
<li>Selections are cleared automatically when you switch the object dropdown to avoid accidental carryover.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Open a Form, Survey, or Quiz in the builder.</li>
<li>Go to the Add Object Fields tab in the left sidebar.</li>
<li>Choose the object you want (Contact, Opportunity, Business, or a custom object).</li>
<li>Search or browse to find the fields you need.</li>
<li>Select the fields and add them to the canvas as a group.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Existing Forms, Surveys, and Quizzes continue to work as they do today.</li>
<li>Bulk-added fields follow the same validation rules as adding fields individually.</li>
<li>If you use one-question-per-slide for surveys, bulk-added fields will be split into separate slides when needed.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T14:10:04.000Z'),
('wp-1346', 'Upload Google Demand Gen campaigns to the Template Library', 'You can now upload Google Demand Gen campaigns directly to the Template Library from Ad Manager. This helps you turn existing Demand Gen campaigns into reusable templates, so you can replicate campaign setups across locations without rebuilding them from scratch. What’s new You c...', '<p>You can now upload Google Demand Gen campaigns directly to the Template Library from Ad Manager.</p>
<p>This helps you turn existing Demand Gen campaigns into reusable templates, so you can replicate campaign setups across locations without rebuilding them from scratch.</p>
<h2>What’s new</h2>
<ul>
<li>You can upload Google Demand Gen campaigns to the Template Library.</li>
<li>You can start an upload from the campaign menu (ellipsis/three-dot menu).</li>
<li>Uploaded campaigns are saved as draft templates first.</li>
<li>You can review, edit, and publish templates for future reuse.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Ad Manager &gt; Campaigns</strong>.</li>
<li>Find the Google Demand Gen campaign you want to reuse.</li>
<li>Open the campaign menu (ellipsis/three-dot menu).</li>
<li>Select <strong>Upload to Template Library</strong>.</li>
<li>Add a template name and category.</li>
<li>Upload the campaign.</li>
<li>Review the draft template and publish it when you are ready.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reuse proven Demand Gen campaign setups.</li>
<li>Reduce repetitive campaign configuration.</li>
<li>Standardize campaigns across multiple locations.</li>
<li>Use the same Template Library workflow for Google Demand Gen campaigns.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Uploaded campaigns are created as draft templates before publishing.</li>
<li>Existing Template Library workflows remain unchanged.</li>
<li>This release adds Template Library upload support for Google Demand Gen campaigns.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T13:53:48.000Z'),
('wp-1345', 'Communities: Editor and Community Experience Improvements', 'We have made several updates to help you create posts faster, moderate your community more efficiently, and participate in discussions with fewer clicks. Rich text formatting toolbar You can now format text more quickly while writing a post. Select text to open a floating toolbar...', '<p>We have made several updates to help you create posts faster, moderate your community more efficiently, and participate in discussions with fewer clicks.</p>
<p><strong>Rich text formatting toolbar</strong></p>
<p>You can now format text more quickly while writing a post. Select text to open a floating toolbar with options such as bold, italic, underline, strikethrough, and link insertion.</p>
<p><strong>Ban spammers from a post</strong></p>
<p>Moderation is now available directly from the post menu. Use the three-dot menu (⋮) on a user’s post and choose Ban User. You can also choose to delete the user’s content before confirming.</p>
<p><strong>Download recordings from a post</strong></p>
<p>If a post includes a recording, you can download it from the same three-dot menu (⋮) by selecting Download Recording.</p>
<p><strong>Improvements and fixes</strong></p>
<p>The comment editor now uses more familiar keyboard shortcuts: Enter starts a new paragraph, Shift + Enter adds a line break, and Ctrl + Enter (or the Post button) publishes the comment.</p>
<p><strong>Why this matters</strong></p>
<p>These changes make it easier to create better-formatted posts, keep your community clean, and manage recordings and comments without leaving the feed.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-18T13:42:16.000Z'),
('wp-1344', 'Update Contact Field: Add values without overwriting', 'What’s new The Update Contact Field action now includes an Add option for multi-select fields. This lets you add new selections to multi-dropdown and multiple-checkbox fields without replacing values already saved on the contact. How it works Select Add to append the selected val...', '<p><strong>What’s new</strong></p>
<p>The Update Contact Field action now includes an <strong>Add</strong> option for multi-select fields. This lets you add new selections to multi-dropdown and multiple-checkbox fields without replacing values already saved on the contact.</p>
<p><strong>How it works</strong></p>
<p>Select <strong>Add</strong> to append the selected value(s) to the contact’s existing selections. When <strong>Add</strong> is selected, the field picker only shows multi-dropdown and multiple-checkbox fields.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add the Update Contact Field action to your workflow.</li>
<li>Select <strong>Add</strong> as the action type and choose a multi-select field.</li>
<li>Select the value(s) you want to add to the contact’s existing selections.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, updating a multi-select field replaced all existing selections, which could remove saved values. The new <strong>Add</strong> option makes it easier to build on existing contact data without overwriting it.</p>
<p><strong>Example</strong></p>
<p>A contact selects “Email Marketing” on a form, which is saved in a multiple-checkbox field called ‘Services Interested In’. Later in the workflow, you can add “SMS Marketing” to that same field while keeping “Email Marketing” selected.</p>
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
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Settings → Community Tabs</strong> in your community.</li>
<li>Drag tabs to reorder them.</li>
<li>Click the edit option next to a tab to rename it.</li>
<li>Use the toggles to show or hide tabs.</li>
<li>Click <strong>Save changes</strong>.</li>
</ol>
<p>Updates apply immediately for all members and will remain in place across sessions.</p>
<h3>Notes</h3>
<ul>
<li>Only admins and owners can rearrange, rename, or disable tabs.</li>
<li>The Discussion and About tabs cannot be disabled.</li>
<li>Custom tab names are not translated and will display exactly as entered.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-08-17T19:08:49.000Z'),
('wp-1340', 'Local SEO heatmaps are now more flexible in Leadli Local Marketing Audit', 'Different services can rank differently in local search. This update helps you review local visibility using more than one heatmap. We updated Local SEO heatmaps in Marketing Audit Reports so you can choose keywords, adjust coverage, and present clearer results when sharing a rep...', '<p>Different services can rank differently in local search. This update helps you review local visibility using more than one heatmap.</p>
<p>We updated <strong>Local SEO heatmaps</strong> in Marketing Audit Reports so you can choose keywords, adjust coverage, and present clearer results when sharing a report.</p>
<h2>What’s new</h2>
<h3>Create up to 3 heatmaps per report</h3>
<p>You can now create <strong>up to 3 Local SEO heatmaps for the same business</strong>, each with its own:</p>
<ul>
<li>Keyword</li>
<li>Grid size</li>
<li>Search radius</li>
</ul>
<p>For example, a plumbing business can have separate heatmaps for <strong>“emergency plumber,” “water heater repair,” and “drain cleaning”</strong>. This gives a clearer view of where visibility is strong or weak across different services.</p>
<h3>Set a default heatmap configuration</h3>
<p>If you usually use the same grid size and radius, you can now set them as defaults:</p>
<ul>
<li>Set your preferred <strong>default grid size and radius</strong>.</li>
<li>Leadli will apply these settings when you create future reports.</li>
</ul>
<h3>Remove the default keyword</h3>
<p>If you don’t want to use the keyword that’s automatically selected, you can remove it and focus on the keywords that matter most for the business and the services you’re selling.</p>
<h3>Share multiple heatmaps with prospects</h3>
<p>When you share a Marketing Audit Report on the web, prospects can switch between the heatmaps you created and compare local visibility across keywords. This makes it easier to show opportunities across multiple services in one report.</p>
<h2>Why this matters</h2>
<ol>
<li>Local visibility depends on the keyword and service.</li>
<li>With multiple heatmaps and configurable settings, you can explain what a prospect ranks for, where they rank, and where the opportunities are.</li>
</ol>
<h2>Where to access Leadli Local Marketing Audit</h2>
<p>You can use Local Marketing Audit to find new opportunities and to track performance for existing clients.</p>
<h3>Prospect and win new clients</h3>
<ol>
<li>Go to <strong>Agency → Prospecting</strong>, search for a business, and add it as a prospect.</li>
<li>Generate a Marketing Audit Report to identify Local SEO opportunities, then share it with the prospect to support a more informed sales conversation.</li>
</ol>
<h3>Track Local Maps ranking for existing clients</h3>
<p>If you already work with the business:</p>
<ol>
<li>Go to the client’s <strong>Sub-account → Reporting → Local Marketing Audit</strong> and set up their Marketing Audit.</li>
</ol>
<p>You can monitor Local SEO performance over time and set reports to generate each month to help show progress and identify new opportunities.</p>
<h2>Coming next</h2>
<p>We’re working on additional improvements, including:</p>
<ul>
<li>Better default keywords without the automatically added “near me”</li>
<li>The ability to remove a pin and add a new heatmap location</li>
<li>Competitor heatmaps and deeper local ranking insights</li>
</ul>
<p>If you have suggestions for Heatmaps or Local Marketing Audit, share them here: <a href="https://ideas.leadli.com/prospecting-tool" rel="ugc nofollow noopener noreferrer" target="_blank">https://ideas.leadli.com/prospecting-tool</a></p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-17T18:55:02.000Z'),
('wp-1339', 'Rich link and event previews in Leadli Communities', 'Sharing links and events in Leadli Communities now includes rich previews that provide context without pulling members out of the conversation. When someone pastes a supported link or mentions an event in a post or comment, Leadli automatically generates a preview so others can u...', '<p>Sharing links and events in Leadli Communities now includes rich previews that provide context without pulling members out of the conversation.</p>
<p>When someone pastes a supported link or mentions an event in a post or comment, Leadli automatically generates a preview so others can understand what it is at a glance.</p>
<h2>What’s included</h2>
<h3>Rich link and video previews</h3>
<p>Paste a supported link (for example, a YouTube or Loom URL) into a post or comment, and Leadli generates a rich preview automatically. Supported videos can be played directly in the feed without opening a new tab.</p>
<p>These previews work in both posts and comments. No setup is required—paste the link and the preview appears.</p>
<h3>Interactive event previews</h3>
<p>Mention an event in a post and Leadli generates an event preview card that shows key details such as the event name, date, time, price (if applicable), and status.</p>
<p>Members can register or RSVP directly from the preview card without navigating to the Events page.</p>
<h2>Why this matters</h2>
<p>Previously, shared links could appear as plain text and events required navigating away from the feed. With rich previews, members can review details, watch a video, or register for an event without leaving the conversation.</p>
<h2>Notes</h2>
<ul>
<li>Rich link previews are generated automatically for supported platforms like YouTube and Loom.</li>
<li>Event previews show the event name, date, time, price (if applicable), and registration status.</li>
<li>Members can register directly from the event preview card.</li>
</ul>
<p>Source: https://ideas.leadli.com/changelog/rich-link-event-previews-in-communities</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-17T17:36:54.000Z'),
('wp-1338', 'Labs update: Organize tags using categories and colors', 'Tags are now easier to organize and manage using tag categories and tag colors. This helps you find and recognize tags across your Leadli account. Existing tags will show as gray by default and will be placed in the No category group, so your current setup continues to work witho...', '<p>Tags are now easier to organize and manage using tag categories and tag colors. This helps you find and recognize tags across your Leadli account.</p>
<p>Existing tags will show as gray by default and will be placed in the No category group, so your current setup continues to work without extra changes.</p>
<h3>What’s new</h3>
<ul>
<li><strong>Tag colors</strong>
<ul>
<li>Assign a color to each tag so it’s easier to identify at a glance.</li>
<li>Choose from a preset list or pick a custom color to match your brand.</li>
<li>Tags without a selected color will use gray by default.</li>
<li>Color labels show when adding tags from a contact record and when viewing tags in Smart List columns.</li>
</ul>
</li>
<li><strong>Tag categories</strong>
<ul>
<li>Create categories to group related tags in a structured way.</li>
<li>Move individual tags or bulk-move multiple tags between categories.</li>
<li>Every tag belongs to a category.</li>
<li>Tags without an assigned category are automatically placed under <strong>No category</strong>.</li>
<li>If you delete a category that contains tags, those tags automatically move to <strong>No category</strong>.</li>
</ul>
</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-17T14:55:50.000Z'),
('wp-1337', 'Communities: Automate join request reviews with workflows', 'Community admins can now automate how join requests are reviewed, routed, and handled using a workflow trigger. This reduces manual review while keeping control over who gets access. What’s new New workflow trigger: Requested to Join Group . This trigger runs whenever someone req...', '<p>Community admins can now automate how join requests are reviewed, routed, and handled using a workflow trigger. This reduces manual review while keeping control over who gets access.</p>
<h3>What’s new</h3>
<ul>
<li><strong>New workflow trigger: Requested to Join Group</strong>. This trigger runs whenever someone requests to join a community group, so you can build automations for the full join-request process.</li>
<li><strong>Filters based on membership question responses</strong>. You can filter by group and by the answers people submit. When you select a group, its membership questions appear as filter fields so you can route requests based on responses.</li>
<li><strong>AI-based screening (optional)</strong>. You can pass membership answers into GPT prompts inside workflows to flag likely spam or low-quality submissions. Based on the result, you can automatically approve and grant access, or route the request for manual review.</li>
</ul>
<h3>How it works</h3>
<ol>
<li>Create a new workflow and add the <strong>Requested to Join Group</strong> trigger.</li>
<li>Select the target group and configure filters based on membership question answers (optional).</li>
<li>Add any actions you need, such as granting group access, sending a welcome message, or tagging the contact.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>The trigger runs on join requests (not direct joins). Request-based access must be enabled for the group.</li>
<li>Membership question filters update based on the questions configured for the selected group.</li>
<li>GPT actions may incur additional charges per execution.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-17T12:58:49.000Z'),
('wp-1336', 'Client Portal: Invoice and estimate notifications for contacts', 'Contacts can now receive in-app notifications in the Client Portal whenever a new invoice or estimate is issued. This helps clients see billing activity right away, review estimates, and take action on invoices without relying only on email notifications. What’s included Notifica...', '<p>Contacts can now receive in-app notifications in the Client Portal whenever a new invoice or estimate is issued.</p>
<p>This helps clients see billing activity right away, review estimates, and take action on invoices without relying only on email notifications.</p>
<h2>What’s included</h2>
<h3>Notifications for new invoices</h3>
<ul>
<li>When a new invoice is issued to a contact, a notification appears in their Client Portal.</li>
<li>Contacts can select the notification to open the invoice and take the next step.</li>
</ul>
<h3>Notifications for new estimates</h3>
<p>Contacts are also notified when they receive a new estimate, making it easier to review and respond without manually checking the Estimates section.</p>
<h3>Billing updates inside the Client Portal</h3>
<p>Billing updates appear in the Client Portal notification center so contacts can keep up with new invoices and estimates.</p>
<h3>Faster payments and approvals</h3>
<p>Because billing activity is shown as it happens, contacts can respond sooner, which can reduce delays in approvals and payments.</p>
<h2>How it works</h2>
<p><strong>For contacts:</strong></p>
<ul>
<li>Log in to the Client Portal.</li>
<li>When a new invoice or estimate is issued, an in-app notification appears automatically.</li>
<li>Open the Notifications panel.</li>
<li>Select the notification to go to the invoice or estimate.</li>
</ul>
<p>No setup is required. Notifications are automatically available for contacts using the Client Portal.</p>
<h2>Why this matters</h2>
<p>Invoices and estimates often require timely action, such as making a payment, reviewing pricing, or approving an estimate.</p>
<p>Previously, contacts did not have an in-portal alert when new billing documents were available. With these notifications, clients can see when something needs attention, which helps create a smoother billing experience and supports faster responses.</p>
<h2>Notes</h2>
<ul>
<li>Notifications are triggered when a contact receives a new invoice or estimate.</li>
<li>Notifications are delivered to the relevant contact.</li>
<li>Currently supported notification channel: in-app notifications.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-17T04:24:46.000Z'),
('wp-1335', 'Manage appointments in the Leadli Client Portal', 'Clients can now book, view, and manage appointments directly from the Client Portal. This gives them one place to manage their schedule without relying on email threads, booking links, or other tools. What’s included View appointments in one place Clients can see their appointmen...', '<p>Clients can now book, view, and manage appointments directly from the Client Portal. This gives them one place to manage their schedule without relying on email threads, booking links, or other tools.</p>
<h2>What’s included</h2>
<h3>View appointments in one place</h3>
<p>Clients can see their appointments inside the Client Portal with:</p>
<ul>
<li>Today, Upcoming, and Past views</li>
<li>A full calendar view</li>
<li>Appointment details including date, time, and status</li>
</ul>
<h3>Book new appointments</h3>
<ul>
<li>Clients can book appointments without leaving the portal.</li>
<li>Their existing contact information is used automatically to speed up booking and reduce repeated data entry.</li>
<li>If multiple calendars are enabled for the Client Portal, clients can choose which calendar to book.</li>
</ul>
<h3>Book again</h3>
<p>After an appointment is completed, clients can quickly book another appointment from the portal.</p>
<h3>Reschedule or cancel appointments</h3>
<p>Eligible appointments can be rescheduled or canceled directly from the Client Portal, so clients can manage changes without contacting the business.</p>
<h3>You control what’s available</h3>
<p>Businesses decide which booking options are available to clients. You can:</p>
<ul>
<li>Enable one or multiple calendars for Client Portal bookings</li>
<li>Choose which calendars clients can select when booking</li>
<li>Enable or disable the appointments experience through Client Portal app permissions</li>
</ul>
<h2>How to enable appointments</h2>
<h3>1) Enable calendars for Client Portal booking</h3>
<p>Go to: <strong>Calendars → Calendar Settings → Meetings → Calendars</strong></p>
<p>Open the calendar you want to make available, then go to: <strong>Edit Calendar → Booking Channels</strong></p>
<p>Turn on Client Portal booking and save your changes. Repeat for each calendar you want clients to be able to book.</p>
<h3>2) Enable the Appointments app</h3>
<p>Go to: <strong>Memberships → Client Portal → Settings → App Permissions</strong></p>
<p>Enable Appointments and save your settings. Once enabled, clients will see Appointments inside their Client Portal and can start viewing and booking available appointments.</p>
<h2>Why this matters</h2>
<p>Appointment management is now part of the Client Portal experience. This gives clients more control over their schedules and reduces the need for businesses to manually handle booking, rescheduling, and cancellation requests.</p>
<p><strong>Note:</strong> Appointments are currently available in the new Client Portal UI.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-17T04:10:52.000Z'),
('wp-1334', 'New templates are now available in Leadli', 'We have added new templates to help you build websites, funnels, and campaigns faster. These templates are fully customizable and designed to keep your setup process straightforward. What''s included in this update Website templates (1) Home Services (1) Funnel templates (1) Marke...', '<p>We have added new templates to help you build websites, funnels, and campaigns faster. These templates are fully customizable and designed to keep your setup process straightforward.</p>
<h3>What&#8217;s included in this update</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Home Services (1)</li>
</ul>
<h4>Funnel templates (1)</h4>
<ul>
<li>Marketing Agency (1)</li>
</ul>
<h4>Social templates (8)</h4>
<ul>
<li>Real Estate (2)</li>
<li>Travel &amp; Hospitality (2)</li>
<li>Other (2)</li>
<li>Restaurant and Bar (2)</li>
</ul>
<h4>Facebook ad templates (2)</h4>
<ul>
<li>Finance &#8211; Financial Consultant</li>
<li>Business Coaching &amp; Consulting &#8211; Life Coach</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Beauty &amp; Fashion &#8211; Makeup Artist</li>
<li>Automotive &#8211; Auto Paint Shop</li>
<li>Travel &amp; Hospitality &#8211; Bed and Breakfast Inn</li>
<li>Restaurant &amp; Bar &#8211; Beer Brewery</li>
<li>Real Estate &#8211; Home Inspection</li>
</ul>
<h4>LinkedIn ad templates (7)</h4>
<ul>
<li>Finance &#8211; Accounting Services</li>
<li>Marketing Agency &#8211; Event Promoter</li>
<li>Finance &#8211; Investment Management</li>
<li>Marketing Agency &#8211; Product Testing</li>
<li>Marketing Agency &#8211; Media Production &amp; Editing</li>
<li>Marketing Agency &#8211; SEO Consulting</li>
<li>Creative &#8211; Interior Design Expert</li>
</ul>
<h4>Snapshots (1)</h4>
<ul>
<li>Business Coaching &amp; Consulting &#8211; Stocks Trading Advisor</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-15T16:39:00.000Z'),
('wp-1333', 'WhatsApp analytics in the Leadli AI Assistant for workflows', 'You can now view WhatsApp performance inside the AI Assistant in workflows, alongside Email and SMS. The Assistant can report sends, delivered, failed, and pending totals for a WhatsApp step. It also includes delivery and failure rates, plus read counts and read rate for delivere...', '<p>You can now view WhatsApp performance inside the AI Assistant in workflows, alongside Email and SMS.</p>
<p>The Assistant can report sends, delivered, failed, and pending totals for a WhatsApp step. It also includes delivery and failure rates, plus read counts and read rate for delivered messages.</p>
<p>You can ask for a specific time window (for example, “last 2 weeks”). The Assistant will compare that period with the previous period and summarize what changed.</p>
<p>How to use:</p>
<ol>
<li>Open the AI Assistant in any workflow.</li>
<li>Ask for the metrics you need, such as: “Fetch the WhatsApp delivery stats for this workflow for the last 2 weeks.”</li>
</ol>
<p>No configuration is required.</p>
<p>This update helps you review Email, SMS, and WhatsApp performance in one place instead of checking separate dashboards and execution logs.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-14T14:42:17.000Z'),
('wp-1332', 'Google Merchant Center integration for ecommerce stores', 'Summary Google Merchant Center is now available as a Marketplace app. It lets you connect your ecommerce store to Google Merchant Center and sync eligible store products for visibility across Google Shopping and other supported Google surfaces. What you can do Connect Google Merc...', '<h2>Summary</h2>
<p>Google Merchant Center is now available as a Marketplace app. It lets you connect your ecommerce store to Google Merchant Center and sync eligible store products for visibility across Google Shopping and other supported Google surfaces.</p>
<h2>What you can do</h2>
<ol>
<li><strong>Connect Google Merchant Center</strong>
<ul>
<li>Install the app from Marketplace and connect your Google account.</li>
<li>Select the Google Merchant Center account and the ecommerce store you want to link.</li>
<li>If you do not have a Merchant Center account, follow the in-app documentation to create one and verify your store domain.</li>
</ul>
</li>
<li><strong>Automatically sync store products</strong>
<ul>
<li>Only eligible products assigned to the connected ecommerce store are synced.</li>
<li>One-time payment products and digital products are supported.</li>
<li>Updates to product details, pricing, inventory, variants, and product images continue syncing automatically after setup.</li>
</ul>
</li>
<li><strong>Use the Merchant Center data source</strong>
<ul>
<li>A data source named <code>leadconnector</code> is created using the country and language set for the shipping origin.</li>
<li>Deleting this data source removes the synced products. You can create a new one using Force Sync.</li>
</ul>
</li>
<li><strong>Review errors and product issues</strong>
<ul>
<li>Errors and warnings are shown during and after setup to help resolve issues that could affect approval.</li>
<li>Google reviews submitted products and decides approval and eligibility.</li>
</ul>
</li>
<li><strong>Connect multiple stores</strong>
<ul>
<li>Multiple store-to–Merchant Center mappings are supported.</li>
<li>Once a store or Merchant Center account is linked, it cannot be used in another mapping until the existing connection is removed.</li>
</ul>
</li>
</ol>
<h2>How to set it up</h2>
<ol>
<li>Open Marketplace and install the Google Merchant Center app.</li>
<li>Connect your Google account and select your Merchant Center account.</li>
<li>Select the ecommerce store you want to connect.</li>
<li>Complete setup to start syncing eligible products assigned to that store.</li>
<li>Review sync status, errors, and warnings. Use Force Sync if you need a manual refresh.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Only eligible products assigned to the connected ecommerce store are synced.</li>
<li>One-time payment products and digital products are supported.</li>
<li>A valid connected store domain is required for synchronization.</li>
<li>This integration syncs products to Merchant Center. It does not create or manage Google Ads campaigns.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-14T13:47:57.000Z'),
('wp-1331', 'Client Portal: OTP login fallback for expired magic links', 'When a contact opens an expired Client Portal magic link, they are automatically redirected to the one-time passcode (OTP) login flow instead of seeing an error. What changed Automatic fallback for expired magic links : expired links now route to OTP verification. OTP verificatio...', '<p>When a contact opens an expired Client Portal magic link, they are automatically redirected to the one-time passcode (OTP) login flow instead of seeing an error.</p>
<h2>What changed</h2>
<ul>
<li><strong>Automatic fallback for expired magic links</strong>: expired links now route to OTP verification.</li>
<li><strong>OTP verification with masked email</strong>: an OTP is sent to the contact’s email address, and the email is masked on-screen for privacy.</li>
<li><strong>Easier account recovery</strong>: contacts can regain access without requesting or generating a new magic link.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>A contact clicks an expired Client Portal magic link.</li>
<li>They are redirected to the OTP verification screen.</li>
<li>An OTP is sent to their email address.</li>
<li>The contact enters the OTP to sign in and access their account.</li>
</ol>
<p>No setup is required. This fallback is enabled automatically for Client Portal magic link authentication.</p>
<h2>Notes</h2>
<ul>
<li>Applies to Client Portal magic links using auth-v2.</li>
<li>Expired magic links fall back to OTP-based authentication.</li>
<li>Contact email addresses are masked on the OTP verification screen.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-14T13:29:54.000Z'),
('wp-1330', 'Course announcements', 'You can now share important updates directly inside your courses using Course Announcements. What’s new Create and manage announcements: Create, edit, clone, and delete announcements from the Courses admin. Rich content support: Add formatted text and links. Flexible targeting: S...', '<p>You can now share important updates directly inside your courses using Course Announcements.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Create and manage announcements:</strong> Create, edit, clone, and delete announcements from the Courses admin.</li>
<li><strong>Rich content support:</strong> Add formatted text and links.</li>
<li><strong>Flexible targeting:</strong> Share announcements with learners in specific courses or across all courses.</li>
<li><strong>Optional email notifications:</strong> Send announcements to course members by email when needed.</li>
<li><strong>In-app visibility:</strong> Learners can find new announcements through banners and unread indicators.</li>
<li><strong>Dedicated announcement view:</strong> Learners can view all announcements and open individual updates without leaving their learning experience.</li>
</ul>
<h2>Why it matters</h2>
<p>This gives course creators a central place to communicate launches, updates, reminders, and important notices while reaching learners where they are already studying.</p>
<h2>Getting started</h2>
<ol>
<li>Go to <strong>Courses → Announcements</strong>.</li>
<li>Create a new announcement.</li>
<li>Add a title and content, then choose the courses or learners you want to target.</li>
<li>Enable email notifications if you want course members to receive the announcement by email.</li>
<li>Publish the announcement.</li>
</ol>
<p>After publishing, learners can find announcements from the announcement banner, unread indicator, announcements list, and the announcement detail page.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-14T12:41:21.000Z'),
('wp-1329', 'Open contact details without leaving opportunities or appointments', 'Overview You can now open a contact overlay from the Opportunities and Appointments pages. When you click a contact name (or the conversation icon), the contact opens on the same page instead of taking you to the full contact record. This helps you review details and conversation...', '<p><strong>Overview</strong></p>
<p>You can now open a contact overlay from the Opportunities and Appointments pages. When you click a contact name (or the conversation icon), the contact opens on the same page instead of taking you to the full contact record. This helps you review details and conversations without losing your place.</p>
<p><strong>What changed</strong></p>
<p>Before, clicking a contact from Opportunities or Appointments always redirected you to the contact details page. Now you can choose how to open the contact:</p>
<ul>
<li><strong>Single-column view:</strong> Opens the contact panel alongside conversations and other right-side panels.</li>
<li><strong>Two-column view:</strong> Opens a wider layout with contact details plus an expanded Conversations view.</li>
<li><strong>Open the full contact details page:</strong> Keeps the previous experience by going straight to the full contact record.</li>
</ul>
<p>If you open the full contact details page from the overlay, you can return to the page you were working on.</p>
<p><strong>Why it matters</strong></p>
<p>When you are working deals or appointments, you often need to quickly check contact information or read the latest conversation. The overlay reduces extra page changes, keeps context, and makes it faster to get the information you need.</p>
<p><strong>Next steps</strong></p>
<p>The contact overlay is available for Opportunities and Appointments now. It will be expanded to other areas where contact names appear.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-13T18:03:05.000Z'),
('wp-1328', 'Import data directly from HubSpot into Leadli', 'Moving from HubSpot to Leadli just got easier. With the HubSpot Importer, you can connect your HubSpot account and migrate important CRM data directly into Leadli without relying on manual CSV exports. What’s new You can now import: Contacts Deals as opportunities Companies Conta...', '<p>Moving from HubSpot to Leadli just got easier.</p>
<p>With the HubSpot Importer, you can connect your HubSpot account and migrate important CRM data directly into Leadli without relying on manual CSV exports.</p>
<h2>What’s new</h2>
<p>You can now import:</p>
<ul>
<li>Contacts</li>
<li>Deals as opportunities</li>
<li>Companies</li>
<li>Contact, company, and deal properties as custom fields</li>
<li>Pipelines and stages</li>
<li>Notes</li>
<li>Emails</li>
<li>Tasks</li>
<li>Supported associations</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Go to <strong>Contacts</strong>, <strong>Companies</strong>, or <strong>Opportunities</strong>.</li>
<li>Click <strong>Import</strong>.</li>
<li>Choose <strong>Connect HubSpot</strong> and sign in to your HubSpot account.</li>
<li>Select the objects and data you want to import.</li>
<li>Review record counts and choose specific properties if needed.</li>
<li>Click <strong>Confirm and start import</strong>.</li>
</ol>
<p>The import runs in the background, so you can leave the page and come back later.</p>
<h2>Review import results</h2>
<p>The Import History table lets you track progress and review completed imports. After an import, you can:</p>
<ul>
<li>View totals for successful, skipped, failed, and warning records</li>
<li>Review results by object or by individual record</li>
<li>Filter records by object and status</li>
<li>See clear error messages</li>
<li>Download results as a CSV for further review</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Migrate your CRM data faster</li>
<li>Preserve supported pipelines and stages</li>
<li>Bring over important custom fields and activity</li>
<li>Choose exactly what you want to import</li>
<li>Quickly identify and resolve import errors</li>
<li>Reduce manual work when moving from HubSpot</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Existing matching records are not overwritten.</li>
<li>Imported HubSpot emails are read-only.</li>
<li>Deals require associated contacts to be imported as opportunities.</li>
<li>We recommend testing your import in a new or non-production sub-account first.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-13T13:31:04.000Z'),
('wp-1327', 'New Review Received trigger supports all connected review platforms', 'Overview The New Review Received workflow trigger now supports reviews from all review platforms connected to your account. Previously, the trigger was limited to Google Reviews and Facebook Reviews. Now it can also trigger workflows from platforms such as Trustpilot, Yelp, TripA...', '<p><strong>Overview</strong></p>
<p>The <strong>New Review Received</strong> workflow trigger now supports reviews from all review platforms connected to your account.</p>
<p>Previously, the trigger was limited to Google Reviews and Facebook Reviews. Now it can also trigger workflows from platforms such as Trustpilot, Yelp, TripAdvisor, and other supported review sources.</p>
<p><strong>How you can use it</strong></p>
<p>Many businesses collect reviews across multiple platforms, not just Google and Facebook. With this update, reviews from any connected platform can start a workflow, so teams do not need to manually watch each site.</p>
<p><strong>What&#8217;s new</strong></p>
<ul>
<li>Support for all connected review platforms (not limited to Google and Facebook)</li>
<li>Workflows can respond to reviews regardless of which connected platform they come from</li>
<li>No changes to existing workflows that already use Google or Facebook review triggers</li>
</ul>
<p><strong>Why it matters</strong></p>
<ol>
<li>Automation coverage across your full review ecosystem</li>
<li>Less manual monitoring of third-party review platforms</li>
<li>Faster and more consistent follow-up, regardless of where customers leave reviews</li>
<li>More value from your existing review integrations by connecting them directly to workflow automation</li>
</ol>
<p>If you have feedback, contact us and let us know.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-13T11:23:04.000Z'),
('wp-1323', 'Documents uploaded from notes are now private by default', 'Overview This update improves document privacy and access controls across Leadli, with HIPAA compliance in mind. Documents uploaded as attachments through the Notes section are now private by default, giving you more control over how sensitive information is accessed and shared. ...', '<p><strong>Overview</strong></p>
<p>This update improves document privacy and access controls across Leadli, with HIPAA compliance in mind. Documents uploaded as attachments through the Notes section are now private by default, giving you more control over how sensitive information is accessed and shared.</p>
<p>Previously, documents uploaded through Notes were public and could be shared without expiration or additional privacy controls. With this change, newly uploaded documents start private, and you can choose how to share them when needed.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>New note attachments are private by default</strong>: Any new document uploaded through the Notes section is stored in the <strong>&#8220;Notes attachments&#8221;</strong> folder under Documents and is private by default.</li>
<li><strong>More control when sharing</strong>: When sharing a document, you can choose the access level that fits your needs (public link, private link, OTP-protected link, or password-protected link).</li>
<li><strong>Existing documents are unchanged</strong>: This applies only to documents uploaded through Notes after this feature is released. Documents uploaded previously will keep their current privacy status.</li>
<li><strong>Secure sharing for existing documents</strong>: For older documents, you can still generate and share a private link when additional access control is needed.</li>
</ol>
<p><strong>What’s next</strong></p>
<p>We’re continuing to expand privacy and data controls for documents across Leadli. In a future phase, these privacy and access controls will also apply to document attachments shared through custom fields, for a more consistent and secure sharing experience.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T17:13:02.000Z'),
('wp-1322', 'Widget trend colors: choose whether an increase or decrease is positive', 'This update adds a setting that controls whether an increase or decrease in a widget metric is treated as positive (green) or negative (red). In dashboards and custom reports, number widgets display a trend badge with the percent change. You can now set the trend color behavior s...', '<p>This update adds a setting that controls whether an increase or decrease in a widget metric is treated as positive (green) or negative (red).</p>
<p>In dashboards and custom reports, number widgets display a trend badge with the percent change. You can now set the trend color behavior so it matches the meaning of the metric. For example, a lower unsubscribe rate or bounce rate can be treated as positive, while a lower delivered-email count can be treated as negative.</p>
<p>This setting applies to Number, Line, and Bar widgets when a comparison date range is enabled.</p>
<h3>How to set it</h3>
<ol>
<li>Open the widget’s Configure panel.</li>
<li>Under Advanced settings, set a date range override and a comparison date range.</li>
<li>Choose whether “Increase is positive” (default) or “Decrease is positive” for that metric.</li>
<li>Save. The trend badge color updates across the widget.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Existing widgets keep the default behavior until you change this setting.</li>
<li>The setting lives in the widget Configure panel and works the same across chart types.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T14:15:31.000Z'),
('wp-1130', 'Prospect AI: major improvements now available', 'Prospect AI has received a major upgrade. What started as an automated lead finder is now a more capable prospecting engine with more control over how leads are discovered, when agents run, and how prospects are enriched and managed. Multiple agents and higher lead limits You can...', '<p>Prospect AI has received a major upgrade. What started as an automated lead finder is now a more capable prospecting engine with more control over how leads are discovered, when agents run, and how prospects are enriched and managed.</p>
<h2>Multiple agents and higher lead limits</h2>
<p>You can now create multiple Prospect AI agents, each targeting a different niche, location, or strategy.</p>
<ul>
<li>Example: Agent Alex (Dentists in Dallas)</li>
<li>Example: Agent Sarah (HVAC contractors in Austin)</li>
<li>Example: Agent Mike (Roofers in Houston)</li>
</ul>
<p>Each agent can have its own niches, locations, search radius, prospect filters, audit preferences, and lead enrichment settings. Monthly limits have also increased compared to earlier usage levels. Limits are applied per account, not per agent.</p>
<h2>Improved weekly scheduling</h2>
<p>Agents now start sooner. If the selected schedule day has not passed yet, the agent can run during the current week instead of waiting for the next cycle.</p>
<p>Note: If the scheduled run is within the next 24-36 hours, the first run may be pushed to the following cycle due to processing windows.</p>
<h2>Improved monthly scheduling</h2>
<p>Monthly schedules now behave more naturally. If the selected week has not passed yet, Prospect AI can run during the current month instead of waiting until the next month.</p>
<h2>Monthly lead allocation across agents</h2>
<p>Lead allocation is easier to manage with clearer indicators and real-time visibility into total monthly allowance, leads assigned to other agents, leads allocated to the current agent, and remaining capacity.</p>
<h2>Audit and enrichment controls</h2>
<p>You can choose which Marketing Audit sections are generated automatically for new prospects.</p>
<h2>Option to automatically create contacts (sub-accounts)</h2>
<p>For sub-account prospecting, you can choose whether Prospect AI should create a Contact automatically when a new prospect is found, or create the prospect without creating CRM records.</p>
<h2>Why this matters</h2>
<p>These updates help you build an AI-powered prospecting process that runs in the background to continuously discover new opportunities.</p>
<h2>Coming next</h2>
<ul>
<li>Automatic opportunity creation in your sub-account pipeline when new prospects are discovered</li>
<li>Run history and logs (last run, number of prospects found, status, and detailed execution logs)</li>
<li>Personalized outreach drafts (for example, email drafts tailored to audit findings and business needs)</li>
<li>Workflow trigger source filtering for each agent</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1129', 'Publish LinkedIn poll posts from Social Planner', 'You can now create, schedule, and publish LinkedIn poll posts directly from Social Planner in Leadli. What’s new Create LinkedIn polls directly from the Social Planner composer Add a poll question (up to 140 characters) Add 2 to 4 answer options (up to 30 characters each) Set the...', '<p>You can now create, schedule, and publish LinkedIn poll posts directly from Social Planner in Leadli.</p>
<h3>What’s new</h3>
<ul>
<li>Create LinkedIn polls directly from the Social Planner composer</li>
<li>Add a poll question (up to 140 characters)</li>
<li>Add 2 to 4 answer options (up to 30 characters each)</li>
<li>Set the poll duration without leaving Social Planner</li>
</ul>
<h3>Poll duration options</h3>
<ul>
<li>1 day</li>
<li>3 days</li>
<li>7 days</li>
<li>14 days</li>
</ul>
<h3>Supported publishing workflows</h3>
<ul>
<li>Instant publishing</li>
<li>Scheduled posts</li>
<li>Recurring posts</li>
<li>Category queue</li>
<li>CSV bulk uploads</li>
<li>Drafts</li>
</ul>
<h3>How to use</h3>
<ol>
<li>Go to Marketing → Social Planner</li>
<li>Create a new post and select a LinkedIn account</li>
<li>Select Add Poll</li>
<li>Enter your question and answer options</li>
<li>Choose a duration</li>
<li>Publish now, schedule it, save as a draft, or add it to a queue</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Create more engaging LinkedIn content</li>
<li>Collect feedback directly through polls</li>
<li>Manage poll publishing alongside other Social Planner content</li>
</ul>
<h3>Notes</h3>
<ul>
<li>LinkedIn polls cannot be combined with images, videos, PDFs, or other media in the LinkedIn version of the post</li>
<li>If you publish to multiple platforms, you can still add media to non-LinkedIn variants</li>
<li>Polls support 2 to 4 answer options</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1128', 'Improved rich text formatting in the mobile app', 'You can now edit rich text on mobile with consistent formatting across web and mobile. What changed Formatted notes, emails, and tasks now preserve spacing and layout when you edit on the web and then edit again on iOS or Android (and the other way around). The problem this addre...', '<p>You can now edit rich text on mobile with consistent formatting across web and mobile.</p>
<h3>What changed</h3>
<p>Formatted notes, emails, and tasks now preserve spacing and layout when you edit on the web and then edit again on iOS or Android (and the other way around).</p>
<h3>The problem this addresses</h3>
<p>Previously, switching between devices could change spacing, remove blank lines, split quoted blocks, or cause formatting to look different after saving.</p>
<h3>What’s included in this update</h3>
<ul>
<li>Improved consistency for line spacing and blank lines</li>
<li>Better handling for block quotes and mixed formatting</li>
<li>More reliable behavior for email snippets and rich text content edited on mobile</li>
</ul>
<h3>How it helps</h3>
<ul>
<li><strong>Saves time:</strong> less reformatting when switching devices</li>
<li><strong>More consistent messages:</strong> emails and notes keep the intended spacing</li>
<li><strong>More reliable editing on the go:</strong> fewer formatting issues after saving</li>
</ul>
<h3>How to get started</h3>
<ol>
<li><strong>Update the app:</strong> install version 4.14 or later on iOS or Android.</li>
<li><strong>Open an existing note, email, or task</strong> that includes rich formatting.</li>
<li><strong>Edit and save on mobile</strong>, then re-open it on any device to confirm formatting remains consistent.</li>
</ol>
<h3>Where rich text is available</h3>
<p>Rich text is available in Contact Notes, Conversations (Emails), Tasks, Appointment Notes, Invoice Terms, and other areas that use the shared rich text editor.</p>
<h3>Release and availability</h3>
<table>
<tbody>
<tr>
<td><strong>Release date</strong></td>
<td>May 2026</td>
</tr>
<tr>
<td><strong>Available version</strong></td>
<td>v4.14</td>
</tr>
<tr>
<td><strong>Status</strong></td>
<td>Public</td>
</tr>
<tr>
<td><strong>Leadli</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>LeadConnector</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>White-label app</strong></td>
<td>Yes</td>
</tr>
<tr>
<td><strong>Platforms</strong></td>
<td>iOS &amp; Android</td>
</tr>
</tbody>
</table>
<h3>Notes</h3>
<ul>
<li><strong>Complex layouts:</strong> some tables or deeply nested lists may still simplify slightly on mobile compared to web.</li>
<li><strong>Web fonts:</strong> uncommon fonts may fall back to a default font on mobile; structure and content remain intact.</li>
<li><strong>Tasks:</strong> rich text task descriptions were introduced in v4.13, with improved parity in v4.14.</li>
</ul>
<h3>Feedback</h3>
<p>If you notice formatting issues that are still not consistent between web and mobile, share details with your team so they can be reviewed and addressed.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1073', 'Blog updates: image captions, easier keyword entry, and more image actions', 'Leadli Blogs now includes image captions, faster keyword entry for SEO, and more image behavior options inside the editor. What’s new Image captions in the blog editor Add an editable caption field under an image Support for multi-line captions Captions stay attached to images Ca...', '<p>Leadli Blogs now includes image captions, faster keyword entry for SEO, and more image behavior options inside the editor.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Image captions in the blog editor</strong>
<ul>
<li>Add an editable caption field under an image</li>
<li>Support for multi-line captions</li>
<li>Captions stay attached to images</li>
<li>Captions scale with responsive images</li>
</ul>
</li>
<li><strong>Smarter keyword addition</strong>
<p>When scheduling a post, you can paste multiple keywords at once (comma-separated). The editor will split them into individual keywords automatically.</p>
</li>
<li><strong>Enhanced image actions</strong>
<p>Images can now be set to:</p>
<ul>
<li>Open full-size in a modal</li>
<li>Link to a URL</li>
<li>Do nothing</li>
</ul>
</li>
</ol>
<h3>How to use</h3>
<ul>
<li>Open a post in the blog editor</li>
<li>Insert or select an image</li>
<li>Add a caption or choose the image action from the image toolbar</li>
<li>When scheduling, paste comma-separated keywords into the keyword field</li>
<li>Save or publish the post</li>
</ul>
<h3>Why it matters</h3>
<ul>
<li>Create cleaner blog layouts</li>
<li>Add context with captions</li>
<li>Set up SEO keywords faster</li>
<li>Control image behavior without custom code</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1132', 'Live sessions in courses', 'Live sessions in Leadli courses make it easier to schedule, host, and reuse live learning from one place. You can run one-time classes or recurring series directly inside a course. What’s included Flexible scheduling: Create one-time sessions or recurring sessions (daily, weekly,...', '<p>Live sessions in Leadli courses make it easier to schedule, host, and reuse live learning from one place. You can run one-time classes or recurring series directly inside a course.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Flexible scheduling:</strong> Create one-time sessions or recurring sessions (daily, weekly, or custom patterns) with timezone support.</li>
<li><strong>Built into the course experience:</strong> Live sessions appear in the course outline in a dedicated section, so learners can find upcoming sessions quickly.</li>
<li><strong>Better management:</strong> Edit or cancel sessions at any time. For recurring sessions, apply changes to one occurrence or all upcoming sessions.</li>
<li><strong>Go-live and notifications:</strong> The Go Live button becomes available 15 minutes before the start time. Admins can receive reminder emails, and creators can manage learner notifications for reminders, updates, and go-live alerts.</li>
<li><strong>Recordings for learners:</strong> After a session ends, creators can access recordings, download them, or add them to the course as lessons for future viewing.</li>
</ul>
<h2>Why this matters</h2>
<p>This update brings scheduling, hosting, notifications, learner access, and recordings into a single workflow so live teaching is simpler for creators and more consistent for learners.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:01.000Z'),
('wp-1131', 'SMS widgets for dashboards and reporting', 'What’s new A dedicated SMS section is now available in the dashboard widget panel. Five ready-to-use widgets are available: SMS by status, incoming SMS count, SMS by source type, SMS by sender, and SMS volume over time. Each widget is configurable. You can filter by delivery stat...', '<p><strong>What’s new</strong></p>
<ul>
<li>A dedicated SMS section is now available in the dashboard widget panel.</li>
<li>Five ready-to-use widgets are available: SMS by status, incoming SMS count, SMS by source type, SMS by sender, and SMS volume over time.</li>
<li>Each widget is configurable. You can filter by delivery status, direction, source, or sender to focus on the data you need.</li>
<li>SMS can now be used as a dimension in Custom Metrics, so you can build KPIs like delivery rate or inbound volume using the formula builder.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>Open any dashboard and select <strong>Edit Dashboard</strong>.</li>
<li>Select <strong>+ Add Widget</strong> and go to the <strong>SMS</strong> section.</li>
<li>Choose a widget, set your filters and chart type, then select <strong>Save Changes</strong>.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li><strong>All messaging activity in one place</strong> — SMS appears alongside email and calls on your dashboard.</li>
<li><strong>Delivery status at a glance</strong> — Review counts for Sent, Delivered, Failed, or Undelivered over any time period.</li>
<li><strong>Clear visibility into SMS volume</strong> — Break down SMS by source (Workflow, Campaign, Bulk action) or by team member to understand what is driving activity.</li>
<li><strong>Inbound and outbound tracking</strong> — Measure inbound SMS alongside outbound to understand conversation performance.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>All widgets support filtering by status, direction, source, and sender. You can combine filters for more precise segmentation.</li>
<li>This is available on plans that include Dashboards and Reporting.</li>
<li>This is available in the Dashboards, Reporting, and Custom Metrics modules.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:57:01.000Z'),
('wp-1151', 'LinkedIn integration moved to the Marketplace architecture', 'The LinkedIn integration has been moved to the Marketplace framework. This provides a more secure and scalable foundation for future improvements while keeping the experience the same for existing users. How to enable : In Labs, turn on LinkedIn Marketplace Migration . What’s new...', '<p>The LinkedIn integration has been moved to the Marketplace framework. This provides a more secure and scalable foundation for future improvements while keeping the experience the same for existing users.</p>
<p><strong>How to enable</strong>: In Labs, turn on <strong>LinkedIn Marketplace Migration</strong>.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Enhanced security</strong>: LinkedIn connections now use Marketplace authentication flows to improve credential handling and account security.</li>
<li><strong>More scalable foundation</strong>: The integration now runs on a Marketplace architecture designed to support future LinkedIn enhancements.</li>
<li><strong>Multi-account groundwork</strong>: This change enables future support for connecting and managing multiple LinkedIn accounts in the same location.</li>
<li><strong>Migration approach</strong>: Existing LinkedIn connections continue to work without requiring reconfiguration. Older connections remain on the existing architecture for now; a future update will migrate all connections without user action.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Existing LinkedIn users will be migrated to the Marketplace-based integration when the feature leaves Labs.</li>
<li>New LinkedIn connections are created through the Marketplace architecture.</li>
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
<li>Confirm usage rights when prompted.</li>
<li>The image is added to your current Media Storage folder.</li>
</ol>
<p>This makes it faster to bring in assets from CDNs, shared image links, stock photo libraries, and other public sources without extra download-and-upload steps.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1147', 'Sync community membership questions to CRM custom fields', 'Overview You can link community membership questions directly to CRM custom fields. When someone joins a community and answers the membership questions, their answers are saved to the matching CRM contact record automatically. Why it matters This keeps contact records up to date ...', '<p><strong>Overview</strong></p>
<p>You can link community membership questions directly to CRM custom fields.</p>
<p>When someone joins a community and answers the membership questions, their answers are saved to the matching CRM contact record automatically.</p>
<p><strong>Why it matters</strong></p>
<p>This keeps contact records up to date and lets you use the collected answers in approvals, workflows, and automations without manual data entry.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Go to <strong>Community Settings</strong> → <strong>Membership Questions</strong>.</li>
<li>Select <strong>Add Question</strong>.</li>
<li>Open the <strong>Custom Fields</strong> tab.</li>
<li>Choose the CRM custom field you want to connect.</li>
<li>Select <strong>Save</strong>.</li>
</ul>
<p>After a member submits their answers, the linked CRM custom fields are updated automatically. You can review the submitted answers in the contact details under the selected custom field folder.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1146', 'Customer Replied Trigger: Clearer Message Filters', 'Summary Leadli has improved message filtering for the Customer Replied trigger by adding a new attachment filter and consolidating message text matching into a single option. What changed Has Attachments : A new filter with Yes / No values. Message Body : A single filter that cov...', '<p><strong>Summary</strong></p>
<p>Leadli has improved message filtering for the Customer Replied trigger by adding a new attachment filter and consolidating message text matching into a single option.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Has Attachments</strong>: A new filter with <em>Yes</em>/<em>No</em> values.</li>
<li><strong>Message Body</strong>: A single filter that covers contains, does not contain, exact match, empty, and not empty conditions.</li>
</ul>
<p><strong>How it works</strong></p>
<p>Use <strong>Has Attachments</strong> to check whether an incoming message includes files. Use <strong>Message Body</strong> to route or qualify messages based on the text in the message.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Open your workflow and edit the message filter settings.</li>
<li>Select <strong>Has Attachments</strong> or <strong>Message Body</strong>.</li>
<li>Choose a condition and enter the value you want to match.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Existing workflows that used older “contains phrase” or “exact match phrase” options will continue to run as before.</li>
<li>This update is designed to make message routing clearer without changing existing behavior.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1145', 'Goal Event update: support for task status goals', 'Summary The Goal Event action now supports Task Status as a goal type. You can use both Task Created and Task Completed to move a contact into a goal branch when a related task is created or marked complete. How it works In the Goal Event action, select Task Status , choose Task ...', '<p><strong>Summary</strong></p>
<p>The Goal Event action now supports <strong>Task Status</strong> as a goal type. You can use both <strong>Task Created</strong> and <strong>Task Completed</strong> to move a contact into a goal branch when a related task is created or marked complete.</p>
<p><strong>How it works</strong></p>
<p>In the Goal Event action, select <strong>Task Status</strong>, choose <strong>Task Created</strong> or <strong>Task Completed</strong>, and then apply filters using the same options available in the task-based workflow trigger.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add or edit a Goal Event action in a workflow.</li>
<li>Select <strong>Task Status</strong> as the goal type.</li>
<li>Choose <strong>Task Created</strong> or <strong>Task Completed</strong>, then apply any needed task filters.</li>
</ul>
<p><strong>Why this change was made</strong></p>
<p>Task lifecycle events were available as workflow triggers, but not as goals. This update makes it possible to route contacts based on task progress without adding extra workflow steps.</p>
<p><strong>Example</strong></p>
<p>If a consulting agency creates a CRM task from a form submission, the contact can be pulled into the goal branch when the assigned onboarding task is marked <strong>Task Completed</strong>, and then receive the next onboarding email.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Uses the Task Created / Task Completed event types.</li>
<li>Tasks can be filtered by name or assignee.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1144', 'Create dynamic email variants with Spintax', 'You can now use Spintax in Leadli to create multiple variations of words, phrases, or full sentences in a single email template. When an email is sent, one variation is selected automatically. What’s new Add variations inside curly braces after SPIN , and separate each option wit...', '<p>You can now use Spintax in Leadli to create multiple variations of words, phrases, or full sentences in a single email template. When an email is sent, one variation is selected automatically.</p>
<h3>What’s new</h3>
<p>Add variations inside curly braces after <code>SPIN</code>, and separate each option with a pipe <code>|</code>.</p>
<p><strong>Example:</strong></p>
<p><code>{SPIN|Hey|Hello|Hi} there!</code></p>
<p>A recipient will see one of the options (for example, “Hey there!” or “Hello there!” or “Hi there!”).</p>
<p>Spintax can also be used in subject lines, preview text, and the email body. It supports nested Custom Values within variations.</p>
<h3>Impact</h3>
<ol>
<li>Helps reduce repeated content in cold email campaigns and supports deliverability best practices.</li>
<li>Reduces repetitive content across large outreach sequences.</li>
<li>Lets you test different messaging approaches without maintaining multiple A/B versions.</li>
<li>Brings this capability in line with common cold outreach tools.</li>
</ol>
<h3>How to use</h3>
<ol>
<li>Open the email builder.</li>
<li>Add your variations using the <code>{SPIN|...}</code> format.</li>
<li>Save your message or template.</li>
<li>When the message is sent, one option is chosen at random.</li>
</ol>
<p><strong>Example with a contact field:</strong></p>
<p><code>{SPIN|Hey|Hello|Hi} </code></p>
<p>Help article: <a href="https://help.leadli.com/a/solutions/articles/155000008067?portalId=48000045315" rel="ugc nofollow noopener noreferrer" target="_blank">https://help.leadli.com/a/solutions/articles/155000008067?portalId=48000045315</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1143', 'New templates and snapshot updates in Leadli', 'We have added new templates to help you build websites, funnels, forms, surveys, and campaigns more quickly. These templates are customizable and designed to keep your setup consistent and easier to manage. New templates Website templates: 2 new templates (Medical) Email template...', '<p>We have added new templates to help you build websites, funnels, forms, surveys, and campaigns more quickly. These templates are customizable and designed to keep your setup consistent and easier to manage.</p>
<h3>New templates</h3>
<ul>
<li><strong>Website templates:</strong> 2 new templates (Medical)</li>
<li><strong>Email templates:</strong> 1 new template (Medical)</li>
<li><strong>Form templates:</strong> 1 new template (Health &amp; Wellness)</li>
<li><strong>Survey templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Social templates:</strong> 4 new templates (Medical: 2, Marketing Agency: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Other: Retirement; Travel &amp; Hospitality: Travel Consultant)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Other: Lock And Key Service; Medical: Chiropractic Care; Marketing Agency: Marketing Consultancy; Legal: Family Law Attorney; Insurance: Insurance Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Business Coaching &amp; Consulting: Business Coach; Creative: Video Production &amp; Editing; Insurance: Travel Insurance; Marketing Agency: Product Reviews; Real Estate: Residential Architect)</li>
</ul>
<h3>Enhanced snapshot</h3>
<p>One snapshot has been updated with a redesigned website and matching funnel, forms, and email templates to provide a more consistent experience. Updates also include improved emails, an optimized pipeline, clearer workflow naming, and a new Facebook ad.</p>
<p><strong>Snapshot:</strong> Automotive – Automotive Detailing</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z')
ON CONFLICT (external_id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, body = EXCLUDED.body, category = EXCLUDED.category, published_at = EXCLUDED.published_at;