INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>You can’t edit comments from Social Planner</li>
<li>Edits made on the native platform will reflect in Social Planner</li>
<li>Maximum comment length is 8000 characters</li>
</ul>


<p class="wp-block-paragraph"></p>
', 'courses', ARRAY['wp-import']::text[], '2026-04-23T14:10:45.000Z'),
('wp-944', 'Custom object templates to set up your CRM faster', 'Custom Objects are now easier to set up with Custom Object Templates. These are pre-built, industry-specific configurations you can apply in one step. Each template includes custom objects, fields (organized into folders), and associations so you can start using your CRM faster. ...', '<p>Custom Objects are now easier to set up with Custom Object Templates. These are pre-built, industry-specific configurations you can apply in one step. Each template includes custom objects, fields (organized into folders), and associations so you can start using your CRM faster.</p>
<p><strong>What’s included</strong></p>
<ul>
<li>Pre-configured custom objects with industry-relevant fields</li>
<li>Fields grouped into folders for simpler navigation</li>
<li>Associations that connect records to the right contacts and companies</li>
</ul>
<p><strong>Available templates</strong></p>
<ul>
<li>Real Estate: Properties and Transactions</li>
<li>Insurance: Policies and Claims</li>
<li>Automotive: Vehicles and Service Orders</li>
<li>SaaS: Subscriptions and Billing</li>
<li>Events: Events and Tickets</li>
<li>Pets: Pets and Pet Care</li>
<li>Home Services: Service Jobs and Projects</li>
</ul>
<p><strong>How to use</strong></p>
<ol>
<li>Go to Settings → Objects.</li>
<li>Select Add Custom Object → Use a template.</li>
<li>Choose a template, preview it, then select Import objects to apply it.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-04-22T18:35:31.000Z'),
('wp-941', 'Opportunity Smart Lists', 'Managing opportunities is now more flexible. You can create Opportunity Smart Lists to save a custom opportunity view with your preferred filters, sorting, and visible fields. You can reuse the same view any time without setting it up again. This makes it easier for teams to swit...', '<p>Managing opportunities is now more flexible.</p>
<p>You can create <strong>Opportunity Smart Lists</strong> to save a custom opportunity view with your preferred filters, sorting, and visible fields. You can reuse the same view any time without setting it up again.</p>
<p>This makes it easier for teams to switch between the opportunity views they use most.</p>
<h2>What’s new</h2>
<ul>
<li>Opportunity Smart Lists are available inside Opportunities.</li>
<li>You can save advanced filters, sort order, and visible fields.</li>
<li>You can create Smart Lists in Board view or List view.</li>
<li>You can choose where a Smart List appears: all pipelines or selected pipelines only.</li>
<li>You can set a Smart List as the default view for specific pipelines.</li>
<li>Default views apply for all users in the sub-account.</li>
<li>You can duplicate an existing Smart List.</li>
<li>You can export Smart List results to CSV.</li>
<li>You can share Smart Lists with admins only, all users, or selected users.</li>
<li>You can give shared users view access or edit access.</li>
<li>You can copy and share a direct link to a Smart List.</li>
<li>You can save updates to the same Smart List or save them as a new one.</li>
<li>A Manage Smart Lists page is available to view all Smart Lists in one place.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Turn on <strong>Opportunity Smart Lists – Views &amp; Defaults</strong> in <strong>Subaccount Labs</strong>.</li>
<li>Go to <strong>Opportunities</strong>.</li>
<li>Create a Smart List in Board view or List view.</li>
<li>Set the filters, sorting, and fields you want.</li>
<li>Select which pipelines the Smart List should appear in.</li>
<li>Name the Smart List and save it.</li>
<li>Reopen it any time to edit, share, export, or duplicate it.</li>
<li>Use <strong>Customize list</strong> to manage settings such as Show in, Default view, Duplicate, Export, Sharing &amp; Permissions, and Delete List.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces repetitive setup for teams working in Opportunities.</li>
<li>Makes it easier to return to the exact views you use most.</li>
<li>Helps standardize pipeline views across users.</li>
<li>Makes it easier to share important filtered views.</li>
<li>Gives admins more control over how opportunity views are organized.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>This feature is currently available in<strong> Labs (Settings -&gt; Labs)</strong>.</li>
<li>By default, Smart Lists are shared with admins only.</li>
<li>Users with edit access can also change sharing permissions.</li>
<li>Default views are set at the sub-account level, not per individual user.</li>
</ul>
<h2>Feedback</h2>
<p>This is a highly requested feature. Enable it in Labs and share your feedback as you start using it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-22T15:35:02.000Z'),
('wp-935', 'WhatsApp calling (closed beta)', 'WhatsApp Calling lets your team have live voice conversations with customers directly inside the same WhatsApp chat thread. This is useful when a customer is stuck, frustrated, or ready to buy and a short call is faster than a long message exchange. Getting access WhatsApp Callin...', '<p>WhatsApp Calling lets your team have live voice conversations with customers directly inside the same WhatsApp chat thread. This is useful when a customer is stuck, frustrated, or ready to buy and a short call is faster than a long message exchange.</p>
<p>Getting access<br />
WhatsApp Calling is in closed beta. Contact us for access.</p>
<p>What’s included<br />
1) Inbound and outbound calling in WhatsApp<br />
&#8211; Make and receive calls from within the WhatsApp conversation view.<br />
&#8211; Customers stay in the same chat thread without switching apps or sharing a separate phone number.</p>
<p>2) Call actions for customers<br />
&#8211; Callback requests: if a call is missed, customers can request a callback.<br />
&#8211; Call permission prompts: automation can request calling permission when the service window is open.<br />
&#8211; Template-based permission requests: when the service window is closed, send an approved template to request permission before calling.</p>
<p>3) Availability controls<br />
&#8211; Set available hours for when your team can receive calls.<br />
&#8211; Set temporary unavailable hours for meetings, training, and breaks.</p>
<p>Industry examples<br />
&#8211; Real estate: quickly explain a listing and book a showing.<br />
&#8211; Home services: assess urgency, give a rough quote, and dispatch faster.<br />
&#8211; Healthcare: handle sensitive questions with clearer communication.<br />
&#8211; E-commerce: recover high-intent carts when buyers have questions.<br />
&#8211; Education: run consultations and support calls in the same thread.<br />
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;