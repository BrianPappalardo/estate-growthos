INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Other: Retirement Living Community</li>
<li>Medical: Cosmetic Medical Spa</li>
<li>Marketing Agency: Affiliate Marketing Services</li>
<li>Legal: Debt Relief Attorney</li>
<li>Insurance: Travel Coverage</li>
</ul>
<h4>LinkedIn ad templates (5)</h4>
<ul>
<li>Business Coaching &amp; Consulting: Investment Advisor</li>
<li>Marketing Agency: Social Networking Services</li>
<li>Finance: Bookkeeper</li>
<li>Marketing Agency: Public Relations Firm</li>
<li>Insurance: Health Insurance</li>
</ul>
<h4>Workflow templates (3)</h4>
<ul>
<li>Lead Generation &amp; Nurturing: Voicemail Drop Follow-Up</li>
<li>Industry-specific: Open House Follow-Up</li>
<li>Industry-specific: Buyer Search Drip</li>
</ul>
<h4>Snapshot (1)</h4>
<ul>
<li>Travel &amp; Hospitality: Boat Tour Agency</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1246', 'Expanded permissions for meetings, services, and rentals', 'Overview We have expanded and improved Roles & Permissions to provide a consistent permission model across Meetings, Services, and Rentals . The existing permissions now extend to Services and Rentals. You can configure more granular permissions for agency and account admins and ...', '<h2>Overview</h2>
<p>We have expanded and improved <strong>Roles &amp; Permissions</strong> to provide a consistent permission model across <strong>Meetings, Services, and Rentals</strong>.</p>
<p>The existing permissions now extend to Services and Rentals. You can configure more granular permissions for <strong>agency and account admins and users</strong>, making it easier to control what each team member can view and manage across all scheduling modules.</p>
<h2>What’s new</h2>
<ul>
<li>The existing permission model used for Meetings now applies to Services and Rentals.</li>
<li>Permissions now cover:</li>
</ul>
<ol>
<li><strong>Appointments and bookings</strong> across Meetings, Services, and Rentals.</li>
<li><strong>Groups and categories</strong> across Meetings, Services, and Rentals.</li>
<li><strong>Setup</strong> for calendars, services, and rental listings.</li>
</ol>
<ul>
<li>Added <strong>Manage associated resources</strong> to control access to locations, staff, resources, add-ons, and related components.</li>
<li>Added <strong>Manage preferences and global settings</strong> to control access to module-level global settings and preferences.</li>
</ul>
<h2>How it works</h2>
<p>Each module follows the same permission structure:</p>
<ul>
<li><strong>View Calendars</strong> – Access Meetings, Services, or Rentals.</li>
<li><strong>Manage setup</strong> – Manage calendars, services, or rental listings.</li>
<li><strong>Manage appointments</strong> – Manage appointments and bookings across all verticals.</li>
<li><strong>Manage groups and categories</strong> – Manage meeting groups, service categories, and rental categories.</li>
<li><strong>Manage associated resources</strong> – Manage locations, staff, resources, add-ons, and other associated components.</li>
<li><strong>Manage preferences and global settings</strong> – Manage vertical-level global settings and preferences.</li>
</ul>
<p>Administrators can mix and match these permissions to create role-specific access for each team member.</p>
<h2>How to set it up</h2>
<h3>Agency view</h3>
<p>Navigate to: <strong>Settings → Team → Select Team Member → Roles &amp; Permissions → Calendars</strong></p>
<h3>Account view</h3>
<p>Navigate to: <strong>Settings → My Staff → Select Team Member → Roles &amp; Permissions → Calendars</strong></p>
<p>Configure the required View and Manage permissions, then click Save.</p>
<h2>Why this matters</h2>
<ul>
<li>Provides a consistent permissions experience across Meetings, Services, and Rentals.</li>
<li>Gives administrators more granular control over what each team member can manage.</li>
<li>Makes it easier to assign role-specific responsibilities without granting unnecessary access.</li>
<li>Improves security and scalability as teams and operations grow.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1245', 'New templates are now available in Leadli', 'New templates have been added to help you build websites, funnels, and email campaigns faster. They are designed to be easy to customize and ready to use. What’s included Website templates (1) Real Estate (1) Social templates (4) Other (2) Medical (2) Facebook ad templates (5) Ot...', '<p>New templates have been added to help you build websites, funnels, and email campaigns faster. They are designed to be easy to customize and ready to use.</p>
<h3>What’s included</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Real Estate (1)</li>
</ul>
<h4>Social templates (4)</h4>
<ul>
<li>Other (2)</li>
<li>Medical (2)</li>
</ul>
<h4>Facebook ad templates (5)</h4>
<ul>
<li>Other (1)</li>
<li>Insurance (1)</li>
</ul>
<h4>Google ad templates (5)</h4>
<ul>
<li>Home Services: Bathroom Remodel Contractor</li>
<li>Health &amp; Wellness: Health Club</li>
<li>Finance: Accounting Bookkeeper</li>
<li>Creative: Mobile DJ</li>
<li>Business Coaching &amp; Consulting: Personal Development Coach</li>
</ul>
<h4>LinkedIn templates (2)</h4>
<ul>
<li>Creative (1)</li>
<li>Real Estate (1)</li>
</ul>
<h4>Lead generation and nurturing templates</h4>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;