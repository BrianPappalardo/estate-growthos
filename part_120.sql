INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>a screenshot of an issue</li>
<li>a CSV export</li>
<li>a signed contract PDF</li>
</ul>
<p>Previously, Ask AI could only use what you typed into the chat.</p>
<h3>The update: attachments in Ask AI</h3>
<p>In the composer, tap the attachment (paperclip) icon and choose one of these sources: Camera, Gallery, Files, or Media Library. The file uploads in the background and is included with your next message so Ask AI can read it.</p>
<h3>How this helps</h3>
<ul>
<li><strong>Saves time:</strong> Attach a screenshot instead of retyping details.</li>
<li><strong>Works on mobile:</strong> Handle document-based questions from your phone.</li>
<li><strong>Improves answers:</strong> Ask AI can use your actual file content.</li>
<li><strong>Uses existing files:</strong> Attach items from your Media Library without uploading again.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Open <strong>Ask AI</strong> in the app and start (or open) a chat.</li>
<li>Tap the attachment (paperclip) icon and choose Camera, Gallery, Files, or Media Library.</li>
<li>Wait for the attachment to finish uploading, type your question, and send.</li>
</ol>
<p>If you are not sure what to ask, you can send the file by itself and Ask AI will analyze it.</p>
<h3>What’s next</h3>
<p>We are expanding what Ask AI can read. Planned improvements include larger document limits, more file types (spreadsheets, plain text, and Markdown), and in-app previews. Attachment history and reuse across sessions are also being explored.</p>
<p><strong>Rollout and availability:</strong> 4.21.0+844</p>
<p><strong>Speak with us:</strong> <a href="https://speakwith.us/nikhilsatish" rel="ugc nofollow noopener noreferrer" target="_blank">https://speakwith.us/nikhilsatish</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1296', 'Slack integration moved to the Leadli Marketplace architecture', 'The Slack integration now runs on the Leadli Marketplace framework. This provides a more secure and scalable foundation while keeping the experience the same for existing users. What changed Slack connections now use Marketplace authentication, improving credential handling and a...', '<p>The Slack integration now runs on the Leadli Marketplace framework. This provides a more secure and scalable foundation while keeping the experience the same for existing users.</p>
<h2>What changed</h2>
<ul>
<li>Slack connections now use Marketplace authentication, improving credential handling and account security.</li>
<li>The integration runs on a Marketplace foundation designed to support future Slack updates.</li>
<li>Existing Slack connections continue to work without requiring users to reconfigure anything. Older connections will be migrated automatically in a future update.</li>
</ul>
<h2>How it works</h2>
<ul>
<li>When the feature is released from Labs, existing Slack users will be migrated to the Marketplace-based integration automatically.</li>
<li>New Slack connections are created through the Marketplace architecture.</li>
<li>Existing Slack workflows continue to run as expected (backward compatibility is maintained).</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Stronger security and authentication controls</li>
<li>Improved reliability and maintainability</li>
<li>A scalable base for future Slack features</li>
</ul>
<h2>How to enable</h2>
<p>Enable this feature in your sub-account Labs to get early access.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:40.000Z'),
('wp-1295', 'Callers now hear a local ringtone when you call them', 'August 6, 2026 When your business operates outside the US, callers could previously hear a US-style ringback tone while a call was being forwarded, routed through an IVR menu, transferred by Voice AI, or dialed out. This could feel unfamiliar and cause some people to hang up befo...', '<p>August 6, 2026</p>
<p>When your business operates outside the US, callers could previously hear a US-style ringback tone while a call was being forwarded, routed through an IVR menu, transferred by Voice AI, or dialed out. This could feel unfamiliar and cause some people to hang up before the call was answered.</p>
<p>We have now localized the ringback tone to match the country of the phone number involved. This applies to inbound call forwarding, outbound calls, IVR call routing, and Voice AI transfers across 37 countries, so callers hear the tone they expect.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:40.000Z'),
('wp-1310', 'Chat Widget: Embed any chat widget inline', 'What’s new You can now use embedded placement with all Chat Widget types. This lets you show conversations directly inside pages across websites, funnels, and landing pages. Previously, the Sticky/Embedded placement option was available only for Live Chat and Voice AI. Other chat...', '<h2>What’s new</h2>
<p>You can now use embedded placement with all Chat Widget types. This lets you show conversations directly inside pages across websites, funnels, and landing pages.</p>
<p>Previously, the Sticky/Embedded placement option was available only for Live Chat and Voice AI. Other chat types always appeared as a floating chat bubble, even when the widget was added within a page section.</p>
<p>Now you can choose Embedded placement for any supported Chat Widget type to display the full conversation experience within the page.</p>
<h3>Embedded placement is supported for</h3>
<ul>
<li>All-in-One Chat</li>
<li>Email / SMS</li>
<li>WhatsApp</li>
<li>Facebook</li>
<li>Instagram</li>
<li>Live Chat</li>
<li>Voice AI</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Open the Chat Widget Builder and select a supported Chat Widget type.</li>
<li>In placement settings, choose Sticky or Embedded.</li>
<li>When Embedded placement is selected, the widget opens inline within the page and stays visible. It does not show a floating chat bubble or the initial prompt popup, and it cannot be minimized. Layout dimensions are optimized for embedded display.</li>
<li>For All-in-One Chat, visitors can switch between available channels without leaving the embedded experience.</li>
<li>The builder preview updates automatically when you select Embedded.</li>
<li>Controls that only apply to floating chat bubbles are hidden when Embedded is selected.</li>
</ol>
<h2>Why it matters</h2>
<p>This gives businesses more control over where and how conversations happen across their digital experiences. You can create dedicated chat experiences within landing pages, funnels, website pages, AI-powered experiences, contact pages, and support pages.</p>
<p>Instead of relying on a floating chat bubble, messaging can be part of the page layout, which can support more intentional and contextual customer journeys.</p>
<h2>Notes</h2>
<ul>
<li>Embedded placement is available for all supported Chat Widget types.</li>
<li>Embedded widgets remain visible and cannot be minimized.</li>
<li>Floating bubble and initial prompt behaviors are disabled in Embedded mode.</li>
<li>The builder preview and related settings adjust based on the selected placement.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:30.000Z'),
('wp-1309', 'Ad Manager: Opportunity Score for Google and LinkedIn campaigns', 'Release summary Opportunity Score is now available across Meta, Google, and LinkedIn campaign builders in the Leadli Ad Manager. After launching Opportunity Score for Meta campaigns, we extended the same pre-publish checks to Google and LinkedIn. You can review campaign readiness...', '<h2>Release summary</h2>
<p>Opportunity Score is now available across Meta, Google, and LinkedIn campaign builders in the Leadli Ad Manager.</p>
<p>After launching Opportunity Score for Meta campaigns, we extended the same pre-publish checks to Google and LinkedIn. You can review campaign readiness, spot potential setup issues, and improve your campaigns before publishing from the Review screen.</p>
<h2>What’s new</h2>
<h3>Opportunity Score for Google and LinkedIn</h3>
<ul>
<li>View a 0–100 campaign readiness score before publishing.</li>
<li>Campaign health is summarized as Low, Medium, or High.</li>
<li>Recommendations adjust based on the selected platform and campaign configuration.</li>
</ul>
<h3>Platform-aware recommendations</h3>
<ul>
<li><strong>Google</strong>: Reviews areas such as keywords, audience, budget, creatives, tracking, ad schedule, language, placements, bidding setup, and applicable campaign assets.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;