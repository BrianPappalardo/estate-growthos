INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Fallback:</strong> runs only when no other branch matches.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open an existing workflow (or create a new one).</li>
<li>Add the <strong>Router</strong> action.</li>
<li>For each branch, choose a branch type and set your conditions (if needed).</li>
<li>Add the actions that should run inside each branch.</li>
<li>Drag branches to set the run order (left to right).</li>
<li>Save the action, then test the workflow on a real event before publishing.</li>
</ol>
<h2>Example use case</h2>
<p>If a form lets a lead select multiple services (for example: HVAC, Plumbing, and Electrical), a Router can have one branch per service. When a lead selects multiple services, each matching branch runs so each team can receive the lead and trigger its next steps.</p>
<h2>Good to know</h2>
<ul>
<li>Branches run sequentially (not at the same time).</li>
<li>The Fallback branch runs only when no other branch matches.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:48:07.000Z'),
('wp-1663', 'Loop action is now available in Leadli workflows', 'You can now repeat the same set of workflow actions for each item in a list. The Loop action runs the steps inside it once per item, or once per number in a range. What’s included Loop Over : Choose a list of items or a range of numbers. Use items from earlier steps : Select an a...', '<p>You can now repeat the same set of workflow actions for each item in a list. The <strong>Loop</strong> action runs the steps inside it once per item, or once per number in a range.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Loop Over</strong>: Choose a list of items or a range of numbers.</li>
<li><strong>Use items from earlier steps</strong>: Select an array produced by a previous step (for example, data from an inbound webhook).</li>
<li><strong>Loop Item mapping</strong>: While inside the loop, use <em>Custom values &gt; Loop Item</em> to map fields from the current item into other actions.</li>
<li><strong>Range mode</strong>: Set a start and end number and run the steps that many times.</li>
<li><strong>Execution mode</strong>: Run iterations sequentially, or enable parallel execution when you want multiple iterations to run at the same time.</li>
<li><strong>Iteration results</strong>: The Test view shows the outcome for each iteration and each action inside the loop.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong> and open a workflow.</li>
<li>Click the <strong>+</strong> where the loop should start, then select <strong>Loop</strong>.</li>
<li>Under <strong>Loop Over</strong>, choose <em>A list of items</em> or <em>A range of numbers</em>.</li>
<li>If you chose a list, select the list from a previous step. If you chose a range, enter a start and end number.</li>
<li>Choose whether to run sequentially or enable parallel execution.</li>
<li>Save the action, then add the actions you want to repeat inside the loop container.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Example: one webhook creates multiple records</h2>
<p>If an inbound webhook sends one customer record with a list of services, you can use a loop to create one opportunity, one task, and one note per service item. After a test run, you’ll see one result per item in the Test view.</p>
<h2>Good to know</h2>
<ul>
<li>Only the actions placed inside the loop container repeat.</li>
<li>Range loops do not have list items, so Loop Item fields will be empty. Use the loop counter when you need the current number.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-29T11:42:07.000Z'),
('wp-1662', 'Work with workflows from your AI assistant in Leadli', 'You can now manage your workflows from your AI assistant. The workflows tools in the Leadli MCP server (private beta) let AI tools like Claude, ChatGPT, and Cursor search workflows, review what happened during runs, and help you build and publish workflows. What’s new Find workfl...', '<p>You can now manage your workflows from your AI assistant. The workflows tools in the Leadli MCP server (private beta) let AI tools like Claude, ChatGPT, and Cursor search workflows, review what happened during runs, and help you build and publish workflows.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Find workflows:</strong> Search by name, status, folder, or date.</li>
<li><strong>Read workflows:</strong> View a workflow’s full definition (triggers, steps, branches, and settings).</li>
<li><strong>Build workflows:</strong> Create a workflow from a description. The assistant checks for errors and saves it as a draft.</li>
<li><strong>Update and publish:</strong> Make changes, publish, or set a workflow back to draft.</li>
<li><strong>Delete workflows:</strong> Delete a workflow with an extra confirmation step.</li>
<li><strong>Execution logs:</strong> See who entered a workflow, what happened at each step, and which steps failed (including the error).</li>
<li><strong>Statistics:</strong> Count enrollments, completions, and failures per step by hour, day, or week.</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>Answer “what broke, and for whom?” without manually reviewing logs.</li>
<li>Get a first draft of a workflow by describing what you want it to do.</li>
<li>Check workflow performance from the AI tool you already use.</li>
</ul>
<h2>Example use cases</h2>
<h3>Failure triage</h3>
<p>Ask which steps in the “New Lead Nurture” workflow failed this week. The assistant reviews the logs and lists each failed step with the contact and the error.</p>
<h3>Weekly numbers</h3>
<p>Ask how many contacts entered “Webinar Follow-up” each week this month. The assistant returns one number per week.</p>
<h3>Draft from a description</h3>
<p>Describe a workflow that tags new contacts as <em>webinar-lead</em> and sends a welcome SMS. The assistant checks it for errors and saves a draft for you to review in the builder.</p>
<h2>How to get started</h2>
<ol>
<li>Add the Leadli MCP server to your AI tool.
<ul>
<li>Claude: Settings → Connectors → Add custom connector → <a href="https://services.leadconnectorhq.com/mcp/anthropic/v2" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/anthropic/v2</a></li>
<li>ChatGPT: Developer mode → Plugins/Connectors → add <a href="https://services.leadconnectorhq.com/mcp/openai/v2/" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/openai/v2/</a></li>
<li>Cursor: <a href="https://services.leadconnectorhq.com/mcp/cursor/v2" target="_blank" rel="nofollow noopener noreferrer">https://services.leadconnectorhq.com/mcp/cursor/v2</a></li>
</ul>
</li>
<li>Sign in with your Leadli account, choose the sub-account, and approve workflow permissions.</li>
<li>Start a new chat and ask about your workflows. Documentation: <a href="https://marketplace.leadconnectorhq.com/docs/other/mcp" target="_blank" rel="nofollow noopener noreferrer">https://marketplace.leadconnectorhq.com/docs/other/mcp</a></li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Private beta:</strong> The workflows tools work only in sub-accounts enabled for the Workflows API. Others may see <code>WORKFLOW_API_NOT_ENABLED_FOR_LOCATION</code>. Contact support to join.</li>
<li>New workflows are created as drafts. Publishing is a separate request.</li>
<li>To change a published workflow, it is set to draft first. While it is a draft, its triggers are off and contacts in it are paused.</li>
<li>Each request works in one sub-account. Agency connections that cover multiple sub-accounts are rolling out.</li>
<li>Deleting a workflow is permanent and stops everyone currently in it.</li>
<li>Logs cover up to 30 days per request and can go back 60 days. They show live runs; test runs from the builder are not included.</li>
</ul>
<p>Support article: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009504" target="_blank" rel="nofollow noopener noreferrer">https://help.leadconnectorhq.com/support/solutions/articles/155000009504</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T20:38:30.000Z'),
('wp-1661', 'Workflows API: create, publish, and monitor workflows by API', 'You can now build and manage workflows from your own code. The Workflows API (private beta) lets you create, read, update, publish, and delete workflows, and review execution logs and statistics. What’s included Create workflows: Create a workflow from a complete definition. New ...', '<p>You can now build and manage workflows from your own code. The Workflows API (private beta) lets you create, read, update, publish, and delete workflows, and review execution logs and statistics.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Create workflows:</strong> Create a workflow from a complete definition. New workflows start as drafts.</li>
<li><strong>Read and update workflows:</strong> Fetch any workflow definition, update it, and send it back.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;