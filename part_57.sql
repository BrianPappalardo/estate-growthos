INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
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
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;