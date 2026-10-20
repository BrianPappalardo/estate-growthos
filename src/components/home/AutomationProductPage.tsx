import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Workflow,
  Zap,
  Clock,
  Split,
  Bell,
  Send,
  Webhook,
  Target,
  Database,
  Calendar,
  MessageSquare,
  CreditCard,
  BarChart3,
  Mail,
  UserCheck,
  MousePointerClick,
  Layers,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Automation & Workflows product.
 *
 * Renders inside /feature/$slug when the slug is "automation". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function AutomationProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "automation" &&
      f.slug !== "crm" &&
      f.slug !== "calendars" &&
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
              Operations · Workflows &amp; Automation
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Workflow className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Automation &amp; Workflows
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Trigger-based workflows that respond the instant a prospect takes action — no Zapier
                zaps or manual glue required.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            When someone submits a form, books a call, watches an educational video, or pays an
            invoice, Leadli fires the exact sequence you configured. Intelligent branching,
            multi-step actions, and automated follow-ups run 24/7 so nothing falls through the
            cracks.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["Zapier", "Make (Integromat)", "Manual Follow-up", "Custom API Glue"].map((name) => (
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
                Your leads wait hours for a response — while your team is buried in manual tasks.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                When someone reaches out to your firm on Tuesday evening, they expect immediate
                confirmation. Instead, their submission sits in an inbox until Wednesday morning. By
                the time your assistant manually copies their name into your practice management
                tool and drafts a welcome email, the prospect has already booked a consult with a
                rival.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli&apos;s workflow engine eliminates those delays. The second an action occurs,
                Leadli updates the contact, moves the deal stage, triggers an instant SMS nudge, and
                notifies your team — automatically, error-free, and in under 10 seconds.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Instant 10-second response time",
                  "Conditional branching logic",
                  "Zero manual retyping",
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

      {/* ===== VISUAL WORKFLOW BUILDER MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Visual Canvas
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Build smart, automated pathways in minutes.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Combine triggers, if/else conditions, delays, and multi-channel actions on a clean
              visual canvas.
            </p>
          </div>

          {/* Workflow Canvas Mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Workflow className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">
                  Estate Planning Intake &amp; Qualification Automation
                </span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <Zap className="w-3.5 h-3.5" />
                  Published
                </span>
                <span className="hidden sm:inline-flex items-center gap-1">
                  <BarChart3 className="w-3.5 h-3.5" />
                  3,412 Executions
                </span>
              </div>
            </div>

            {/* Visual Builder Diagram */}
            <div className="p-6 sm:p-10 bg-slate-50/70 border-b border-slate-200">
              <div className="max-w-2xl mx-auto flex flex-col items-center gap-3">
                {/* Step 1: Trigger */}
                <div className="w-full rounded-2xl bg-white border-2 border-amber-400/80 p-4 shadow-sm flex items-center gap-4">
                  <div className="w-10 h-10 rounded-xl bg-amber-100 text-amber-800 flex items-center justify-center shrink-0">
                    <MousePointerClick className="w-5 h-5" />
                  </div>
                  <div>
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-amber-700">
                      1. Trigger
                    </div>
                    <div className="text-sm font-extrabold text-slate-900">
                      Inquiry Form Submitted on Website
                    </div>
                  </div>
                </div>

                <div className="w-0.5 h-6 bg-slate-300" />

                {/* Step 2: Create Record + Move Pipeline */}
                <div className="w-full rounded-2xl bg-white border border-slate-200 p-4 shadow-sm flex items-center gap-4">
                  <div className="w-10 h-10 rounded-xl bg-blue-100 text-[#3344b8] flex items-center justify-center shrink-0">
                    <Layers className="w-5 h-5" />
                  </div>
                  <div>
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-[#3344b8]">
                      2. CRM Action
                    </div>
                    <div className="text-sm font-extrabold text-slate-900">
                      Create Opportunity in &ldquo;New Leads&rdquo; Pipeline &amp; Tag &ldquo;Estate
                      Prospect&rdquo;
                    </div>
                  </div>
                </div>

                <div className="w-0.5 h-6 bg-slate-300" />

                {/* Step 3: Wait / Delay */}
                <div className="w-full rounded-2xl bg-white border border-slate-200 p-4 shadow-sm flex items-center gap-4">
                  <div className="w-10 h-10 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0">
                    <Clock className="w-5 h-5" />
                  </div>
                  <div>
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-500">
                      3. Wait Step
                    </div>
                    <div className="text-sm font-extrabold text-slate-900">
                      Wait 5 minutes (allows instant personal feel)
                    </div>
                  </div>
                </div>

                <div className="w-0.5 h-6 bg-slate-300" />

                {/* Step 4: Condition */}
                <div className="w-full rounded-2xl bg-white border-2 border-[#3344b8]/40 p-4 shadow-sm flex items-center gap-4">
                  <div className="w-10 h-10 rounded-xl bg-blue-50 text-[#3344b8] flex items-center justify-center shrink-0">
                    <Split className="w-5 h-5" />
                  </div>
                  <div>
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-[#3344b8]">
                      4. If / Else Condition
                    </div>
                    <div className="text-sm font-extrabold text-slate-900">
                      Has the prospect already selected a calendar time?
                    </div>
                  </div>
                </div>

                {/* Branch split */}
                <div className="w-full grid grid-cols-1 sm:grid-cols-2 gap-4 pt-2">
                  <div className="rounded-2xl bg-emerald-50/80 border border-emerald-200 p-4 space-y-2">
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-emerald-800 flex items-center gap-1.5">
                      <CheckCircle2 className="w-4 h-4 text-emerald-600" />
                      YES · Booking Confirmed
                    </div>
                    <p className="text-xs text-slate-700 leading-snug font-medium">
                      Send SMS with prep video link + trigger 24h &amp; 1h pre-consult calendar
                      reminders.
                    </p>
                  </div>

                  <div className="rounded-2xl bg-amber-50/80 border border-amber-200 p-4 space-y-2">
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-amber-900 flex items-center gap-1.5">
                      <Clock className="w-4 h-4 text-amber-700" />
                      NO · Pending Booking
                    </div>
                    <p className="text-xs text-slate-700 leading-snug font-medium">
                      Send 2-way SMS nudge with direct booking link + notify intake team for phone
                      outreach.
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <div className="px-5 py-3 bg-white flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                4-step automated sequence with conditional branching &amp; SMS actions
              </span>
              <span className="flex items-center gap-1.5 font-bold text-[#3344b8]">
                <Zap className="w-3.5 h-3.5" />
                Zero monthly Zapier tasks consumed
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
              Enterprise automation power without code or complex setup.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {AUTOMATION_CAPABILITIES.map((cap) => {
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
                  The entire workflow engine is built right into Leadli. You get unlimited workflow
                  runs and executions without paying extra per task or action.
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

      {/* ===== DEEP DIVE: NO ZAPIER FEES & NATIVE SYNC ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Zap className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Eliminate Zapier Tax
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Stop paying $100+/mo just to move data between your own tools.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Most agencies tape together a CRM, an email tool, a calendar, and a texting service
                with dozens of Zapier zaps. When a Zap breaks or hits a rate limit, leads get lost
                and you spend hours debugging errors. Leadli runs all these components natively, so
                automations fire internally without third-party middleware.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "No monthly Zapier or task limit bills",
                  "Zero data latency — instant internal execution",
                  "No broken webhooks or disconnected API keys",
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
                <Split className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Smart Decision Branching
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Workflows that adapt dynamically to contact behavior.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Branch based on tags, custom form responses, appointment status, video watch time,
                or payment state. If a client signs their engagement letter, stop the sales
                follow-up sequence instantly and automatically launch their onboarding flow.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Multi-branch if/else decision trees",
                  "Goal exit conditions to prevent unnecessary texts",
                  "Update custom fields & tags on the fly",
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
              Connected across the stack
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Workflows interact with every part of your Leadli account.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              One single engine powering your communication, scheduling, CRM, and payments.
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
              Automation is just one piece. Explore the rest of what&apos;s included with Leadli.
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
            30 minutes. We&apos;ll learn where your team spends manual time, tell you honestly
            whether we&apos;re a fit, and give you a clear estimate.
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

const AUTOMATION_CAPABILITIES: { title: string; body: string; icon: typeof Workflow }[] = [
  {
    icon: MousePointerClick,
    title: "Event & action triggers",
    body: "Launch workflows on form fills, video views, appointment bookings, pipeline stage changes, tags, incoming messages, or payment events.",
  },
  {
    icon: Split,
    title: "If/Else conditional branching",
    body: "Create smart decision trees that route contacts based on custom field values, tag status, past behavior, or booking history.",
  },
  {
    icon: Send,
    title: "Multi-channel communications",
    body: "Send two-way SMS, email sequences, ringless voicemails, or internal notifications seamlessly within the same workflow.",
  },
  {
    icon: Clock,
    title: "Time delays & wait steps",
    body: "Add precise delays between steps (e.g. 'wait 15 minutes', 'wait until 9:00 AM on a weekday') to maintain a human, personal feel.",
  },
  {
    icon: Bell,
    title: "Internal team alerts & tasks",
    body: "Assign tasks to team members, send internal SMS/email alerts to staff, or ping your intake coordinator the second a warm lead needs a call.",
  },
  {
    icon: Target,
    title: "Goal events & exit conditions",
    body: "Automatically pull contacts out of a nurture workflow as soon as they complete the target goal — like booking a call or signing a contract.",
  },
  {
    icon: Webhook,
    title: "Webhooks & external connectors",
    body: "Pass data outbound to practice management systems, external APIs, or Zapier when specialized custom integrations are required.",
  },
  {
    icon: UserCheck,
    title: "Contact & pipeline updates",
    body: "Update contact details, add/remove tags, change deal values, and reassign ownership automatically as prospects progress.",
  },
];

const CONNECTIONS: { label: string; icon: typeof Workflow }[] = [
  { icon: Database, label: "CRM & Pipelines" },
  { icon: Calendar, label: "Calendars & Booking" },
  { icon: Mail, label: "Email Campaigns" },
  { icon: MessageSquare, label: "Unified Inbox" },
  { icon: CreditCard, label: "Payments" },
  { icon: BarChart3, label: "Reporting" },
];
