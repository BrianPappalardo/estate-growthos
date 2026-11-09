INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>What’s new</h2>
<h3>Community Analytics dashboard</h3>
<p>A dedicated analytics section is available under <strong>Settings → Analytics</strong>. It provides a single view of key community performance data.</p>
<h3>Key performance metrics</h3>
<p>The dashboard includes headline metrics such as:</p>
<ul>
<li><strong>Total Earnings</strong>: Net transaction revenue attributed to the community (purchases minus refunds/chargebacks), shown in the sub-account’s currency.</li>
<li><strong>Total Members</strong>: Current active membership count, with new joins in the selected period shown separately.</li>
<li><strong>Inactive Members</strong>: Active members with no tracked activity in the selected period. Includes an export option to download inactive members as a CSV for follow-up.</li>
<li><strong>Invitations Pending</strong>: Email invites still outstanding as of the end of the selected date range.</li>
</ul>
<p>Metrics also include a comparison against the previous equal-length period. If the prior period value is 0, the dashboard shows N/A for the comparison.</p>
<h3>Date filters</h3>
<p>You can filter the entire dashboard by date range, including Today, Yesterday, 7 days, 30 days, 90 days, 12 months, or a custom range. The default view is the last 30 days.</p>
<h3>Traffic sources</h3>
<p>Traffic is broken down by source (for example: Direct, Instagram, YouTube, Facebook, LinkedIn, and Other). The dashboard shows the top sources by volume and groups the remainder into Other.</p>
<h3>Peak activity hours</h3>
<p>A day-by-hour heatmap shows when members are most active, based on the community’s timezone. Use this to schedule posts, events, and live sessions when engagement is highest.</p>
<h3>Engagement</h3>
<p>Engagement reporting includes Posts, Comments, and Reactions, plus additional interactions such as poll votes and event RSVPs. A trend chart shows total interactions over the selected date range and compares it to the prior period.</p>
<h2>How to access</h2>
<ol>
<li>Open your community settings.</li>
<li>Select <strong>Analytics</strong> from the left sidebar.</li>
<li>Choose a date range using the filter at the top.</li>
<li>Review metrics, traffic, peak hours, and engagement.</li>
<li>Use the export option under Inactive Members if you need a CSV for outreach.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Traffic page-view capture is rolling out. Counts populate as visits are recorded going forward; historical traffic is not backfilled.</li>
<li>Unique visitors are counted by user ID, with a hashed IP fingerprint as a fallback. Bots and crawlers are excluded.</li>
<li>Time buckets use the community’s configured timezone.</li>
<li>Earnings are shown in the sub-account’s local currency.</li>
<li>Additional improvements to Community Analytics are planned based on feedback from this release.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T16:32:19.000Z'),
('wp-1683', 'Paid channels for communities', 'Private channels can now be visible, paid, or both. This makes it easier to promote private spaces and offer paid access without manual steps. What’s new Visible private channels When creating or editing a private channel, admins can choose one of these visibility modes: Visible:...', '<p>Private channels can now be visible, paid, or both. This makes it easier to promote private spaces and offer paid access without manual steps.</p>
<h2>What’s new</h2>
<h3>Visible private channels</h3>
<p>When creating or editing a private channel, admins can choose one of these visibility modes:</p>
<ul>
<li><strong>Visible:</strong> The channel appears in the sidebar for all members. Non-members can see the channel name and description, but they can’t access posts until they join.</li>
<li><strong>Hidden:</strong> The channel stays off the list for non-members, keeping it fully private.</li>
</ul>
<p>Visible private channels appear in the sidebar with a lock indicator until someone joins.</p>
<h3>Paid private channels</h3>
<p>Admins can charge members to join a private channel. During channel creation, choose one of these pricing options:</p>
<ul>
<li><strong>Free:</strong> No charge to join (default).</li>
<li><strong>Recurring:</strong> Monthly and/or annual subscription.</li>
<li><strong>One-time:</strong> A single payment for permanent access.</li>
</ul>
<p>Recurring pricing supports multiple currencies with configurable monthly and annual pricing. Test Mode is available to verify the payment flow before going live.</p>
<h3>Self-serve member payment flow</h3>
<p>When a member clicks a visible paid channel, they can review the channel details (description, member count, and managers) and complete payment to join. Members choose a billing cycle, enter billing details, and submit payment without requiring manual access.</p>
<h3>Mobile support</h3>
<p>Paid channels are supported in the mobile app. Members can review paid channel details and complete enrollment from their phone.</p>
<h2>How to configure</h2>
<ul>
<li>Click the + button next to Channels in the sidebar.</li>
<li>Select <em>Create a channel</em> for conversations and updates.</li>
<li>Step 1/2: Set the channel name, icon, and description. Enable <em>Private channel</em>, then choose <em>Visible</em> or <em>Hidden</em>. Optionally enable <em>Read Only Channel</em>.</li>
<li>Step 2/2: Select pricing (Free, Recurring, or One-time). For paid channels, configure currency, billing options (monthly/annually), and pricing. Optionally enable <em>Test Mode</em>.</li>
<li>Click <em>Create Channel</em>.</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, private channels were always hidden and free, which limited how admins could promote exclusive content or charge for access. With visible and paid options, admins can surface private spaces in the sidebar and allow members to pay and join on their own.</p>
<h2>Notes</h2>
<ul>
<li>Paid channels support recurring (monthly/annually) and one-time pricing.</li>
<li>Multiple currencies are supported.</li>
<li>Test Mode lets admins verify the payment flow without real charges.</li>
<li>Read-only channels can also be made visible and/or paid.</li>
<li>Available on both web and mobile.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-11-02T12:32:06.000Z'),
('wp-1682', 'Multiple pricing plans in Leadli Communities', 'Community monetization has been upgraded. You can now create multiple pricing plans with different benefits and access levels inside a single community. This lets you offer options like Basic, Pro, and VIP without splitting your community. Create and manage multiple pricing plans...', '<p>Community monetization has been upgraded. You can now create multiple pricing plans with different benefits and access levels inside a single community. This lets you offer options like Basic, Pro, and VIP without splitting your community.</p>
<h2>Create and manage multiple pricing plans</h2>
<p>Create pricing plans from <strong>Settings &gt; Subscriptions</strong>. Each plan can have its own name, description, price, billing frequency, currency, and benefits.</p>
<p>You can also:</p>
<ul>
<li>Activate or deactivate plans</li>
<li>Reorder plans</li>
<li>Highlight a plan as <strong>Most Popular</strong></li>
<li>View member counts for each plan</li>
</ul>
<h2>Bundle access and content into plans</h2>
<p>Each plan can include access to specific items so members get the right experience automatically. Configure what is included during plan creation (Benefits tab):</p>
<ul>
<li><strong>Private channels</strong> (grant access to selected private channels)</li>
<li><strong>Paid events</strong> (include events without separate purchases)</li>
<li><strong>Paid and private courses</strong> (bundle courses without manual access grants)</li>
</ul>
<p>Example: Basic includes general access, Pro adds private channels and premium courses, and VIP includes everything (including paid events).</p>
<h2>Let members switch plans</h2>
<p>Members can compare available plans, subscribe, and switch plans at any time. Their current subscription remains active until the new one is confirmed. They can also review their plan details, payment method, and next billing date from the subscription management page.</p>
<h2>How to configure</h2>
<ol>
<li>Go to <strong>Settings &gt; Subscriptions</strong>.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;