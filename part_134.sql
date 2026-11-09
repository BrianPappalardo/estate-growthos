INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Generate blogs faster</li>
<li>Reduce dependency on external AI writing tools</li>
<li>Create SEO-friendly content directly inside Leadli</li>
<li>Improve publishing consistency and output</li>
<li>Simplify long-form content creation workflows</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:55:18.000Z'),
('wp-1077', 'Media Center: Upload and download folders', 'Overview The Media Center now supports uploading and downloading folders, along with performance and usability improvements. You can upload full folders, download folders as a zip file, and follow clearer progress updates while keeping the folder structure intact. What’s improved...', '<h2>Overview</h2>
<p>The Media Center now supports uploading and downloading folders, along with performance and usability improvements.</p>
<p>You can upload full folders, download folders as a zip file, and follow clearer progress updates while keeping the folder structure intact.</p>
<h2>What’s improved</h2>
<ul>
<li>Added an <strong>Upload Folder</strong> option in the Media Center</li>
<li>Upload entire folders (including subfolders and files) in a single action</li>
<li>Drag and drop now supports folders, multiple folders, and mixed uploads (folders plus individual files)</li>
<li>Download folders as a single zip file</li>
<li>Progress tracking now shows a clearer folder-based view, including nested files and subfolders</li>
<li>Folder uploads and downloads preserve the original folder structure</li>
<li>Sorting changes in the main grid are reflected in the <strong>Move to Folder</strong> modal</li>
<li>Improved upload and download performance for larger file batches</li>
<li>Clearer handling for upload limits, skipped files, and partial completion states</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Media Center.</li>
<li>In the header, select <strong>Upload Folder</strong> (next to <strong>Upload File</strong>), or drag and drop folders directly into the Media Center.</li>
<li>To download a folder, use the <strong>Download</strong> option on the folder to save it as a zip file.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Speeds up uploading and organizing large batches of media</li>
<li>Preserves folder structure without manual reorganization</li>
<li>Improves visibility into upload and download progress</li>
<li>Reduces friction when moving media in and out of the Media Center</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-05-19T15:54:58.000Z'),
('wp-1076', 'New templates are now available', 'New templates are now available to help you build websites, funnels, forms, surveys, and email campaigns faster. These templates are customizable and designed to help you publish and launch with less setup time. New templates included Website templates: 1 Home Services: 1 Email t...', '<p>New templates are now available to help you build websites, funnels, forms, surveys, and email campaigns faster. These templates are customizable and designed to help you publish and launch with less setup time.</p>
<p><strong>New templates included</strong></p>
<p>Website templates: 1</p>
<p>Home Services: 1</p>
<p>Email templates: 1</p>
<p>Finance: 1</p>
<p>Form templates: 1</p>
<p>Automotive: 1</p>
<p>Survey templates: 1</p>
<p>Business, Coaching &amp; Consulting: 1</p>
<p>Social templates: 4</p>
<p>Financial: 2</p>
<p>Creative: 2</p>
<p>Facebook ad templates: 5</p>
<p>Business Coaching &amp; Consulting (Career Coaching)</p>
<p>Home Services (Plumber)</p>
<p>Restaurant and Bar (Ice Cream Shop)</p>
<p>Creative (Art Gallery)</p>
<p>Medical (Direct Primary Care Provider)</p>
<p>Google ad templates: 5</p>
<p>Other (Pet Groomer)</p>
<p>Medical (Primary Care Provider)</p>
<p>Marketing Agency (Digital Marketer)</p>
<p>Legal (Workers Compensation Attorney)</p>
<p>Insurance (Business Coverage)</p>
<p>LinkedIn ad templates: 5</p>
<p>Real Estate (Title Insurance Representative)</p>
<p>Finance (Bookkeeper)</p>
<p>Insurance (Property &amp; Casualty Insurance Rep)</p>
<p>Marketing Agency (Public Relations Firm)</p>
<p>Real Estate (Property Staging)</p>
<p>New snapshot: 1</p>
<p>Marketing Agency (Visual Advertising Agency)</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:54:41.000Z'),
('wp-1075', 'Contact tag updates now require Apply or Cancel confirmation', 'We updated the tag management experience in the Leadli Contacts module by adding a confirmation step when adding or removing tags. This helps prevent accidental tag changes and reduces unintended workflow triggers. What changed Added an Apply button to confirm tag changes Added a...', '<p>We updated the tag management experience in the Leadli Contacts module by adding a confirmation step when adding or removing tags. This helps prevent accidental tag changes and reduces unintended workflow triggers.</p>
<p><strong>What changed</strong></p>
<ul>
<li>Added an <strong>Apply</strong> button to confirm tag changes</li>
<li>Added a <strong>Cancel</strong> button to discard changes</li>
<li>Added confirmation when adding new tags and when removing existing tags</li>
<li>Reduced unintended workflow triggers caused by accidental tag updates</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open the tag dropdown on a contact</li>
<li>Select or clear the tags you want to change</li>
<li>Click <strong>Apply</strong> to save the change, or <strong>Cancel</strong> to leave tags unchanged</li>
</ol>
<p><strong>What&#8217;s coming next</strong></p>
<ul>
<li>Tag categories for better organization</li>
<li>Tag colors for easier identification</li>
<li>Category and color visibility inside the tag dropdown</li>
<li>Selected tag counts displayed for each category</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:54:27.000Z'),
('wp-1074', 'AskAI for Courses', 'Building courses is now faster and easier with AskAI. You can create, edit, organize, and manage courses directly through chat, which helps you go from an idea to a published product in minutes. What AskAI can do Generate complete course outlines with modules and lessons Create l...', '<p><strong>Building courses is now faster and easier with AskAI.</strong></p>
<p>You can create, edit, organize, and manage courses directly through chat, which helps you go from an idea to a published product in minutes.</p>
<h2>What AskAI can do</h2>
<ul>
<li>Generate complete course outlines with modules and lessons</li>
<li>Create lesson content in HTML format</li>
<li>Build quizzes, assessments, and assignments</li>
<li>Manage course settings such as drip schedules, locks, publishing, instructor details, and branding</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;