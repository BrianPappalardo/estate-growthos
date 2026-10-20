import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Calendar,
  CalendarClock,
  Users,
  Bell,
  RefreshCw,
  Globe2,
  Clock,
  Repeat,
  MessageSquare,
  Workflow,
  CreditCard,
  Mail,
  PhoneCall,
  Tag,
  UserCheck,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Calendars & Booking product.
 *
 * Renders inside /feature/$slug when the slug is "calendars". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function CalendarProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "calendars" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "inbox" &&
      f.slug !== "class-bookings",
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
              Scheduling · Calendars
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Calendar className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Calendars &amp; Booking
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Round-robin scheduling that books the right consult to the right person —
                automatically.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Offer a calendar link for every service you provide. Leadli handles round-robin
            assignment, intake forms, buffer times, and SMS confirmations so the right prospect
            lands on the right person&apos;s calendar without a single email thread.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["Calendly", "Acuity", "Chili Piper", "ScheduleOnce"].map((name) => (
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
                You&apos;re playing calendar Tetris across four inboxes — and half your consults
                still no-show.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect wants a consult. You email back and forth three times to find a time that
                works. You paste a Calendly link, then re-type the booking into your CRM, then copy
                their intake answers into a separate doc, then remember to send a reminder from your
                texting app. When they no-show, nobody notices until fifteen minutes after the slot
                is gone.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli calendars plug that hole. One booking link per service, the intake form baked
                right in, and reminders that fire themselves. The right consult lands with the right
                person, and the whole thing shows up on the contact record the moment it&apos;s
                booked.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "One link per service",
                  "Intake form built into the booking",
                  "Reminders that send themselves",
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

      {/* ===== WEEKLY CALENDAR MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Always in sync
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every consult, booked in the right place — without the back and forth.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Round-robin routes consults across your team. Buffer times protect your mornings.
              Reminders go out automatically.
            </p>
          </div>

          {/* Weekly calendar mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <CalendarClock className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Estate Planning · This Week</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Users className="w-3.5 h-3.5" />
                  Round-robin
                </span>
                <span className="flex items-center gap-1">
                  <Globe2 className="w-3.5 h-3.5" />
                  CT
                </span>
              </div>
            </div>

            {/* Day headers */}
            <div className="grid grid-cols-6 border-b border-slate-200 bg-slate-50/70 text-xs font-extrabold uppercase tracking-wider text-slate-600">
              <div className="px-3 py-2" />
              {WEEK_DAYS.map((d) => (
                <div key={d.label} className="px-3 py-2 text-center">
                  <span className="hidden sm:inline">{d.label}</span>
                  <span className="sm:hidden">{d.short}</span>
                </div>
              ))}
            </div>

            {/* Time rows */}
            <div className="divide-y divide-slate-100">
              {WEEK_SLOTS.map((row) => (
                <div key={row.time} className="grid grid-cols-6 min-h-[3.5rem]">
                  <div className="px-3 py-2 text-[11px] font-bold text-slate-400 border-r border-slate-100">
                    {row.time}
                  </div>
                  {WEEK_DAYS.map((d) => {
                    const appt = row.appointments.find((a) => a.day === d.key);
                    return (
                      <div
                        key={d.key}
                        className="px-1.5 py-1.5 border-r border-slate-100 last:border-r-0"
                      >
                        {appt ? (
                          <div
                            className={`rounded-lg px-2 py-1.5 text-[10px] sm:text-xs font-bold border ${appt.tone} h-full`}
                          >
                            <span className="block leading-tight">{appt.title}</span>
                            <span className="mt-0.5 block text-[9px] font-semibold opacity-75">
                              {appt.person}
                            </span>
                          </div>
                        ) : null}
                      </div>
                    );
                  })}
                </div>
              ))}
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                6 consults booked · 2 service types · 3 attorneys
              </span>
              <span className="flex items-center gap-1.5">
                <Bell className="w-3.5 h-3.5 text-amber-600" />
                SMS &amp; email reminders handled
              </span>
            </div>
          </div>
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
              Scheduling built around how your firm actually books.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {CALENDAR_CAPABILITIES.map((cap) => {
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
                  Calendars are part of the single platform we configure around the way your firm
                  books. No extra subscription, no separate scheduling tool.
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

      {/* ===== ROUND-ROBIN + INTAKE DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Repeat className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Round-robin routing
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Route the right consult to the right person — automatically.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Round-robin hands the next booking to whichever attorney is available, so no one
                partner drowns in consults while the others sit idle. Need the senior partner on
                every trust consult? Set a routing rule and it&apos;s handled. A partner goes on
                vacation? Their calendar closes itself.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Round-robin, collective, or single-user calendars",
                  "Routing rules by service, team, or custom field",
                  "Availability that respects real block-off time",
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
                <UserCheck className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Intake at the booking
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Collect the right details before they ever pick a time.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Attach an intake form to each calendar link so you know the household size, the
                assets, and the planned trust type before the call starts. Their answers land right
                on the contact record, and a custom field can trigger the right follow-up — no
                retyping, no separate form tool.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "A different intake form for every service",
                  "Answers auto-filed to the CRM record",
                  "Trigger automations from any answer",
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
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every booking lands in the right place automatically.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no copy-paste. When a slot is booked, the whole platform knows.
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
              Calendars &amp; booking are just the start. Explore the rest of what&apos;s included
              with Leadli.
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
            Let&apos;s see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll learn how you book today, tell you honestly whether we&apos;re a
            fit, and give you a clear estimate.
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

const WEEK_DAYS = [
  { key: "mon", label: "Monday", short: "Mon" },
  { key: "tue", label: "Tuesday", short: "Tue" },
  { key: "wed", label: "Wednesday", short: "Wed" },
  { key: "thu", label: "Thursday", short: "Thu" },
  { key: "fri", label: "Friday", short: "Fri" },
];

type DayKey = "mon" | "tue" | "wed" | "thu" | "fri";

interface Appt {
  day: DayKey;
  title: string;
  person: string;
  tone: string;
}

const TONES = {
  blue: "bg-blue-50 text-[#3344b8] border-blue-200",
  amber: "bg-amber-50 text-amber-800 border-amber-200",
  emerald: "bg-emerald-50 text-emerald-700 border-emerald-200",
  slate: "bg-slate-100 text-slate-600 border-slate-200",
} as const;

const WEEK_SLOTS: { time: string; appointments: Appt[] }[] = [
  {
    time: "9:00",
    appointments: [
      { day: "mon", title: "Estate Plan Consult", person: "M. Alvarez", tone: TONES.blue },
      { day: "fri", title: "Estate Plan Consult", person: "T. Reyes", tone: TONES.blue },
    ],
  },
  {
    time: "10:00",
    appointments: [{ day: "tue", title: "Trust Review", person: "R. Singh", tone: TONES.amber }],
  },
  {
    time: "11:00",
    appointments: [
      { day: "mon", title: "Discovery Call", person: "J. Whitman", tone: TONES.slate },
      { day: "thu", title: "Discovery Call", person: "K. Donovan", tone: TONES.emerald },
    ],
  },
  {
    time: "1:00",
    appointments: [
      { day: "wed", title: "Will + Beneficiary Q&A", person: "L. Park", tone: TONES.blue },
    ],
  },
  {
    time: "2:30",
    appointments: [{ day: "thu", title: "Trust Review", person: "D. Okafor", tone: TONES.amber }],
  },
];

const CALENDAR_CAPABILITIES: { title: string; body: string; icon: typeof Calendar }[] = [
  {
    icon: Tag,
    title: "A link for every service",
    body: "One booking link per offering — estate plan consult, trust review, beneficiary Q&A — so prospects pick the right consult the first time, not the wrong one.",
  },
  {
    icon: Users,
    title: "Round-robin & team routing",
    body: "Distribute consults across your attorneys automatically, or route a specific service to a specific partner. No one drowns while others sit idle.",
  },
  {
    icon: UserCheck,
    title: "Intake forms at booking",
    body: "Collect household size, assets, and trust type before the call. Answers land on the contact record and can trigger the right follow-up — no retyping.",
  },
  {
    icon: Bell,
    title: "Automated reminders",
    body: "SMS and email confirmations, reminders, and follow-ups fire themselves. No-shows drop, and you stop chasing consults that already slipped.",
  },
  {
    icon: RefreshCw,
    title: "Reschedule & cancel links",
    body: "Prospects reschedule themselves without a phone call. The slot reopens, the calendar updates, and the contact record reflects the change — instantly.",
  },
  {
    icon: Clock,
    title: "Buffer times & block-off",
    body: "Protect your mornings and your prep time with buffers before and after each slot. A partner goes on vacation? Their calendar closes itself.",
  },
  {
    icon: Globe2,
    title: "Timezone-smart & embeddable",
    body: "Detects each prospect's timezone so nobody shows up an hour off. Embed a link on your site, in an email, or in a text — anywhere.",
  },
  {
    icon: CalendarClock,
    title: "Synced to Google & Outlook",
    body: "Two-way sync keeps your real calendar honest. Booked consults show up on your phone; blocked time disappears from your booking link.",
  },
];

const CONNECTIONS: { label: string; icon: typeof Calendar }[] = [
  { icon: MessageSquare, label: "Unified inbox" },
  { icon: Workflow, label: "Automations" },
  { icon: Mail, label: "Email & SMS" },
  { icon: CreditCard, label: "Payments" },
  { icon: PhoneCall, label: "Power dialer" },
  { icon: Tag, label: "CRM records" },
];
