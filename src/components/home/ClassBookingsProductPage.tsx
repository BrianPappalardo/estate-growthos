import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Users,
  Calendar,
  Bell,
  Video,
  MapPin,
  Clock,
  Mail,
  Zap,
  Repeat,
  Layers,
  Database,
  TrendingUp,
  UserPlus,
  ListChecks,
  MessageSquare,
  DollarSign,
  ClipboardList,
  Headphones,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { ClassBookingsMockup } from "@/components/home/class-bookings-mockup";

/**
 * Dedicated sales page for the Leadli Class Bookings product.
 *
 * Renders inside /feature/$slug when the slug is "class-bookings". The header,
 * footer, and discovery modal are owned by the route, so this component renders
 * only the <main> content.
 */
export function ClassBookingsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "class-bookings" &&
      f.slug !== "calendars" &&
      f.slug !== "automation" &&
      f.slug !== "marketing",
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
              Scheduling · Class Bookings
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Users className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Class Bookings
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Register attendees for seminars, webinars, and workshops in one flow — with
                capacity, waitlists, reminders, and follow-up that run themselves.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            A seminar is one of the highest-ROI things your firm can run — a room full of people who
            already raised their hand. But most firms run it on a separate tool that emails a
            confirmation and stops there. Leadli puts the whole event on the same platform as your
            CRM, your calendars, and your follow-up — so every registrant lands in your pipeline,
            every reminder fires on its own, and the morning after the seminar, the consult-booking
            sequence is already running.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Eventbrite",
              "Zoom webinar registration",
              "RSVP spreadsheets",
              "The “did anyone follow up?” email",
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
                Your seminar fills a room. Then the follow-up falls through the cracks.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You promote an estate planning seminar. People register on Eventbrite. The list
                lives in Eventbrite. Your leads live in your CRM. Reminders go out manually, if
                anyone remembers. The waitlist is a separate email thread. The day-of check-in is a
                clipboard at the door. And the morning after — when every attendee is warmest —
                nobody knows who showed up, who watched the replay, or who’s ready to book a
                consult.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli closes the loop. Registration lives on your site, capacity is enforced, the
                waitlist auto-promotes, reminders fire on their own, and every registrant drops into
                your CRM tagged by event. The morning after, the follow-up sequence runs to everyone
                who came — booking them into the right consult before the warmth fades.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "One flow, not five tools",
                  "Capacity & waitlist, automatic",
                  "Follow-up fires the morning after",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== EVENT DASHBOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              One board for every seminar, webinar, and workshop you run.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between your events to see capacity, waitlist, registrants, and the reminder
              and follow-up sequences firing behind each one — all inside Leadli.
            </p>
          </div>

          <ClassBookingsMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Events wired into the rest of your firm — not sitting next to it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {CLASS_CAPABILITIES.map((cap) => {
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
                  Class bookings are part of the single platform we configure around how your firm
                  runs — not a separate Eventbrite plan with its own login and its own list that
                  never makes it back to your CRM. No extra subscription, no per-attendee fee.
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

      {/* ===== DEEP DIVE: CAPACITY + FOLLOW-UP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <UserPlus className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Capacity & waitlists
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Fill the room without overbooking it — and turn a full event into more demand.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Set a cap and Leadli enforces it. Once you’re full, new registrations roll onto a
                waitlist that auto-promotes the moment a seat opens — no spreadsheet, no “sorry,
                we’re full” email you forgot to send. A full event becomes a signal, not a problem:
                it tells you to run it again.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Hard capacity limits, per event",
                  "Auto-promoting waitlist — first come, first seated",
                  "Recurring events for a monthly seminar cadence",
                  "No-shows flagged so a seat reopens for the waitlist",
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
                  Reminders & follow-up
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The follow-up runs the morning after — while everyone’s still warm.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Reminders fire on a schedule — confirmation on register, 24 hours out, one hour out
                with the join link. The morning after, Leadli tags every attendee by event, sends
                the replay to anyone who missed it, and opens the consult-booking sequence for the
                people who showed up. The warmth from a live event doesn’t survive the weekend on
                its own; this keeps it alive.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Confirmation + calendar invite, instantly",
                  "24-hour and 1-hour reminders, automatic",
                  "Replay to no-shows · consult sequence to attendees",
                  "Every registrant tagged and in your CRM by event",
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
              One builder. Three events it actually runs for you.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Same capacity, same reminders, same follow-up — whether it’s a seminar at the library,
              a webinar at lunch, or a workshop at your office.
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
              Your events know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no “is this the same person?” Every registrant is the same
              contact record your pipeline, calls, and payments run through.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {CLASS_CONNECTIONS.map((conn) => {
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
              Class bookings are just the start. Explore the rest of what's included with Leadli.
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
            Let's fill the room — and the pipeline after it.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map the events you run today, tell you honestly whether Leadli fits,
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

const CLASS_CAPABILITIES: { title: string; body: string; icon: typeof Users }[] = [
  {
    icon: Layers,
    title: "Capacity & waitlist management",
    body: "Set a hard cap and Leadli enforces it. Once you’re full, the waitlist auto-promotes the moment a seat opens — no manual juggling, no overbooking, no awkward “sorry, we’re full” emails you forgot to send.",
  },
  {
    icon: Repeat,
    title: "Recurring event support",
    body: "Run the same seminar monthly or a workshop quarterly. Set it once, and Leadli recreates the registration, reminders, and follow-up for every instance — so a recurring cadence doesn’t become a recurring chore.",
  },
  {
    icon: Bell,
    title: "Automated reminders",
    body: "Confirmation on register, 24 hours out, one hour out with the join link or address. Reminders fire on their own, by event and by channel — so nobody no-shows because they forgot, and you don’t spend the morning sending them.",
  },
  {
    icon: Database,
    title: "Registrant CRM sync",
    body: "Every registrant drops into your CRM the moment they sign up — tagged by event, by source, and by practice area. The same contact your follow-up, pipeline, and payments run through, not a separate list in a separate tool.",
  },
  {
    icon: Zap,
    title: "Post-event follow-up sequences",
    body: "The morning after, Leadli tags every attendee by event, sends the replay to anyone who missed it, and opens the consult-booking sequence for the people who showed up — while the room is still warm in their memory.",
  },
  {
    icon: Video,
    title: "Online & in-person, same flow",
    body: "A webinar with a join link, or a seminar with an address and a capacity — the same registration, the same reminders, the same follow-up. Run the event that fits the audience, not the event that fits the software.",
  },
  {
    icon: TrendingUp,
    title: "Attendance & show-rate tracking",
    body: "See who registered, who showed, and who no-showed — by event and over time. A seminar that runs at 85% show rate tells you something; one that runs at 40% tells you something else. You see both.",
  },
  {
    icon: ListChecks,
    title: "No-show recovery",
    body: "Someone didn’t show? Leadli opens a seat for the waitlist and fires a “missed you, here’s the replay” sequence — so a no-show becomes a second touch, not a lost contact.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof Users;
  trigger: string;
}[] = [
  {
    icon: MapPin,
    title: "In-person seminars",
    body: "Run an estate planning 101 at the library or your office — with capacity, a waitlist, and door-check-in that feeds straight into your CRM so you know exactly who came.",
    trigger: "Books the consult after",
  },
  {
    icon: Video,
    title: "Webinars & virtual workshops",
    body: "A lunchtime trust webinar with an auto-join link, a replay for no-shows, and a follow-up that opens the consult calendar for everyone who stayed to the end.",
    trigger: "Pre-sells the consult",
  },
  {
    icon: Headphones,
    title: "Recurring workshops",
    body: "A monthly elder law workshop on a recurring schedule — registration, reminders, and follow-up recreated for every instance so the cadence runs itself.",
    trigger: "Fills the next one",
  },
];

const CLASS_CONNECTIONS: { label: string; icon: typeof Users }[] = [
  { icon: Database, label: "CRM & contacts" },
  { icon: Zap, label: "Follow-up automations" },
  { icon: Calendar, label: "Consult calendars" },
  { icon: Mail, label: "Email & SMS" },
  { icon: MessageSquare, label: "Replay & nurture" },
  { icon: DollarSign, label: "Paid events" },
];

// Re-export icons used only by the page so tree-shaking stays predictable
void Clock;
void ClipboardList;
