import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  ClipboardList,
  GitBranch,
  Zap,
  Database,
  Tag,
  FileText,
  HelpCircle,
  ListChecks,
  ShieldCheck,
  Users,
  Mail,
  CalendarCheck,
  Star,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { FormsBuilderMockup } from "@/components/home/forms-builder-mockup";

/**
 * Dedicated sales page for the Leadli Forms, Surveys & Quizzes product.
 *
 * Renders inside /feature/$slug when the slug is "forms-surveys-quizzes". The
 * header, footer, and discovery modal are owned by the route, so this
 * component renders only the <main> content.
 */
export function FormsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "forms-surveys-quizzes" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "smart-lists",
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
              Operations · Forms, Surveys & Quizzes
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <ClipboardList className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Forms, Surveys & Quizzes
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Capture exactly the information you need — and route it. Every answer writes
                straight to the CRM and fires the next step.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Most firms run their forms on a separate tool that emails a notification and calls it a
            day. Leadli forms live inside the same platform as your CRM, your pipeline, and your
            automations — so a submitted form doesn't just notify someone. It tags the prospect,
            scores the lead, books the right consult, and sends the confirmation. No re-typing, no
            Zapier, no glue.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Typeform",
              "Google Forms",
              "Jotform",
              "The “let me copy this into the CRM” step",
            ].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
                dangerouslySetInnerHTML={{ __html: name }}
              />
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
                Your form notifies someone. Then someone re-types the answers into your CRM. Then
                the lead goes cold.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect fills out your intake form. It emails your office a notification.
                Somebody opens it, copies the name and email into the CRM, sets a tag, and adds a
                note. By the time they get around to it, it's Thursday. The prospect already booked
                with the firm that replied on Tuesday.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli forms don't notify — they route. The moment someone submits, the answers
                write straight to the contact record, the right tag fires, the lead gets scored, and
                the right calendar opens for them to book. The form does the work of three tabs and
                a sticky note, in the seconds after someone says “I'm interested.”
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Writes straight to the CRM",
                  "Conditional logic & lead scoring",
                  "Routes to the right calendar",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== FORM BUILDER MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              One builder for intake forms, scored quizzes, and post-matter surveys.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch the form type to see how the same fields map to your CRM, branch on the
              answers, and fire the next workflow — all inside Leadli.
            </p>
          </div>

          <FormsBuilderMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Forms wired into the rest of your firm — not sitting next to it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {FORMS_CAPABILITIES.map((cap) => {
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
                  Forms, surveys, and quizzes are part of the single platform we configure around
                  how your firm runs — not a separate Typeform plan you have to wire up. No extra
                  subscription, no per-response bill, no Zapier to babysit.
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

      {/* ===== DEEP DIVE: CONDITIONAL LOGIC + CRM SYNC ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <GitBranch className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Conditional logic
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Ask the next question based on the last answer — and branch the follow-up with it.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                If they own a home, ask the value. If their plan is three years old, flag it for a
                consult. If their quiz scores “strong fit,” open the trust calendar. If they'd leave
                a review, route them to the review request. The form adapts to the prospect in real
                time — and the same rules that branch the questions branch the workflow behind it.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Show or hide fields based on prior answers",
                  "Branch the next step by answer, value, or score",
                  "No “if this, then that” Zapier stack — it's native",
                  "Test the logic before you publish, on the same canvas",
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
                <Database className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Direct CRM sync</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Every answer writes straight to the contact record — no one re-types a thing.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Map each field to a CRM field once — standard fields like name, email, and phone, or
                the custom fields we build for your firm (estate value, plan age, trust fit score).
                On submit, the contact is created or updated, the tags fire, and the custom fields
                populate. The record your team opens next already knows everything the prospect told
                you.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Standard fields map to name, email, phone & more",
                  "Custom fields map to the data unique to your firm",
                  "Tags & custom fields populate on submit",
                  "One source of truth — the form, the CRM, and the pipeline read the same data",
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

      {/* ===== USE CASES ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              One builder. Three jobs it actually does for you.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Same canvas, same CRM sync, same workflow triggers — whether you're qualifying a lead,
              educating a prospect, or asking for a review.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-5">
            {USE_CASES.map((uc) => {
              const Icon = uc.icon;
              return (
                <div
                  key={uc.title}
                  className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-6 flex flex-col"
                >
                  <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] mb-4">
                    <Icon className="w-5 h-5" />
                  </div>
                  <h3 className="font-black text-base text-[#12193b] mb-1.5">{uc.title}</h3>
                  <p className="text-sm text-slate-600 leading-relaxed flex-1">{uc.body}</p>
                  <div className="mt-4 pt-3 border-t border-slate-200">
                    <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-[#3344b8]">
                      <Zap className="w-3.5 h-3.5 text-amber-500" />
                      {uc.trigger}
                    </span>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b]  tracking-tight">
              Your forms know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no “does this match the CRM?” The form writes the same data
              your contacts, deals, and calendars run through — so it's always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {FORMS_CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-white p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-[#fcfbf8] border border-slate-200 flex items-center justify-center text-[#3344b8]">
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
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Forms, surveys & quizzes are just the start. Explore the rest of what's included with
              Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-[#fcfbf8] border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
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
            Let's capture the right information — and route it.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll map the forms you're running today, tell you honestly whether Leadli
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

const FORMS_CAPABILITIES: { title: string; body: string; icon: typeof ClipboardList }[] = [
  {
    icon: FileText,
    title: "Drag-and-drop builder",
    body: "Build a multi-step intake, a scored quiz, or a one-question survey on the same canvas. Add fields with a drag, reorder with a grip, and publish when it's right — no code, no developer.",
  },
  {
    icon: GitBranch,
    title: "Conditional logic & branching",
    body: "Show or hide the next question based on the last answer. Route the prospect down a different path by practice area, value, or intent — and branch the workflow behind the form with it.",
  },
  {
    icon: Database,
    title: "Direct CRM mapping",
    body: "Map every field to a standard or custom CRM field once. On submit, the contact is created or updated, tags fire, and custom fields populate — no one re-types a name.",
  },
  {
    icon: Zap,
    title: "Lead scoring & routing",
    body: "Score the prospect by their answers and route the high-intent ones straight to the right calendar. A trust quiz that scores “strong fit” books the trust consult — automatically.",
  },
  {
    icon: Tag,
    title: "Automatic tagging",
    body: "Tags fire on submit by practice area, source, or answer — so the prospect lands in the right Smart List, the right pipeline, and the right follow-up sequence without a human in between.",
  },
  {
    icon: ShieldCheck,
    title: "Compliance & opt-outs",
    body: "Built-in consent capture, opt-out handling, and audit trails keep your SMS and email marketing compliant — so the form that collects the email also collects the permission to use it.",
  },
  {
    icon: HelpCircle,
    title: "Scored quizzes & assessments",
    body: "Turn the “do I need a trust?” question into a quiz that educates the prospect and scores the result — then sends their answers, their score, and their contact info straight to you.",
  },
  {
    icon: ListChecks,
    title: "Surveys that trigger reviews",
    body: "Send a post-matter survey, capture the NPS, and only route the happy clients to your review request — so every survey becomes either a review or a coaching moment, automatically.",
  },
];

const USE_CASES: {
  title: string;
  body: string;
  icon: typeof ClipboardList;
  trigger: string;
}[] = [
  {
    icon: FileText,
    title: "Intake forms",
    body: "Capture exactly what your firm needs at first inquiry — then route the prospect to the right consult, tag them by practice area, and score the lead before anyone picks up the phone.",
    trigger: "Books the right consult",
  },
  {
    icon: HelpCircle,
    title: "Educational quizzes",
    body: "Educate the prospect on whether a trust fits their situation, hand them a result they can act on, and route the high-intent scores straight into your pipeline — pre-sold and ready to book.",
    trigger: "Pre-sells the consult",
  },
  {
    icon: ListChecks,
    title: "Post-matter surveys",
    body: "Close the loop after a matter with a short survey, capture the NPS, and trigger the review request only for the clients who'd actually leave one — then add them to your referral list.",
    trigger: "Triggers the review sequence",
  },
];

const FORMS_CONNECTIONS: { label: string; icon: typeof ClipboardList }[] = [
  { icon: Database, label: "CRM & contacts" },
  { icon: Zap, label: "Workflow automations" },
  { icon: CalendarCheck, label: "Consult calendars" },
  { icon: Tag, label: "Smart Lists & tags" },
  { icon: Mail, label: "Email & SMS" },
  { icon: Users, label: "Team assignment" },
];

// Re-export icons used only by the page so tree-shaking stays predictable
void Star;
