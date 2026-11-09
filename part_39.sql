INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Templates → Create template</strong>.</li>
<li>Set <strong>Category</strong> to <strong>Marketing</strong> and <strong>Type</strong> to <strong>Limited time offer</strong>.</li>
<li>Add your offer heading, message body (with variables if needed), discount code, and URL.</li>
<li>Submit the template for approval as usual.</li>
<li>When sending, choose the expiry for that specific campaign.</li>
</ol>
<p><strong>Note:</strong> If you send with an expiry time that has already passed, WhatsApp may still deliver the message but it will show as expired. Double-check the deadline before sending.</p>
<h2>Why this matters</h2>
<p>Time-sensitive offers are clearer when customers can see the deadline counting down, rather than just reading “offer ends soon.” This also lets you run multiple promotions using the same approved template by changing only the expiry each time you send.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-15T14:04:16.000Z'),
('wp-1573', 'AI Studio Payments: checkout updates', 'AI Studio Payments checkouts are now more flexible. You can control which fields buyers complete, capture leads before payment with a two-step checkout, and show clearer order details after payment. Choose which fields appear at checkout You can show, hide, or require the phone n...', '<p>AI Studio Payments checkouts are now more flexible. You can control which fields buyers complete, capture leads before payment with a two-step checkout, and show clearer order details after payment.</p>
<h2>Choose which fields appear at checkout</h2>
<p>You can show, hide, or require the phone number and billing address fields (street, city, state, ZIP, country). Name and email are always required.</p>
<h2>Two-step checkout</h2>
<p>Collect contact details first, then take payment in a second step.</p>
<ul>
<li><strong>Step 1</strong> saves the buyer as a CRM contact, even if they do not complete payment.</li>
<li><strong>Step 2</strong> collects the payment.</li>
</ul>
<p><strong>Note:</strong> New leads trigger <strong>Contact Created</strong>, not <strong>Order Form Submission</strong>. Update your workflows if needed.</p>
<h2>Order details after payment</h2>
<p>The confirmation screen now includes the order ID, items, taxes, total paid, and the next subscription charge (if applicable). You can also redirect buyers to a custom thank-you page that displays their order details.</p>
<h2>Availability</h2>
<p>If you already use Payments, these updates will be available on your next prompt. No reconnection is required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-15T12:52:53.000Z'),
('wp-1572', 'GitHub sync for Leadli AI Studio projects', 'You can now connect a GitHub account to any Leadli AI Studio project and keep your project in sync in both directions. What’s included Connect GitHub : In a project, go to More → Git and connect a personal account or an organization. You can share the connection with the whole su...', '<p>You can now connect a GitHub account to any Leadli AI Studio project and keep your project in sync in both directions.</p>
<p><strong>What’s included</strong></p>
<ul>
<li><strong>Connect GitHub</strong>: In a project, go to <em>More → Git</em> and connect a personal account or an organization. You can share the connection with the whole sub-account or keep it private.</li>
<li><strong>A repository is created for you</strong>: Leadli creates a private repository named after your project and makes the first push. If you reconnect later, it reuses the same repository and does not force-push.</li>
<li><strong>Two-way sync</strong>: When you save a version (prompts, code edits, visual edits, restores), changes can be pushed to GitHub. Commits made on the connected branch in GitHub can be pulled back into the project automatically. You can also use manual <em>Push now</em> and <em>Pull now</em>.</li>
<li><strong>Branch selection</strong>: Sync starts on <code>main</code>, and you can switch to another branch at any time. New branches are created on the next push.</li>
<li><strong>Preview updates after a pull</strong>: After pulling, a new preview builds in the background. When ready, select <em>Update preview</em>. If the build fails, use <em>Retry build</em> or <em>Try to fix</em>.</li>
<li><strong>Handling diverged branches</strong>: If both sides have new commits, choose <em>Force push</em> (project version wins) or create a <em>New branch</em> to keep both histories.</li>
<li><strong>Sync history</strong>: View totals, success rate, push vs. pull activity, and the commits that were moved, with links to GitHub when available.</li>
<li><strong>Safety checks</strong>: Pushes are scanned for common secrets (for example AWS, GitHub, Stripe, OpenAI keys, and private keys) and are blocked if secrets are detected. Binary files such as images and fonts are preserved.</li>
</ul>
<p><strong>Permission update</strong></p>
<p>There is a new permission called <em>Manage Git &amp; download code</em>. It is enabled by default for existing roles. Agency admins can change it per user under <em>Settings → Team → Permissions → AI Studio</em>. If a user does not have this permission, they won’t see the Git tab or download options, but they can still build, edit, and preview projects.</p>
<p><strong>Good to know</strong></p>
<ul>
<li>Works with React (Vite) and TanStack Start projects.</li>
<li>Commits created by the system may appear as “Leadli AI Studio” in GitHub.</li>
<li>Only the connected branch is synced.</li>
<li>Projects that do not connect GitHub are not affected.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-15T09:28:58.000Z'),
('wp-1571', 'AI Studio chat widgets are now available', 'You can now add native chat widgets to your AI Studio apps. The widget is built and styled by AI Studio to match your site, rather than using a generic chat bubble. To get started, ask AI Studio to “add a live chat”. AI Studio will create a chat widget and add it to your app. Wha...', '<p>You can now add native chat widgets to your AI Studio apps. The widget is built and styled by AI Studio to match your site, rather than using a generic chat bubble.</p>
<p>To get started, ask AI Studio to “add a live chat”. AI Studio will create a chat widget and add it to your app.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Widget creation inside your account:</strong> The widget is created in your account, named after your project, and connected to your app.</li>
<li><strong>Basic setup help:</strong> For a new widget, AI Studio asks a few simple design questions (greeting, placement, tone) and then configures it.</li>
<li><strong>Matches your site:</strong> Because the chat is built into your app’s code, it can follow your site’s colors, fonts, and layout. You can also ask AI Studio to adjust it later.</li>
<li><strong>Multiple widgets per project:</strong> You can use more than one widget (for example, a general live chat plus an after-hours widget).</li>
</ul>
<h2>How it works with Leadli</h2>
<p>These chat widgets use Leadli’s chat widget system. That means your conversations, contacts, and widget settings are the same ones you already use in your Leadli account—there’s nothing additional to set up.</p>
<ul>
<li><strong>Security:</strong> Visitor sessions use secure tokens, and captcha may appear automatically when suspicious behavior is detected.</li>
<li><strong>Spam and abuse controls:</strong> Rate limits and your widget’s spam settings apply to messages sent through the widget.</li>
<li><strong>Attachments:</strong> Visitors can share files in live chat (within supported file types and size limits).</li>
<li><strong>Conversation history:</strong> Returning visitors can continue previous conversations, and older messages load as they scroll.</li>
<li><strong>Delivery status:</strong> Messages show sending, sent, or failed states, and failed messages can be retried.</li>
<li><strong>Business rules:</strong> Business hours, out-of-hours messages, inactivity timeouts, chat ratings, and chat-ended messages follow your widget settings.</li>
<li><strong>Inbox visibility:</strong> Messages appear in Leadli Conversations, the same as the standard widget.</li>
</ul>
<h2>Chat widget analytics</h2>
<p>You can review performance in <strong>More → Analytics → Chat Widgets</strong>. This includes chat loads, opens, open rate, and satisfaction/feedback from chat ratings. You can also see each lead (contact details, chat type, starting page, and which widget generated it) and filter or export results.</p>
<h2>Manage widget settings in AI Studio</h2>
<p>You can manage your project’s widgets in <strong>More → Chat Widgets</strong>. From there you can rename the widget, adjust visitor messaging, change the contact form fields, update compliance/consent notices, and configure spam protection and business hours.</p>
<h2>Availability</h2>
<ul>
<li>Live Chat and Email Chat are supported in both TanStack Start and React projects.</li>
<li>Voice chat, WhatsApp, Facebook Messenger, and Instagram chat widgets are not supported in AI Studio yet.</li>
</ul>
<p>Source: https://ideas.leadli.com/changelog/ai-studio-chat-widgets-native-live-chat-built-into-your-ai-studio-apps</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-14T18:34:45.000Z'),
('wp-1559', 'Update feature access for multiple sub-accounts in Leadli', 'Overview You can now update feature access for multiple sub-accounts in one action. On the Sub-Accounts page, select the sub-accounts you want to update, choose the features, and decide whether each feature should be enabled or disabled. After you apply the changes, the updates a...', '<p><strong>Overview</strong></p>
<p>You can now update feature access for multiple sub-accounts in one action. On the Sub-Accounts page, select the sub-accounts you want to update, choose the features, and decide whether each feature should be enabled or disabled. After you apply the changes, the updates are queued and processed automatically.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Go to the Sub-Accounts page.</li>
<li>Select the sub-accounts you want to update.</li>
<li>Click <strong>Update features</strong>.</li>
<li>Select the features you want to change, then click <strong>Next</strong>.</li>
<li>For each feature, choose <strong>Enable</strong> or <strong>Disable</strong>.</li>
<li>Click <strong>Apply changes</strong>.</li>
</ol>
<p>You can also search for features, select groups of features at once, use <strong>Enable all</strong> or <strong>Disable all</strong>, and remove a feature from the list before applying the update.</p>
<p><strong>Why it matters</strong></p>
<p>This reduces the need to open each sub-account to manage feature access. Rolling out a feature, restricting access, or standardizing settings across multiple sub-accounts now takes a few clicks.</p>
<p><strong>Notes</strong></p>
<ul>
<li>Changes usually take effect within 2 to 5 minutes after you apply them.</li>
<li>You can track each request in <strong>Bulk Actions History</strong>.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-10-14T07:56:52.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;