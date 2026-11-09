INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>The related <strong>Gift Card Order</strong> is updated with the remaining balance after each successful redemption.</li>
</ul>
', 'calendar', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1312', 'AI agent actions now cost up to 50% less to run', 'Overview Leadli has reduced the cost of running AI agent actions by improving the agent execution pipeline. In internal testing, agent runs are now about 40% to 50% cheaper, with no change to behavior, output quality, or setup. What changed Lower cost per AI agent execution (up t...', '<h2>Overview</h2>
<p>Leadli has reduced the cost of running AI agent actions by improving the agent execution pipeline. In internal testing, agent runs are now about 40% to 50% cheaper, with no change to behavior, output quality, or setup.</p>
<h2>What changed</h2>
<ul>
<li>Lower cost per AI agent execution (up to 50%).</li>
<li>Prompt caching: repeated context across agent steps is cached instead of being resent on every call, reducing token usage.</li>
<li>More efficient system and tool prompts: instructions were tightened to reduce tokens per run.</li>
<li>Right-sized models for supporting tasks (summarization, structured output, memory generation) while keeping the core reasoning model the same.</li>
<li>Fewer tokens used per execution overall.</li>
</ul>
<h2>Why it matters</h2>
<p>You get the same results with lower spend, and there is nothing to reconfigure.</p>
<p>The biggest savings are typically seen in longer conversations and multi-step agents.</p>
<h2>How to use</h2>
<p>No action is required. These optimizations are already live and apply automatically to all new and existing AI agent actions.</p>
<p>Setup guide: <a href="https://ideas.Leadli.com/changelog/ai-agent-action-in-workflows" rel="ugc nofollow noopener noreferrer" target="_blank">https://ideas.Leadli.com/changelog/ai-agent-action-in-workflows</a></p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1311', 'Clearer and more accurate invoice line items for rentals', 'Overview We improved how rental pricing is shown on invoices. Each invoice line item now shows the per-unit cost and the quantity booked, which makes invoices clearer and easier to verify. What changed Invoice line items now show per-unit pricing Invoices now show the per-unit co...', '<h2>Overview</h2>
<p>We improved how rental pricing is shown on invoices. Each invoice line item now shows the per-unit cost and the quantity booked, which makes invoices clearer and easier to verify.</p>
<h2>What changed</h2>
<p><strong>Invoice line items now show per-unit pricing</strong></p>
<ul>
<li>Invoices now show the per-unit cost as the unit price, and the quantity reflects the number of units booked. This makes each line item clear and verifiable.</li>
<li><strong>Before:</strong> A rental booked for 3 days across 4 units at $50/day</li>
<li>Invoice showed → Unit price: $540.00 | Qty: 1</li>
<li><strong>After:</strong> A rental booked for 3 days across 4 units at $50/day</li>
<li>Invoice now shows → Unit price: $135.00 | Qty: 4 | Total: $540.00</li>
</ul>
<p><strong>More precise internal pricing calculations</strong></p>
<ul>
<li>Pricing is now calculated per unit before the final total, which improves accuracy across discount configurations and booking setups.</li>
</ul>
<p><strong>Note:</strong> In rare cases involving non-round discount percentages (for example, 16.67%), per-unit rounding ensures the invoice total adds up cleanly. In those cases, the final total may vary by $0.01. This is the most accurate representation of the configured price.</p>
<h2>Why this matters</h2>
<ul>
<li><strong>Clearer invoices:</strong> Customers see a meaningful unit price and quantity instead of a single lump sum.</li>
<li><strong>Consistent across setups:</strong> The calculation follows the same per-unit logic whether renting one item or managing bulk inventory with discount tiers.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:29.000Z'),
('wp-1127', 'Quiz results page default values are easier to set up', 'What’s new We expanded smart default values across multiple sections of the Quiz Results Page to make setup faster and more consistent. Previously available only in the Call to Action section, this now also applies to: Individual Category section Category Score section Overall Sc...', '<h2>What’s new</h2>
<p>We expanded smart default values across multiple sections of the Quiz Results Page to make setup faster and more consistent.</p>
<p>Previously available only in the Call to Action section, this now also applies to:</p>
<ul>
<li>Individual Category section</li>
<li>Category Score section</li>
<li>Overall Score section</li>
</ul>
<h2>Key highlights</h2>
<ul>
<li><strong>Smart default value propagation:</strong> When you configure the first tier (Low/Medium/High) within a category, the values you enter will populate as defaults for the remaining tiers in that category. You can also preview changes in real time across tiers.</li>
<li><strong>Faster results page setup:</strong> Less repetitive configuration across tiers and sections.</li>
<li><strong>Cleaner user experience:</strong> Conditional display behavior stays the same. If required Call to Action fields like Name or Link are blank, the button stays hidden while the content still displays.</li>
<li><strong>Reduced support overhead:</strong> Fewer setup steps should reduce setup-related support requests.</li>
<li><strong>Improved score configuration structure:</strong> Overall Score and Category Score configurations now map by Category ID and Tier ID instead of tier label to avoid overlap and improve reliability.</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Configure the first tier within a section (for example, Low).</li>
<li>Relevant values automatically populate across the remaining tiers of that category.</li>
<li>Customize individual tiers only where needed.</li>
<li>Save the quiz to apply changes.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>These enhancements apply automatically to all new quizzes.</li>
<li>For existing quizzes, re-save the quiz for the updated behavior to take effect.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-06-01T21:20:39.000Z'),
('wp-1126', 'API documentation is now available for Leadli', 'API documentation is now available on the LeadConnector domain, which supports a consistent developer experience for our customers and partners using Leadli. What changed The documentation is now hosted on the LeadConnector domain Access the documentation: https://marketplace.lea...', '<p>API documentation is now available on the LeadConnector domain, which supports a consistent developer experience for our customers and partners using Leadli.</p>
<p><strong>What changed</strong></p>
<ul>
<li>The documentation is now hosted on the LeadConnector domain</li>
</ul>
<p>Access the documentation: <a href="https://marketplace.leadconnectorhq.com/docs" target="_blank" rel="ugc nofollow noopener noreferrer">https://marketplace.leadconnectorhq.com/docs</a></p>
<p><strong>Why this matters</strong></p>
<p>Your developers can now build on top of Leadli. Previously, you had to reach out to our support for API documentation, but now it is publicly available.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-06-01T21:20:25.000Z'),
('wp-1125', 'New templates published in Leadli', 'New templates have been published in Leadli. Website templates Legal: 1 Email templates Marketing Agency: 1 Survey templates Legal: 1 Social Planner templates Insurance: 2 Legal: 2 Google Ad templates Home Services – Appliance Service Health & Wellness – Natural Wellness Finance ...', '<p>New templates have been published in Leadli.</p>
<h3>Website templates</h3>
<ul>
<li>Legal: 1</li>
</ul>
<h3>Email templates</h3>
<ul>
<li>Marketing Agency: 1</li>
</ul>
<h3>Survey templates</h3>
<ul>
<li>Legal: 1</li>
</ul>
<h3>Social Planner templates</h3>
<ul>
<li>Insurance: 2</li>
<li>Legal: 2</li>
</ul>
<h3>Google Ad templates</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;