INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<h2>Why this matters</h2>
<ul>
<li>Makes duration discounts behave more consistently for day-based, night-based, weekly, and monthly rentals.</li>
<li>Aligns booking restrictions with how rental businesses define their rental periods.</li>
<li>Creates a more intuitive booking experience for both businesses and customers.</li>
<li>Reduces confusion around discount eligibility and scheduling notice requirements.</li>
<li>Helps rentals behave more naturally for businesses that operate using predefined rental periods.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:44.000Z'),
('wp-1171', 'Layers panel search in the website and funnel builder', 'What’s included Layers Panel Search adds a search bar inside the Layers panel in the Leadli website and funnel builder. It helps you find any element on your page quickly by name, type, or element ID. Why it matters On pages with many sections and nested rows/columns, finding a s...', '<h2>What’s included</h2>
<p>Layers Panel Search adds a search bar inside the Layers panel in the Leadli website and funnel builder. It helps you find any element on your page quickly by name, type, or element ID.</p>
<h2>Why it matters</h2>
<p>On pages with many sections and nested rows/columns, finding a specific element can take time. This update makes it faster to locate and select the exact item you need without manually expanding the full layer tree.</p>
<h2>Key details</h2>
<ul>
<li><strong>Search by name, type, or ID:</strong> Match elements by title (for example, “Headline”), by element type (for example, “Image” or “Column”), or by element ID.</li>
<li><strong>Flat results list:</strong> Matches appear in a single list grouped under Page and Popup, with a live match count.</li>
<li><strong>Jump to an element:</strong> Click a result to select and scroll to that element on the canvas and open its settings.</li>
<li><strong>Actions from results:</strong> Hide/Show, Edit, Clone, and Delete are available from the options menu for each result.</li>
<li><strong>Clear search:</strong> Clear the search to return to the full Layers tree.</li>
</ul>
<h2>How to use it</h2>
<p><strong>Path:</strong> Website/Funnel Builder → Edit Page → Layers panel (left toolbar) → Search layers</p>
<ol>
<li>Open the Layers panel.</li>
<li>Type an element name, type, or ID in the search box.</li>
<li>Select a result to jump to that element, or use the options menu for additional actions.</li>
<li>Clear the search to return to the full Layers tree.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>Search applies to the current page’s layers (Page and Popup) and does not search other pages or funnel steps.</li>
<li>Matching is case-insensitive and supports partial text.</li>
<li>Results update as you type.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1170', 'Instagram direct connection onboarding', 'Instagram Unified Integration is now available in Labs. Businesses can now connect Instagram accounts directly without requiring a connected Facebook Page. This provides more flexibility in how Instagram accounts are connected and managed, and it supports future Instagram-native ...', '<p>Instagram Unified Integration is now available in Labs. Businesses can now connect Instagram accounts directly without requiring a connected Facebook Page. This provides more flexibility in how Instagram accounts are connected and managed, and it supports future Instagram-native capabilities that require direct connection.</p>
<h2>What’s new</h2>
<ul>
<li>An Instagram integration card under Settings → Integrations</li>
<li>A centralized view of all connected Instagram accounts</li>
<li>Support for both direct Instagram connections and Facebook Page-based Instagram connections</li>
<li>A Messaging &amp; Automations toggle for account-level control</li>
</ul>
<h2>Supported capabilities</h2>
<ul>
<li>Sync Instagram Direct conversations into the CRM</li>
<li>Create and manage contacts from Instagram conversations</li>
<li>Trigger workflows and automations based on Instagram interactions</li>
<li>Manage Instagram conversations alongside other messaging channels</li>
</ul>
<h2>How to enable</h2>
<p>Enable the Labs feature: Labs → Instagram Direct Integration. Then go to Settings → Integrations → Instagram.</p>
<h2>Important notes</h2>
<ul>
<li>Facebook Page-based Instagram connections will continue to work.</li>
<li>Enabling direct connection will disable the toggle for Page-based Instagram connections.</li>
<li>Instagram accounts connected through a Facebook Page cannot be disconnected independently. Disconnect the associated Facebook Page first.</li>
<li>Existing workflows and automations will continue to work if the same Instagram account is switched between connection methods.</li>
<li>Disabling the Messaging &amp; Automations toggle will stop both Instagram messaging and automation for that account.</li>
<li>Some upcoming Instagram-native features will require direct connection support (for example: DM to followers and poll replies).</li>
</ul>
<h2>Why this matters</h2>
<ul>
<li>More flexible account connection and management</li>
<li>Better visibility into connected Instagram accounts</li>
<li>A simpler setup experience without Facebook Page dependencies</li>
<li>Support for upcoming features such as follow-to-DM and poll reply automations</li>
</ul>
<h2>Next step</h2>
<p>This lays the groundwork to support DM-to-follower capability when Meta releases it.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:36.000Z'),
('wp-1169', 'Auto-detect and connect review profiles across 52+ platforms', 'What’s new Leadli can now auto-detect review profiles across 52+ supported platforms. This helps you quickly find where a business already has reviews and connect the most valuable profiles first. In Reputation, you’ll see recommended review profiles directly in the product. Each...', '<p><strong>What’s new</strong></p>
<p>Leadli can now auto-detect review profiles across 52+ supported platforms. This helps you quickly find where a business already has reviews and connect the most valuable profiles first.</p>
<p>In Reputation, you’ll see recommended review profiles directly in the product. Each recommendation includes detected review counts, match confidence, and business details so you can connect the right platforms without manual searching.</p>
<p><strong>Key updates</strong></p>
<p><strong>1) Auto-detected review profiles</strong></p>
<ul>
<li>View detected profiles across supported platforms such as Google Business Profile, Facebook, TripAdvisor, Agoda, Booking.com, Yelp, Trustpilot, and more.</li>
<li>Before you connect a profile, you can review details like platform, business name, address preview, and available review count.</li>
</ul>
<p><strong>2) Top recommendation</strong></p>
<ul>
<li>A new Top Recommendation highlights the best profile to connect first, based on value and review volume.</li>
</ul>
<p><strong>3) Review counts before connecting</strong></p>
<ul>
<li>Detected listings now show review volume up front, so you can prioritize the platforms that matter most.</li>
</ul>
<p><strong>4) In-app notifications for newly found review sites</strong></p>
<ul>
<li>You’ll receive in-app notifications when high-confidence review sites are discovered for a sub-account. These notifications summarize the opportunity and guide you to connect recommended profiles in Reputation.</li>
</ul>
<p><strong>5) Faster connect flow</strong></p>
<p>Recommended profiles can be connected directly from:</p>
<ul>
<li>Reputation → Overview</li>
<li>Reputation → Settings → Integrations</li>
</ul>
<p><strong>6) Confidence-based suggestions</strong></p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;