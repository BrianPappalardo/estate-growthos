INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1274', 'Communities UI: a new experience in the unified client portal and GoKollab', 'Communities has been rebuilt inside the unified client portal and GoKollab to provide a faster, smoother experience for members and admins. Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings in one portal, without unnecessar...', '<p>Communities has been rebuilt inside the unified client portal and GoKollab to provide a faster, smoother experience for members and admins.</p>
<p>Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings in one portal, without unnecessary reloads or context switching.</p>
<h2>What’s included</h2>
<h3>A unified Communities and Courses experience</h3>
<p>Members can move between community discussions and courses without leaving the unified portal.</p>
<ul>
<li>Courses open in the Learning tab without loading the legacy application.</li>
<li>Members can continue from the lesson where they last stopped.</li>
<li>Progress is kept when switching between courses and discussions.</li>
<li>Communities, Courses, Dashboard, and Billing use consistent navigation.</li>
<li>Page transitions are faster and more responsive.</li>
</ul>
<h3>Updated discussions</h3>
<p>The discussion feed has been redesigned to make content easier to find, read, and engage with.</p>
<ul>
<li>Comments, replies, and attachments display directly in the feed.</li>
<li>Post and comment editors are simpler and easier to use.</li>
<li>Members can react to posts and comments with multiple reaction types.</li>
<li>Post nudges can encourage participation when engagement is low.</li>
<li>Search can cover posts, comments, and members from one place.</li>
<li>User profiles have a cleaner layout with clickable group details.</li>
<li>Profile popovers provide a quick member overview.</li>
<li>Creating community events follows a more streamlined flow.</li>
</ul>
<h3>More control for community admins</h3>
<p>Admins can manage posts directly from the discussion feed using the post menu. Available actions include:</p>
<ul>
<li>Pin or unpin posts</li>
<li>Move posts between channels</li>
<li>Disable comments</li>
<li>Ban users</li>
<li>Download video or audio recordings</li>
<li>Report or delete posts</li>
<li>Additional post-level moderation actions</li>
</ul>
<h3>Improved community settings</h3>
<p>Community settings are now organized into dedicated sections, making groups easier to configure and manage.</p>
<p>Admins can more easily:</p>
<ul>
<li>Update community details and descriptions</li>
<li>Set public or private group access</li>
<li>Manage member invitation permissions</li>
<li>Enable mandatory member profiles</li>
<li>Configure branding and membership questions</li>
<li>Select from predefined community themes</li>
<li>Customize the appearance of the community</li>
</ul>
<h2>How to enable</h2>
<p>In the Leadli app, go to <strong>Client Portal Dashboard</strong> and select <strong>Enable</strong> to activate the new experience.</p>
<p>No migration is required. Existing community content, members, courses, and settings will carry over automatically.</p>
', 'courses', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1273', 'Choose your sender for review requests', 'Update You can set a default phone number (SMS and WhatsApp) and email address for review requests at the location level. The selected sender will be used automatically for: Manual review requests Campaigns Workflows Why this is useful Send requests from a familiar number or emai...', '<p><strong>Update</strong></p>
<p>You can set a default phone number (SMS and WhatsApp) and email address for review requests at the location level. The selected sender will be used automatically for:</p>
<ul>
<li>Manual review requests</li>
<li>Campaigns</li>
<li>Workflows</li>
</ul>
<p><strong>Why this is useful</strong></p>
<ul>
<li>Send requests from a familiar number or email address.</li>
<li>Keep a consistent customer experience.</li>
<li>Avoid confusion caused by automatically selected sender identities.</li>
<li>Improve the professionalism of your review requests.</li>
</ul>
<p>To configure this, go to Reputation &rarr; Settings &rarr; Email Review Request (or Phone/WhatsApp Review Request).</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:49.000Z'),
('wp-1272', 'Communities in the unified client portal and GoKollab', 'Communities has been rebuilt inside the unified client portal and GoKollab. This provides a faster, more seamless experience for members and admins. Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings within one branded porta...', '<p>Communities has been rebuilt inside the unified client portal and GoKollab. This provides a faster, more seamless experience for members and admins.</p>
<p>Communities now sits alongside Courses, Dashboard, Billing, Shared Files, Affiliates, and Account Settings within one branded portal, without unnecessary reloads or context switching.</p>
<h2>What’s new</h2>
<p><strong>A unified Communities and Courses experience</strong></p>
<p>Members can move between community discussions and courses without leaving the unified portal.</p>
<ul>
<li>Courses open within the Learning tab without reloading the legacy application.</li>
<li>Members can resume from the lesson where they previously stopped.</li>
<li>Progress is preserved when switching between courses and discussions.</li>
<li>Communities, Courses, Dashboard, and Billing share consistent navigation.</li>
<li>Page transitions are faster and smoother.</li>
</ul>
<p><strong>A redesigned discussion experience</strong></p>
<p>The discussion feed has been redesigned to make content easier to discover, read, and engage with.</p>
<ul>
<li>Comments, replies, and attachments are shown directly in the feed.</li>
<li>Post and comment editors are simpler and more intuitive.</li>
<li>Members can react to posts and comments with six different reactions.</li>
<li>Post nudges help encourage participation when engagement is low.</li>
<li>Unified search lets members search posts, comments, and members from one place.</li>
<li>User profiles have a cleaner layout with clickable group details.</li>
<li>Profile popovers provide a quick member overview without leaving the page.</li>
<li>Creating community events is more streamlined.</li>
</ul>
<h2>More control for community admins</h2>
<p>Admins can manage posts directly from the discussion feed using the enhanced three-dot menu.</p>
<p><strong>Available actions include:</strong></p>
<ul>
<li>Pin or unpin posts</li>
<li>Move posts between channels</li>
<li>Disable comments</li>
<li>Ban users</li>
<li>Download video or audio recordings</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;