INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Businesses with weekends closed or custom schedules won’t lose booking days to non-working days.</li>
<li>Customers are less likely to see empty calendars when real availability is coming up on the next working day.</li>
<li>Minimum notice and date range behave more predictably, which can reduce confusion and support requests.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-27T08:45:32.000Z'),
('wp-1379', 'WhatsApp messaging limits are now shown at the portfolio level', 'We updated how WhatsApp messaging limits appear in your sub-account to match Meta''s current model. Meta moved messaging limits from a per-phone-number basis to a business portfolio (WABA) basis, so all numbers under a portfolio share one daily limit. Leadli now shows that shared ...', '<p>We updated how WhatsApp messaging limits appear in your sub-account to match Meta&#8217;s current model. Meta moved messaging limits from a per-phone-number basis to a business portfolio (WABA) basis, so all numbers under a portfolio share one daily limit. Leadli now shows that shared limit accurately, instead of implying each number has its own quota.</p>
<p>Under Meta&#8217;s model, one high-volume number can consume your entire portfolio&#8217;s daily capacity. This update helps you understand what your business can send today based on the real shared limit.</p>
<h2>What changed on Meta&#8217;s side (effective Oct 7, 2025)</h2>
<p>Meta&#8217;s messaging limit is the maximum number of unique WhatsApp user phone numbers you can deliver to outside the 24-hour customer service window in a rolling 24-hour period. As of Oct 7, 2025, that limit is calculated and set at the portfolio level and shared across every phone number in the portfolio.</p>
<h3>Tier ladder updates</h3>
<ul>
<li><strong>New entry point above the starting limit:</strong> 2,000 replaces 1,000 as the first step up from the 250 starting limit, and it is the on-ramp to automatic scaling.</li>
<li><strong>How you reach 2,000:</strong> Complete a scaling path (verify your business, have your partner verify it, or send 2,000 delivered messages to unique recipients over a rolling 30-day period using high-quality templates).</li>
<li><strong>Above 2,000 is automatic:</strong> Increases to 10,000, then 100,000, then Unlimited happen automatically if quality stays high across all your numbers and templates, and you use at least 50% of your current limit over 7 days.</li>
<li><strong>Faster re-evaluation:</strong> Meta reassesses roughly every 6 hours, down from 24.</li>
<li><strong>No more quality-based downgrade:</strong> The “Flagged” number-quality state is gone. Low quality now gates scaling up, rather than reducing your limit.</li>
<li><strong>No warm-up for new numbers:</strong> A new phone number instantly inherits the portfolio&#8217;s current limit. On cutover, existing portfolios kept the highest limit among their numbers.</li>
</ul>
<h2>What we changed in Leadli</h2>
<h3>A portfolio-level messaging limits panel</h3>
<ul>
<li><strong>See the real shared limit:</strong> A messaging limits panel under WhatsApp Settings shows the portfolio-level limit that governs all your numbers.</li>
</ul>
<h3>Removed the misleading per-number column</h3>
<ul>
<li><strong>No more false impression of separate quotas:</strong> We removed the messaging limit column from the individual Phone Numbers view, because under the new model each number does not have its own limit.</li>
</ul>
<h3>Clearer context</h3>
<ul>
<li><strong>Tooltip:</strong> A tooltip explains that the limit is shared across the portfolio and that a single number can consume the full quota.</li>
</ul>
<h3>Localized</h3>
<ul>
<li><strong>13 languages:</strong> The new panel is fully localized.</li>
</ul>
<h2>Where to find it</h2>
<ol>
<li>Go to your <strong>sub-account</strong>.</li>
<li>Open <strong>WhatsApp Settings</strong>.</li>
<li>Select <strong>Messaging Limits</strong>.</li>
</ol>
<h2>Why this matters</h2>
<p>Before this change, the limit shown under each number suggested every number had its own daily quota. It did not. Under Meta&#8217;s portfolio model, that gap can lead to unexpected send failures once the shared limit is reached. Leadli now shows one accurate view of what your business can actually send today, so you can plan volume against the real ceiling instead of a per-number assumption.</p>
<h2>Resources</h2>
<ul>
<li><a href="https://help.leadli.com/support/solutions/articles/155000001637-whatsapp-messaging-limits" rel="ugc nofollow noopener noreferrer" target="_blank">WhatsApp messaging limits (Leadli support)</a></li>
<li><a href="https://developers.facebook.com/docs/whatsapp/messaging-limits/" rel="ugc nofollow noopener noreferrer" target="_blank">Meta: WhatsApp messaging limits</a></li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-27T05:38:18.000Z'),
('wp-1378', 'Trigger workflows in bulk for Companies and Custom Objects', 'You can now trigger workflows for multiple Company or Custom Object records at once, directly from the list view. What''s new Select multiple Company or Custom Object records and trigger an automation in bulk. Choose the workflow you want to run without updating records individual...', '<p>You can now trigger workflows for multiple <strong>Company</strong> or <strong>Custom Object</strong> records at once, directly from the list view.</p>
<h2>What&#8217;s new</h2>
<ul>
<li>Select multiple Company or Custom Object records and trigger an automation in bulk.</li>
<li>Choose the workflow you want to run without updating records individually.</li>
<li>Track progress and review record-level results from <strong>Bulk Actions</strong>.</li>
</ul>
<h2>Why it matters</h2>
<p>Sometimes you need an automation to run for records that already exist, without waiting for a new workflow trigger. This update lets you quickly process a selected group of records for common operational tasks.</p>
<p>Examples include:</p>
<ul>
<li>Running onboarding or follow-up workflows for Companies.</li>
<li>Triggering renewal automation for Policies or Subscriptions.</li>
<li>Processing imported Custom Object records.</li>
<li>Running one-time workflows on selected records.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Companies</strong> or a <strong>Custom Object</strong>.</li>
<li>Select the records you want to process.</li>
<li>Click <strong>Trigger Automation</strong>.</li>
<li>Select the workflow.</li>
<li>Confirm the action.</li>
</ol>
<p>You can monitor the results from <strong>Bulk Actions</strong>.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-08-26T15:31:43.000Z'),
('wp-1377', 'Calendar guest enhancements: more flexible guest details', 'We improved guest management for calendars so you can choose what information to collect about guests while keeping guest contact data accurate. Choose what to collect for each guest Guest details were previously limited to name and email. You can now choose what to collect for e...', '<p>We improved guest management for calendars so you can choose what information to collect about guests while keeping guest contact data accurate.</p>
<h3>Choose what to collect for each guest</h3>
<p>Guest details were previously limited to name and email. You can now choose what to collect for each guest:</p>
<ul>
<li>Name and email</li>
<li>Name and phone</li>
<li>Name, email, and phone</li>
<li>Guest count only (collect only the number of guests without creating guest contacts)</li>
</ul>
<p>When guest details are collected, a contact is automatically created or matched for each guest using their email and/or phone number.</p>
<p><strong>Existing calendars:</strong> Calendars already collecting guest details will continue to use name and email, so there is no change to the current booking experience.</p>
<p><strong>New calendars:</strong> Guest details will default to name, email, and phone to help capture more complete guest information from the start.</p>
<h3>More accurate guest time zones</h3>
<p>Guest contacts created during a booking now inherit the primary contact’s time zone instead of automatically using the business time zone. If the guest already exists as a contact in the CRM, their existing time zone remains unchanged.</p>
<h3>Why this matters</h3>
<ul>
<li>Collect the guest contact information that is most relevant to your business</li>
<li>Create more complete guest contact records (including phone numbers when needed)</li>
<li>Keep time zone information consistent across attendees</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-26T10:09:41.000Z'),
('wp-1375', 'Request contact info to collect phone numbers from WhatsApp username leads', 'When someone messages you on WhatsApp using a username, WhatsApp may share only their username and not their phone number. Leadli now lets you request the customer’s phone number so the lead becomes fully reachable. What’s new Request contact info Share contact info button on tem...', '<p>When someone messages you on WhatsApp using a username, WhatsApp may share only their username and not their phone number. Leadli now lets you request the customer’s phone number so the lead becomes fully reachable.</p>
<h2>What’s new</h2>
<h3>Request contact info</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;