INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li><strong>Validate before saving:</strong> Check a definition for errors without saving. Errors point to the exact step.</li>
<li><strong>Publish or unpublish:</strong> Publish a workflow or set it back to draft.</li>
<li><strong>Search and delete:</strong> Find workflows by name, status, folder, or date, and delete workflows.</li>
<li><strong>Step types:</strong> Browse every trigger and action available in the sub-account, including its fields.</li>
<li><strong>Execution logs:</strong> See who entered a workflow, what happened at each step, and which steps failed (with error details).</li>
<li><strong>Statistics:</strong> Count enrollments, completions, and failures per step by hour, day, or week.</li>
</ul>
<h2>Why it matters</h2>
<ul>
<li>Roll out the same workflow to many sub-accounts without rebuilding it by hand.</li>
<li>Catch failing steps from your own monitoring instead of checking workflows one by one.</li>
<li>Let your app or AI agent build workflows for your clients.</li>
</ul>
<h2>Example use cases</h2>
<h3>Standard rollout</h3>
<p>Read a workflow from your template sub-account, create it in each client sub-account, then publish it.</p>
<h3>Failure report</h3>
<p>Each week, count failures per step for key workflows, list affected contacts, and send a summary to your team.</p>
<h3>Onboarding from your app</h3>
<p>When a client signs up in your product, your app can create and publish their onboarding workflow in their sub-account.</p>
<h2>How to get started</h2>
<ol>
<li>In the sub-account, go to <strong>Settings</strong> → <strong>Private Integrations</strong>. Create an integration and select the workflow scopes you need (View, Edit, Publish, Delete, and View Logs).</li>
<li>Send the token as a bearer token, include the <code>Version: v3</code> header, and include the sub-account’s <code>locationId</code> on each request.</li>
<li>Use the Workflows API reference for endpoint details: <a href="https://marketplace.leadconnectorhq.com/docs/leadconnector/workflows/workflows-api-v-3" target="_blank" rel="noopener noreferrer">https://marketplace.leadconnectorhq.com/docs/leadconnector/workflows/workflows-api-v-3</a></li>
</ol>
<h2>Notes</h2>
<ul>
<li><strong>Private beta:</strong> The Workflows API is enabled for selected sub-accounts. Other accounts may receive a 403 error with <code>WORKFLOW_API_NOT_ENABLED_FOR_LOCATION</code>. Contact support to request access.</li>
<li><strong>Full replacement updates:</strong> Updates replace the full workflow, so read the workflow first and then send back the updated version you read.</li>
<li><strong>Editing published workflows:</strong> To edit a published workflow, set it to draft first. While it’s a draft, triggers are off and contacts in the workflow are paused.</li>
<li><strong>App step requirements:</strong> App steps only accept an app account that is already connected in the sub-account.</li>
<li><strong>Deleting workflows:</strong> Deleting a workflow is permanent and stops everyone currently in it.</li>
<li><strong>Log retention:</strong> Logs cover up to 30 days per request and can go back 60 days. They show live runs; test runs from the builder are not included.</li>
</ul>
<p>Support documentation: <a href="https://help.leadconnectorhq.com/support/solutions/articles/155000009503-workflows-api-%E2%80%93-create-publish-and-monitor-workflows-by-api" target="_blank" rel="noopener noreferrer">https://help.leadconnectorhq.com/support/solutions/articles/155000009503-workflows-api-%E2%80%93-create-publish-and-monitor-workflows-by-api</a></p>
', 'automations', ARRAY['wp-import']::text[], '2026-10-28T19:14:28.000Z'),
('wp-1660', 'Custom Objects in Client App Builder: connect your portal to your Leadli CRM', 'Your Client Portal can do more than display content. With Custom Objects in Client App Builder , you can build interactive experiences where members submit information, create records, and work with data that stays connected to your Leadli CRM. Describe what you want to build, an...', '<p>Your Client Portal can do more than display content. With <strong>Custom Objects in Client App Builder</strong>, you can build interactive experiences where members submit information, create records, and work with data that stays connected to your Leadli CRM.</p>
<p>Describe what you want to build, and AI helps create the data structure, pages, and workflows without writing code.</p>
<h3>What’s new</h3>
<ul>
<li><strong>AI-powered custom object creation</strong> — Describe what members need to submit, and AI designs the custom objects, fields, dropdowns, and relationships.</li>
<li><strong>Direct CRM integration</strong> — Member submissions are saved as Custom Object records in your sub-account CRM.</li>
<li><strong>Review before creating</strong> — Preview the proposed structure, sample records, and access permissions before approving changes.</li>
<li><strong>Interactive member experiences</strong> — Generate portal pages where members can view and add records (service requests, applications, inquiries, and more).</li>
<li><strong>Flexible data visibility</strong> — Control whether members can access their own records, their company’s records, or read-only records.</li>
<li><strong>Built-in payment support</strong> — Trigger payment actions on records through Leadli invoices when a payment provider is connected.</li>
<li><strong>Smarter object management</strong> — Create up to 3 objects per request, reuse existing objects, and manage the limit of 10 custom objects per sub-account.</li>
</ul>
<h3>Why it matters</h3>
<p>Previously, collecting and storing member-submitted information in a Client Portal often required extra tools or manual integrations.</p>
<p>With <strong>Custom Objects in Client App Builder</strong>, your portal becomes an interactive extension of your CRM.</p>
<p>Whether you’re collecting <strong>program applications, service requests, property inquiries, or booking details</strong>, members can submit information directly through your portal while everything stays organized in Leadli.</p>
<h3>Benefits</h3>
<ul>
<li><strong>Collect information in one place</strong> — Members can submit requests and applications without leaving your portal.</li>
<li><strong>Keep everything connected</strong> — Store member-submitted data in your existing CRM automatically.</li>
<li><strong>Build without coding</strong> — Use AI to create data structures and connected portal pages using natural language.</li>
<li><strong>Stay in control</strong> — Review and approve each proposed custom object before it’s created.</li>
<li><strong>Create more interactive portals</strong> — Go beyond content delivery with personalized, data-driven experiences.</li>
</ul>
<h3>Getting started</h3>
<ol>
<li>Enable <strong>Client App Builder</strong> from Labs.</li>
<li>Open Client App Builder and start building or customizing your Client Portal.</li>
<li>Describe the information you want members to submit (for example: <em>“Let members apply for a 1:1 coaching session.”</em>).</li>
<li>When prompted, confirm you want to use <strong>Custom Objects</strong> in your CRM.</li>
<li>Review the proposed objects, fields, relationships, and visibility settings.</li>
<li>Approve the plan, and AI will create the objects and connected portal pages.</li>
</ol>
<p>You can access the newly created objects directly from your Leadli CRM.</p>
<p><strong>Availability:</strong> Custom Objects are available through <strong>Client App Builder in Labs</strong>, supporting web-based Client Portals and Vibe Coding experiences. Branded mobile app support is included.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-10-28T15:30:44.000Z'),
('wp-1659', 'Vibe Coding in Leadli Client App Builder: Build a client portal with AI', 'Your client portal can now be built with AI. Vibe Coding in the Leadli Client App Builder lets you create a customized client portal by describing what you want. No coding is required. AI can help you design pages and build working experiences while keeping everything connected t...', '<p>Your client portal can now be built with AI. Vibe Coding in the Leadli Client App Builder lets you create a customized client portal by describing what you want. No coding is required.</p>
<p>AI can help you design pages and build working experiences while keeping everything connected to your existing members, courses, communities, and other data.</p>
<h2>What&#8217;s new</h2>
<ul>
<li><strong>Build with AI prompts</strong> — Describe your business and the experience you want. AI asks a few questions and generates functional pages based on your answers.</li>
<li><strong>Personalized designs</strong> — Choose a design system, add your brand images, and keep styling consistent across the portal.</li>
<li><strong>Built-in integrations</strong> — Connect courses, communities, shared files, appointments, member accounts, and existing data without external integrations.</li>
<li><strong>Build through conversation</strong> — Refine your portal with simple prompts, get suggested next steps, and generate missing pages quickly.</li>
<li><strong>Visual editing</strong> — Select elements in the preview and describe the changes you want AI to make.</li>
<li><strong>Flexible starting points</strong> — Start from scratch or build on your existing client portal experience.</li>
<li><strong>Custom domains</strong> — Publish your portal with a custom address and connect up to 10 custom domains.</li>
<li><strong>Dark mode support</strong> — Switch the builder between Light, Dark, or System themes without changing your portal design.</li>
</ul>
<h2>Why it matters</h2>
<p>Previously, creating a unique client portal experience often meant working within predefined layouts or paying for custom development.</p>
<p>With Vibe Coding, you can design, build, and publish a portal that fits your business using natural language, while keeping the core client portal functionality.</p>
<h2>Benefits</h2>
<ul>
<li><strong>Build without coding</strong> — Turn ideas into working client portals through guided prompts.</li>
<li><strong>Create a portal that matches your brand</strong> — Adjust layout and flow instead of relying on fixed templates.</li>
<li><strong>Keep everything connected</strong> — Use your existing courses, communities, members, and content.</li>
<li><strong>Iterate faster</strong> — Make design and functionality updates quickly using prompts and visual editing.</li>
<li><strong>Launch under your brand</strong> — Publish on your own domain.</li>
</ul>
<h2>Getting started</h2>
<ol>
<li>Enable <strong>Client App Builder</strong> from Labs.</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;