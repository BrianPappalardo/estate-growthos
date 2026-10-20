import { useState } from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  CreditCard,
  Landmark,
  Building2,
  PiggyBank,
  Split,
  Receipt,
  Percent,
  ShieldCheck,
  Zap,
  CalendarClock,
  UserCircle2,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import {
  PAYMENTS_CAPABILITIES,
  ROUTING_RULES,
  PAYMENTS_CONNECTIONS,
} from "@/components/home/payments-capabilities";

/**
 * Dedicated sales page for the Leadli Payments product.
 *
 * Renders inside /feature/$slug when the slug is "payments". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function PaymentsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const [routeTab, setRouteTab] = useState<"simple" | "advanced">("advanced");
  const [passThrough, setPassThrough] = useState(true);

  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "payments" &&
      f.slug !== "invoices-estimates" &&
      f.slug !== "crm" &&
      f.slug !== "automation",
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

            <div className="flex flex-wrap items-center gap-2">
              <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
                <Sparkles className="w-4 h-4 text-amber-400" />
                Payments &amp; Commerce
              </div>
              <div className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-500/15 border border-emerald-400/30 text-emerald-300 text-[10px] font-extrabold tracking-wider uppercase">
                <Landmark className="w-3.5 h-3.5" />
                Official Confido Legal Partner
              </div>
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <CreditCard className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Payments
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                As simple or as complicated as your firm needs — from one bank account to
                multi-account IOLTA trust routing, all in one place.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            We&apos;re official Confido Legal partners, so Leadli Payments handles the easy stuff
            and the hard stuff. A flat retainer into a single operating account? Easy. Splitting
            earned fees from trust funds, routing by product or service, appointment type, or CRM
            data on a contact? We do that too. Want to pass through the credit card processing fee?
            One toggle.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Stripe",
              "LawPay",
              "Square",
              "Separate trust accounting tools",
              "QuickBooks Payments",
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
              Included with Leadli at one flat $199/mo rate. Confido Legal payment processing fees
              still apply.
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
                Your payments are a mess of disconnected tools and manual trust accounting.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A client pays a retainer through one processor. A consultation fee goes through
                another. Trust funds sit in a third system entirely — and every Friday someone
                manually reconciles all of it against your bank statements, hoping nothing landed in
                the wrong account.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                For estate planners, the stakes are higher: IOLTA trust accounting mistakes
                aren&apos;t just annoying, they&apos;re an ethical violation. Leadli Payments puts
                earned fees and trust funds in one system with rules that route every dollar to the
                right account — automatically, and audit-ready.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Operating vs. trust routing in one click",
                  "No manual reconciliation spreadsheets",
                  "IOLTA-compliant by default",
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

      {/* ===== FUNDS ROUTING VISUAL ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Smart Funds Routing
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every payment lands in the right account — automatically.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Whether you have one bank account or a dozen, Leadli routes funds by the rules you
              set: by service, by appointment type, by what a contact has in their CRM record.
            </p>
          </div>

          {/* Scenario tabs */}
          <div className="flex flex-wrap justify-center gap-2 mb-8">
            <button
              onClick={() => setRouteTab("simple")}
              className={`px-5 py-2.5 rounded-xl font-bold text-sm transition-all cursor-pointer ${
                routeTab === "simple"
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white text-slate-700 hover:bg-slate-100 border border-slate-200"
              }`}
            >
              One Account · Simple
            </button>
            <button
              onClick={() => setRouteTab("advanced")}
              className={`px-5 py-2.5 rounded-xl font-bold text-sm transition-all cursor-pointer ${
                routeTab === "advanced"
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white text-slate-700 hover:bg-slate-100 border border-slate-200"
              }`}
            >
              Multi-Account · Smart Routing
            </button>
          </div>

          {/* Routing mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Split className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">
                  {routeTab === "simple"
                    ? "Single-Account Payment Routing"
                    : "Multi-Account Funds Routing Engine"}
                </span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  IOLTA Ready
                </span>
              </div>
            </div>

            <div className="p-6 sm:p-8 bg-slate-50/70">
              {routeTab === "simple" && (
                <div className="max-w-2xl mx-auto flex flex-col items-center gap-3">
                  <div className="w-full rounded-2xl bg-white border-2 border-amber-400/80 p-4 shadow-sm flex items-center gap-4">
                    <div className="w-10 h-10 rounded-xl bg-amber-100 text-amber-800 flex items-center justify-center shrink-0">
                      <CreditCard className="w-5 h-5" />
                    </div>
                    <div>
                      <div className="text-[10px] font-extrabold uppercase tracking-widest text-amber-700">
                        Payment Received
                      </div>
                      <div className="text-sm font-extrabold text-slate-900">
                        $3,500 · Estate Plan Retainer
                      </div>
                    </div>
                  </div>

                  <div className="w-0.5 h-8 bg-slate-300" />

                  <div className="w-full rounded-2xl bg-white border border-slate-200 p-4 shadow-sm flex items-center gap-4">
                    <div className="w-10 h-10 rounded-xl bg-slate-100 text-slate-600 flex items-center justify-center shrink-0">
                      <Building2 className="w-5 h-5" />
                    </div>
                    <div>
                      <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-500">
                        Routed To
                      </div>
                      <div className="text-sm font-extrabold text-slate-900">
                        Operating Account · Main
                      </div>
                    </div>
                  </div>

                  <p className="text-xs text-slate-500 text-center mt-2 max-w-sm">
                    One bank account? Everything flows in automatically. No rules, no splitting, no
                    headaches.
                  </p>
                </div>
              )}

              {routeTab === "advanced" && (
                <div className="max-w-3xl mx-auto space-y-5">
                  {/* Rule 1: Service-based → Trust */}
                  <RoutingRule
                    amount="$3,500 · Estate Plan"
                    rule='Service = "Estate Plan"'
                    destination="Trust / IOLTA Account"
                    icon={<PiggyBank className="w-4 h-4 text-emerald-700" />}
                    tone="blue"
                  />

                  {/* Rule 2: Appointment-based → Operating */}
                  <RoutingRule
                    amount="$50 · Consult Fee"
                    rule='Appointment = "Consult"'
                    destination="Operating Account"
                    icon={<Building2 className="w-4 h-4 text-slate-700" />}
                    tone="emerald"
                  />

                  {/* Rule 3: CRM-data-based → Operating */}
                  <RoutingRule
                    amount="$99 · Estate Guide"
                    rule='Product / CRM tag = "Digital"'
                    destination="Operating Account"
                    icon={<Building2 className="w-4 h-4 text-slate-700" />}
                    tone="slate"
                  />

                  {/* Pass-through fee toggle */}
                  <div className="mt-6 rounded-2xl border border-amber-300 bg-amber-50/80 p-4 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3">
                    <div className="flex items-center gap-3">
                      <div className="w-9 h-9 rounded-xl bg-amber-100 text-amber-800 flex items-center justify-center shrink-0">
                        <Percent className="w-5 h-5" />
                      </div>
                      <div>
                        <div className="text-xs font-extrabold text-amber-900 uppercase tracking-wider">
                          Pass-through processing fee
                        </div>
                        <div className="text-xs text-amber-800/80 mt-0.5">
                          Add the card fee to the charge so you keep the full amount.
                        </div>
                      </div>
                    </div>
                    <button
                      onClick={() => setPassThrough(!passThrough)}
                      className={`relative inline-flex h-7 w-12 shrink-0 items-center rounded-full transition-colors cursor-pointer ${
                        passThrough ? "bg-emerald-500" : "bg-slate-300"
                      }`}
                      aria-label="Toggle pass-through fee"
                    >
                      <span
                        className={`inline-block h-5 w-5 transform rounded-full bg-white shadow transition-transform ${
                          passThrough ? "translate-x-6" : "translate-x-1"
                        }`}
                      />
                    </button>
                  </div>

                  {passThrough && (
                    <div className="rounded-2xl bg-white border border-slate-200 p-4 flex flex-wrap items-center gap-x-4 gap-y-2 text-xs">
                      <span className="font-bold text-slate-500">Client pays:</span>
                      <span className="font-extrabold text-slate-900 line-through decoration-slate-300">
                        $3,500.00
                      </span>
                      <ArrowRight className="w-3.5 h-3.5 text-slate-400" />
                      <span className="font-extrabold text-emerald-700">
                        $3,602.25 (with 2.9% + $0.30)
                      </span>
                      <span className="ml-auto font-bold text-[#3344b8]">You net $3,500 ✓</span>
                    </div>
                  )}
                </div>
              )}
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">
                {routeTab === "simple"
                  ? "1 account · zero rules · set up in minutes"
                  : "3 routing rules · 0 manual splits · fully IOLTA compliant"}
              </span>
              <span className="flex items-center gap-1.5 font-bold text-[#3344b8]">
                <Zap className="w-3.5 h-3.5" />
                Powered by Confido Legal
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
              Payments that flex to your firm&apos;s actual bookkeeping.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {PAYMENTS_CAPABILITIES.map((cap) => {
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
                  Leadli Payments is included for every customer at no additional fee. Confido Legal
                  payment processing fees still apply — that&apos;s it.
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

      {/* ===== CONFIDO PARTNER DEEP DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="rounded-3xl bg-gradient-to-br from-amber-50 to-[#fcfbf8] border border-amber-300/60 overflow-hidden">
            <div className="grid grid-cols-1 lg:grid-cols-12 gap-0">
              {/* Left: partner badge + pitch */}
              <div className="lg:col-span-5 p-8 sm:p-10 bg-gradient-to-br from-amber-500/10 to-transparent">
                <div className="flex items-center gap-3 mb-4">
                  <div className="p-3 bg-amber-500/20 rounded-2xl text-amber-800 shrink-0">
                    <Landmark className="w-7 h-7" />
                  </div>
                  <div>
                    <div className="text-[10px] font-extrabold uppercase tracking-widest text-amber-900">
                      Official Confido Legal Partner
                    </div>
                    <div className="text-xs font-bold text-amber-800/80">Trusted funds routing</div>
                  </div>
                </div>
                <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                  As simple or as complicated as you need it to be.
                </h2>
                <p className="mt-4 text-sm sm:text-base text-slate-700 leading-relaxed">
                  Some firms have one bank account and want everything to land there. Easy. Others
                  juggle multiple accounts and have to route trust funds separately based on what
                  was purchased, what appointment it was, or what&apos;s in a contact&apos;s CRM
                  record. We handle all of it.
                </p>
                <div className="mt-6 flex flex-wrap gap-2">
                  {["1 account or 12", "IOLTA trust-ready", "Pass-through fees"].map((item) => (
                    <span
                      key={item}
                      className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-white border border-amber-300 text-amber-900 text-xs font-bold"
                    >
                      <CheckCircle2 className="w-3.5 h-3.5" />
                      {item}
                    </span>
                  ))}
                </div>
              </div>

              {/* Right: what we route by */}
              <div className="lg:col-span-7 p-8 sm:p-10">
                <div className="text-xs font-extrabold uppercase tracking-wider text-amber-800 mb-5">
                  Route funds by&hellip;
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                  {ROUTING_RULES.map((rule) => {
                    const Icon = rule.icon;
                    return (
                      <div
                        key={rule.label}
                        className="rounded-2xl border border-slate-200 bg-white p-4 flex items-start gap-3"
                      >
                        <div className="w-9 h-9 rounded-xl bg-amber-50 border border-amber-200 flex items-center justify-center text-amber-700 shrink-0">
                          <Icon className="w-5 h-5" />
                        </div>
                        <div>
                          <h3 className="font-black text-sm text-[#12193b]">{rule.label}</h3>
                          <p className="text-xs text-slate-600 mt-1 leading-relaxed">{rule.body}</p>
                        </div>
                      </div>
                    );
                  })}
                </div>
                <p className="mt-5 text-xs text-slate-500 leading-relaxed">
                  Included for every customer at no additional fee. Confido Legal payment processing
                  fees still apply.
                </p>
              </div>
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
              Every payment updates the rest of your platform.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              A payment isn&apos;t just money in the bank — it&apos;s a signal that fires
              automations, updates the CRM, and moves the pipeline forward.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {PAYMENTS_CONNECTIONS.map((conn) => {
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
              Payments are just one piece. Explore the rest of what&apos;s included with Leadli.
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
            Let&apos;s see how your money flows.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll map out your accounts, your trust routing, and your fee structure
            — and tell you honestly whether Leadli Payments fits.
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

function RoutingRule({
  amount,
  rule,
  destination,
  icon,
  tone,
}: {
  amount: string;
  rule: string;
  destination: string;
  icon: React.ReactNode;
  tone: "blue" | "emerald" | "slate";
}) {
  const toneClasses =
    tone === "blue"
      ? "bg-blue-50 border-blue-200 text-[#3344b8]"
      : tone === "emerald"
        ? "bg-emerald-50 border-emerald-200 text-emerald-700"
        : "bg-slate-100 border-slate-200 text-slate-600";

  return (
    <div className="flex flex-col sm:flex-row items-stretch gap-2">
      <div className="sm:w-2/5 rounded-2xl bg-white border-2 border-amber-400/80 p-3.5 shadow-sm flex items-center gap-3">
        <div className="w-9 h-9 rounded-xl bg-amber-100 text-amber-800 flex items-center justify-center shrink-0">
          <CreditCard className="w-5 h-5" />
        </div>
        <div>
          <div className="text-[9px] font-extrabold uppercase tracking-widest text-amber-700">
            Payment
          </div>
          <div className="text-xs font-extrabold text-slate-900">{amount}</div>
        </div>
      </div>
      <div className="flex items-center justify-center text-slate-400 text-xs font-bold">
        <ArrowRight className="hidden sm:block w-5 h-5" />
        <span className="sm:hidden">↓</span>
      </div>
      <div className={`sm:flex-1 rounded-2xl border p-3.5 ${toneClasses}`}>
        <div className="text-[9px] font-extrabold uppercase tracking-widest">Rule: {rule}</div>
        <div className="mt-1 flex items-center gap-2">
          {icon}
          <span className="text-xs font-bold">→ {destination}</span>
        </div>
      </div>
    </div>
  );
}
