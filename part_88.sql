INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>Leadli now includes a sidebar toggle in the Workflow Builder. This lets you open the common Leadli navigation sidebar from inside a workflow so you can move to other areas of the platform without leaving the builder.</p>
<p><strong>How it works</strong></p>
<p>Use the toggle in the top-left corner of the Workflow Builder to show or hide the standard Leadli navigation sidebar. You can also use the keyboard shortcut Cmd+\ (Mac) or Ctrl+\ (Windows).</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open any workflow in the Workflow Builder.</li>
<li>Click the sidebar toggle in the top-left corner, or press Cmd+\ (Mac) / Ctrl+\ (Windows).</li>
<li>Use the sidebar to go to other Leadli products or pages.</li>
</ul>
<p><strong>Why this was added</strong></p>
<p>This reduces switching back and forth while building automations and keeps navigation consistent across Leadli.</p>
<p><strong>Additional notes</strong></p>
<ul>
<li>The sidebar can be shown or hidden at any time.</li>
<li>Keyboard shortcut: Cmd+\ (Mac) / Ctrl+\ (Windows).</li>
<li>This is a navigation improvement only and does not affect workflow execution.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1182', 'TikTok DM replies can now resume workflows', 'You can now use TikTok Interactive Messenger as the reply channel in the Wait → Until the contact replies workflow action. This lets a workflow pause and only continue after the contact replies through TikTok DM. How it works When a workflow reaches a Wait Until the Contact Repli...', '<p>You can now use TikTok Interactive Messenger as the reply channel in the <strong>Wait → Until the contact replies</strong> workflow action.</p>
<p>This lets a workflow pause and only continue after the contact replies through TikTok DM.</p>
<h3>How it works</h3>
<p>When a workflow reaches a <strong>Wait Until the Contact Replies</strong> step, select <strong>TikTok Interactive Messenger</strong> in the <strong>Reply to</strong> field. The workflow resumes after a valid TikTok DM reply is received.</p>
<h3>How to set it up</h3>
<ul>
<li>Add a <strong>Wait</strong> action to your workflow.</li>
<li>Select <strong>Until the contact replies</strong>.</li>
<li>Choose <strong>TikTok Interactive Messenger</strong> under <strong>Reply to</strong>.</li>
</ul>
<h3>Why this change was made</h3>
<p>Teams using TikTok for customer conversations can now build reply-based automation and follow-up sequences without switching channels.</p>
<h3>Example</h3>
<p>A fitness studio sends a TikTok DM inviting prospects to claim a free trial. The workflow waits for a reply through TikTok DM before sending the next message or assigning the lead to a team member.</p>
<h3>Notes</h3>
<ul>
<li>Available in the <strong>Wait → Until the contact replies</strong> workflow action.</li>
<li>Supports replies received through <strong>TikTok Interactive Messenger</strong>.</li>
<li>Workflows resume automatically after a valid TikTok DM reply is received.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1181', 'Housecall Pro: More workflow actions and triggers', 'Based on customer feedback, we added more actions and triggers for Housecall Pro. What’s new The Housecall Pro integration in workflows now covers the full field-service lifecycle. It includes nine triggers for jobs, estimates, leads, and customers, and fourteen actions for manag...', '<p>Based on customer feedback, we added more actions and triggers for Housecall Pro.</p>
<h2>What’s new</h2>
<p>The Housecall Pro integration in workflows now covers the full field-service lifecycle. It includes nine triggers for jobs, estimates, leads, and customers, and fourteen actions for managing customers, jobs, estimates, leads, and job appointments.</p>
<h2>How it works</h2>
<p>Triggers poll Housecall Pro on a schedule: creation events (Job created, Estimate created, Lead created, Customer created) run every 5 minutes, and schedule/finish/cancel events (Job scheduled, Job finished, Job canceled, Estimate scheduled, Estimate finished) run every 10 minutes.</p>
<p>Actions support customer and address management, job and job-appointment management, estimate creation and retrieval, and lead creation and retrieval. Authentication uses an API key, and you can target multiple accounts through the Connected Account dropdown.</p>
<h2>How to use it</h2>
<ul>
<li>In workflows, add a Housecall Pro trigger or action.</li>
<li>Click <strong>Connect your account</strong>. In the API Key connection modal, paste your Housecall Pro API key (Housecall Pro → My Apps → App Store → API Key Management → Generate API Key with Full Access).</li>
<li>For triggers: optionally add filters (customer, tag, employee, or any captured field), then use <strong>Find new records</strong> to capture a sample payload.</li>
<li>For actions: fill in the required fields (varies by action; most require a customer or object ID), then run <strong>Test Action</strong>.</li>
<li>Save and publish.</li>
</ul>
<h2>Example</h2>
<p>A homeowner submits a “Request a Quote” form. The workflow creates a Housecall Pro lead, notifies dispatch, and tags the CRM contact. When an estimate is booked, the Estimate scheduled trigger can send a reminder with the technician’s ETA. After the estimate is finished, the workflow can send a link to review and approve the quote. Once approved, the workflow can create a job and continue through scheduling, completion, and follow-up.</p>
<h2>Additional notes</h2>
<ul>
<li>Triggers (9): Job created (5 min), Job scheduled (10 min), Job finished (10 min), Job canceled (10 min), Estimate created (5 min), Estimate scheduled (10 min), Estimate finished (10 min), Lead created (5 min), Customer created (5 min).</li>
<li>Actions (14): Create new customer, Get customer details, Update a customer, Find customers, Get a customer address, Create a customer address, Create a job, Get job details, Create a job appointment, Update a job appointment, Create an estimate, Get an estimate, Create a lead, Get a lead.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z'),
('wp-1180', 'Calendly workflow actions and triggers', 'You can connect Calendly to Leadli Workflows so your automations can respond to scheduling events and manage Calendly meetings. What’s included Triggers (5) Invitee created (instant) Invitee canceled (instant) Invitee no show created (instant) New routing form submission (instant...', '<p>You can connect Calendly to Leadli Workflows so your automations can respond to scheduling events and manage Calendly meetings.</p>
<h2>What’s included</h2>
<p><strong>Triggers (5)</strong></p>
<ul>
<li>Invitee created (instant)</li>
<li>Invitee canceled (instant)</li>
<li>Invitee no show created (instant)</li>
<li>New routing form submission (instant)</li>
<li>Event cancelled (polled every 5 minutes for host-initiated cancellations)</li>
</ul>
<p><strong>Actions (9)</strong></p>
<ul>
<li>Create one-off meeting</li>
<li>Book meeting for invitee</li>
<li>Find event</li>
<li>Cancel an event</li>
<li>Mark invitee as no show</li>
<li>Create contact</li>
<li>Find contact</li>
<li>Update contact</li>
<li>Find user</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Most triggers run instantly using Calendly webhooks (invitee.created, invitee.canceled, invitee_no_show.created, routing_form_submission.created).</li>
<li>&quot;Event cancelled&quot; is checked on an interval because Calendly does not provide a native webhook for host-initiated cancellations.</li>
<li>Instant triggers support a Webhook Subscription Scope filter (User or Organization).</li>
<li>Authentication uses OAuth through an External Authentication Configuration step where each connected account is labeled with a name and email.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>In Workflows, add a Calendly trigger or action.</li>
<li>Connect your Calendly account, provide a name and email, and complete the OAuth authorization.</li>
<li>Configure the trigger/action fields and test.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Example</h2>
<p>When a prospect books a discovery call through a rep’s Calendly link, the &quot;Invitee created&quot; trigger can find or create the matching contact, store booking details, and send a pre-call message. If the prospect cancels, &quot;Invitee canceled&quot; can start a follow-up sequence with a rescheduling option.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:56:28.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;