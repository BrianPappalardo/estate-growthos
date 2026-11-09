INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Open the page in the Website/Funnel Builder.</li>
<li>Open Version History and restore a version that still contains the schema.</li>
<li>Copy the JSON-LD from the Schema Markup editor.</li>
<li>Return to the latest version, paste the JSON-LD back in, then Validate &amp; Save and publish.</li>
</ol>
<h3>Good to know</h3>
<ul>
<li>Deletion is page-specific and only affects the page you are editing.</li>
<li>Changes appear in preview after saving, but only go live after publishing.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-04-21T16:19:45.000Z'),
('wp-884', 'Custom date reminders now support custom objects, opportunities, and companies', 'Summary Custom date reminders now work with date fields on more record types, not only Contact custom date fields in contact-based workflows. You can now use Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Compan...', '<p><strong>Summary</strong></p>
<p>Custom date reminders now work with date fields on more record types, not only Contact custom date fields in contact-based workflows. You can now use Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Company date fields in company-based workflows.</p>
<p><strong>How it works</strong></p>
<p>Custom date reminder triggers evaluate date fields based on the supported object in the workflow. In contact-based workflows, this includes Opportunity date fields. In custom object-based and company-based workflows, the trigger reads date fields from the same object the workflow is built around and starts the workflow when the reminder timing matches.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Create or open a workflow for Contacts, Custom Objects, or Companies.</li>
<li>Choose a custom date reminder trigger and select the supported date field for that workflow type.</li>
<li>Set the timing for when the workflow should run before, on, or after that date.</li>
</ul>
<p><strong>Why this change</strong></p>
<p>Previously, custom date reminders were limited to Contact date fields inside contact-based workflows. This update removes that restriction so you can automate date-driven follow-ups across more parts of your CRM without workarounds.</p>
<p><strong>Examples</strong></p>
<ul>
<li>Trigger a contact-based workflow from an Opportunity close date to remind a contact before a renewal conversation.</li>
<li>Trigger a custom object-based workflow from a custom object expiry date to send an internal reminder when that record needs attention.</li>
</ul>
<p><strong>Additional notes</strong></p>
<ul>
<li>Supported field types include: Opportunity date fields in contact-based workflows, Custom Object date fields in custom object-based workflows, and Company date fields in company-based workflows.</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;