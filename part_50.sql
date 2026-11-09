INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Moldova: $0.1474 → <strong>$0.1695</strong></li>
<li>Mongolia: $0.2957 → <strong>$0.3541</strong></li>
<li>Montenegro: $0.1928 → <strong>$0.2044</strong></li>
<li>Nepal: $0.3022 → <strong>$0.3082</strong></li>
<li>Nicaragua: $0.1567 → <strong>$0.1856</strong></li>
</ul>
<h2>Phone number monthly price updates</h2>
<p>Monthly rental prices for the following phone number types will change on October 13, 2026:</p>
<ul>
<li>Austria — Mobile phone number: $6.00/month → <strong>$6.90/month</strong></li>
<li>Belgium — Local phone number: $1.25/month → <strong>$1.70/month</strong>; Mobile phone number: $1.25/month → <strong>$1.40/month</strong></li>
<li>Chile — Mobile phone number: $10.00/month → <strong>$11.40/month</strong></li>
<li>Colombia — Local phone number: $14.00/month → <strong>$17.50/month</strong></li>
<li>Finland — Mobile phone number: $5.00/month → <strong>$6.60/month</strong></li>
<li>Hong Kong — Local phone number: $6.00/month → <strong>$14.70/month</strong>; Mobile phone number: $15.00/month → <strong>$18.50/month</strong>; Toll-free number: $25.00/month → <strong>$28.60/month</strong></li>
<li>Indonesia — Local phone number: $23.00/month → <strong>$24.15/month</strong>; Toll-free number: $25.00/month → <strong>$28.60/month</strong></li>
<li>Norway — Local phone number: $3.00/month → <strong>$3.90/month</strong>; Mobile phone number: $12.00/month → <strong>$16.40/month</strong></li>
<li>Philippines — Local phone number: $15.00/month → <strong>$17.80/month</strong>; Mobile phone number: $120.00/month → <strong>$142.00/month</strong>; Toll-free number: $25.00/month → <strong>$28.40/month</strong></li>
<li>Switzerland — Mobile phone number: <strong>$9.00/month → $11.70/month</strong></li>
<li>Thailand — Mobile phone number: <strong>$22.00/month → $25.30/month</strong>; Toll-free number: <strong>$25.00/month → $28.60/month</strong></li>
</ul>
<h2>Why prices are changing</h2>
<p>Telecommunications carriers periodically update the costs associated with delivering messages and providing phone numbers across different countries and networks. These pricing adjustments reflect changes in underlying carrier and infrastructure costs.</p>
<h2>What you need to do</h2>
<p><strong>No action is required.</strong> The new list prices will automatically take effect on October 13, 2026.</p>
<p>If you have an active fixed-price agreement covering any of the affected messaging routes or phone numbers, your contracted pricing will remain unchanged for the duration of that agreement.</p>
<p>If you have questions, please contact support.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-21T05:36:53.000Z'),
('wp-1438', 'Jotform: new workflow triggers and actions in Leadli', 'You can now automate Jotform directly inside Workflows in Leadli. This lets you react to form submissions and signed documents as soon as they happen, and create Jotform submissions from any workflow. What’s new Triggers (events in Jotform that start a workflow in Leadli) New Sub...', '<p>You can now automate Jotform directly inside Workflows in Leadli. This lets you react to form submissions and signed documents as soon as they happen, and create Jotform submissions from any workflow.</p>
<h2>What’s new</h2>
<h3>Triggers (events in Jotform that start a workflow in Leadli)</h3>
<ul>
<li><strong>New Submission</strong> – Starts a workflow when a new response is submitted to a Jotform form.</li>
<li><strong>New Signed Document</strong> – Starts a workflow when a document with an e-signature field is completed and signed. Checked every 5 minutes.</li>
</ul>
<h3>Actions (steps you can run in Jotform from a Leadli workflow)</h3>
<ul>
<li><strong>Create Submission</strong> – Adds a new submission to any form in your Jotform account, with values mapped from your workflow.</li>
</ul>
<h2>Why this matters</h2>
<p>These triggers and actions help you automate common tasks without manual imports or extra integrations.</p>
<ul>
<li>Follow up on new leads as soon as a form is submitted.</li>
<li>Start onboarding as soon as a contract is signed.</li>
<li>Record phone, event, and walk-in sign-ups in Jotform so reporting includes all leads.</li>
<li>Reduce reliance on third-party automations and webhooks.</li>
</ul>
<h2>Example use cases</h2>
<h3>Lead capture and CRM sync</h3>
<p>A “Website Lead Form” submission creates the contact in Leadli, sends an acknowledgment email, applies a “New Lead” tag, and posts a notification to a Slack channel.</p>
<h3>Signed contract to project kickoff</h3>
<p>A client signs your “Service Agreement” in Jotform Sign. Their opportunity stage updates to “Contract Signed”, an onboarding task is created in ClickUp, an operations channel is notified, and the client receives next steps.</p>
<h3>Offline sign-up to Jotform</h3>
<p>Someone registers for an event over the phone. The workflow creates a matching submission in your Jotform event form so every attendee appears in one report.</p>
<h3>Appointment to intake form</h3>
<p>A consultation is booked in Leadli. An intake submission is created in Jotform with the client’s details already filled in.</p>
<h2>How to connect</h2>
<ol>
<li>Open the Workflow Builder and search for Jotform actions or triggers.</li>
<li>Click <strong>Connect Now</strong> and sign in with your Jotform account.</li>
<li>Once connected, select a form and the available fields will load for mapping.</li>
<li>You can also connect from <strong>Settings → Integrations → Jotform</strong>.</li>
</ol>
<h2>Notes and details</h2>
<p><strong>Supported fields for Create Submission:</strong> Full Name, Email, Address, Phone, Short Text, Long Text, Number, Dropdown, Single Choice, Multiple Choice, Yes/No, Star Rating, Scale Rating, Date Picker, and Time.</p>
<p><strong>Unsupported fields</strong> will not appear in the mapping list. Examples include File Upload, Signature, Appointment, Payment, Product List, Input Table, Fill in the Blanks, Spinner, Slider fields, Image Choice, Captcha, and widgets such as Terms and Conditions and Checklist.</p>
<ul>
<li>Unsupported fields are saved empty. If a field is required on the form, Jotform will still accept the submission and mark it active.</li>
<li>Submissions created by this action do not include payment, amount, product, or a booked time slot. Treat them as unpaid unless payment was collected elsewhere.</li>
<li>The New Signed Document trigger reads documents signed in Jotform. Create Submission cannot write a signature; signatures must be captured from the signer.</li>
<li>Dates use YYYY-MM-DD and times use HH:MM.</li>
<li>Field support will expand over time.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-09-20T10:20:01.000Z'),
('wp-1437', 'Bulk update tag colors and create categories while assigning tags', 'We added faster ways to organize tags in Leadli, based on customer feedback. You can now update the color on many tags at once and create a new tag category while you are assigning tags. What changed 1) Bulk update tag colors Before, tag colors had to be updated one at a time. No...', '<p>We added faster ways to organize tags in Leadli, based on customer feedback.</p>
<p>You can now update the color on many tags at once and create a new tag category while you are assigning tags.</p>
<p><strong>What changed</strong></p>
<p><strong>1) Bulk update tag colors</strong></p>
<p>Before, tag colors had to be updated one at a time. Now you can:</p>
<ul>
<li>Select up to 100 tags from the Tags page.</li>
<li>Choose the “Update color” action and apply one color to all selected tags in a single step.</li>
</ul>
<p>This helps you keep a consistent color system across categories, teams, or use cases—especially if you already manage a large tag library.</p>
<p><strong>2) Create categories while assigning tags</strong></p>
<p>Before, if the category you needed didn’t exist, you had to leave the flow to create it and then come back. Now you can create a new category from the category selector and continue without interruption.</p>
<p>These updates reduce repetitive work and make it easier to organize and manage tags at scale.</p>
', 'general', ARRAY['wp-import']::text[], '2026-09-20T03:18:01.000Z'),
('wp-1436', 'Leadli update: Chat widget color picker adapts to browser support', 'Chat widget color picker adapts to your browser The chat widget color picker now shows only the options your browser supports. What changed Safari and Firefox: The eyedropper option is hidden because these browsers do not support the required native API. Chrome: No change. The ey...', '<h2>Chat widget color picker adapts to your browser</h2>
<p>The chat widget color picker now shows only the options your browser supports.</p>
<h3>What changed</h3>
<ul>
<li><strong>Safari and Firefox:</strong> The eyedropper option is hidden because these browsers do not support the required native API.</li>
<li><strong>Chrome:</strong> No change. The eyedropper stays available and works as before.</li>
</ul>
<p>The color spectrum, hue controls, and hex input are still available, so you can set any custom color.</p>
<h3>How it works</h3>
<p>This update uses the Highrise design system package (<code>@platform-ui/highrise</code> 4.8.4) used by the chat widget color picker.</p>
<p>The app detects browser support automatically:</p>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;