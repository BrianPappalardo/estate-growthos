import { useState } from "react";
import {
  LayoutDashboard,
  ShieldCheck,
  RefreshCw,
  TrendingUp,
  TrendingDown,
  Activity,
  DollarSign,
  Users,
  Clock,
  Zap,
  Eye,
  Target,
  FileText,
  Calendar,
  ArrowUpRight,
  Plus,
  GripVertical,
  Building2,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type RoleId = "partner" | "intake" | "paralegal";

const ROLES: { id: RoleId; label: string; icon: typeof Building2 }[] = [
  { id: "partner", label: "Partner View", icon: Building2 },
  { id: "intake", label: "Intake Coordinator", icon: Users },
  { id: "paralegal", label: "Paralegal", icon: FileText },
];

type Kpi = {
  label: string;
  value: string;
  sub: string;
  icon: typeof DollarSign;
  trend?: string;
  trendUp?: boolean;
  trendDown?: boolean;
};

type Widget = {
  title: string;
  badge: string;
  rows: { label: string; pct: number; value: string }[];
};

type RoleView = {
  kpis: Kpi[];
  widget1: Widget;
  widget2: Widget;
};

// =============================================================
// Per-role view data
// =============================================================

const ROLE_VIEWS: Record<RoleId, RoleView> = {
  partner: {
    kpis: [
      {
        label: "Revenue MTD",
        value: "$48,200",
        sub: "+12% vs last month",
        icon: DollarSign,
        trend: "+12%",
        trendUp: true,
      },
      { label: "Pipeline Value", value: "$68,400", sub: "14 leads in flight", icon: Activity },
      {
        label: "Avg Case Value",
        value: "$4,850",
        sub: "Trusts vs $800 wills",
        icon: TrendingUp,
        trend: "+14%",
        trendUp: true,
      },
      {
        label: "Show Rate",
        value: "87%",
        sub: "vs 45% industry avg",
        icon: Eye,
        trend: "+37%",
        trendUp: true,
      },
    ],
    widget1: {
      title: "Revenue by week",
      badge: "This month",
      rows: [
        { label: "Wk 1", pct: 48, value: "$11.5k" },
        { label: "Wk 2", pct: 65, value: "$15.6k" },
        { label: "Wk 3", pct: 38, value: "$9.1k" },
        { label: "Wk 4", pct: 88, value: "$12k" },
      ],
    },
    widget2: {
      title: "Pipeline by stage",
      badge: "14 open",
      rows: [
        { label: "Inquiry", pct: 100, value: "14" },
        { label: "Consult booked", pct: 72, value: "10" },
        { label: "Shown up", pct: 57, value: "8" },
        { label: "Engagement sent", pct: 28, value: "4" },
      ],
    },
  },
  intake: {
    kpis: [
      {
        label: "Show Rate",
        value: "87%",
        sub: "+37% vs industry",
        icon: Eye,
        trend: "+37%",
        trendUp: true,
      },
      { label: "New Leads Today", value: "12", sub: "4 from ads, 8 organic", icon: Users },
      {
        label: "Follow-ups Due",
        value: "8",
        sub: "2 overdue",
        icon: Clock,
        trend: "2 overdue",
        trendDown: true,
      },
      {
        label: "Avg Response",
        value: "14m",
        sub: "down from 3.2 hrs",
        icon: Zap,
        trend: "-78%",
        trendUp: true,
      },
    ],
    widget1: {
      title: "Leads by source",
      badge: "This week",
      rows: [
        { label: "Organic search", pct: 88, value: "52" },
        { label: "Paid ads", pct: 53, value: "31" },
        { label: "Referrals", pct: 30, value: "18" },
        { label: "Social", pct: 33, value: "19" },
      ],
    },
    widget2: {
      title: "Follow-up queue",
      badge: "8 due",
      rows: [
        { label: "Due today", pct: 75, value: "6" },
        { label: "Overdue", pct: 25, value: "2" },
        { label: "Scheduled", pct: 50, value: "4" },
        { label: "Completed", pct: 90, value: "47" },
      ],
    },
  },
  paralegal: {
    kpis: [
      { label: "Active Matters", value: "34", sub: "6 new this week", icon: FileText },
      {
        label: "Docs to Review",
        value: "7",
        sub: "3 trust packages",
        icon: Activity,
        trend: "3 trust",
        trendDown: true,
      },
      {
        label: "Deadlines This Week",
        value: "3",
        sub: "2 in 48 hours",
        icon: Calendar,
        trend: "2 due",
        trendDown: true,
      },
      {
        label: "Billable Hours",
        value: "22",
        sub: "+3 vs last week",
        icon: Clock,
        trend: "+3",
        trendUp: true,
      },
    ],
    widget1: {
      title: "Matters by status",
      badge: "34 active",
      rows: [
        { label: "Drafting", pct: 62, value: "21" },
        { label: "Client review", pct: 26, value: "9" },
        { label: "Signing", pct: 15, value: "5" },
        { label: "Funded", pct: 10, value: "3" },
      ],
    },
    widget2: {
      title: "Upcoming deadlines",
      badge: "This week",
      rows: [
        { label: "Miller Trust", pct: 30, value: "1 day" },
        { label: "Chen Estate Plan", pct: 55, value: "3 days" },
        { label: "Davis Update", pct: 80, value: "5 days" },
        { label: "Patel Review", pct: 100, value: "7 days" },
      ],
    },
  },
};

const WIDGET_PALETTE: string[] = [
  "Revenue",
  "Show Rate",
  "Pipeline Value",
  "Cost Per Lead",
  "Lead Sources",
  "Follow-up Queue",
  "Matter Status",
  "Billable Hours",
];

// =============================================================
// Component
// =============================================================

export function DashboardBuilderMockup() {
  const [activeRole, setActiveRole] = useState<RoleId>("partner");
  const view = ROLE_VIEWS[activeRole];

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <LayoutDashboard className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Dashboard Builder · yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1">
            <RefreshCw className="w-3.5 h-3.5 text-emerald-400" />
            Live · updated just now
          </span>
          <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
            <ShieldCheck className="w-3.5 h-3.5" />
            One source
          </span>
        </div>
      </div>

      {/* Role tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
        <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
          Saved view
        </span>
        {ROLES.map((role) => {
          const Icon = role.icon;
          const isActive = activeRole === role.id;
          return (
            <button
              key={role.id}
              onClick={() => setActiveRole(role.id)}
              className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                isActive
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
              }`}
            >
              <Icon className="w-3.5 h-3.5" />
              {role.label}
            </button>
          );
        })}
      </div>

      <div className="p-5 sm:p-6 bg-slate-50/60">
        {/* KPI row */}
        <div className="grid grid-cols-2 lg:grid-cols-4 gap-4 mb-5">
          {view.kpis.map((kpi) => {
            const Icon = kpi.icon;
            return (
              <div
                key={kpi.label}
                className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm"
              >
                <div className="flex items-center justify-between">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    {kpi.label}
                  </div>
                  <Icon className="w-3.5 h-3.5 text-slate-300" />
                </div>
                <div className="mt-2 flex items-end gap-2">
                  <span className="text-2xl sm:text-3xl font-black text-[#12193b]">
                    {kpi.value}
                  </span>
                  {kpi.trend && (
                    <span
                      className={`flex items-center gap-0.5 text-[10px] font-bold pb-1.5 ${
                        kpi.trendDown ? "text-rose-600" : "text-emerald-600"
                      }`}
                    >
                      {kpi.trendUp && <ArrowUpRight className="w-3 h-3" />}
                      {kpi.trendDown && <TrendingDown className="w-3 h-3" />}
                      {kpi.trend}
                    </span>
                  )}
                </div>
                <div className="mt-1 text-xs text-slate-500 font-medium">{kpi.sub}</div>
              </div>
            );
          })}
        </div>

        {/* Widget area */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4">
          <WidgetCard widget={view.widget1} />
          <WidgetCard widget={view.widget2} />
        </div>

        {/* Widget palette */}
        <div className="mt-5 flex flex-wrap items-center gap-2 rounded-2xl bg-white border border-slate-200 p-3.5">
          <div className="flex items-center gap-1.5 text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
            <GripVertical className="w-3.5 h-3.5" />
            Drag to add
          </div>
          {WIDGET_PALETTE.map((name) => (
            <span
              key={name}
              className="inline-flex items-center gap-1 px-2.5 py-1.5 rounded-lg bg-slate-50 border border-slate-200 text-[11px] font-bold text-slate-600 cursor-grab active:cursor-grabbing"
            >
              <Plus className="w-3 h-3 text-[#3344b8]" />
              {name}
            </span>
          ))}
        </div>

        {/* Footer */}
        <div className="mt-4 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
          <span className="font-semibold">
            4 KPIs · 2 widgets · {ROLES.find((r) => r.id === activeRole)?.label}
          </span>
          <span className="flex items-center gap-1.5">
            <Clock className="w-3.5 h-3.5 text-emerald-600" />
            Updates in real time, not month-end
          </span>
        </div>
      </div>
    </div>
  );
}

function WidgetCard({ widget }: { widget: Widget }) {
  return (
    <div className="rounded-2xl bg-white border border-slate-200 p-5">
      <div className="flex items-center justify-between mb-4">
        <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
          {widget.title}
        </span>
        <span className="text-[10px] font-bold text-[#3344b8] bg-blue-50 px-2 py-0.5 rounded-full border border-blue-200">
          {widget.badge}
        </span>
      </div>
      <div className="space-y-2.5">
        {widget.rows.map((row) => (
          <div key={row.label}>
            <div className="flex items-center justify-between text-xs mb-1">
              <span className="font-bold text-slate-700">{row.label}</span>
              <span className="text-slate-500 font-medium">{row.value}</span>
            </div>
            <div className="h-2 rounded-full bg-slate-100 overflow-hidden">
              <div
                className="h-full rounded-full bg-gradient-to-r from-[#3344b8] to-[#5b67d8]"
                style={{ width: `${row.pct}%` }}
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
