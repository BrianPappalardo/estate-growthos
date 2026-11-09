INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Go to <strong>Memberships → Client Portal → Settings → App Permissions</strong>.</li>
<li>Enable <strong>Appointments</strong>.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
<p><strong>Availability:</strong> Service Booking is available in the new Client Portal.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-10-29T15:31:27.000Z'),
('wp-1669', 'Test workflows directly in Leadli AI Builder', 'Leadli AI Builder can now run a real test of the workflow it just created or edited. You can start the test from the same chat and see the results on the canvas and in the chat. What’s new Test workflow from the chat : After AI Builder builds or edits a workflow, select Test work...', '<p>Leadli AI Builder can now run a real test of the workflow it just created or edited. You can start the test from the same chat and see the results on the canvas and in the chat.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Test workflow from the chat</strong>: After AI Builder builds or edits a workflow, select <em>Test workflow</em> to open the test panel.</li>
<li><strong>Watch the run live</strong>: Start the test run to see each step update on the canvas (Running, Success, Skipped, End) while the chat logs the steps that ran.</li>
<li><strong>Readable summary</strong>: When the run finishes, AI Builder summarizes what ran, what was skipped, and any missing data or errors.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open Leadli Labs and enable <strong>The New Test Workflow</strong>.</li>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a workflow.</li>
<li>Open <strong>AI Builder</strong> and describe the workflow you want to build or the change you want to make.</li>
<li>When AI Builder finishes, click <strong>Test workflow</strong>.</li>
<li>Choose <strong>Enroll a contact</strong> (and pick a contact) or choose <strong>Test using events</strong>.</li>
<li>Click <strong>Start test run</strong>.</li>
<li>Review the summary, and click any step on the canvas to see its input and output.</li>
<li>Save and publish your workflow when you’re ready.</li>
</ol>
<p><strong>Important:</strong> The test runs real actions (for example, tags can be added, notes can be created, and messages can be sent). Use a test contact when you don’t want to affect a real customer.</p>
<h2>Why this matters</h2>
<p>This makes it easier to confirm your workflow works as expected without leaving the AI Builder chat or digging through execution logs.</p>
<h2>Good to know</h2>
<ul>
<li>Some actions may be skipped during a test run; the summary and canvas show what happened.</li>
<li>Testing is optional—you can still save and publish without running a test.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T14:33:26.000Z'),
('wp-1668', 'Web search is now available in the Leadli AI Agent action', 'You can now let your Leadli AI Agent search the web during a run. Enable Web search in the Built-in tools section, and the agent will look up information when it needs it. If you prefer, you can also provide specific URLs in your instructions so the agent can use those sources fi...', '<p>You can now let your Leadli AI Agent search the web during a run. Enable Web search in the Built-in tools section, and the agent will look up information when it needs it. If you prefer, you can also provide specific URLs in your instructions so the agent can use those sources first.</p>
<h2>What’s included</h2>
<h3>Built-in tools section</h3>
<ul>
<li>Built-in tools appears below Tools in the AI Agent action.</li>
<li>These are abilities the agent has by default, in addition to the tools you add to the action.</li>
</ul>
<h3>Web search</h3>
<ul>
<li>One toggle: Turn on Web search to allow the agent to search the web during a run.</li>
<li>Search only when needed: The agent uses web search when it needs information it does not already have.</li>
<li>Your sources: Add a URL to your Instructions, and the agent can refer to that page when relevant.</li>
<li>Mix and match: Provide trusted pages and allow web search for anything else.</li>
</ul>
<h3>More built-in tools</h3>
<p>Additional built-in tools will be added over time, including image and video generation.</p>
<h2>Pricing</h2>
<p>Web search is billed per search, in addition to the AI Agent action.</p>
<ul>
<li>OpenAI and Claude models: 1¢ per search</li>
<li>Gemini models: 1.4¢ per search</li>
</ul>
<h2>How to enable Web search</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Open a workflow and add (or open) an AI Agent action.</li>
<li>Open the Built-in tools section.</li>
<li>Turn on Web search.</li>
<li>(Optional) Add trusted URLs to your Instructions.</li>
<li>Save the action.</li>
</ol>
<h2>Example: answering rebate questions from a trusted source</h2>
<p>If leads ask about rebates and the details change often, you can point the agent to a reliable source. For example, you might add this instruction:</p>
<p>“If the lead asks about rebates, read <a href="https://www.energystar.gov/rebate-finder" rel="ugc nofollow noopener noreferrer" target="_blank">https://www.energystar.gov/rebate-finder</a> before you reply. For any other facts you need, search the web.”</p>
<p>This helps keep answers current without manual lookups.</p>
<h2>Notes</h2>
<ul>
<li>Each search is billed. If a run performs three searches, it is billed for three searches.</li>
<li>Web search provides information. To take action (for example, sending a message), the agent still needs the appropriate tools enabled.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-29T13:19:16.000Z'),
('wp-1667', 'AI Video Generation is now available in Leadli Workflows', 'AI Video Generation is now available in Leadli workflows You can now generate a short video directly from a workflow using the AI Video Generation action (under AI Actions). Provide a prompt, and the system generates a video, stores it at a public URL, and returns that URL for th...', '<h2>AI Video Generation is now available in Leadli workflows</h2>
<p>You can now generate a short video directly from a workflow using the <strong>AI Video Generation</strong> action (under AI Actions). Provide a prompt, and the system generates a video, stores it at a public URL, and returns that URL for the next steps in your workflow.</p>
<p><strong>Note:</strong> This is a premium action and each run includes an additional charge.</p>
<h3>Options</h3>
<ul>
<li><strong>Model:</strong> Veo 3.1 Quality or Veo 3.1 Fast</li>
<li><strong>Quality:</strong> Standard (720p) or High (1080p)</li>
<li><strong>Video size:</strong> Landscape (1920×1080) or Portrait (1080×1920)</li>
<li><strong>Length:</strong> 4, 6, or 8 seconds</li>
<li><strong>Audio:</strong> Optional AI-generated audio</li>
<li><strong>Reference images:</strong> Add up to 3 JPG or PNG images (8-second videos are required when using reference images)</li>
</ul>
<h3>Templates and prompts</h3>
<ul>
<li>Write your own prompt or insert data from a contact field, webhook payload, or a previous step</li>
<li>Use Enhance Prompt to expand a short prompt into a more detailed one</li>
<li>Start from a template such as Product Mockups, Social Post, Promo Flyer, or Lifestyle</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add <strong>AI Video Generation</strong> from AI Actions.</li>
<li>Choose your model and quality settings.</li>
<li>Enter your prompt (or insert a custom value).</li>
<li>Optionally add reference images and adjust additional settings (size, duration, audio).</li>
<li>Save the action and use the returned video URL in later steps (email, SMS, custom field, or webhook).</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;