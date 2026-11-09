INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ol>
<li>Open <strong>Funnels &amp; Websites</strong> in your sub-account.</li>
<li>Go to <strong>Settings</strong> → <strong>Domains</strong>.</li>
<li>Select a domain and open <strong>Edit Domain</strong>.</li>
<li>Find the <strong>llms.txt</strong> section, add or update the content, then save.</li>
</ol>
<p><strong>Good to know</strong></p>
<ul>
<li><code>llms.txt</code> is an emerging standard intended to provide guidance to large language model crawlers, similar in concept to <code>robots.txt</code>.</li>
<li>Adoption has been increasing across the web, and it is appearing more frequently in modern site audit checks.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1265', 'AI Studio form submitted workflow trigger', 'Summary The new AI Studio Form Submitted trigger lets you start workflows when visitors submit connected forms on AI Studio websites. This provides a dedicated way to automate follow-up actions for AI Studio leads, such as sending notifications, emails, SMS messages, tags, or cre...', '<p><strong>Summary</strong></p>
<p>The new AI Studio Form Submitted trigger lets you start workflows when visitors submit connected forms on AI Studio websites. This provides a dedicated way to automate follow-up actions for AI Studio leads, such as sending notifications, emails, SMS messages, tags, or creating opportunities.</p>
<p>AI Studio form submissions will continue to work with the existing External Tracking functionality as well.</p>
<p><strong>How it works</strong></p>
<p>Add the AI Studio Form Submitted trigger to a workflow.</p>
<p>When a visitor submits a connected AI Studio form, the workflow can start automatically.</p>
<p>Add the actions needed to follow up with the contact. The existing External Tracking script and trigger will continue to work alongside this new trigger.</p>
<p><strong>Important note: How existing forms can use this trigger</strong></p>
<p>Forms connected before this trigger was released need to refresh their tracking setup:</p>
<ol>
<li>Open the AI Studio project.</li>
<li>In AI Studio, run: “Re-trigger form integration.”</li>
<li>Connect the form to CRM tracking again.</li>
<li>Publish the project.</li>
<li>Submit a test form entry.</li>
<li>Refresh the workflow builder and configure the trigger.</li>
</ol>
<p><strong>Learn more</strong>: <a href="https://help.leadli.com/support/solutions/articles/155000008298-ai-studio-form-submitted-workflow-trigger/" rel="ugc nofollow noopener noreferrer" target="_blank">AI Studio Form Submitted Workflow Trigger</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1264', 'Prompt Optimizer for Conversations AI: test and improve your Leadli chat agents', 'What’s new Prompt Optimizer now works with Conversations AI so you can test how your agent handles realistic customer chats before you publish changes. It creates customer scenarios, runs real conversations against a cloned copy of your agent, evaluates the results, and suggests ...', '<p><strong>What’s new</strong></p>
<p>Prompt Optimizer now works with Conversations AI so you can test how your agent handles realistic customer chats before you publish changes.</p>
<p>It creates customer scenarios, runs real conversations against a cloned copy of your agent, evaluates the results, and suggests prompt updates to improve performance. Your production agent is not changed until you review and apply the updated prompt.</p>
<p><strong>How it works</strong></p>
<p><strong>1) Configure: build a test plan</strong></p>
<ul>
<li>Auto-generated scenarios based on your agent prompt, language, knowledge base, appointment setup, and actions.</li>
<li>Reuse scenarios from earlier runs.</li>
<li>Multi-language support for scenarios, evaluations, and optimized prompts.</li>
<li>Usage visibility for daily free messages used and remaining, plus a pre-run checklist.</li>
</ul>
<p><strong>2) Test: run real chats and track actions</strong></p>
<ul>
<li>Sends customer-style messages and waits for your agent’s actual replies.</li>
<li>Tracks key actions such as appointment booking, handover, workflow triggers, bot transfer, stop bot, auto follow-up, contact field updates, and knowledge base queries.</li>
<li>Provides full transcripts with scoring and clear notes on what passed or failed.</li>
<li>Runs in the background so you can return when results are ready.</li>
</ul>
<p><strong>3) Improve: update prompts with guided optimization</strong></p>
<ul>
<li>Improvise: analyzes failed chats, identifies likely causes, proposes an updated prompt, and can retest.</li>
<li>Auto Optimize: runs multiple attempts until you reach a target accuracy.</li>
<li>Prompt diff viewer to review changes before applying.</li>
<li>Highlights the best variation based on accuracy.</li>
</ul>
<p><strong>Safe by design</strong></p>
<ul>
<li>Tests run against a cloned agent so your live agent is not modified during testing.</li>
<li>Temporary test contacts can be created for runs and cleaned up automatically to avoid cluttering your CRM.</li>
</ul>
<p><strong>Good to know</strong></p>
<ul>
<li>Evaluation scores can vary between runs; use them as directional guidance.</li>
<li>Real actions can execute during testing, so use test calendars and workflows when appropriate.</li>
<li>Long or stuck conversations time out automatically so runs complete.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1263', 'Threads comment management is now available in Social Planner', 'Comment Management now supports Threads. You can view, manage, and reply to Threads comments directly from Social Planner. What’s new Manage Threads comments in one place View and reply to Threads comments from Social Planner without switching tools. Rich reply support Reply usin...', '<p>Comment Management now supports Threads. You can view, manage, and reply to Threads comments directly from Social Planner.</p>
<h3>What’s new</h3>
<ol>
<li><strong>Manage Threads comments in one place</strong><br />View and reply to Threads comments from Social Planner without switching tools.</li>
<li><strong>Rich reply support</strong><br />Reply using supported capabilities such as text, images, emojis, and location attachments (based on Threads platform support).</li>
<li><strong>Real-time comment sync</strong><br />Comments stay synchronized with Threads using webhook-based updates so you see the latest conversations.</li>
<li><strong>Unified engagement inbox</strong><br />Threads appears alongside other supported networks such as Facebook, Instagram, LinkedIn, TikTok, Communities, and Bluesky.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Go to Marketing → Social Planner → Comment Management.</li>
<li>Select your Threads account.</li>
<li>Open the Comments tab to view and reply.</li>
</ol>
<h3>Why it matters</h3>
<ul>
<li>Manage Threads conversations without switching platforms.</li>
<li>Respond faster from a centralized inbox.</li>
<li>Keep engagement consistent across multiple social channels.</li>
<li>Support team productivity with unified comment management.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Existing Threads users may need to reconnect their account once to enable additional permissions required for Comment Management.</li>
<li>Synchronization is near real-time.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1262', 'Email AI: Smart countdown timer creation and suggestions', 'Email AI can now identify when an email would benefit from a live countdown timer and help you add one while creating or updating a template. What changed Countdown timer tools were added to Email AI so it can suggest and insert a timer when it is relevant. How it works Email AI ...', '<p>Email AI can now identify when an email would benefit from a live countdown timer and help you add one while creating or updating a template.</p>
<h3>What changed</h3>
<p>Countdown timer tools were added to Email AI so it can suggest and insert a timer when it is relevant.</p>
<h3>How it works</h3>
<p>Email AI looks for time-sensitive messages such as flash sales, product launches, webinars, and expiring offers. It will suggest a timer only when the email has a clear deadline or when a user explicitly asks for one.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;