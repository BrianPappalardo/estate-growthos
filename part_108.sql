INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>Why this was added</strong></p>
<p>Response-time SLAs are important for sales and support teams. This update helps you track first responses, reduce manual monitoring, and escalate conversations when response targets are missed.</p>
<p><strong>Examples</strong></p>
<ul>
<li><strong>Support:</strong> Wait up to 30 minutes for <em>User Replied</em>. If an agent responds within the SLA, the workflow continues. If the timeout is reached first, notify a supervisor and reassign the conversation.</li>
<li><strong>Sales:</strong> Wait 15 minutes for a representative to reply to a new lead. If no reply is sent before the timeout, create an urgent task and notify the sales manager.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>The contact resumes as soon as a user sends a reply, or when the configured timeout is reached.</li>
<li>If no timeout is configured, the workflow waits until a user reply is received.</li>
<li>This is useful for first-response SLAs, escalation workflows, and internal response-time automations.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1237', 'New workflow trigger: User Replied', 'Overview You can now start workflows when a team member replies to a contact in a conversation. This trigger runs when a user sends a reply, which helps you automate internal steps after your team responds. How it works Add the User Replied trigger to a workflow and set any condi...', '<p><strong>Overview</strong></p>
<p>You can now start workflows when a team member replies to a contact in a conversation. This trigger runs when a user sends a reply, which helps you automate internal steps after your team responds.</p>
<p><strong>How it works</strong></p>
<p>Add the <strong>User Replied</strong> trigger to a workflow and set any conditions you need. When a user replies through a supported conversation channel, the workflow starts and can continue with actions like notifications, tagging, assignments, or follow-ups.</p>
<p><strong>How to set it up</strong></p>
<ol>
<li>Go to <strong>Automations &gt; Workflows</strong> and add the <strong>User Replied</strong> trigger.</li>
<li>Configure the trigger filters for your workflow.</li>
<li>Publish the workflow so it runs when a user replies.</li>
</ol>
<p><strong>Example uses</strong></p>
<ul>
<li>When a sales rep replies to a lead’s SMS, move the opportunity to a “Contacted” stage and notify a manager.</li>
<li>When a support agent replies to an email, apply a “Support Responded” tag and create a follow-up task for 48 hours later.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>This trigger activates only when a user sends a reply, not when a contact responds.</li>
<li>Use it to automate internal workflows based on team activity.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1276', 'Redeem gift cards when recording or collecting offline payments', 'Summary You can now redeem a customer’s gift card when you record or collect payments inside Leadli. This makes gift card redemption consistent across customer checkout and payments initiated by your team. Where gift cards can be redeemed Gift card redemption is supported in thes...', '<h2>Summary</h2>
<p>You can now redeem a customer’s gift card when you record or collect payments inside Leadli. This makes gift card redemption consistent across customer checkout and payments initiated by your team.</p>
<h2>Where gift cards can be redeemed</h2>
<p>Gift card redemption is supported in these payment flows:</p>
<ul>
<li>Orders → Record Payment → Charge a Card</li>
<li>Invoices → Record Payment → Charge a Card</li>
<li>Contacts → Charge Now</li>
<li>Contacts → Create Subscription</li>
<li>Subscriptions → Create Subscription</li>
</ul>
<h2>How it works</h2>
<ul>
<li>Enter the gift card code, validate it, and apply the available balance during payment.</li>
<li>If the gift card covers the full amount, the payment is completed using the gift card.</li>
<li>If the gift card covers part of the amount, the gift card is applied first and the remaining balance is charged to the saved payment method.</li>
<li>Invalid, expired, or zero-balance gift cards show validation messages.</li>
</ul>
<h2>Payment visibility</h2>
<p>When a gift card is redeemed:</p>
<ul>
<li>Transaction details show the amount paid using the gift card.</li>
<li>Split payments show the gift card amount separately from the remaining payment method.</li>
<li>The related gift card order updates the remaining balance after a successful redemption.</li>
</ul>
<h2>Where to find it</h2>
<p>You can use gift cards while collecting payments in:</p>
<ul>
<li>Payments → Orders → Record Payment</li>
<li>Payments → Invoices → Record Payment</li>
<li>Contacts → Charge Now</li>
<li>Contacts → Create Subscription</li>
<li>Payments → Subscriptions → Create Subscription</li>
</ul>
<h2>Notes</h2>
<p>For “Create Subscription”, gift cards are not currently redeemable on future-dated or scheduled subscriptions.</p>
<h2>What’s next</h2>
<ul>
<li>Gift card redemption while collecting payments through Calendars</li>
<li>Gift card redemption through POS</li>
<li>User permissions for gift card redemption</li>
<li>Validity settings on individual gift card orders</li>
<li>Voiding or cancelling issued gift card orders</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1275', 'Smarter drip campaigns with review date range targeting', 'What’s new You can now set an exact review date range when creating a drip campaign, instead of targeting reviews by a fixed review age. Before you launch the campaign, you’ll see: The total number of eligible reviews Whether any reviews match your selected filters Validation tha...', '<p><strong>What’s new</strong></p>
<p>You can now set an exact <strong>review date range</strong> when creating a drip campaign, instead of targeting reviews by a fixed review age.</p>
<p><strong>Before you launch the campaign, you’ll see:</strong></p>
<ul>
<li>The total number of eligible reviews</li>
<li>Whether any reviews match your selected filters</li>
<li>Validation that prevents creating empty campaigns</li>
</ul>
<p>Existing age-based campaigns will continue to work without any changes.</p>
<p><strong>Why this helps</strong></p>
<ul>
<li>Target specific groups of historical reviews more precisely</li>
<li>Preview the campaign’s impact before launching</li>
<li>Avoid empty campaigns and unnecessary processing</li>
<li>Clear review backlogs more efficiently using Reviews AI</li>
</ul>
<p><strong>How to enable</strong></p>
<p>Go to Reputation &rarr; Settings &rarr; Reviews AI &rarr; Drip Campaign.</p>
<p>If you have feedback, please contact the support team.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z')
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;