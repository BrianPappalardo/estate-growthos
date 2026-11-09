INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Choose a standard or custom Company field.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:43:21.000Z'),
('wp-1095', 'Math Operation for company and custom object workflows', 'What’s new The Math Operation action is now available in company-based workflows and custom object-based workflows. This lets you run calculations on numeric values stored on a company record or a custom object record. How it works When your workflow reaches the Math Operation ac...', '<p><strong>What’s new</strong></p>
<p>The Math Operation action is now available in company-based workflows and custom object-based workflows. This lets you run calculations on numeric values stored on a company record or a custom object record.</p>
<p><strong>How it works</strong></p>
<p>When your workflow reaches the Math Operation action, Leadli calculates the values you selected and stores the result so you can use it in later steps.</p>
<p><strong>How to use it</strong></p>
<ul>
<li>Open a company-based or custom object-based workflow.</li>
<li>Add the Math Operation action.</li>
<li>Select the values and the operation, then use the result in the next steps.</li>
</ul>
<p><strong>Example</strong></p>
<ul>
<li>Use a custom object workflow to calculate total project cost by adding material cost and labor cost stored on the project record.</li>
</ul>
<p><strong>Notes</strong></p>
<ul>
<li>Supported in company-based workflows.</li>
<li>Supported in custom object-based workflows.</li>
<li>Uses the same Math Operation behavior available in other workflow types.</li>
</ul>
', 'automations', ARRAY['wp-import']::text[], '2026-05-22T15:43:05.000Z'),
('wp-1094', 'Share meeting recordings directly as a Leadli Community post', 'You can now share meeting recordings into a Community as a post in a few clicks. This makes it easier to continue conversations and share updates after a meeting. What’s new A "Share as Post" action is available on recordings, so you can publish a recording without leaving your c...', '<p>You can now share meeting recordings into a Community as a post in a few clicks. This makes it easier to continue conversations and share updates after a meeting.</p>
<p><strong>What’s new</strong></p>
<p>A &#8220;Share as Post&#8221; action is available on recordings, so you can publish a recording without leaving your current workflow.</p>
<p><strong>How to share a recording</strong></p>
<ol>
<li>Go to your profile menu (top-right avatar) and select <em>Manage Profile</em>.</li>
<li>Select <em>Meetings</em>, then view <em>Recordings</em>.</li>
<li>Choose the recording you want to share, then select the three-dot menu.</li>
<li>Select <em>Share as Post</em> to open the Community selection window.</li>
<li>Choose the Community and channel where you want to publish the post.</li>
</ol>
', 'courses', ARRAY['wp-import']::text[], '2026-05-22T15:42:51.000Z'),
('wp-1093', 'Custom modal height for embedded forms, surveys, and quizzes', 'Overview We improved the embed experience for forms, surveys, and quizzes by giving you more control over popup modal sizing and by making key builder actions more reliable while a form is loading. What’s improved You can set a custom modal height for Popup, Polite Slide-in, and ...', '<h2>Overview</h2>
<p>We improved the embed experience for forms, surveys, and quizzes by giving you more control over popup modal sizing and by making key builder actions more reliable while a form is loading.</p>
<h2>What’s improved</h2>
<ul>
<li>You can set a custom modal height for Popup, Polite Slide-in, and Sticky Sidebar embeds.</li>
<li>This helps embedded forms fit better on host pages instead of feeling too tall or too small.</li>
<li>Preview, Integrate, and Save stay disabled until the builder fully loads, which prevents clicks that don’t respond.</li>
<li>Existing embeds work the same unless you add a modal height.</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open a Form, Survey, or Quiz in the builder.</li>
<li>Wait for the builder to finish loading, then click Integrate.</li>
<li>Select Embed Code and choose Popup, Polite Slide-in, or Sticky Sidebar.</li>
<li>Enter a value in Modal height, then copy and use the embed code.</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Gives you more control over how embedded forms appear on your site.</li>
<li>Helps avoid awkward modal sizing across different pages and screen sizes.</li>
<li>Reduces confusion caused by clicking actions before the form is ready.</li>
<li>Keeps older embeds compatible.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:42:20.000Z'),
('wp-1092', 'Manage Fields now shows all form, survey, and quiz fields', 'Overview Manage Fields has been updated so you can see all fields from your form, survey, or quiz, even if those fields do not have submission data yet. Previously, Manage Fields only displayed fields that already had data from at least one submission. Now it also includes fields...', '<h2>Overview</h2>
<p>Manage Fields has been updated so you can see all fields from your form, survey, or quiz, even if those fields do not have submission data yet.</p>
<p>Previously, Manage Fields only displayed fields that already had data from at least one submission. Now it also includes fields from the form definition, which makes it easier to set up and manage columns before new submissions come in.</p>
<h2>What’s improved</h2>
<ul>
<li>Manage Fields now shows all fields from your form, survey, or quiz definition</li>
<li>New fields appear even if they have not received any submission data yet</li>
<li>Fields added after earlier submissions will now appear in the available fields list</li>
<li>Available but unselected fields show up in the Add Fields section</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Go to Sites &gt; Forms, Surveys, or Quizzes</li>
<li>Open the three-dot menu for the item you want</li>
<li>Click View Submission</li>
<li>On the Submissions page, click Manage Columns to view and add fields from the definition</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Makes it easier to manage columns before new submissions arrive</li>
<li>Improves visibility into all available fields</li>
<li>Helps you prepare reports and views without waiting for test or live submissions</li>
<li>Creates a more complete and predictable submissions management experience</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-05-22T15:42:02.000Z'),
('wp-1091', 'Gradient backgrounds for buttons in forms, surveys, and quizzes', 'Overview You can now use gradient backgrounds for buttons in the Form, Survey, and Quiz Builder. This lets you switch between a solid color and a gradient directly in the button settings. What’s improved Apply a gradient background to buttons Choose solid color or gradient stylin...', '<h2>Overview</h2>
<p>You can now use gradient backgrounds for buttons in the Form, Survey, and Quiz Builder. This lets you switch between a solid color and a gradient directly in the button settings.</p>
<h2>What’s improved</h2>
<ul>
<li>Apply a gradient background to buttons</li>
<li>Choose solid color or gradient styling</li>
<li>Use linear, radial, or angular gradients</li>
<li>Adjust the gradient angle where supported</li>
<li>Add and edit multiple color stops</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open the Form, Survey, or Quiz Builder and select a button element.</li>
<li>In the button style settings, open <strong>Button Background</strong>, then switch from solid color to gradient and customize the colors, type, and angle.</li>
</ol>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;