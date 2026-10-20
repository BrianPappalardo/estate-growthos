import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  CalendarCheck,
  Clock,
  FileText,
  Users,
  RefreshCw,
  MessageSquare,
  Bell,
  Database,
  Briefcase,
  ScrollText,
  PenLine,
  ClipboardList,
  Zap,
  GitBranch,
  ListFilter,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { ServiceCalendarsMockup } from "@/components/home/service-calendars-mockup";

/**
 * Dedicated sales page for the Leadli Service Calendars product.
 *
 * Renders inside /feature/$slug when the slug is "service-calendars". The
 * header, footer, and discovery modal are owned by the route, so this
 * component renders only the <main> content.
 */
export function ServiceCalendarsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "service-calendars" &&
      f.slug !== "calendars" &&
      f.slug !== "class-bookings" &&
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
              Scheduling &middot; Service Calendars
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <CalendarCheck className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Service Calendars
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                A dedicated booking calendar for every service you offer &mdash; with its own intake
                form, its own buffers, and its own routing rules built right in.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Your firm doesn&rsquo;t offer one service. So why does your booking tool give you one
            generic calendar link? Leadli Service Calendars gives every service its own page, its
            own form, and its own assignment rules &mdash; so the right prospect lands on the right
            person&rsquo;s calendar, already pre-qualified, before your team picks up the phone.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Calendly with one link for everything",
              "Acuity with a service dropdown",
              "The &ldquo;let me find the right person&rdquo; email",
              "Re-scheduling because they booked the wrong consult",
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
                One calendar link for every service. So they book the wrong consult with the wrong
                person &mdash; and your team pays for it.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You run estate planning consults, trust reviews, will signings, and probate
                consultations &mdash; each one a different length, a different person, and a
                different set of questions. But your booking tool gives you one link. So someone
                books a 30-minute slot for what should be a 90-minute probate consult. Or they
                arrive at a trust review with no idea what their current trust says &mdash; because
                the form asked &ldquo;how can we help?&rdquo; and stopped there.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli Service Calendars fixes this at the root. Each service gets its own calendar
                with its own duration, its own buffers, its own intake form, and its own assignment
                rules. The estate planning form asks about assets and family. The trust review form
                asks about the trust and the trustee. The will signing form asks about witnesses and
                notary. And every booking routes to the right person &mdash; automatically &mdash;
                before anyone on your team touches it.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "A calendar for every service",
                  "Its own form, its own buffers",
                  "Routed to the right person automatically",
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

      {/* ===== SERVICE CALENDAR MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              The dashboard your firm actually needs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Switch services and see the whole configuration change with it.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Each service calendar has its own duration, its own buffers, its own intake form, and
              its own routing &mdash; and the automations that fire after booking change with it.
            </p>
          </div>

          <ServiceCalendarsMockup />
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
              Every service, dialed in &mdash; not crammed into one dropdown.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {SERVICE_CAPABILITIES.map((cap) => {
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
                  Service calendars are part of the single platform we configure around how your
                  firm runs &mdash; not a separate Calendly plan with a &ldquo;which service are you
                  interested in?&rdquo; dropdown. No extra subscription, no per-calendar fee.
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
                <FileText className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  A different form for every service
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The questions on your estate planning intake aren&rsquo;t the same as the ones on
                your probate intake. Each calendar gets its own form.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                The estate planning form asks about assets, family, and existing plans. The trust
                review form asks about trust type, the current trustee, and asset range. The will
                signing form asks about witnesses and notary. The probate consult asks about the
                deceased, the estate, and whether probate&rsquo;s been opened. Same platform,
                different form per service &mdash; every answer writes straight to the contact
                record and tags the lead by what they actually need.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Each service, its own intake form &mdash; no &ldquo;one size fits all&rdquo;",
                  "Custom fields map to the data unique to that service",
                  "Prospects arrive pre-qualified for the consult they booked",
                  "No more explaining a trust to someone who booked a will signing",
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
                <Users className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  The right person for the right service
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Route estate planning to the estate team, trust reviews to the senior partner, and
                probate to the specialist &mdash; automatically.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Round-robin estate planning consults across the estate team. Pin trust reviews to
                the senior partner. Send probate straight to the probate specialist. Co-assign will
                signings to a paralegal and an attorney at the same time. The calendar does the
                routing &mdash; not a receptionist, not a scheduling email, not a Google Calendar
                you have to check before you reply.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Round-robin, pinned, or co-assignment per service",
                  "Route by practice area, tag, or CRM data",
                  "Buffers set per service &mdash; 15 min for a signing, 45 for probate",
                  "Nobody books the wrong person for the wrong consult",
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
              Built for every service you offer
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Four calendars. Four forms. Four routing rules. One platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Same configuration, same CRM sync, same workflow triggers &mdash; whether
              they&rsquo;re booking a consult or coming in to sign.
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
                      <Clock className="w-3.5 h-3.5 text-amber-500" />
                      {uc.meta}
                    </span>
                  </div>
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
              Service calendars are just one piece. Explore the rest of what&rsquo;s included with
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
            Let&rsquo;s give every service its own calendar.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&rsquo;ll map the services you offer, tell you honestly whether Leadli
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

// =============================================================
// Data
// =============================================================

const SERVICE_CAPABILITIES: { title: string; body: string; icon: typeof CalendarCheck }[] = [
  {
    icon: CalendarCheck,
    title: "A calendar link for every service",
    body: "Estate planning, trust review, will signing, probate &mdash; each one gets its own booking page with its own URL. Not a dropdown on a generic form.",
  },
  {
    icon: FileText,
    title: "Service-specific intake forms",
    body: "The questions on your estate planning intake aren&rsquo;t the same as the ones on your probate intake. Each calendar gets its own form, asking the right questions for that service.",
  },
  {
    icon: Clock,
    title: "Custom buffers per service",
    body: "A will signing needs 15 minutes of buffer. A probate consult needs 45. Each calendar&rsquo;s buffers are set independently, so nobody shows up early or gets rushed out.",
  },
  {
    icon: Users,
    title: "Right-to-the-right-person routing",
    body: "Route estate planning consults to the estate team, trust reviews to the senior partner, probate to the specialist. The calendar does the routing &mdash; not a receptionist.",
  },
  {
    icon: RefreshCw,
    title: "Round-robin &amp; pinned assignment",
    body: "Distribute bookings evenly across your team, or pin a specific service to a specific person. Either way, the calendar handles it without a scheduling email.",
  },
  {
    icon: MessageSquare,
    title: "Instant SMS confirmations",
    body: "The moment someone books, they get an SMS with the calendar invite and the details for that service &mdash; the right checklist, the right prep, the right link.",
  },
  {
    icon: Bell,
    title: "Automated reminder sequences",
    body: "A reminder the day before, a reminder an hour before, a nudge if they haven&rsquo;t filled out the intake form &mdash; all automatic, all tied to the specific service they booked.",
  },
  {
    icon: Database,
    title: "CRM sync on booking",
    body: "Every booking creates or updates the contact, fires the right tags, and drops the prospect into the right pipeline &mdash; before anyone on your team picks up the phone.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof CalendarCheck;
  meta: string;
}[] = [
  {
    icon: Briefcase,
    title: "Estate Planning Consult",
    body: "A 60-minute consult with the estate planning team, a form that asks about assets and family, and a reminder sequence that fires the day before. Round-robin across the estate team so no one person gets overloaded.",
    meta: "60 min · round-robin",
  },
  {
    icon: ScrollText,
    title: "Trust Planning Review",
    body: "A 45-minute review pinned to the senior partner, a form that asks about the current trust and the trustee, and a pre-call video sequence that sends trust basics before they arrive.",
    meta: "45 min · pinned to partner",
  },
  {
    icon: PenLine,
    title: "Will Signing &amp; Witness",
    body: "A 30-minute slot co-assigned to the paralegal and the attorney, a form that confirms witnesses and notary, and a signing checklist sent the moment they book &mdash; so everyone shows up prepared.",
    meta: "30 min · co-assigned",
  },
];

const SERVICE_CONNECTIONS: { label: string; icon: typeof CalendarCheck }[] = [
  { icon: Database, label: "CRM &amp; contacts" },
  { icon: ClipboardList, label: "Intake forms" },
  { icon: Zap, label: "Workflow automations" },
  { icon: GitBranch, label: "Opportunity pipelines" },
  { icon: ListFilter, label: "Smart Lists &amp; tags" },
  { icon: MessageSquare, label: "SMS &amp; email" },
];

void SERVICE_CONNECTIONS;
