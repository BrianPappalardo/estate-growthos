INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>Why it matters</h2>
<ul>
<li>Migrate your CRM data faster</li>
<li>Preserve supported pipelines and stages</li>
<li>Bring over important custom fields and activity</li>
<li>Choose exactly what you want to import</li>
<li>Quickly identify and resolve import errors</li>
<li>Reduce manual work when moving from HubSpot</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Existing matching records are not overwritten.</li>
<li>Imported HubSpot emails are read-only.</li>
<li>Deals require associated contacts to be imported as opportunities.</li>
<li>We recommend testing your import in a new or non-production sub-account first.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-13T13:31:04.000Z'),
('wp-1327', 'New Review Received trigger supports all connected review platforms', 'Overview The New Review Received workflow trigger now supports reviews from all review platforms connected to your account. Previously, the trigger was limited to Google Reviews and Facebook Reviews. Now it can also trigger workflows from platforms such as Trustpilot, Yelp, TripA...', '<p><strong>Overview</strong></p>
<p>The <strong>New Review Received</strong> workflow trigger now supports reviews from all review platforms connected to your account.</p>
<p>Previously, the trigger was limited to Google Reviews and Facebook Reviews. Now it can also trigger workflows from platforms such as Trustpilot, Yelp, TripAdvisor, and other supported review sources.</p>
<p><strong>How you can use it</strong></p>
<p>Many businesses collect reviews across multiple platforms, not just Google and Facebook. With this update, reviews from any connected platform can start a workflow, so teams do not need to manually watch each site.</p>
<p><strong>What&#8217;s new</strong></p>
<ul>
<li>Support for all connected review platforms (not limited to Google and Facebook)</li>
<li>Workflows can respond to reviews regardless of which connected platform they come from</li>
<li>No changes to existing workflows that already use Google or Facebook review triggers</li>
</ul>
<p><strong>Why it matters</strong></p>
<ol>
<li>Automation coverage across your full review ecosystem</li>
<li>Less manual monitoring of third-party review platforms</li>
<li>Faster and more consistent follow-up, regardless of where customers leave reviews</li>
<li>More value from your existing review integrations by connecting them directly to workflow automation</li>
</ol>
<p>If you have feedback, contact us and let us know.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-13T11:23:04.000Z'),
('wp-1323', 'Documents uploaded from notes are now private by default', 'Overview This update improves document privacy and access controls across Leadli, with HIPAA compliance in mind. Documents uploaded as attachments through the Notes section are now private by default, giving you more control over how sensitive information is accessed and shared. ...', '<p><strong>Overview</strong></p>
<p>This update improves document privacy and access controls across Leadli, with HIPAA compliance in mind. Documents uploaded as attachments through the Notes section are now private by default, giving you more control over how sensitive information is accessed and shared.</p>
<p>Previously, documents uploaded through Notes were public and could be shared without expiration or additional privacy controls. With this change, newly uploaded documents start private, and you can choose how to share them when needed.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>New note attachments are private by default</strong>: Any new document uploaded through the Notes section is stored in the <strong>&#8220;Notes attachments&#8221;</strong> folder under Documents and is private by default.</li>
<li><strong>More control when sharing</strong>: When sharing a document, you can choose the access level that fits your needs (public link, private link, OTP-protected link, or password-protected link).</li>
<li><strong>Existing documents are unchanged</strong>: This applies only to documents uploaded through Notes after this feature is released. Documents uploaded previously will keep their current privacy status.</li>
<li><strong>Secure sharing for existing documents</strong>: For older documents, you can still generate and share a private link when additional access control is needed.</li>
</ol>
<p><strong>What’s next</strong></p>
<p>We’re continuing to expand privacy and data controls for documents across Leadli. In a future phase, these privacy and access controls will also apply to document attachments shared through custom fields, for a more consistent and secure sharing experience.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T17:13:02.000Z'),
('wp-1322', 'Widget trend colors: choose whether an increase or decrease is positive', 'This update adds a setting that controls whether an increase or decrease in a widget metric is treated as positive (green) or negative (red). In dashboards and custom reports, number widgets display a trend badge with the percent change. You can now set the trend color behavior s...', '<p>This update adds a setting that controls whether an increase or decrease in a widget metric is treated as positive (green) or negative (red).</p>
<p>In dashboards and custom reports, number widgets display a trend badge with the percent change. You can now set the trend color behavior so it matches the meaning of the metric. For example, a lower unsubscribe rate or bounce rate can be treated as positive, while a lower delivered-email count can be treated as negative.</p>
<p>This setting applies to Number, Line, and Bar widgets when a comparison date range is enabled.</p>
<h3>How to set it</h3>
<ol>
<li>Open the widget’s Configure panel.</li>
<li>Under Advanced settings, set a date range override and a comparison date range.</li>
<li>Choose whether “Increase is positive” (default) or “Decrease is positive” for that metric.</li>
<li>Save. The trend badge color updates across the widget.</li>
</ol>
<h3>Notes</h3>
<ul>
<li>Existing widgets keep the default behavior until you change this setting.</li>
<li>The setting lives in the widget Configure panel and works the same across chart types.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T14:15:31.000Z'),
('wp-1130', 'Prospect AI: major improvements now available', 'Prospect AI has received a major upgrade. What started as an automated lead finder is now a more capable prospecting engine with more control over how leads are discovered, when agents run, and how prospects are enriched and managed. Multiple agents and higher lead limits You can...', '<p>Prospect AI has received a major upgrade. What started as an automated lead finder is now a more capable prospecting engine with more control over how leads are discovered, when agents run, and how prospects are enriched and managed.</p>
<h2>Multiple agents and higher lead limits</h2>
<p>You can now create multiple Prospect AI agents, each targeting a different niche, location, or strategy.</p>
<ul>
<li>Example: Agent Alex (Dentists in Dallas)</li>
<li>Example: Agent Sarah (HVAC contractors in Austin)</li>
<li>Example: Agent Mike (Roofers in Houston)</li>
</ul>
<p>Each agent can have its own niches, locations, search radius, prospect filters, audit preferences, and lead enrichment settings. Monthly limits have also increased compared to earlier usage levels. Limits are applied per account, not per agent.</p>
<h2>Improved weekly scheduling</h2>
<p>Agents now start sooner. If the selected schedule day has not passed yet, the agent can run during the current week instead of waiting for the next cycle.</p>
<p>Note: If the scheduled run is within the next 24-36 hours, the first run may be pushed to the following cycle due to processing windows.</p>
<h2>Improved monthly scheduling</h2>
<p>Monthly schedules now behave more naturally. If the selected week has not passed yet, Prospect AI can run during the current month instead of waiting until the next month.</p>
<h2>Monthly lead allocation across agents</h2>
<p>Lead allocation is easier to manage with clearer indicators and real-time visibility into total monthly allowance, leads assigned to other agents, leads allocated to the current agent, and remaining capacity.</p>
<h2>Audit and enrichment controls</h2>
<p>You can choose which Marketing Audit sections are generated automatically for new prospects.</p>
<h2>Option to automatically create contacts (sub-accounts)</h2>
<p>For sub-account prospecting, you can choose whether Prospect AI should create a Contact automatically when a new prospect is found, or create the prospect without creating CRM records.</p>
<h2>Why this matters</h2>
<p>These updates help you build an AI-powered prospecting process that runs in the background to continuously discover new opportunities.</p>
<h2>Coming next</h2>
<ul>
<li>Automatic opportunity creation in your sub-account pipeline when new prospects are discovered</li>
<li>Run history and logs (last run, number of prospects found, status, and detailed execution logs)</li>
<li>Personalized outreach drafts (for example, email drafts tailored to audit findings and business needs)</li>
<li>Workflow trigger source filtering for each agent</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:57:02.000Z'),
('wp-1129', 'Publish LinkedIn poll posts from Social Planner', 'You can now create, schedule, and publish LinkedIn poll posts directly from Social Planner in Leadli. What’s new Create LinkedIn polls directly from the Social Planner composer Add a poll question (up to 140 characters) Add 2 to 4 answer options (up to 30 characters each) Set the...', '<p>You can now create, schedule, and publish LinkedIn poll posts directly from Social Planner in Leadli.</p>
<h3>What’s new</h3>
<ul>
<li>Create LinkedIn polls directly from the Social Planner composer</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;