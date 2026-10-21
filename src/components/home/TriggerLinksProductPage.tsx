import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Link2,
  Mail,
  MessageSquare,
  Calendar,
  Globe,
  Zap,
  Bell,
  Tag,
  Send,
  Database,
  TrendingUp,
  Eye,
  MousePointerClick,
  FileDown,
  Shield,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { TriggerLinksMockup } from "@/components/home/trigger-links-mockup";

/**
 * Dedicated sales page for the Leadli Trigger Links product.
 *
 * Renders inside /feature/$slug when the slug is "trigger-links". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function TriggerLinksProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "trigger-links" &&
      f.slug !== "automation" &&
      f.slug !== "marketing" &&
      f.slug !== "email-marketing",
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
              Marketing · Trigger Links
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Link2 className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Trigger Links
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Smart links that fire automations the instant they’re clicked — no forms, no
                buttons, no manual follow-up.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Drop a trigger link into any email, text, or page. When a prospect clicks it, Leadli
            fires the exact workflow you configured — tags them, starts a sequence, notifies your
            team, opens a calendar — without a single form to fill out or a single follow-up email
            to remember. You know who clicked, when, and what happened next. Automatically.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Manual link tracking",
              "The “did they open it?” guesswork",
              "Copy-paste follow-up emails",
              "UTM spreadsheets nobody reads",
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
                You send a link. They click it. And nothing happens.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You put a link in a nurture email — “learn more about trusts” or “download our
                estate planning guide.” They click it. And then… nothing. No tag fires. No sequence
                starts. Nobody on your team knows they clicked. You’re back to guessing who’s warm,
                scrolling through email open rates that don’t tell you anything, and following up by
                hand with the same “just checking in” email you sent last week.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Trigger Links close that gap. The click <em>is</em> the trigger. The moment a
                prospect clicks, Leadli tags them, starts the right sequence, notifies your team,
                and moves them to the right pipeline stage — without a form, without a button, and
                without you remembering to follow up. The link does the remembering for you.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "The click is the trigger",
                  "You know exactly who clicked",
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

      {/* ===== TRIGGER LINKS DASHBOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Click a link. Watch the automation fire.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Every trigger link is wired to its own workflow. Switch between your links to see
              exactly what happens the moment a prospect clicks — the tag, the sequence, the
              notification.
            </p>
          </div>

          <TriggerLinksMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Links that do something — not links that go nowhere.
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
                  Trigger links are part of the single platform we configure around how your firm
                  runs — not a separate link-tracking tool with its own login and its own dashboard
                  nobody checks. No extra subscription, no per-click fee.
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

      {/* ===== DEEP DIVE: ANYWHERE + INSTANT ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Globe className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Drop it anywhere</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Email, text, landing page, PDF — the link works wherever you put it.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A trigger link is just a link. Drop it into a nurture email, a follow-up text, a
                landing page, or even a PDF guide. When a prospect clicks — from any device, in any
                context — Leadli recognizes who they are and fires the workflow. No tracking pixel
                to install, no separate dashboard to check, no “did they actually click it?” The
                link knows.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Works in email, SMS, landing pages & PDFs",
                  "Recognizes the contact automatically — no login required",
                  "Trackable per link, per campaign, per channel",
                  "One link per action — or dozens, the cost is the same",
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
                <Zap className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  It fires instantly
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The click is the trigger — the automation runs before you even notice.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                The moment a prospect clicks, Leadli tags them, starts the sequence you built,
                notifies your team, and moves them to the right pipeline stage. No delay, no manual
                step, no “I’ll follow up on Monday.” By the time you see the notification, the
                follow-up email is already in their inbox and the consult calendar is already open.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Tag fires on click — instantly, per contact",
                  "Sequences start before your team even sees the notification",
                  "Pipeline stage updates automatically",
                  "Your team gets a heads-up — not a to-do",
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
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Three links. Three automations. Zero manual follow-up.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The links you’re already putting in emails and texts — now they actually
              <em> do</em> something when someone clicks.
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
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Every click ripples through the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no “is this the same person?” The contact who clicks is the
              same contact your pipeline, sequences, and calendars already know.
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
              Trigger links are just the start. Explore the rest of what's included with Leadli.
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
            Let's make every click count.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map the links you send today, tell you honestly whether Leadli fits,
            and give you a clear estimate.
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
    icon: Zap,
    title: "Click-triggered automations",
    body: "Every trigger link fires its own workflow the instant it’s clicked — tag, sequence, notification, pipeline move. You build it once; it runs every time.",
  },
  {
    icon: Eye,
    title: "Per-contact tracking",
    body: "Not “142 clicks.” You know exactly which contact clicked, when, and from which email or text. No guessing, no anonymous stats, no “was that the same person?”",
  },
  {
    icon: Globe,
    title: "Works anywhere",
    body: "Drop a trigger link into an email, a text, a landing page, or a PDF. It works wherever a link works — no pixel to install, no plugin to configure.",
  },
  {
    icon: MousePointerClick,
    title: "No forms required",
    body: "The click is the action. No form to fill out, no button to press, no friction between “I’m interested” and “the workflow started.” They click; it fires.",
  },
  {
    icon: Bell,
    title: "Real-time notifications",
    body: "Your team gets a heads-up the moment a warm lead clicks a high-intent link — not a to-do for later. “They clicked the pricing video” shows up before they finish watching it.",
  },
  {
    icon: Tag,
    title: "Smart auto-tagging",
    body: "Every click tags the contact automatically — by topic, by intent, by funnel stage. The tags drive your sequences, your pipeline, and your reporting without a single manual label.",
  },
  {
    icon: TrendingUp,
    title: "Click analytics",
    body: "See which links get clicked, which emails drive action, and which sequences actually convert — per link, per campaign, per channel. The data is already there; you just couldn’t see it before.",
  },
  {
    icon: Shield,
    title: "Frictionless for prospects",
    body: "No redirect to a form. No “please enter your email.” They’re already in your CRM — the click just tells you they’re ready. The experience is seamless; the data is rich.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Mail;
  trigger: string;
}[] = [
  {
    icon: Mail,
    title: "The “Is this right for me?” link",
    body: "A link in your nurture email that says “Is a trust right for you?” When they click, Leadli tags them trust-curious, sends the education video sequence, and notifies your team — before they even close the email.",
    trigger: "Fires the education sequence",
  },
  {
    icon: Calendar,
    title: "The “Book now” link",
    body: "A link in a follow-up text that says “Book your free consult.” One click opens the estate planning calendar, sends the pre-consult intake form, and drops them straight into your pipeline — no back-and-forth.",
    trigger: "Opens the calendar + sends intake",
  },
  {
    icon: FileDown,
    title: "The “Download this” link",
    body: "A link on your landing page for the estate planning checklist. They click, they download, and Leadli starts the 5-part nurture sequence, tags them lead-magnet, and tells your team there’s a new warm inbound — all from one click.",
    trigger: "Starts the nurture sequence",
  },
];

const CONNECTIONS: { label: string; icon: typeof Mail }[] = [
  { icon: Database, label: "CRM & contacts" },
  { icon: Zap, label: "Automation builder" },
  { icon: Mail, label: "Email sequences" },
  { icon: Send, label: "SMS follow-up" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: Tag, label: "Pipeline stages" },
];
