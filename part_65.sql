INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
<li>A false “Connect WhatsApp” prompt that could appear after the 24-hour window, even when the account was already connected</li>
<li>A Settings/Manage page that could load blank until you refreshed</li>
</ul>
<h2>What’s changed</h2>
<p><strong>Conversations: no more incorrect “Connect WhatsApp” prompt</strong></p>
<ul>
<li><strong>Correct state on first load:</strong> After the 24-hour messaging window closed, the composer could show “Connect WhatsApp” on a fully connected account, which blocked template sends. The composer now waits for connection status to resolve before rendering, so connected locations see the template send option instead of a reconnect prompt.</li>
</ul>
<p><strong>Settings/Manage: loads reliably and faster</strong></p>
<ul>
<li><strong>No more blank page:</strong> The Settings &gt; WhatsApp tab no longer gets stuck on a blank or loading state that required multiple refreshes.</li>
<li><strong>Improved performance:</strong> On the WhatsApp Settings page, Speed Index improved from 13.2s to 4.3s and First Contentful Paint from 3.8s to 1.0s (Lighthouse).</li>
</ul>
<h2>Why it matters</h2>
<p>These are areas WhatsApp users rely on daily. An incorrect reconnect prompt after the 24-hour window can make a working account look broken and prevent agents from sending templates (the message type allowed once the window closes). A blank Settings page can slow down onboarding and day-to-day configuration. Both areas now load correctly the first time, which should reduce confusion and support requests.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T16:03:10.000Z'),
('wp-1350', 'QR Codes: Save to Apple Wallet and Google Wallet', 'What’s new You can now save QR codes directly to Apple Wallet or Google Wallet. This makes it easier to access the correct QR code during offline customer interactions without searching through saved images. Key highlights Save to a digital wallet: Add QR codes to Apple Wallet or...', '<h2>What’s new</h2>
<p>You can now save QR codes directly to Apple Wallet or Google Wallet. This makes it easier to access the correct QR code during offline customer interactions without searching through saved images.</p>
<h2>Key highlights</h2>
<ul>
<li><strong>Save to a digital wallet:</strong> Add QR codes to Apple Wallet or Google Wallet depending on the device.</li>
<li><strong>Quick offline access:</strong> Open your wallet, select the QR code, and have a customer scan it.</li>
<li><strong>Clear identification:</strong> Wallet passes display helpful details such as QR type, associated location, and destination/context.</li>
<li><strong>Wallet-specific design:</strong> The pass design follows the supported layout options for Apple Wallet and Google Wallet.</li>
<li><strong>Agency branding:</strong> Wallet passes currently display agency branding in the header.</li>
<li><strong>Works with existing QR codes:</strong> This applies to both existing and newly created QR codes.</li>
</ul>
<h2>Why this matters</h2>
<p>Previously, QR codes were often saved as images in a phone gallery. As more QR codes were saved, it became harder to identify which one to use and where it would redirect.</p>
<p>With digital wallet support, QR codes are easier to organize and access along with relevant context.</p>
<h2>How it works</h2>
<ol>
<li>Go to the <strong>QR Code Builder</strong>.</li>
<li>Create or edit a QR code and continue to the final step.</li>
<li>Select the option to add the QR code to your digital wallet.</li>
<li>Scan the QR code shown on screen using your phone.</li>
<li>The pass is added to Apple Wallet or Google Wallet based on your device.</li>
<li>Open your wallet when needed and present the QR code for scanning.</li>
</ol>
<h2>Apple Wallet vs. Google Wallet</h2>
<p>The pass appearance can differ between Apple Wallet and Google Wallet because each platform supports different customization options. For example, Apple Wallet can display a profile image on the pass, while Google Wallet may not support the same configuration.</p>
<h2>Notes</h2>
<ul>
<li>This feature supports both existing and new QR codes.</li>
<li>Wallet passes include contextual details to make QR codes easier to identify.</li>
<li>Pass designs can vary between Apple Wallet and Google Wallet based on platform support.</li>
<li>Agency branding is currently displayed in the wallet pass header and may become optional in a future update.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-18T15:24:47.000Z'),
('wp-1349', 'New A2P campaign setup defaults to Chat Widget', 'Overview: After your brand registration is completed, campaign registration now takes you directly to Chat Widget setup. You can still switch to Manual setup if you do not collect consent through the chat widget. What’s changed: The campaign registration flow now opens in the cha...', '<p><strong>Overview:</strong> After your brand registration is completed, campaign registration now takes you directly to Chat Widget setup. You can still switch to Manual setup if you do not collect consent through the chat widget.</p>
<p><strong>What’s changed:</strong></p>
<ul>
<li>The campaign registration flow now opens in the chat widget setup step immediately after the brand step finishes. You no longer have to choose a path at the start.</li>
<li>If you collect consent through another method (for example, an existing website form, a paper form, a lead form, a QR code, a kiosk, or verbal consent), you can use the “Switch to manual setup” link shown on the first screen.</li>
<li>Your progress is saved, and you will see a confirmation message explaining what will change before you switch to the manual path.</li>
</ul>
<p>If you switch to Manual setup and later want to go back, the Campaign details screen includes a recommendation in the left step panel to return to chat widget setup.</p>
<p><strong>Previously:</strong></p>
<ul>
<li>You selected Quick setup or Manual setup at step 2, and switching required restarting the campaign.</li>
<li>If you used Manual setup, resubmissions kept you on that path, so you often did not see the chat widget path.</li>
</ul>
<p><strong>Why this matters:</strong></p>
<ul>
<li>Campaigns registered through the chat widget are often approved faster and rejected less, because the widget is auto-verified and sample messages and consent language are generated for you.</li>
<li>This change makes that the default while still supporting Manual setup when you need it.</li>
</ul>
', 'ai', ARRAY['wp-import']::text[], '2026-08-18T15:05:01.000Z'),
('wp-1348', 'Ask AI Scheduler (Mobile): Schedule prompts to run automatically', 'Ask AI Scheduler helps your assistant keep working when you are not in the app. Save a prompt once, choose how often it should run, and Ask AI will run it on schedule. The next time you open your phone, you can review the completed run and the conversation it produced. The proble...', '<p>Ask AI Scheduler helps your assistant keep working when you are not in the app. Save a prompt once, choose how often it should run, and Ask AI will run it on schedule. The next time you open your phone, you can review the completed run and the conversation it produced.</p>
<h3>The problem</h3>
<p>Previously, every Ask AI prompt was interactive. You needed to be in the chat to ask for a daily summary (for example, new contacts from yesterday) or to check upcoming appointments. There was no way to save a prompt and have it run on its own, no central list of scheduled jobs, and no simple way to pause, re-run, or edit a scheduled prompt without rebuilding it.</p>
<h3>What we changed</h3>
<p>The Scheduler turns any Ask AI prompt into a recurring task.</p>
<h3>What you can do</h3>
<ul>
<li>Choose a frequency: manual (run on demand), hourly, daily, weekdays, or weekly with your selected day and time.</li>
<li>Manage tasks on mobile: create, edit, pause, resume, and delete scheduled tasks.</li>
<li>Run now: trigger any task immediately (including a paused task) and see the result in the run history.</li>
<li>Run history: track every run per task with completed/skipped/failed status and timestamps.</li>
<li>Open the conversation: tap a completed run to open the full Ask AI session in chat.</li>
<li>Organized chat history: scheduled runs appear in a separate Scheduled section so they do not clutter your recent chats.</li>
</ul>
<h3>How this helps day to day</h3>
<ul>
<li>Automate routine checks: schedule a morning summary and review it when you are ready.</li>
<li>Set it once: save the prompt as a task and let it run on your cadence.</li>
<li>Stay in control: pause tasks when needed, resume later, or run manually at any time.</li>
<li>See outcomes clearly: review what ran and when, without guessing.</li>
<li>Works across devices: tasks created on desktop and mobile stay in sync with shared history.</li>
</ul>
<h3>How to get started</h3>
<ol>
<li>Open Ask AI in the Leadli mobile app.</li>
<li>Tap the Scheduler icon in the Ask AI header.</li>
<li>Select New task, name it, add an optional description, paste your prompt, choose a frequency, set the time (and day for weekly), and save.</li>
<li>Review results anytime in the task run history, or tap a completed run to open the conversation.</li>
</ol>
<h3>What is coming next</h3>
<ul>
<li>Notifications when a scheduled run completes</li>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;