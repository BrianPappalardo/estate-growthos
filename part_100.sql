INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Detailed improvement suggestions</strong> – The Opportunity Score panel provides recommendations across key setup areas.</li>
</ol>
<ul>
<li><strong>Audience</strong>: Checks whether the audience may be too narrow, too broad, or missing important details.</li>
<li><strong>Budget</strong>: Helps identify whether the budget may limit delivery or learning.</li>
<li><strong>Creative</strong>: Reviews ad content, media, CTA, destination links, and other creative inputs.</li>
<li><strong>Tracking</strong>: Checks whether conversion tracking and related setup are configured where applicable.</li>
</ul>
<ol>
<li><strong>Click-to-fix navigation</strong> – Each suggestion links you directly to the relevant section of the campaign builder.</li>
</ol>
<ul>
<li>Click recommendations such as improving creative, refining audience, or reviewing budget.</li>
<li>Jump to the area that needs attention.</li>
<li>Make updates without searching through the campaign setup.</li>
</ul>
<ol>
<li><strong>Prioritized guidance before publishing</strong> – The panel highlights what to address first before launching.</li>
</ol>
<ul>
<li>Surfaces the most important improvement areas.</li>
<li>Helps you focus on higher-impact fixes first.</li>
<li>Supports a clearer review and publish process.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Create or edit a <strong>Meta campaign</strong> in Ad Manager.</li>
<li>Complete the campaign setup.</li>
<li>Open the <strong>Review</strong> screen before publishing.</li>
<li>Check the <strong>Opportunity Score</strong>.</li>
<li>Open the score panel to review suggested improvements.</li>
<li>Select a recommendation to navigate to the relevant setup area.</li>
<li>Make updates as needed and continue publishing.</li>
</ol>
<h2>Why this feature</h2>
<p>Before publishing a campaign, it may not be clear whether the setup is complete or optimized enough to launch. Opportunity Score helps by:</p>
<ul>
<li>Making campaign readiness easier to understand.</li>
<li>Highlighting missing or weak setup areas.</li>
<li>Guiding you to the right place to make improvements.</li>
<li>Reducing guesswork during the campaign review process.</li>
</ul>
<h2>What’s next</h2>
<p>Planned improvements include:</p>
<ul>
<li>Updates to Opportunity Score accuracy and recommendation quality.</li>
<li>Polish around score refresh behavior and loading states.</li>
<li>Better handling of edge cases across multiple ad sets and ads.</li>
<li>Future support for <strong>post-publish Opportunity Score</strong> using <strong>Meta-sourced recommendations</strong>.</li>
<li>Potential expansion to other platforms such as Google and LinkedIn with separate scoring models.</li>
</ul>
<h2>Notes</h2>
<ol>
<li>Opportunity Score is currently available for Meta campaigns only.</li>
<li>The score is shown before publishing on the Review screen.</li>
<li>Opportunity Score is a guidance tool and does not guarantee campaign performance.</li>
<li>Recommendations do not make automatic changes. You choose which updates to apply.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1219', 'SMS notifications are now available for rentals', 'Overview You can now send SMS notifications for rental bookings. This gives you more flexibility for confirmations, reminders, and other updates. SMS can help improve attendance and keep clients and your team informed in real time. What’s new SMS support for rental booking events...', '<h2>Overview</h2>
<p>You can now send SMS notifications for rental bookings. This gives you more flexibility for confirmations, reminders, and other updates. SMS can help improve attendance and keep clients and your team informed in real time.</p>
<h2>What’s new</h2>
<ul>
<li>SMS support for rental booking events: unconfirmed, booked, canceled, rescheduled, reminder, follow-up</li>
<li>Recipient options: send messages to the contact or the business</li>
<li>Separate templates per recipient (Contacts vs. Business)</li>
<li>Default templates included, with options to customize, select an existing template, or create a new one</li>
<li>Send a test SMS to preview the message before enabling it</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Calendar Settings &gt; Rentals &gt; Global settings &gt; Notifications</strong></li>
<li>Edit a notification type, open the <strong>SMS</strong> tab, and enable the <strong>SMS toggle</strong></li>
<li>Select recipients (Contact and/or Business)</li>
<li>Select the SMS template</li>
<li>Send a test SMS</li>
<li>Save your settings</li>
</ol>
<h2>Why this matters</h2>
<ul>
<li>Helps increase show-up rates with faster communication</li>
<li>Lets businesses choose how to notify different recipients</li>
<li>Reduces manual follow-ups</li>
<li>Gives more control over template messaging and delivery</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:09.000Z'),
('wp-1218', 'WhatsApp notifications are now available for rentals', 'Overview WhatsApp is now available as a notification channel for rentals. This provides a direct way to reach clients on a widely used messaging platform. What’s included WhatsApp support for rental notifications: Available for Unconfirmed, Booked, Canceled, Rescheduled, Reminder...', '<h2>Overview</h2>
<p>WhatsApp is now available as a notification channel for rentals. This provides a direct way to reach clients on a widely used messaging platform.</p>
<h2>What’s included</h2>
<ul>
<li><strong>WhatsApp support for rental notifications:</strong> Available for Unconfirmed, Booked, Canceled, Rescheduled, Reminder, and Follow-up notifications. You can enable it per notification.</li>
<li><strong>Recipient options:</strong> Send WhatsApp messages to either Contacts or Business so you can choose who receives each notification.</li>
<li><strong>Templates by recipient:</strong> Use different WhatsApp templates for Contacts vs. Business.</li>
<li><strong>Template selection and creation:</strong> Each notification type includes a default template. You can keep it, choose an existing approved template, or create a new one in the template builder. Use the “Fetch WhatsApp templates” option to refresh the list.</li>
<li><strong>Send a test message:</strong> Send a test WhatsApp notification to confirm the message before turning it on for live bookings.</li>
</ul>
<h2>How to set it up</h2>
<ol>
<li>Go to <strong>Calendar Settings &gt; Rentals &gt; Global settings &gt; Notifications</strong>.</li>
<li>For each notification type, turn <strong>WhatsApp</strong> on.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;