INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1197', 'Contact detail page customization updates', 'Overview These updates improve Contact detail page customization so you can adjust layouts, use space more efficiently, and tailor the contact record to your team’s workflow while keeping the experience clean and consistent. What’s new Resizable panels Panels can now be resized t...', '<p><strong>Overview</strong></p>
<p>These updates improve Contact detail page customization so you can adjust layouts, use space more efficiently, and tailor the contact record to your team’s workflow while keeping the experience clean and consistent.</p>
<p><strong>What’s new</strong></p>
<ol>
<li><strong>Resizable panels</strong>
<ul>
<li>Panels can now be resized to better fit your workflow.</li>
<li>The left panel can be expanded as needed and is no longer limited to a narrow width.</li>
</ul>
</li>
<li><strong>Owners and Followers managed separately</strong>
<ul>
<li>Owners and Followers can now be managed independently.</li>
<li>You can show only Owners, only Followers, both, or neither on the contact card.</li>
</ul>
</li>
<li><strong>Custom fields on the contact card</strong>
<ul>
<li>You can add up to two custom fields directly to the contact card for quick visibility.</li>
<li>These fields display in read-only mode.</li>
<li>To edit values, continue using the <strong>All fields</strong> tab.</li>
</ul>
</li>
<li><strong>Flexible tag placement</strong>
<ul>
<li>Tags no longer need to take up space on the contact card.</li>
<li>You can choose to show tags in the left panel or the center panel.</li>
</ul>
</li>
<li><strong>Customizable tabs</strong>
<ul>
<li>The <strong>Actions</strong> and <strong>All fields</strong> tabs can be renamed.</li>
<li>Tabs can be reordered to match your workflow.</li>
</ul>
</li>
<li><strong>Dynamic tabs expanded by default</strong>
<ul>
<li>Modules placed within a Dynamic Tab will be expanded and visible by default when the tab is opened.</li>
</ul>
</li>
</ol>
<p><strong>What’s next</strong></p>
<ul>
<li>Support for placing the same module more than once on the same page, in any panel.</li>
<li>User permissions for adding or editing customized views.</li>
<li>When clicking the email icon, the Leadli email composer will open instead of the system default email composer.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1196', 'Meta Special Ad Categories: Default settings and compliance warnings', 'Summary Ad Manager now provides guidance for Meta Special Ad Category campaigns. When you select a Special Ad Category, you will see notices, audience guidelines, and field-level warnings that help you spot targeting values that may not meet Meta’s compliance requirements. This h...', '<h2>Summary</h2>
<p>Ad Manager now provides guidance for Meta Special Ad Category campaigns. When you select a Special Ad Category, you will see notices, audience guidelines, and field-level warnings that help you spot targeting values that may not meet Meta’s compliance requirements.</p>
<p>This helps reduce publishing failures caused by Special Ad Category restrictions.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Campaign guidance:</strong> An informational notice appears when a Special Ad Category is selected.</li>
<li><strong>Audience compliance banner:</strong> Ad set targeting indicates whether audience values look compliant or need attention.</li>
<li><strong>Guidelines section:</strong> Key Special Ad Category targeting rules are available within Audience controls.</li>
<li><strong>Field-level warnings:</strong> Targeting values that may be non-compliant are highlighted near the relevant field.</li>
<li><strong>Fix it action:</strong> You can apply recommended compliant values with one click.</li>
<li><strong>Non-blocking flow:</strong> You can continue building the campaign, but Ad Manager warns when values may cause publishing to fail.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Create or edit a Meta campaign in Ad Manager.</li>
<li>Select a <strong>Special Ad Category</strong> at the campaign level.</li>
<li>Review the notice shown under the category field.</li>
<li>Open the ad set <strong>Audience controls</strong>.</li>
<li>Review the compliance banner and guidelines.</li>
<li>Use <strong>Fix it</strong> or update the targeting values manually if warnings appear.</li>
<li>Continue to Review and Publish.</li>
</ol>
<h2>Why this feature exists</h2>
<p>Meta applies targeting restrictions to campaigns related to housing, employment, credit, financial products, and social issues, elections, or politics. If these requirements are missed, campaigns can fail during publishing.</p>
<p>This update provides clearer guidance while you build the campaign so you can address issues before publishing.</p>
<h2>Notes</h2>
<ul>
<li>This release applies to Meta campaigns in Ad Manager.</li>
<li>Warnings are advisory and do not block you from proceeding.</li>
<li>Ad Manager does not automatically change targeting values. You choose whether to apply fixes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:18.000Z'),
('wp-1235', 'Services (v2): Payment improvements', 'This update improves the Services payment checkout experience. Customers have more flexibility at checkout, and deposit calculations are more accurate. What''s included Let customers choose deposit or full payment You can enable a setting that lets customers choose how they want t...', '<p>This update improves the Services payment checkout experience. Customers have more flexibility at checkout, and deposit calculations are more accurate.</p>
<h2>What&#8217;s included</h2>
<h3>Let customers choose deposit or full payment</h3>
<ul>
<li>You can enable a setting that lets customers choose how they want to pay during checkout.</li>
<li>If enabled and a service has a deposit configured, customers will see two options: <strong>Pay Deposit</strong> or <strong>Pay Full Amount</strong>.</li>
<li>This is available only when <strong>Online Payments</strong> are enabled and the service has a deposit configured.</li>
<li>If the setting is disabled, checkout stays deposit-only (the current behavior).</li>
</ul>
<h3>Better support for Buy Now, Pay Later (BNPL)</h3>
<ul>
<li>Customers who want financing can choose to pay the <strong>full service amount</strong>, so supported Buy Now, Pay Later (BNPL) providers can finance the full booking instead of only the deposit.</li>
<li>This provides a smoother checkout experience and more payment flexibility.</li>
</ul>
<h3>More accurate deposit calculations</h3>
<ul>
<li>Percentage-based deposits are calculated using the <strong>final payable amount after discounts</strong>.</li>
<li>If a coupon is added, removed, or changed during checkout, the deposit amount is recalculated automatically.</li>
<li>Deposit calculations now include <strong>applicable add-ons and taxes</strong> based on the configured deposit percentage.</li>
<li>Flat deposit amounts are unchanged.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;