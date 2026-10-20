import { useState } from "react";
import {
  Video,
  Calendar,
  Bell,
  Mail,
  MessageSquare,
  PlayCircle,
  Send,
  Users,
  Clock,
  CheckCircle2,
  ArrowRight,
  Tag,
  FileText,
  RotateCcw,
} from "lucide-react";

type Mode = "live" | "evergreen";

interface Step {
  icon: typeof Bell;
  label: string;
  sub: string;
  tone: "amber" | "blue" | "emerald";
  timing: string;
}

interface Webinar {
  id: string;
  title: string;
  subtitle: string;
  mode: Mode;
  date: string;
  capacity: number;
  registered: number;
  steps: Step[];
}

const WEBINARS: Webinar[] = [
  {
    id: "trust-101",
    title: "Trusts 101: What Every Family Needs to Know",
    subtitle: "Live monthly webinar",
    mode: "live",
    date: "Thu, Nov 21 · 12:00 PM",
    capacity: 50,
    registered: 37,
    steps: [
      {
        icon: CheckCircle2,
        label: "Registration confirmed",
        sub: "Confirmation email + calendar invite sent instantly",
        tone: "emerald",
        timing: "On registration",
      },
      {
        icon: FileText,
        label: "Pre-webinar intake form",
        sub: "Capture their questions before the call",
        tone: "amber",
        timing: "On registration",
      },
      {
        icon: Mail,
        label: "Reminder — 1 day before",
        sub: "Email: 'Your seat is reserved for tomorrow'",
        tone: "blue",
        timing: "Nov 20",
      },
      {
        icon: MessageSquare,
        label: "Reminder — morning of",
        sub: "SMS: 'See you at noon — here's your link'",
        tone: "blue",
        timing: "Nov 21, 8:00 AM",
      },
      {
        icon: PlayCircle,
        label: "Live webinar",
        sub: "Attendance tracked, no-shows flagged automatically",
        tone: "emerald",
        timing: "Nov 21, 12:00 PM",
      },
      {
        icon: Send,
        label: "Replay + nurture sequence",
        sub: "Replay to no-shows, next-step sequence to attendees",
        tone: "amber",
        timing: "Within 1 hour",
      },
    ],
  },
  {
    id: "evergreen-trust",
    title: "Is a Trust Right for Your Family?",
    subtitle: "Evergreen on-demand",
    mode: "evergreen",
    date: "Available 24/7",
    capacity: 999,
    registered: 214,
    steps: [
      {
        icon: CheckCircle2,
        label: "Registration confirmed",
        sub: "Instant access link + calendar reminder for their time",
        tone: "emerald",
        timing: "On registration",
      },
      {
        icon: Tag,
        label: "Tag contact — 'webinar-registered'",
        sub: "Pipeline stage moves to 'Educating'",
        tone: "amber",
        timing: "On registration",
      },
      {
        icon: Mail,
        label: "Reminder — 15 min before",
        sub: "Email: 'Your session is about to start'",
        tone: "blue",
        timing: "Before viewing",
      },
      {
        icon: PlayCircle,
        label: "On-demand viewing",
        sub: "Watch tracked, drop-offs flagged",
        tone: "emerald",
        timing: "Their schedule",
      },
      {
        icon: Send,
        label: "Post-viewing nurture",
        sub: "3-part sequence — pricing video, consult offer, follow-up",
        tone: "amber",
        timing: "After viewing",
      },
      {
        icon: Bell,
        label: "Notify team — hot lead",
        sub: "If they watch 80%+, your team gets pinged",
        tone: "emerald",
        timing: "After viewing",
      },
    ],
  },
];

const MODE_LABELS: Record<Mode, string> = {
  live: "Live webinar",
  evergreen: "Evergreen on-demand",
};

const TONE_STYLES: Record<
  "amber" | "blue" | "emerald",
  { bg: string; border: string; text: string }
> = {
  amber: { bg: "bg-amber-50", border: "border-amber-200", text: "text-amber-700" },
  blue: { bg: "bg-blue-50", border: "border-blue-200", text: "text-[#3344b8]" },
  emerald: { bg: "bg-emerald-50", border: "border-emerald-200", text: "text-emerald-700" },
};

export function WebinarFunnelsMockup() {
  const [selectedId, setSelectedId] = useState<string>(WEBINARS[0]?.id ?? "");
  const selected = WEBINARS.find((w) => w.id === selectedId) ?? WEBINARS[0];
  const pct = selected ? Math.round((selected.registered / selected.capacity) * 100) : 0;

  if (!selected) return null;

  return (
    <div className="rounded-3xl border border-slate-200 bg-white overflow-hidden shadow-lg">
      {/* Dashboard header */}
      <div className="flex items-center justify-between px-5 sm:px-6 py-4 border-b border-slate-200 bg-slate-50">
        <div className="flex items-center gap-2.5">
          <div className="w-8 h-8 rounded-lg bg-[#12193b] flex items-center justify-center text-amber-300">
            <Video className="w-4 h-4" />
          </div>
          <div>
            <div className="text-sm font-black text-[#12193b]">Webinar Funnels</div>
            <div className="text-[11px] text-slate-500 font-medium">
              Automated registration, reminders & nurture
            </div>
          </div>
        </div>
        <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 px-2.5 py-1 rounded-full">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse" />
          {MODE_LABELS[selected.mode]}
        </span>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12">
        {/* Left: webinar list */}
        <div className="lg:col-span-5 border-b lg:border-b-0 lg:border-r border-slate-200 p-4 sm:p-5">
          <div className="text-[11px] font-bold uppercase tracking-wider text-slate-400 mb-3 px-1">
            Your webinars
          </div>
          <div className="space-y-2">
            {WEBINARS.map((w) => {
              const isActive = w.id === selectedId;
              return (
                <button
                  key={w.id}
                  onClick={() => setSelectedId(w.id)}
                  className={`w-full text-left rounded-xl border p-3.5 transition-all ${
                    isActive
                      ? "border-[#3344b8] bg-blue-50/50 shadow-sm"
                      : "border-slate-200 bg-white hover:border-slate-300"
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <div
                      className={`w-9 h-9 rounded-lg flex items-center justify-center shrink-0 ${
                        isActive ? "bg-[#3344b8] text-white" : "bg-slate-100 text-slate-500"
                      }`}
                    >
                      <Video className="w-4 h-4" />
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="text-sm font-bold text-[#12193b] truncate">{w.title}</div>
                      <div className="text-[11px] text-slate-500 font-medium">{w.subtitle}</div>
                    </div>
                    <div className="text-right shrink-0">
                      <div className="text-sm font-black text-[#12193b]">{w.registered}</div>
                      <div className="text-[10px] text-slate-400 font-medium">registered</div>
                    </div>
                  </div>
                </button>
              );
            })}
          </div>

          {/* Capacity meter */}
          <div className="mt-5 rounded-xl border border-slate-200 bg-[#fcfbf8] p-4">
            <div className="flex items-center justify-between mb-2">
              <div className="flex items-center gap-1.5 text-[11px] font-bold text-slate-500">
                <Users className="w-3.5 h-3.5" />
                Capacity
              </div>
              <div className="text-[11px] font-bold text-slate-700">
                {selected.registered}/{selected.capacity}
              </div>
            </div>
            <div className="h-2 rounded-full bg-slate-200 overflow-hidden">
              <div
                className="h-full rounded-full bg-gradient-to-r from-[#3344b8] to-amber-400 transition-all"
                style={{ width: `${Math.min(pct, 100)}%` }}
              />
            </div>
          </div>
        </div>

        {/* Right: automation sequence */}
        <div className="lg:col-span-7 p-5 sm:p-6 bg-[#fcfbf8]">
          <div className="flex items-center gap-2 mb-1">
            <Calendar className="w-4 h-4 text-[#3344b8]" />
            <span className="text-[11px] font-bold uppercase tracking-wider text-slate-500">
              {selected.date}
            </span>
          </div>
          <div className="text-base font-black text-[#12193b] mb-1">{selected.title}</div>
          <div className="text-xs text-slate-500 font-medium mb-5">
            {selected.subtitle} · {selected.registered} registrants · runs {selected.steps.length}{" "}
            automated steps
          </div>

          <div className="space-y-1">
            {selected.steps.map((step, i) => {
              const Icon = step.icon;
              const tone = TONE_STYLES[step.tone];
              const isLast = i === selected.steps.length - 1;
              return (
                <div key={i}>
                  <div
                    className={`flex items-center gap-3 rounded-xl ${tone.bg} border ${tone.border} px-4 py-3`}
                  >
                    <div
                      className={`w-8 h-8 rounded-lg bg-white flex items-center justify-center ${tone.text} shrink-0 border ${tone.border}`}
                    >
                      <Icon className="w-4 h-4" />
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="text-sm font-bold text-slate-800">{step.label}</div>
                      <div className="text-[11px] text-slate-500 leading-snug">{step.sub}</div>
                    </div>
                    <div className="text-right shrink-0">
                      <div className="flex items-center gap-1 text-[10px] font-bold text-slate-400">
                        <Clock className="w-3 h-3" />
                        {step.timing}
                      </div>
                    </div>
                  </div>
                  {!isLast && (
                    <div className="flex justify-center py-1.5">
                      <ArrowRight className="w-4 h-4 text-slate-300 rotate-90" />
                    </div>
                  )}
                </div>
              );
            })}
          </div>

          <div className="mt-5 pt-4 border-t border-slate-200">
            <div className="flex items-start gap-2.5 text-xs text-slate-500">
              <RotateCcw className="w-4 h-4 text-[#3344b8] shrink-0 mt-0.5" />
              <span className="leading-relaxed">
                Every registrant flows straight into your CRM — tagged, staged, and ready for the
                post-webinar nurture sequence. No imports, no spreadsheets, no “did they attend?”
                The funnel remembers for you.
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
