INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>Why it matters</h2>
<ul>
<li>More flexibility when styling buttons</li>
<li>Easier to create modern, dynamic designs</li>
<li>Customize buttons without custom code</li>
<li>Existing button styles continue to work</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-22T15:41:35.000Z'),
('wp-1090', 'Load the chat widget after visitor interaction', 'What’s new A new Load on user interaction toggle is available in Chat Widget > Chat Window tab > Additional Options . When enabled, the chat widget delays loading until a visitor interacts with the website. This can improve initial page performance by reducing widget loading duri...', '<h2>What’s new</h2>
<ul>
<li>A new <strong>Load on user interaction</strong> toggle is available in <strong>Chat Widget &gt; Chat Window tab &gt; Additional Options</strong>.</li>
<li>When enabled, the chat widget delays loading until a visitor interacts with the website.</li>
<li>This can improve initial page performance by reducing widget loading during page render.</li>
<li>Existing widgets keep the current behavior unless this toggle is enabled.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Go to <strong>Sites &gt; Chat Widget Builder</strong>.</li>
<li>Open the <strong>Chat Window</strong> tab for the chat widget you want to update.</li>
<li>Under <strong>Additional Options</strong>, enable <strong>Load on user interaction</strong>.</li>
<li>After it is enabled, the widget loads after a visitor interaction such as scroll, click, or touch. If there is no interaction, the widget loads automatically after a fallback delay (about 8 seconds).</li>
<li>If the toggle is disabled or not configured, the widget loads immediately as it does today.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Reduces immediate script execution during page load.</li>
<li>Can improve user experience, especially on mobile devices.</li>
<li>Keeps the widget available while minimizing impact on page speed.</li>
<li>Gives businesses more flexibility in balancing performance and customer engagement.</li>
</ul>
<h2>Notes</h2>
<ul>
<li>Existing widgets will continue using immediate load behavior unless the setting is enabled.</li>
<li>This applies to customer-facing chat widgets placed on a website or other digital property.</li>
<li>Fallback auto-load behavior helps ensure the widget is still available even without interaction.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-22T15:41:17.000Z'),
('wp-1089', 'Integration setup is smoother with field previews', 'What’s new Leadli now uses a shared integration experience for workflow actions and triggers. Steps that use integrations show required fields up front, help you connect the right account without leaving the workflow, and support multiple connected accounts when available. How it...', '<p><strong>What’s new</strong></p>
<p>Leadli now uses a shared integration experience for workflow actions and triggers. Steps that use integrations show required fields up front, help you connect the right account without leaving the workflow, and support multiple connected accounts when available.</p>
<p><strong>How it works</strong></p>
<p>If an integration is not connected, the action or trigger panel shows a connection banner and a locked preview of the fields. Selecting <em>Connect your account</em> opens the integration setup in a new browser tab so you can finish connecting without losing your place. After you connect, the fields unlock and the selected account appears in the action or trigger.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open an integration-based action or trigger in a workflow.</li>
<li>Select <em>Connect your account</em> if no account is connected.</li>
<li>Choose the connected account and complete the field setup.</li>
</ul>
<p><strong>Why we built it</strong></p>
<p>Previously, it was common to find out an integration was missing only after saving a workflow, with limited guidance on what to do next. It was also hard to see which fields and options an integration supports before connecting an account. This update reduces setup errors and makes integration-based steps easier to understand.</p>
<p><strong>Examples</strong></p>
<ul>
<li>When someone opens a Typeform action from a workflow template, they can review the available fields before connecting their account, and then update the configuration after connecting.</li>
<li>When someone opens a Slack action with multiple connected accounts, they can choose the correct account from the dropdown and the available connections reload for that account.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Field options can appear as a preview before an integration is connected.</li>
<li>If a connected account is removed or becomes invalid, the step returns to a locked, connection-required state.</li>
<li>Some apps load fields in stages after connection based on earlier selections.</li>
<li>Dynamic fields that depend on the selected account can reset when the account changes.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:40:57.000Z'),
('wp-1088', 'Conditional visibility improvements', 'Conditional visibility is now more flexible and easier to manage, with support for layouts and value-based conditions. What’s changed Visibility rules for layouts : You can apply conditional visibility to an entire layout instead of setting rules on each element. Layouts now incl...', '<p>Conditional visibility is now more flexible and easier to manage, with support for layouts and value-based conditions.</p>
<h3>What’s changed</h3>
<ul>
<li><strong>Visibility rules for layouts</strong>: You can apply conditional visibility to an entire layout instead of setting rules on each element. Layouts now include a dedicated Visibility tab next to Edit. This is also available in HighRise.</li>
<li><strong>New value-based operators</strong>: You can now use <code>IS EMPTY</code> and <code>IS PRESENT</code> for more dynamic conditions. All custom fields, including attachment fields, are supported in the conditional visibility field selector.</li>
</ul>
<h3>Example use cases</h3>
<ul>
<li>Show a “Download Invoice” button only when an attachment field <code>IS PRESENT</code>.</li>
<li>Hide a personalized greeting when <code>first_name</code> is <code>EMPTY</code>.</li>
</ul>
<h3>Impact</h3>
<ul>
<li>Reduces repetitive rule setup across multiple elements.</li>
<li>Helps handle empty or missing field values more cleanly.</li>
<li>Allows entire sections to hide gracefully.</li>
<li>Makes conditional visibility more powerful while preserving existing behavior.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Select a layout or element in the email builder.</li>
<li>Open the Visibility tab.</li>
<li>Choose the field you want to evaluate.</li>
<li>Select a condition (<code>IS</code>, <code>IS NOT</code>, <code>IS EMPTY</code>, or <code>IS PRESENT</code>).</li>
<li>If needed, set the required value and save.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:39:24.000Z'),
('wp-1087', 'Conversation logs for contact preference updates', 'Update: Conversation logs are now created when a contact communication preference is changed. These preference updates will appear directly in the Conversations view when the change is made by either: the contact a user on the contact’s behalf What changed Preference status updat...', '<p><strong>Update:</strong> Conversation logs are now created when a contact communication preference is changed.</p>
<p>These preference updates will appear directly in the Conversations view when the change is made by either:</p>
<ul>
<li>the contact</li>
<li>a user on the contact’s behalf</li>
</ul>
<p><strong>What changed</strong></p>
<ul>
<li>Preference status updates are now logged in Conversations.</li>
<li>This improves visibility into when and how preferences were updated.</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;