import { useState } from "react";
import {
  GitBranch,
  ShieldCheck,
  RefreshCw,
  TrendingUp,
  DollarSign,
  Calendar,
  FileText,
  Mail,
  Users,
  Clock,
  Zap,
  AlertCircle,
  Plus,
  Building2,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type PipelineId = "estate" | "probate" | "elder";

type Deal = {
  id: string;
  name: string;
  value: string;
  owner: string;
  age: string;
  hot?: boolean;
};

type StageId = "inquiry" | "consult-booked" | "consult-held" | "engagement-sent" | "won";

type Stage = {
  id: StageId;
  label: string;
  accent: string;
  deals: Deal[];
};

type Pipeline = {
  id: PipelineId;
  label: string;
  icon: typeof Building2;
  total: string;
  won: string;
  showRate: string;
  stages: Stage[];
};

// =============================================================
// Pipeline data
// =============================================================

const PIPELINES: Pipeline[] = [
  {
    id: "estate",
    label: "Estate Planning",
    icon: FileText,
    total: "$68,400",
    won: "$24,500",
    showRate: "87%",
    stages: [
      {
        id: "inquiry",
        label: "New Inquiry",
        accent: "border-slate-300",
        deals: [
          {
            id: "e1",
            name: "Henderson Trust",
            value: "$4,800",
            owner: "Maria",
            age: "2d",
            hot: true,
          },
          { id: "e2", name: "Patel Family Plan", value: "$3,500", owner: "Maria", age: "4d" },
        ],
      },
      {
        id: "consult-booked",
        label: "Consult Booked",
        accent: "border-[#3344b8]",
        deals: [
          { id: "e3", name: "Chen Estate", value: "$5,200", owner: "David", age: "1d" },
          { id: "e4", name: "Okafor Will", value: "$1,200", owner: "Maria", age: "3d" },
        ],
      },
      {
        id: "consult-held",
        label: "Consult Held",
        accent: "border-amber-400",
        deals: [
          { id: "e5", name: "Davis Update", value: "$6,000", owner: "David", age: "6d", hot: true },
        ],
      },
      {
        id: "engagement-sent",
        label: "Engagement Sent",
        accent: "border-emerald-400",
        deals: [{ id: "e6", name: "Rivera Trust", value: "$7,400", owner: "Maria", age: "5d" }],
      },
      {
        id: "won",
        label: "Signed & Paid",
        accent: "border-emerald-600",
        deals: [
          { id: "e7", name: "Walsh Estate", value: "$8,500", owner: "David", age: "2d" },
          { id: "e8", name: "Nguyen Trust", value: "$4,200", owner: "Maria", age: "9d" },
        ],
      },
    ],
  },
  {
    id: "probate",
    label: "Probate",
    icon: Building2,
    total: "$42,100",
    won: "$18,000",
    showRate: "81%",
    stages: [
      {
        id: "inquiry",
        label: "New Inquiry",
        accent: "border-slate-300",
        deals: [
          {
            id: "p1",
            name: "Martinez Estate",
            value: "$9,000",
            owner: "David",
            age: "1d",
            hot: true,
          },
        ],
      },
      {
        id: "consult-booked",
        label: "Consult Booked",
        accent: "border-[#3344b8]",
        deals: [{ id: "p2", name: "Thompson Probate", value: "$6,500", owner: "Maria", age: "2d" }],
      },
      {
        id: "consult-held",
        label: "Consult Held",
        accent: "border-amber-400",
        deals: [
          {
            id: "p3",
            name: "Adams Estate",
            value: "$11,000",
            owner: "David",
            age: "4d",
            hot: true,
          },
          { id: "p4", name: "Lee Probate", value: "$4,800", owner: "Maria", age: "7d" },
        ],
      },
      {
        id: "engagement-sent",
        label: "Engagement Sent",
        accent: "border-emerald-400",
        deals: [{ id: "p5", name: "Carter Estate", value: "$7,200", owner: "David", age: "3d" }],
      },
      {
        id: "won",
        label: "Signed & Paid",
        accent: "border-emerald-600",
        deals: [{ id: "p6", name: "Brooks Probate", value: "$8,000", owner: "Maria", age: "5d" }],
      },
    ],
  },
  {
    id: "elder",
    label: "Elder Law",
    icon: Users,
    total: "$31,200",
    won: "$12,500",
    showRate: "83%",
    stages: [
      {
        id: "inquiry",
        label: "New Inquiry",
        accent: "border-slate-300",
        deals: [
          { id: "el1", name: "Sutton Medicaid", value: "$5,500", owner: "Maria", age: "3d" },
          { id: "el2", name: "Reyes Guardianship", value: "$3,200", owner: "David", age: "5d" },
        ],
      },
      {
        id: "consult-booked",
        label: "Consult Booked",
        accent: "border-[#3344b8]",
        deals: [
          {
            id: "el3",
            name: "Cooper Elder Law",
            value: "$6,800",
            owner: "Maria",
            age: "1d",
            hot: true,
          },
        ],
      },
      {
        id: "consult-held",
        label: "Consult Held",
        accent: "border-amber-400",
        deals: [{ id: "el4", name: "Bauer Medicaid", value: "$7,200", owner: "David", age: "6d" }],
      },
      {
        id: "engagement-sent",
        label: "Engagement Sent",
        accent: "border-emerald-400",
        deals: [
          { id: "el5", name: "Foster Conservatorship", value: "$4,500", owner: "Maria", age: "4d" },
        ],
      },
      {
        id: "won",
        label: "Signed & Paid",
        accent: "border-emerald-600",
        deals: [
          { id: "el6", name: "Hughes Elder Plan", value: "$5,200", owner: "David", age: "8d" },
        ],
      },
    ],
  },
];

const STAGE_AUTOMATIONS: Record<StageId, { label: string; icon: typeof Zap; detail: string }[]> = {
  inquiry: [
    { label: "Send welcome SMS", icon: Mail, detail: "within 60 seconds" },
    { label: "Assign to intake coordinator", icon: Users, detail: "auto" },
  ],
  "consult-booked": [
    { label: "Send calendar invite + pre-call video", icon: Calendar, detail: "instant" },
    { label: "Create prep task for attorney", icon: Clock, detail: "24h before" },
  ],
  "consult-held": [
    { label: "Queue engagement letter", icon: FileText, detail: "same day" },
    { label: "Start 3-day follow-up sequence", icon: Zap, detail: "auto" },
  ],
  "engagement-sent": [
    { label: "Send e-sign request", icon: FileText, detail: "instant" },
    { label: "Remind in 2 & 5 days if unsigned", icon: Mail, detail: "auto" },
  ],
  won: [
    { label: "Push to practice management", icon: GitBranch, detail: "on sign + pay" },
    { label: "Send welcome & onboarding", icon: Mail, detail: "instant" },
  ],
};

// =============================================================
// Component
// =============================================================

export function PipelineBoardMockup() {
  const [activePipeline, setActivePipeline] = useState<PipelineId>("estate");
  const [activeStage, setActiveStage] = useState<StageId>("consult-booked");

  const pipeline = PIPELINES.find((p) => p.id === activePipeline)!;
  const automations = STAGE_AUTOMATIONS[activeStage];
  const activeStageData = pipeline.stages.find((s) => s.id === activeStage);

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <GitBranch className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Opportunity Pipeline &middot; yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1">
            <RefreshCw className="w-3.5 h-3.5 text-emerald-400" />
            Live &middot; updated just now
          </span>
          <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
            <ShieldCheck className="w-3.5 h-3.5" />
            One source of truth
          </span>
        </div>
      </div>

      {/* Pipeline tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-2">
          <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
            Pipeline
          </span>
          {PIPELINES.map((p) => {
            const Icon = p.icon;
            const isActive = activePipeline === p.id;
            return (
              <button
                key={p.id}
                onClick={() => {
                  setActivePipeline(p.id);
                  setActiveStage("consult-booked");
                }}
                className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                  isActive
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
                }`}
              >
                <Icon className="w-3.5 h-3.5" />
                {p.label}
              </button>
            );
          })}
        </div>
        <div className="flex items-center gap-4 text-xs">
          <div className="flex items-center gap-1.5">
            <span className="text-slate-400 font-bold uppercase tracking-wider text-[10px]">
              Open
            </span>
            <span className="font-black text-[#12193b]">{pipeline.total}</span>
          </div>
          <div className="flex items-center gap-1.5">
            <span className="text-slate-400 font-bold uppercase tracking-wider text-[10px]">
              Won
            </span>
            <span className="font-black text-emerald-600">{pipeline.won}</span>
          </div>
        </div>
      </div>

      {/* Board */}
      <div className="p-4 sm:p-5 bg-slate-50/60">
        <div className="flex gap-3 overflow-x-auto pb-2">
          {pipeline.stages.map((stage) => {
            const isActiveStage = activeStage === stage.id;
            const stageTotal = stage.deals.reduce(
              (sum, d) => sum + parseFloat(d.value.replace(/[$,]/g, "")),
              0,
            );
            return (
              <div key={stage.id} className="shrink-0 w-[180px] sm:w-[200px] flex flex-col">
                {/* Stage header */}
                <button
                  onClick={() => setActiveStage(stage.id)}
                  className={`text-left rounded-t-xl border-b-2 ${stage.accent} bg-white px-3 py-2.5 transition-all ${
                    isActiveStage ? "shadow-sm ring-1 ring-[#3344b8]/20" : ""
                  }`}
                >
                  <div className="flex items-center justify-between">
                    <span className="text-[11px] font-extrabold uppercase tracking-wider text-slate-700">
                      {stage.label}
                    </span>
                    <span className="text-[10px] font-bold text-slate-400 bg-slate-100 rounded-full px-1.5">
                      {stage.deals.length}
                    </span>
                  </div>
                  <div className="mt-1 text-[11px] font-bold text-[#3344b8]">
                    ${stageTotal.toLocaleString()}
                  </div>
                </button>

                {/* Deals */}
                <div className="bg-white/60 border-x border-slate-200 flex-1 px-2 py-2 space-y-2 min-h-[160px]">
                  {stage.deals.map((deal) => (
                    <div
                      key={deal.id}
                      className={`rounded-lg border bg-white p-2.5 shadow-sm cursor-grab active:cursor-grabbing transition-shadow hover:shadow-md ${
                        deal.hot ? "border-amber-300 ring-1 ring-amber-200/50" : "border-slate-200"
                      }`}
                    >
                      <div className="flex items-start justify-between gap-1">
                        <span className="text-[12px] font-bold text-slate-800 leading-tight">
                          {deal.name}
                        </span>
                        {deal.hot && (
                          <span className="shrink-0 text-[9px] font-extrabold uppercase text-amber-600">
                            Hot
                          </span>
                        )}
                      </div>
                      <div className="mt-1.5 flex items-center justify-between">
                        <span className="text-[12px] font-black text-emerald-700">
                          {deal.value}
                        </span>
                        <span className="text-[10px] text-slate-400 font-semibold">{deal.age}</span>
                      </div>
                      <div className="mt-1.5 flex items-center gap-1 text-[10px] text-slate-500 font-medium">
                        <Users className="w-3 h-3" />
                        {deal.owner}
                      </div>
                    </div>
                  ))}
                  <button className="w-full rounded-lg border border-dashed border-slate-300 text-slate-400 hover:border-[#3344b8]/40 hover:text-[#3344b8] text-[10px] font-bold py-1.5 inline-flex items-center justify-center gap-1 transition-colors">
                    <Plus className="w-3 h-3" />
                    Add deal
                  </button>
                </div>
              </div>
            );
          })}
        </div>

        {/* Stage automation drawer */}
        <div className="mt-4 rounded-2xl border border-slate-200 bg-white p-4 sm:p-5">
          <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-8 h-8 rounded-lg bg-[#3344b8]/10 border border-[#3344b8]/20 flex items-center justify-center text-[#3344b8]">
                <Zap className="w-4 h-4" />
              </div>
              <div>
                <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                  When a deal moves to
                </div>
                <div className="text-sm font-black text-[#12193b]">{activeStageData?.label}</div>
              </div>
            </div>
            <span className="inline-flex items-center gap-1.5 text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 rounded-full px-2.5 py-1 self-start sm:self-auto">
              <Zap className="w-3 h-3" />
              Fires automatically
            </span>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5">
            {automations.map((a) => {
              const Icon = a.icon;
              return (
                <div
                  key={a.label}
                  className="flex items-center gap-2.5 rounded-xl bg-slate-50 border border-slate-200 px-3 py-2.5"
                >
                  <div className="w-7 h-7 rounded-lg bg-white border border-slate-200 flex items-center justify-center text-[#3344b8] shrink-0">
                    <Icon className="w-3.5 h-3.5" />
                  </div>
                  <div className="min-w-0">
                    <div className="text-[12px] font-bold text-slate-700 leading-tight">
                      {a.label}
                    </div>
                    <div className="text-[10px] text-slate-400 font-medium">{a.detail}</div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-3 flex flex-wrap items-center gap-2 text-[11px] font-bold">
            <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-rose-50 text-rose-700 border border-rose-200">
              <AlertCircle className="w-3.5 h-3.5" />
              Deal idle 9 days &rarr; flagged
            </span>
            <span className="text-slate-300">&rarr;</span>
            <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
              <TrendingUp className="w-3.5 h-3.5" />
              Follow-up fires to recapture
            </span>
          </div>
        </div>
      </div>

      {/* Footer */}
      <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
        <span className="font-semibold">
          {pipeline.stages.reduce((s, st) => s + st.deals.length, 0)} deals &middot; 5 stages
          &middot; {pipeline.label}
        </span>
        <span className="flex items-center gap-1.5">
          <DollarSign className="w-3.5 h-3.5 text-emerald-600" />
          {pipeline.total} open &middot; {pipeline.won} won
        </span>
      </div>
    </div>
  );
}
