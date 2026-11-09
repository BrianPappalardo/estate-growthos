INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Confirm usage rights when prompted.</li>
<li>The image is added to your current Media Storage folder.</li>
</ol>
<p>This makes it faster to bring in assets from CDNs, shared image links, stock photo libraries, and other public sources without extra download-and-upload steps.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1147', 'Sync community membership questions to CRM custom fields', 'Overview You can link community membership questions directly to CRM custom fields. When someone joins a community and answers the membership questions, their answers are saved to the matching CRM contact record automatically. Why it matters This keeps contact records up to date ...', '<p><strong>Overview</strong></p>
<p>You can link community membership questions directly to CRM custom fields.</p>
<p>When someone joins a community and answers the membership questions, their answers are saved to the matching CRM contact record automatically.</p>
<p><strong>Why it matters</strong></p>
<p>This keeps contact records up to date and lets you use the collected answers in approvals, workflows, and automations without manual data entry.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Go to <strong>Community Settings</strong> → <strong>Membership Questions</strong>.</li>
<li>Select <strong>Add Question</strong>.</li>
<li>Open the <strong>Custom Fields</strong> tab.</li>
<li>Choose the CRM custom field you want to connect.</li>
<li>Select <strong>Save</strong>.</li>
</ul>
<p>After a member submits their answers, the linked CRM custom fields are updated automatically. You can review the submitted answers in the contact details under the selected custom field folder.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1146', 'Customer Replied Trigger: Clearer Message Filters', 'Summary Leadli has improved message filtering for the Customer Replied trigger by adding a new attachment filter and consolidating message text matching into a single option. What changed Has Attachments : A new filter with Yes / No values. Message Body : A single filter that cov...', '<p><strong>Summary</strong></p>
<p>Leadli has improved message filtering for the Customer Replied trigger by adding a new attachment filter and consolidating message text matching into a single option.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Has Attachments</strong>: A new filter with <em>Yes</em>/<em>No</em> values.</li>
<li><strong>Message Body</strong>: A single filter that covers contains, does not contain, exact match, empty, and not empty conditions.</li>
</ul>
<p><strong>How it works</strong></p>
<p>Use <strong>Has Attachments</strong> to check whether an incoming message includes files. Use <strong>Message Body</strong> to route or qualify messages based on the text in the message.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Open your workflow and edit the message filter settings.</li>
<li>Select <strong>Has Attachments</strong> or <strong>Message Body</strong>.</li>
<li>Choose a condition and enter the value you want to match.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Existing workflows that used older “contains phrase” or “exact match phrase” options will continue to run as before.</li>
<li>This update is designed to make message routing clearer without changing existing behavior.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1145', 'Goal Event update: support for task status goals', 'Summary The Goal Event action now supports Task Status as a goal type. You can use both Task Created and Task Completed to move a contact into a goal branch when a related task is created or marked complete. How it works In the Goal Event action, select Task Status , choose Task ...', '<p><strong>Summary</strong></p>
<p>The Goal Event action now supports <strong>Task Status</strong> as a goal type. You can use both <strong>Task Created</strong> and <strong>Task Completed</strong> to move a contact into a goal branch when a related task is created or marked complete.</p>
<p><strong>How it works</strong></p>
<p>In the Goal Event action, select <strong>Task Status</strong>, choose <strong>Task Created</strong> or <strong>Task Completed</strong>, and then apply filters using the same options available in the task-based workflow trigger.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add or edit a Goal Event action in a workflow.</li>
<li>Select <strong>Task Status</strong> as the goal type.</li>
<li>Choose <strong>Task Created</strong> or <strong>Task Completed</strong>, then apply any needed task filters.</li>
</ul>
<p><strong>Why this change was made</strong></p>
<p>Task lifecycle events were available as workflow triggers, but not as goals. This update makes it possible to route contacts based on task progress without adding extra workflow steps.</p>
<p><strong>Example</strong></p>
<p>If a consulting agency creates a CRM task from a form submission, the contact can be pulled into the goal branch when the assigned onboarding task is marked <strong>Task Completed</strong>, and then receive the next onboarding email.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>Uses the Task Created / Task Completed event types.</li>
<li>Tasks can be filtered by name or assignee.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1144', 'Create dynamic email variants with Spintax', 'You can now use Spintax in Leadli to create multiple variations of words, phrases, or full sentences in a single email template. When an email is sent, one variation is selected automatically. What’s new Add variations inside curly braces after SPIN , and separate each option wit...', '<p>You can now use Spintax in Leadli to create multiple variations of words, phrases, or full sentences in a single email template. When an email is sent, one variation is selected automatically.</p>
<h3>What’s new</h3>
<p>Add variations inside curly braces after <code>SPIN</code>, and separate each option with a pipe <code>|</code>.</p>
<p><strong>Example:</strong></p>
<p><code>{SPIN|Hey|Hello|Hi} there!</code></p>
<p>A recipient will see one of the options (for example, “Hey there!” or “Hello there!” or “Hi there!”).</p>
<p>Spintax can also be used in subject lines, preview text, and the email body. It supports nested Custom Values within variations.</p>
<h3>Impact</h3>
<ol>
<li>Helps reduce repeated content in cold email campaigns and supports deliverability best practices.</li>
<li>Reduces repetitive content across large outreach sequences.</li>
<li>Lets you test different messaging approaches without maintaining multiple A/B versions.</li>
<li>Brings this capability in line with common cold outreach tools.</li>
</ol>
<h3>How to use</h3>
<ol>
<li>Open the email builder.</li>
<li>Add your variations using the <code>{SPIN|...}</code> format.</li>
<li>Save your message or template.</li>
<li>When the message is sent, one option is chosen at random.</li>
</ol>
<p><strong>Example with a contact field:</strong></p>
<p><code>{SPIN|Hey|Hello|Hi} </code></p>
<p>Help article: <a href="https://help.leadli.com/a/solutions/articles/155000008067?portalId=48000045315" rel="ugc nofollow noopener noreferrer" target="_blank">https://help.leadli.com/a/solutions/articles/155000008067?portalId=48000045315</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1143', 'New templates and snapshot updates in Leadli', 'We have added new templates to help you build websites, funnels, forms, surveys, and campaigns more quickly. These templates are customizable and designed to keep your setup consistent and easier to manage. New templates Website templates: 2 new templates (Medical) Email template...', '<p>We have added new templates to help you build websites, funnels, forms, surveys, and campaigns more quickly. These templates are customizable and designed to keep your setup consistent and easier to manage.</p>
<h3>New templates</h3>
<ul>
<li><strong>Website templates:</strong> 2 new templates (Medical)</li>
<li><strong>Email templates:</strong> 1 new template (Medical)</li>
<li><strong>Form templates:</strong> 1 new template (Health &amp; Wellness)</li>
<li><strong>Survey templates:</strong> 1 new template (Marketing Agency)</li>
<li><strong>Social templates:</strong> 4 new templates (Medical: 2, Marketing Agency: 2)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Other: Retirement; Travel &amp; Hospitality: Travel Consultant)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Other: Lock And Key Service; Medical: Chiropractic Care; Marketing Agency: Marketing Consultancy; Legal: Family Law Attorney; Insurance: Insurance Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Business Coaching &amp; Consulting: Business Coach; Creative: Video Production &amp; Editing; Insurance: Travel Insurance; Marketing Agency: Product Reviews; Real Estate: Residential Architect)</li>
</ul>
<h3>Enhanced snapshot</h3>
<p>One snapshot has been updated with a redesigned website and matching funnel, forms, and email templates to provide a more consistent experience. Updates also include improved emails, an optimized pipeline, clearer workflow naming, and a new Facebook ad.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;