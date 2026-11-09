INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ol>
<p><strong>Why it matters</strong></p>
<ol>
<li><strong>More accurate paid-channel reporting</strong>: Google Lead Form leads are no longer categorized as Paid Social, so dashboards and source reporting are more reliable.</li>
<li><strong>Clear campaign visibility</strong>: Marketers can see the exact campaign, ad group, ad, and form behind each lead.</li>
<li><strong>Cleaner activity timelines</strong>: A dedicated activity type makes it easier to filter, segment, and automate workflows for Google Lead Form leads.</li>
<li><strong>Better automation options</strong>: Workflows can branch on the new activity type to send more relevant follow-up.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>This applies to <strong>new submissions going forward</strong>. Historical contacts keep their original attribution.</li>
<li>No setup changes are required. The corrected attribution and new activity apply automatically.</li>
<li>Availability depends on where Google Ads Lead Form integrations are supported.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-05-05T14:33:48.000Z'),
('wp-1003', 'Embedded Voice AI widgets with orb display options', 'Overview You can now choose how the Voice AI widget appears on your website. You can keep it as a floating widget (Sticky) or place it inside your page content (Embedded/Inline). What changed Widget placement : choose Sticky (floating in a corner) or Embedded/Inline (renders with...', '<h2>Overview</h2>
<p>You can now choose how the Voice AI widget appears on your website. You can keep it as a floating widget (Sticky) or place it inside your page content (Embedded/Inline).</p>
<h2>What changed</h2>
<ul>
<li><strong>Widget placement</strong>: choose <strong>Sticky</strong> (floating in a corner) or <strong>Embedded/Inline</strong> (renders within page content).</li>
<li><strong>Display mode for embedded widgets</strong>: choose <strong>Avatar</strong> (static) or <strong>Visualiser</strong> (animated voice-based visual cues).</li>
<li><strong>Interface size</strong> (Visualiser only): Small, Medium, or Large.</li>
<li><strong>Live preview updates</strong> as you change placement and display options.</li>
<li>For inline widgets, a <strong>call to action</strong> can appear below the avatar/visualiser (for example, “Call us here”).</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget &gt; Style</strong>.</li>
<li>Under <strong>Widget Placement</strong>, choose <strong>Sticky</strong> or <strong>Embedded/Inline</strong>.</li>
<li>If you choose <strong>Embedded/Inline</strong>, select a <strong>Display Mode</strong> (Avatar or Visualiser).</li>
<li>If you choose <strong>Visualiser</strong>, select an <strong>Interface Size</strong>.</li>
<li>Adjust any remaining style settings as needed.</li>
<li>Use <strong>Get Code</strong> to copy the correct code for your placement.</li>
<li>Add the code to your website where you want the widget to appear.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Some options (such as widget position and contact form toggle) are not available in Embedded mode.</li>
<li>Display Mode variations are currently optimized for Voice AI experiences.</li>
<li>You can add multiple embedded widgets on the same site.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Gives you more control over how Voice AI appears on your site.</li>
<li>Makes it easier to match the widget to different page layouts and designs.</li>
<li>Supports placement choices that can better fit conversion-focused pages.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T01:13:27.000Z'),
('wp-995', 'New Leadli templates are available', 'Leadli has published new templates you can use for websites, funnels, email campaigns, forms, and ads. These templates are designed to be easy to customize and help you launch faster. What’s included in this release Website templates: 1 new template (Creative) Email templates: 1 ...', '<p>Leadli has published new templates you can use for websites, funnels, email campaigns, forms, and ads. These templates are designed to be easy to customize and help you launch faster.</p>
<h3>What’s included in this release</h3>
<ul>
<li><strong>Website templates:</strong> 1 new template (Creative)</li>
<li><strong>Email templates:</strong> 1 new template (Restaurant and Bar)</li>
<li><strong>Form templates:</strong> 1 new template (Beauty &amp; Fashion)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Restaurant and Bar – Catering Services; Travel &amp; Hospitality – Hotel; Automotive – Car Towing; Real Estate – Title Insurance Representative; Beauty &amp; Fashion – Clothing Boutique)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Beauty &amp; Fashion – Jewelry Retail Store; Automotive – Brake and Muffler Depot; Travel &amp; Hospitality – Excursion Guide; Restaurant &amp; Bar – Doughnut Shop; Real Estate – Loan Officer)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Marketing Agency – Social Media Influencer; Real Estate – Mortgage Lender; Creative – Event Planner; Finance – Banking &amp; Payment; Insurance – Health Insurance</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-05T01:13:02.000Z'),
('wp-994', 'AI Agent updates: call transcripts, execution log feedback, and stability improvements', 'Summary This update adds call transcripts to the AI Agent tools, introduces a feedback flow in execution logs, and includes general reliability fixes. What’s included Call transcripts (built in) The AI Agent action now includes a built-in call transcript tool. It gives the agent ...', '<h2>Summary</h2>
<p>This update adds call transcripts to the AI Agent tools, introduces a feedback flow in execution logs, and includes general reliability fixes.</p>
<h2>What’s included</h2>
<h3>Call transcripts (built in)</h3>
<p>The AI Agent action now includes a built-in call transcript tool. It gives the agent access to a contact’s call history without additional setup.</p>
<p>To use it, reference call transcripts in your agent prompt. The agent can retrieve transcripts and use them as context when making decisions or writing responses.</p>
<p>This works alongside conversation history, so the agent can use both chat messages and calls for a more complete view of each contact interaction.</p>
<h3>Feedback flow in execution logs</h3>
<p>You can now submit structured feedback on each AI Agent run directly from the execution logs. This makes it easier to flag issues, document what worked, and share specifics for each run.</p>
<h3>Bug fixes and stability improvements</h3>
<p>Several fixes were made across the AI Agent action to improve reliability and overall performance.</p>
<h2>Why this matters</h2>
<p>With access to both chat history and call transcripts, the AI Agent can respond with better context. The new feedback flow helps teams identify gaps faster and improve future runs.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-02T00:19:26.000Z'),
('wp-993', 'Workflow AI Builder is now more powerful in Leadli', 'The Workflow AI Builder has been rebuilt to make building and editing workflows faster and easier to follow. What changed Live streaming progress: Results update in real time and show each step being taken. Multiple changes at once: You can request several updates in one message ...', '<p>The Workflow AI Builder has been rebuilt to make building and editing workflows faster and easier to follow.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Live streaming progress:</strong> Results update in real time and show each step being taken.</li>
<li><strong>Multiple changes at once:</strong> You can request several updates in one message (for example: rename a step, add a 24-hour wait, and turn off re-entry).</li>
<li><strong>Conversational memory:</strong> The builder keeps context so follow-up changes are applied to the same request.</li>
<li><strong>Edit or start fresh:</strong> If a workflow already exists on the canvas, you can choose to modify it or begin from scratch.</li>
<li><strong>Context-aware suggestions:</strong> Prompts adjust based on whether you are on a blank canvas or editing an existing workflow.</li>
<li><strong>Chat to Build:</strong> You can move from chat guidance into build mode without re-typing the request.</li>
<li><strong>Session continuity:</strong> Closing and reopening the sidebar keeps your progress and history.</li>
<li><strong>Learn mode updates:</strong> Answers stream in real time with suggested follow-up questions.</li>
<li><strong>White-label safe output:</strong> The builder avoids using platform brand names in generated content.</li>
</ul>
<p><strong>Why it matters</strong></p>
<p>This update improves speed, clarity, and reliability when building workflows. The underlying architecture is designed to make future improvements easier to ship.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-05-01T17:55:46.000Z'),
('wp-992', 'Conversation AI: Separate sleep controls for manual and workflow messages', 'We’ve added more precise controls for when Conversation AI pauses (sleeps) after outbound messages are sent. The previous setting, “Send bot to sleep when I send a,” is now split into two separate options: Manual message Workflow message This lets you control bot sleep behavior b...', '<p>We’ve added more precise controls for when Conversation AI pauses (sleeps) after outbound messages are sent.</p>
<p>The previous setting, “Send bot to sleep when I send a,” is now split into two separate options:</p>
<ul>
<li>Manual message</li>
<li>Workflow message</li>
</ul>
<p>This lets you control bot sleep behavior based on how the message was sent, which can reduce unintended bot pauses.</p>
<h2>How it works</h2>
<ol>
<li><strong>Default behavior (no change)</strong><br />If you don’t change anything, your current bot sleep behavior stays the same. Existing automation and manual interactions continue as they do today.</li>
<li><strong>Independent sleep controls (new)</strong><br />You can now configure sleep behavior separately for manual messages (sent directly by a user) and workflow messages (sent by automations/workflows). You can sleep the bot for manual messages only, workflow messages only, or both.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;