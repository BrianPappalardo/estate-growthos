INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p>We will continue expanding Manual Taxes to support more flexible regional tax configurations.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T14:25:03.000Z'),
('wp-1446', 'Add role badges to staff for services', 'Overview When a service has multiple staff members (for example, junior and senior stylists or different specialists), customers choosing from a simple list of names may not know who is the best fit. You can add a short role badge, such as "Lead Therapist" or "Senior Consultant,"...', '<h2>Overview</h2>
<p>When a service has multiple staff members (for example, junior and senior stylists or different specialists), customers choosing from a simple list of names may not know who is the best fit.</p>
<p>You can add a short role badge, such as &#8220;Lead Therapist&#8221; or &#8220;Senior Consultant,&#8221; to each staff member’s profile. This badge appears during staff selection on your booking widget, making it easier for customers to choose and giving each role clearer visibility.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Reusable badges:</strong> Create as many role badges as you need (for example, Lead Therapist or Senior Consultant). When assigning a badge to a staff member, your existing badges are available to select.</li>
<li><strong>One role badge per staff member:</strong> Assign one text-based role badge (up to 30 characters) to each staff member from their staff details settings.</li>
<li><strong>Custom badge colors:</strong> Choose a color for each badge so roles are easy to distinguish.</li>
<li><strong>Displayed during staff selection:</strong> If a staff member has a badge configured, it appears on their card during staff selection on the booking widget.</li>
<li><strong>No empty badges:</strong> Staff without a configured badge show no badge or placeholder.</li>
<li><strong>Immediate updates:</strong> Editing or removing a badge is reflected the next time the booking widget loads.</li>
<li><strong>Consistent on desktop and mobile:</strong> The badge displays consistently across desktop and mobile layouts.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Services → Staff</strong>.</li>
<li>Edit the staff member you want to update.</li>
<li>Under the <strong>Basic details</strong> tab, find the <strong>Staff badge</strong> dropdown.</li>
<li>Add or select a badge, then save. The badge will appear next to that staff member during staff selection on your booking widget.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Helps customers quickly identify the right person to book with when multiple staff members are available.</li>
<li>Keeps setup simple and easy to scan, without needing detailed staff bios.</li>
<li>Maintains a polished, on-brand booking experience with minimal configuration.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-09-22T13:26:57.000Z'),
('wp-1445', 'Custom pricing for service appointments', 'Overview Service prices do not always match what should be charged. Negotiated pricing or one-off scenarios can mean the final price needs to differ from what is configured. You can now edit a service’s price directly in the service appointment modal before saving a new appointme...', '<h2>Overview</h2>
<p>Service prices do not always match what should be charged. Negotiated pricing or one-off scenarios can mean the final price needs to differ from what is configured.</p>
<p>You can now edit a service’s price directly in the service appointment modal before saving a new appointment, or while editing or duplicating an existing appointment. This changes the price for that appointment only and does not change the service’s global pricing.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Edit the service price on the appointment</strong><br />When creating, editing, or duplicating a service appointment, you can adjust the service price in the appointment modal. The total updates immediately.</li>
<li><strong>Appointment-specific only (not global)</strong><br />Any price change applies only to that appointment. The globally configured service price is not changed.</li>
<li><strong>Validation included</strong><br />Zero is allowed (for complimentary services). Negative values are blocked with a clear validation error.</li>
<li><strong>Overrides staff-specific pricing</strong><br />If a staff member has a custom price set for a service, the appointment price you enter will override it for that appointment.</li>
<li><strong>Available in the mobile app</strong><br />You can edit the service price for an appointment from the mobile app.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the service appointment modal (create, edit, or duplicate).</li>
<li>Click the edit icon next to a service.</li>
<li>Enter the new price for the service.</li>
<li>Save. The custom price applies only to that appointment.</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Lets staff charge the correct negotiated or discretionary price without workarounds.</li>
<li>Keeps global service pricing unchanged so one-off pricing does not affect other bookings.</li>
<li>Supports the same workflow on desktop and mobile.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-22T13:01:57.000Z'),
('wp-1444', 'AI Studio: Migrate an existing project to SSR', 'If you have a React project that needs server-rendered pages, server functions, or secrets, you can now upgrade it from Project Settings. AI Studio creates a second project in the same sub-account and runs the migration there, so your published project and domains stay unchanged....', '<p>If you have a React project that needs server-rendered pages, server functions, or secrets, you can now upgrade it from Project Settings. AI Studio creates a second project in the same sub-account and runs the migration there, so your published project and domains stay unchanged.</p>
<h2>What this solves</h2>
<p>SSR, server functions, and secrets were available for new projects, but existing React sites did not have a safe way to adopt the new stack without risking the live project.</p>
<h2>What’s included</h2>
<p>The <strong>Migrate to SSR</strong> option appears in Project Settings (Advanced) for React/Vite projects when you have edit access. Projects already on TanStack do not show this action.</p>
<p>When you confirm, a new project is created next to the original:</p>
<ul>
<li>Your pages are copied into the new project</li>
<li>You can rename the copy (suggested: “{project name} (TanStack)”)</li>
<li>The new project starts as a draft; the live site and domains stay on the original</li>
<li>Earlier versions remain with the original; the copy starts a new chat history</li>
</ul>
<p>The upgrade runs in the new project’s chat. The dashboard will show “Migrating to SSR” until the new project is ready as a TanStack app.</p>
<p>While migration is in progress, publishing, code save, version restore, domain changes, slug changes, and remix are blocked on the copy. Preview, chat, and delete remain available.</p>
<h2>How to run the migration</h2>
<ol>
<li>Open the React project that needs the new stack</li>
<li>Go to <strong>Project Settings</strong> and find <strong>Migrate to SSR</strong></li>
<li>Confirm the copy’s name</li>
<li>Accept the notes</li>
<li>Click <strong>Migrate</strong></li>
</ol>
<p>If the run stops early, the migration badge stays on the copy. In that project’s chat, you can use “continue the migration” to resume. Starting migration again from the original creates another copy.</p>
<h2>Before you publish the copy</h2>
<ul>
<li>Use this when the project needs server rendering, server functions, or secrets.</li>
<li>Conversion is charged like a normal build.</li>
<li>Review the new project before publishing; you may need to fix minor issues.</li>
<li>Workflow triggers continue to point to the original project until you update them.</li>
<li>Publishing the copy, or moving a domain, is a separate decision from running the migration.</li>
<li>The original project is not edited during the process.</li>
</ul>
<h2>Why this matters</h2>
<p>This lets an existing React project move to an SSR stack without a rebuild and without a risky cutover. Projects that do not need SSR can remain on React.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-22T11:04:06.000Z'),
('wp-1443', 'Calendar AI now helps troubleshoot availability', 'Overview Calendar AI can now help you troubleshoot availability issues. You can ask why a specific calendar or team member is not bookable and get a direct answer, instead of searching the troubleshooting grid or submitting a support request. What’s new Ask why a time is unavaila...', '<h2>Overview</h2>
<p>Calendar AI can now help you troubleshoot availability issues. You can ask why a specific calendar or team member is not bookable and get a direct answer, instead of searching the troubleshooting grid or submitting a support request.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Ask why a time is unavailable</strong><br />Ask a question like “Why is 5:00 PM on Aug 8 unavailable on my Sales Call calendar?” and Calendar AI will explain what is blocking that time.</li>
<li><strong>Check a team member, not just a calendar</strong><br />Ask about a person by name (for example, “Why isn’t Jane available on Friday?”). If they work across multiple calendars, Calendar AI will either check their overall schedule or ask which calendar you mean.</li>
<li><strong>Get a day-level summary</strong><br />Ask about a full day and get a single summary of what is blocking availability by time segment, with the option to ask follow-up questions for more detail.</li>
<li><strong>Clarifying questions only when needed</strong><br />Calendar AI will only ask you to clarify when a name could refer to more than one thing (such as a calendar and a team member).</li>
<li><strong>No guessed explanations</strong><br />If Calendar AI cannot produce a reliable answer, it will say so and direct you to the full troubleshooting view rather than inventing a reason.</li>
</ul>
<h2>How to use it</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;