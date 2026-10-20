import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  LayoutDashboard,
  ShieldCheck,
  Save,
  LayoutGrid,
  Users,
  Target,
  Activity,
  Building2,
  RefreshCw,
  FileText,
  Database,
  Workflow,
  Calendar,
  Mail,
  MessageSquare,
  DollarSign,
  BarChart3,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { DashboardBuilderMockup } from "@/components/home/dashboards-mockup";

/**
 * Dedicated sales page for the Leadli Custom Dashboards product.
 *
 * Renders inside /feature/$slug when the slug is "dashboards". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function DashboardsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "dashboards" &&
      f.slug !== "reporting" &&
      f.slug !== "crm" &&
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
              Insights · Custom Dashboards
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <LayoutDashboard className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Custom Dashboards
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                The metrics that matter to your firm, laid out exactly how you want them — one view
                per person, one source of truth.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Your partner wants revenue and pipeline. Your intake coordinator wants show rate and
            follow-ups. Your paralegal wants deadlines and matter status. Leadli lets every person
            build the view that matters to them — drag the widgets they check, hide the ones they
            don't, save it, and it updates live from the same platform everyone else uses. No
            exports. No spreadsheets. No squinting at someone else's report.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Personal spreadsheets",
              "Stale team reports",
              "Month-end rollups",
              "Manual report exports",
              "The “what's my number” Slack thread",
            ].map((name) => (
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
                Six people. Six spreadsheets. Zero of them in sync.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Your partner wants revenue and pipeline. Your intake coordinator wants show rate and
                follow-up counts. Your paralegal wants deadlines and matter status. So everyone
                builds their own report — or worse, one person builds a report and everyone else
                squints at it trying to find their number. Six people, six spreadsheets, none of
                them in sync, and none of them live. You spend more time building the report than
                reading it.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli's custom dashboards close that hole. Every person builds the view that
                matters to them — drag the widgets they check to the top, hide the noise, save it as
                their own. It pulls live from the same platform your leads, calls, and payments run
                through, so the number is there before they ask for it. No exports, no
                reconciliation, no squinting.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {["One view per person", "Live, not month-end", "No spreadsheet to babysit"].map(
                  (item) => (
                    <span
                      key={item}
                      className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                    >
                      <CheckCircle2 className="w-3.5 h-3.5" />
                      {item}
                    </span>
                  ),
                )}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== DASHBOARD BUILDER MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Drag, drop, save
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Everyone gets the dashboard they actually check.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between views to see how a partner, an intake coordinator, and a paralegal each
              get a different dashboard — built from the same live data.
            </p>
          </div>

          <DashboardBuilderMockup />
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
              Dashboards built around the people who read them.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {DASHBOARD_CAPABILITIES.map((cap) => {
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
                  Custom dashboards are part of the single platform we configure around how your
                  firm runs. No extra subscription, no separate analytics login, no per-seat fee for
                  the person who just wants the numbers.
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
                <Save className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Your view, not someone else's
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Each person saves the dashboard that matters to them.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A partner opens the dashboard and sees revenue, pipeline, and average case value. An
                intake coordinator opens theirs and sees show rate, new leads, and follow-ups due. A
                paralegal sees deadlines and matter status. Nobody builds a spreadsheet. Nobody
                squints. Everyone sees their number the second the platform knows it.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Saved personal dashboards per team member",
                  "Share a view with the whole team in one click",
                  "Role-based access — the right people see the right numbers",
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
                <LayoutGrid className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Drag, drop, done</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Build your view by moving the widgets you actually check.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Drag a widget to the top, resize it, or throw it away. Define your own KPI from any
                data in the platform — show rate, cost per lead, revenue by service, whatever moves
                the needle. Save it, and it's yours every morning you log in. No developer, no
                ticket, no waiting.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Drag-and-drop widgets — rearrange in seconds",
                  "Custom metrics from any data in the platform",
                  "Set goals and watch progress update live",
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

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Your dashboard knows what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no export-and-paste. Every widget reads the same data your leads,
              calls, and payments run through — so it's always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {DASHBOARD_CONNECTIONS.map((conn) => {
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
              Custom dashboards are just the start. Explore the rest of what's included with Leadli.
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
            Let's build the dashboard you actually check.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll learn how your firm tracks results, tell you honestly whether Leadli
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
// Static data
// =============================================================

const DASHBOARD_CAPABILITIES: { title: string; body: string; icon: typeof LayoutGrid }[] = [
  {
    icon: LayoutGrid,
    title: "Drag-and-drop widgets",
    body: "Move the numbers you check to the top. Rearrange, resize, or remove them — your dashboard is yours to build, no developer required.",
  },
  {
    icon: Save,
    title: "Saved personal views",
    body: "Each person saves the view that matters to them. Your dashboard opens with your numbers — every time, no setup, no rebuilding.",
  },
  {
    icon: Users,
    title: "Shared team dashboards",
    body: "Build a view the whole team sees — revenue for the partners, show rate for intake, deadlines for the paralegals. One platform, every angle.",
  },
  {
    icon: Target,
    title: "Goal & KPI tracking",
    body: "Set the targets that matter — show rate, average case value, new clients a month — and watch your progress update in real time. No quarter-end scramble.",
  },
  {
    icon: Activity,
    title: "Custom metric widgets",
    body: "Define your own KPI from any data in the platform. Cost per lead, revenue by service, follow-up time — your number, your way, on your dashboard.",
  },
  {
    icon: Building2,
    title: "Role-based access",
    body: "A partner sees revenue and pipeline. A paralegal sees deadlines and matter status. Everyone sees the numbers that matter to their job — nothing more, nothing less.",
  },
  {
    icon: RefreshCw,
    title: "Real-time refresh",
    body: "Every widget updates the moment the underlying data does. A lead books, a consult shows up, a payment clears — your dashboard knows before you do.",
  },
  {
    icon: FileText,
    title: "Exportable views",
    body: "Need to share a view in a meeting or a partner update? Export your dashboard as a PDF or PNG in one click. No screenshots, no formatting cleanup.",
  },
];

const DASHBOARD_CONNECTIONS: { label: string; icon: typeof BarChart3 }[] = [
  { icon: Database, label: "CRM & pipeline" },
  { icon: Workflow, label: "Automations" },
  { icon: Calendar, label: "Consult bookings" },
  { icon: Mail, label: "Campaigns & email" },
  { icon: MessageSquare, label: "Calls & SMS" },
  { icon: DollarSign, label: "Revenue & payments" },
];
