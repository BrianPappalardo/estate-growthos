import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Video,
  Calendar,
  Bell,
  Mail,
  MessageSquare,
  PlayCircle,
  Send,
  Users,
  Clock,
  Tag,
  RotateCcw,
  Database,
  Zap,
  Globe,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { WebinarFunnelsMockup } from "@/components/home/webinar-funnels-mockup";

/**
 * Dedicated sales page for the Leadli Webinar Funnels product.
 *
 * Renders inside /feature/$slug when the slug is "webinar-funnels". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function WebinarFunnelsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "webinar-funnels" &&
      f.slug !== "marketing" &&
      f.slug !== "email-marketing" &&
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
              Marketing &middot; Webinar Funnels
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Video className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Webinar Funnels
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Registration pages, automated reminders, live or evergreen replays, and post-event
                nurture &mdash; all tied straight to your CRM.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Run a live monthly webinar or an evergreen on-demand session. Leadli handles
            registration, sends the right reminders at the right time, tracks attendance, and drops
            every registrant into a nurture sequence &mdash; without a separate webinar platform, a
            separate email tool, or a spreadsheet of &ldquo;who showed up.&rdquo;
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Webinar platforms (Zoom Webinars, Webex)",
              "Manual reminder emails",
              "The &ldquo;who attended?&rdquo; spreadsheet",
              "Post-event follow-up you forget to send",
            ].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
                dangerouslySetInnerHTML={{ __html: name }}
              />
            ))}
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
                You host the webinar. Then you forget to follow up.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You set up a webinar in one tool, registration in another, reminders by hand, and
                the replay link in a third. Half your registrants forget to show because the
                reminder went out at the wrong time. The other half show up, and you never get
                around to sending the follow-up &mdash; so the warmest leads in your pipeline go
                cold while you&rsquo;re back to drafting wills.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Webinar Funnels close that loop. One registration page. Automated reminders at the
                exact right moments. Attendance tracked automatically. And the moment it&rsquo;s
                over, the replay goes to no-shows and the consult-offer sequence goes to attendees
                &mdash; without you lifting a finger.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Reminders fire at the right time",
                  "Attendance tracked automatically",
                  "The follow-up runs itself",
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

      {/* ===== WEBINAR FUNNELS MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              The dashboard your firm actually needs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              One registration. Every reminder. Zero manual follow-up.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between a live monthly webinar and an evergreen on-demand session to see the
              full automated sequence &mdash; from registration to post-event nurture.
            </p>
          </div>

          <WebinarFunnelsMockup />
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
              A webinar funnel that runs itself &mdash; start to finish.
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
                  Webinar funnels are part of the single platform we configure around how your firm
                  runs &mdash; not a separate webinar tool with its own login, its own attendee
                  list, and its own monthly bill. No extra subscription, no per-attendee fee.
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

      {/* ===== DEEP DIVE: LIVE + EVERGREEN ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Calendar className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Live or evergreen
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Run it live once a month, or let it run itself 24/7.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Host a live monthly webinar with real-time registration and attendance tracking. Or
                set up an evergreen session that&rsquo;s available on-demand &mdash; every
                registrant gets the same reminders, the same tracking, and the same nurture
                sequence, on their schedule. Same funnel, two modes, no extra setup.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Live webinars with capacity limits &amp; waitlists",
                  "Evergreen sessions available around the clock",
                  "Same reminders, tracking &amp; nurture either way",
                  "Switch modes without rebuilding the funnel",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <RotateCcw className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  It follows up for you
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The replay goes to no-shows. The consult offer goes to attendees.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                The moment the webinar ends, the funnel splits: no-shows get the replay and a
                &ldquo;catch the next one&rdquo; nudge, and attendees get the pricing video, the
                consult calendar, and a follow-up sequence that walks them toward hiring you. No one
                falls through the cracks because there are no cracks &mdash; the automation handles
                every registrant by status, automatically.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "No-shows get the replay automatically",
                  "Attendees get the consult-offer sequence",
                  "High-engagement viewers ping your team",
                  "Every registrant stays in your CRM &mdash; tagged &amp; staged",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
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
              Built for the webinars you already run
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Three funnels. Three audiences. Zero manual reminders.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The webinars estate planners already run &mdash; now the registration, reminders, and
              follow-up run themselves.
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
              Every registrant ripples through the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no &ldquo;is this the same person?&rdquo; The contact who
              registers is the same contact your pipeline, sequences, and calendars already know.
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
              Webinar funnels are just the start. Explore the rest of what&apos;s included with
              Leadli.
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
            Let&apos;s fill your next webinar.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll map the webinars you run today, tell you honestly whether Leadli
            fits, and give you a clear estimate.
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
    icon: Calendar,
    title: "Registration pages",
    body: "A branded registration page for every webinar &mdash; live or evergreen &mdash; with capacity limits, custom intake questions, and instant confirmation.",
  },
  {
    icon: Bell,
    title: "Automated reminders",
    body: "Email and SMS reminders fire at the exact right moments &mdash; one day before, morning of, 15 minutes prior. No more &ldquo;I forgot it was today.&rdquo;",
  },
  {
    icon: PlayCircle,
    title: "Attendance tracking",
    body: "See who showed up, who dropped off, and who never clicked the link &mdash; automatically, per registrant, in your CRM. No manual attendee lists.",
  },
  {
    icon: Send,
    title: "Replay &amp; nurture sequences",
    body: "The moment the webinar ends, the replay goes to no-shows and the consult-offer sequence goes to attendees &mdash; split by status, automatically.",
  },
  {
    icon: Users,
    title: "Capacity &amp; waitlists",
    body: "Set a seat limit and let the overflow join a waitlist. When a spot opens, the next person gets promoted automatically &mdash; no spreadsheet to manage.",
  },
  {
    icon: Tag,
    title: "Registrant CRM sync",
    body: "Every registrant lands in your CRM &mdash; tagged by webinar, staged in your pipeline, and ready for the next step. No imports, no exports, no duplicates.",
  },
  {
    icon: Clock,
    title: "Live &amp; evergreen modes",
    body: "Run the same funnel live once a month or evergreen 24/7. Same reminders, same tracking, same nurture &mdash; switch modes without rebuilding anything.",
  },
  {
    icon: Globe,
    title: "On your domain",
    body: "Registration and replay pages live on your own domain &mdash; not a generic webinar platform URL. Your brand, your trust, your traffic.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Mail;
  trigger: string;
}[] = [
  {
    icon: Video,
    title: "The monthly live webinar",
    body: "A Trusts 101 session the first Thursday of every month. Registration opens, reminders fire, attendance is tracked, and the replay + consult offer goes out automatically &mdash; while you&apos;re back to drafting documents.",
    trigger: "Runs the full sequence monthly",
  },
  {
    icon: PlayCircle,
    title: "The evergreen on-demand session",
    body: "An on-demand &ldquo;Is a Trust Right for Your Family?&rdquo; that&apos;s available 24/7. Every registrant gets the same reminders, tracking, and 3-part nurture sequence &mdash; on their schedule, not yours.",
    trigger: "Fills your pipeline around the clock",
  },
  {
    icon: Users,
    title: "The client education seminar",
    body: "A quarterly seminar for existing clients on updating their estate plan. Registration, reminders, and a post-event follow-up that offers a review consult &mdash; all automated, all tied to their existing CRM record.",
    trigger: "Drives repeat &amp; referral business",
  },
];

const CONNECTIONS: { label: string; icon: typeof Mail }[] = [
  { icon: Database, label: "CRM &amp; contacts" },
  { icon: Zap, label: "Automation builder" },
  { icon: Mail, label: "Email sequences" },
  { icon: MessageSquare, label: "SMS reminders" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: Tag, label: "Pipeline stages" },
];
