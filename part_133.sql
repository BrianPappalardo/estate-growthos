INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<ul>
<li>Match the widget text to your brand voice</li>
<li>Use more conversion-focused wording</li>
<li>Adapt labels for different industries or use cases</li>
<li>Create a more personalized lead capture experience</li>
</ul>
<p>Examples:</p>
<ul>
<li>“Business name” → “Company name”</li>
<li>“Website” → “Enter your website URL”</li>
<li>“Phone number” → “Best number to reach you”</li>
</ul>
<h2>Expected impact</h2>
<ol>
<li>Better alignment with landing page messaging</li>
<li>Improved flexibility for agencies managing multiple campaigns</li>
<li>A more personalized and conversion-friendly lead capture form</li>
</ol>
<h2>What’s next</h2>
<p>Upcoming improvements are planned for:</p>
<ol>
<li>Support for custom fields</li>
<li>Field-level visibility and functionality controls</li>
<li>More advanced layout and customization options</li>
</ol>
<p>These changes make Marketing Audit widgets more flexible and easier to tailor to different business needs.</p>
<p>Note: Marketing Audit reports are primarily for lead generation for marketing agencies. If this is you, reach out to our support team to enable this in your account.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-05-19T15:56:53.000Z'),
('wp-1080', 'Customize quiz result content by category', 'Overview You can now personalize quiz result pages by setting different content for each quiz category. This makes results clearer for the contact and reduces the time needed to set up personalized outcomes. What changed Set custom result content per category (text, CTA text, and...', '<h2>Overview</h2>
<p>You can now personalize quiz result pages by setting different content for each quiz category. This makes results clearer for the contact and reduces the time needed to set up personalized outcomes.</p>
<h2>What changed</h2>
<ul>
<li>Set custom result content per category (text, CTA text, and links).</li>
<li>Apply content to the highest-scoring category result or the lowest-scoring category result.</li>
<li>Use the first category as a starting template for other categories to speed up setup.</li>
<li>Previewing and editing category content is clearer during setup.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open the Quiz Builder.</li>
<li>Go to <strong>Customize Result Page</strong> and select <strong>Add Section</strong>.</li>
<li>Choose <strong>Individual Category</strong> to add the section to the results page.</li>
<li>Select the new Individual Category section to expand it.</li>
<li>Choose the category you want to edit.</li>
<li>Use <strong>Display Category</strong> to choose whether the content applies to <strong>Highest Score</strong> or <strong>Lowest Score</strong>.</li>
<li>Update the content and save.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-05-19T15:55:56.000Z'),
('wp-1079', 'AI Agent action: Knowledge Base Search', 'Overview The AI Agent action now includes Knowledge Base Search as a built-in tool. During execution, the agent can search your knowledge base in real time and use the results to improve accuracy and responses. What it does Connects to your knowledge base, where your business inf...', '<h2>Overview</h2>
<p>The AI Agent action now includes Knowledge Base Search as a built-in tool. During execution, the agent can search your knowledge base in real time and use the results to improve accuracy and responses.</p>
<h2>What it does</h2>
<ul>
<li>Connects to your knowledge base, where your business information already lives (services, pricing, offerings, booking rules, FAQs, and more).</li>
<li>Pulls only the information needed for the current request instead of loading large, static content into prompts.</li>
<li>Helps avoid copying long FAQ lists and business details into prompts, which can increase token usage and reduce accuracy.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Select <strong>Knowledge Base Search</strong> as a tool inside the AI Agent action.</li>
<li>Choose which knowledge bases the agent should search.</li>
<li>Set a fixed search query, or allow the agent to choose a query based on the conversation.</li>
<li>Set how many content chunks the agent should retrieve.</li>
</ol>
<h2>Why it matters</h2>
<p>Instead of adding pages of business context up front, the agent can fetch what it needs at runtime. This keeps the context window smaller, reduces token usage, and helps the agent stay focused on relevant information.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-05-19T15:55:32.000Z'),
('wp-1078', 'Ask AI blog generation: create full blog drafts from a simple prompt', 'We’ve upgraded Ask AI into a full blog-writing assistant. You can now generate complete, SEO-friendly blog drafts directly inside Ask AI without switching tools or building content from scratch. From topic ideas to long-form content, Ask AI helps you create blogs faster and with ...', '<p>We’ve upgraded Ask AI into a full blog-writing assistant.</p>
<p>You can now generate complete, SEO-friendly blog drafts directly inside Ask AI without switching tools or building content from scratch. From topic ideas to long-form content, Ask AI helps you create blogs faster and with less effort.</p>
<h3>What’s new</h3>
<ol>
<li><strong>AI-powered blog generation</strong><br />Ask AI can generate complete blog drafts from a topic or prompt, including:
<ul>
<li>Blog title suggestions</li>
<li>Structured headings and subheadings</li>
<li>SEO-friendly formatting</li>
<li>Long-form paragraphs</li>
<li>Ready-to-edit blog drafts</li>
</ul>
</li>
<li><strong>Smarter content with web context</strong><br />Ask AI can use web-based context to generate more relevant and up-to-date content. This improves:
<ul>
<li>Topic relevance</li>
<li>Content depth</li>
<li>Accuracy for trending topics</li>
<li>Overall blog quality</li>
</ul>
</li>
<li><strong>Multi-language support</strong><br />Generate blog content in multiple languages to support localized publishing for global teams.</li>
<li><strong>URL referencing support</strong><br />You can provide URLs for contextual reference so Ask AI can generate more aligned content.</li>
</ol>
<h3>How to use this feature</h3>
<ol>
<li>Open Ask AI</li>
<li>Enter a topic or custom prompt</li>
<li>Optionally add one or more URLs for context</li>
<li>Generate the structured blog draft</li>
<li>Edit, refine, and publish as needed</li>
</ol>
<h3>Why it matters</h3>
<ul>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;