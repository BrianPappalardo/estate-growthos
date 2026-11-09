INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>QR code support in the certificate builder</strong>: Add a QR code to a certificate while you’re editing it.</li>
<li><strong>Two QR code types</strong>: Choose either a verification QR code that opens the certificate preview/validation page, or a custom link QR code that opens any URL you choose.</li>
<li><strong>Styling options</strong>: Set the background color and stroke color. The preview updates as you edit.</li>
</ul>
<p><strong>Why it matters</strong></p>
<ul>
<li>Makes certificates easier to verify</li>
<li>Adds trust and professionalism</li>
<li>Creates more ways to drive traffic and engagement</li>
<li>Gives you more flexibility without using external QR tools</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-12T15:55:05.000Z'),
('wp-1057', 'New templates are now available in Leadli', 'New templates have been added to help you create websites, funnels, and email campaigns more quickly. Each template is fully customizable and designed to be easy to use. What’s included in this release Website templates: 1 new template (Health & Wellness) Email templates: 1 new t...', '<p>New templates have been added to help you create websites, funnels, and email campaigns more quickly. Each template is fully customizable and designed to be easy to use.</p>
<p><strong>What’s included in this release</strong></p>
<ul>
<li><strong>Website templates:</strong> 1 new template (Health &amp; Wellness)</li>
<li><strong>Email templates:</strong> 1 new template (Creative)</li>
<li><strong>Form templates:</strong> 1 new template (Travel &amp; Hospitality)</li>
<li><strong>Survey templates:</strong> 2 new templates (Beauty &amp; Fashion; Automotive)</li>
<li><strong>Social templates:</strong> 4 new templates (Business Coaching &amp; Consulting; Beauty &amp; Fashion)</li>
<li><strong>Facebook ad templates:</strong> 5 new templates (Real Estate Wholesaling; Solar; Advertising; Gym; Car Dealer)</li>
<li><strong>Google ad templates:</strong> 5 new templates (Floor Installation; Nutrition Services; Bookkeeping Services; Music Group; Business Consultant)</li>
<li><strong>LinkedIn ad templates:</strong> 5 new templates (Automation Software; Real Estate Consultant; Architectural Design; Accounting Services; Social Networking Services)</li>
<li><strong>Snapshot:</strong> 1 new snapshot (Home Services – Pest Control)</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-12T15:54:50.000Z'),
('wp-1046', 'Delete and restore blog posts', 'Summary When you delete a blog post in Leadli, it is no longer removed permanently right away. Deleted posts are kept for 30 days so you can restore them if needed. If you want to permanently remove a post, you can choose Delete Forever from the Deleted filter. What changed The b...', '<p><strong>Summary</strong></p>
<p>When you delete a blog post in Leadli, it is no longer removed permanently right away. Deleted posts are kept for 30 days so you can restore them if needed. If you want to permanently remove a post, you can choose <em>Delete Forever</em> from the Deleted filter.</p>
<p><strong>What changed</strong></p>
<ul>
<li>The blog post is marked as deleted</li>
<li>It is hidden from the main list</li>
<li>It can be restored for up to 30 days</li>
</ul>
<p><strong>Deleted filter</strong></p>
<p>You can now use a dedicated <em>Deleted</em> filter to:</p>
<ul>
<li>View deleted blog posts</li>
<li>Restore a post</li>
<li>Permanently delete a post</li>
</ul>
<p><strong>Why this matters</strong></p>
<ul>
<li>Helps prevent accidental content loss</li>
<li>Makes it easier to recover posts without contacting support</li>
<li>Improves control over blog management</li>
</ul>
<p><strong>How to use it</strong></p>
<p>Delete a post:</p>
<ol>
<li>Go to <strong>Sites</strong> → <strong>Blogs</strong></li>
<li>Open the 3-dot menu on a post</li>
<li>Click <strong>Delete</strong> and confirm</li>
</ol>
<p>Restore or permanently delete a post:</p>
<ol>
<li>Open the <em>Deleted</em> filter</li>
<li>Choose <strong>Restore</strong> to bring the post back, or <strong>Delete Forever</strong> to permanently remove it</li>
</ol>
', 'reporting', ARRAY['wp-import']::text[], '2026-05-08T15:01:50.000Z'),
('wp-1047', 'Chat Widget Registration: Compliance Check Before Submission', 'Overview: The Chat Widget compliance check is now more reliable. It detects when the Leadli chat widget is not live on a user’s website and asks them to fix it before submitting. What’s new: During Chat Widget registration, the compliance review scans the user’s website to confir...', '<p><strong>Overview:</strong> The Chat Widget compliance check is now more reliable. It detects when the Leadli chat widget is not live on a user’s website and asks them to fix it before submitting.</p>
<p><strong>What’s new:</strong></p>
<ul>
<li>During Chat Widget registration, the compliance review scans the user’s website to confirm the Lead Connector chat widget is installed.</li>
<li>If the widget is not found, the user sees clear instructions to copy the widget script, add it to the website, and run the check again within the Compliance Review modal.</li>
<li>The user can resubmit only after the check passes.</li>
</ul>
<p><strong>Previously:</strong></p>
<ul>
<li>Users could submit Chat Widget campaigns even when the widget was not present on their website.</li>
<li>These submissions often resulted in rejections and delays.</li>
</ul>
<p><strong>Why it matters:</strong></p>
<ul>
<li>Missing widget installations have been a common reason for Chat Widget campaign rejections.</li>
<li>Checking at the time of submission, with clear steps to fix the issue, helps users get approved faster.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-08T15:01:20.000Z'),
('wp-1050', 'If/Else editing is now fully supported in the AI Builder for workflows', 'The AI Builder now supports full editing of If/Else segments and operator logic. You can add, remove, and update branches, segments, conditions, operators, and values directly in the AI Builder. Updates included in this release: Edits at the branch, segment, and condition level n...', '<p>The AI Builder now supports full editing of If/Else segments and operator logic.</p>
<p>You can add, remove, and update branches, segments, conditions, operators, and values directly in the AI Builder.</p>
<p>Updates included in this release:</p>
<ul>
<li>Edits at the branch, segment, and condition level now work consistently</li>
<li>Multiple changes can be applied in a single request (for example, adding a condition and changing an operator at the same time)</li>
<li>Complex If/Else edit requests now prompt for clarification when needed instead of failing without feedback</li>
<li>Better identification of edit type and target to reduce misclassification</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-08T15:00:21.000Z'),
('wp-1051', 'Undo and redo in the Leadli AI Workflow Builder', 'Overview The AI Builder in workflows now supports undo and redo. This helps you recover earlier versions while you build or edit workflows with AI during the same session. How it works Undo: Press Ctrl+Z (Cmd+Z on Mac) to return to the previous AI-generated version from the curre...', '<h2>Overview</h2>
<p>The AI Builder in workflows now supports undo and redo. This helps you recover earlier versions while you build or edit workflows with AI during the same session.</p>
<h2>How it works</h2>
<ul>
<li><strong>Undo:</strong> Press Ctrl+Z (Cmd+Z on Mac) to return to the previous AI-generated version from the current session.</li>
<li><strong>Redo:</strong> Press Ctrl+Y (Cmd+Y on Mac) to bring back the change you just undid.</li>
</ul>
<p>This works for AI-generated changes such as adding new actions, editing steps, or reorganizing the workflow.</p>
<h2>Where to find it</h2>
<p>You can also review recent updates using the recent changes area in the Workflow Builder.</p>
<h2>Why this matters</h2>
<p>You can test AI suggestions without worrying about losing a working version. If a result is not a good fit, you can roll back and continue building.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;