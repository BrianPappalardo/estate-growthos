import { useState } from "react";
import {
  Mail,
  MailOpen,
  Send,
  Users,
  MousePointerClick,
  Eye,
  Calendar,
  Repeat,
  Zap,
  CheckCircle2,
  Inbox,
  TrendingUp,
} from "lucide-react";

const BROADCASTS = [
  {
    name: "October Newsletter — Trust Updates",
    status: "Sent",
    sent: "412",
    opened: "63%",
    clicked: "24%",
    date: "Oct 14",
  },
  {
    name: "Free Trust Review — Q4 Offer",
    status: "Sent",
    sent: "287",
    opened: "71%",
    clicked: "38%",
    date: "Oct 7",
  },
  {
    name: "Estate Planning Awareness Month",
    status: "Scheduled",
    sent: "—",
    opened: "—",
    clicked: "—",
    date: "Oct 28",
  },
];

const DRIP_STEPS = [
  {
    step: 1,
    name: "Welcome + What is a trust?",
    delay: "Immediately",
    type: "Email",
    icon: MailOpen,
  },
  {
    step: 2,
    name: "The cost of doing nothing",
    delay: "2 days later",
    type: "Email",
    icon: Mail,
  },
  {
    step: 3,
    name: "Client story — the Miller family",
    delay: "3 days later",
    type: "Email",
    icon: Mail,
  },
  {
    step: 4,
    name: "Pricing video + book a consult",
    delay: "2 days later",
    type: "Email + Booking",
    icon: Send,
  },
  {
    step: 5,
    name: "Final nudge — last chance",
    delay: "3 days later",
    type: "Text",
    icon: Zap,
  },
];

/**
 * Interactive mockup for the Leadli Email Marketing product page.
 *
 * Switches between a broadcast campaign list (with open/click analytics) and a
 * visual drip-sequence builder so visitors can see both modes side by side.
 */
export function EmailMarketingMockup() {
  const [tab, setTab] = useState<"broadcast" | "drip">("broadcast");

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-2xl overflow-hidden">
      {/* Window chrome */}
      <div className="flex items-center gap-2 px-5 py-3 border-b border-slate-200 bg-slate-50">
        <div className="flex gap-1.5">
          <div className="w-3 h-3 rounded-full bg-rose-300" />
          <div className="w-3 h-3 rounded-full bg-amber-300" />
          <div className="w-3 h-3 rounded-full bg-emerald-300" />
        </div>
        <div className="flex-1 text-center text-xs font-bold text-slate-400 tracking-wide">
          leadli.app — Email Marketing
        </div>
        <Inbox className="w-4 h-4 text-slate-300" />
      </div>

      {/* Tab switcher */}
      <div className="flex gap-1 p-3 border-b border-slate-200 bg-white">
        <button
          onClick={() => setTab("broadcast")}
          className={`flex-1 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl text-sm font-bold transition-all ${
            tab === "broadcast"
              ? "bg-[#3344b8] text-white shadow-md"
              : "bg-slate-50 text-slate-600 hover:bg-slate-100"
          }`}
        >
          <Send className="w-4 h-4" />
          Broadcast Campaigns
        </button>
        <button
          onClick={() => setTab("drip")}
          className={`flex-1 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl text-sm font-bold transition-all ${
            tab === "drip"
              ? "bg-[#3344b8] text-white shadow-md"
              : "bg-slate-50 text-slate-600 hover:bg-slate-100"
          }`}
        >
          <Repeat className="w-4 h-4" />
          Drip Sequence Builder
        </button>
      </div>

      {/* BROADCAST TAB */}
      {tab === "broadcast" && (
        <div className="p-5 sm:p-6">
          <div className="flex items-center justify-between mb-5">
            <div>
              <h3 className="text-base font-black text-[#12193b]">Campaigns</h3>
              <p className="text-xs text-slate-500 mt-0.5">
                Every send, tracked — no separate Mailchimp export
              </p>
            </div>
            <button className="inline-flex items-center gap-2 px-3 py-2 rounded-lg bg-emerald-500/10 text-emerald-700 text-xs font-bold border border-emerald-200">
              <Mail className="w-4 h-4" />
              New Broadcast
            </button>
          </div>

          <div className="space-y-3">
            {BROADCASTS.map((camp) => (
              <div
                key={camp.name}
                className="rounded-2xl border border-slate-200 p-4 hover:border-[#3344b8]/40 hover:shadow-sm transition-all"
              >
                <div className="flex items-start justify-between gap-3 mb-3">
                  <div className="min-w-0">
                    <p className="text-sm font-bold text-[#12193b] truncate">{camp.name}</p>
                    <div className="flex items-center gap-2 mt-1">
                      <span
                        className={`text-[10px] font-extrabold uppercase tracking-wider px-1.5 py-0.5 rounded-full border ${
                          camp.status === "Sent"
                            ? "bg-emerald-50 text-emerald-700 border-emerald-200"
                            : "bg-amber-50 text-amber-700 border-amber-200"
                        }`}
                      >
                        {camp.status}
                      </span>
                      <span className="text-[11px] text-slate-400 font-semibold inline-flex items-center gap-1">
                        <Calendar className="w-3 h-3" />
                        {camp.date}
                      </span>
                    </div>
                  </div>
                </div>

                <div className="grid grid-cols-3 gap-2">
                  <div className="rounded-xl bg-slate-50 border border-slate-100 p-2.5 text-center">
                    <div className="text-[10px] uppercase font-bold text-slate-400 tracking-wide">
                      Sent
                    </div>
                    <div className="text-base font-black text-[#12193b] mt-0.5">{camp.sent}</div>
                  </div>
                  <div className="rounded-xl bg-emerald-50/60 border border-emerald-100 p-2.5 text-center">
                    <div className="text-[10px] uppercase font-bold text-emerald-600/70 tracking-wide">
                      Opened
                    </div>
                    <div className="text-base font-black text-emerald-700 mt-0.5">
                      {camp.opened}
                    </div>
                  </div>
                  <div className="rounded-xl bg-[#3344b8]/5 border border-[#3344b8]/10 p-2.5 text-center">
                    <div className="text-[10px] uppercase font-bold text-[#3344b8]/70 tracking-wide">
                      Clicked
                    </div>
                    <div className="text-base font-black text-[#3344b8] mt-0.5">{camp.clicked}</div>
                  </div>
                </div>
              </div>
            ))}
          </div>

          <div className="mt-5 p-4 rounded-2xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white">
            <div className="flex items-center gap-2 mb-2">
              <TrendingUp className="w-4 h-4 text-amber-300" />
              <span className="text-xs font-bold uppercase tracking-wider text-amber-300">
                Why this matters
              </span>
            </div>
            <p className="text-xs text-slate-200 leading-relaxed">
              Open and click rates live in the same CRM as your pipeline. The 38% who clicked the
              booking link are flagged — your intake team knows exactly who to call first.
            </p>
          </div>
        </div>
      )}

      {/* DRIP TAB */}
      {tab === "drip" && (
        <div className="p-5 sm:p-6">
          <div className="flex items-center justify-between mb-5">
            <div>
              <h3 className="text-base font-black text-[#12193b]">New Lead — Trust Education</h3>
              <p className="text-xs text-slate-500 mt-0.5">
                Runs automatically for every new inquiry — no manual sends
              </p>
            </div>
            <div className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-emerald-50 border border-emerald-200">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
              <span className="text-xs font-bold text-emerald-700">Active</span>
            </div>
          </div>

          <div className="relative">
            {/* Vertical connector line */}
            <div className="absolute left-[27px] top-2 bottom-2 w-0.5 bg-slate-200" />

            <div className="space-y-3">
              {DRIP_STEPS.map((s) => {
                const Icon = s.icon;
                return (
                  <div key={s.step} className="relative flex items-start gap-3">
                    <div className="relative z-10 w-12 h-12 rounded-xl bg-white border-2 border-[#3344b8] flex items-center justify-center text-[#3344b8] shrink-0 shadow-sm">
                      <Icon className="w-5 h-5" />
                    </div>
                    <div className="flex-1 rounded-2xl border border-slate-200 p-4 bg-white">
                      <div className="flex items-start justify-between gap-2">
                        <div className="min-w-0">
                          <p className="text-sm font-bold text-[#12193b]">{s.name}</p>
                          <p className="text-xs text-slate-500 mt-1 inline-flex items-center gap-1.5">
                            <Calendar className="w-3.5 h-3.5" />
                            {s.delay}
                          </p>
                        </div>
                        <span className="text-[10px] font-extrabold uppercase tracking-wider px-2 py-1 rounded-full bg-slate-100 text-slate-500 whitespace-nowrap">
                          {s.type}
                        </span>
                      </div>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>

          <div className="mt-5 grid grid-cols-3 gap-2">
            <div className="rounded-xl bg-slate-50 border border-slate-100 p-3 text-center">
              <Users className="w-5 h-5 text-[#3344b8] mx-auto mb-1" />
              <div className="text-xs font-bold text-slate-600">Smart List</div>
              <div className="text-[11px] text-slate-400">New inquiries</div>
            </div>
            <div className="rounded-xl bg-slate-50 border border-slate-100 p-3 text-center">
              <MousePointerClick className="w-5 h-5 text-[#3344b8] mx-auto mb-1" />
              <div className="text-xs font-bold text-slate-600">Trigger</div>
              <div className="text-[11px] text-slate-400">Form submit</div>
            </div>
            <div className="rounded-xl bg-slate-50 border border-slate-100 p-3 text-center">
              <CheckCircle2 className="w-5 h-5 text-emerald-600 mx-auto mb-1" />
              <div className="text-xs font-bold text-slate-600">Goal</div>
              <div className="text-[11px] text-slate-400">Book consult</div>
            </div>
          </div>
        </div>
      )}

      {/* Footer metric strip */}
      <div className="flex items-center justify-around px-5 py-4 border-t border-slate-200 bg-slate-50/60">
        <div className="flex items-center gap-2">
          <Eye className="w-4 h-4 text-emerald-600" />
          <span className="text-xs font-bold text-slate-700">67% avg open rate</span>
        </div>
        <div className="w-px h-4 bg-slate-200" />
        <div className="flex items-center gap-2">
          <Inbox className="w-4 h-4 text-[#3344b8]" />
          <span className="text-xs font-bold text-slate-700">412 active subscribers</span>
        </div>
        <div className="w-px h-4 bg-slate-200" />
        <div className="flex items-center gap-2">
          <MailOpen className="w-4 h-4 text-amber-500" />
          <span className="text-xs font-bold text-slate-700">No separate app</span>
        </div>
      </div>
    </div>
  );
}
