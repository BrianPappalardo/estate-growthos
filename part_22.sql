INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Identify common issues such as Outlook rendering problems and dark-mode inconsistencies.</li>
<li>View the estimated email size and get a warning if Gmail may clip the message.</li>
<li>After edits, you can see which previews need to be refreshed so you are not reviewing an older version.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>Settings &gt; Labs</strong> and enable <strong>Inbox Preview</strong>.</li>
<li>Open an email in the email builder (or the AI editor).</li>
<li>Click <strong>Inbox preview</strong> in the toolbar, or open it from <strong>Preview &amp; test</strong>.</li>
<li>Select the email clients you want to test.</li>
<li>Click <strong>Preview email</strong>, then review each client as results load.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Improve email consistency across inboxes.</li>
<li>Reduce rendering issues before campaigns go out.</li>
<li>Ship higher-quality emails with less manual testing.</li>
</ul>
<h2>Availability</h2>
<p>This is available in the email builder and AI editor after it is enabled in Labs.</p>
<h2>Good to know</h2>
<ul>
<li>Each sub-account has a set number of inbox previews. Failed previews are not counted, so you can retry.</li>
<li>Help article: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009111-inbox-preview" target="_blank" rel="ugc nofollow noopener noreferrer">Inbox Preview help article</a></li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T17:43:20.000Z'),
('wp-1628', 'AI Builder can now configure workflows using your account data', 'Leadli AI Builder for Workflows can now do more than generate a workflow outline. When you include the names of items that already exist in your account (forms, pipelines, stages, snippets, tags, users, and more), it will look them up and apply them while building the workflow. W...', '<p>Leadli AI Builder for Workflows can now do more than generate a workflow outline. When you include the names of items that already exist in your account (forms, pipelines, stages, snippets, tags, users, and more), it will look them up and apply them while building the workflow.</p>
<h2>What changed</h2>
<ul>
<li>AI Builder can now select the exact form, pipeline, stage, snippet, tag, user, or workflow you mention in your prompt.</li>
<li>This reduces the need to open each step to pick values after the workflow is created.</li>
</ul>
<h2>What you will see during the build</h2>
<ul>
<li>A progress view showing which records were found (for example: &#8220;Found form&#8221; or &#8220;Found pipeline&#8221;).</li>
</ul>
<h2>Examples of steps that can be configured</h2>
<ul>
<li>Form Submitted: sets the trigger filter to the form you named.</li>
<li>Create Opportunity: sets the pipeline and stage from your account.</li>
<li>Send Email: uses your existing snippet for the subject and body.</li>
<li>Add Tag: selects an existing tag instead of creating a duplicate.</li>
<li>Create Task: assigns the task to the user you named.</li>
<li>Add to Workflow: links to the workflow you named.</li>
<li>Update Contact Field: updates the custom field you named.</li>
</ul>
<h2>Supported record types</h2>
<p>AI Builder can reference many items you already use, including workflows, campaigns, users, teams, tags, trigger links, countries, phone numbers, pipelines and stages, opportunity custom fields, calendars and services, forms, surveys, funnels, videos, products and memberships, custom objects and fields, templates, and social pages.</p>
<h2>How to use it</h2>
<ol>
<li>Go to Automation &gt; Workflows.</li>
<li>Create a workflow (or open an existing one) and open AI Builder.</li>
<li>Write your prompt and include record names exactly as they appear in your account (for example: &#8220;Pipeline: Marketing, Stage: New Lead&#8221;).</li>
<li>Send the prompt, then review the values that were set.</li>
<li>Test the workflow and publish when ready.</li>
</ol>
<p><strong>Note:</strong> Review each step before publishing. If the wrong record was selected, update it in the step or ask AI Builder to change it.</p>
<h2>Why this matters</h2>
<ul>
<li>Less manual setup after the workflow is generated.</li>
<li>Fewer mistakes caused by selecting the wrong record or creating duplicates.</li>
<li>A workflow that is closer to ready for testing.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>AI Builder can only use records that already exist in your account.</li>
<li>Some settings may still require your input, such as credentials.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T17:22:33.000Z'),
('wp-1627', 'Test workflows step by step with real events', 'You can now test a workflow trigger or a single action using a real event from your account. You can also run the full workflow step by step and review inputs and outputs as you go. This feature is available in Leadli Labs. What’s new Test a trigger with a real event: Open the Te...', '<p>You can now test a workflow trigger or a single action using a real event from your account. You can also run the full workflow step by step and review inputs and outputs as you go. This feature is available in Leadli Labs.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Test a trigger with a real event:</strong> Open the Test tab on a trigger, turn on <em>Listen for events</em>, then perform the action that fires the trigger (for example, submit a form). When the event appears, click <em>Test Trigger</em> to pin that event for the steps that follow.</li>
<li><strong>Test one action at a time:</strong> Open the Test tab on an action to view the input built from the pinned event, then click <em>Test action</em>. The output will show the response (for example, a message body or a newly created record ID) that later steps can reference.</li>
<li><strong>Run the full workflow and watch results live:</strong> Click <em>Test workflow</em>, choose the trigger and event, then start the test run. Each step will show whether it succeeded, failed, or was skipped, and you can open any step to review its input and output.</li>
<li><strong>History and retry:</strong> Use the History tab to review prior test runs. If a step fails, you can retry the run using the same trigger data and action configuration.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open Leadli Labs and enable “The New Test Workflow”.</li>
<li>Go to <em>Automation &gt; Workflows</em> and open a workflow.</li>
<li>Select the trigger, open the Test tab, and choose testing with events.</li>
<li>Turn on <em>Listen for events</em>, then fire the trigger once.</li>
<li>Select the event and click <em>Test Trigger</em>.</li>
<li>(Optional) Select an action, open its Test tab, and click <em>Test action</em>.</li>
<li>Click <em>Test workflow</em>, select the trigger and event, then start the test run.</li>
<li>Review each step’s result, then save and publish your workflow.</li>
</ol>
<p><strong>Important:</strong> Tests run real steps. Messages can be sent and records can be created or updated. Use test details when you do not want to affect real customers.</p>
<h2>Why this matters</h2>
<p>This makes it easier to confirm that each step works before publishing, and to identify exactly where a workflow fails.</p>
<ul>
<li><strong>More confidence when publishing:</strong> You can verify steps with real trigger data before going live.</li>
<li><strong>Faster troubleshooting:</strong> The failing step shows its own input and output, and you can retry using the same data.</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Listening for events lasts 15 minutes. Turn it on again if your event does not arrive in time.</li>
<li>Test the trigger before testing an action. Action tests use the event pinned by the trigger test.</li>
<li>Testing is optional. You can save and publish without testing.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;