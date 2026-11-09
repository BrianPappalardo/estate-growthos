INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>After the upload completes, the relevant admins and users receive an in-app notification.</li>
</ol>
<h2>Why this matters</h2>
<p>Uploaded documents often need timely follow-up, such as reviewing contracts, verifying documents, or completing onboarding steps. Notifications help teams respond sooner without checking the client portal manually.</p>
<h2>Notes</h2>
<ul>
<li>Notifications trigger only for uploads made in the client portal Shared Documents area.</li>
<li>Each staff member’s preferences are managed individually.</li>
<li>The only supported notification channel at this time is in-app notifications.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1252', 'Improved product sales in Forms and Surveys', 'Selling products in Forms and Surveys is now easier. The Sell Products element has a single payment configuration panel, so you can connect a payment provider and configure products in one place. This update also adds support for selecting price levels and product variants. What’...', '<p>Selling products in Forms and Surveys is now easier. The Sell Products element has a single payment configuration panel, so you can connect a payment provider and configure products in one place. This update also adds support for selecting price levels and product variants.</p>
<p><strong>What’s new</strong></p>
<ol>
<li>A unified payment configuration panel</li>
<li>Connect payment providers without leaving the builder</li>
<li>Support for product price level selection</li>
<li>Support for product variant selection</li>
</ol>
<p><strong>Key details</strong></p>
<ol>
<li>Configure products, pricing, and payment settings from one interface</li>
<li>Customers can choose from multiple price levels when available</li>
<li>Customers can select variants when variants are available</li>
<li>Selections are shown in the payment summary</li>
<li>Selections pass through to checkout, invoicing, and payment processing</li>
<li>Required selections are validated before submission</li>
<li>Existing payment settings remain supported</li>
</ol>
<p><strong>How it works</strong></p>
<ol>
<li>Add a Sell Products element to your Form or Survey.</li>
<li>Open the Payment panel.</li>
<li>Connect your payment provider if it is not already connected.</li>
<li>Select the products and configure available price levels and variants.</li>
<li>Customers choose their options before submitting.</li>
</ol>
<p><strong>Notes</strong></p>
<ol>
<li>Existing Forms and Surveys continue to work as before.</li>
<li>Price level and variant selection are available for supported products with multi-price or variant setups.</li>
<li>No changes are made unless you update the payment configuration.</li>
<li>Supported on desktop and mobile.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1251', 'Generate submission documents for forms, surveys, and quizzes', 'Capturing responses is useful, and having them available as printable documents can be even more helpful. Leadli now includes a Generate submission document setting that automatically creates and stores PDF copies of every submission. What’s new A Generate submission document tog...', '<p>Capturing responses is useful, and having them available as printable documents can be even more helpful. Leadli now includes a <strong>Generate submission document</strong> setting that automatically creates and stores PDF copies of every submission.</p>
<p><strong>What’s new</strong></p>
<p>A <strong>Generate submission document</strong> toggle is available in the Settings panel for:</p>
<ul>
<li>Forms</li>
<li>Surveys</li>
<li>Quizzes</li>
</ul>
<p>When enabled, each new submission automatically generates a formatted PDF document.</p>
<p><strong>Key highlights</strong></p>
<ol>
<li>Automatically generates a printable PDF for every submission</li>
<li>Includes all questions and submitted responses</li>
<li>Captures submission details including:</li>
</ol>
<ul>
<li>Submission date and time</li>
<li>Form, Survey, or Quiz name</li>
<li>Contact information</li>
</ul>
<ol start="4">
<li>Automatically stores the document under:</li>
</ol>
<ul>
<li>Contacts → Documents → Forms</li>
<li>Contacts → Documents → Surveys</li>
<li>Contacts → Documents → Quizzes</li>
</ul>
<ol start="5">
<li>Automatically associates the document with the submitting contact</li>
<li>PDFs can be viewed, downloaded, and used throughout the CRM</li>
<li>Supported across desktop and mobile experiences</li>
</ol>
<p><strong>How it works</strong></p>
<ul>
<li>Open the settings for a Form, Survey, or Quiz.</li>
<li>Turn <strong>Generate submission document</strong> on.</li>
<li>Each new submission generates and stores a PDF document.</li>
<li>Access the document from the contact’s Documents section or in supported CRM workflows.</li>
</ul>
<p><strong>PDF naming convention</strong></p>
<ul>
<li><strong>Forms and Surveys:</strong> <code>[FormName]_[ContactName]_[YYYY-MM-DD_HHMM]</code></li>
<li><strong>Quizzes:</strong> <code>Result_[FormName]_[ContactName]_[YYYY-MM-DD_HHMM]</code></li>
</ul>
<p><strong>Notes</strong></p>
<ol>
<li>PDF generation is optional and controlled per Form, Survey, or Quiz.</li>
<li>Documents are organized into their respective folders (Forms, Surveys, or Quizzes).</li>
<li>Existing submissions are not affected; only new submissions generate documents after the setting is enabled.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1250', 'Course progress analytics has been rebuilt', 'Overview Course Progress Analytics has been rebuilt and is now available. It provides a faster and more reliable way to understand how learners engage with your courses. You can track completion trends, identify drop-offs, and review individual learner progress from one dashboard...', '<h2>Overview</h2>
<p>Course Progress Analytics has been rebuilt and is now available. It provides a faster and more reliable way to understand how learners engage with your courses. You can track completion trends, identify drop-offs, and review individual learner progress from one dashboard.</p>
<h2>What’s new</h2>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;