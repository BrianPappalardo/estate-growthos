INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h3>Notes</h3>
<ul>
<li>Applying a fix changes the live site. Take a backup first if you may need to roll back.</li>
<li>Leave <strong>Disable XML-RPC</strong> off if you use the WordPress phone app.</li>
<li>Antivirus helps close common security gaps, but it does not replace updates and regular backups.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T14:10:59.000Z'),
('wp-1590', 'Collect form submissions inside WhatsApp with Leadli Flows', 'Leads often message you on WhatsApp. Instead of sending them to a separate link, you can now open a form inside the WhatsApp conversation so they can answer questions without leaving the chat. Sending someone out of a WhatsApp conversation can lower completion rates. Keeping the ...', '<p>Leads often message you on WhatsApp. Instead of sending them to a separate link, you can now open a form inside the WhatsApp conversation so they can answer questions without leaving the chat.</p>
<p>Sending someone out of a WhatsApp conversation can lower completion rates. Keeping the form in the chat removes that extra step.</p>
<h2>What’s new</h2>
<h3>Forms inside the conversation</h3>
<ul>
<li><strong>No redirect, no browser:</strong> Send a form as a WhatsApp Flow so the customer fills it out in the chat window they are already using.</li>
<li><strong>Use existing forms:</strong> Select a form you already created. If you need a new form, you can create it while setting up the Flow.</li>
</ul>
<h3>Preview while you build</h3>
<ul>
<li><strong>Live preview:</strong> See how fields will appear in WhatsApp while you configure the Flow.</li>
<li><strong>Unsupported field types are excluded:</strong> If a field type is not supported by WhatsApp Flows, it is removed before publishing so you can catch issues early.</li>
</ul>
<h3>Responses are saved automatically</h3>
<ul>
<li><strong>Saved in Forms submissions:</strong> Each response is stored and mapped to the right contact automatically, so there is no manual copy/paste.</li>
<li><strong>Published flows stay stable:</strong> After a Flow is published, later edits to the underlying form do not change what the published Flow collects.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Flows</strong> and select <strong>Create Flow</strong>.</li>
<li>Choose <strong>Form submission</strong>.</li>
<li>Select the form you want to send and review the preview.</li>
<li>Configure the WhatsApp template, including the button customers tap to open the form.</li>
<li>Publish the Flow, then send it from Conversations, a workflow, or a bulk action.</li>
</ol>
<h2>Why this matters</h2>
<p>The gap between an interested lead and a qualified lead is often a form that lives outside the conversation. When you ask someone to switch apps, open a browser, and complete a form elsewhere, it creates more chances for them to drop off.</p>
<ul>
<li><strong>Fewer drop-offs:</strong> Questions and answers stay in the same WhatsApp thread.</li>
<li><strong>Better first conversations:</strong> Details like budget, goals, and timing can be collected up front and saved to the contact.</li>
<li><strong>Less manual work:</strong> Responses map to the contact automatically, helping keep your data consistent.</li>
<li><strong>Useful beyond lead intake:</strong> The same approach works for onboarding, feedback, and registrations.</li>
</ul>
<p>In Leadli, you can use WhatsApp Flows to turn a high-traffic form into an in-chat experience.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-26T11:32:15.000Z'),
('wp-1589', 'WhatsApp carousel templates are now available in Leadli', 'Leadli now supports WhatsApp carousel templates. You can include between 2 and 10 cards in a single WhatsApp message so people can swipe through multiple products, offers, or services in one conversation. What’s new Up to ten cards in one message Scrollable cards: Write the messa...', '<p>Leadli now supports WhatsApp carousel templates. You can include between 2 and 10 cards in a single WhatsApp message so people can swipe through multiple products, offers, or services in one conversation.</p>
<h2>What’s new</h2>
<h3>Up to ten cards in one message</h3>
<ul>
<li><strong>Scrollable cards:</strong> Write the message once, then add 2–10 cards. Each card can include an image or video header, optional text, and up to two buttons.</li>
<li><strong>One message charge:</strong> A multi-card carousel is sent as a single WhatsApp marketing message (instead of separate messages for each item), which helps manage messaging limits and cost.</li>
</ul>
<h3>Buttons with clearer intent</h3>
<ul>
<li><strong>Two buttons per card:</strong> Use quick reply, call, and website buttons on each card.</li>
<li><strong>Quick replies stay in the chat:</strong> When someone taps a quick reply, the response stays in the thread and can trigger a webhook you route into a workflow for follow-up.</li>
<li><strong>Per-card links:</strong> Website buttons can be unique per card, so each item can link to its own page.</li>
</ul>
<h3>Image or video per card</h3>
<ul>
<li><strong>Show the item clearly:</strong> Each card can use an image or video header that is cropped to fit the customer’s device.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Settings → WhatsApp → Templates</strong> and click <strong>Create template</strong>.</li>
<li>Set <strong>Category</strong> to <strong>Marketing</strong> and choose the <strong>Carousel</strong> type.</li>
<li>Write the message body, then add your cards with images or video, text, and buttons.</li>
<li>Submit for Meta approval, then send from Conversations, a workflow, or a bulk action.</li>
</ol>
<p><strong>Planning notes:</strong></p>
<ul>
<li><strong>Card count is fixed after approval:</strong> If a template is approved with five cards, it will always send five. Create another template if you need a different number of cards.</li>
<li><strong>Cards must match:</strong> If one card has body text, they all need body text. If one has two buttons, they all need two buttons.</li>
</ul>
<h2>Why this matters</h2>
<p>Carousels let you present multiple options in one WhatsApp message. This reduces back-and-forth, keeps message volume lower, and makes it easier to see what someone is interested in based on the card they tap.</p>
<ul>
<li>Lower cost per set of offers shown.</li>
<li>Less pressure on per-customer messaging limits.</li>
<li>Clearer intent based on the specific card clicked.</li>
<li>Less guesswork about which offer to lead with.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-26T11:32:12.000Z'),
('wp-1588', 'Add comments to your blog posts', 'You can now enable comments on your blog posts. Readers can leave comments, reply to each other, and react to discussions directly on the post. You can review and respond to comments from a new Comments tab in Blogs. What’s included Comments and replies available on every post wh...', '<p>You can now enable comments on your blog posts. Readers can leave comments, reply to each other, and react to discussions directly on the post. You can review and respond to comments from a new Comments tab in Blogs.</p>
<h2>What’s included</h2>
<ul>
<li>Comments and replies available on every post when the Comments element is added to your blog post page</li>
<li>Simple reader sign-in using email and a one-time code (no password required)</li>
<li>A moderator badge on replies from your team</li>
<li>A central Comments tab to view, search, filter, reply to, approve, or delete comments across your blog site</li>
<li>A guided review flow for pending comments, with the full conversation visible</li>
<li>Per-site settings including approval requirements and email notifications, with an option to apply settings across blog sites</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to Sites → Blogs and open your blog site.</li>
<li>Open the blog post page in the builder.</li>
<li>Add the Comments element and style it to match your site.</li>
<li>Save and publish.</li>
<li>Manage comments and settings from the Comments tab.</li>
</ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;