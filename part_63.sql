INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ol>
<li>Open your AI Agent Action in a workflow.</li>
<li>Open the model dropdown.</li>
<li>Select a provider and model.</li>
<li>If available, choose an effort level.</li>
<li>Save and publish your workflow.</li>
</ol>
<h2>Why this matters</h2>
<p>This gives you more flexibility to match the model to the task. Heavier models can handle complex, multi-step work, while lighter models are better for simpler requests and faster responses.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-20T15:29:20.000Z'),
('wp-1366', 'Meta discontinued Instagram Explore Feed as an ad placement', 'Meta has discontinued the Instagram Explore Feed placement as part of its Marketing API v26 update. This means Instagram Explore is no longer available as an ad placement when creating a campaign in Leadli. Existing campaigns continue to run, and the change is applied automatical...', '<p>Meta has discontinued the Instagram Explore Feed placement as part of its Marketing API v26 update.</p>
<p>This means Instagram Explore is no longer available as an ad placement when creating a campaign in Leadli. Existing campaigns continue to run, and the change is applied automatically.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Instagram Explore Feed can no longer be selected as an ad placement.</li>
<li>Leadli’s ad manager remains compatible with Meta’s Marketing API v26 requirements.</li>
</ul>
<p><strong>How this works</strong></p>
<ul>
<li>No action is required. The update happens automatically.</li>
<li>Published Meta campaigns that previously used Explore remain active.</li>
<li>Draft campaigns will have Explore removed when the ad set is saved.</li>
<li>Delivery will shift to other eligible placements.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Live campaigns are not disrupted.</li>
<li>You should not see errors during the transition.</li>
<li>It keeps Leadli compliant with Meta’s current API requirements.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This is a Meta-driven platform change, not a Leadli product decision.</li>
<li>The Template Library and campaign workflows are otherwise unchanged.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-20T13:01:13.000Z'),
('wp-1365', 'Calendar AI: Set up a booking calendar in minutes', 'Calendar AI helps you create a booking calendar, configure it, and make your first test booking in a guided flow. What Calendar AI does Describe what you need, and Calendar AI will recommend and create the right calendar for your use case. During setup, you can: Describe your use...', '<p><strong>Calendar AI</strong> helps you create a booking calendar, configure it, and make your first test booking in a guided flow.</p>
<p><strong>What Calendar AI does</strong></p>
<p>Describe what you need, and Calendar AI will recommend and create the right calendar for your use case.</p>
<p>During setup, you can:</p>
<ul>
<li>Describe your use case instead of choosing a calendar type from scratch</li>
<li>Add team members</li>
<li>Set availability</li>
<li>Choose a meeting location</li>
<li>Preview the booking calendar</li>
<li>Book a test appointment when setup is complete</li>
<li>Learn what the calendar can do by asking questions or using preset prompts</li>
</ul>
<p><strong>Coming next: Calendar troubleshooting</strong></p>
<p>We are adding help for a common question: <strong>&#8220;Why isn’t this specific slot showing on my booking widget?&#8221;</strong></p>
<p>Calendar AI will review your calendar configuration and identify what is blocking the slot and what to change.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-20T11:39:58.000Z'),
('wp-1360', 'Clearer calendar payment settings for saving a card and handling free bookings', 'We updated calendar payment settings to clearly separate saving a customer’s card for later from bookings that do not require payment. What’s changing In the past, some businesses used a $0 payment amount to collect card details without charging the customer. This could create a ...', '<p>We updated calendar payment settings to clearly separate saving a customer’s card for later from bookings that do not require payment.</p>
<p><strong>What’s changing</strong></p>
<p>In the past, some businesses used a $0 payment amount to collect card details without charging the customer. This could create a confusing experience when a booking became free after a 100% discount, because the customer might still be asked for card details and a $0 transaction could be processed.</p>
<p>There is now a dedicated <strong>Collect Card on File</strong> option in calendar payment settings.</p>
<p><strong>Collect Card on File</strong></p>
<ul>
<li>Customers are asked to enter card details during booking</li>
<li>The card is saved securely for future use</li>
<li>The customer is not charged during booking</li>
<li>No payment transaction is created during booking</li>
</ul>
<p><strong>$0 and free bookings</strong></p>
<p>If <strong>Charge upfront</strong> is enabled, the system now uses the final amount due to decide what happens:</p>
<ul>
<li><strong>Final amount &gt; $0</strong>: collect payment details and process payment normally</li>
<li><strong>Configured amount = $0</strong>: skip card collection and skip payment</li>
<li><strong>Coupon reduces the amount to $0</strong>: skip card collection and skip payment</li>
<li><strong>Coupon leaves an amount &gt; $0</strong>: collect the discounted amount normally</li>
</ul>
<p>This prevents customers making a free booking from being asked for unnecessary payment details or going through a $0 transaction.</p>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-20T06:55:58.000Z'),
('wp-1359', 'Email events now include a Message ID in the webhook picker', 'Email event triggers now include a unique Message ID. You can add this value to your Send Webhook payload so each open or click can be tied back to the exact email that generated it. What changed The Email Events trigger now provides a stable Message ID for the email that was ope...', '<p>Email event triggers now include a unique Message ID. You can add this value to your Send Webhook payload so each open or click can be tied back to the exact email that generated it.</p>
<h2>What changed</h2>
<p>The Email Events trigger now provides a stable Message ID for the email that was opened or clicked.</p>
<h2>How to use it</h2>
<ol>
<li>In a workflow that starts with the Email Events trigger, open your <strong>Send Webhook</strong> action.</li>
<li>When building the webhook body, select <strong>Message ID</strong> from the custom value picker.</li>
</ol>
<p>The same email will always produce the same Message ID, even if the contact opens it multiple times. Different emails produce different Message IDs.</p>
<h2>Why it matters</h2>
<p>This makes it easier to deduplicate repeat opens and clicks and to report engagement accurately in external systems.</p>
<h2>Example</h2>
<p>If you send two campaign emails in the same week and push open/click events to a reporting dashboard, the Message ID lets you record engagement against the correct email every time.</p>
<h2>Notes</h2>
<ul>
<li>Applies to both Email Opened and Email Clicked when using the Email Events trigger.</li>
<li>The Message ID remains stable for repeat opens of the same message.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-19T15:18:03.000Z'),
('wp-1358', 'Fix: Create/Update Record dropdowns support dynamic values again', 'Summary In the Create Record and Update Record workflow actions (including the associated record versions), single-select dropdown fields stopped showing dynamic values. If you had saved a merge tag value (for example, null ) the dropdown could open with nothing selected, and you...', '<p><strong>Summary</strong></p>
<p>In the Create Record and Update Record workflow actions (including the associated record versions), single-select dropdown fields stopped showing dynamic values. If you had saved a merge tag value (for example, <code>null</code>) the dropdown could open with nothing selected, and you could not enter a new merge tag.</p>
<p><strong>What’s been fixed</strong></p>
<p>Single-select dropdown fields now include a <strong>Standard</strong> / <strong>Dynamic</strong> toggle (the same approach used in Update Contact Field).</p>
<p><strong>How it works now</strong></p>
<ul>
<li><strong>Standard</strong> mode provides a searchable picklist.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;