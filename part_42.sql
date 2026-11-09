INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Clear next steps:</strong> Each reason explains what happened in plain language and lists the actions to take.</li>
<li><strong>Clear when the issue is platform-generated:</strong> If a rejection is caused by wording the platform generates (for example, consent text), the guidance will say so and point you to support.</li>
<li><strong>Required carrier wording included:</strong> When carriers require specific statements (such as for privacy policy verification), the guidance includes the exact text.</li>
<li><strong>Warning when resubmitting will not help:</strong> For issues like a business type mismatch, the guidance explains what must be corrected before resubmission.</li>
</ul>
<p><strong>Why this matters</strong></p>
<p>More accurate guidance helps you fix the right issue on the first try and resubmit with fewer delays.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T14:22:49.000Z'),
('wp-1551', 'AI Studio adds site analytics and form submission tracking', 'Your published Leadli AI Studio sites now include built-in analytics. You can review site performance and see every form submission with links to the related contact record. Analytics inside each project Open Your project → More → Analytics → Overview to see page views, unique vi...', '<p>Your published Leadli AI Studio sites now include built-in analytics. You can review site performance and see every form submission with links to the related contact record.</p>
<h2>Analytics inside each project</h2>
<p>Open <strong>Your project → More → Analytics → Overview</strong> to see page views, unique visitors, opt-ins, and opt-in rate, along with trends for the selected time period. You can also review top pages, time on page, traffic sources, devices, browsers, and visitor locations.</p>
<h2>Form submissions in one place</h2>
<p>Open <strong>Your project → More → Analytics → Form Submissions</strong> to view all leads collected through your site forms. Filter by form and date, and open the linked contact record when needed.</p>
<h2>Compare all sites in Sites Analytics</h2>
<p>Go to <strong>Sites → Analytics → AI Studio</strong> to see AI Studio sites alongside Funnels and Websites, or select a single project to focus on.</p>
<h2>Track where each lead came from</h2>
<p>In <strong>Contacts → Contact details → Activity</strong>, contacts created from your site include visit history, including pages viewed, traffic source, and the form submitted.</p>
<h2>Reconnect forms to capture the full visitor path</h2>
<p>Submissions from previously connected forms will continue to be counted. To link new submissions to the pages a visitor viewed first, reconnect form tracking in AI Studio and publish your site again.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T13:23:41.000Z'),
('wp-1550', 'Reviews AI agents are more flexible and customizable', 'What is new Leadli has updated Reviews AI agents with additional controls to improve response quality, brand consistency, and safety. This update adds brand voice controls, quality guardrails, sensitive review holds, and a live response preview. These changes help you review and ...', '<p><strong>What is new</strong></p>
<p>Leadli has updated Reviews AI agents with additional controls to improve response quality, brand consistency, and safety.</p>
<p>This update adds brand voice controls, quality guardrails, sensitive review holds, and a live response preview. These changes help you review and adjust AI-generated replies before they are published.</p>
<p><strong>Key capabilities</strong></p>
<ol>
<li><strong>Brand voice controls</strong><br />You can fine-tune how each AI agent sounds by setting the response style (&#8220;we&#8221; or &#8220;I&#8221;), business name, tone traits, response length/character limits, and sign-off preferences.</li>
<li><strong>Quality guardrails</strong><br />You can enable guardrails to help keep responses consistent and reduce risky output. Options include remembering recent responses, avoiding repeated opening lines, and avoiding risky language such as refund promises, guarantees, fault admissions, liability statements, or medical and financial advice.</li>
<li><strong>Hold sensitive reviews for human review</strong><br />You can hold higher-risk reviews for human review before posting, adding an extra layer of oversight where it matters most.</li>
<li><strong>Live response preview</strong><br />You can preview example responses (positive, neutral, and negative) before saving. Responses can be regenerated as you adjust tone and other settings.</li>
</ol>
<p><strong>Why it matters</strong></p>
<ul>
<li>Keeps AI responses aligned with your brand voice</li>
<li>Reduces repetitive and potentially risky responses</li>
<li>Adds human oversight for sensitive review scenarios</li>
<li>Makes it easier to test and fine-tune agents before going live</li>
<li>Gives you more confidence when automating review responses</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-10-08T11:54:53.000Z'),
('wp-1549', 'Social Planner: Publish Community posts with the public API', 'Developers and integration partners can now schedule and publish Community posts using the Social Planner public API. You can also choose which Community member the post is published as. What’s included List Community members Search members by name Paginate through member lists O...', '<p>Developers and integration partners can now schedule and publish Community posts using the Social Planner public API. You can also choose which Community member the post is published as.</p>
<p><strong>What’s included</strong></p>
<p><strong>List Community members</strong></p>
<ul>
<li>Search members by name</li>
<li>Paginate through member lists</li>
<li>Only active members with publishing permission are returned</li>
<li>Private Communities return only members of that specific group</li>
</ul>
<p><strong>Validate member eligibility</strong></p>
<p>Before scheduling a post, you can confirm a selected member is still active and authorized to publish in the Community.</p>
<p><strong>Publish as a specific member</strong></p>
<p>When creating a Community post through the API, you can specify which eligible member the post should be published as.</p>
<p><strong>Publish-time verification</strong></p>
<p>Social Planner performs a final eligibility check before publishing. If the selected member has left the Community or lost permission, the post will fail with a clear error instead of publishing under the wrong identity.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Connect a Community group in Marketing → Social Planner → Settings → Social Accounts</li>
<li>Use Get Accounts to retrieve the Community account ID</li>
<li>Use Get Community Members to retrieve eligible members</li>
<li>Select the member you want to publish as</li>
<li>Create the post using the Community post API</li>
<li>(Optional) Validate the member before scheduling</li>
<li>Social Planner verifies the member again before publishing</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Enable Community publishing through marketplace apps and custom integrations</li>
<li>Automate Community announcements from external workflows</li>
<li>Ensure posts are published by an eligible member</li>
<li>Catch invalid member selections before publishing</li>
<li>Get clear error messages instead of silent failures</li>
<li>Bring Community posting closer in capability to other social channels</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Community account connection and management remain available in the Leadli UI.</li>
<li>The public API supports member listing, member validation, scheduling, and publishing.</li>
<li>Draft posts don’t require a post-as-user selection.</li>
<li>Member eligibility is checked when posts are scheduled or published.</li>
<li>The selected member must remain active and permitted in the Community at publish time.</li>
<li>API access requires the appropriate Social Planner scopes.</li>
</ul>
<p>Documentation is available in the Leadli Marketplace developer docs.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-10-08T07:24:44.000Z'),
('wp-1548', 'Improved notifications for recurring appointments', 'Overview Notifications for recurring appointments are now more consistent across default and custom recurrence patterns. When a recurring appointment is booked, a single confirmation can cover the entire series. Reminders and follow-ups still send for each occurrence. What change...', '<h2>Overview</h2>
<p>Notifications for recurring appointments are now more consistent across default and custom recurrence patterns. When a recurring appointment is booked, a single confirmation can cover the entire series. Reminders and follow-ups still send for each occurrence.</p>
<h2>What changed</h2>
<ul>
<li><strong>One confirmation per series (default recurring appointments):</strong> A confirmation or unconfirmed notification is sent once per booking and covers the full series. Previously, a confirmation could be sent for each occurrence.</li>
<li><strong>Confirmations for custom recurring appointments:</strong> Custom recurring appointments created in the app now send a confirmation or unconfirmed notification once per booking, covering the whole series.</li>
<li><strong>Reminders and follow-ups for every occurrence:</strong> Reminders and follow-ups continue to be scheduled for each occurrence and now apply to custom recurring appointments as well.</li>
<li><strong>Reschedule and cancellation notifications for custom recurrences:</strong> Notifications are sent based on the scope you choose when making changes: This appointment (single occurrence), All appointments (entire series), or This and following (series from that point forward).</li>
<li><strong>Recurrence details in notifications:</strong> For custom recurrences, notifications can include the recurrence pattern alongside the date and time (for example, “October 14, 2026 12:00 PM (recurs every Thursday)”).</li>
</ul>
<h2>How to use</h2>
<p>No setup is required. These updates apply automatically to newly booked appointments and to appointments that are edited.</p>
<ul>
<li><strong>Default recurring appointments:</strong> Confirmations are sent once per booking; reminders and follow-ups send for each occurrence.</li>
<li><strong>Custom recurring appointments:</strong> Confirmations, reminders, follow-ups, and change notifications follow the scope you select when making updates.</li>
<li><strong>Including recurrence details:</strong> To show recurrence details, ensure your notification template uses the appointment date and time custom value.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;