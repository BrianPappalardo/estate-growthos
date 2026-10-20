import { useState } from "react";
import {
  ListFilter,
  Users,
  GitBranch,
  Database,
  ListTodo,
  Tag,
  Zap,
  RefreshCw,
  Plus,
  X,
  ChevronDown,
  CheckCircle2,
  Sparkles,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type EntityId = "contacts" | "opportunities" | "custom" | "projects";

type Entity = {
  id: EntityId;
  label: string;
  icon: typeof Users;
  count: number;
};

type RecordRow = {
  id: string;
  name: string;
  sub: string;
  tags: string[];
  value: string;
};

// =============================================================
// Data
// =============================================================

const ENTITIES: Entity[] = [
  { id: "contacts", label: "Contacts", icon: Users, count: 1428 },
  { id: "opportunities", label: "Opportunities", icon: GitBranch, count: 84 },
  { id: "custom", label: "Custom Objects", icon: Database, count: 36 },
  { id: "projects", label: "Projects", icon: ListTodo, count: 27 },
];

const RECORDS: Record<EntityId, RecordRow[]> = {
  contacts: [
    {
      id: "c1",
      name: "James Henderson",
      sub: "Henderson Trust",
      tags: ["Estate Planning", "Consult Held", "High Value"],
      value: "$4,800",
    },
    {
      id: "c2",
      name: "Priya Patel",
      sub: "Patel Family Plan",
      tags: ["Estate Planning", "Engagement Sent"],
      value: "$3,500",
    },
    {
      id: "c3",
      name: "Wei Chen",
      sub: "Chen Estate",
      tags: ["Estate Planning", "Consult Booked"],
      value: "$5,200",
    },
    {
      id: "c4",
      name: "Marcus Adams",
      sub: "Adams Probate",
      tags: ["Probate", "Consult Held", "High Value"],
      value: "$11,000",
    },
    {
      id: "c5",
      name: "Diana Sutton",
      sub: "Sutton Medicaid",
      tags: ["Elder Law", "Intake"],
      value: "$5,500",
    },
    {
      id: "c6",
      name: "Robert Walsh",
      sub: "Walsh Estate",
      tags: ["Estate Planning", "Signed & Paid"],
      value: "$8,500",
    },
  ],
  opportunities: [
    {
      id: "o1",
      name: "Henderson Trust",
      sub: "Consult Held · Maria",
      tags: ["Estate Planning", "High Value"],
      value: "$4,800",
    },
    {
      id: "o2",
      name: "Adams Probate",
      sub: "Consult Held · David",
      tags: ["Probate", "High Value"],
      value: "$11,000",
    },
    {
      id: "o3",
      name: "Cooper Elder Law",
      sub: "Consult Booked · Maria",
      tags: ["Elder Law", "High Value"],
      value: "$6,800",
    },
    {
      id: "o4",
      name: "Rivera Trust",
      sub: "Engagement Sent · Maria",
      tags: ["Estate Planning"],
      value: "$7,400",
    },
  ],
  custom: [
    {
      id: "x1",
      name: "Funding Checklist — Henderson",
      sub: "Custom: Funding",
      tags: ["Active", "Estate Planning"],
      value: "4/12",
    },
    {
      id: "x2",
      name: "Annual Review — Patel",
      sub: "Custom: Reviews",
      tags: ["Due Q4"],
      value: "$650",
    },
  ],
  projects: [
    {
      id: "p1",
      name: "Henderson Trust",
      sub: "Drafting · Maria",
      tags: ["Estate Planning", "Priority: High"],
      value: "Fri",
    },
    {
      id: "p2",
      name: "Martinez Probate",
      sub: "Creditor Period · David",
      tags: ["Probate", "Priority: High"],
      value: "2d",
    },
    {
      id: "p3",
      name: "Sutton Medicaid",
      sub: "Eligibility · Maria",
      tags: ["Elder Law", "Priority: High"],
      value: "Thu",
    },
  ],
};

type FilterRule = { label: string; value: string };

const SEGMENT_RULES: Record<EntityId, FilterRule[]> = {
  contacts: [
    { label: "Tag", value: "Estate Planning" },
    { label: "Stage", value: "is Consult Held or Engagement Sent" },
    { label: "Custom field", value: "Priority = High" },
  ],
  opportunities: [
    { label: "Pipeline", value: "Estate Planning" },
    { label: "Stage", value: "is not Signed & Paid" },
    { label: "Value", value: "> $3,000" },
  ],
  custom: [
    { label: "Object type", value: "Funding Checklist" },
    { label: "Status", value: "is Active" },
  ],
  projects: [
    { label: "Space", value: "Estate Planning" },
    { label: "Custom field", value: "Priority = High" },
    { label: "Status", value: "is not Funded" },
  ],
};

// =============================================================
// Component
// =============================================================

export function SmartListMockup() {
  const [activeEntity, setActiveEntity] = useState<EntityId>("contacts");

  const entity = ENTITIES.find((e) => e.id === activeEntity)!;
  const rules = SEGMENT_RULES[activeEntity];
  const results = RECORDS[activeEntity];

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <ListFilter className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Smart Lists · yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1 text-emerald-400 font-bold">
            <RefreshCw className="w-3.5 h-3.5" />
            Auto-updating · refreshed just now
          </span>
        </div>
      </div>

      {/* Entity tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-2">
          <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
            Organize
          </span>
          {ENTITIES.map((e) => {
            const Icon = e.icon;
            const isActive = activeEntity === e.id;
            return (
              <button
                key={e.id}
                onClick={() => setActiveEntity(e.id)}
                className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                  isActive
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
                }`}
              >
                <Icon className="w-3.5 h-3.5" />
                {e.label}
              </button>
            );
          })}
        </div>
        <div className="flex items-center gap-3 text-xs">
          <span className="font-bold text-slate-500">
            {entity.count.toLocaleString()} total · {results.length} in segment
          </span>
        </div>
      </div>

      {/* Segment builder */}
      <div className="px-5 py-4 bg-white border-b border-slate-200">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2 mb-3">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-lg bg-[#3344b8]/10 border border-[#3344b8]/20 flex items-center justify-center text-[#3344b8]">
              <Sparkles className="w-4 h-4" />
            </div>
            <div>
              <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                Saved segment
              </div>
              <div className="text-sm font-black text-[#12193b]">
                Active {entity.label} · High Priority
              </div>
            </div>
          </div>
          <span className="inline-flex items-center gap-1.5 text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 rounded-full px-2.5 py-1 self-start sm:self-auto">
            <Zap className="w-3 h-3" />
            Updates itself
          </span>
        </div>

        {/* Rule chips */}
        <div className="flex flex-wrap items-center gap-2">
          {rules.map((r, i) => (
            <div
              key={`${r.label}-${i}`}
              className="inline-flex items-center gap-1.5 rounded-lg bg-slate-50 border border-slate-200 px-2.5 py-1.5 text-[11px]"
            >
              <span className="font-extrabold uppercase tracking-wider text-slate-400">
                {r.label}
              </span>
              <span className="text-slate-300">·</span>
              <span className="font-bold text-slate-700">{r.value}</span>
              <X className="w-3 h-3 text-slate-300" />
            </div>
          ))}
          <button className="inline-flex items-center gap-1 rounded-lg border border-dashed border-slate-300 text-slate-400 hover:border-[#3344b8]/40 hover:text-[#3344b8] text-[11px] font-bold py-1.5 px-2.5 transition-colors cursor-pointer">
            <Plus className="w-3 h-3" />
            Add rule
          </button>
        </div>
      </div>

      {/* Results table */}
      <div className="p-4 sm:p-5 bg-slate-50/60">
        <div className="rounded-2xl border border-slate-200 overflow-hidden bg-white">
          <div className="grid grid-cols-12 gap-2 px-4 py-2.5 bg-slate-50 border-b border-slate-200 text-[10px] font-extrabold uppercase tracking-wider text-slate-400">
            <span className="col-span-5">{entity.label === "Contacts" ? "Name" : "Record"}</span>
            <span className="col-span-3 hidden sm:block">Tags</span>
            <span className="col-span-4 sm:col-span-2">Value</span>
            <span className="col-span-3 sm:col-span-2 text-right">Match</span>
          </div>
          {results.map((rec) => (
            <div
              key={rec.id}
              className="grid grid-cols-12 gap-2 px-4 py-3 border-b border-slate-100 last:border-0 items-center text-xs hover:bg-slate-50/50 transition-colors"
            >
              <div className="col-span-5">
                <div className="font-bold text-slate-800 leading-tight">{rec.name}</div>
                <div className="text-[11px] text-slate-500 font-medium">{rec.sub}</div>
              </div>
              <div className="col-span-3 hidden sm:flex flex-wrap gap-1">
                {rec.tags.map((t) => (
                  <span
                    key={t}
                    className="inline-flex items-center gap-1 px-1.5 py-0.5 rounded-md bg-blue-50 border border-blue-200 text-[10px] font-bold text-[#3344b8]"
                  >
                    <Tag className="w-2.5 h-2.5" />
                    {t}
                  </span>
                ))}
              </div>
              <div className="col-span-4 sm:col-span-2 font-black text-emerald-700">
                {rec.value}
              </div>
              <div className="col-span-3 sm:col-span-2 flex items-center justify-end">
                <span className="inline-flex items-center gap-1 text-[10px] font-bold text-emerald-700">
                  <CheckCircle2 className="w-3.5 h-3.5" />
                  In list
                </span>
              </div>
            </div>
          ))}
        </div>

        {/* Reuse callout */}
        <div className="mt-4 flex flex-col sm:flex-row sm:items-center justify-between gap-3 rounded-2xl bg-white border border-slate-200 p-4">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-lg bg-amber-50 border border-amber-200 flex items-center justify-center text-amber-700">
              <ChevronDown className="w-4 h-4" />
            </div>
            <div>
              <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                Reuse this segment
              </div>
              <div className="text-sm font-bold text-[#12193b]">
                Send to an email campaign, an SMS blast, or a workflow trigger
              </div>
            </div>
          </div>
          <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-[#3344b8] bg-blue-50 border border-blue-200 rounded-full px-2.5 py-1 self-start sm:self-auto">
            <Zap className="w-3 h-3" />
            One list, every channel
          </span>
        </div>
      </div>
    </div>
  );
}
