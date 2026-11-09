INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Only eligible products assigned to the connected ecommerce store are synced.</li>
<li>One-time payment products and digital products are supported.</li>
<li>A valid connected store domain is required for synchronization.</li>
<li>This integration syncs products to Merchant Center. It does not create or manage Google Ads campaigns.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-14T13:47:57.000Z'),
('wp-1331', 'Client Portal: OTP login fallback for expired magic links', 'When a contact opens an expired Client Portal magic link, they are automatically redirected to the one-time passcode (OTP) login flow instead of seeing an error. What changed Automatic fallback for expired magic links : expired links now route to OTP verification. OTP verificatio...', '<p>When a contact opens an expired Client Portal magic link, they are automatically redirected to the one-time passcode (OTP) login flow instead of seeing an error.</p>
<h2>What changed</h2>
<ul>
<li><strong>Automatic fallback for expired magic links</strong>: expired links now route to OTP verification.</li>
<li><strong>OTP verification with masked email</strong>: an OTP is sent to the contact’s email address, and the email is masked on-screen for privacy.</li>
<li><strong>Easier account recovery</strong>: contacts can regain access without requesting or generating a new magic link.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>A contact clicks an expired Client Portal magic link.</li>
<li>They are redirected to the OTP verification screen.</li>
<li>An OTP is sent to their email address.</li>
<li>The contact enters the OTP to sign in and access their account.</li>
</ol>
<p>No setup is required. This fallback is enabled automatically for Client Portal magic link authentication.</p>
<h2>Notes</h2>
<ul>
<li>Applies to Client Portal magic links using auth-v2.</li>
<li>Expired magic links fall back to OTP-based authentication.</li>
<li>Contact email addresses are masked on the OTP verification screen.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-14T13:29:54.000Z'),
('wp-1330', 'Course announcements', 'You can now share important updates directly inside your courses using Course Announcements. What’s new Create and manage announcements: Create, edit, clone, and delete announcements from the Courses admin. Rich content support: Add formatted text and links. Flexible targeting: S...', '<p>You can now share important updates directly inside your courses using Course Announcements.</p>
<h2>What’s new</h2>
<ul>
<li><strong>Create and manage announcements:</strong> Create, edit, clone, and delete announcements from the Courses admin.</li>
<li><strong>Rich content support:</strong> Add formatted text and links.</li>
<li><strong>Flexible targeting:</strong> Share announcements with learners in specific courses or across all courses.</li>
<li><strong>Optional email notifications:</strong> Send announcements to course members by email when needed.</li>
<li><strong>In-app visibility:</strong> Learners can find new announcements through banners and unread indicators.</li>
<li><strong>Dedicated announcement view:</strong> Learners can view all announcements and open individual updates without leaving their learning experience.</li>
</ul>
<h2>Why it matters</h2>
<p>This gives course creators a central place to communicate launches, updates, reminders, and important notices while reaching learners where they are already studying.</p>
<h2>Getting started</h2>
<ol>
<li>Go to <strong>Courses → Announcements</strong>.</li>
<li>Create a new announcement.</li>
<li>Add a title and content, then choose the courses or learners you want to target.</li>
<li>Enable email notifications if you want course members to receive the announcement by email.</li>
<li>Publish the announcement.</li>
</ol>
<p>After publishing, learners can find announcements from the announcement banner, unread indicator, announcements list, and the announcement detail page.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-14T12:41:21.000Z'),
('wp-1329', 'Open contact details without leaving opportunities or appointments', 'Overview You can now open a contact overlay from the Opportunities and Appointments pages. When you click a contact name (or the conversation icon), the contact opens on the same page instead of taking you to the full contact record. This helps you review details and conversation...', '<p><strong>Overview</strong></p>
<p>You can now open a contact overlay from the Opportunities and Appointments pages. When you click a contact name (or the conversation icon), the contact opens on the same page instead of taking you to the full contact record. This helps you review details and conversations without losing your place.</p>
<p><strong>What changed</strong></p>
<p>Before, clicking a contact from Opportunities or Appointments always redirected you to the contact details page. Now you can choose how to open the contact:</p>
<ul>
<li><strong>Single-column view:</strong> Opens the contact panel alongside conversations and other right-side panels.</li>
<li><strong>Two-column view:</strong> Opens a wider layout with contact details plus an expanded Conversations view.</li>
<li><strong>Open the full contact details page:</strong> Keeps the previous experience by going straight to the full contact record.</li>
</ul>
<p>If you open the full contact details page from the overlay, you can return to the page you were working on.</p>
<p><strong>Why it matters</strong></p>
<p>When you are working deals or appointments, you often need to quickly check contact information or read the latest conversation. The overlay reduces extra page changes, keeps context, and makes it faster to get the information you need.</p>
<p><strong>Next steps</strong></p>
<p>The contact overlay is available for Opportunities and Appointments now. It will be expanded to other areas where contact names appear.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-13T18:03:05.000Z'),
('wp-1328', 'Import data directly from HubSpot into Leadli', 'Moving from HubSpot to Leadli just got easier. With the HubSpot Importer, you can connect your HubSpot account and migrate important CRM data directly into Leadli without relying on manual CSV exports. What’s new You can now import: Contacts Deals as opportunities Companies Conta...', '<p>Moving from HubSpot to Leadli just got easier.</p>
<p>With the HubSpot Importer, you can connect your HubSpot account and migrate important CRM data directly into Leadli without relying on manual CSV exports.</p>
<h2>What’s new</h2>
<p>You can now import:</p>
<ul>
<li>Contacts</li>
<li>Deals as opportunities</li>
<li>Companies</li>
<li>Contact, company, and deal properties as custom fields</li>
<li>Pipelines and stages</li>
<li>Notes</li>
<li>Emails</li>
<li>Tasks</li>
<li>Supported associations</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Go to <strong>Contacts</strong>, <strong>Companies</strong>, or <strong>Opportunities</strong>.</li>
<li>Click <strong>Import</strong>.</li>
<li>Choose <strong>Connect HubSpot</strong> and sign in to your HubSpot account.</li>
<li>Select the objects and data you want to import.</li>
<li>Review record counts and choose specific properties if needed.</li>
<li>Click <strong>Confirm and start import</strong>.</li>
</ol>
<p>The import runs in the background, so you can leave the page and come back later.</p>
<h2>Review import results</h2>
<p>The Import History table lets you track progress and review completed imports. After an import, you can:</p>
<ul>
<li>View totals for successful, skipped, failed, and warning records</li>
<li>Review results by object or by individual record</li>
<li>Filter records by object and status</li>
<li>See clear error messages</li>
<li>Download results as a CSV for further review</li>
</ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;