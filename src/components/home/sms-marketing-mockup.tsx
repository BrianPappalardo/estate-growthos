import { useState } from "react";
import {
  Smartphone,
  Send,
  MessageSquare,
  MessageCircle,
  Users,
  CheckCheck,
  Clock,
  ArrowLeft,
  ArrowRight,
  Ban,
  Zap,
  Bell,
  Phone,
  CheckCircle2,
  TrendingUp,
} from "lucide-react";

type Tab = "one_to_one" | "one_to_many";

interface Message {
  id: string;
  from: "firm" | "client";
  text: string;
  time: string;
  read?: boolean;
}

interface Conversation {
  id: string;
  name: string;
  phone: string;
  stage: string;
  stageColor: string;
  lastActivity: string;
  unread: boolean;
  messages: Message[];
}

const CONVERSATIONS: Conversation[] = [
  {
    id: "c1",
    name: "Sarah Mitchell",
    phone: "(503) 555-0142",
    stage: "Consult Booked",
    stageColor: "text-emerald-700 bg-emerald-50 border-emerald-200",
    lastActivity: "2 min ago",
    unread: true,
    messages: [
      {
        id: "m1",
        from: "client",
        text: "Hi! I filled out the form on your site. Do you have any openings next week?",
        time: "9:14 AM",
      },
      {
        id: "m2",
        from: "firm",
        text: "Hi Sarah, thanks for reaching out! Yes — I have Thursday at 2pm or Friday at 10am. Either work for a 30-min consult. Which fits?",
        time: "9:16 AM",
        read: true,
      },
      {
        id: "m3",
        from: "client",
        text: "Thursday at 2 works. Should I bring anything?",
        time: "9:18 AM",
      },
      {
        id: "m4",
        from: "firm",
        text: "Just yourself 🙂 I'll send a calendar link and a short video that covers the basics so we can skip the setup and get right to your situation.",
        time: "9:19 AM",
        read: true,
      },
    ],
  },
  {
    id: "c2",
    name: "Robert Chen",
    phone: "(503) 555-0188",
    stage: "Engagement Sent",
    stageColor: "text-amber-700 bg-amber-50 border-amber-200",
    lastActivity: "1 hr ago",
    unread: false,
    messages: [
      {
        id: "m1",
        from: "firm",
        text: "Hi Robert, following up on the engagement letter I sent over. Any questions before you sign?",
        time: "Yesterday",
        read: true,
      },
      {
        id: "m2",
        from: "client",
        text: "Almost done reviewing — should have it back by tomorrow.",
        time: "1 hr ago",
      },
    ],
  },
  {
    id: "c3",
    name: "Linda Park",
    phone: "(503) 555-0203",
    stage: "New Inquiry",
    stageColor: "text-blue-700 bg-blue-50 border-blue-200",
    lastActivity: "3 hr ago",
    unread: false,
    messages: [
      {
        id: "m1",
        from: "client",
        text: "My mom passed away last month and I need help with her estate. Do you do probate?",
        time: "11:02 AM",
      },
      {
        id: "m2",
        from: "firm",
        text: "I'm so sorry for your loss, Linda. Yes, we handle probate. Let's get a call on the books so I can understand the situation — here's my calendar link.",
        time: "11:04 AM",
        read: true,
      },
    ],
  },
];

interface Campaign {
  id: string;
  name: string;
  status: "sent" | "scheduled" | "draft";
  sent: string;
  delivered: string;
  replied: string;
  optedOut: string;
  date: string;
  template: string;
}

const CAMPAIGNS: Campaign[] = [
  {
    id: "k1",
    name: "Q4 Trust Review — Past Clients",
    status: "sent",
    sent: "248",
    delivered: "241",
    replied: "34",
    optedOut: "2",
    date: "Oct 14",
    template:
      "Hi {first_name}, it's been a while since we set up your trust. A lot can change in a few years — want a quick 15-min review to make sure it still fits your family? Reply YES and I'll send a link.",
  },
  {
    id: "k2",
    name: "Webinar Reminder — Trusts 101",
    status: "sent",
    sent: "189",
    delivered: "187",
    replied: "22",
    optedOut: "0",
    date: "Oct 9",
    template:
      "Quick reminder: our free Trusts 101 webinar is Thursday at noon. Here's your link to join: [link]. Can't make it live? We'll send the replay.",
  },
  {
    id: "k3",
    name: "November Nurture — New Inquiries",
    status: "scheduled",
    sent: "—",
    delivered: "—",
    replied: "—",
    optedOut: "—",
    date: "Oct 28",
    template:
      "Hi {first_name}, following up on your inquiry about estate planning. Do you still have questions I can answer? I have a few openings next week.",
  },
];

const STATUS_STYLES: Record<Campaign["status"], string> = {
  sent: "bg-emerald-50 text-emerald-700 border-emerald-200",
  scheduled: "bg-amber-50 text-amber-700 border-amber-200",
  draft: "bg-slate-50 text-slate-500 border-slate-200",
};

const STATUS_LABELS: Record<Campaign["status"], string> = {
  sent: "Sent",
  scheduled: "Scheduled",
  draft: "Draft",
};

/**
 * Interactive mockup for the Leadli SMS Marketing product page.
 *
 * Switches between a 1-to-1 conversation view (two-way texting tied to a
 * CRM contact) and a 1-to-many campaign view (bulk broadcasts with
 * delivery, reply, and opt-out analytics).
 */
export function SmsMarketingMockup() {
  const [tab, setTab] = useState<Tab>("one_to_one");
  const [activeConvId, setActiveConvId] = useState<string>(CONVERSATIONS[0]!.id);
  const [activeCampId, setActiveCampId] = useState<string>(CAMPAIGNS[0]!.id);

  const activeConv = CONVERSATIONS.find((c) => c.id === activeConvId);
  const activeCamp = CAMPAIGNS.find((c) => c.id === activeCampId);
  if (!activeConv || !activeCamp) return null;

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
          leadli.app &mdash; SMS Marketing
        </div>
        <Smartphone className="w-4 h-4 text-slate-300" />
      </div>

      {/* Tab switcher */}
      <div className="flex gap-1 p-3 border-b border-slate-200 bg-white">
        <button
          onClick={() => setTab("one_to_one")}
          className={`flex-1 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl text-sm font-bold transition-all ${
            tab === "one_to_one"
              ? "bg-[#3344b8] text-white shadow-md"
              : "bg-slate-50 text-slate-600 hover:bg-slate-100"
          }`}
        >
          <MessageSquare className="w-4 h-4" />
          1-to-1 Conversations
        </button>
        <button
          onClick={() => setTab("one_to_many")}
          className={`flex-1 inline-flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl text-sm font-bold transition-all ${
            tab === "one_to_many"
              ? "bg-[#3344b8] text-white shadow-md"
              : "bg-slate-50 text-slate-600 hover:bg-slate-100"
          }`}
        >
          <Send className="w-4 h-4" />
          1-to-Many Campaigns
        </button>
      </div>

      {/* ===== 1-TO-1 TAB ===== */}
      {tab === "one_to_one" && (
        <div className="grid grid-cols-1 lg:grid-cols-12">
          {/* Conversation list */}
          <div className="lg:col-span-4 border-b lg:border-b-0 lg:border-r border-slate-200 p-3 sm:p-4 max-h-[480px] lg:max-h-none">
            <div className="flex items-center justify-between mb-3 px-1">
              <div className="text-xs font-black text-[#12193b]">Inbox</div>
              <span className="inline-flex items-center gap-1 text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 px-2 py-0.5 rounded-full">
                <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse" />
                Live
              </span>
            </div>
            <div className="space-y-1.5">
              {CONVERSATIONS.map((conv) => (
                <button
                  key={conv.id}
                  onClick={() => setActiveConvId(conv.id)}
                  className={`w-full text-left rounded-xl border p-3 transition-all ${
                    conv.id === activeConvId
                      ? "border-[#3344b8] bg-blue-50/50"
                      : "border-slate-200 hover:border-slate-300"
                  }`}
                >
                  <div className="flex items-start justify-between gap-2">
                    <div className="min-w-0 flex-1">
                      <div className="flex items-center gap-2">
                        <span className="text-sm font-bold text-[#12193b] truncate">
                          {conv.name}
                        </span>
                        {conv.unread && (
                          <span className="w-2 h-2 rounded-full bg-[#3344b8] shrink-0" />
                        )}
                      </div>
                      <div className="text-[10px] text-slate-400 font-medium mt-0.5">
                        {conv.phone}
                      </div>
                      <span
                        className={`mt-1.5 inline-block text-[9px] font-bold uppercase tracking-wider px-1.5 py-0.5 rounded-full border ${conv.stageColor}`}
                      >
                        {conv.stage}
                      </span>
                    </div>
                    <div className="text-[9px] text-slate-400 font-medium shrink-0 pt-0.5">
                      {conv.lastActivity}
                    </div>
                  </div>
                </button>
              ))}
            </div>
          </div>

          {/* Thread + CRM context */}
          <div className="lg:col-span-8 p-4 sm:p-5 bg-[#fcfbf8]">
            <div className="flex items-center justify-between mb-4">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-gradient-to-br from-[#3344b8] to-amber-500 flex items-center justify-center text-white text-sm font-black shrink-0">
                  {activeConv.name.charAt(0)}
                </div>
                <div>
                  <div className="text-sm font-black text-[#12193b]">{activeConv.name}</div>
                  <div className="flex items-center gap-2 text-[11px] text-slate-500 font-medium">
                    <Phone className="w-3 h-3" />
                    {activeConv.phone}
                  </div>
                </div>
              </div>
              <span
                className={`text-[10px] font-bold uppercase tracking-wider px-2 py-1 rounded-full border ${activeConv.stageColor}`}
              >
                {activeConv.stage}
              </span>
            </div>

            {/* Message thread */}
            <div className="space-y-3 mb-4 max-h-[260px] overflow-y-auto pr-1">
              {activeConv.messages.map((msg) => (
                <div
                  key={msg.id}
                  className={`flex ${msg.from === "firm" ? "justify-end" : "justify-start"}`}
                >
                  <div
                    className={`max-w-[80%] rounded-2xl px-3.5 py-2.5 text-sm ${
                      msg.from === "firm"
                        ? "bg-[#3344b8] text-white rounded-br-sm"
                        : "bg-white border border-slate-200 text-slate-800 rounded-bl-sm"
                    }`}
                  >
                    <p className="leading-relaxed">{msg.text}</p>
                    <div
                      className={`flex items-center gap-1 mt-1 text-[9px] ${
                        msg.from === "firm" ? "text-blue-200" : "text-slate-400"
                      }`}
                    >
                      <span>{msg.time}</span>
                      {msg.from === "firm" && <CheckCheck className="w-3 h-3 text-emerald-300" />}
                    </div>
                  </div>
                </div>
              ))}
            </div>

            {/* Composer */}
            <div className="flex items-center gap-2 rounded-2xl border border-slate-200 bg-white p-2">
              <input
                disabled
                placeholder="Type a reply&hellip;"
                className="flex-1 bg-transparent text-sm text-slate-700 placeholder:text-slate-400 px-2 outline-none"
              />
              <div className="inline-flex items-center gap-1.5 px-3 py-2 rounded-xl bg-[#3344b8] text-white text-xs font-bold">
                <Send className="w-3.5 h-3.5" />
                Send
              </div>
            </div>

            {/* CRM tie-in */}
            <div className="mt-4 flex items-start gap-2.5 text-xs text-slate-500">
              <ArrowRight className="w-4 h-4 text-[#3344b8] shrink-0 mt-0.5 rotate-0" />
              <span className="leading-relaxed">
                Every text is tied to the contact&rsquo;s CRM record &mdash; pipeline stage, last
                email, consult date, and notes live right next to the conversation. No separate
                texting app, no lost context.
              </span>
            </div>
          </div>
        </div>
      )}

      {/* ===== 1-TO-MANY TAB ===== */}
      {tab === "one_to_many" && (
        <div className="grid grid-cols-1 lg:grid-cols-12">
          {/* Campaign list */}
          <div className="lg:col-span-5 border-b lg:border-b-0 lg:border-r border-slate-200 p-4 sm:p-5">
            <div className="flex items-center justify-between mb-4">
              <div>
                <h3 className="text-base font-black text-[#12193b]">Campaigns</h3>
                <p className="text-xs text-slate-500 mt-0.5">
                  Bulk sends &mdash; tracked end to end
                </p>
              </div>
              <button className="inline-flex items-center gap-2 px-3 py-2 rounded-lg bg-emerald-500/10 text-emerald-700 text-xs font-bold border border-emerald-200">
                <Send className="w-4 h-4" />
                New
              </button>
            </div>

            <div className="space-y-2.5">
              {CAMPAIGNS.map((camp) => (
                <button
                  key={camp.id}
                  onClick={() => setActiveCampId(camp.id)}
                  className={`w-full text-left rounded-2xl border p-4 transition-all ${
                    camp.id === activeCampId
                      ? "border-[#3344b8] bg-blue-50/50 shadow-sm"
                      : "border-slate-200 hover:border-slate-300"
                  }`}
                >
                  <div className="flex items-start justify-between gap-2 mb-2">
                    <p className="text-sm font-bold text-[#12193b] leading-snug">{camp.name}</p>
                    <span
                      className={`text-[9px] font-bold uppercase tracking-wider px-2 py-0.5 rounded-full border shrink-0 ${STATUS_STYLES[camp.status]}`}
                    >
                      {STATUS_LABELS[camp.status]}
                    </span>
                  </div>
                  <div className="flex items-center gap-3 text-[10px] text-slate-500 font-medium">
                    <span className="inline-flex items-center gap-1">
                      <Clock className="w-3 h-3" />
                      {camp.date}
                    </span>
                    {camp.status === "sent" && (
                      <>
                        <span className="inline-flex items-center gap-1">
                          <CheckCheck className="w-3 h-3 text-emerald-600" />
                          {camp.delivered} delivered
                        </span>
                        <span className="inline-flex items-center gap-1">
                          <MessageCircle className="w-3 h-3 text-[#3344b8]" />
                          {camp.replied} replied
                        </span>
                      </>
                    )}
                  </div>
                </button>
              ))}
            </div>
          </div>

          {/* Campaign detail */}
          <div className="lg:col-span-7 p-4 sm:p-5 bg-[#fcfbf8]">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-sm font-black text-[#12193b]">{activeCamp.name}</h3>
              <span
                className={`text-[10px] font-bold uppercase tracking-wider px-2 py-1 rounded-full border ${STATUS_STYLES[activeCamp.status]}`}
              >
                {STATUS_LABELS[activeCamp.status]}
              </span>
            </div>

            {/* Analytics */}
            {activeCamp.status === "sent" ? (
              <div className="grid grid-cols-4 gap-2 mb-5">
                <div className="rounded-xl bg-white border border-slate-200 p-3 text-center">
                  <div className="text-[9px] uppercase font-bold text-slate-400 tracking-wide">
                    Sent
                  </div>
                  <div className="text-lg font-black text-[#12193b] mt-0.5">{activeCamp.sent}</div>
                </div>
                <div className="rounded-xl bg-emerald-50/60 border border-emerald-100 p-3 text-center">
                  <div className="text-[9px] uppercase font-bold text-emerald-600/70 tracking-wide">
                    Delivered
                  </div>
                  <div className="text-lg font-black text-emerald-700 mt-0.5">
                    {activeCamp.delivered}
                  </div>
                </div>
                <div className="rounded-xl bg-[#3344b8]/5 border border-[#3344b8]/10 p-3 text-center">
                  <div className="text-[9px] uppercase font-bold text-[#3344b8]/70 tracking-wide">
                    Replied
                  </div>
                  <div className="text-lg font-black text-[#3344b8] mt-0.5">
                    {activeCamp.replied}
                  </div>
                </div>
                <div className="rounded-xl bg-rose-50/60 border border-rose-100 p-3 text-center">
                  <div className="text-[9px] uppercase font-bold text-rose-600/70 tracking-wide">
                    Opt-out
                  </div>
                  <div className="text-lg font-black text-rose-700 mt-0.5">
                    {activeCamp.optedOut}
                  </div>
                </div>
              </div>
            ) : (
              <div className="rounded-2xl border border-slate-200 bg-white p-4 mb-5 flex items-center gap-3">
                <Clock className="w-5 h-5 text-amber-500 shrink-0" />
                <div>
                  <div className="text-sm font-bold text-[#12193b]">
                    {activeCamp.status === "scheduled" ? "Scheduled" : "Draft"} for{" "}
                    {activeCamp.date}
                  </div>
                  <div className="text-[11px] text-slate-500 font-medium">
                    Delivery analytics appear here once the send goes out.
                  </div>
                </div>
              </div>
            )}

            {/* Template preview */}
            <div className="rounded-2xl border border-slate-200 bg-white p-4 mb-4">
              <div className="flex items-center gap-2 mb-2.5">
                <Smartphone className="w-4 h-4 text-[#3344b8]" />
                <span className="text-[11px] font-bold uppercase tracking-wider text-slate-500">
                  Message preview
                </span>
              </div>
              <div className="rounded-xl bg-[#12193b] px-4 py-3 max-w-[90%]">
                <p className="text-xs text-slate-100 leading-relaxed">{activeCamp.template}</p>
              </div>
              <div className="flex items-center gap-2 mt-2.5 text-[10px] text-slate-400 font-medium">
                <Users className="w-3 h-3" />
                Sent to a Smart List of {activeCamp.sent === "—"
                  ? "past clients"
                  : activeCamp.sent}{" "}
                contacts
              </div>
            </div>

            {/* Compliance row */}
            <div className="flex flex-wrap items-center gap-2">
              <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-[11px] font-bold">
                <CheckCircle2 className="w-3.5 h-3.5" />
                Opt-out handled
              </span>
              <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-blue-50 border border-blue-200 text-[#3344b8] text-[11px] font-bold">
                <Ban className="w-3.5 h-3.5" />
                STOP auto-removes
              </span>
              <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-amber-50 border border-amber-200 text-amber-800 text-[11px] font-bold">
                <Zap className="w-3.5 h-3.5" />
                Triggered by automation
              </span>
            </div>
          </div>
        </div>
      )}

      {/* Footer metric strip */}
      <div className="flex items-center justify-around px-5 py-4 border-t border-slate-200 bg-slate-50/60">
        <div className="flex items-center gap-2">
          <MessageSquare className="w-4 h-4 text-[#3344b8]" />
          <span className="text-xs font-bold text-slate-700">2-way replies</span>
        </div>
        <div className="w-px h-4 bg-slate-200" />
        <div className="flex items-center gap-2">
          <Bell className="w-4 h-4 text-amber-500" />
          <span className="text-xs font-bold text-slate-700">Auto reminders</span>
        </div>
        <div className="w-px h-4 bg-slate-200" />
        <div className="flex items-center gap-2">
          <TrendingUp className="w-4 h-4 text-emerald-600" />
          <span className="text-xs font-bold text-slate-700">14% reply rate</span>
        </div>
      </div>
    </div>
  );
}
