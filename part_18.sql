INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>These triggers are available on Premium plans.</li>
<li>The direct message trigger listens for messages sent to the Slack app (bot).</li>
<li>For mention-based triggers, add the Slack app to the channel before using the trigger.</li>
<li>Channel lists include public and private channels that the connected Slack user can see.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T21:00:10.000Z'),
('wp-1640', 'Workflow Maps: Understand and manage automations with the assistant', 'Workflow Maps now includes an assistant that helps you review and manage your automations. You can ask questions, investigate issues, organize your map, and request workflow builds or edits. What’s new You can use an assistant directly inside Workflow Maps to ask questions about ...', '<p>Workflow Maps now includes an assistant that helps you review and manage your automations. You can ask questions, investigate issues, organize your map, and request workflow builds or edits.</p>
<h3>What’s new</h3>
<p>You can use an assistant directly inside Workflow Maps to ask questions about your automations, investigate issues, organize the map, and request workflow builds or edits.</p>
<p>The assistant uses your workflow and map context to help with account-specific questions and actions.</p>
<h3>Why this matters</h3>
<p>Maintaining an account often means searching, opening workflows, reviewing dependencies, and making organizational changes. The assistant lets you describe what you need in plain language and work through it from the map.</p>
<h3>How it works</h3>
<p>Go to <strong>Automation &gt; Workflows &gt; Workflow Maps</strong>, then open <strong>Assistant</strong>.</p>
<ul>
<li><strong>Understand a workflow:</strong> Ask what a selected workflow does, or request a summary of a folder.</li>
<li><strong>Find and investigate:</strong> Locate workflows by name, review issues, or ask about a workflow’s connected assets.</li>
<li><strong>Focus the map:</strong> Ask the assistant to filter or highlight relevant workflows and folders.</li>
<li><strong>Organize your account:</strong> Request folder creation, workflow moves, renaming, or notes.</li>
<li><strong>Build or edit workflows:</strong> Describe the automation you want to create or change. Supported builds and edits run as background jobs.</li>
<li><strong>Review proposed actions:</strong> Review the plan and decide how supported changes are applied.</li>
</ul>
<h3>Common use cases</h3>
<ul>
<li>Explain what this workflow does.</li>
<li>Show only drafts in the Sales folder.</li>
<li>Create a welcome email and SMS workflow.</li>
<li>Move these workflows into an Onboarding folder.</li>
</ul>
<h3>Additional notes</h3>
<ul>
<li>The assistant works within your access permissions.</li>
<li>Actions such as deletion and whole-map rearrangement still require confirmation, including when automatic approval is enabled.</li>
<li>Saved views store filters. They do not save the map’s zoom, position, or layout.</li>
<li>Launch access: Workflow Maps is available only to agency users and agency admins at launch.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-10-27T19:51:21.000Z'),
('wp-1639', 'Verify email addresses during contact imports', 'Leadli now lets you verify email addresses while importing contacts. This helps you identify invalid addresses early, keep your lists cleaner, and support better deliverability. What’s new Verify during import: Enable a checkbox on the last step of the contact import to verify th...', '<p>Leadli now lets you verify email addresses while importing contacts. This helps you identify invalid addresses early, keep your lists cleaner, and support better deliverability.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Verify during import:</strong> Enable a checkbox on the last step of the contact import to verify the contacts you’re bringing in.</li>
<li><strong>Track progress in Bulk Actions:</strong> Monitor the verification job in <strong>Bulk Actions</strong> until it moves from Processing to Completed.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li><strong>Fewer bounces:</strong> Catch invalid emails before you send campaigns.</li>
<li><strong>Healthier lists:</strong> Keep new contacts clean from day one.</li>
<li><strong>Less manual work:</strong> Import and verify in one pass.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Contacts &gt; Import Contacts</strong> and set up your import.</li>
<li>On the final step, turn on the email verification option.</li>
<li>Start the import.</li>
<li>Open <strong>Bulk Actions</strong> to follow the verification status until it completes.</li>
</ol>
<h2>Working with results</h2>
<ul>
<li>Use the <strong>Email Verification Status</strong> filter to find valid and invalid contacts.</li>
<li>Create <strong>Smart Lists</strong> to separate valid vs. invalid contacts and decide how you want to handle each group.</li>
</ul>
<p>Learn more: <a href="https://help.leadli.com/support/solutions/articles/155000009175" rel="ugc nofollow noopener noreferrer" target="_blank">Email verification during contact import</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-27T18:50:21.000Z'),
('wp-1638', 'Workflow A/B testing: compare paths and route contacts to the winning path', 'Overview Leadli now includes an A/B Test action for workflows. You can split contacts evenly across 2 to 10 paths, choose what counts as a conversion, and set when the test ends. After a winner is identified, you can route new contacts to the best-performing path or keep splittin...', '<h2>Overview</h2>
<p>Leadli now includes an A/B Test action for workflows. You can split contacts evenly across 2 to 10 paths, choose what counts as a conversion, and set when the test ends. After a winner is identified, you can route new contacts to the best-performing path or keep splitting evenly while you review results.</p>
<h2>Why this matters</h2>
<p>Different messages and follow-up sequences can produce different outcomes. A/B testing lets you compare variations in a single workflow, measure each path against the same goal, and use the results to decide how future contacts should be routed.</p>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>, then select <strong>Add action</strong> and choose <strong>A/B Test</strong>.</li>
<li>Name the test.</li>
<li>Configure the test settings:
<ul>
<li><strong>Paths:</strong> Add 2 to 10 paths and build the actions you want to compare under each one. Contacts are split evenly across the paths.</li>
<li><strong>Winning criteria:</strong> Choose a goal such as email activity, appointment status, a contact tag, or payment received. Then select the relevant emails, calendar, tag, or product. You can also use a custom condition based on contact fields or custom fields.</li>
<li><strong>Test length:</strong> End the test after a set number of contacts enter, a set number of goal completions, or a specific date and time.</li>
</ul>
</li>
</ol>
<h2>What happens when the test ends</h2>
<ul>
<li><strong>Send new contacts to the winning path:</strong> Future entrants follow the path with the highest conversion rate. Contacts already in a path continue and finish their sequence.</li>
<li><strong>Keep splitting and show the result:</strong> Continue splitting contacts evenly while the winner is marked in Statistics.</li>
</ul>
<h2>Review results</h2>
<p>Open <strong>Statistics</strong> to view entrants, conversions, and conversion rate for each path. If you have enough data, you can select <strong>Declare winner</strong> to end the test early. The path with the highest conversion rate is selected as the winner.</p>
<h2>Common use cases</h2>
<ul>
<li><strong>Consultation bookings:</strong> Compare a direct invitation against a benefits-led follow-up sequence.</li>
<li><strong>Email engagement:</strong> Compare messages using clicks on selected workflow emails.</li>
<li><strong>Lead qualification:</strong> Compare nurturing paths using a qualification tag or a custom field condition.</li>
<li><strong>Payment conversion:</strong> Compare reminder sequences against completed payments.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>A/B Test is separate from the Split action. Its goal measures conversions; it does not determine which path a contact enters.</li>
<li>With winner routing selected, the workflow canvas shows a <strong>Winner</strong> badge and visually mutes the other paths.</li>
<li>If paths tie, the first path is treated as the winner.</li>
<li>Date-based tests use the account time zone.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;