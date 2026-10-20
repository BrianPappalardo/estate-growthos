import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  FileSignature,
  ShieldCheck,
  Zap,
  Clock,
  Send,
  PenLine,
  FileCheck2,
  AlertCircle,
  FileText,
  RefreshCw,
  Bell,
  Archive,
  Database,
  Workflow,
  Calendar,
  Mail,
  MessageSquare,
  CreditCard,
  Lock,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Contracts + e-Signatures product.
 *
 * Renders inside /feature/$slug when the slug is "contracts". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function ContractsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "contracts" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "payments",
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
              Legal · Contracts &amp; e-Signatures
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <FileSignature className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Contracts &amp; e-Signatures
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Send engagement letters and fee agreements for signature right inside the platform —
                with reminders that chase themselves.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            You had a great consult. The prospect is ready to move forward. And then the engagement
            letter sits in a separate e-signature tool, you forget to follow up, and three days
            later they&apos;ve cooled off — or booked with someone else. Leadli sends the document
            the moment a deal closes, files it to the client record automatically, and pings them
            until it&apos;s signed. No separate subscription, no chasing.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "DocuSign",
              "PandaDoc",
              "Adobe Sign",
              "Chasing signatures by email",
              "Engagement letter spreadsheets",
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
                Your signed engagement letter is the last hole the money leaks through.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                The consult went well. The prospect said yes. Now someone has to open a separate
                e-signature app, upload your engagement letter, type in their email, and remember to
                follow up when they don&apos;t sign by end of day. Three days later, the document is
                still sitting there unsigned &mdash; and the prospect who was ready to hire you has
                either gone quiet or booked with the firm that made it easy.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli closes that hole. The moment a deal moves to &ldquo;send engagement
                letter,&rdquo; the document goes out on its own &mdash; pre-filled with the
                prospect&apos;s name, your fee, and the scope you discussed. Reminders send
                themselves. The signed copy files back to the client record automatically. No
                chasing, no copy-paste, no lost momentum.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Send the moment the deal closes",
                  "Reminders that chase themselves",
                  "Signed copy auto-filed to the CRM",
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

      {/* ===== SIGNATURE FLOW MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Signatures on autopilot
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              The document sends itself, reminds itself, and files itself.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Trigger an engagement letter the moment a deal closes. Leadli handles the send, the
              reminders, and the archive &mdash; without a separate e-sign login.
            </p>
          </div>

          {/* Signature flow dashboard mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <FileSignature className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Engagement Letters &middot; yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Zap className="w-3.5 h-3.5 text-amber-400" />
                  Auto-send on
                </span>
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  Legally binding
                </span>
              </div>
            </div>

            <div className="p-5 sm:p-6 bg-slate-50/60">
              {/* Summary row */}
              <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-6">
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Sent This Month
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">24</span>
                    <span className="text-xs text-[#3344b8] font-bold pb-1.5">letters</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Send className="w-3.5 h-3.5 text-[#3344b8]" />
                    Auto-fired on close
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Signed Rate
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">92%</span>
                    <span className="text-xs text-emerald-600 font-bold pb-1.5">returned</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <FileCheck2 className="w-3.5 h-3.5 text-emerald-600" />
                    Auto-filed to CRM
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Avg Time to Sign
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">1.4</span>
                    <span className="text-xs text-slate-500 font-medium pb-1.5">days</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Clock className="w-3.5 h-3.5 text-amber-600" />
                    Smart reminders sent
                  </div>
                </div>
              </div>

              {/* Documents in flight */}
              <div className="rounded-2xl bg-white border border-slate-200 overflow-hidden">
                <div className="px-4 py-3 border-b border-slate-100 flex items-center justify-between">
                  <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
                    Engagement Letters In Flight
                  </span>
                  <span className="flex items-center gap-1.5 text-[10px] font-bold text-emerald-600">
                    <RefreshCw className="w-3.5 h-3.5" />
                    Auto-reminders active
                  </span>
                </div>
                <div className="divide-y divide-slate-100">
                  {SIGN_DOCS.map((doc) => (
                    <div key={doc.name} className="px-4 py-4 flex items-start gap-4">
                      <div className="w-9 h-9 rounded-xl bg-slate-100 flex items-center justify-center text-slate-500 shrink-0">
                        <FileText className="w-5 h-5" />
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center justify-between gap-3 flex-wrap">
                          <span className="text-sm font-bold text-[#12193b]">{doc.name}</span>
                          <span
                            className={`text-[10px] font-bold px-1.5 py-0.5 rounded ${
                              doc.status === "Signed"
                                ? "bg-emerald-50 text-emerald-700 border border-emerald-200"
                                : doc.status === "Awaiting"
                                  ? "bg-amber-50 text-amber-700 border border-amber-200"
                                  : "bg-blue-50 text-[#3344b8] border border-blue-200"
                            }`}
                          >
                            {doc.status}
                          </span>
                        </div>
                        <div className="mt-0.5 text-xs text-slate-500 font-medium">{doc.doc}</div>
                        <div className="mt-1 flex flex-wrap items-center gap-2 text-[10px] text-slate-400">
                          <span className="flex items-center gap-1">
                            <Clock className="w-3 h-3" />
                            {doc.time}
                          </span>
                          {doc.reminders > 0 && (
                            <span className="flex items-center gap-1 text-amber-600 font-bold">
                              <Bell className="w-3 h-3" />
                              {doc.reminders} reminder{doc.reminders > 1 ? "s" : ""} sent
                            </span>
                          )}
                          {doc.signed && (
                            <span className="flex items-center gap-1 text-emerald-600 font-bold">
                              <Archive className="w-3 h-3" />
                              Filed to CRM
                            </span>
                          )}
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Auto-send flow */}
              <div className="mt-5 flex flex-wrap items-center gap-2 text-[11px] font-bold">
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-emerald-50 text-emerald-700 border border-emerald-200">
                  <CheckCircle2 className="w-3.5 h-3.5" />
                  Deal closes
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
                  <FileSignature className="w-3.5 h-3.5" />
                  Letter auto-sent
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-amber-50 text-amber-700 border border-amber-200">
                  <Bell className="w-3.5 h-3.5" />
                  Smart reminders
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-slate-100 text-slate-600 border border-slate-200">
                  <PenLine className="w-3.5 h-3.5" />
                  Signed &amp; filed
                </span>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                24 sent &middot; 92% signed &middot; 0 chased by hand
              </span>
              <span className="flex items-center gap-1.5">
                <Lock className="w-3.5 h-3.5 text-emerald-600" />
                Audit trail on every signature
              </span>
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
              E-signature that&apos;s wired into the rest of your firm.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {CONTRACT_CAPABILITIES.map((cap) => {
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
                  Contracts &amp; e-signatures are part of the single platform we configure around
                  the way your firm closes work. No extra subscription, no separate login, no
                  per-document fees.
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

      {/* ===== DEEP DIVE: NO CHASING & NATIVE SYNC ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Zap className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Send it the second they say yes
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The document goes out the moment a deal closes &mdash; not when you remember.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Most firms lose a day or two between &ldquo;yes&rdquo; and &ldquo;signed.&rdquo;
                Someone drafts the letter, waits for approval, logs into a separate tool, and sends
                it when they get a spare minute. By then the prospect has cooled off. Leadli
                triggers the send the instant the pipeline stage changes &mdash; pre-filled,
                on-brand, and out the door before they finish thanking you.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Trigger on any pipeline stage or form submission",
                  "Pre-filled with the prospect, scope, and fee from the CRM",
                  "Instant send &mdash; no drafting, no waiting",
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
                <Bell className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Reminders that chase themselves
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Stop logging in to check whether they signed.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Leadli sends the first reminder, the second, and the gentle final nudge &mdash; on a
                cadence you set. The signed copy files back to the client record automatically, the
                pipeline moves forward on its own, and the retainer invoice goes out next. You find
                out it&apos;s done because the money shows up, not because you remembered to check.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Auto-reminders on your cadence &mdash; by email and SMS",
                  "Signed PDF auto-filed to the contact record",
                  "Pipeline advances &amp; invoice fires without a click",
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
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every signature updates the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              A signed engagement letter isn&apos;t just a document &mdash; it&apos;s a signal that
              advances the pipeline, fires the onboarding, and sends the retainer invoice.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {CONTRACT_CONNECTIONS.map((conn) => {
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
              Contracts &amp; e-signatures are just the start. Explore the rest of what&apos;s
              included with Leadli.
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
            Let&apos;s close the last leak.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll map how your engagement letters go out today, tell you honestly
            whether Leadli fits, and give you a clear estimate.
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

const SIGN_DOCS: {
  name: string;
  doc: string;
  status: "Signed" | "Awaiting" | "Sent";
  time: string;
  reminders: number;
  signed: boolean;
}[] = [
  {
    name: "Maria L.",
    doc: "Estate Plan Engagement Letter · $3,500",
    status: "Signed",
    time: "Signed 1 day ago",
    reminders: 0,
    signed: true,
  },
  {
    name: "David R.",
    doc: "Trust Engagement Letter · $5,200",
    status: "Signed",
    time: "Signed 3 hours ago",
    reminders: 1,
    signed: true,
  },
  {
    name: "Patricia K.",
    doc: "Will + POA Agreement · $1,800",
    status: "Awaiting",
    time: "Sent 2 days ago",
    reminders: 2,
    signed: false,
  },
  {
    name: "James W.",
    doc: "Estate Plan Engagement Letter · $4,000",
    status: "Sent",
    time: "Sent 12 minutes ago",
    reminders: 0,
    signed: false,
  },
];

const CONTRACT_CAPABILITIES: { title: string; body: string; icon: typeof FileSignature }[] = [
  {
    icon: FileSignature,
    title: "Built-in legally binding e-signature",
    body: "Send engagement letters, fee agreements, and disclosures for signature right inside Leadli &mdash; no separate e-sign account, no per-document fees, no extra login for your client.",
  },
  {
    icon: FileText,
    title: "Engagement letter templates",
    body: "Start from your firm&apos;s standard engagement letter and scope language. We pre-fill the prospect&apos;s name, the fee, and the services discussed so every document goes out consistent.",
  },
  {
    icon: Bell,
    title: "Automatic reminders",
    body: "Leadli sends the nudge, the follow-up, and the final reminder on a cadence you set &mdash; by email and SMS &mdash; so you never have to log back in just to check whether they signed.",
  },
  {
    icon: FileCheck2,
    title: "Status tracking",
    body: "See at a glance which letters are sent, viewed, and signed &mdash; across every matter in flight &mdash; without opening a separate dashboard or a shared spreadsheet.",
  },
  {
    icon: Archive,
    title: "Auto-filed to the client record",
    body: "The signed PDF lands on the contact&apos;s CRM record the moment it&apos;s executed. No saving to a folder, no renaming files, no hunting for it three months later.",
  },
  {
    icon: ShieldCheck,
    title: "Full audit trail",
    body: "Every signature carries a tamper-evident audit log &mdash; who signed, when, from what IP. The record your malpractice carrier wants to see, kept automatically.",
  },
  {
    icon: CreditCard,
    title: "Retainer invoice on signature",
    body: "The moment the engagement letter is signed, Leadli can fire the retainer invoice and route the payment &mdash; so the deposit and the document land together.",
  },
  {
    icon: Lock,
    title: "Bank-grade security",
    body: "Encrypted in transit and at rest, with access controlled by your team&apos;s roles. Your client&apos;s sensitive documents stay inside the platform &mdash; not bouncing through email.",
  },
];

const CONTRACT_CONNECTIONS: { label: string; icon: typeof FileSignature }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Workflow, label: "Pipeline automations" },
  { icon: Calendar, label: "Onboarding timeline" },
  { icon: Mail, label: "Email reminders" },
  { icon: MessageSquare, label: "SMS reminders" },
  { icon: CreditCard, label: "Retainer invoicing" },
];
