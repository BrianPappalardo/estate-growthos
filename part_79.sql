INSERT INTO public.changelog_entries (external_id, title, summary, body, category, tags, published_at)
VALUES
</ul>
<h2>Details</h2>
<h3>1) Improved voice understanding</h3>
<ul>
<li>Conversations AI uses an updated speech recognition engine.</li>
<li>Better recognition of natural speech patterns and conversational language.</li>
<li>Improved handling of different accents and pronunciation variations.</li>
<li>More accurate interpretation of customer intent from audio messages.</li>
<li>Better performance with noisy or lower-quality audio recordings.</li>
</ul>
<h3>2) Expanded language support</h3>
<p>Audio transcription now supports additional languages, including Arabic, Belarusian, Bengali, Bosnian, Croatian, Gujarati, Hebrew, Kannada, Macedonian, Marathi, Persian (Farsi), Serbian, Slovenian, Tagalog, Tamil, Telugu, and Urdu.</p>
<p>Support continues for major languages such as English, Spanish, French, German, Portuguese, Hindi, Japanese, Korean, Chinese, Italian, Dutch, Turkish, Vietnamese, Thai, and others.</p>
<h3>3) More reliable audio processing</h3>
<ul>
<li>Improved handling of edge cases</li>
<li>Better recovery from processing failures</li>
<li>Fewer transcription interruptions</li>
<li>More consistent voice-to-text performance across supported channels</li>
</ul>
<p><strong>Note:</strong> These enhancements are available to all users who have enabled <strong>Respond to Audio</strong> in Bot Settings. No additional setup is required.</p>
', 'ai', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1134', 'Media Library: expanded file preview support', 'The Leadli Media Library now supports expanded in-browser previews, so you can review more file types without downloading them. What’s new You can now preview the following file types directly in the existing preview window: PDF : browse pages, zoom, jump to pages, and select tex...', '<p>The Leadli Media Library now supports expanded in-browser previews, so you can review more file types without downloading them.</p>
<h2>What’s new</h2>
<p>You can now preview the following file types directly in the existing preview window:</p>
<ul>
<li><strong>PDF</strong>: browse pages, zoom, jump to pages, and select text (up to 50 MB).</li>
<li><strong>Word (.docx)</strong>: view full formatting, including pagination, headers, and footers (up to 15 MB).</li>
<li><strong>Excel and CSV</strong>: open spreadsheets with worksheet tabs and column headers (up to 15 MB).</li>
<li><strong>Audio</strong>: play supported formats in the browser, including MP3, WAV, OGG, and M4A (up to 100 MB).</li>
<li><strong>3D models</strong>: interactively view supported 3D files with rotation controls, wireframe mode, and camera reset (up to 50 MB).</li>
<li><strong>Text and code files</strong>: preview JSON, CSS, plain text, and other supported text-based files with syntax highlighting (up to 5 MB).</li>
</ul>
<h2>How it works</h2>
<ol>
<li>Select a file in the Media Library, or choose <strong>Preview</strong> from the right-click menu.</li>
<li>The appropriate viewer opens automatically based on the file type.</li>
</ol>
<h2>Additional notes</h2>
<ul>
<li>Files larger than the preview limits will show a <strong>Too Large to Preview</strong> message with an option to download the file.</li>
<li>Spreadsheet previews are limited to <strong>1,000 rows × 100 columns per worksheet</strong> to maintain performance. If a file exceeds these limits, a notice will appear and the full file can still be downloaded.</li>
<li>Unsupported file types (for example, PowerPoint, ZIP archives, font files, and legacy Word documents) will show a <strong>Preview Not Available</strong> message.</li>
</ul>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1133', 'Audit logs for preference management', 'Audit Logs now provides clearer visibility into preference and subscription management activity. What’s included Contact preference updates Which contact’s preferences were updated Who made the change When the change was made The previous and updated preference values Subscriptio...', '<p>Audit Logs now provides clearer visibility into preference and subscription management activity.</p>
<h3>What’s included</h3>
<p><strong>Contact preference updates</strong></p>
<ul>
<li>Which contact’s preferences were updated</li>
<li>Who made the change</li>
<li>When the change was made</li>
<li>The previous and updated preference values</li>
</ul>
<p><strong>Subscription type updates</strong></p>
<ul>
<li>Which subscription type was modified</li>
<li>Who made the change</li>
<li>When the update occurred</li>
<li>What settings or details were changed</li>
</ul>
<h3>Why this matters</h3>
<ul>
<li>Export audit records for compliance and reporting</li>
<li>Improve transparency and accountability across your team</li>
<li>Quickly see what changed, who changed it, and when</li>
</ul>
<h3>How to access</h3>
<ul>
<li>Go to Settings → Audit Logs</li>
<li>Review the user, affected record, timestamp, and change details</li>
</ul>
<h3>Coming soon</h3>
<p>A History tab on Contact Preferences to show a complete timeline of preference changes, including sources, legal basis, and update details.</p>
', 'general', ARRAY['wp-import']::text[], '2026-08-11T13:56:54.000Z'),
('wp-1152', 'Smarter duration discounts and scheduling notice logic for rentals', 'Overview We’ve improved how duration-based discounts and minimum scheduling notice work for rental booking modes that use predefined rental periods and rental times. Previously, some calculations could behave differently than businesses expected because eligibility was evaluated ...', '<h2>Overview</h2>
<p>We’ve improved how <strong>duration-based discounts</strong> and <strong>minimum scheduling notice</strong> work for rental booking modes that use predefined rental periods and rental times.</p>
<p>Previously, some calculations could behave differently than businesses expected because eligibility was evaluated using the underlying booking duration rather than the configured rental period. This was most noticeable for day-based, night-based, weekly, and monthly rental configurations where customers select dates rather than specific times.</p>
<p>With this improvement, discounts and booking restrictions align more closely with how rental businesses define and sell their rentals.</p>
<h2>What’s new</h2>
<h3>Smarter duration-based discounts</h3>
<p>Duration discounts now evaluate eligibility based on the listing’s configured rental period, so discounts apply more consistently across date-based rental modes.</p>
<p><strong>Example</strong></p>
<p>A vacation rental is configured with:</p>
<ul>
<li>Rental start: 3:00 PM</li>
<li>Rental end: 11:00 AM</li>
<li>2-day+ discount enabled</li>
</ul>
<p>A customer books from Monday to Wednesday.</p>
<p>Even though the booking duration is less than 48 hours, the booking represents a 2-day stay and will qualify for the discount.</p>
<h3>Improved minimum scheduling notice</h3>
<p>For rental modes configured using Days, Weeks, or Months, minimum scheduling notice is now evaluated using the configured rental period instead of exact hour calculations.</p>
<p>A listing requires:</p>
<ul>
<li>Minimum scheduling notice: 2 days</li>
</ul>
<p>If today is Wednesday and the booking starts on Friday, the booking is valid (regardless of the exact start time on Friday) because it satisfies the 2-day notice requirement.</p>
<p>Previously, the system evaluated this as an exact 48-hour requirement, which could sometimes produce unexpected results.</p>
<p><strong>Note:</strong> Businesses that need precise time-based restrictions can continue using the Hours option for scheduling notice. For example, a 48-hour notice requirement configured using hours will continue to be evaluated as an exact 48 hours.</p>
ON CONFLICT (external_id) DO UPDATE SET
  title = EXCLUDED.title,
  summary = EXCLUDED.summary,
  body = EXCLUDED.body,
  category = EXCLUDED.category,
  published_at = EXCLUDED.published_at;