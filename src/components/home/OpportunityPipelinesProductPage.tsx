import { useState } from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  GitBranch,
  ShieldCheck,
  Zap,
  Clock,
  TrendingUp,
  TrendingDown,
  DollarSign,
  Users,
  Phone,
  Mail,
  Calendar,
  FileText,
  AlertCircle,
  GripVertical,
  Plus,
  Building2,
  Target,
  Activity,
  Workflow,
  MessageSquare,
  Database,
  Layers,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { PipelineBoardMockup } from "@/components/home/pipelines-mockup";

/**
 * Dedicated sales page for the Leadli Opportunity Pipelines product.
 *
 * Renders inside /feature/$slug when the slug is "opportunity-pipelines". The
 * header, footer, and discovery modal are owned by the route, so this
 * component renders only the <main> content.
 */
export function OpportunityPipelinesProductPage({
  onOpenDiscovery,
}: {
  onOpenDiscovery: () => void;
}) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "opportunity-pipelines" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "reporting",
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
              Operations · Opportunity Pipelines
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <GitBranch className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Opportunity Pipelines
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Every deal in flight on one board — drag a card, change a stage, fire the next step
                automatically.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            You don't need a better spreadsheet. You need to see every prospect at a glance, know
            exactly where each one stands, and have the right follow-up fire the instant a deal
            moves. Leadli's pipelines show you the whole board — from first inquiry to signed
            engagement — and automate the work between stages so nothing stalls waiting for someone
            to remember to call.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Pipedrive",
              "Spreadsheet pipelines",
              "Sticky-note deal trackers",
              "The “where are we on this?” email",
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
                Your deals live in a spreadsheet nobody opens — and a pipeline nobody updates.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect fills out your form. They go in a spreadsheet. Someone books a consult —
                that goes in a calendar. They show up, you send an engagement letter, that's an
                email thread. Three weeks later you're trying to figure out whether the Henderson
                matter is still alive, and the answer is in a note someone left on a sticky tab by
                the receptionist's monitor.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli puts the whole thing on one board. Every prospect is a card. Every stage is a
                column. Drag it when it moves, and the next step fires on its own — the follow-up
                text, the engagement-letter template, the reminder to call. You see the whole
                pipeline at a glance, and nothing's hiding in a tab nobody checks.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "One board, every deal",
                  "Drag to move, not type to update",
                  "Automations fire on stage change",
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

      {/* ===== PIPELINE BOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              See every deal. Move it with a drag. Watch the next step fire.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch between your practice areas — each with its own pipeline, its own stages, and
              its own automations. This is what your intake looks like when nothing falls through
              the cracks.
            </p>
          </div>

          <PipelineBoardMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Pipelines wired into the rest of your firm — not sitting next to it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {PIPELINE_CAPABILITIES.map((cap) => {
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
                  Opportunity pipelines are part of the single platform we configure around how your
                  firm runs — not a separate CRM you have to remember to open. No extra
                  subscription, no per-seat Pipedrive bill, no spreadsheet to babysit.
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

      {/* ===== DEEP DIVE: DRAG-AND-DROP + STAGE AUTOMATIONS ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <GripVertical className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Drag, don't type</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The pipeline that updates itself the moment a deal moves.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A spreadsheet forces someone to remember to update it — and they won't. A
                drag-and-drop board rewards the opposite: the moment you know a prospect moved, you
                move the card. No “status” field to set, no note to retype. The board is the source
                of truth because it's easier to keep current than to let it rot.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Visual columns for every stage, top to bottom",
                  "Move a card with a drag — no forms, no typing",
                  "See the whole pipeline in one glance, not one row",
                  "Color-coded by value, age, and owner",
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
                <Workflow className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Stage-change automations
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Drag a card, fire the follow-up. No one has to remember to call.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Every stage change can trigger the next step automatically. Prospect books a
                consult? Send the confirmation and the pre-call video. Consult held? Queue the
                engagement letter. Engagement sent? Start the three-day reminder sequence. The
                pipeline doesn't just show you where things are — it does the work in between.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Triggers on any stage change — inbound or manual",
                  "Sends SMS, email, or creates a task for the team",
                  "Branches by practice area, value, or source",
                  "No Zapier, no glue, no “I forgot to follow up”",
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
              Your pipeline knows what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no “does this match the CRM?” The board reads the same data
              your leads, calls, and payments run through — so it's always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {PIPELINE_CONNECTIONS.map((conn) => {
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
              Opportunity pipelines are just the start. Explore the rest of what's included with
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
          <div className="mt-10 text-center">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:underline"
            >
              See the full Leadli platform
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let's put your whole pipeline on one board.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map how your firm tracks deals today, tell you honestly whether Leadli
            fits, and give you a clear estimate.
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

const PIPELINE_CAPABILITIES: { title: string; body: string; icon: typeof GitBranch }[] = [
  {
    icon: GitBranch,
    title: "Visual drag-and-drop board",
    body: "Every prospect is a card; every stage is a column. Move a deal with a drag and watch the pipeline update instantly — no forms, no retyping, no “did someone update the spreadsheet?”",
  },
  {
    icon: Workflow,
    title: "Stage-change automations",
    body: "The moment a card moves, the next step fires — a follow-up text, an engagement-letter template, a reminder to call. The pipeline doesn't just track the work; it does the work in between.",
  },
  {
    icon: Layers,
    title: "A pipeline for every practice area",
    body: "Run separate pipelines for estate planning, probate, elder law — each with its own stages, its own automations, and its own view. Switch boards with a click, never lose the thread.",
  },
  {
    icon: DollarSign,
    title: "Revenue forecasting",
    body: "See the value of every open deal and a weighted forecast of what's likely to close — pulled from the same board, not a separate spreadsheet someone forgot to update.",
  },
  {
    icon: Activity,
    title: "Stage & age alerts",
    body: "A deal sitting in “consult held” for nine days? Leadli flags it before it goes cold — color-coded by age and value so you see the leak before a month of deals slips through it.",
  },
  {
    icon: Database,
    title: "One record per prospect",
    body: "Every card is tied to the same CRM record as the emails, the calls, the payments, and the signed matter. Drag a card and the whole history moves with it — nothing orphaned, nothing lost.",
  },
  {
    icon: Users,
    title: "Team assignment & views",
    body: "Assign deals to the right person and filter the board by owner. An intake coordinator sees their queue; a partner sees the whole firm. Everyone works off the same board.",
  },
  {
    icon: Target,
    title: "Custom stages, your way",
    body: "Your pipeline shouldn't look like a software company's. We build the stages around how your firm actually moves a prospect — from first inquiry to signed engagement — not a template.",
  },
];

const PIPELINE_CONNECTIONS: { label: string; icon: typeof GitBranch }[] = [
  { icon: Database, label: "CRM & contacts" },
  { icon: Workflow, label: "Automations" },
  { icon: Calendar, label: "Consult bookings" },
  { icon: FileText, label: "Engagement letters" },
  { icon: MessageSquare, label: "Calls & SMS" },
  { icon: DollarSign, label: "Revenue & payments" },
];
