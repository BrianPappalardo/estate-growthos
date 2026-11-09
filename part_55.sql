INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>Previously, failed payments could remain unpaid after automatic retries were exhausted.</li>
<li>Manual retries give you more control over payment recovery and help reduce involuntary churn without leaving Leadli.</li>
</ul>
<h2>What’s next</h2>
<p>We’ll continue improving subscription payment recovery across payment providers and make failed payment management more seamless.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-09-11T08:26:52.000Z'),
('wp-1417', 'Leadli Communities: Voice notes in posts and comments', 'Leadli Communities now supports voice notes in posts and comments. This makes it easier to share quick updates and respond without typing long replies. What’s included Record voice notes: Use the microphone button in the post or comment editor to record audio. You can pause, resu...', '<p>Leadli Communities now supports voice notes in posts and comments. This makes it easier to share quick updates and respond without typing long replies.</p>
<h3>What’s included</h3>
<ul>
<li><strong>Record voice notes:</strong> Use the microphone button in the post or comment editor to record audio. You can pause, resume, or cancel before sending.</li>
<li><strong>Upload audio files:</strong> You can also upload audio files as attachments. Multiple audio files can be attached to a single post.</li>
<li><strong>Inline playback:</strong> Voice notes and uploaded audio can be played directly in the feed for both posts and comments. Playback speed options include 1x, 1.5x, and 2x, and audio can continue to the next track for easier listening.</li>
</ul>
<h3>Notes</h3>
<ul>
<li>Voice notes work in both posts and comments.</li>
<li>Playback speeds supported: 1x, 1.5x, and 2x.</li>
<li>Multiple audio attachments are supported per post.</li>
<li>Currently available on web. Mobile app support is coming soon.</li>
</ul>
', 'courses', ARRAY['wp-import']::text[], '2026-09-11T07:26:57.000Z'),
('wp-1408', 'Find apps in the Leadli Marketplace using Ask AI', 'Overview Ask AI is now connected to the Leadli App Marketplace. This makes it easier to find the right apps without manually browsing the Marketplace. You can describe what you need (for example, an IDX or real estate integration), and Ask AI will suggest relevant Marketplace app...', '<h2>Overview</h2>
<p>Ask AI is now connected to the Leadli App Marketplace. This makes it easier to find the right apps without manually browsing the Marketplace.</p>
<p>You can describe what you need (for example, an IDX or real estate integration), and Ask AI will suggest relevant Marketplace apps based on your request.</p>
<h2>What’s included</h2>
<ol>
<li><strong>AI-powered app discovery</strong>
<ul>
<li>Ask for apps or integrations using natural language.</li>
<li>Ask AI interprets your intent and searches the Marketplace for relevant apps.</li>
<li>You do not need to know the exact app name or category.</li>
</ul>
</li>
<li><strong>Relevant Marketplace recommendations</strong>
<ul>
<li>Ask AI returns the most relevant Marketplace apps for your request.</li>
<li>Recommendations can include details like app name, category, description, and key capabilities.</li>
<li>Select <em>View Details</em> to learn more about a recommended app.</li>
<li>Select <em>Show more apps in Marketplace</em> to see additional options.</li>
</ul>
</li>
<li><strong>Agency controls for discoverability</strong>
<ul>
<li>Agencies can control whether Marketplace apps can be discovered by sub-accounts through Ask AI.</li>
<li>Go to <em>App Marketplace → Settings → Marketplace Visibility</em> and configure <em>Ask AI Discoverability</em> for sub-account users.</li>
<li>If enabled, sub-account users can discover Marketplace apps through Ask AI.</li>
<li>If disabled, Ask AI will not show Marketplace app recommendations to sub-account users.</li>
<li>These controls apply to sub-account admins only; agency admins still have access to Marketplace discovery.</li>
</ul>
</li>
</ol>
<h2>How to use it</h2>
<ol>
<li>Open Ask AI.</li>
<li>Describe the app, integration, or capability you are looking for (for example, an IDX or real estate integration).</li>
<li>Review the recommended Marketplace apps.</li>
<li>Select <em>View Details</em> to explore a recommendation.</li>
<li>Select <em>Show more apps in Marketplace</em> to browse more options.</li>
</ol>
<h2>Notes</h2>
<ul>
<li>This update reduces the need to manually search or navigate the Marketplace.</li>
<li>You can discover apps based on a business need, even if you are not sure which integration you need.</li>
<li>Existing Marketplace visibility and app access controls still apply.</li>
<li>If Marketplace visibility through Ask AI is disabled for a sub-account, Ask AI will not show Marketplace app recommendations for that user.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-09-10T13:52:07.000Z'),
('wp-1407', 'View Meta post-publish recommendations in Leadli Ad Manager', 'Leadli Ad Manager now shows Meta’s post-publish recommendations directly inside published campaigns. This helps you spot optimization opportunities without switching to Meta Ads Manager. What’s new See Meta-generated recommendations from the campaign Review screen. See how many r...', '<p>Leadli Ad Manager now shows Meta’s post-publish recommendations directly inside published campaigns. This helps you spot optimization opportunities without switching to Meta Ads Manager.</p>
<h2>What’s new</h2>
<ul>
<li>See Meta-generated recommendations from the campaign <strong>Review</strong> screen.</li>
<li>See how many recommendations are available at a glance.</li>
<li>Review the suggested change, what it affects, and any expected performance improvement (when Meta provides it).</li>
<li>See the recommendation impact level: High, Medium, or Low.</li>
<li>Select <strong>Review and Update</strong> to jump to the relevant campaign section and apply the change.</li>
<li>When there are no suggestions, you will see a clear “No recommendations right now” message.</li>
</ul>
<h2>How to use it</h2>
<ol>
<li>Open a published Meta campaign in Leadli Ad Manager.</li>
<li>Go to the <strong>Review</strong> screen.</li>
<li>Select <strong>Meta recommendations</strong> to view available suggestions.</li>
<li>Select <strong>Review and Update</strong> on a recommendation.</li>
<li>Make the suggested change in the relevant campaign section.</li>
</ol>
<h2>Why this feature</h2>
<p>Campaign optimization continues after publishing. By showing Meta’s recommendations inside Leadli Ad Manager, you can review and apply improvements without moving between tools.</p>
<h2>What’s next</h2>
<p>We plan to show Opportunity Score alongside Meta recommendations for published campaigns to support ongoing optimization throughout the campaign lifecycle.</p>
<h2>Notes</h2>
<ol>
<li>Recommendations and expected outcomes are provided by Meta and may change as performance data evolves. Applying a recommendation does not guarantee improved results.</li>
<li>Only recommendations that can be addressed directly within Leadli Ad Manager are shown.</li>
</ol>
', 'templates', ARRAY['wp-import']::text[], '2026-09-10T13:06:09.000Z'),
('wp-1406', 'Sub-account customizations are protected when applying a snapshot', 'This update adds a safeguard when you enable SaaS for a sub-account and attach a snapshot. What changed If the snapshot would overwrite anything you have already customized in the sub-account, you will see a warning before changes are made. You can then choose to keep your existi...', '<p>This update adds a safeguard when you enable SaaS for a sub-account and attach a snapshot.</p>
<h3>What changed</h3>
<p>If the snapshot would overwrite anything you have already customized in the sub-account, you will see a warning before changes are made. You can then choose to keep your existing assets or overwrite them with the snapshot’s version. If there is no conflict, the snapshot applies as usual.</p>
<h3>Why this matters</h3>
<p>Previously, attaching a snapshot could overwrite funnels, websites, or other assets you had already updated in a sub-account without warning. This change makes conflicts visible and lets you decide what happens to your work.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;