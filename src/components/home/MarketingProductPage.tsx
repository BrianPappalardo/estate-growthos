import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Zap,
  Mail,
  MessageSquare,
  Users,
  Filter,
  Clock,
  Send,
  Workflow,
  Target,
  MousePointerClick,
  Bell,
  CreditCard,
  Calendar,
  Database,
  BarChart3,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Marketing Campaigns product.
 *
 * Renders inside /feature/$slug when the slug is "marketing". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function MarketingProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "marketing" &&
      f.slug !== "automation" &&
      f.slug !== "email-sms" &&
      f.slug !== "crm",
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
              Marketing · Email & SMS
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Zap className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Marketing Campaigns
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Drag-and-drop email campaigns and nurture sequences that run themselves — email and
                SMS in one builder.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Build beautiful emails and automated nurture sequences in one visual builder. Segment
            your audience, trigger sends on behavior, and watch engagement — all without a separate
            marketing tool or a single Zapier zap.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["Mailchimp", "ActiveCampaign", "Constant Contact", "Brevo"].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
              >
                {name}
              </span>
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
                Your follow-up is a manual relay race — and you're always dropping the baton.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect downloads your guide on Monday. You mean to follow up, but Tuesday gets
                busy. Wednesday you remember and draft an email in Mailchimp. Thursday you realize
                the list didn't sync from your CRM, so half the leads never got it. By Friday
                they've booked with the firm down the street that texted them within an hour.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli's marketing engine plugs that leak. One platform, one audience, one builder.
                A prospect takes an action and the nurture sequence fires itself — email, text,
                wait, branch, repeat — without anyone on your team remembering to hit send.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Email + SMS in one builder",
                  "Triggers that fire themselves",
                  "No list-sync headaches",
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

      {/* ===== NURTURE FLOW MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              A nurture sequence that runs while you're in court.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Drag a trigger, drop in the steps, and walk away. Email, SMS, wait times, and branches
              — all visual, all automatic.
            </p>
          </div>

          {/* Automation flow mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Workflow className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">New Lead Nurture · Estate Planning</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Zap className="w-3.5 h-3.5 text-amber-300" />
                  Active
                </span>
                <span className="flex items-center gap-1">
                  <BarChart3 className="w-3.5 h-3.5" />
                  1,284 enrolled
                </span>
              </div>
            </div>

            {/* Flow steps */}
            <div className="p-5 sm:p-8 bg-slate-50/60">
              <div className="flex flex-col items-stretch gap-3 max-w-2xl mx-auto">
                {/* Trigger */}
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-emerald-100 border border-emerald-200 flex items-center justify-center text-emerald-700 shrink-0">
                    <MousePointerClick className="w-4 h-4" />
                  </div>
                  <div className="flex-1 rounded-xl bg-white border border-slate-200 px-4 py-2.5 shadow-sm">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-emerald-700">
                      Trigger
                    </span>
                    <p className="text-sm font-bold text-slate-800">
                      Form submitted — “Book a Consult”
                    </p>
                  </div>
                </div>

                <div className="ml-4 w-px h-5 bg-slate-300" />

                {/* Email step */}
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-blue-100 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                    <Mail className="w-4 h-4" />
                  </div>
                  <div className="flex-1 rounded-xl bg-white border border-slate-200 px-4 py-2.5 shadow-sm">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-[#3344b8]">
                      Send email · Immediately
                    </span>
                    <p className="text-sm font-bold text-slate-800">
                      “Your next steps” + calendar link
                    </p>
                  </div>
                </div>

                <div className="ml-4 w-px h-5 bg-slate-300" />

                {/* Wait */}
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-slate-100 border border-slate-200 flex items-center justify-center text-slate-500 shrink-0">
                    <Clock className="w-4 h-4" />
                  </div>
                  <div className="flex-1 rounded-xl bg-white border border-slate-200 px-4 py-2.5 shadow-sm">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-slate-500">
                      Wait
                    </span>
                    <p className="text-sm font-bold text-slate-800">2 days</p>
                  </div>
                </div>

                <div className="ml-4 w-px h-5 bg-slate-300" />

                {/* Branch */}
                <div className="flex items-center gap-3">
                  <div className="w-9 h-9 rounded-xl bg-amber-100 border border-amber-200 flex items-center justify-center text-amber-700 shrink-0">
                    <Target className="w-4 h-4" />
                  </div>
                  <div className="flex-1 rounded-xl bg-white border border-slate-200 px-4 py-2.5 shadow-sm">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-amber-700">
                      If / else branch
                    </span>
                    <p className="text-sm font-bold text-slate-800">Booked a consult?</p>
                  </div>
                </div>

                {/* Branch outcomes */}
                <div className="grid grid-cols-2 gap-3 pl-4">
                  <div className="flex items-center gap-2 rounded-xl bg-rose-50 border border-rose-200 px-3 py-2">
                    <span className="text-[10px] font-extrabold uppercase text-rose-600">No</span>
                    <MessageSquare className="w-3.5 h-3.5 text-rose-500" />
                    <span className="text-xs font-bold text-slate-700 truncate">SMS nudge</span>
                  </div>
                  <div className="flex items-center gap-2 rounded-xl bg-emerald-50 border border-emerald-200 px-3 py-2">
                    <span className="text-[10px] font-extrabold uppercase text-emerald-600">
                      Yes
                    </span>
                    <Bell className="w-3.5 h-3.5 text-emerald-600" />
                    <span className="text-xs font-bold text-slate-700 truncate">
                      Pre-consult reminders
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">Email + SMS · 2 branches · fully automatic</span>
              <span className="flex items-center gap-1.5">
                <Send className="w-3.5 h-3.5 text-[#3344b8]" />
                No manual sends, ever
              </span>
            </div>
          </div>
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Marketing built around how your firm actually communicates.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {MARKETING_CAPABILITIES.map((cap) => {
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
                  The marketing engine is part of the single platform we configure around the way
                  your firm communicates. No extra subscription, no separate marketing tool.
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

      {/* ===== DRIP + SEGMENTATION DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Workflow className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Drip & nurture sequences
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Educate prospects on autopilot — before they ever book.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A lead downloads your estate planning guide. Over the next two weeks, they receive a
                curated sequence — what a trust is, what it costs, when to update one — each email
                timed and triggered by what they did or didn't do. They arrive at the consult
                already educated and already warmed up.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Drag-and-drop sequence builder with wait steps",
                  "Branch on any action — opened, clicked, booked, or didn't",
                  "Pause, skip, or exit a contact mid-sequence",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Filter className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Segmentation & broadcasts
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Send the right message to the right people — every time.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Slice your audience by service, stage, referral source, or any custom field. Send a
                broadcast to trust prospects who haven't booked, or a nurture sequence to leads from
                your last seminar. The list builds itself, so you're never exporting and
                re-uploading.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Segment by tag, custom field, or behavior",
                  "Broadcast to a saved Smart List in one click",
                  "A/B test subject lines and content",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Every campaign pulls from the same single source of truth.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No list exports, no sync delays. When a contact does something, the campaign knows
              instantly.
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
              Marketing campaigns are just the start. Explore the rest of what's included with
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
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let's see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll learn how you market today, tell you honestly whether we're a fit, and
            give you a clear estimate.
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

const MARKETING_CAPABILITIES: { title: string; body: string; icon: typeof Zap }[] = [
  {
    icon: Mail,
    title: "Drag-and-drop email builder",
    body: "Design beautiful emails without a designer. Drop in your branding, merge contact fields, and preview on mobile — all in one visual editor.",
  },
  {
    icon: MessageSquare,
    title: "Two-way SMS campaigns",
    body: "Send bulk SMS, schedule drip sends, or trigger texts from a workflow. Replies land in your unified inbox, tied to the contact — no separate texting tool.",
  },
  {
    icon: Workflow,
    title: "Automated nurture sequences",
    body: "Build multi-step drip campaigns with wait times, if/else branches, and behavior-based triggers. The sequence runs itself while you focus on billable work.",
  },
  {
    icon: Filter,
    title: "Audience segmentation",
    body: "Slice your list by service, stage, referral source, or any custom field. Saved Smart Lists update themselves — no more exporting and re-uploading.",
  },
  {
    icon: Send,
    title: "Broadcasts & batch sends",
    body: "Need to reach everyone at once? Send a one-time broadcast to any segment, or use drip mode to spread a large send across smaller batches.",
  },
  {
    icon: BarChart3,
    title: "Campaign analytics",
    body: "See opens, clicks, replies, and bookings per campaign — not per tool. Know which sequence turned a lead into a client without digging through reports.",
  },
  {
    icon: Target,
    title: "Trigger on any action",
    body: "A form submitted, a video watched, a booking made, an invoice paid — any event in the platform can start a campaign. No Zapier glue required.",
  },
  {
    icon: Users,
    title: "Compliance & opt-out handling",
    body: "Built-in opt-out management, consent tracking, and A2P 10DLC registration for SMS. You stay compliant without a separate tool or a spreadsheet of unsubscribes.",
  },
];

const CONNECTIONS: { label: string; icon: typeof Zap }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Calendar, label: "Calendars" },
  { icon: Workflow, label: "Automations" },
  { icon: MessageSquare, label: "Unified inbox" },
  { icon: CreditCard, label: "Payments" },
  { icon: BarChart3, label: "Reporting" },
];
