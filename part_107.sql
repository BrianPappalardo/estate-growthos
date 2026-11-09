INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Link related issues automatically:</strong> New issue → Find issues (by shared reference) → Link issue (for example, “relates to” or “duplicates”).</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1241', 'Edit service bookings after payment', 'You can now edit both paid and unpaid service bookings without canceling and recreating the appointment. This lets you make changes while keeping the booking, order, and payment details in sync. What’s included Edit paid and unpaid service bookings. Add or remove services from an...', '<p>You can now edit both paid and unpaid service bookings without canceling and recreating the appointment. This lets you make changes while keeping the booking, order, and payment details in sync.</p>
<h3>What’s included</h3>
<ul>
<li>Edit paid and unpaid service bookings.</li>
<li>Add or remove services from an existing appointment.</li>
<li>Add, update, or remove add-ons.</li>
<li>Change the assigned staff member.</li>
<li>Apply, update, or remove coupons.</li>
<li>Update appointment details without recreating the booking.</li>
</ul>
<h3>Payment updates stay accurate</h3>
<ul>
<li>Each edit recalculates the booking total.</li>
<li>The appointment reflects the current payment status (additional payment required, fully paid, or refund due).</li>
<li>If a refund is due, you can process it from the appointment details.</li>
<li>If a refund is in progress, editing is temporarily disabled until it completes. You can still reschedule the appointment during this time.</li>
</ul>
<h3>Order management</h3>
<ul>
<li>Service bookings remain linked to their order.</li>
<li>When you edit a booking, the existing order is updated instead of creating a new one.</li>
</ul>
<h3>Mobile app</h3>
<p>Editing service bookings in the mobile app is scheduled to roll out during the week of July 20.</p>
<h3>How to use it</h3>
<ol>
<li>Open an existing service booking.</li>
<li>Select <strong>Edit</strong>.</li>
<li>Make changes (services, add-ons, staff member, coupons, or other details).</li>
<li>Save.</li>
<li>Review the updated payment status and process a refund if needed.</li>
</ol>
<h3>Why this matters</h3>
<ul>
<li>Handle customer requests after booking without starting over.</li>
<li>Keep payments, orders, and appointment details aligned automatically.</li>
<li>Reduce manual cleanup and save staff time.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1240', 'Improved Forms, Surveys, and Quizzes Submission Page (HighRise Migration)', 'Summary The submission page for Forms, Surveys, and Quizzes has been migrated to the HighRise framework. This update modernizes the underlying architecture to improve maintainability and support future enhancements while keeping the existing submission experience the same. What c...', '<p><strong>Summary</strong></p>
<p>The submission page for Forms, Surveys, and Quizzes has been migrated to the HighRise framework. This update modernizes the underlying architecture to improve maintainability and support future enhancements while keeping the existing submission experience the same.</p>
<p><strong>What changed</strong></p>
<ol>
<li>The Forms, Surveys, and Quizzes submission page is now built on the HighRise framework.</li>
<li>The user experience remains consistent to avoid disruption.</li>
<li>The underlying architecture has been updated to improve scalability and simplify future updates.</li>
</ol>
<p><strong>Key points</strong></p>
<ol>
<li>Improved stability and performance as part of the HighRise migration.</li>
<li>A modernized codebase to support faster maintenance and development.</li>
<li>No changes to submission workflows—users can continue submitting as usual.</li>
<li>Sets a foundation for upcoming improvements and feature delivery.</li>
</ol>
<p><strong>How it works</strong></p>
<p>From an end-user perspective, the submission process is unchanged. Behind the scenes, the page is now powered by the HighRise framework for a more robust and maintainable implementation.</p>
<p><strong>Notes</strong></p>
<ol>
<li>No action is required from customers or end users.</li>
<li>Existing functionality and submission flows continue to work as expected.</li>
<li>This update focuses on infrastructure improvements to support future platform growth.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1239', 'Goal action now supports user replies', 'Summary The Goal action now supports User Replied as a goal event. This lets a workflow jump a contact directly to a goal step when a team member replies in a conversation, so your automation can stop or change course once a person has engaged. How it works In a Goal action, choo...', '<p><strong>Summary</strong></p>
<p>The <strong>Goal</strong> action now supports <strong>User Replied</strong> as a goal event. This lets a workflow jump a contact directly to a goal step when a team member replies in a conversation, so your automation can stop or change course once a person has engaged.</p>
<p><strong>How it works</strong></p>
<p>In a <strong>Goal</strong> action, choose <strong>User Replied</strong> as the goal event. When a user sends a reply in a supported conversation channel, the contact skips ahead to the Goal step and bypasses any steps in between.</p>
<p><strong>How to use it</strong></p>
<ol>
<li>Add a <strong>Goal</strong> action to your workflow.</li>
<li>Select <strong>User Replied</strong> as the goal event.</li>
<li>Set the actions you want to run after the Goal is reached.</li>
</ol>
<p><strong>Why this matters</strong></p>
<p>This helps prevent contacts from receiving extra automated messages after a team member has already replied. It can reduce duplicate communication and support a smoother handoff from automation to human-led conversations.</p>
<p><strong>Examples</strong></p>
<ul>
<li>If a lead is in a 7-day nurture sequence and a sales rep replies on Day 2, the workflow can immediately reach the <strong>User Replied</strong> goal, skip the remaining messages, and move the contact to the next step.</li>
<li>If a support workflow is sending reminders while waiting for an agent response, the workflow can stop reminders as soon as the agent replies and the contact reaches the <strong>User Replied</strong> goal.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>The goal is achieved only when a <strong>user</strong> sends a reply to the contact.</li>
<li>Contacts jump to the Goal step and skip intermediate workflow actions.</li>
<li>This is useful for ending nurture sequences, preventing duplicate messaging, and moving from automation to human conversations.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1238', 'Wait step now supports waiting for a team member reply', 'Summary The Wait action now supports User Replied as a wait condition. In addition to waiting for a contact to reply, you can keep the contact waiting until a team member responds in the conversation before continuing to the next step. With the timeout option, you can set up SLA ...', '<p><strong>Summary</strong></p>
<p>The Wait action now supports <em>User Replied</em> as a wait condition. In addition to waiting for a contact to reply, you can keep the contact waiting until a team member responds in the conversation before continuing to the next step. With the timeout option, you can set up SLA workflows that escalate if a user reply is not sent within your target response time.</p>
<p><strong>How it works</strong></p>
<p>When you configure a Wait action, select <em>User Replied</em> as the wait condition and (optionally) set a timeout. The workflow pauses until a user replies or the timeout is reached—whichever happens first. If a reply is detected, the workflow continues immediately. If the timeout expires first, you can route the contact through escalation steps such as notifications, reassignments, or reminders.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Add a Wait action to your workflow.</li>
<li>Select <em>User Replied</em> and set an optional timeout.</li>
<li>Choose what should happen after a user replies or when the timeout is reached.</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;