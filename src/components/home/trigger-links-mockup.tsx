import { useState } from "react";
import {
  Mail,
  MessageSquare,
  Globe,
  Zap,
  Bell,
  Tag,
  Send,
  Calendar,
  Video,
  ArrowRight,
  CheckCircle2,
  MousePointerClick,
} from "lucide-react";

type Channel = "email" | "text" | "page";

interface AutomationStep {
  icon: typeof Zap;
  label: string;
  tone: "amber" | "blue" | "emerald";
}

interface TriggerLink {
  id: string;
  label: string;
  channel: Channel;
  channelLabel: string;
  channelIcon: typeof Mail;
  clicks: number;
  automation: AutomationStep[];
}

const LINKS: TriggerLink[] = [
  {
    id: "trust-curious",
    label: "Is a trust right for you?",
    channel: "email",
    channelLabel: "Nurture email",
    channelIcon: Mail,
    clicks: 142,
    automation: [
      { icon: Tag, label: 'Tag contact — "trust-curious"', tone: "amber" },
      { icon: Video, label: "Send the trust education video sequence", tone: "blue" },
      { icon: Bell, label: "Notify your team — warm lead, trust interest", tone: "emerald" },
    ],
  },
  {
    id: "book-consult",
    label: "Book your free consult",
    channel: "text",
    channelLabel: "Follow-up text",
    channelIcon: MessageSquare,
    clicks: 89,
    automation: [
      { icon: Tag, label: 'Tag contact — "consult-ready"', tone: "amber" },
      { icon: Calendar, label: "Open the estate planning consult calendar", tone: "blue" },
      { icon: Send, label: "Send confirmation + pre-consult intake form", tone: "emerald" },
    ],
  },
  {
    id: "pricing-video",
    label: "Watch our pricing video",
    channel: "email",
    channelLabel: "Pre-consult email",
    channelIcon: Mail,
    clicks: 67,
    automation: [
      { icon: Tag, label: 'Tag contact — "pricing-educated"', tone: "amber" },
      {
        icon: Bell,
        label: "Flag for the consult: watched pricing — expect less sticker shock",
        tone: "blue",
      },
      { icon: CheckCircle2, label: "Move to the ready-to-hire pipeline stage", tone: "emerald" },
    ],
  },
  {
    id: "checklist",
    label: "Download our estate planning checklist",
    channel: "page",
    channelLabel: "Landing page",
    channelIcon: Globe,
    clicks: 203,
    automation: [
      { icon: Tag, label: 'Tag contact — "lead-magnet"', tone: "amber" },
      { icon: Send, label: "Start the 5-part nurture sequence", tone: "blue" },
      { icon: Bell, label: "Notify team — new inbound lead from checklist", tone: "emerald" },
    ],
  },
];

const TONE_STYLES: Record<
  "amber" | "blue" | "emerald",
  { bg: string; border: string; text: string }
> = {
  amber: { bg: "bg-amber-50", border: "border-amber-200", text: "text-amber-700" },
  blue: { bg: "bg-blue-50", border: "border-blue-200", text: "text-[#3344b8]" },
  emerald: { bg: "bg-emerald-50", border: "border-emerald-200", text: "text-emerald-700" },
};

export function TriggerLinksMockup() {
  const [selectedId, setSelectedId] = useState<string>(LINKS[0]!.id);
  const selected = (LINKS.find((l) => l.id === selectedId) ?? LINKS[0])!;
  const totalClicks = LINKS.reduce((sum, l) => sum + l.clicks, 0);

  return (
    <div className="rounded-3xl border border-slate-200 bg-white overflow-hidden shadow-lg">
      {/* Dashboard header */}
      <div className="flex items-center justify-between px-5 sm:px-6 py-4 border-b border-slate-200 bg-slate-50">
        <div className="flex items-center gap-2.5">
          <div className="w-8 h-8 rounded-lg bg-[#12193b] flex items-center justify-center text-amber-300">
            <Zap className="w-4 h-4" />
          </div>
          <div>
            <div className="text-sm font-black text-[#12193b]">Trigger Links</div>
            <div className="text-[11px] text-slate-500 font-medium">Live automation dashboard</div>
          </div>
        </div>
        <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 px-2.5 py-1 rounded-full">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse" />
          {totalClicks} clicks tracked
        </span>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12">
        {/* Left: link list */}
        <div className="lg:col-span-5 border-b lg:border-b-0 lg:border-r border-slate-200 p-4 sm:p-5">
          <div className="text-[11px] font-bold uppercase tracking-wider text-slate-400 mb-3 px-1">
            Your trigger links
          </div>
          <div className="space-y-2">
            {LINKS.map((link) => {
              const Icon = link.channelIcon;
              const isActive = link.id === selectedId;
              return (
                <button
                  key={link.id}
                  onClick={() => setSelectedId(link.id)}
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
                      <Icon className="w-4 h-4" />
                    </div>
                    <div className="min-w-0 flex-1">
                      <div className="text-sm font-bold text-[#12193b] truncate">{link.label}</div>
                      <div className="text-[11px] text-slate-500 font-medium">
                        {link.channelLabel}
                      </div>
                    </div>
                    <div className="text-right shrink-0">
                      <div className="text-sm font-black text-[#12193b]">{link.clicks}</div>
                      <div className="text-[10px] text-slate-400 font-medium">clicks</div>
                    </div>
                  </div>
                </button>
              );
            })}
          </div>
        </div>

        {/* Right: automation detail */}
        <div className="lg:col-span-7 p-5 sm:p-6 bg-[#fcfbf8]">
          <div className="flex items-center gap-2 mb-1">
            <MousePointerClick className="w-4 h-4 text-[#3344b8]" />
            <span className="text-[11px] font-bold uppercase tracking-wider text-slate-500">
              When this link is clicked
            </span>
          </div>
          <div className="text-base font-black text-[#12193b] mb-5">
            &ldquo;{selected.label}&rdquo;
          </div>

          <div className="space-y-1">
            {selected.automation.map((step, i) => {
              const Icon = step.icon;
              const tone = TONE_STYLES[step.tone];
              const isLast = i === selected.automation.length - 1;
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
                    <span className="text-sm font-semibold text-slate-700">{step.label}</span>
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
              <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
              <span className="leading-relaxed">
                Fires the instant they click. No form to fill out, no button to press, no manual
                follow-up. And you know <em>exactly</em> who clicked &mdash; per contact, in real
                time.
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
