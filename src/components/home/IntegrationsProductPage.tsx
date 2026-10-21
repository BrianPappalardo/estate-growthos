import { useState } from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Bot,
  Zap,
  ShieldCheck,
  RefreshCw,
  BrainCircuit,
  Webhook,
  FileText,
  Calendar,
  Database,
  AlertCircle,
  Layers,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import {
  AI_MESSAGES,
  AI_CONTEXT,
  INTEGRATION_CARDS,
  INTEGRATIONS_CAPABILITIES,
  INTEGRATION_CONNECTIONS,
} from "./integrations-data";

/**
 * Dedicated sales page for the Leadli Integrations + AI Tools product.
 *
 * Renders inside /feature/$slug when the slug is "integrations". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function IntegrationsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const [activeView, setActiveView] = useState<"ai" | "integrations">("ai");

  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "integrations" &&
      f.slug !== "voice-ai" &&
      f.slug !== "ai-agent-studio" &&
      f.slug !== "automation" &&
      f.slug !== "inbox",
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
              Platform · Integrations & AI Tools
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Bot className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Integrations & AI Tools
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                A built-in AI assistant and clean integrations with the tools you can't live without
                — so your firm runs in one place, not seven.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Leadli includes a conversation AI engine for smart response drafting and transcription,
            plus native connectors and webhooks that tie your practice management software, phone
            system, and calendar to the rest of the platform. Need to connect something specialized?
            We integrate it. No separate AI subscriptions, no custom API glue, no Zapier middleman.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "ChatGPT subscription",
              "Otter.ai",
              "Zapier & Make",
              "Custom API glue",
              "Copy-paste between tools",
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
                Your tools don't talk to each other. So you pay three times for the same work.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect emails a question. You draft a reply in one tab, paste it into another,
                and remember to log it in a third. Meanwhile you're paying for a transcription tool,
                a separate AI subscription, and a Zapier plan that breaks every time one of them
                updates their API. Every handoff is another chance to lose a thread — and another
                monthly bill for software that only does one thing.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli pulls the AI assistant and the integrations inside the same platform as your
                CRM, your calendar, and your inbox. The AI drafts the reply from the contact's
                history. The integration pushes the signed matter into your practice management
                software automatically. One login, one bill, and nothing falls through the cracks
                between them.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "AI inside the platform, not a separate tab",
                  "Native integrations, not Zapier glue",
                  "One subscription, not seven",
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

      {/* ===== AI + INTEGRATIONS MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              The assistant that knows your firm — and the tools it talks to.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between the built-in AI assistant and the integrations that connect your
              practice management, phone, and calendar. Both live inside Leadli.
            </p>
          </div>

          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Layers className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Integrations & AI · yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Zap className="w-3.5 h-3.5 text-amber-400" />
                  Automations on
                </span>
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  Live
                </span>
              </div>
            </div>

            <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
                View
              </span>
              {(
                [
                  { id: "ai", label: "AI Assistant", icon: Bot },
                  { id: "integrations", label: "Integrations", icon: Layers },
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
                        ? "bg-[#3344b8] text-white shadow-md"
                        : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
                    }`}
                  >
                    <Icon className="w-3.5 h-3.5" />
                    {tab.label}
                  </button>
                );
              })}
            </div>

            <div className="p-5 sm:p-6 bg-slate-50/60">
              {activeView === "ai" ? <AiAssistantMockup /> : <IntegrationsMockup />}
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                {activeView === "ai"
                  ? "AI drafts from the contact record \u00b7 no copy-paste"
                  : "Native connectors \u00b7 no Zapier middleman"}
              </span>
              <span className="flex items-center gap-1.5">
                <ShieldCheck className="w-3.5 h-3.5 text-emerald-600" />
                {activeView === "ai"
                  ? "Your data stays in-platform"
                  : "Two-way sync, not one-way export"}
              </span>
            </div>
          </div>
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              AI and integrations wired into the way your firm runs.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {INTEGRATIONS_CAPABILITIES.map((cap) => {
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
                  The AI assistant and integrations are part of the single platform we configure
                  around the way your firm actually works. No separate AI subscription, no Zapier
                  plan, no API glue to maintain.
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

      {/* ===== DEEP DIVE: AI + NATIVE INTEGRATIONS ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <BrainCircuit className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  AI that knows your firm
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Draft replies, transcribe calls, and summarize matters — without leaving the CRM.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                The built-in conversation AI reads the contact's history — their emails, their
                consult notes, the stage they're in — and drafts a reply that actually sounds like
                you wrote it. Review it, tweak it, and send it from the same screen. No pasting into
                a separate chat window, no “as an AI” disclaimers, no third tab.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Smart reply drafts from the full contact history",
                  "Call transcription and summary notes auto-filed",
                  "Message tone in your firm's voice, not a robot's",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Webhook className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Native, not glued
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Connect your practice management, phone, and calendar without a Zapier plan.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Leadli talks to the tools you already run on — natively, two-way, and without a
                middleman that breaks every time an API changes. A signed matter pushes into your
                practice management software automatically. A booked consult shows on your phone
                system. A paid invoice updates your accounting tool. One platform, zero glue.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Native two-way sync — not one-way export",
                  "Webhook triggers for anything Leadli doesn't do natively",
                  "We build the connection for you, so it stays working",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
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
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Every integration updates the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              A signed matter, a booked call, a paid invoice — each one ripples through every
              connected tool without you touching it.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {INTEGRATION_CONNECTIONS.map((conn) => {
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
              Integrations & AI Tools are just the start. Explore the rest of what's included with
              Leadli.
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
            Let's connect your firm to one platform.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map the tools you run on today, tell you honestly which ones Leadli
            can replace, and give you a clear estimate.
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

// =============================================================
// AI Assistant mockup
// =============================================================

function AiAssistantMockup() {
  return (
    <div className="grid grid-cols-1 lg:grid-cols-2 gap-5">
      {/* Conversation thread */}
      <div className="rounded-2xl bg-white border border-slate-200 overflow-hidden flex flex-col">
        <div className="px-4 py-3 border-b border-slate-100 flex items-center justify-between">
          <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
            Contact: Maria L.
          </span>
          <span className="text-[10px] font-bold text-[#3344b8] bg-blue-50 px-2 py-0.5 rounded-full border border-blue-200">
            Consult Booked
          </span>
        </div>
        <div className="flex-1 p-4 space-y-3 bg-slate-50/50 min-h-[280px]">
          {AI_MESSAGES.map((msg) => (
            <div
              key={msg.id}
              className={`flex ${msg.from === "client" ? "justify-start" : "justify-end"}`}
            >
              <div
                className={`max-w-[85%] rounded-2xl px-3.5 py-2.5 text-xs leading-relaxed ${
                  msg.from === "client"
                    ? "bg-white border border-slate-200 text-slate-700"
                    : msg.draft
                      ? "bg-amber-50 border border-amber-200 text-slate-700"
                      : "bg-[#3344b8] text-white"
                }`}
              >
                <div className="text-[10px] font-bold uppercase tracking-wider mb-1 opacity-60">
                  {msg.from === "client" ? "Maria" : msg.draft ? "AI draft" : "You"}
                </div>
                {msg.text}
                {msg.draft && (
                  <div className="mt-2 flex items-center gap-2 text-[10px] font-bold text-amber-700">
                    <span className="flex items-center gap-1">
                      <BrainCircuit className="w-3 h-3" />
                      Drafted from contact history
                    </span>
                  </div>
                )}
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* AI context panel */}
      <div className="rounded-2xl bg-white border border-slate-200 overflow-hidden">
        <div className="px-4 py-3 border-b border-slate-100 flex items-center gap-2">
          <BrainCircuit className="w-4 h-4 text-[#3344b8]" />
          <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
            AI Context
          </span>
        </div>
        <div className="p-4 space-y-3">
          {AI_CONTEXT.map((ctx) => {
            const Icon = ctx.icon;
            return (
              <div key={ctx.label} className="rounded-xl bg-slate-50 border border-slate-100 p-3">
                <div className="flex items-center gap-2 mb-1.5">
                  <Icon className="w-3.5 h-3.5 text-[#3344b8]" />
                  <span className="text-[10px] font-extrabold uppercase tracking-wider text-slate-500">
                    {ctx.label}
                  </span>
                </div>
                <p className="text-xs text-slate-700 leading-relaxed">{ctx.value}</p>
              </div>
            );
          })}
          <div className="pt-2 flex items-center gap-2 text-[10px] font-bold text-emerald-700">
            <CheckCircle2 className="w-3.5 h-3.5" />
            Reply sent from the same screen — no copy-paste
          </div>
        </div>
      </div>
    </div>
  );
}

// =============================================================
// Integrations mockup
// =============================================================

function IntegrationsMockup() {
  return (
    <div>
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-5">
        {INTEGRATION_CARDS.map((card) => {
          const Icon = card.icon;
          return (
            <div
              key={card.name}
              className="rounded-2xl bg-white border border-slate-200 p-4 flex items-start gap-3"
            >
              <div className="w-10 h-10 rounded-xl bg-slate-100 border border-slate-200 flex items-center justify-center text-slate-600 shrink-0">
                <Icon className="w-5 h-5" />
              </div>
              <div className="flex-1 min-w-0">
                <div className="flex items-center justify-between gap-2">
                  <span className="text-sm font-bold text-[#12193b]">{card.name}</span>
                  <span
                    className={`text-[9px] font-bold px-1.5 py-0.5 rounded ${
                      card.status === "Connected"
                        ? "bg-emerald-50 text-emerald-700 border border-emerald-200"
                        : "bg-amber-50 text-amber-700 border border-amber-200"
                    }`}
                  >
                    {card.status}
                  </span>
                </div>
                <p className="mt-0.5 text-[11px] text-slate-500 leading-relaxed">{card.detail}</p>
                {card.status === "Connected" && (
                  <div className="mt-1.5 flex items-center gap-1 text-[10px] font-bold text-emerald-700">
                    <RefreshCw className="w-3 h-3" />
                    Two-way sync
                  </div>
                )}
              </div>
            </div>
          );
        })}
      </div>

      <div className="rounded-2xl bg-white border border-slate-200 p-4">
        <div className="flex items-center gap-2 mb-3">
          <Webhook className="w-4 h-4 text-[#3344b8]" />
          <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
            Automation Flow
          </span>
        </div>
        <div className="flex flex-wrap items-center gap-2 text-[11px] font-bold">
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-emerald-50 text-emerald-700 border border-emerald-200">
            <FileText className="w-3.5 h-3.5" />
            Matter signed
          </span>
          <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
            <Database className="w-3.5 h-3.5" />
            Push to practice mgmt
          </span>
          <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-amber-50 text-amber-700 border border-amber-200">
            <Calendar className="w-3.5 h-3.5" />
            Sync onboarding dates
          </span>
          <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
          <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-slate-100 text-slate-600 border border-slate-200">
            <AlertCircle className="w-3.5 h-3.5" />
            No copy-paste
          </span>
        </div>
      </div>
    </div>
  );
}
