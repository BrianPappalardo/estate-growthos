import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Smartphone,
  Send,
  MessageSquare,
  MessageCircle,
  Users,
  Repeat,
  Ban,
  Zap,
  Bell,
  Clock,
  BarChart3,
  Heart,
  Calendar,
  ShieldCheck,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { SmsMarketingMockup } from "@/components/home/sms-marketing-mockup";

/**
 * Dedicated sales page for the Leadli SMS Marketing product.
 *
 * Renders inside /feature/$slug when the slug is "sms-marketing". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function SmsMarketingProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "sms-marketing" &&
      f.slug !== "email-marketing" &&
      f.slug !== "marketing" &&
      f.slug !== "trigger-links" &&
      f.slug !== "automation" &&
      f.slug !== "inbox",
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
              Marketing &middot; SMS Marketing
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Smartphone className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli SMS Marketing
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Two-way text conversations and bulk campaigns that live inside your CRM &mdash; not
                in a separate app your team forgets to check.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Text the way your clients already communicate. Reply one-on-one from a unified inbox
            tied to each contact&rsquo;s pipeline stage, or blast a campaign to a Smart List with
            delivery tracking, auto opt-outs, and replies that land right back in the conversation
            thread. One platform, one flat rate &mdash; no separate texting app, no per-message
            surprise.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "EZTexting",
              "SimpleTexting",
              "Podium",
              "The &lsquo;I&rsquo;ll just text them from my cell&rsquo; habit",
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
                Your leads text back. Your separate texting app doesn&rsquo;t tell your CRM.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Someone fills out your form and gets an automated text &mdash; great. They reply
                with a question, and it lands in EZTexting, or Podium, or your personal phone. Your
                CRM doesn&rsquo;t know it happened. Your pipeline still says &ldquo;new
                inquiry&rdquo; while your prospect is two texts away from booking. Or you pay for a
                bulk texting tool and a separate conversation tool and a separate inbox, and somehow
                the right message still goes to the wrong person.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli SMS fixes that by putting both 1-to-1 conversations and 1-to-many campaigns
                inside the same CRM that already knows your contact&rsquo;s name, stage, and
                history. A reply to a campaign lands in the same thread as your one-on-one texts
                &mdash; tied to the contact, not to a phone number in a separate app. Opt-outs are
                handled automatically, reminders fire on schedule, and every message shows up in the
                pipeline the moment it&rsquo;s sent.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Two-way replies in the same inbox",
                  "Bulk sends with delivery tracking",
                  "Auto opt-out & STOP compliance",
                  "Every text tied to the CRM record",
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
              One thread per contact. One inbox for the whole firm.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between 1-to-1 conversations (two-way replies tied to your pipeline) and
              1-to-many campaigns (bulk sends with delivery, reply, and opt-out analytics).
            </p>
          </div>

          <SmsMarketingMockup />
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
              Texts that close, in the same place your pipeline lives.
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
                  SMS marketing is part of the single platform we configure around how your firm
                  runs &mdash; not a separate texting app with its own login, its own per-message
                  pricing, and its own disconnected list. One inbox, one rate, one place where every
                  conversation lives.
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
                <MessageSquare className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  1-to-1, in context
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Two-way texts that never leave the pipeline.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                When Sarah replies to your automated text, her message lands in the same thread
                that&rsquo;s tied to her CRM record &mdash; right next to her pipeline stage, the
                form she filled out, and the email she opened yesterday. Your intake coordinator
                sees it in the inbox; you see it in the pipeline. Nobody&rsquo;s checking a separate
                phone or a separate app, and nobody&rsquo;s asking &ldquo;wait, which contact is
                this?&rdquo;
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Every conversation tied to the contact&rsquo;s CRM record",
                  "Pipeline stage, notes, and history sit next to the thread",
                  "Team assignment &mdash; anyone on your team can reply",
                  "Read receipts and delivery status on every message",
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
                <Send className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  1-to-many, on autopilot
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Bulk campaigns that track replies, not just delivery.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Build a Smart List of past clients whose trust is over three years old, write one
                message, and send it to all of them at once. Leadli tracks how many were delivered,
                how many replied, and how many opted out &mdash; and every reply drops back into a
                1-to-1 thread tied to that contact. So when 34 people text back &ldquo;YES,&rdquo;
                they&rsquo;re already in your pipeline, ready for a consult link.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Send to any Smart List &mdash; contacts, opportunities, or custom objects",
                  "Delivery, reply, and opt-out analytics per campaign",
                  "Replies route back to 1-to-1 threads automatically",
                  "STOP and opt-out handled &mdash; compliance without the spreadsheet",
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
              Built for the texts you already mean to send
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Three campaigns. Three moments. One inbox.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The texts estate planners already know they need &mdash; now they run themselves and
              the replies come home.
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

      {/* ===== COMPLIANCE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-4xl mx-auto px-4 sm:px-6">
          <div className="rounded-3xl border border-slate-200 bg-white p-7 sm:p-10 shadow-sm">
            <div className="flex items-start gap-4">
              <div className="w-12 h-12 rounded-2xl bg-emerald-50 border border-emerald-200 flex items-center justify-center text-emerald-700 shrink-0">
                <ShieldCheck className="w-6 h-6" />
              </div>
              <div>
                <div className="text-xs font-bold uppercase tracking-wider text-emerald-700 mb-1">
                  Compliance, built in
                </div>
                <h3 className="text-xl sm:text-2xl font-black text-[#12193b] tracking-tight">
                  Opt-outs, STOP handling, and consent tracking &mdash; handled.
                </h3>
                <p className="mt-3 text-sm sm:text-base text-slate-700 leading-relaxed">
                  Every campaign respects opt-outs automatically. When someone replies STOP,
                  they&rsquo;re removed from your future sends without a manual step. We track
                  consent at the contact level, so you know who said yes before you ever text them
                  &mdash; and your team isn&rsquo;t maintaining a separate compliance spreadsheet on
                  the side.
                </p>
                <div className="mt-5 flex flex-wrap gap-2.5">
                  {[
                    { icon: Ban, label: "STOP auto-removal" },
                    { icon: ShieldCheck, label: "Consent tracking" },
                    { icon: BarChart3, label: "Opt-out analytics" },
                    { icon: Clock, label: "Quiet hours" },
                  ].map((chip) => {
                    const Icon = chip.icon;
                    return (
                      <span
                        key={chip.label}
                        className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                      >
                        <Icon className="w-3.5 h-3.5" />
                        {chip.label}
                      </span>
                    );
                  })}
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every text ripples through the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no &ldquo;is this the same person?&rdquo; The contact who
              replies to your campaign is the same contact your pipeline, calendars, and email
              sequences already know.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
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
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              SMS marketing is just the start. Explore the rest of what&rsquo;s included with
              Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-white border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
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
            Let&rsquo;s get your texts landing in the right inbox.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&rsquo;ll map the texts you&rsquo;re sending by hand today, tell you
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
    icon: MessageSquare,
    title: "Two-way conversations",
    body: "Reply 1-to-1 from a unified inbox tied to each contact&rsquo;s CRM record &mdash; no separate texting app, no lost context.",
  },
  {
    icon: Send,
    title: "Bulk campaigns",
    body: "Send one message to a Smart List of hundreds &mdash; with delivery tracking, reply analytics, and replies routed back to individual threads.",
  },
  {
    icon: Users,
    title: "Smart List targeting",
    body: "Text a segment built from any CRM field &mdash; pipeline stage, last consult date, practice area, or a custom tag you define.",
  },
  {
    icon: Bell,
    title: "Automated reminders",
    body: "Fires a text reminder before a consult, after a form submit, or on any CRM trigger &mdash; without a Zapier glue layer or a manual nudge.",
  },
  {
    icon: Ban,
    title: "Opt-out & STOP handling",
    body: "A reply of STOP removes the contact from future sends automatically. Consent is tracked at the contact level &mdash; no separate compliance sheet.",
  },
  {
    icon: Repeat,
    title: "Drip & scheduled sends",
    body: "Schedule a campaign for later or build a multi-step SMS drip that runs for every new inquiry &mdash; same builder, same CRM, same inbox.",
  },
  {
    icon: MessageCircle,
    title: "Reply analytics",
    body: "See who replied, who went quiet, and who opted out &mdash; per campaign and per contact &mdash; right inside the pipeline.",
  },
  {
    icon: Clock,
    title: "Quiet hours & scheduling",
    body: "Respect business hours and time zones automatically. Messages queue and send when it&rsquo;s appropriate &mdash; not at 11 PM.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Heart;
  trigger: string;
}[] = [
  {
    icon: Bell,
    title: "The consult reminder",
    body: "Two hours before the call, a text fires automatically: &ldquo;Hi Sarah, looking forward to our 2pm. Here&rsquo;s the link.&rdquo; Show rates go up, no-shows go down, and nobody&rsquo;s sending it by hand.",
    trigger: "Cuts your no-show rate",
  },
  {
    icon: Send,
    title: "The past-client revival",
    body: "A Smart List of clients whose trust is 3+ years old. One bulk text: &ldquo;Time for a review?&rdquo; The replies land in 1-to-1 threads, already in your pipeline &mdash; ready to book.",
    trigger: "Wakes up dormant revenue",
  },
  {
    icon: MessageSquare,
    title: "The new-inquiry nudge",
    body: "Someone fills out your form. A text goes out in seconds &mdash; not Thursday. They reply, the thread starts, the pipeline updates. The lead that went cold on Tuesday doesn&rsquo;t go cold anymore.",
    trigger: "Turns inquiries into calls",
  },
];

const CONNECTIONS: { label: string; icon: typeof Heart }[] = [
  { icon: Users, label: "Smart Lists &amp; segments" },
  { icon: Zap, label: "Automation builder" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: BarChart3, label: "Pipeline &amp; reports" },
  { icon: MessageSquare, label: "Unified inbox" },
  { icon: Send, label: "Email follow-up" },
];
