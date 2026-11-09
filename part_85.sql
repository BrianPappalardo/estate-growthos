INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
('wp-1154', 'Add to Cart from Product Lists and Featured Products', 'Update: Store owners can enable an Add to Cart action directly on the Product List page and the Featured Products element. This lets customers add items to their cart without opening the full Product Details page. What changed Add to Cart toggle: A setting is available to enable ...', '<p><strong>Update:</strong> Store owners can enable an Add to Cart action directly on the Product List page and the Featured Products element. This lets customers add items to their cart without opening the full Product Details page.</p>
<p><strong>What changed</strong></p>
<ul>
<li><strong>Add to Cart toggle:</strong> A setting is available to enable or disable Add to Cart on Product List and Featured Products.</li>
<li><strong>Product card button behavior:</strong>
<ul>
<li>Products with a single variant or a single price show an <strong>Add to Cart</strong> button on the product card.</li>
<li>Products with multiple variants or multiple prices show <strong>Choose Options</strong>. Customers can pick variants and quantity in a modal, then use Add to Cart or Buy Now.</li>
<li>A <strong>View Full Details</strong> link is available in the modal.</li>
</ul>
</li>
<li><strong>Modal matches your Product Details page:</strong> Product Details page settings and styling are reflected in the Add to Cart modal for a consistent experience.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Open Store Builder.</li>
<li>Select the Product List element or the Featured Products element.</li>
<li>Enable the Add to Cart option in the settings panel.</li>
<li>Adjust Product Details page settings as needed (they will be reflected in the modal).</li>
<li>Save and publish.</li>
</ol>
<p><strong>Notes</strong></p>
<ul>
<li>Add to Cart shows for single-variant/single-price products. Choose Options shows for products with multiple variants or prices.</li>
<li>Variant selections in the modal reset after you close and reopen it.</li>
<li>If all variants are out of stock, buttons are hidden, but the product card remains visible.</li>
</ul>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1153', 'Transfer calls to any teammate device (Labs)', 'June 10, 2026 You can now transfer calls to teammates even if they do not have a personal phone number. How to use this Place or receive a call in the web app. Select Warm transfer or Blind transfer . Choose the teammate to transfer the call to. You will see which device types th...', '<p><strong>June 10, 2026</strong></p>
<p>You can now transfer calls to teammates even if they do not have a personal phone number.</p>
<hr>
<p><strong>How to use this</strong></p>
<ol>
<li>Place or receive a call in the web app.</li>
<li>Select <strong>Warm transfer</strong> or <strong>Blind transfer</strong>.</li>
<li>Choose the teammate to transfer the call to. You will see which device types they can receive the call on.</li>
<li>Click <strong>Hold &amp; Call</strong>.</li>
<li>The receiving teammate will see that the call is a transfer (when answering in the web app).</li>
<li>They answer the call.</li>
<li>Complete the transfer as usual.</li>
</ol>
<hr>
<p><strong>Key points</strong></p>
<ul>
<li>Works for warm and blind transfers.</li>
<li>Works for outbound and inbound calls.</li>
<li>Mobile apps as a transfer destination are planned in the next few weeks.</li>
<li>Subsequent call transfers are not supported yet.</li>
<li>Transfers ring every device set under “Forward calls to” at the same time (Web App, Phone, and SIP desk phone).</li>
</ul>
<hr>
<p><strong>Enable this in Labs</strong></p>
<ol>
<li>Go to <strong>Agency Settings</strong> → <strong>Labs</strong> → <strong>Sub-Account</strong>.</li>
<li>Find “Transfer calls to any teammate device” and set it to <strong>Active Feature</strong>.</li>
<li>Enable access for the sub-accounts you want.</li>
<li>Click <strong>Save</strong>.</li>
</ol>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1172', 'Blog Post AI now supports Brand Boards', 'Blog Post AI can now use your existing Brand Voice and Design Kits while generating blog posts. This helps the generated content match your brand from the start, reducing the need for rewrites or formatting changes after generation. What’s new Apply Brand Voice to AI blog generat...', '<p>Blog Post AI can now use your existing Brand Voice and Design Kits while generating blog posts. This helps the generated content match your brand from the start, reducing the need for rewrites or formatting changes after generation.</p>
<p><strong>What’s new</strong></p>
<ol>
<li value="1">Apply Brand Voice to AI blog generation</li>
</ol>
<p>When you generate a blog post with AI, you can select an existing Brand Voice. Blog Post AI will use your guidelines to:</p>
<ul>
<li>Match your preferred tone and writing style</li>
<li>Maintain consistent messaging</li>
<li>Reflect your brand personality throughout the content</li>
</ul>
<ol>
<li value="2">Apply Design Kits to blog posts</li>
</ol>
<p>You can also select a Design Kit in the Blog Post AI workflow. This helps keep your blog content aligned with your:</p>
<ul>
<li>Visual identity</li>
<li>Content structure preferences</li>
<li>Brand presentation standards</li>
</ul>
<ol>
<li value="3">Create brand assets in the same workflow</li>
</ol>
<p>If you do not have a Brand Voice or Design Kit yet, you can create them directly from the Blog Post AI experience without leaving the page.</p>
<p><strong>How to use this feature</strong></p>
<ul>
<li>Go to Sites → Blogs → Create with AI</li>
<li>Enable Apply Brand Boards</li>
<li>Select a Brand Voice</li>
<li>Select a Design Kit</li>
<li>Generate your blog using Assist Mode or Build Mode</li>
<li>Review and publish</li>
</ul>
<p>Note: If Blog Post AI is not enabled in your account, you can enable it from Beta.</p>
<p><strong>Why it matters</strong></p>
<ul>
<li>Generate content that matches your brand</li>
<li>Maintain consistency across AI-generated blogs</li>
<li>Reduce time spent editing AI output</li>
<li>Create a cohesive content and design experience</li>
<li>Scale content production while maintaining brand identity</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;