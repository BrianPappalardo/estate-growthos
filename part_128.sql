INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h2>How it works</h2>
<ol>
<li>Select a campaign template from the Ad Template Library or while creating a campaign in Ad Manager.</li>
<li>The preview shows the hierarchy: Campaign → Ad Set / Ad Group → Ads.</li>
<li>Use the sidebar to switch between Ad Sets / Ad Groups and instantly preview the related creatives.</li>
<li>This same preview experience is also available when creating campaigns from templates in Leadli Ad Manager.</li>
</ol>
<h2>Why it matters</h2>
<ol>
<li>Helps you review complete campaign structures before creating a campaign.</li>
<li>Makes it easier to understand templates that include multiple ad sets/groups and creatives.</li>
<li>Reduces confusion from earlier single-ad-only previews.</li>
<li>Provides a more consistent preview experience across Meta, Google, and LinkedIn.</li>
<li>Improves confidence when using templates for agencies and advertisers.</li>
</ol>
<h2>Notes</h2>
<ol>
<li>Supports customer-created templates with multiple ad sets/groups and ads.</li>
<li>The preview component has been centralized and simplified for easier maintenance and scalability.</li>
<li>Placements shown in the preview include: Meta (Feed, Story, Reels), Google (Search, YouTube, Gmail), and LinkedIn (native placement).</li>
<li>Includes UI/UX improvements, fullscreen preview refinements, and non-scrollable preview optimizations.</li>
<li>Applies across the Template Library and the Ad Manager template-based campaign creation flow.</li>
</ol>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:15:57.000Z'),
('wp-1103', 'Enhanced Calendly reschedule handling in Leadli', 'Overview We improved how Calendly appointment reschedules are handled in Leadli to provide a consistent scheduling and automation experience. With this update, Calendly reschedules behave the same way as native Leadli appointment reschedules. This helps reschedule-based workflows...', '<h2>Overview</h2>
<p>We improved how Calendly appointment reschedules are handled in Leadli to provide a consistent scheduling and automation experience.</p>
<p>With this update, Calendly reschedules behave the same way as native Leadli appointment reschedules. This helps reschedule-based workflows, tags, and tracking work consistently across the platform.</p>
<h2>What’s new</h2>
<ul>
<li>Calendly reschedules are treated as true appointment reschedules in Leadli.</li>
<li>Existing appointments are updated instead of being recreated.</li>
<li>Rescheduled appointments are correctly marked as Rescheduled.</li>
<li>Reschedule-based automations and conditions work consistently for Calendly appointments.</li>
</ul>
<h2>How it works</h2>
<p>When an appointment is rescheduled in Calendly:</p>
<ul>
<li>The existing Leadli appointment is updated with the new date and time.</li>
<li>The appointment is marked as Rescheduled.</li>
<li>The previous appointment date and time is preserved for tracking.</li>
<li>Rescheduled tags and workflow conditions are applied correctly.</li>
</ul>
<p>Workflows using a “Rescheduled = True” filter will also work for Calendly reschedules.</p>
<h2>Why this matters</h2>
<ul>
<li>Creates a consistent scheduling experience across Calendly and Leadli.</li>
<li>Improves reliability for reschedule-based workflows and automations.</li>
<li>Enhances appointment tracking and reporting accuracy.</li>
<li>Reduces manual effort when managing appointment changes.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-06-01T21:15:24.000Z'),
('wp-1102', 'One-click fixes for common email setup issues', 'Leadli now includes AI-powered one-click fixes for common email configuration issues, such as invalid custom value syntax or missing subject lines. What’s new When an email fails validation, you can run a one-click AI fix. The AI applies the correction, creates a required variant...', '<p>Leadli now includes AI-powered one-click fixes for common email configuration issues, such as invalid custom value syntax or missing subject lines.</p>
<h2>What’s new</h2>
<ul>
<li>When an email fails validation, you can run a one-click AI fix.</li>
<li>The AI applies the correction, creates a required variant when needed, and logs the updates in the Email AI chat window.</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Less manual troubleshooting for email setup errors.</li>
<li>Faster time to send by resolving issues automatically.</li>
<li>Improved send reliability by fixing invalid configurations.</li>
<li>Clear visibility into changes through the AI chat history.</li>
</ul>
<h2>How to test</h2>
<ol>
<li>Enable Email AI in Beta Labs.</li>
<li>Create a campaign email with an issue (for example, incorrect custom field syntax or a missing subject line/preview text).</li>
<li>Click Send, Schedule, or open the Checklist.</li>
<li>If validation errors appear, click <strong>Fix with AI</strong>.</li>
<li>Review the Email AI chat window to see what was fixed and what changes were logged.</li>
</ol>
<h2>Coming soon</h2>
<p>“Beautify with AI” is planned to improve mobile responsiveness, alignment, spacing, and overall email layout consistency with a single click.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:15:05.000Z'),
('wp-1101', 'SEO improvements: automatic alt text for store images and elements', 'This update adds automatic alt text generation for ecommerce images and store elements to improve SEO and accessibility. Alt text is created from existing information such as product name, collection name, store name, variant name, payment method, and the element context. If need...', '<p>This update adds automatic alt text generation for ecommerce images and store elements to improve SEO and accessibility.</p>
<p>Alt text is created from existing information such as product name, collection name, store name, variant name, payment method, and the element context. If needed, translations are used as a fallback.</p>
<h2>What is included</h2>
<ul>
<li><strong>Product images:</strong> main images use the product name; gallery images include the product name and image number; variant images include the product name and variant name; upsell and bundle images use the product name.</li>
<li><strong>Collection and branding:</strong> collection cover images use the collection name; header logos use the store name when no alt text is provided.</li>
<li><strong>Store elements:</strong> product cards, featured product, related products, cart item images, and checkout thumbnails use product-based alt text; components inside store elements use the component name when available.</li>
</ul>
<h2>How to use it</h2>
<p>No action is required. Alt text is generated automatically for supported ecommerce images and store elements.</p>
<h2>Notes</h2>
<ul>
<li>There is no new UI or manual alt text input in this version.</li>
<li>Alt text is generated from existing store and product information.</li>
<li>Storefront design and user workflow remain unchanged.</li>
</ul>
', 'reporting', ARRAY['wp-import']::text[], '2026-06-01T21:14:41.000Z'),
('wp-1100', 'New templates now available in Leadli', 'New templates are now available to help you build websites, funnels, forms, surveys, emails, ads, and social posts more quickly in Leadli. Everything is fully customizable, so you can start with a finished layout and adjust it to match your brand. What’s included in this release ...', '<p>New templates are now available to help you build websites, funnels, forms, surveys, emails, ads, and social posts more quickly in Leadli. Everything is fully customizable, so you can start with a finished layout and adjust it to match your brand.</p>
<h3>What’s included in this release</h3>
<ul>
<li><strong>Website templates:</strong> 1 (Marketing Agency)</li>
<li><strong>Email templates:</strong> 1 (Insurance)</li>
<li><strong>Form templates:</strong> 1 (Creative)</li>
<li><strong>Survey templates:</strong> 1 (Home Services)</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;