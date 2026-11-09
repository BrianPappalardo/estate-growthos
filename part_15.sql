INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1651', 'Subagents for Managed Agents', 'Managed Agents can now split complex work into smaller tasks and run them in parallel using subagents. What this adds Task delegation: The main agent can create subagents based on task complexity, assign each subagent a focused responsibility, and coordinate the combined result. ...', '<p>Managed Agents can now split complex work into smaller tasks and run them in parallel using subagents.</p>
<h3>What this adds</h3>
<ul>
<li><strong>Task delegation:</strong> The main agent can create subagents based on task complexity, assign each subagent a focused responsibility, and coordinate the combined result.</li>
<li><strong>Faster execution:</strong> Independent tasks can run at the same time instead of waiting in sequence.</li>
<li><strong>Cost efficiency:</strong> Subagents work with smaller, task-specific context while the main agent manages planning and review.</li>
<li><strong>Visibility:</strong> You can review subagent activity, including steps taken, results, and any changes made.</li>
<li><strong>Security controls:</strong> Subagents can be limited to only the tools and permissions required for their assigned tasks. Read-only subagents cannot modify records, and the main agent reviews generated messages before sending.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Go to <strong>AI Agents</strong> and open <strong>Agent Studio</strong>.</li>
<li>Create or open a Managed Agent.</li>
<li>Describe the task you want it to perform. The builder will determine whether subagents are needed and set them up.</li>
<li>Optionally request it directly (for example: “Split this task into subagents”).</li>
<li>Run the agent and review subagent activity in the logs.</li>
</ol>
<h3>Example</h3>
<p>Prompt: “Every Monday, identify opportunities that haven’t progressed in the last 14 days, check their recent conversations, and create follow-up tasks for the assigned owners.”</p>
<p>The Managed Agent can delegate this to subagents focused on opportunities, conversations, and task creation, then provide one consolidated summary.</p>
<h3>Why this matters</h3>
<ul>
<li>Break large jobs into manageable parts.</li>
<li>Improve speed by running independent work in parallel.</li>
<li>Reduce unnecessary context usage for complex workflows.</li>
<li>Increase reliability by keeping responsibilities focused.</li>
<li>Maintain transparency through activity and agent logs.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T11:15:18.000Z'),
('wp-1650', 'New: Import n8n workflows into Leadli Managed Agents (beta)', 'You can now import existing n8n automations into Leadli Managed Agents without rebuilding them from scratch. Upload an n8n workflow JSON export, and Leadli will review the steps and convert the workflow into a Managed Agent that you can edit before publishing. What’s included Imp...', '<p>You can now import existing n8n automations into Leadli Managed Agents without rebuilding them from scratch.</p>
<p>Upload an n8n workflow JSON export, and Leadli will review the steps and convert the workflow into a Managed Agent that you can edit before publishing.</p>
<h2>What’s included</h2>
<ul>
<li><strong>Import n8n workflows:</strong> Upload a .json export file or paste the JSON directly.</li>
<li><strong>Workflow conversion:</strong> Common triggers and steps are mapped to supported Leadli triggers and actions.</li>
<li><strong>Conversion review:</strong> Steps are labeled as carried over, adapted, or not possible so you can see what changed.</li>
<li><strong>Draft or publish:</strong> Save the imported agent as a draft, or publish after required setup is complete.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong>.</li>
<li>Select <strong>Import from</strong> → <strong>n8n (Beta)</strong>.</li>
<li>Upload your n8n workflow JSON or paste the JSON.</li>
<li>Review the converted workflow and complete any required configuration.</li>
<li>Save as draft or create and publish.</li>
</ol>
<h2>Notes on security and reliability</h2>
<ul>
<li>No agents are created until you explicitly save or publish.</li>
<li>Existing n8n credentials and API keys are not imported.</li>
<li>External IDs and configuration values are flagged for verification.</li>
<li>Unsupported steps are highlighted instead of being skipped.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T11:15:03.000Z'),
('wp-1649', 'New unified workspace for Managed Agents', 'Managed Agents in Agent Studio has been redesigned so you can build, test, manage, and publish agents from a single workspace. What’s included All-in-one workspace: Browse and switch agents, test conversations, and update settings in one place. Easier discovery and organization: ...', '<p>Managed Agents in Agent Studio has been redesigned so you can build, test, manage, and publish agents from a single workspace.</p>
<h2>What’s included</h2>
<ul>
<li><strong>All-in-one workspace:</strong> Browse and switch agents, test conversations, and update settings in one place.</li>
<li><strong>Easier discovery and organization:</strong> Search by name, use folders, sort agents, and quickly see draft vs. published status.</li>
<li><strong>Chat, test, and debug:</strong> Start new conversations, continue past threads, and review execution details without leaving the workspace.</li>
<li><strong>Simpler configuration:</strong> Update agent details, manage publishing, and access advanced options with fewer clicks.</li>
<li><strong>Better activity visibility:</strong> Monitor conversations, review items that need attention, and inspect agent logs.</li>
<li><strong>Faster setup:</strong> Create agents using natural-language instructions and start from suggested prompts and templates.</li>
</ul>
<h2>How to get started</h2>
<ol>
<li>In your Leadli account, open <strong>Labs</strong>.</li>
<li>Enable <strong>Managed Agents New UI</strong>.</li>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong> → <strong>Managed Agents</strong>.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Less switching between screens.</li>
<li>Faster testing and troubleshooting.</li>
<li>Clearer visibility into activity and execution details.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-28T11:11:09.000Z'),
('wp-1648', 'Computer for Managed Agents is now available', 'Managed Agents can now use Computer to browse websites, create files, run code, and complete more complex tasks beyond your CRM. With Computer enabled, an agent can work across websites, documents, and data in a single conversation. Recent updates also improve speed, parallel exe...', '<p>Managed Agents can now use Computer to browse websites, create files, run code, and complete more complex tasks beyond your CRM.</p>
<p>With Computer enabled, an agent can work across websites, documents, and data in a single conversation. Recent updates also improve speed, parallel execution, security, and overall usability.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Browser automation</strong>: Research information, interact with web apps, click buttons, fill forms, and complete multi-step tasks. You can watch in real time and take control when needed.</li>
<li><strong>File creation and management</strong>: Create, read, edit, and export documents, spreadsheets, reports, and other files. Reuse files across conversations with a persistent workspace.</li>
<li><strong>Terminal and code execution</strong>: Run scripts and terminal commands to process datasets, perform calculations, and automate multi-step work that combines browsing and files.</li>
<li><strong>Dedicated computer and parallel execution</strong>: Each Managed Agent has its own computer environment and can run multiple browser conversations in parallel, each in its own tab.</li>
<li><strong>Secure sign-ins and approval controls</strong>: Website credentials can be stored in Leadli Keychain. Agents request approval for sensitive actions such as payments, sending messages, submitting forms, and deleting files.</li>
<li><strong>Updated interface and take-control experience</strong>: Easier navigation, smoother interactions, and better visibility into ongoing browser activity.</li>
</ul>
<h3>Examples of what you can do</h3>
<ul>
<li>Competitor research: Compare pricing and produce a simple comparison spreadsheet.</li>
<li>CRM administration: Navigate Leadli to create workflows, configure settings, and manage agents.</li>
<li>Lead generation: Research prospects and add leads to your CRM.</li>
<li>Document creation: Generate reports, presentations, and spreadsheets.</li>
<li>Data analysis: Run scripts to analyze datasets and summarize results.</li>
<li>Website tasks: Fill forms and complete repetitive actions inside web apps.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Go to <strong>AI Agents</strong> → <strong>Agent Studio</strong> → <strong>Managed Agents</strong>.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;