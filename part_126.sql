INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Home Services &#8211; Appliance Service</li>
<li>Health &amp; Wellness &#8211; Natural Wellness</li>
<li>Finance &#8211; Accounting</li>
<li>Creative &#8211; Photography</li>
<li>Business Coaching &amp; Consulting &#8211; Career Coaching</li>
</ul>
<h3>LinkedIn Ad templates</h3>
<ul>
<li>Real Estate &#8211; Commercial Property Inspector</li>
<li>Business Coaching &amp; Consulting &#8211; Cyber Security Consulting</li>
<li>Creative &#8211; Copy Writer</li>
<li>Marketing Agency &#8211; Digital Marketing</li>
<li>Real Estate &#8211; Title Insurance Representative</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-06-01T21:18:39.000Z'),
('wp-1124', 'Conversations AI: Automatic reply suggestions', 'We updated Suggestive Mode in Conversations AI so reply suggestions are prepared before you open a conversation. This reduces waiting and keeps you in control of what gets sent. What’s new Suggestions are generated automatically: a draft reply is prepared in the background as soo...', '<p>We updated Suggestive Mode in Conversations AI so reply suggestions are prepared before you open a conversation. This reduces waiting and keeps you in control of what gets sent.</p>
<p><strong>What’s new</strong></p>
<ul>
<li><strong>Suggestions are generated automatically:</strong> a draft reply is prepared in the background as soon as a new message arrives.</li>
<li><strong>Updated suggestion layout:</strong> a redesigned suggestion card makes it easier to review, edit, and send suggested replies.</li>
<li><strong>Faster review and sending:</strong> you can use the suggestion as-is or adjust the wording before sending.</li>
<li><strong>You stay in control:</strong> suggestions are drafts only, and nothing is sent automatically.</li>
</ul>
<p><strong>How it works</strong></p>
<ol>
<li>A new message arrives and Conversations AI prepares a suggested response in the background.</li>
<li>When you open the conversation, the suggested reply is already available.</li>
<li>Review and edit the suggestion if needed.</li>
<li>Send when you’re ready. If a newer message arrives, the suggestion updates to stay relevant.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:18:25.000Z'),
('wp-1123', 'AI Data Extract is now available in Leadli Workflows', 'Workflows now include a native AI-powered action that extracts structured data from unstructured text. AI Data Extract can take raw input such as emails, SMS messages, webhook payloads, or AI outputs, and return clean, typed values that you can use in later workflow steps. To set...', '<p>Workflows now include a native AI-powered action that extracts structured data from unstructured text.</p>
<p>AI Data Extract can take raw input such as emails, SMS messages, webhook payloads, or AI outputs, and return clean, typed values that you can use in later workflow steps.</p>
<p>To set it up, define the fields you want to extract, choose the input source, and optionally provide extra context to improve accuracy.</p>
<h2>Key capabilities</h2>
<ul>
<li><strong>Custom value input:</strong> Select any text-based data in your workflow as the input source.</li>
<li><strong>Optional context:</strong> Add supplementary context to improve extraction for complex or ambiguous inputs.</li>
<li><strong>Templates:</strong> Start from a pre-built template or create your own field set.</li>
<li><strong>Downstream ready:</strong> Extracted fields are saved as workflow variables for use in later actions.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In your workflow, click <strong>+ Add Action</strong>.</li>
<li>Search for <strong>AI Data Extract</strong> in the AI action category.</li>
<li>Select the input source (for example: email body or webhook payload).</li>
<li>Optionally add extra context.</li>
<li>Choose a template or define your custom fields.</li>
<li>Save. The extracted fields will be available in downstream actions.</li>
</ol>
<h2>Why this matters</h2>
<p>This makes it easier to turn unstructured text into structured variables directly inside the workflow builder, without manual workarounds or external tools.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-06-01T21:18:06.000Z'),
('wp-1122', 'Test Action for integrations', 'Overview Test Action is a live testing option available on every external app action step in the workflow builder. It lets you confirm your inputs, run the action as a real call against the connected app, and review both the payload that was sent and the provider’s raw response. ...', '<p><strong>Overview</strong></p>
<p>Test Action is a live testing option available on every external app action step in the workflow builder. It lets you confirm your inputs, run the action as a real call against the connected app, and review both the payload that was sent and the provider’s raw response. The response schema can also be used to populate output fields for later workflow steps.</p>
<p><strong>What’s new</strong></p>
<ul>
<li>A Test Action button on every external app action step.</li>
<li>Run Test Action from the action configuration panel.</li>
</ul>
<p><strong>Live test execution</strong></p>
<ul>
<li>Runs the action against the connected app as a real API call, using the resolved values from the builder.</li>
<li>Applies workflow variables, custom values, and transformations the same way they run in production.</li>
<li>Uses the same connected account the workflow will use when it runs.</li>
<li>Shows side-by-side “Data In” (the resolved inputs) and “Data Out” (the raw JSON response).</li>
</ul>
<p><strong>How it works</strong></p>
<ul>
<li>Configure the action: choose the integration, select the action, and map the inputs.</li>
<li>If the action depends on values produced by previous workflow steps, those values must be resolvable before Test Action can run.</li>
<li>Click Test Action to open the test drawer and run the live call.</li>
<li>Review the results in Data In and Data Out.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:17:51.000Z'),
('wp-1121', 'Reviews AI supports Facebook review replies', 'Reviews AI now supports replies for Facebook reviews in both assisted and automatic modes. You can use AI to reply to Facebook reviews from Reputation Management. This helps teams respond faster, keep messaging consistent, and manage engagement across Google and Facebook. What’s ...', '<p><strong>Reviews AI now supports replies for Facebook reviews in both assisted and automatic modes.</strong></p>
<p>You can use AI to reply to Facebook reviews from Reputation Management. This helps teams respond faster, keep messaging consistent, and manage engagement across Google and Facebook.</p>
<h3>What’s new</h3>
<h4>AI reply for Facebook reviews (assisted)</h4>
<ul>
<li>Generate AI-assisted replies for Facebook reviews from the Reviews page.</li>
<li>Review, edit, and send the suggested reply manually.</li>
</ul>
<h4>Automatic responses for Facebook reviews</h4>
<ul>
<li>Reviews AI Agents can automatically respond to Facebook reviews based on rules you configure.</li>
<li>After you create an agent, it can respond to matching reviews automatically to improve coverage and reduce manual work.</li>
</ul>
<h4>Select which Facebook pages to use</h4>
<p>When creating or editing an AI Agent, you can choose which Facebook pages should receive automated replies.</p>
<p>Supported review source options include:</p>
<ul>
<li>All sources</li>
<li>All Google pages</li>
<li>All Facebook pages</li>
</ul>
<h4>Agent rules and settings</h4>
<p>Facebook auto responses support existing agent settings, including:</p>
<ul>
<li>Review type or rating conditions</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;