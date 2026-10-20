import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  MailOpen,
  Mail,
  Send,
  Repeat,
  Users,
  BarChart3,
  MousePointerClick,
  LayoutTemplate,
  Calendar,
  Zap,
  Heart,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { EmailMarketingMockup } from "@/components/home/email-marketing-mockup";

/**
 * Dedicated sales page for the Leadli Email Marketing product.
 *
 * Renders inside /feature/$slug when the slug is "email-marketing". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function EmailMarketingProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "email-marketing" &&
      f.slug !== "marketing" &&
      f.slug !== "trigger-links" &&
      f.slug !== "automation" &&
      f.slug !== "social-scheduler" &&
      f.slug !== "webinar-funnels",
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
              Marketing &middot; Email Marketing
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <MailOpen className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Email Marketing
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Broadcast and drip campaigns that live where your contacts do &mdash; not in a
                separate app you forget to check.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Design beautiful emails, automate nurture sequences, and track every open and click
            &mdash; all built right into your CRM. The contact who opened your pricing email is the
            same contact your pipeline already knows, so your follow-up is instant and never out of
            sync.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Mailchimp",
              "ConvertKit",
              "ActiveCampaign",
              "The &lsquo;I&rsquo;ll email them later&rsquo; list",
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
                Your email tool doesn&rsquo;t know what your CRM knows.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You pay for Mailchimp on top of everything else, and it lives in its own world. A
                lead fills out your form, lands in your CRM, and then what? You export a list,
                import it into Mailchimp, send a blast, and hope the two systems stay in sync. They
                don&rsquo;t. Half your list is stale, the people who clicked your pricing link are
                invisible to your pipeline, and the nurture sequence you meant to set up is still a
                sticky note on your monitor.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli Email Marketing fixes that by living inside your CRM. Build the campaign,
                segment by pipeline stage, trigger the sequence on a form submit or a calendar
                booking, and watch every open, click, and booking happen in one place &mdash; the
                same place that already knows your prospect&rsquo;s name.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Segment by pipeline stage",
                  "Trigger sends on behavior",
                  "Open & click tracking built in",
                  "No separate list to sync",
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
              Broadcasts and drip sequences. One inbox. Zero exports.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between a broadcast campaign list with open and click analytics and a visual
              drip-sequence builder that runs itself for every new inquiry.
            </p>
          </div>

          <EmailMarketingMockup />
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
              Email marketing that knows your pipeline &mdash; because it <em>is</em> your pipeline.
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
                  Email marketing is part of the single platform we configure around how your firm
                  runs &mdash; not a separate tool with its own list, its own login, and its own
                  monthly bill. No extra subscription, no per-contact pricing tiers.
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
                <Repeat className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Set it and forget it
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Drip sequences that educate before they sell.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                When someone fills out your intake form, a nurture sequence starts automatically.
                Day one: what a trust is and why it matters. Two days later: the cost of doing
                nothing. Then a client story, then the pricing video, then the booking link. By the
                time they reach your calendar, they&rsquo;ve already decided you&rsquo;re the expert
                &mdash; because they&rsquo;ve heard from you five times before the call.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Triggers on form submit, booking, or any CRM event",
                  "Mix email and text in the same sequence",
                  "Pause the sequence when they book a consult",
                  "Branch by interest, practice area, or any custom field",
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
                <BarChart3 className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  See who&rsquo;s paying attention
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Opens and clicks that tell your team who to call first.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A prospect opened your pricing email three times and clicked the booking link?
                That&rsquo;s a hot lead &mdash; and Leadli flags it automatically. Your intake
                coordinator sees it in the pipeline, tagged and prioritized, without anyone
                exporting a report or cross-referencing two tools. The data you need to follow up
                fast is already where you work.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Per-contact open and click tracking",
                  "Auto-flag high-engagement contacts for your team",
                  "Segment by who opened, who clicked, who ghosted",
                  "Every interaction logged in the CRM record &mdash; automatically",
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
              Built for the emails you already mean to send
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Three sequences. Three moments. One platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The email nurture estate planners already know they need &mdash; now it runs itself.
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
              Every email ripples through the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no &ldquo;is this the same person?&rdquo; The contact who
              opens your email is the same contact your pipeline, sequences, and calendars already
              know.
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
              Email marketing is just the start. Explore the rest of what&rsquo;s included with
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
            Let&rsquo;s get your email nurture running itself.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&rsquo;ll map the emails you&rsquo;re sending by hand today, tell you
            honestly whether Leadli fits, and give you a clear estimate.
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
    icon: LayoutTemplate,
    title: "Visual email builder",
    body: "Drag-and-drop your way to beautiful, on-brand emails &mdash; no HTML, no designer, no separate template tool.",
  },
  {
    icon: Repeat,
    title: "Drip & broadcast campaigns",
    body: "Set up automated nurture sequences that run for every new inquiry, or send a one-time broadcast to a segment &mdash; same builder, same CRM.",
  },
  {
    icon: Users,
    title: "Pipeline-stage segmentation",
    body: "Send to a Smart List built from any CRM field &mdash; pipeline stage, practice area, last consult date, or anything you track.",
  },
  {
    icon: MousePointerClick,
    title: "Behavior-triggered sends",
    body: "Start a sequence when someone submits a form, books a consult, or clicks a trigger link &mdash; no Zapier glue required.",
  },
  {
    icon: BarChart3,
    title: "Open & click analytics",
    body: "See who opened, who clicked, and who ignored &mdash; per contact, per campaign &mdash; right inside the CRM record.",
  },
  {
    icon: Calendar,
    title: "Smart scheduling",
    body: "Send now, schedule for later, or let the sequence time itself. Reminders and follow-ups fire on their own schedule.",
  },
  {
    icon: Send,
    title: "Email + text together",
    body: "Mix email and SMS in the same automation. The pricing email goes out, then the text nudge follows two days later &mdash; one sequence.",
  },
  {
    icon: Mail,
    title: "Unlimited contacts",
    body: "No per-contact pricing tiers, no &ldquo;upgrade to send to 5,000.&rdquo; Every subscriber is included in your flat $199/mo rate.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Heart;
  trigger: string;
}[] = [
  {
    icon: MailOpen,
    title: "The new-inquiry nurture",
    body: "Someone fills out your form. A 5-step email sequence teaches them about trusts, shows the pricing, and hands them a booking link &mdash; before you ever pick up the phone.",
    trigger: "Turns inquiries into booked consults",
  },
  {
    icon: Repeat,
    title: "The cold-lead revival",
    body: "Your CRM has 400 leads you never followed up with. Build a Smart List, send a &ldquo;is your estate plan still current?&rdquo; broadcast, and let the clicks tell you who&rsquo;s warm again.",
    trigger: "Wakes up your dormant list",
  },
  {
    icon: Calendar,
    title: "The post-consult follow-up",
    body: "After a consult, a 3-step sequence reinforces the value, answers the objections you know are coming, and includes the engagement letter link &mdash; automatically.",
    trigger: "Closes the clients who hesitate",
  },
];

const CONNECTIONS: { label: string; icon: typeof Heart }[] = [
  { icon: Users, label: "Smart Lists &amp; segments" },
  { icon: Zap, label: "Automation builder" },
  { icon: MousePointerClick, label: "Trigger links" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: BarChart3, label: "Pipeline &amp; reports" },
  { icon: Send, label: "SMS follow-up" },
];
