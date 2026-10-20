import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  BarChart3,
  ShieldCheck,
  Zap,
  Clock,
  TrendingUp,
  TrendingDown,
  Activity,
  RefreshCw,
  LayoutDashboard,
  Database,
  Workflow,
  Calendar,
  Mail,
  MessageSquare,
  DollarSign,
  Users,
  Phone,
  Target,
  AlertCircle,
  Eye,
  ArrowUpRight,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Reporting + Analytics product.
 *
 * Renders inside /feature/$slug when the slug is "reporting". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function ReportingProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "reporting" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "dashboards",
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
              Insights · Reporting & Analytics
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <BarChart3 className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Reporting & Analytics
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                See exactly where leads leak and where revenue lands — in real time, from one
                dashboard.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            You know your show rate is bad because someone mentioned it at a partner meeting. You
            know your average case value is slipping because your bank deposits don't match your
            caseload. But nobody has time to pull the numbers, reconcile four tools, and build a
            spreadsheet that's outdated the moment it's saved. Leadli pulls it all from the same
            platform — pipeline, show rates, campaign ROI, and revenue — so the numbers are already
            waiting for you, every morning.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Spreadsheets",
              "Google Analytics tabs",
              "Manual weekly reports",
              "CRM export cleanup",
              "Stale month-end rollups",
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
                You can't plug a hole you can't see — and you can't see anything in four tools that
                don't talk.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Your leads live in the CRM. Your show rate is a calendar export. Your ad spend is in
                a Facebook dashboard. Your revenue is in your practice management software. To
                answer one question — “where is my money leaking?” — someone has to export four
                reports, paste them into a spreadsheet, and massage the dates until the numbers line
                up. By the time it's done, it's last month's news.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli closes that hole. Every metric lives in the same platform your leads, calls,
                and payments run through — so show rate, pipeline value, cost per lead, and revenue
                update in real time. No exports. No reconciliation. No guessing. The number you want
                is on the dashboard before you even think to ask for it.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Real-time, not month-end",
                  "One source of truth",
                  "No spreadsheet to babysit",
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

      {/* ===== ANALYTICS DASHBOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Insights on autopilot
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              The dashboard that tells you where the money's leaking — before it's gone.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Show rates, pipeline value, cost per lead, and revenue — pulled live from the same
              platform your firm runs on. No exports, no copy-paste, no stale numbers.
            </p>
          </div>

          {/* Analytics dashboard mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <BarChart3 className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Firm Dashboard · yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <RefreshCw className="w-3.5 h-3.5 text-emerald-400" />
                  Live · updated just now
                </span>
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  One source of truth
                </span>
              </div>
            </div>

            <div className="p-5 sm:p-6 bg-slate-50/60">
              {/* KPI row */}
              <div className="grid grid-cols-2 lg:grid-cols-4 gap-4 mb-6">
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Consult Show Rate
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">87%</span>
                    <span className="flex items-center gap-0.5 text-[10px] font-bold text-emerald-600 pb-1.5">
                      <ArrowUpRight className="w-3 h-3" />
                      +37%
                    </span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <TrendingUp className="w-3.5 h-3.5 text-emerald-600" />
                    vs industry avg 45%
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Avg Case Value
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">$4,850</span>
                    <span className="flex items-center gap-0.5 text-[10px] font-bold text-emerald-600 pb-1.5">
                      <ArrowUpRight className="w-3 h-3" />
                      +14%
                    </span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <DollarSign className="w-3.5 h-3.5 text-[#3344b8]" />
                    Trusts vs $800 wills
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Pipeline Value
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">$68k</span>
                    <span className="text-xs text-[#3344b8] font-bold pb-1.5">open</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Activity className="w-3.5 h-3.5 text-[#3344b8]" />
                    14 leads in flight
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Cost Per Lead
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">$42</span>
                    <span className="flex items-center gap-0.5 text-[10px] font-bold text-emerald-600 pb-1.5">
                      <TrendingDown className="w-3 h-3" />
                      -22%
                    </span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Target className="w-3.5 h-3.5 text-amber-600" />
                    Pre-sold leads cost less
                  </div>
                </div>
              </div>

              {/* Funnel breakdown */}
              <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
                <div className="rounded-2xl bg-white border border-slate-200 p-5">
                  <div className="flex items-center justify-between mb-4">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
                      Intake Funnel
                    </span>
                    <span className="flex items-center gap-1.5 text-[10px] font-bold text-emerald-600">
                      <Eye className="w-3.5 h-3.5" />
                      This month
                    </span>
                  </div>
                  <div className="space-y-2.5">
                    {FUNNEL.map((stage) => (
                      <div key={stage.label}>
                        <div className="flex items-center justify-between text-xs mb-1">
                          <span className="font-bold text-slate-700">{stage.label}</span>
                          <span className="text-slate-500 font-medium">
                            {stage.count} · {stage.pct}%
                          </span>
                        </div>
                        <div className="h-2 rounded-full bg-slate-100 overflow-hidden">
                          <div
                            className="h-full rounded-full bg-gradient-to-r from-[#3344b8] to-[#5b67d8]"
                            style={{ width: `${stage.pct}%` }}
                          />
                        </div>
                      </div>
                    ))}
                  </div>
                </div>

                <div className="rounded-2xl bg-white border border-slate-200 p-5">
                  <div className="flex items-center justify-between mb-4">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
                      Where Leads Find You
                    </span>
                    <span className="flex items-center gap-1.5 text-[10px] font-bold text-[#3344b8]">
                      <Activity className="w-3.5 h-3.5" />
                      Attribution live
                    </span>
                  </div>
                  <div className="divide-y divide-slate-100">
                    {SOURCES.map((src) => (
                      <div key={src.label} className="flex items-center justify-between py-2.5">
                        <span className="flex items-center gap-2 text-xs font-bold text-slate-700">
                          <src.icon className="w-4 h-4 text-[#3344b8]" />
                          {src.label}
                        </span>
                        <div className="flex items-center gap-3">
                          <span className="text-xs text-slate-500 font-medium">{src.count}</span>
                          <span className="text-xs font-bold text-emerald-600">+{src.conv}%</span>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>
              </div>

              {/* Leak callout */}
              <div className="mt-5 flex flex-wrap items-center gap-2 text-[11px] font-bold">
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-rose-50 text-rose-700 border border-rose-200">
                  <AlertCircle className="w-3.5 h-3.5" />
                  Leak detected: form → call drop-off
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
                  <Zap className="w-3.5 h-3.5" />
                  Automation fires follow-up
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-emerald-50 text-emerald-700 border border-emerald-200">
                  <TrendingUp className="w-3.5 h-3.5" />
                  Show rate recovers
                </span>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">4 KPIs · 1 funnel · 0 spreadsheets</span>
              <span className="flex items-center gap-1.5">
                <Clock className="w-3.5 h-3.5 text-emerald-600" />
                Updated in real time, not month-end
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
              Reporting that's wired into the work your firm actually does.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {REPORTING_CAPABILITIES.map((cap) => {
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
                  Reporting & analytics are part of the single platform we configure around how your
                  firm runs. No extra subscription, no separate analytics login, no per-seat fee for
                  the partner who only wants the numbers.
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

      {/* ===== DEEP DIVE: REAL-TIME & CUSTOM DASHBOARDS ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <RefreshCw className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Real-time, not month-end
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The number you want is on the dashboard before you ask for it.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Most firms run on month-end rollups — a snapshot of last month, delivered three
                weeks late. By the time you see a drop-off, the leads that caused it are long gone.
                Leadli pulls every metric from the platform your firm runs on, in real time. Show
                rate dips on a Tuesday and you know about it on Tuesday.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Live KPIs — show rate, pipeline, revenue, cost per lead",
                  "No exports to reconcile, no dates to line up",
                  "Trend arrows so you spot the leak the day it starts",
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
                <LayoutDashboard className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Built around your numbers
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The metrics that matter to your firm — not the ones a template decided on.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Drag the widgets you actually check to the top, hide the noise, and save the view. A
                partner sees revenue and pipeline. An intake coordinator sees show rate and
                follow-up. You define what “matters” means — we don't bend your reporting around
                someone else's idea of it.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Drag-and-drop widgets — build your own view",
                  "Saved personal dashboards per team member",
                  "Custom metrics from anywhere in the platform",
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

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Your numbers know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no export-and-paste. The dashboard reads the same data your leads,
              calls, and payments run through — so it's always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {REPORTING_CONNECTIONS.map((conn) => {
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
              Reporting & analytics are just the start. Explore the rest of what's included with
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
            Let's see where the money's leaking.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map how your firm tracks results today, tell you honestly whether
            Leadli fits, and give you a clear estimate.
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

const FUNNEL: { label: string; count: number; pct: number }[] = [
  { label: "Form filled", count: 120, pct: 100 },
  { label: "Booked a consult", count: 86, pct: 72 },
  { label: "Showed up", count: 75, pct: 62 },
  { label: "Signed engagement", count: 41, pct: 34 },
];

const SOURCES: { label: string; count: number; conv: number; icon: typeof Users }[] = [
  { label: "Organic search", count: 52, conv: 38, icon: Target },
  { label: "Paid ads", count: 31, conv: 19, icon: Activity },
  { label: "Referrals", count: 18, conv: 52, icon: Users },
  { label: "Social", count: 19, conv: 11, icon: MessageSquare },
];

const REPORTING_CAPABILITIES: { title: string; body: string; icon: typeof BarChart3 }[] = [
  {
    icon: BarChart3,
    title: "Real-time dashboards",
    body: "Show rate, pipeline value, cost per lead, and revenue — pulled live from the platform your firm runs on. No exports, no reconciliation, no month-end snapshots that are already stale.",
  },
  {
    icon: LayoutDashboard,
    title: "Custom dashboards",
    body: "Drag the widgets you actually check to the top, hide the noise, and save the view. Build one for a partner, one for an intake coordinator — everyone sees what matters to them.",
  },
  {
    icon: Activity,
    title: "Pipeline & revenue reporting",
    body: "Track every lead from first inquiry to signed engagement — where they came in, where they stalled, and what they were worth when they closed. The funnel, visualized without a spreadsheet.",
  },
  {
    icon: Target,
    title: "Campaign performance tracking",
    body: "See exactly which campaigns turn into consults and which turn into revenue — not just clicks. Know your cost per lead and cost per signed client by source, so you spend where it works.",
  },
  {
    icon: TrendingDown,
    title: "Leak detection",
    body: "Leadli flags the drop-off the day it starts — a form-to-call gap, a no-show spike, a stalled stage — so you fix the hole before a month's worth of leads slips through it.",
  },
  {
    icon: TrendingUp,
    title: "Goal & KPI tracking",
    body: "Set the targets that matter — show rate, average case value, new clients a month — and watch your progress update in real time. No quarter-end scramble to see how you did.",
  },
  {
    icon: Eye,
    title: "Lead attribution",
    body: "Know where every lead came from and what it was worth — down to the campaign, the ad, and the keyword. Stop paying for traffic that never becomes a client and double down on what does.",
  },
  {
    icon: RefreshCw,
    title: "Scheduled reporting",
    body: "Want a weekly digest in your inbox Monday morning? A monthly rollup for the partners? Set it once and forget it — the report builds itself and lands where you want it, every time.",
  },
];

const REPORTING_CONNECTIONS: { label: string; icon: typeof BarChart3 }[] = [
  { icon: Database, label: "CRM & pipeline" },
  { icon: Workflow, label: "Automations" },
  { icon: Calendar, label: "Consult bookings" },
  { icon: Mail, label: "Campaigns & email" },
  { icon: MessageSquare, label: "Calls & SMS" },
  { icon: DollarSign, label: "Revenue & payments" },
];
