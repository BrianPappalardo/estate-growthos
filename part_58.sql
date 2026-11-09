INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Save the action and use the returned Image URL in the steps that follow.</li>
</ol>
<h2>Important note about public URLs</h2>
<p>The generated image is stored at a public URL. Anyone with the link can access it without logging in. Avoid including sensitive customer data in prompts when that could be reflected in the generated image.</p>
<h2>Why this matters</h2>
<p>This lets a workflow create a visual asset on demand. You can use the Image URL in later steps to include it in messages, publish it to social channels, store it in a custom field, or pass it to a webhook.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-07T07:34:09.000Z'),
('wp-1392', 'New workflow action: Analyze an image with AI', 'You can now analyze an image inside a workflow using the AI Analyze Image action. Provide a public image URL and an analysis prompt. The action will return the result as text. This is a premium action. Each execution has an additional charge. What this action can do Text extracti...', '<p>You can now analyze an image inside a workflow using the AI Analyze Image action.</p>
<p>Provide a public image URL and an analysis prompt. The action will return the result as text.</p>
<p>This is a premium action. Each execution has an additional charge.</p>
<h2>What this action can do</h2>
<ul>
<li><strong>Text extraction:</strong> Read text from receipts, invoices, screenshots, and documents.</li>
<li><strong>Image descriptions:</strong> Get a written description of what is in an image.</li>
<li><strong>Flexible prompts:</strong> Tell the model what to look for and how to answer. The prompt field supports custom values.</li>
<li><strong>Detail level:</strong> Choose Auto, High, or Low. High is better for small text. Low is faster.</li>
<li><strong>Model choice:</strong> Select between the available AI models.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Go to <strong>Automation &gt; Workflows</strong>.</li>
<li>Open a workflow and add the <strong>AI Analyze Image</strong> action.</li>
<li>Select the model.</li>
<li>Enter a public image URL (a direct link to the image file).</li>
<li>Write the analysis prompt.</li>
<li>Set the detail level (Auto is the default).</li>
<li>Save the action.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>The image URL must be public and accessible without logging in.</li>
<li>Do not use a link to a page that contains the image. Use the direct link to the image file.</li>
</ul>
<h2>Why this matters</h2>
<p>Your workflow can now read and interpret images, not just pass them between steps. You can use the text output in later actions, save it to a custom field, include it in an email or SMS, or send it through a webhook.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-07T07:21:18.000Z'),
('wp-1391', 'Dynamic value chips now show clearer states for missing or invalid values', 'What changed Dynamic value chips now support three states instead of two. This makes it easier to tell the difference between a value that exists but is not available in the current workflow, and a value that is actually invalid. How it works Each chip will appear in one of these...', '<p><strong>What changed</strong></p>
<p>Dynamic value chips now support three states instead of two. This makes it easier to tell the difference between a value that exists but is not available in the current workflow, and a value that is actually invalid.</p>
<p><strong>How it works</strong></p>
<p>Each chip will appear in one of these states:</p>
<ul>
<li><strong>Blue:</strong> The value is available in this workflow. It can be filled from the contact record, a system value (like the current date), or a previous step.</li>
<li><strong>Yellow:</strong> The value exists, but it is not available in this workflow. For example, a Google Sheets value in a workflow that has no Google Sheets step. In this case the chip renders blank unless another workflow passes the value in through an “Add to Workflow” action with input parameters.</li>
<li><strong>Red:</strong> The value does not exist. Nothing on the platform matches it, so it will not render in any workflow.</li>
</ul>
<p>Spacing inside handlebars is now handled more consistently as well. For example, values like <code>null</code> and <code>null</code> are treated the same.</p>
<p><strong>Why this matters</strong></p>
<p>Previously, any value that did not render could appear as an error, even when the setup was intentional (such as passing values between workflows). With the new split states, red is reserved for truly invalid values, and yellow indicates a valid value that just is not sourced in the current workflow.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-04T20:11:48.000Z'),
('wp-1390', 'Missed call text-back is now more reliable with smarter number selection', 'Overview When you miss a call, the follow-up text should still send successfully. Some phone numbers can receive calls but cannot send SMS, which can cause missed call text-backs to fail. This update improves number selection for missed call text-backs so messages have a better c...', '<h2>Overview</h2>
<p>When you miss a call, the follow-up text should still send successfully. Some phone numbers can receive calls but cannot send SMS, which can cause missed call text-backs to fail.</p>
<p>This update improves number selection for missed call text-backs so messages have a better chance of being delivered while staying aligned with messaging requirements.</p>
<h2>What’s new</h2>
<p>When a contact calls and you miss the call, the system will still try to send the text-back from the same number the contact called, as long as that number can send SMS.</p>
<p>If that number cannot send SMS, the system will automatically choose the next best option in this order:</p>
<ol>
<li>A number you have successfully messaged this contact from before</li>
<li>Your default outbound number</li>
<li>Another eligible messaging number available in the location</li>
</ol>
<p>This helps when calls come through number pools, call tracking numbers, unverified toll-free numbers, or any other number that is not eligible to send SMS.</p>
<h2>What contacts may notice</h2>
<p>Most of the time, nothing changes. The missed caller receives the follow-up text as expected.</p>
<p>In some cases, the text may come from a different number than the one they originally called. This is intentional so the message can be sent from a number that is eligible for SMS.</p>
<h2>Why this matters</h2>
<p>This improves follow-up consistency when calls are missed. It can help you reach more missed callers, keep follow-ups automated, and reduce failures caused by SMS-ineligible numbers.</p>
<h2>Good to know</h2>
<ul>
<li>Answered calls do not trigger a text-back.</li>
<li>If Missed Call Text Back is disabled in Phone System settings, no message will be sent.</li>
<li>Contact communication preferences and DND settings are still respected.</li>
<li>If no eligible sending number is available, the attempt will fail and the reason will be shown in the conversation.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-09-04T04:57:46.000Z'),
('wp-1389', 'Client Portal: User login workflow trigger supports the new Client Portal experience', 'Overview The User login workflow trigger now runs when someone logs in through the new Client Portal experience, not only through legacy membership logins. There is also a new Client Portal category in the trigger picker so all Client Portal triggers are grouped together. What’s ...', '<h2>Overview</h2>
<p>The <strong>User login</strong> workflow trigger now runs when someone logs in through the new Client Portal experience, not only through legacy membership logins. There is also a new <strong>Client Portal</strong> category in the trigger picker so all Client Portal triggers are grouped together.</p>
<h2>What’s new</h2>
<ul>
<li><strong>User login trigger supports the new Client Portal</strong>: Successful logins from the new Client Portal now emit the same trigger event as legacy membership logins. Existing workflows using the User login trigger will start running for these logins automatically.</li>
<li><strong>New “Client Portal” category in the trigger picker</strong>: Client Portal triggers are now grouped in one place. This includes User login (moved from Courses) and Client portal file uploaded (moved from Membership).</li>
<li><strong>Clearer helper text</strong>: The User login trigger description now explains that it covers both legacy membership logins and logins from the new Client Portal experience.</li>
</ul>
<h2>How to use</h2>
<ol>
<li>Open the Workflow Builder.</li>
<li>Click <strong>Add trigger</strong> and search for <strong>User login</strong>.</li>
<li>Select it under the <strong>Client Portal</strong> category.</li>
<li>Save your workflow. It will fire for both legacy membership logins and the new Client Portal logins.</li>
</ol>
<p><strong>Already using this trigger?</strong> No changes are required. Existing workflows will automatically include logins from the new Client Portal experience.</p>
<h2>Why this matters</h2>
<p>Previously, agencies using the new Client Portal experience could not automate based on member logins because the trigger only covered legacy memberships. Trigger placement was also inconsistent, which made it harder to find the right option. This update closes that gap and keeps Client Portal triggers together where you would expect them.</p>
', 'automations', ARRAY['wp-import']::text[], '2026-09-03T11:15:52.000Z'),
('wp-1387', 'Toll-free verification now requires Privacy Policy and Terms &#038; Conditions URLs', 'Toll-free verification now requires two website links: your Privacy Policy URL and your Terms & Conditions URL. Starting September 15, 2026, carriers will reject any new toll-free verification submission that does not include both links. These fields are available now and must be...', '<p>Toll-free verification now requires two website links: your Privacy Policy URL and your Terms &amp; Conditions URL.</p>
<p>Starting September 15, 2026, carriers will reject any new toll-free verification submission that does not include both links. These fields are available now and must be filled out before you submit.</p>
<h3>What changed</h3>
<ul>
<li>Two new required fields have been added on Step 3 (Messaging use case), below the opt-in workflow section.</li>
<li>Steps 1 and 2 are unchanged.</li>
<li>Already verified numbers are not affected and do not need to be resubmitted.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;