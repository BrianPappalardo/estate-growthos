INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<p><strong>What’s included</strong></p>
<ul>
<li><strong>21 hover effects</strong> across these groups: Scale, Rotation, Movement, Background, Border, and Shadow.</li>
<li><strong>Live previews</strong> in the sidebar so you can test an effect on your selected button before choosing it.</li>
<li><strong>Adjustable controls</strong> such as duration, delay, easing, and effect-specific settings (for example: scale factor, rotation angle, movement distance, fill and border colors, shadow blur/spread).</li>
<li><strong>Smart behavior</strong> that disables hover on touch devices and smaller screens, waits for entrance animations to finish, and keeps hover behavior consistent on duplicated elements.</li>
</ul>
<p><strong>How to use it</strong></p>
<ol>
<li>Select a button in the page builder.</li>
<li>Open the <strong>Animation</strong> tab in the sidebar.</li>
<li>Go to <strong>Hover Animation</strong>.</li>
<li>Preview effects by hovering over an effect card.</li>
<li>Select an effect, then adjust settings as needed.</li>
</ol>
<p><strong>Where to find it</strong></p>
<p>Page Builder → select a Button → Animation tab → Hover Animation.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1279', 'Entrance animations for sections, rows, and columns', 'You can now apply entrance animations to sections, rows, and columns (not just individual elements). Animations are automatically sequenced as visitors scroll, creating a consistent reveal without manual timing work. What this solves Previously, creating a coordinated animation s...', '<p>You can now apply entrance animations to sections, rows, and columns (not just individual elements). Animations are automatically sequenced as visitors scroll, creating a consistent reveal without manual timing work.</p>
<h2>What this solves</h2>
<p>Previously, creating a coordinated animation sequence required setting animations and timing delays for each element. Changing the layout often broke the sequence and required reworking delays. There was also no simple way to animate larger layout blocks like an entire section or column container.</p>
<h2>What’s included</h2>
<ol>
<li><strong>Layout block support:</strong> Apply entrance animations to sections, rows, and columns.</li>
<li><strong>Expanded animation library:</strong>
<ul>
<li>Fade: In, Up, Down, Left, Right</li>
<li>Slide: Up, Down, Left, Right</li>
<li>Bounce: In, Up, Down, Left, Right</li>
<li>Flip: Flip, Flip In X, Flip In Y</li>
<li>Rotate and Zoom: Rotate In, Zoom In</li>
<li>Special effects: Light Speed (Left, Right), Infinite Loops (Glow, Rocking, Bounce)</li>
</ul>
</li>
<li><strong>Entrance tuning:</strong>
<ul>
<li>Duration: 0.1s to 3s</li>
<li>Delay: 0s to 5s</li>
<li>Scale: 0.5× to 2×</li>
<li>Easing: Linear, Ease-in, Ease-out, Ease-in-out</li>
</ul>
</li>
<li><strong>Live hover previews:</strong> Hover an animation option in the sidebar to preview it on the selected block before applying it.</li>
<li><strong>Automatic sequencing:</strong> Blocks animate in order (Section → Row → Column → Content). Each element waits for its parent container to finish.</li>
<li><strong>Mobile control:</strong> Animations are disabled on mobile by default for performance. You can enable them per block with the “Enable animations on mobile” toggle.</li>
</ol>
<h2>How to use it</h2>
<ol>
<li>Select a section, row, or column in the page builder.</li>
<li>Open the <strong>Animations</strong> tab in the sidebar and choose an <strong>Entrance Animation</strong>.</li>
<li>Hover over an animation to preview it on the selected block.</li>
<li>Select an animation style.</li>
<li>Adjust settings like duration, delay, scale, and easing.</li>
<li>Optional: Enable animations on mobile if you want the effect to run on mobile devices.</li>
</ol>
<h2>Impact</h2>
<ol>
<li><strong>No timing math:</strong> Automatic sequencing removes the need for manual delay calculations and custom CSS.</li>
<li><strong>More resilient layouts:</strong> Reordering or editing blocks updates the sequence automatically.</li>
<li><strong>Scroll-triggered motion:</strong> Animations run when elements scroll into view.</li>
<li><strong>Backward compatible:</strong> Existing published pages benefit from the updated sequencing without requiring a re-save.</li>
</ol>
<h2>Where to find it</h2>
<p>In the page builder, select a section, row, or column, then open the <strong>Animations</strong> tab in the sidebar.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1278', 'Add hover animations to buttons in the Leadli Funnel and Website Builder', 'What’s new You can now add hover animations to any button directly from the page builder—no CSS required. How to use it Open Page Builder and select a button on the canvas. In the sidebar, open the Animation tab. Select Hover Animation . Choose from 20 effects (for example: Grow,...', '<h2>What’s new</h2>
<p>You can now add hover animations to any button directly from the page builder—no CSS required.</p>
<h2>How to use it</h2>
<ol>
<li>Open <strong>Page Builder</strong> and select a button on the canvas.</li>
<li>In the sidebar, open the <strong>Animation</strong> tab.</li>
<li>Select <strong>Hover Animation</strong>.</li>
<li>Choose from 20 effects (for example: Grow, Shrink, Pulse, Bounce In, Rotate, Float, Skew Forward, Wobble Horizontal, Buzz, Fade, Sweep To Right, Sweep To Bottom, Radial In, Bounce To Top, Ripple Out, Outline In, Underline From Center, Shadow, Glow, Box Shadow Outset).</li>
</ol>
<h2>Preview and adjust</h2>
<ul>
<li>Hover over an effect card to preview it on the selected button.</li>
<li>Each effect supports <strong>Duration</strong> (0.1–3s), <strong>Delay</strong> (0–5s), and <strong>Easing</strong> (Linear, Ease-in, Ease-out, Ease-in-out).</li>
<li>Additional controls only appear when they apply to the chosen effect (for example: Scale, Angle, Distance, Fill Color, Border settings, or Shadow settings).</li>
</ul>
<h2>Behavior details</h2>
<ul>
<li>Hover animations are automatically disabled on touch devices and screens under 1024px to prevent stuck hover states on mobile.</li>
<li>If a button also has an entrance animation, the hover animation waits until the entrance animation finishes.</li>
<li>If the same button appears multiple times on the page (for example in sticky bars or cloned navigation), the hover animation stays consistent across instances.</li>
</ul>
<h2>Impact</h2>
<ul>
<li>Create button micro-interactions from the sidebar without custom code.</li>
<li>Make calls-to-action feel more interactive.</li>
<li>See only the settings that apply to the selected effect.</li>
<li>Keep published markup cleaner by applying hover settings as styling.</li>
<li>Entrance animations are steadier and do not replay unnecessarily during editing.</li>
</ul>
<h2>Where to find it</h2>
<p><strong>Page Builder</strong> → select a button → <strong>Animation</strong> tab (sidebar) → <strong>Hover Animation</strong>. After you choose an effect, its parameters appear in the <strong>Adjust</strong> panel below the effect grid.</p>
', 'templates', ARRAY['wp-import']::text[], '2026-08-11T13:55:41.000Z'),
('wp-1277', 'Ask AI in the mobile app can read files you attach', 'Ask AI now lets you attach images and documents directly in the chat composer. You can take a photo, choose a PDF, or select a file from your Media Library and then ask a question about it. The problem Sometimes the information you need is already in a file, such as: a screenshot...', '<p>Ask AI now lets you attach images and documents directly in the chat composer. You can take a photo, choose a PDF, or select a file from your Media Library and then ask a question about it.</p>
<h3>The problem</h3>
<p>Sometimes the information you need is already in a file, such as:</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;