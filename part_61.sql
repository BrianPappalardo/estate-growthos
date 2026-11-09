INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Share contact info button on templates:</strong> Add a “Share contact info” button to utility and marketing WhatsApp templates. When the customer taps it, their phone number is shared and saved on their contact record.</li>
<li><strong>Request contact info from workflows:</strong> Send the same request as an interactive WhatsApp message from a workflow step so you can ask for the number automatically.</li>
<li><strong>Duplicate-safe capture:</strong> The shared phone number is only added when no existing contact already has that number, helping prevent duplicate records.</li>
</ul>
<h3>WhatsApp calling</h3>
<ul>
<li><strong>Username support on WhatsApp calling:</strong> WhatsApp calling now works for contacts who use usernames, so they can stay in your calling process.</li>
</ul>
<h2>How to activate</h2>
<ol>
<li>Open <strong>Settings &gt; WhatsApp &gt; Templates</strong>.</li>
<li>Create or edit a template, and under <strong>Button (Optional)</strong> choose <strong>Share contact info</strong>.</li>
<li>To automate it, open <strong>Workflow &gt; Action &gt; WhatsApp interactive messages</strong>, set <strong>Interactive message type</strong> to <strong>Request Contact Info</strong>, and add your message body.</li>
</ol>
<h2>Why this matters</h2>
<p>Usernames help customers keep their phone number private, but it can also leave you with contacts you cannot call, export, or run phone-based automations on. Requesting contact info closes that gap by capturing the phone number in one tap while keeping your data clean.</p>
<ul>
<li>Turn username-only WhatsApp leads into contactable leads</li>
<li>Automate the request inside workflows</li>
<li>Maintain data quality with duplicate prevention</li>
<li>Keep WhatsApp calling available for username-based contacts</li>
</ul>
<h2>Resources</h2>
<ul>
<li><a href="https://developers.facebook.com/documentation/business-messaging/whatsapp/messages/interactive-messages" rel="ugc nofollow noopener noreferrer" target="_blank">Requesting phone numbers from users (Meta)</a></li>
<li><a href="https://help.leadli.com/support/solutions/articles/155000008491-how-to-utilise-the-username-in-interactive-messages" rel="ugc nofollow noopener noreferrer" target="_blank">Support article</a></li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-25T13:23:37.000Z'),
('wp-1374', 'Chat Widget now works with Brand Boards', 'The Chat Widget now integrates with Brand Boards, so you can keep every widget consistent with your brand. Your brand colors and fonts are available in the Styles panel. What’s included Brand colors in the color picker: Color pickers show your Brand Colors alongside a shared Defa...', '<p>The Chat Widget now integrates with Brand Boards, so you can keep every widget consistent with your brand. Your brand colors and fonts are available in the <strong>Styles</strong> panel.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Brand colors in the color picker:</strong> Color pickers show your Brand Colors alongside a shared <strong>Default</strong> palette.</li>
<li><strong>Existing colors carried over:</strong> Colors already used in your custom-themed Chat Widgets are added to the Default palette the first time you open the builder.</li>
<li><strong>Shared color palette:</strong> New colors you use are automatically added to the Default palette and become available across all Chat Widgets in that location.</li>
<li><strong>Brand fonts:</strong> Fonts from your Brand Board appear separately from the standard font library for easier access.</li>
<li><strong>Consistent styling experience:</strong> The Styles panel uses the same color picker experience used across Leadli for more consistent behavior.</li>
<li><strong>Cleaner palettes:</strong> Colors are normalized and deduplicated automatically to reduce duplicates.</li>
</ul>
<h3>How to use it</h3>
<ol>
<li>Set up your Brand Board with your preferred colors and fonts.</li>
<li>Go to <strong>Chat Widget → Styles</strong>.</li>
<li>Open any supported color field.</li>
<li>Choose from your Brand Colors or the shared Default palette.</li>
<li>Select a Brand Font from the font picker, or use the standard font options.</li>
</ol>
<p>Your existing custom colors are automatically added to the Default palette, so there is nothing you need to recreate.</p>
<p>If you do not have a Brand Board set up yet, you will see an option to create one directly from the builder.</p>
<h3>Why this matters</h3>
<p>This update helps you maintain consistent branding across multiple Chat Widgets without repeatedly finding and re-entering the same colors and fonts.</p>
<h3>Notes</h3>
<ul>
<li><strong>Availability:</strong> Live in production for all custom-theme color pickers in Chat Widget.</li>
<li>Brand Colors are read-only in Chat Widget and are managed through Brand Boards.</li>
<li>The Default palette can be updated and is shared at the location level.</li>
<li>A configured Brand Board is required for Brand Colors to appear.</li>
<li>Existing Chat Widgets require no migration or reconfiguration.</li>
<li>Existing website embed snippets require no changes.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-25T07:54:33.000Z'),
('wp-1373', 'Chat widget: compliance notice and consent options', 'The chat widget now includes separate settings for a legal notice and visitor consent. This gives you more control over how compliance messages and opt-ins work. What you can do Show a legal notice below the contact form (no visitor action required). Add a consent checkbox with y...', '<p>The chat widget now includes separate settings for a legal notice and visitor consent. This gives you more control over how compliance messages and opt-ins work.</p>
<h2>What you can do</h2>
<ul>
<li>Show a legal notice below the contact form (no visitor action required).</li>
<li>Add a consent checkbox with your own wording (for example, SMS or email marketing consent).</li>
<li>Make consent required or optional.</li>
<li>Choose whether the consent checkbox is pre-checked when the form loads.</li>
<li>Show a clear validation message when required consent is missing.</li>
<li>Track consent in Activity details, including whether consent was required and the exact text shown.</li>
</ul>
<h2>Where to find the setting</h2>
<p>Go to <strong>Chat Widget → Chat window → Additional options → Compliance notice &amp; consent</strong>.</p>
<h2>Why this change</h2>
<p>Legal disclosures and marketing consent are not always the same thing. These options are now separate so you can configure each one correctly and keep a clear record of what a visitor agreed to.</p>
<h2>Availability and migration</h2>
<ul>
<li>Available to everyone.</li>
<li>Existing widgets do not change until you open them in the builder and save.</li>
<li>Existing legal notice text is carried over automatically.</li>
<li>Widgets created through A2P registration keep their current compliance configuration.</li>
</ul>
<h2>Default settings for new widgets</h2>
<ul>
<li>Legal notice: On</li>
<li>Consent checkbox: On</li>
<li>Required consent: Off</li>
</ul>
<p>No changes to your website embed code are required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-25T07:47:34.000Z'),
('wp-1372', 'Offer multiple meeting lengths in a single Leadli calendar', 'Update: You can now offer multiple meeting lengths in a single calendar, so people booking time with you can choose the duration that fits. Instead of creating separate calendars for 15-minute, 30-minute, or 60-minute meetings, you can set up to three duration options on the same...', '<p><strong>Update:</strong> You can now offer multiple meeting lengths in a single calendar, so people booking time with you can choose the duration that fits.</p>
<p>Instead of creating separate calendars for 15-minute, 30-minute, or 60-minute meetings, you can set up to three duration options on the same calendar.</p>
<p><strong>How it works</strong></p>
<ul>
<li>Add up to <strong>3 duration options</strong></li>
<li>Choose which duration is selected by default</li>
<li>Add or remove duration options at any time</li>
</ul>
<p>When more than one duration is available, bookers will see the options on the booking page. Choosing a different duration refreshes availability to show time slots that fit the selected meeting length.</p>
<p>If only one duration is set, the booking experience stays the same.</p>
<p><strong>Where this is available</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;