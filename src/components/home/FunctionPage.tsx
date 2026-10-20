import { Link } from "@tanstack/react-router";
import { ArrowRight, ArrowLeft, CheckCircle2, ArrowUpRight, Sparkles } from "lucide-react";
import { getFunctionBySlug, LEADLI_FUNCTIONS, type LeadliFunction } from "@/lib/leadli-functions";
import { getFeatureBySlug } from "@/lib/leadli-features";

export function FunctionPage({
  fn,
  onOpenDiscovery,
}: {
  fn: NonNullable<ReturnType<typeof getFunctionBySlug>>;
  onOpenDiscovery: () => void;
}) {
  const Icon = fn.icon;
  const features = fn.featureSlugs
    .map((s) => getFeatureBySlug(s))
    .filter((f): f is NonNullable<ReturnType<typeof getFeatureBySlug>> => Boolean(f));
  const otherFunctions = LEADLI_FUNCTIONS.filter((f) => f.slug !== fn.slug);

  return (
    <main>
      {/* HERO */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <Link
            to="/leadli"
            className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors mb-6"
          >
            <ArrowLeft className="w-4 h-4" />
            All Leadli Functions
          </Link>

          <div className="flex items-start gap-5">
            <div
              className="hidden sm:flex w-16 h-16 rounded-2xl items-center justify-center shrink-0"
              style={{
                backgroundColor: `${fn.accent}22`,
                border: `1px solid ${fn.accent}66`,
                color: fn.accent,
              }}
            >
              <Icon className="w-8 h-8" />
            </div>
            <div>
              <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase mb-3">
                <Sparkles className="w-4 h-4 text-amber-400" />
                Leadli Function
              </div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                {fn.name}
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                {fn.tagline}
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            {fn.description}
          </p>

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              {features.length} capabilities, all included with Leadli at one flat $199/mo rate.
            </p>
          </div>
        </div>
      </section>

      {/* FEATURE GRID */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-12">
            <span
              className="text-xs font-bold uppercase tracking-wider px-3 py-1 rounded-full border inline-block"
              style={{
                color: fn.accent,
                backgroundColor: `${fn.accent}12`,
                borderColor: `${fn.accent}44`,
              }}
            >
              {features.length} capabilities in this function
            </span>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] mt-3 tracking-tight">
              {fn.featureGridHeading ?? `Everything ${fn.name.toLowerCase()} needs — in one place.`}
            </h2>
            <p className="mt-3 text-base sm:text-lg text-slate-600">
              {fn.featureGridSub ??
                "Tap any capability to see how it fits your firm. Each one is part of Leadli — one platform, one flat $199/mo rate."}
            </p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
            {features.map((f) => {
              const FeatureIcon = f.icon;
              const isLive = f.status === "live";
              return (
                <Link
                  key={f.slug}
                  to="/feature/$slug"
                  params={{ slug: f.slug }}
                  className="group bg-white p-6 rounded-2xl border border-slate-200 shadow-sm hover:shadow-lg hover:border-[#3344b8]/40 transition-all flex flex-col gap-3 h-full"
                >
                  <div className="flex items-center justify-between">
                    <div
                      className="w-11 h-11 rounded-xl flex items-center justify-center shrink-0"
                      style={{
                        backgroundColor: `${fn.accent}15`,
                        color: fn.accent,
                        border: `1px solid ${fn.accent}33`,
                      }}
                    >
                      <FeatureIcon className="w-6 h-6" />
                    </div>
                    <span
                      className={`text-[9px] font-extrabold uppercase tracking-wider px-1.5 py-0.5 rounded-full border ${
                        isLive
                          ? "bg-emerald-50 text-emerald-700 border-emerald-200"
                          : "bg-amber-50 text-amber-700 border-amber-200"
                      }`}
                    >
                      {isLive ? "Live" : "Planned"}
                    </span>
                  </div>
                  <h3 className="font-black text-base sm:text-lg text-slate-900 group-hover:text-[#3344b8] transition-colors leading-snug">
                    {f.name}
                  </h3>
                  <p className="text-sm text-slate-600 leading-relaxed flex-1">{f.tagline}</p>
                  <div className="flex items-center gap-1.5 text-xs font-bold text-[#3344b8] group-hover:gap-2.5 transition-all">
                    Explore
                    <ArrowUpRight className="w-3.5 h-3.5" />
                  </div>
                </Link>
              );
            })}
          </div>
        </div>
      </section>

      {/* WHAT YOU GET */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-10 items-center">
            <div>
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                One platform, one rate
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight">
                {fn.whatYouGetHeading ??
                  `${fn.name}, built around your firm — not the other way around.`}
              </h2>
              <p className="mt-4 text-slate-700 leading-relaxed text-sm sm:text-base">
                {fn.whatYouGetBody ??
                  "We don't drop a template on top of how you already work. We configure this whole function around your real processes — and because every capability below lives on the same platform, they talk to each other without glue, integrations, or retyping."}
              </p>
            </div>
            <div className="rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
              <div className="flex items-center gap-3 mb-4">
                <div
                  className="w-11 h-11 rounded-xl flex items-center justify-center"
                  style={{
                    backgroundColor: `${fn.accent}22`,
                    border: `1px solid ${fn.accent}55`,
                    color: fn.accent,
                  }}
                >
                  <Icon className="w-6 h-6" />
                </div>
                <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300">
                  Included in Leadli
                </div>
              </div>
              <ul className="space-y-2.5 text-sm text-slate-200">
                {features.slice(0, 5).map((f) => (
                  <li key={f.slug} className="flex items-start gap-2.5">
                    <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                    <span>{f.name}</span>
                  </li>
                ))}
                {features.length > 5 && (
                  <li className="flex items-start gap-2.5 text-slate-400 text-xs">
                    <span className="shrink-0 mt-0.5">+{features.length - 5} more</span>
                  </li>
                )}
              </ul>
              <div className="mt-5 pt-4 border-t border-white/15 flex items-baseline justify-between">
                <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                <span className="text-2xl font-black text-amber-300">$199/mo</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* OTHER FUNCTIONS */}
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              {fn.otherFunctionsHeading ?? `${fn.name} is one part of the whole platform.`}
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Explore the other functions that connect to it — same platform, same flat rate.
            </p>
          </div>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
            {otherFunctions.map((other: LeadliFunction) => {
              const OtherIcon = other.icon;
              return (
                <Link
                  key={other.slug}
                  to="/leadli/$slug"
                  params={{ slug: other.slug }}
                  className="group flex items-center gap-4 p-5 rounded-2xl border border-slate-200 bg-[#fcfbf8] hover:border-[#3344b8]/40 hover:shadow-md transition-all"
                >
                  <div
                    className="w-11 h-11 rounded-xl flex items-center justify-center shrink-0"
                    style={{
                      backgroundColor: `${other.accent}15`,
                      color: other.accent,
                      border: `1px solid ${other.accent}33`,
                    }}
                  >
                    <OtherIcon className="w-6 h-6" />
                  </div>
                  <div className="flex-1">
                    <h3 className="font-black text-slate-900 group-hover:text-[#3344b8] transition-colors">
                      {other.name}
                    </h3>
                    <p className="text-xs text-slate-600 mt-0.5 leading-snug">{other.tagline}</p>
                  </div>
                  <ArrowUpRight className="w-5 h-5 text-slate-400 group-hover:text-[#3344b8] transition-colors shrink-0" />
                </Link>
              );
            })}
          </div>
        </div>
      </section>

      {/* FINAL CTA */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            {fn.finalCtaHeading ?? `Let's see if ${fn.name.toLowerCase()} fits your firm.`}
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            {fn.finalCtaSub ??
              "30 minutes. We'll learn how you work, tell you honestly whether we're a fit, and give you a clear estimate."}
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
