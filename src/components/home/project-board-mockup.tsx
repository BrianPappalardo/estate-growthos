import { useState } from "react";
import {
  ListTodo,
  FolderKanban,
  KanbanSquare,
  ListChecks,
  Tag,
  Zap,
  Users,
  Clock,
  AlertCircle,
  Plus,
  GripVertical,
  Building2,
  FileText,
  Database,
  Circle,
  CircleDot,
  CircleCheck,
  Loader2,
  CheckCircle2,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type SpaceId = "estate" | "probate" | "elder";
type ViewId = "kanban" | "list";
type TaskStatusId = "intake" | "drafting" | "review" | "execution" | "funded";

type Task = {
  id: string;
  name: string;
  status: TaskStatusId;
  matter: string;
  owner: string;
  due: string;
  field: string;
};

// =============================================================
// Data
// =============================================================

const SPACES: {
  id: SpaceId;
  label: string;
  icon: typeof Building2;
  folders: string;
  tasks: number;
  statuses: { id: TaskStatusId; label: string; accent: string }[];
}[] = [
  {
    id: "estate",
    label: "Estate Planning",
    icon: FileText,
    folders: "4 matters",
    tasks: 11,
    statuses: [
      { id: "intake", label: "Intake", accent: "border-slate-300" },
      { id: "drafting", label: "Drafting", accent: "border-[#3344b8]" },
      { id: "review", label: "Client Review", accent: "border-amber-400" },
      { id: "execution", label: "Execution", accent: "border-violet-400" },
      { id: "funded", label: "Funded", accent: "border-emerald-600" },
    ],
  },
  {
    id: "probate",
    label: "Probate",
    icon: Building2,
    folders: "3 matters",
    tasks: 8,
    statuses: [
      { id: "intake", label: "Filed", accent: "border-slate-300" },
      { id: "drafting", label: "Inventory", accent: "border-[#3344b8]" },
      { id: "review", label: "Creditor Period", accent: "border-amber-400" },
      { id: "execution", label: "Distribution", accent: "border-violet-400" },
      { id: "funded", label: "Closed", accent: "border-emerald-600" },
    ],
  },
  {
    id: "elder",
    label: "Elder Law",
    icon: Users,
    folders: "2 matters",
    tasks: 6,
    statuses: [
      { id: "intake", label: "Intake", accent: "border-slate-300" },
      { id: "drafting", label: "Eligibility", accent: "border-[#3344b8]" },
      { id: "review", label: "Application", accent: "border-amber-400" },
      { id: "execution", label: "Hearing", accent: "border-violet-400" },
      { id: "funded", label: "Approved", accent: "border-emerald-600" },
    ],
  },
];

const TASKS: Task[] = [
  {
    id: "t1",
    name: "Draft revocable trust",
    status: "drafting",
    matter: "Henderson Trust",
    owner: "Maria",
    due: "Fri",
    field: "Priority: High",
  },
  {
    id: "t2",
    name: "Schedule funding appt",
    status: "execution",
    matter: "Henderson Trust",
    owner: "David",
    due: "Mon",
    field: "Priority: High",
  },
  {
    id: "t3",
    name: "Send draft for review",
    status: "review",
    matter: "Patel Family Plan",
    owner: "Maria",
    due: "Wed",
    field: "Priority: Med",
  },
  {
    id: "t4",
    name: "Intake call notes",
    status: "intake",
    matter: "Chen Estate",
    owner: "Maria",
    due: "Today",
    field: "Priority: High",
  },
  {
    id: "t5",
    name: "File petition",
    status: "funded",
    matter: "Martinez Estate",
    owner: "David",
    due: "Done",
    field: "Priority: High",
  },
  {
    id: "t6",
    name: "Notice to creditors",
    status: "review",
    matter: "Martinez Estate",
    owner: "David",
    due: "Tue",
    field: "Priority: Med",
  },
  {
    id: "t7",
    name: "Medicaid application",
    status: "drafting",
    matter: "Sutton Medicaid",
    owner: "Maria",
    due: "Thu",
    field: "Priority: High",
  },
  {
    id: "t8",
    name: "Gather bank statements",
    status: "intake",
    matter: "Sutton Medicaid",
    owner: "Maria",
    due: "Today",
    field: "Priority: Low",
  },
  {
    id: "t9",
    name: "Sign engagement letter",
    status: "execution",
    matter: "Davis Update",
    owner: "David",
    due: "Mon",
    field: "Priority: High",
  },
  {
    id: "t10",
    name: "Update pour-over will",
    status: "drafting",
    matter: "Davis Update",
    owner: "Maria",
    due: "Fri",
    field: "Priority: Med",
  },
  {
    id: "t11",
    name: "Final distribution",
    status: "funded",
    matter: "Brooks Probate",
    owner: "David",
    due: "Done",
    field: "Priority: Med",
  },
];

const MATCHERS: Record<SpaceId, (t: Task) => boolean> = {
  estate: (t) =>
    t.matter.includes("Henderson") ||
    t.matter.includes("Patel") ||
    t.matter.includes("Chen") ||
    t.matter.includes("Davis"),
  probate: (t) => t.matter.includes("Martinez") || t.matter.includes("Brooks"),
  elder: (t) => t.matter.includes("Sutton"),
};

// =============================================================
// Icons used in the view toggle (re-exported shape)
// =============================================================

export const VIEW_ICONS = { KanbanSquare, ListChecks };

// =============================================================
// Component
// =============================================================

export function ProjectBoardMockup() {
  const [activeSpace, setActiveSpace] = useState<SpaceId>("estate");
  const [activeView, setActiveView] = useState<ViewId>("kanban");

  const space = SPACES.find((s) => s.id === activeSpace)!;
  const spaceTasks = TASKS.filter(MATCHERS[activeSpace]);

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <ListTodo className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Projects · yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1 text-emerald-400 font-bold">
            <CheckCircle2 className="w-3.5 h-3.5" />
            Synced with CRM & pipeline
          </span>
        </div>
      </div>

      {/* Space tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center justify-between gap-3">
        <div className="flex flex-wrap items-center gap-2">
          <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
            Space
          </span>
          {SPACES.map((s) => {
            const Icon = s.icon;
            const isActive = activeSpace === s.id;
            return (
              <button
                key={s.id}
                onClick={() => setActiveSpace(s.id)}
                className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                  isActive
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
                }`}
              >
                <Icon className="w-3.5 h-3.5" />
                {s.label}
              </button>
            );
          })}
        </div>
        <div className="flex items-center gap-3 text-xs">
          <span className="font-bold text-slate-500">
            {space.folders} · {space.tasks} tasks
          </span>
        </div>
      </div>

      {/* View toggle */}
      <div className="px-5 py-3 bg-white border-b border-slate-200 flex flex-wrap items-center gap-2">
        <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
          View
        </span>
        {(
          [
            { id: "kanban", label: "Kanban", icon: KanbanSquare },
            { id: "list", label: "List", icon: ListChecks },
          ] as const
        ).map((tab) => {
          const Icon = tab.icon;
          const isActive = activeView === tab.id;
          return (
            <button
              key={tab.id}
              onClick={() => setActiveView(tab.id)}
              className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                isActive
                  ? "bg-[#12193b] text-white shadow-md"
                  : "bg-white border border-slate-200 text-slate-600 hover:border-[#12193b]/40"
              }`}
            >
              <Icon className="w-3.5 h-3.5" />
              {tab.label}
            </button>
          );
        })}
        <span className="ml-auto hidden sm:inline-flex items-center gap-1.5 text-[10px] font-bold text-amber-700 bg-amber-50 border border-amber-200 rounded-full px-2.5 py-1">
          <Clock className="w-3 h-3" />
          Calendar & timeline coming soon
        </span>
      </div>

      {/* Board / list */}
      {activeView === "kanban" ? (
        <div className="p-4 sm:p-5 bg-slate-50/60">
          <div className="flex gap-3 overflow-x-auto pb-2">
            {space.statuses.map((status) => {
              const statusTasks = spaceTasks.filter((t) => t.status === status.id);
              return (
                <div key={status.id} className="shrink-0 w-[180px] sm:w-[200px] flex flex-col">
                  <button
                    className={`text-left rounded-t-xl border-b-2 ${status.accent} bg-white px-3 py-2.5`}
                  >
                    <div className="flex items-center justify-between">
                      <span className="text-[11px] font-extrabold uppercase tracking-wider text-slate-700">
                        {status.label}
                      </span>
                      <span className="text-[10px] font-bold text-slate-400 bg-slate-100 rounded-full px-1.5">
                        {statusTasks.length}
                      </span>
                    </div>
                  </button>
                  <div className="bg-white/60 border-x border-slate-200 flex-1 px-2 py-2 space-y-2 min-h-[160px]">
                    {statusTasks.map((task) => (
                      <div
                        key={task.id}
                        className="rounded-lg border border-slate-200 bg-white p-2.5 shadow-sm cursor-grab active:cursor-grabbing transition-shadow hover:shadow-md"
                      >
                        <div className="flex items-start justify-between gap-1">
                          <span className="text-[12px] font-bold text-slate-800 leading-tight">
                            {task.name}
                          </span>
                          <GripVertical className="w-3 h-3 text-slate-300 shrink-0 mt-0.5" />
                        </div>
                        <div className="mt-1.5 flex items-center justify-between">
                          <span className="text-[11px] text-slate-500 font-medium">
                            {task.matter}
                          </span>
                        </div>
                        <div className="mt-1.5 flex items-center justify-between text-[10px]">
                          <span className="text-slate-500 font-semibold">{task.field}</span>
                          <span className="text-slate-400">{task.due}</span>
                        </div>
                        <div className="mt-1.5 flex items-center gap-1 text-[10px] text-slate-500 font-medium">
                          <Users className="w-3 h-3" />
                          {task.owner}
                        </div>
                      </div>
                    ))}
                    <button className="w-full rounded-lg border border-dashed border-slate-300 text-slate-400 hover:border-[#3344b8]/40 hover:text-[#3344b8] text-[10px] font-bold py-1.5 inline-flex items-center justify-center gap-1 transition-colors">
                      <Plus className="w-3 h-3" />
                      Add task
                    </button>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      ) : (
        <div className="p-4 sm:p-5 bg-white">
          <div className="rounded-2xl border border-slate-200 overflow-hidden">
            <div className="grid grid-cols-12 gap-2 px-4 py-2.5 bg-slate-50 border-b border-slate-200 text-[10px] font-extrabold uppercase tracking-wider text-slate-400">
              <span className="col-span-5">Task</span>
              <span className="col-span-3 hidden sm:block">Matter</span>
              <span className="col-span-3 sm:col-span-2">Status</span>
              <span className="col-span-4 sm:col-span-2">Owner / Due</span>
            </div>
            {spaceTasks.map((task) => {
              const status = space.statuses.find((s) => s.id === task.status)!;
              const StatusIcon =
                task.status === "funded"
                  ? CircleCheck
                  : task.status === "intake"
                    ? Circle
                    : task.status === "execution"
                      ? CircleDot
                      : Loader2;
              return (
                <div
                  key={task.id}
                  className="grid grid-cols-12 gap-2 px-4 py-3 border-b border-slate-100 last:border-0 items-center text-xs hover:bg-slate-50/50 transition-colors"
                >
                  <span className="col-span-5 font-bold text-slate-800 flex items-center gap-2">
                    <StatusIcon
                      className={`w-3.5 h-3.5 shrink-0 ${
                        task.status === "funded"
                          ? "text-emerald-600"
                          : task.status === "intake"
                            ? "text-slate-300"
                            : "text-[#3344b8]"
                      } ${task.status !== "funded" && task.status !== "intake" && task.status !== "execution" ? "animate-spin" : ""}`}
                    />
                    {task.name}
                  </span>
                  <span className="col-span-3 hidden sm:block text-slate-500 font-medium">
                    {task.matter}
                  </span>
                  <span className="col-span-3 sm:col-span-2">
                    <span
                      className={`inline-block px-2 py-0.5 rounded-full text-[10px] font-bold border-b-2 ${status.accent} bg-slate-50 text-slate-700`}
                    >
                      {status.label}
                    </span>
                  </span>
                  <span className="col-span-4 sm:col-span-2 text-slate-500 font-medium">
                    {task.owner} · {task.due}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Automation drawer */}
      <div className="px-5 py-4 bg-slate-50/80 border-t border-slate-200">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mb-3">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-lg bg-[#3344b8]/10 border border-[#3344b8]/20 flex items-center justify-center text-[#3344b8]">
              <Zap className="w-4 h-4" />
            </div>
            <div>
              <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                When a deal hits “Engagement Sent”
              </div>
              <div className="text-sm font-black text-[#12193b]">
                File the trust · assign to Maria · due in 3 days
              </div>
            </div>
          </div>
          <span className="inline-flex items-center gap-1.5 text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 rounded-full px-2.5 py-1 self-start sm:self-auto">
            <Zap className="w-3 h-3" />
            Created automatically
          </span>
        </div>
        <div className="flex flex-wrap items-center gap-2 text-[11px] font-bold">
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-rose-50 text-rose-700 border border-rose-200">
            <AlertCircle className="w-3.5 h-3.5" />
            Statute date in 14 days → flagged
          </span>
          <span className="text-slate-300">→</span>
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
            <Clock className="w-3.5 h-3.5" />
            Reminder fires to responsible attorney
          </span>
        </div>
      </div>
    </div>
  );
}

// Keep imports referenced (used by the view toggle / type re-exports above)
void FolderKanban;
void Tag;
void Database;
