import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  CalendarClock,
  Calendar,
  Repeat,
  Image as ImageIcon,
  BarChart3,
  Hash,
  Clock,
  Zap,
  MessageSquare,
  Heart,
  Send,
  LayoutGrid,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { SocialSchedulerMockup } from "@/components/home/social-scheduler-mockup";

/**
 * Dedicated sales page for the Leadli Social Media Scheduler product.
 *
 * Renders inside /feature/$slug when the slug is "social-scheduler". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function SocialSchedulerProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "social-scheduler" &&
      f.slug !== "marketing" &&
      f.slug !== "trigger-links" &&
      f.slug !== "automation",
  ).slice(0, 7);

  return (
    <main>
      {/* ===== HERO ===== */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-tr from-[#3344b8]/30 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="mb-6 flex flex-col items-start gap-3">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              All Leadli Features
            </Link>

            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
              <Sparkles className="w-4 h-4 text-amber-400" />
              Marketing · Social Media Scheduler
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <CalendarClock className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Social Planner
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Plan, draft, and publish across every platform from one content calendar — without a
                separate scheduling tool.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Stop logging into five different apps to post the same thing. Leadli's Social Planner
            lets you draft once, schedule across Instagram, Facebook, and LinkedIn, preview your
            grid, recycle your best content, and track engagement — all tied straight to your CRM so
            you know which prospects are paying attention.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["Buffer", "Hootsuite", "Later", "The post-it note reminder to ‘post something’"].map(
              (name) => (
                <span
                  key={name}
                  className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
                  dangerouslySetInnerHTML={{ __html: name }}
                />
              ),
            )}
          </div>

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              Included with Leadli at one flat $199/mo rate. See how it fits your firm on a
              30-minute call.
            </p>
          </div>
        </div>
      </section>

      {/* ===== THE LEAK ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-12">
            <div className="lg:col-span-5">
              <span className="text-xs font-bold uppercase tracking-wider text-rose-600 bg-rose-50 px-3 py-1 rounded-full border border-rose-200 inline-block">
                The leak
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight leading-tight">
                You mean to post consistently. Then a will deadline shows up.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You open Buffer for Instagram, switch to Hootsuite for LinkedIn, remember you forgot
                Facebook, and give up. Or you batch a week of content on Sunday — then the next
                deadline eats your Monday and it's Thursday before anyone notices the silence. The
                engagement you worked for dies because you can't keep up the cadence across five
                logins.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli's Social Planner fixes that. One calendar. Every platform. Draft once,
                schedule it across Instagram, Facebook, and LinkedIn in a click. Preview the grid
                before it goes live. Set your best posts to recycle automatically. And track who's
                engaging — right inside the same CRM that already knows your prospects.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "One calendar for every platform",
                  "Auto-publish on schedule",
                  "Recycle your best content",
                  "Engagement tied to your CRM",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    {item}
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              The dashboard your firm actually needs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              One calendar. Every platform. Zero extra logins.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between the month calendar and your content library to see how scheduling,
              recycling, and engagement tracking all live in one place.
            </p>
          </div>

          <SocialSchedulerMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              What you get
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              A social presence that runs on a schedule — not on willpower.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {CAPABILITIES.map((cap) => {
              const Icon = cap.icon;
              return (
                <div
                  key={cap.title}
                  className="rounded-2xl border border-slate-200 p-6 bg-white hover:shadow-md transition-shadow"
                >
                  <div className="flex items-start gap-4">
                    <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                      <Icon className="w-5 h-5" />
                    </div>
                    <div>
                      <h3 className="font-black text-base text-[#12193b]">{cap.title}</h3>
                      <p className="text-sm text-slate-600 mt-1.5 leading-relaxed">{cap.body}</p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-10 rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-5">
              <div>
                <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300 mb-1">
                  Included in Leadli
                </div>
                <p className="text-sm text-slate-200 leading-relaxed max-w-xl">
                  Social scheduling is part of the single platform we configure around how your firm
                  runs — not a separate scheduling tool with its own login, its own queue, and its
                  own monthly bill. No extra subscription, no per-account fee.
                </p>
              </div>
              <div className="flex items-baseline gap-2 shrink-0">
                <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                <span className="text-3xl font-black text-amber-300">$199/mo</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== DEEP DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Calendar className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  One calendar, every platform
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Draft once. Publish everywhere. Without switching tabs.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Write your caption once, attach your image, and schedule it across Instagram,
                Facebook, and LinkedIn from a single drag-and-drop calendar. See the whole month at
                a glance, move posts by dragging them, and know exactly what's going out and when —
                without ever opening a separate scheduling app.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Drag-and-drop monthly calendar",
                  "Multi-platform publishing from one draft",
                  "Preview your grid before it goes live",
                  "Auto-publish at the time you choose",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span>{item}</span>
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Repeat className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Set it and forget it
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Your best content keeps working while you're in a deposition.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Drop your top-performing posts into a content library and set them to recycle on a
                schedule — weekly, monthly, or on a custom cadence. Your evergreen educational
                content keeps showing up in prospects' feeds even when you're buried in client work.
                No more “we haven't posted in three weeks.”
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Reusable content library with one-click scheduling",
                  "Automatic recycling on your cadence",
                  "Track which posts drive the most engagement",
                  "Every interaction logged in your CRM",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span>{item}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* ===== USE CASES ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Built for the content you already mean to post
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Three cadences. Three audiences. One calendar.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The social content estate planners already mean to post — now it runs itself.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-5">
            {USE_CASES.map((uc) => {
              const Icon = uc.icon;
              return (
                <div
                  key={uc.title}
                  className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-6 flex flex-col"
                >
                  <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] mb-4">
                    <Icon className="w-5 h-5" />
                  </div>
                  <h3 className="font-black text-base text-[#12193b] mb-1.5">{uc.title}</h3>
                  <p className="text-sm text-slate-600 leading-relaxed flex-1">{uc.body}</p>
                  <div className="mt-4 pt-3 border-t border-slate-200">
                    <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-[#3344b8]">
                      <Zap className="w-3.5 h-3.5 text-amber-500" />
                      {uc.trigger}
                    </span>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every post ripples through the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no “is this the same person?” The prospect who likes your
              post is the same contact your pipeline and sequences already know.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-white p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-[#fcfbf8] border border-slate-200 flex items-center justify-center text-[#3344b8]">
                    <Icon className="w-5 h-5" />
                  </div>
                  <span className="text-xs font-bold text-slate-700 leading-snug">
                    {conn.label}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* ===== MORE FEATURES ===== */}
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Social scheduling is just the start. Explore the rest of what's included with Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-[#fcfbf8] border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
              >
                {f.name}
              </Link>
            ))}
          </div>
          <div className="mt-10 text-center">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:underline"
            >
              See the full Leadli platform
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let's get your social on a schedule.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map the platforms you're juggling today, tell you honestly whether
            Leadli fits, and give you a clear estimate.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-amber-500 hover:bg-amber-600 text-slate-950 rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>
    </main>
  );
}

const CAPABILITIES: { title: string; body: string; icon: typeof Zap }[] = [
  {
    icon: LayoutGrid,
    title: "Multi-platform calendar",
    body: "Drag-and-drop your posts across a monthly calendar and publish to Instagram, Facebook, and LinkedIn from one view — no separate app for each platform.",
  },
  {
    icon: ImageIcon,
    title: "Visual grid preview",
    body: "See how your Instagram feed will look before anything goes live. Rearrange, swap, and preview your grid so your aesthetic stays consistent.",
  },
  {
    icon: Clock,
    title: "Auto-publishing",
    body: "Set the date and time and Leadli publishes it for you — no reminders, no “I'll do it in a minute,” no missed posts while you're in a consult.",
  },
  {
    icon: Repeat,
    title: "Content recycling",
    body: "Drop your best-performing posts into a content library and set them to recycle on a schedule. Your evergreen education keeps showing up while you work.",
  },
  {
    icon: BarChart3,
    title: "Engagement analytics",
    body: "See likes, comments, and shares per post — and know which prospects are engaging — without opening a separate analytics dashboard.",
  },
  {
    icon: Hash,
    title: "Hashtag & caption management",
    body: "Save hashtag groups, reuse captions, and keep your brand voice consistent across every post — without starting from scratch every time.",
  },
  {
    icon: MessageSquare,
    title: "Two-way messaging",
    body: "When someone DMs your page, the conversation lands in your unified inbox — right next to their CRM record and your other messages.",
  },
  {
    icon: Send,
    title: "Reels & story scheduling",
    body: "Plan short-form content alongside your feed posts. Schedule stories and reels so your presence stays active even on the busy weeks.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Heart;
  trigger: string;
}[] = [
  {
    icon: BarChart3,
    title: "Weekly thought leadership",
    body: "A Tuesday & Thursday cadence of estate planning tips, industry takes, and client wins. Draft the whole week on Monday, set it to auto-publish, and forget about it while you draft documents.",
    trigger: "Keeps your name top-of-mind",
  },
  {
    icon: Repeat,
    title: "Evergreen content recycling",
    body: "Your “5 signs your estate plan is outdated” post doesn't expire. Set it to recycle monthly so new followers see it — without you rewriting it every time.",
    trigger: "Your best content keeps working",
  },
  {
    icon: Calendar,
    title: "Webinar & event promotion",
    body: "Promote your next Trusts 101 webinar across every platform on a countdown schedule — registration, reminders, and “last chance” posts — all automated from one calendar.",
    trigger: "Fills your webinar pipeline",
  },
];

const CONNECTIONS: { label: string; icon: typeof Heart }[] = [
  { icon: MessageSquare, label: "Unified inbox" },
  { icon: Zap, label: "Automation builder" },
  { icon: Hash, label: "Trigger links" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: BarChart3, label: "Analytics & reports" },
  { icon: Heart, label: "Pipeline engagement" },
];
