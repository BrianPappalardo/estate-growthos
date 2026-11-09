INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
&#8211; Financial services: build trust with voice while keeping the conversation in one place.<br />
&#8211; Automotive: move from inquiry to test-drive booking more quickly.</p>
<p>Why this matters for SMBs<br />
WhatsApp Calling combines chat and voice into one channel, one inbox, and one conversation history. This can reduce setup overhead and improve speed-to-resolution for complex questions.</p>
<p>Prerequisites (per sub-account)<br />
1. A phone number in connected state.<br />
2. WABA messaging limit at 2,000 tier or higher.<br />
3. The phone number is not on coexistence.</p>
<p>How to activate, once enabled in your account.<br />
1. Go to Settings &gt; WhatsApp &gt; Calling.<br />
2. Select the phone number you want to enable calling on.<br />
3. Turn on Allow Calls and Callback on Missed Calls.<br />
4. Configure call buttons in the conversation view.<br />
5. Set available hours and temporarily unavailable hours.<br />
6. Save your changes.</p>
', 'general', ARRAY['wp-import']::text[], '2026-04-22T12:32:10.000Z'),
('wp-934', 'Printful shipping profiles are now managed automatically in Leadli', 'Overview Leadli now manages Printful shipping profiles automatically to make setup easier and improve the reliability of live shipping rates at checkout. What changed Auto-generated profile: A dedicated Printful shipping profile is created automatically to enable live rates at ch...', '<h2>Overview</h2>
<p>Leadli now manages Printful shipping profiles automatically to make setup easier and improve the reliability of live shipping rates at checkout.</p>
<h2>What changed</h2>
<ul>
<li><strong>Auto-generated profile:</strong> A dedicated Printful shipping profile is created automatically to enable live rates at checkout.</li>
<li><strong>New accounts:</strong> The profile is created and configured by default on new installations.</li>
<li><strong>Existing accounts:</strong> Syncing products from Printful automatically enables shipping.</li>
<li><strong>Profile dependency:</strong> If products are removed from the Printful profile, shipping rates will be disabled for those products.</li>
<li><strong>Deletion handling:</strong> If the profile is deleted, it will not be recreated automatically. Reinstall the integration to restore it.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Install and connect the Printful app from the Marketplace.</li>
<li>Sync your Printful products to your store.</li>
<li>Leadli will create and configure the required shipping profile automatically.</li>
<li>Keep products assigned to the Printful profile to keep live rates enabled at checkout.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The Printful shipping profile is system-generated for correct functionality. Manual edits are not recommended.</li>
<li>Removing products from the profile disables shipping rate calculation for those products.</li>
<li>If you delete the profile, reinstall the integration to restore it.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-04-22T05:33:41.000Z'),
('wp-904', 'AI Pages: customization and content improvements', 'This update makes it easier to build the page you want with the AI-powered WordPress Page Builder. It adds live color previews, the option to regenerate individual images, and more section layout variants. Where to find it WordPress > All Sites > Manage Website > Pages > AI Gener...', '<p>This update makes it easier to build the page you want with the AI-powered WordPress Page Builder. It adds live color previews, the option to regenerate individual images, and more section layout variants.</p>
<h2>Where to find it</h2>
<p>WordPress &gt; All Sites &gt; Manage Website &gt; Pages &gt; AI Generated Pages</p>
<h2>What’s new</h2>
<h3>Live preview for color palette changes</h3>
<p>When you adjust color palettes in the Styles panel, you will now see the results immediately in a live preview.</p>
<ul>
<li><strong>Real-time feedback:</strong> Preview palettes such as Default, Marine, Nature, and Earth and see updates across headings, body text, buttons, backgrounds, and accents.</li>
<li><strong>Changes apply on save:</strong> Your selections are applied only after you click <strong>Update Page</strong>.</li>
</ul>
<h3>Regenerate specific images</h3>
<p>You can regenerate a specific image on the page without changing the rest of the content.</p>
<ul>
<li><strong>Targeted control:</strong> Hover over an AI-generated image and select <strong>Regenerate Image</strong>.</li>
<li><strong>Custom prompts:</strong> Use <strong>Generate Custom Image</strong> to describe the style, lighting, and subject (up to 500 characters).</li>
<li><strong>Preview before inserting:</strong> Review the generated image first and regenerate until it fits.</li>
<li><strong>Non-destructive workflow:</strong> Changes are applied when you save in the final step.</li>
</ul>
<h3>More variants for page sections</h3>
<p>More layout and content variants have been added across sections such as testimonials, services, FAQs, and hero banners. This gives the generator a broader set of templates and can improve out-of-the-box results for different industries and use cases.</p>
<ul>
<li>More templates per section type (for example, different testimonial styles and different service grid layouts).</li>
<li>Better chances of matching your tone and audience from the start.</li>
</ul>
<p>Overall, you can preview styling changes immediately, refine visuals more precisely, and generate pages with more layout variety.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-04-21T21:40:29.000Z'),
('wp-885', 'Delete schema markup from a page', 'You can now remove schema markup from any website or funnel page in Leadli. You can delete a single schema or clear all schemas from the page. Why this matters Previously, once schema markup was added to a page, there was not a clear way to remove it. This update adds a confirmat...', '<p>You can now remove schema markup from any website or funnel page in Leadli. You can delete a single schema or clear all schemas from the page.</p>
<h3>Why this matters</h3>
<p>Previously, once schema markup was added to a page, there was not a clear way to remove it. This update adds a confirmation step and makes deletion available in all the places schema is managed.</p>
<h3>Key updates</h3>
<ul>
<li>Delete schemas from Form View, JSON View, or through AI chat.</li>
<li>Remove one schema or clear all schemas from a page.</li>
<li>Destructive actions require confirmation before changes are applied.</li>
<li>If needed, you can recover deleted schema using the page’s version history.</li>
</ul>
<h3>How to delete schema markup</h3>
<p><strong>Access:</strong> Website/Funnel Builder → Edit Page → SEO &amp; AI search optimization → Schema Markup</p>
<h4>Method 1: Form View</h4>
<ol>
<li>Open the Add/Edit Schema window and stay in Form View.</li>
<li>In the schema list, open the menu next to the schema you want to remove and choose Delete.</li>
<li>To delete all schemas, remove each schema, then click Validate &amp; Save.</li>
<li>Confirm the deletion when prompted.</li>
</ol>
<h4>Method 2: JSON View</h4>
<ol>
<li>Open the Add/Edit Schema window and switch to JSON View.</li>
<li>Remove the JSON-LD from the editor.</li>
<li>Click Validate &amp; Save.</li>
<li>Confirm the deletion when prompted.</li>
</ol>
<h4>Method 3: AI chat</h4>
<ol>
<li>Open Funnel AI, Ask AI, or Schema Markup AI.</li>
<li>Send a request like “remove all schema markup from this page” or “delete the Organization schema”.</li>
<li>Review the changes and confirm when prompted.</li>
</ol>
<h3>Recovery option (if you deleted schema by mistake)</h3>
<ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;