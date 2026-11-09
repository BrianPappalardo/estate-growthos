INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Facebook Lead Ad Auto-Responder</li>
<li>Property Inquiry Follow-Up</li>
<li>Home Valuation Funnel</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Restaurant &amp; Bar: Donut Shop</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1244', 'Targeted edits in the Leadli AI Builder', 'Overview The AI Builder now follows targeted edit instructions more precisely. You can name the specific actions or triggers you want changed, and it will update only those items while leaving the rest of the workflow untouched. You can also apply the same change across multiple ...', '<h2>Overview</h2>
<p>The AI Builder now follows targeted edit instructions more precisely. You can name the specific actions or triggers you want changed, and it will update only those items while leaving the rest of the workflow untouched. You can also apply the same change across multiple actions in one instruction.</p>
<h2>What’s new</h2>
<ul>
<li><strong>More precise scoping:</strong> Specify which actions or triggers to change (all, a set number, or only specific ones) and the AI Builder applies updates only to that set.</li>
<li><strong>Bulk copy updates:</strong> Update email, SMS, or multi-channel message copy across multiple actions in a single pass.</li>
<li><strong>Bulk pipeline stage changes:</strong> Swap pipeline stages across all or selected actions and triggers at once.</li>
<li><strong>Bulk sender identity updates:</strong> Set From Name and From Email across all or selected email actions in one instruction.</li>
<li><strong>Targeted copy editing at scale:</strong> Provide exact copy for a subset of messages (for example, 20 out of 50), and the AI Builder updates only that subset.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open the AI assistant in the sidebar within the workflow builder.</li>
<li>Describe the change and its scope (for example, “Set the From Name to Aviv in all email actions” or “Update the SMS copy in only the first two actions”).</li>
<li>Review the preview, then save.</li>
</ol>
<h2>Why this matters</h2>
<p>Editing effort no longer scales with workflow size. For larger workflows, this reduces manual action-by-action updates and helps ensure changes apply only where intended.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1243', 'Prospect AI now includes an activity center and pipeline integration', 'We updated the Prospect AI experience to make it easier to see what your AI sales agents are doing, what they found, and what is happening in the background. What’s new Updated AI agent cards AI agent cards now show key details at a glance: Total prospects discovered Last success...', '<p>We updated the Prospect AI experience to make it easier to see what your AI sales agents are doing, what they found, and what is happening in the background.</p>
<h2>What’s new</h2>
<h3>Updated AI agent cards</h3>
<p>AI agent cards now show key details at a glance:</p>
<ul>
<li>Total prospects discovered</li>
<li>Last successful run</li>
<li>Next scheduled run</li>
<li>Agent description and specialization</li>
<li>Quick access to view all prospects found by that agent</li>
</ul>
<h3>New agent workspace</h3>
<p>When you open an AI agent, you will now land on a workspace with two views:</p>
<ul>
<li><strong>Summary</strong>: configuration, prospect statistics, criteria, next scheduled run, and a link to discovered prospects</li>
<li><strong>Activity</strong>: complete execution history, previous runs, upcoming schedules, and success/failure logs</li>
</ul>
<h3>Agent activity center</h3>
<p>You can now review what an agent has been doing, including:</p>
<ul>
<li>When it last ran</li>
<li>When it is scheduled to run next</li>
<li>How many prospects were found</li>
<li>Which business categories were discovered</li>
<li>Historical execution logs</li>
</ul>
<p>If no prospects are found, Prospect AI will explain why and suggest changes such as adjusting search radius, conversion score filters, and rating requirements.</p>
<h3>Dashboard metrics and faster navigation</h3>
<p>The Prospect AI dashboard includes quick totals (agents, active agents, prospects discovered, and monthly lead usage) plus search to help you find and manage specific agents.</p>
<h3>Native CRM pipeline integration</h3>
<p>Prospect AI can now place newly discovered prospects directly into your CRM pipeline. When configuring an agent, you can select the pipeline and stage where new prospects should be added.</p>
<h2>Why this matters</h2>
<p>These updates make Prospect AI easier to manage across multiple agents, with clearer visibility into performance and easier ways to review and organize discovered prospects.</p>
<p>If you have feedback or ideas, share them in your ideas portal.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1242', 'Jira integration for Leadli workflows: triggers and actions', 'Leadli workflows now include a native Jira integration. You can trigger automations when Jira issues are created or updated, and you can also take actions in Jira from a workflow. This integration supports common issue lifecycle tasks, including creating and updating issues, link...', '<p>Leadli workflows now include a native Jira integration. You can trigger automations when Jira issues are created or updated, and you can also take actions in Jira from a workflow.</p>
<p>This integration supports common issue lifecycle tasks, including creating and updating issues, linking issues, adding comments and watchers, attaching files, logging work, and moving issues to a sprint.</p>
<p><strong>Triggers (Jira → Workflows)</strong></p>
<ul>
<li>New issue</li>
<li>Updated issue</li>
</ul>
<p><strong>Actions (Workflows → Jira)</strong></p>
<ul>
<li>Discovery</li>
<li>Find users</li>
<li>Find projects</li>
<li>Find issues</li>
<li>Create issue</li>
<li>Update issue</li>
<li>Add comment to issue</li>
<li>Add watcher to issue</li>
<li>Add attachment to issue</li>
<li>Add work log to issue</li>
<li>Link issue</li>
<li>Move issue to sprint</li>
</ul>
<p><strong>Setup</strong></p>
<p>Connect Jira using OAuth, then use the triggers and actions in any workflow.</p>
<p><strong>Steps</strong></p>
<ul>
<li>Open the Workflow Builder and add a Jira trigger or action.</li>
<li>Click <em>Connect your account</em>.</li>
<li>Enter a friendly label (for example, “Engineering Jira” or “Support Jira”) and the email address for the Jira account.</li>
<li>Approve the requested Jira permissions in Atlassian.</li>
<li>Return to the Workflow Builder and confirm the connection shows as connected.</li>
<li>Select the target Jira Cloud site for each step (required for Create issue and used as a filter on triggers).</li>
</ul>
<p><strong>Examples</strong></p>
<ul>
<li><strong>Notify a customer when an issue is resolved:</strong> Updated issue (status = Done) → Find contact → Send a resolution message that includes a fix summary.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;