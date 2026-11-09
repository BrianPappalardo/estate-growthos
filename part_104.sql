INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li><strong>Unified dashboard</strong> with filters for course and enrollment date</li>
<li><strong>Key metrics</strong> including completion rate, average progress, and time to complete, with period-over-period comparisons</li>
<li><strong>Learner journey funnel</strong> showing Enrolled → Started → Completed</li>
<li><strong>Member progress table</strong> with enrollment, activity, completion, and session details</li>
<li><strong>CSV export</strong> for filtered reports, with email delivery for larger exports</li>
</ul>
<h2>Faster performance</h2>
<ul>
<li>About 43% faster page loads</li>
<li>About 90% less data downloaded</li>
<li>A smoother, more responsive analytics experience</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Measure learner engagement in one place</li>
<li>Spot learners who may need attention before they disengage</li>
<li>Make data-driven improvements to your courses</li>
<li>Export insights to share with your team</li>
</ul>
<h2>Availability</h2>
<p>Enable <strong>New Course Progress Analytics</strong> in <strong>Labs</strong>, then access it via <strong>Memberships → Courses → Analytics → Course Progress</strong>.</p>
<h2>Coming next</h2>
<p>Assessment Analytics and Revenue Analytics are planned next to round out the courses analytics experience.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1249', 'Inline validation errors in the schema markup JSON view', 'Overview The Schema Markup JSON view in the Website and Funnel Builder now shows validation errors directly on the exact lines that need attention. Previously, JSON validation errors appeared as a general alert, which made it harder to find the source of the problem. Now, each er...', '<h2>Overview</h2>
<p>The Schema Markup JSON view in the Website and Funnel Builder now shows validation errors directly on the exact lines that need attention.</p>
<p>Previously, JSON validation errors appeared as a general alert, which made it harder to find the source of the problem. Now, each error is marked inline with a tooltip that explains the issue.</p>
<h2>What’s improved</h2>
<ul>
<li>Validation errors appear inline next to the exact JSON line causing the issue</li>
<li>Hovering over an error marker shows a plain-language explanation</li>
<li>Works for nested fields and more complex schema structures</li>
<li>Supports multi-schema (@graph) JSON, with errors routed to the correct schema block</li>
<li>Errors clear one by one as each issue is fixed</li>
</ul>
<h2>How to access</h2>
<ol>
<li>Open Website Builder or Funnel Builder</li>
<li>Open the page editor</li>
<li>Go to SEO and AI search optimization &gt; Schema Markup</li>
<li>Open Add/Edit Schema and switch to JSON view</li>
<li>Select Validate and Save to see inline error markers</li>
</ol>
<h2>Why it matters</h2>
<ul>
<li>Makes schema errors easier to find and fix</li>
<li>Reduces guesswork when editing large or complex JSON-LD scripts</li>
<li>Helps you save valid schema faster</li>
<li>Improves the editing experience for advanced schema use cases</li>
</ul>
<h2>Good to know</h2>
<ul>
<li>Works across Website Builder and Funnel Builder</li>
<li>Supports common schema types, including Product, Organization, FAQ, LocalBusiness, Article, Recipe, and Event</li>
<li>Fully supports multi-schema (@graph) payloads</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1248', 'Updated placeholder images in the Store Builder', 'Summary We updated the placeholder images used across Ecommerce Store pages and elements in the Page Builder. The new illustration-style placeholders make the editor look cleaner and more consistent, and they help avoid confusion that can happen when realistic product images appe...', '<h2>Summary</h2>
<p>We updated the placeholder images used across Ecommerce Store pages and elements in the Page Builder. The new illustration-style placeholders make the editor look cleaner and more consistent, and they help avoid confusion that can happen when realistic product images appear in placeholders.</p>
<h2>Where you will see the updates</h2>
<ul>
<li>Product Listing, Product Detail, Cart, Checkout, and Thank You pages</li>
<li>Featured Product, Featured Products, Upsell, and Collection elements</li>
</ul>
<h2>Other improvements</h2>
<p>We also standardized placeholder text (for example, <strong>Product title</strong> and <strong>Collection title</strong>) and improved previews in the builder by showing:</p>
<ul>
<li>Subscription and Free Trial badges below the price on product cards</li>
<li>A product image placeholder for collections without an image (instead of a gray placeholder)</li>
</ul>
<h2>How to enable it</h2>
<ol>
<li>Go to <strong>Admin Portal → Settings → Labs</strong>.</li>
<li>Search for <strong>Page Builder: New Image Placeholders</strong>.</li>
<li>Turn the feature <strong>On</strong>.</li>
<li>Reload the Page Builder to see the updated placeholders.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This is a visual-only update. Layouts, functionality, and live store content are not changed.</li>
<li>This only affects placeholder images shown when no product or collection is connected.</li>
<li>The Labs setting is enabled per sub-account and can be turned off at any time to restore the original placeholders.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-08-11T13:55:59.000Z'),
('wp-1247', 'New templates are now available in Leadli', 'We’ve added new web templates to help you launch pages and campaigns faster. These templates are fully customizable and designed to keep your workflow simple so you can focus on your audience and results. New templates included Website templates (1) Beauty & Fashion (1) Social te...', '<p>We’ve added new web templates to help you launch pages and campaigns faster. These templates are fully customizable and designed to keep your workflow simple so you can focus on your audience and results.</p>
<h3>New templates included</h3>
<h4>Website templates (1)</h4>
<ul>
<li>Beauty &amp; Fashion (1)</li>
</ul>
<h4>Social templates (4)</h4>
<ul>
<li>Real Estate (2)</li>
<li>Automotive (2)</li>
</ul>
<h4>Facebook ad templates (2)</h4>
<ul>
<li>Travel &amp; Hospitality: Travel Blogger</li>
<li>Creative: Architectural Design</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;