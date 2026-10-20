import { useState } from "react";
import {
  ClipboardList,
  FileText,
  ListChecks,
  HelpCircle,
  GitBranch,
  Database,
  Tag,
  Zap,
  Plus,
  GripVertical,
  CheckCircle2,
  ChevronRight,
  ArrowRight,
  ShieldCheck,
  UserPlus,
  CalendarCheck,
  Mail,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type FormTypeId = "intake" | "quiz" | "survey";
type FieldKind = "text" | "email" | "phone" | "select" | "conditional" | "score";

type Field = {
  id: string;
  label: string;
  kind: FieldKind;
  required: boolean;
  placeholder?: string;
  options?: string[];
  branchLabel?: string;
  crmField?: string;
};

// =============================================================
// Data
// =============================================================

const FORMS: {
  id: FormTypeId;
  label: string;
  icon: typeof ClipboardList;
  purpose: string;
  description: string;
  fields: Field[];
  crmSync: { field: string; value: string }[];
  workflow: { trigger: string; action: string };
}[] = [
  {
    id: "intake",
    label: "Estate Planning Intake",
    icon: FileText,
    purpose: "Qualify & route a prospect",
    description:
      "A multi-step intake that captures exactly what your firm needs \u2014 then routes it to the right calendar, tags the prospect, and scores the lead.",
    fields: [
      {
        id: "f1",
        label: "Full name",
        kind: "text",
        required: true,
        placeholder: "Jordan Henderson",
        crmField: "contact.name",
      },
      {
        id: "f2",
        label: "Email",
        kind: "email",
        required: true,
        placeholder: "jordan@email.com",
        crmField: "contact.email",
      },
      {
        id: "f3",
        label: "Phone",
        kind: "phone",
        required: true,
        placeholder: "(555) 123-4567",
        crmField: "contact.phone",
      },
      {
        id: "f4",
        label: "What are you looking to set up?",
        kind: "select",
        required: true,
        options: ["A will", "A trust", "Update an existing plan", "Not sure yet"],
        crmField: "tag.practice-area",
      },
      {
        id: "f5",
        label: "Do you own a home?",
        kind: "conditional",
        required: false,
        options: ["Yes", "No"],
        branchLabel: "If yes \u2014 ask for property value",
        crmField: "custom.home-owner",
      },
      {
        id: "f6",
        label: "Have you reviewed an existing plan?",
        kind: "conditional",
        required: false,
        options: ["Yes, within 3 yrs", "Yes, 3+ yrs ago", "No"],
        branchLabel: "If 3+ yrs \u2014 flag for consult",
        crmField: "custom.plan-age",
      },
    ],
    crmSync: [
      { field: "Practice area", value: "tag.practice-area" },
      { field: "Home owner", value: "custom.home-owner" },
      { field: "Plan age", value: "custom.plan-age" },
    ],
    workflow: {
      trigger: "Form submitted",
      action: "Route to Trust consult calendar + tag \u201cTrust\u201d + score lead",
    },
  },
  {
    id: "quiz",
    label: "\u201cDo I Need a Trust?\u201d Quiz",
    icon: HelpCircle,
    purpose: "Educate & segment",
    description:
      "A scored quiz that educates the prospect on whether a trust fits their situation \u2014 then routes the result, the score, and the contact straight into your CRM.",
    fields: [
      {
        id: "f1",
        label: "What's the value of your estate?",
        kind: "select",
        required: true,
        options: ["Under $150k", "$150k\u2013$500k", "$500k\u2013$1M", "Over $1M"],
        crmField: "custom.estate-value",
      },
      {
        id: "f2",
        label: "Do you own real estate in more than one state?",
        kind: "select",
        required: true,
        options: ["Yes", "No"],
        crmField: "custom.multi-state",
      },
      {
        id: "f3",
        label: "Do you have minor children?",
        kind: "select",
        required: true,
        options: ["Yes", "No"],
        crmField: "custom.minor-children",
      },
      {
        id: "f4",
        label: "Are you concerned about probate?",
        kind: "select",
        required: true,
        options: ["Yes", "A little", "Not really"],
        crmField: "custom.probate-concern",
      },
      {
        id: "f5",
        label: "Your result",
        kind: "score",
        required: true,
        options: [
          "Strong fit \u2014 book a consult",
          "Worth a conversation",
          "A will may be enough",
        ],
        crmField: "custom.trust-fit-score",
      },
      {
        id: "f6",
        label: "Where should we send your results?",
        kind: "email",
        required: true,
        placeholder: "jordan@email.com",
        crmField: "contact.email",
      },
    ],
    crmSync: [
      { field: "Estate value", value: "custom.estate-value" },
      { field: "Trust fit score", value: "custom.trust-fit-score" },
      { field: "Multi-state", value: "custom.multi-state" },
    ],
    workflow: {
      trigger: "Quiz scored \u2018Strong fit\u2019",
      action: "Send results email + route to consult calendar + tag \u201cHigh-intent\u201d",
    },
  },
  {
    id: "survey",
    label: "Post-Matter Survey",
    icon: ListChecks,
    purpose: "Collect & trigger reviews",
    description:
      "A short survey after a matter closes \u2014 capture satisfaction, ask for a review, and trigger the reputation sequence only for happy clients.",
    fields: [
      {
        id: "f1",
        label: "How clearly did we explain your plan?",
        kind: "select",
        required: true,
        options: ["Very clear", "Mostly clear", "A bit confusing"],
        crmField: "custom.clarity-score",
      },
      {
        id: "f2",
        label: "How likely are you to refer us?",
        kind: "select",
        required: true,
        options: ["10/10", "8\u20139", "6\u20137", "Below 6"],
        crmField: "custom.nps",
      },
      {
        id: "f3",
        label: "Anything we could improve?",
        kind: "text",
        required: false,
        placeholder: "Optional feedback",
      },
      {
        id: "f4",
        label: "Would you leave us a review?",
        kind: "conditional",
        required: false,
        options: ["Yes \u2014 take me to it", "Maybe later", "No thanks"],
        branchLabel: "If yes \u2014 route to review request",
        crmField: "custom.review-willing",
      },
      {
        id: "f5",
        label: "Your email (for your thank-you)",
        kind: "email",
        required: true,
        placeholder: "jordan@email.com",
        crmField: "contact.email",
      },
    ],
    crmSync: [
      { field: "NPS", value: "custom.nps" },
      { field: "Clarity score", value: "custom.clarity-score" },
      { field: "Review willing", value: "custom.review-willing" },
    ],
    workflow: {
      trigger: "Survey NPS \u2265 9 + review willing",
      action: "Send review request + tag \u201cHappy client\u201d + add to referral list",
    },
  },
];

const KIND_META: Record<FieldKind, { label: string; icon: typeof Tag; tone: string }> = {
  text: { label: "Text", icon: FileText, tone: "text-slate-600 bg-slate-100 border-slate-200" },
  email: { label: "Email", icon: Mail, tone: "text-blue-700 bg-blue-50 border-blue-200" },
  phone: { label: "Phone", icon: Mail, tone: "text-violet-700 bg-violet-50 border-violet-200" },
  select: {
    label: "Dropdown",
    icon: ListChecks,
    tone: "text-amber-700 bg-amber-50 border-amber-200",
  },
  conditional: {
    label: "Conditional",
    icon: GitBranch,
    tone: "text-[#3344b8] bg-blue-50 border-blue-200",
  },
  score: { label: "Scored", icon: Zap, tone: "text-emerald-700 bg-emerald-50 border-emerald-200" },
};

// =============================================================
// Component
// =============================================================

export function FormsBuilderMockup() {
  const [activeForm, setActiveForm] = useState<FormTypeId>("intake");
  const form = FORMS.find((f) => f.id === activeForm)!;

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <ClipboardList className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Forms Builder · yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1 text-emerald-400 font-bold">
            <Database className="w-3.5 h-3.5" />
            Syncs to CRM live
          </span>
        </div>
      </div>

      {/* Form-type tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
        <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
          Form type
        </span>
        {FORMS.map((f) => {
          const Icon = f.icon;
          const isActive = activeForm === f.id;
          return (
            <button
              key={f.id}
              onClick={() => setActiveForm(f.id)}
              className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                isActive
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
              }`}
            >
              <Icon className="w-3.5 h-3.5" />
              {f.label}
            </button>
          );
        })}
      </div>

      {/* Purpose + description */}
      <div className="px-5 pt-4 pb-2 bg-white border-b border-slate-100">
        <div className="flex items-center gap-2 mb-1">
          <span className="inline-flex items-center gap-1.5 text-[10px] font-extrabold uppercase tracking-wider text-[#3344b8] bg-blue-50 border border-blue-200 px-2 py-0.5 rounded-full">
            <Zap className="w-3 h-3" />
            {form.purpose}
          </span>
        </div>
        <p className="text-sm text-slate-600 leading-relaxed">{form.description}</p>
      </div>

      {/* Builder canvas */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-0">
        {/* Fields list */}
        <div className="lg:col-span-2 p-4 sm:p-5 bg-white border-r border-slate-200">
          <div className="flex items-center justify-between mb-3">
            <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
              Fields · {form.fields.length}
            </span>
            <span className="inline-flex items-center gap-1 text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 rounded-full px-2 py-0.5">
              <ShieldCheck className="w-3 h-3" />
              Conditional logic on
            </span>
          </div>
          <div className="space-y-2.5">
            {form.fields.map((field) => {
              const meta = KIND_META[field.kind];
              const Icon = meta.icon;
              return (
                <div
                  key={field.id}
                  className="rounded-xl border border-slate-200 bg-white p-3 shadow-sm hover:shadow-md transition-shadow"
                >
                  <div className="flex items-start gap-3">
                    <GripVertical className="w-4 h-4 text-slate-300 shrink-0 mt-1.5" />
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center justify-between gap-2">
                        <span className="text-sm font-bold text-slate-800 leading-tight">
                          {field.label}
                          {field.required && <span className="text-rose-500 font-black"> *</span>}
                        </span>
                        <span
                          className={`inline-flex items-center gap-1 text-[9px] font-extrabold uppercase tracking-wider px-1.5 py-0.5 rounded-full border ${meta.tone}`}
                        >
                          <Icon className="w-2.5 h-2.5" />
                          {meta.label}
                        </span>
                      </div>
                      {field.placeholder && (
                        <div className="mt-1.5 rounded-lg border border-dashed border-slate-200 bg-slate-50 px-2.5 py-1.5 text-xs text-slate-400">
                          {field.placeholder}
                        </div>
                      )}
                      {field.options && (
                        <div className="mt-1.5 flex flex-wrap gap-1.5">
                          {field.options.map((opt) => (
                            <span
                              key={opt}
                              className="text-[10px] font-semibold text-slate-600 bg-slate-100 border border-slate-200 rounded-md px-1.5 py-0.5"
                            >
                              {opt}
                            </span>
                          ))}
                        </div>
                      )}
                      {field.branchLabel && (
                        <div className="mt-1.5 inline-flex items-center gap-1 text-[10px] font-bold text-[#3344b8] bg-blue-50 border border-blue-200 rounded-md px-2 py-0.5">
                          <GitBranch className="w-3 h-3" />
                          {field.branchLabel}
                        </div>
                      )}
                      {field.crmField && (
                        <div className="mt-1.5 inline-flex items-center gap-1 text-[10px] font-bold text-emerald-700">
                          <Database className="w-3 h-3" />
                          maps to {field.crmField}
                        </div>
                      )}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
          <button className="mt-3 w-full rounded-xl border border-dashed border-slate-300 text-slate-400 hover:border-[#3344b8]/40 hover:text-[#3344b8] text-xs font-bold py-2.5 inline-flex items-center justify-center gap-1.5 transition-colors">
            <Plus className="w-3.5 h-3.5" />
            Add field
          </button>
        </div>

        {/* Right rail: CRM sync + workflow */}
        <div className="bg-slate-50/80 p-4 sm:p-5 flex flex-col gap-4">
          <div>
            <div className="flex items-center gap-2 mb-2">
              <Database className="w-4 h-4 text-[#3344b8]" />
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-500">
                Maps to CRM
              </span>
            </div>
            <div className="space-y-1.5">
              {form.crmSync.map((sync) => (
                <div
                  key={sync.field}
                  className="rounded-lg border border-slate-200 bg-white px-2.5 py-1.5 flex items-center justify-between gap-2"
                >
                  <span className="text-[11px] font-bold text-slate-700">{sync.field}</span>
                  <code className="text-[10px] font-mono text-emerald-700 bg-emerald-50 border border-emerald-200 rounded px-1.5 py-0.5">
                    {sync.value}
                  </code>
                </div>
              ))}
            </div>
          </div>

          <div>
            <div className="flex items-center gap-2 mb-2">
              <Zap className="w-4 h-4 text-amber-500" />
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-500">
                Triggers workflow
              </span>
            </div>
            <div className="rounded-xl border border-amber-200 bg-amber-50 p-3">
              <div className="flex items-center gap-1.5 text-[11px] font-bold text-amber-800 mb-1">
                <span className="inline-flex items-center gap-1 bg-white border border-amber-200 rounded-md px-1.5 py-0.5">
                  <UserPlus className="w-3 h-3" />
                  {form.workflow.trigger}
                </span>
                <ChevronRight className="w-3 h-3 text-amber-400" />
              </div>
              <div className="text-xs font-bold text-amber-900 leading-snug flex items-start gap-1.5">
                <CalendarCheck className="w-3.5 h-3.5 shrink-0 mt-0.5 text-amber-600" />
                {form.workflow.action}
              </div>
            </div>
          </div>

          <div className="rounded-xl border border-emerald-200 bg-emerald-50 p-3 flex items-start gap-2">
            <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
            <p className="text-[11px] font-semibold text-emerald-800 leading-snug">
              No re-typing. No Zapier. The form writes straight to the contact record and fires the
              next step.
            </p>
          </div>
        </div>
      </div>

      {/* Footer routing strip */}
      <div className="px-5 py-4 bg-[#12193b] text-white flex flex-wrap items-center justify-between gap-3">
        <div className="flex items-center gap-2 text-xs font-bold text-slate-300">
          <ClipboardList className="w-4 h-4 text-amber-300" />
          Embed on any page · or share a link
        </div>
        <div className="flex items-center gap-2 text-[10px] font-bold">
          <span className="inline-flex items-center gap-1 text-emerald-300 bg-emerald-500/10 border border-emerald-500/30 rounded-full px-2.5 py-1">
            <Database className="w-3 h-3" />
            CRM
          </span>
          <ChevronRight className="w-3 h-3 text-slate-500" />
          <span className="inline-flex items-center gap-1 text-amber-300 bg-amber-500/10 border border-amber-500/30 rounded-full px-2.5 py-1">
            <Zap className="w-3 h-3" />
            Workflow
          </span>
          <ChevronRight className="w-3 h-3 text-slate-500" />
          <span className="inline-flex items-center gap-1 text-blue-200 bg-blue-500/10 border border-blue-500/30 rounded-full px-2.5 py-1">
            <CalendarCheck className="w-3 h-3" />
            Calendar
          </span>
        </div>
      </div>
    </div>
  );
}

// Re-export icons used by the page footer (kept referenced so tree-shaking is predictable)
export { ArrowRight };
