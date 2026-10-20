import { useState } from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  MessageSquare,
  Mail,
  Send,
  Clock,
  Users,
  Zap,
  Bell,
  Search,
  Inbox,
  Tag,
  ShieldCheck,
  AlertCircle,
  Paperclip,
  Smile,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import {
  INBOX_THREADS,
  INBOX_CAPABILITIES,
  INBOX_CONNECTIONS,
  CHANNEL_ICONS,
  type ChannelId,
} from "./inbox-data";

/**
 * Dedicated sales page for the Leadli Unified Inbox product.
 *
 * Renders inside /feature/$slug when the slug is "inbox". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function InboxProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const [activeChannel, setActiveChannel] = useState<"all" | ChannelId>("all");

  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "inbox" && f.slug !== "crm" && f.slug !== "automation" && f.slug !== "cloud-phone",
  ).slice(0, 7);

  return (
    <main>
      {/* ===== HERO ===== */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-tr from-[#3344b8]/30 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="mb-6 flex flex-col items-start gap-3">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              All Leadli Features
            </Link>

            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
              <Sparkles className="w-4 h-4 text-amber-400" />
              Communication · Unified Inbox
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Inbox className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Unified Inbox
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Email, SMS, social, and web chat in one inbox — tied to the contact they belong to,
                answered in seconds instead of hours.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Every conversation with a prospect or client lives in one place, threaded right next to
            their CRM record. Reply by email or text, hand it off to your team, and never lose track
            of a thread buried in a tab you forgot to check. No more “who was handling that?” No
            more messages that slipped through.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Email inbox",
              "Separate SMS app",
              "Social DMs",
              "Live chat tool",
              "The “did anyone reply?” Slack thread",
            ].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
              >
                {name}
              </span>
            ))}
          </div>

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              Included with Leadli at one flat $199/mo rate. See how it fits your firm on a
              30-minute call.
            </p>
          </div>
        </div>
      </section>

      {/* ===== THE LEAK ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-12">
            <div className="lg:col-span-5">
              <span className="text-xs font-bold uppercase tracking-wider text-rose-600 bg-rose-50 px-3 py-1 rounded-full border border-rose-200 inline-block">
                The leak
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight leading-tight">
                Your messages are everywhere. Your replies are nowhere.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect emails on Monday. The same one texts on Tuesday. Your Facebook page DM
                gets a question on Wednesday. Three inboxes, three notifications, three places to
                forget to check. By the time someone finds the thread, the lead booked with the firm
                that answered in four minutes — not four hours.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli’s unified inbox pulls every one of those into a single view — email, SMS,
                social messages, and web chat — all threaded to the contact they belong to. You see
                the whole history in one place, reply in whatever channel makes sense, and hand it
                to your team without forwarding, copying, or explaining the backstory. The lead gets
                a fast answer. You get a clean inbox.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "One inbox for every channel",
                  "Tied to the CRM record",
                  "Replied to in minutes, not hours",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    {item}
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== INBOX MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              One stream
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every conversation. One inbox. Zero dropped threads.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch channels to see how email, text, social, and web chat all land side by side —
              every thread tied to the person who sent it.
            </p>
          </div>

          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Inbox className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Unified Inbox · yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Bell className="w-3.5 h-3.5 text-amber-400" />3 unread
                </span>
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  Live
                </span>
              </div>
            </div>

            <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
                Channel
              </span>
              {(
                [
                  { id: "all", label: "All", icon: Inbox },
                  { id: "email", label: "Email", icon: Mail },
                  { id: "sms", label: "SMS", icon: MessageSquare },
                  { id: "social", label: "Social", icon: Send },
                  { id: "chat", label: "Web Chat", icon: Send },
                ] as const
              ).map((ch) => {
                const Icon = ch.icon;
                const isActive = activeChannel === ch.id;
                return (
                  <button
                    key={ch.id}
                    onClick={() => setActiveChannel(ch.id)}
                    className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                      isActive
                        ? "bg-[#3344b8] text-white shadow-md"
                        : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
                    }`}
                  >
                    <Icon className="w-3.5 h-3.5" />
                    {ch.label}
                  </button>
                );
              })}
              <div className="ml-auto hidden sm:flex items-center gap-1.5 text-[10px] text-slate-400 font-bold">
                <Search className="w-3.5 h-3.5" />
                Search any contact
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-12">
              <div className="lg:col-span-5 border-b lg:border-b-0 lg:border-r border-slate-200 bg-white divide-y divide-slate-100">
                {INBOX_THREADS.filter(
                  (t) => activeChannel === "all" || t.channel === activeChannel,
                ).map((thread) => {
                  const Icon = CHANNEL_ICONS[thread.channel];
                  const isActive = thread.id === "t1";
                  return (
                    <div
                      key={thread.id}
                      className={`px-4 py-4 flex items-start gap-3 cursor-pointer transition-colors ${
                        isActive ? "bg-blue-50/60" : "hover:bg-slate-50"
                      }`}
                    >
                      <div
                        className={`w-9 h-9 rounded-full flex items-center justify-center text-xs font-black shrink-0 ${
                          thread.unread
                            ? "bg-[#3344b8]/10 text-[#3344b8]"
                            : "bg-slate-100 text-slate-500"
                        }`}
                      >
                        {thread.initials}
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center justify-between gap-2">
                          <span className="text-sm font-bold text-[#12193b] truncate">
                            {thread.name}
                          </span>
                          <span className="text-[10px] text-slate-400 font-medium shrink-0">
                            {thread.time}
                          </span>
                        </div>
                        <div className="flex items-center gap-1.5 mt-0.5">
                          <span className="inline-flex items-center gap-1 text-[10px] font-bold text-slate-500 bg-slate-100 px-1.5 py-0.5 rounded">
                            <Icon className="w-3 h-3" />
                            {thread.channelLabel}
                          </span>
                          {thread.unread && (
                            <span className="w-1.5 h-1.5 rounded-full bg-[#3344b8]" />
                          )}
                        </div>
                        <p className="mt-1 text-xs text-slate-600 leading-relaxed truncate">
                          {thread.preview}
                        </p>
                      </div>
                    </div>
                  );
                })}
              </div>

              <div className="lg:col-span-7 bg-slate-50/60 flex flex-col">
                <div className="px-5 py-4 border-b border-slate-200 bg-white flex items-center justify-between">
                  <div className="flex items-center gap-3">
                    <div className="w-9 h-9 rounded-full bg-[#3344b8]/10 flex items-center justify-center text-xs font-black text-[#3344b8]">
                      CR
                    </div>
                    <div>
                      <div className="text-sm font-bold text-[#12193b]">Caroline Reynolds</div>
                      <div className="text-[10px] text-slate-500 font-medium flex items-center gap-2">
                        <span className="inline-flex items-center gap-1">
                          <Mail className="w-3 h-3" />
                          Email
                        </span>
                        <span className="text-slate-300">·</span>
                        <span className="inline-flex items-center gap-1">
                          <Tag className="w-3 h-3" />
                          Consult booked
                        </span>
                      </div>
                    </div>
                  </div>
                  <span className="text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 px-2 py-1 rounded-full inline-flex items-center gap-1">
                    <CheckCircle2 className="w-3 h-3" />
                    CRM linked
                  </span>
                </div>

                <div className="flex-1 px-5 py-5 space-y-4">
                  <div className="max-w-[85%]">
                    <div className="text-[10px] font-bold text-slate-400 mb-1">
                      Caroline · 9:14 AM
                    </div>
                    <div className="rounded-2xl rounded-tl-sm bg-white border border-slate-200 p-3.5 text-sm text-slate-700 leading-relaxed">
                      Hi! I filled out the form on your site — really hoping to get my mom’s trust
                      set up before the end of the year. What does the consult usually cover?
                    </div>
                  </div>
                  <div className="max-w-[85%] ml-auto">
                    <div className="text-[10px] font-bold text-slate-400 mb-1 text-right">
                      Your team · 9:18 AM
                    </div>
                    <div className="rounded-2xl rounded-tr-sm bg-[#3344b8] text-white p-3.5 text-sm leading-relaxed">
                      Hi Caroline! Great timing. The consult covers exactly what you need for your
                      mom’s situation. I just sent a link with a short video on what a trust costs —
                      it’ll save you time on the call. You’re booked for Thursday at 2.
                    </div>
                  </div>
                  <div className="max-w-[85%]">
                    <div className="text-[10px] font-bold text-slate-400 mb-1">
                      Caroline · 9:22 AM
                    </div>
                    <div className="rounded-2xl rounded-tl-sm bg-white border border-slate-200 p-3.5 text-sm text-slate-700 leading-relaxed">
                      Just watched it — perfect, exactly what I needed. See you Thursday!
                    </div>
                  </div>
                </div>

                <div className="px-5 py-4 border-t border-slate-200 bg-white">
                  <div className="rounded-2xl border border-slate-200 bg-slate-50/80 p-3">
                    <div className="text-sm text-slate-400 mb-3">
                      Reply by email or text — same thread, same contact.
                    </div>
                    <div className="flex items-center gap-2">
                      <button className="inline-flex items-center gap-1.5 px-3 py-2 rounded-lg bg-white border border-slate-200 text-xs font-bold text-[#3344b8] hover:border-[#3344b8]/40 transition-colors cursor-pointer">
                        <Mail className="w-3.5 h-3.5" />
                        Email
                      </button>
                      <button className="inline-flex items-center gap-1.5 px-3 py-2 rounded-lg bg-white border border-slate-200 text-xs font-bold text-slate-500 hover:border-[#3344b8]/40 hover:text-[#3344b8] transition-colors cursor-pointer">
                        <MessageSquare className="w-3.5 h-3.5" />
                        SMS
                      </button>
                      <div className="ml-auto flex items-center gap-1.5 text-slate-400">
                        <Paperclip className="w-4 h-4" />
                        <Smile className="w-4 h-4" />
                        <button className="inline-flex items-center gap-1.5 px-3.5 py-2 rounded-lg bg-[#3344b8] text-white text-xs font-bold hover:bg-[#25349c] transition-colors cursor-pointer">
                          <Send className="w-3.5 h-3.5" />
                          Send
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                4 channels · 1 inbox · every thread tied to a CRM record
              </span>
              <span className="flex items-center gap-1.5">
                <Zap className="w-3.5 h-3.5 text-amber-600" />
                Auto-replies & assignment on
              </span>
            </div>
          </div>

          <div className="mt-8 grid grid-cols-1 sm:grid-cols-3 gap-4">
            <div className="rounded-2xl border border-slate-200 bg-white p-5 text-center">
              <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-rose-50 text-rose-600 mx-auto mb-3">
                <Clock className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#12193b]">3+ hrs</div>
              <div className="text-xs text-slate-500 font-medium mt-1">
                Before — across scattered tabs
              </div>
            </div>
            <div className="rounded-2xl border border-emerald-200 bg-emerald-50/60 p-5 text-center">
              <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-emerald-100 text-emerald-700 mx-auto mb-3">
                <Zap className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-emerald-700">~14 min</div>
              <div className="text-xs text-emerald-700 font-medium mt-1">
                With Leadli — one inbox
              </div>
            </div>
            <div className="rounded-2xl border border-slate-200 bg-white p-5 text-center">
              <div className="flex items-center justify-center w-10 h-10 rounded-xl bg-blue-50 text-[#3344b8] mx-auto mb-3">
                <Users className="w-5 h-5" />
              </div>
              <div className="text-2xl font-black text-[#12193b]">0</div>
              <div className="text-xs text-slate-500 font-medium mt-1">
                Threads lost to the wrong tab
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              What you get
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              One inbox built around how your firm actually talks to people.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {INBOX_CAPABILITIES.map((cap) => {
              const Icon = cap.icon;
              return (
                <div
                  key={cap.title}
                  className="rounded-2xl border border-slate-200 p-6 bg-white hover:shadow-md transition-shadow"
                >
                  <div className="flex items-start gap-4">
                    <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                      <Icon className="w-5 h-5" />
                    </div>
                    <div>
                      <h3 className="font-black text-base text-[#12193b]">{cap.title}</h3>
                      <p className="text-sm text-slate-600 mt-1.5 leading-relaxed">{cap.body}</p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-10 rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-5">
              <div>
                <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300 mb-1">
                  Included in Leadli
                </div>
                <p className="text-sm text-slate-200 leading-relaxed max-w-xl">
                  The unified inbox is part of the single platform we configure around how your firm
                  communicates. No separate email tool, no extra SMS subscription, no live-chat
                  add-on.
                </p>
              </div>
              <div className="flex items-baseline gap-2 shrink-0">
                <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                <span className="text-3xl font-black text-amber-300">$199/mo</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== DEEP DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Users className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Built for a team</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Hand a conversation off without forwarding the whole backstory.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Assign a thread to the person who should own it. They see the full history — what
                the prospect asked, what your team already said, what they booked — without you
                writing a summary email. Everyone works from the same thread, and nothing gets lost
                in someone’s personal inbox on vacation.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Assign any thread to a teammate",
                  "Internal notes that stay with the conversation",
                  "See who replied and when — no guessing",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Zap className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Never the wrong tab again
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Every channel lands in the same place — tied to the same person.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Email, SMS, social DMs, and web chat all funnel into one view, each one attached to
                the contact it belongs to. No more checking four apps for one reply. No more asking
                “did anyone answer that?” The answer is in the inbox, next to the record.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Email, SMS, social & web chat in one stream",
                  "Every thread linked to the CRM record",
                  "Reply in whatever channel makes sense",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Your inbox knows what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no copy-paste. When a lead takes an action, the thread already has the
              context.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {INBOX_CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
                    <Icon className="w-5 h-5" />
                  </div>
                  <span className="text-xs font-bold text-slate-700 leading-snug">
                    {conn.label}
                  </span>
                </div>
              );
            })}
          </div>

          <div className="mt-10 flex items-start gap-3 rounded-2xl bg-amber-50/70 border border-amber-200 p-5">
            <AlertCircle className="w-5 h-5 text-amber-700 shrink-0 mt-0.5" />
            <p className="text-sm text-amber-900 leading-relaxed">
              <span className="font-black">And it’s all the same lead.</span> The inbox, the CRM,
              the calendar, the automations — one record, one contact, one timeline. When someone
              texts after booking, the thread already knows they booked.
            </p>
          </div>
        </div>
      </section>

      {/* ===== MORE FEATURES ===== */}
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              The unified inbox is just the start. Explore the rest of what’s included with Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-white border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
              >
                {f.name}
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let’s see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We’ll learn how your firm communicates today, tell you honestly whether
            we’re a fit, and give you a clear estimate.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-amber-500 hover:bg-amber-600 text-slate-950 rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>
    </main>
  );
}
