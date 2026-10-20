import { useState } from "react";
import {
  CalendarCheck,
  Clock,
  FileText,
  UserCheck,
  Bell,
  MessageSquare,
  ArrowRight,
  Users,
  RefreshCw,
  ShieldCheck,
  CheckCircle2,
  Zap,
  Briefcase,
  ScrollText,
  Scale,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type ServiceId = "estate-planning" | "trust-review" | "will-signing" | "probate";

type IntakeField = { label: string; required: boolean };

type AfterBookingItem = { label: string; detail: string; icon: typeof Zap };

type Service = {
  id: ServiceId;
  label: string;
  shortLabel: string;
  icon: typeof CalendarCheck;
  duration: string;
  buffer: string;
  assignee: string;
  routing: string;
  intakeFields: IntakeField[];
  afterBooking: AfterBookingItem[];
  accent: string;
};

// =============================================================
// Service data
// =============================================================

const SERVICES: Service[] = [
  {
    id: "estate-planning",
    label: "Estate Planning Consult",
    shortLabel: "Estate Planning",
    icon: Briefcase,
    duration: "60 min",
    buffer: "30 min before · 30 min after",
    assignee: "Round-robin · Estate Planning Team",
    routing: "Routed by practice area tag",
    intakeFields: [
      { label: "Full name & email", required: true },
      { label: "Phone number", required: true },
      { label: "Do you have an existing estate plan?", required: true },
      { label: "Estimated estate value range", required: false },
      { label: "Family situation (married, children, etc.)", required: false },
      { label: "Primary concern for today", required: true },
    ],
    afterBooking: [
      { label: "Instant SMS confirmation", detail: "with calendar link", icon: MessageSquare },
      { label: "CRM tag fires", detail: "'estate-planning' + 'new-lead'", icon: UserCheck },
      { label: "Reminder sequence", detail: "24h + 1h before the call", icon: Bell },
    ],
    accent: "#3344b8",
  },
  {
    id: "trust-review",
    label: "Trust Planning Review",
    shortLabel: "Trust Review",
    icon: ScrollText,
    duration: "45 min",
    buffer: "15 min before · 30 min after",
    assignee: "Assigned to · Senior Partner",
    routing: "Routed to trust specialist only",
    intakeFields: [
      { label: "Full name & email", required: true },
      { label: "Phone number", required: true },
      { label: "Do you currently have a trust?", required: true },
      { label: "Trust type (revocable, irrevocable…)", required: false },
      { label: "Who is your current trustee?", required: false },
      { label: "Total assets in the trust (range)", required: false },
    ],
    afterBooking: [
      { label: "Instant SMS confirmation", detail: "with prep checklist", icon: MessageSquare },
      { label: "CRM tag fires", detail: "'trust-review' + 'high-value'", icon: UserCheck },
      { label: "Pre-call video sequence", detail: "trust basics sent", icon: Bell },
    ],
    accent: "#0d9488",
  },
  {
    id: "will-signing",
    label: "Will Signing & Witness",
    shortLabel: "Will Signing",
    icon: FileText,
    duration: "30 min",
    buffer: "15 min before · 15 min after",
    assignee: "Assigned to · Paralegal + Attorney",
    routing: "Co-assignment · two team members",
    intakeFields: [
      { label: "Full name & email", required: true },
      { label: "Phone number", required: true },
      { label: "Will prepared by our firm?", required: true },
      { label: "Number of witnesses needed", required: true },
      { label: "Notary required?", required: true },
      { label: "Preferred signing location", required: false },
    ],
    afterBooking: [
      { label: "Instant SMS confirmation", detail: "with signing checklist", icon: MessageSquare },
      { label: "CRM tag fires", detail: "'will-signing' + 'ready-to-sign'", icon: UserCheck },
      { label: "Witness confirmation request", detail: "auto-sent to witnesses", icon: Bell },
    ],
    accent: "#c2410c",
  },
  {
    id: "probate",
    label: "Probate Consultation",
    shortLabel: "Probate",
    icon: Scale,
    duration: "90 min",
    buffer: "30 min before · 45 min after",
    assignee: "Assigned to · Probate Specialist",
    routing: "Routed to probate team only",
    intakeFields: [
      { label: "Full name & email", required: true },
      { label: "Phone number", required: true },
      { label: "Relationship to the deceased", required: true },
      { label: "Has probate been opened?", required: true },
      { label: "Estimated estate size", required: false },
      { label: "Is there a will?", required: true },
    ],
    afterBooking: [
      { label: "Instant SMS confirmation", detail: "with document checklist", icon: MessageSquare },
      { label: "CRM tag fires", detail: "'probate' + 'urgent'", icon: UserCheck },
      { label: "Document request sequence", detail: "fires immediately on booking", icon: Bell },
    ],
    accent: "#9333ea",
  },
];

// =============================================================
// Component
// =============================================================

export function ServiceCalendarsMockup() {
  const [activeService, setActiveService] = useState<ServiceId>("estate-planning");
  const service = SERVICES.find((s) => s.id === activeService)!;
  const Icon = service.icon;

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <CalendarCheck className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Leadli Service Calendars &middot; yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1">
            <RefreshCw className="w-3.5 h-3.5 text-emerald-400" />
            {SERVICES.length} calendars live
          </span>
          <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
            <ShieldCheck className="w-3.5 h-3.5" />
            Every booking &rarr; CRM
          </span>
        </div>
      </div>

      {/* Service tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
        <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
          Service
        </span>
        {SERVICES.map((s) => {
          const TabIcon = s.icon;
          const isActive = activeService === s.id;
          return (
            <button
              key={s.id}
              onClick={() => setActiveService(s.id)}
              className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                isActive
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
              }`}
            >
              <TabIcon className="w-3.5 h-3.5" />
              {s.shortLabel}
            </button>
          );
        })}
      </div>

      {/* Service config */}
      <div className="p-4 sm:p-5 bg-slate-50/60 space-y-4">
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
          <div className="flex items-center gap-3">
            <div
              className="w-10 h-10 rounded-xl flex items-center justify-center shrink-0"
              style={{ backgroundColor: `${service.accent}15`, color: service.accent }}
            >
              <Icon className="w-5 h-5" />
            </div>
            <div>
              <div className="text-sm font-black text-[#12193b]">{service.label}</div>
              <div className="text-[11px] text-slate-500 font-semibold flex items-center gap-1.5">
                <Clock className="w-3.5 h-3.5" />
                {service.duration}
              </div>
            </div>
          </div>
        </div>

        {/* Config grid */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-3">
          {/* Left: Duration + Assignment + Routing */}
          <div className="space-y-3">
            <div className="rounded-2xl border border-slate-200 bg-white p-4">
              <div className="flex items-center gap-2 mb-3">
                <Clock className="w-4 h-4 text-[#3344b8]" />
                <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                  Duration &amp; buffers
                </span>
              </div>
              <div className="flex items-baseline justify-between mb-2">
                <span className="text-xs font-bold text-slate-600">Appointment length</span>
                <span className="text-sm font-black text-[#12193b]">{service.duration}</span>
              </div>
              <div className="flex items-baseline justify-between">
                <span className="text-xs font-bold text-slate-600">Buffer</span>
                <span className="text-xs font-bold text-slate-700">{service.buffer}</span>
              </div>
            </div>

            <div className="rounded-2xl border border-slate-200 bg-white p-4">
              <div className="flex items-center gap-2 mb-3">
                <Users className="w-4 h-4 text-[#3344b8]" />
                <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                  Assignment &amp; routing
                </span>
              </div>
              <div className="space-y-2.5">
                <div className="flex items-start gap-2 rounded-lg bg-slate-50 border border-slate-200 px-3 py-2">
                  <UserCheck className="w-4 h-4 text-[#3344b8] shrink-0 mt-0.5" />
                  <div className="text-[11px] font-bold text-slate-700">{service.assignee}</div>
                </div>
                <div className="flex items-start gap-2 rounded-lg bg-slate-50 border border-slate-200 px-3 py-2">
                  <ArrowRight className="w-4 h-4 text-[#3344b8] shrink-0 mt-0.5" />
                  <div className="text-[11px] font-bold text-slate-700">{service.routing}</div>
                </div>
              </div>
            </div>
          </div>

          {/* Right: Intake form + after booking */}
          <div className="space-y-3">
            <div className="rounded-2xl border border-slate-200 bg-white p-4">
              <div className="flex items-center justify-between mb-3">
                <div className="flex items-center gap-2">
                  <FileText className="w-4 h-4 text-[#3344b8]" />
                  <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Intake form for this service
                  </span>
                </div>
                <span className="text-[9px] font-extrabold uppercase bg-blue-50 text-[#3344b8] px-2 py-0.5 rounded-full border border-blue-200">
                  {service.intakeFields.length} fields
                </span>
              </div>
              <ul className="space-y-1.5">
                {service.intakeFields.map((field, i) => (
                  <li key={i} className="flex items-center gap-2 text-[11px]">
                    <CheckCircle2
                      className={`w-3 h-3 shrink-0 ${field.required ? "text-emerald-500" : "text-slate-300"}`}
                    />
                    <span className="font-bold text-slate-700">{field.label}</span>
                    {field.required && (
                      <span className="text-[8px] font-extrabold uppercase text-rose-400 ml-auto">
                        Required
                      </span>
                    )}
                  </li>
                ))}
              </ul>
            </div>

            <div className="rounded-2xl border border-slate-200 bg-white p-4">
              <div className="flex items-center gap-2 mb-3">
                <Zap className="w-4 h-4 text-amber-500" />
                <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                  Fires the moment they book
                </span>
              </div>
              <div className="space-y-2">
                {service.afterBooking.map((item, i) => {
                  const ItemIcon = item.icon;
                  return (
                    <div
                      key={i}
                      className="flex items-center gap-2.5 rounded-lg bg-slate-50 border border-slate-200 px-3 py-2"
                    >
                      <ItemIcon className="w-3.5 h-3.5 text-[#3344b8] shrink-0" />
                      <div className="min-w-0 flex-1">
                        <div className="text-[11px] font-bold text-slate-700 leading-tight">
                          {item.label}
                        </div>
                        <div className="text-[10px] text-slate-400 font-medium">{item.detail}</div>
                      </div>
                      <CheckCircle2 className="w-3.5 h-3.5 text-emerald-500 shrink-0" />
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Footer */}
      <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
        <span className="font-semibold">
          {SERVICES.length} service calendars &middot; each with its own form, buffers &amp; routing
        </span>
        <span className="inline-flex items-center gap-1.5 text-emerald-600 font-bold">
          <CheckCircle2 className="w-3.5 h-3.5" />
          Right calendar &rarr; right person &rarr; right consult
        </span>
      </div>
    </div>
  );
}
