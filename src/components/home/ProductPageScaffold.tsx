import { Link } from "@tanstack/react-router";
import { ArrowRight, ArrowLeft, CheckCircle2, Sparkles, type LucideIcon } from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

export interface ProductCapability {
  title: string;
  body: string;
  icon: LucideIcon;
}

export interface ProductUseCase {
  title: string;
  body: string;
  icon: LucideIcon;
  trigger: string;
}

export interface ProductConnection {
  label: string;
  icon: LucideIcon;
}

export interface ProductPageContent {
  /** e.g. "Marketing · Countdown Timers" */
  categoryLabel: string;
  /** Hero icon */
  icon: LucideIcon;
  /** Hero H1, e.g. "Leadli Countdown Timers" */
  title: string;
  /** Hero subtitle */
  subtitle: string;
  /** Hero body paragraph */
  body: string;
  /** "Replaces:" chips */
  replaces: string[];
  /** "The leak" heading */
  leakHeading: string;
  /** "The leak" body paragraphs */
  leakBody: string[];
  /** "The leak" check chips */
  leakChips: string[];
  /** Mockup section heading */
  mockupHeading: string;
  /** Mockup section subhead */
  mockupSubhead: string;
  /** What you get heading */
  whatYouGetHeading: string;
  capabilities: ProductCapability[];
  /** Deep dive section — two columns. Omit to skip the section. */
  deepDive?: {
    left: { label: string; heading: string; body: string; bullets: string[] };
    right: { label: string; heading: string; body: string; bullets: string[] };
  };
  /** Use cases section. Omit to skip. */
  useCases?: ProductUseCase[];
  /** Extra callout section (compliance, partner, etc). Omit to skip. */
  callout?: {
    badge: string;
    heading: string;
    body: string;
    chips: { icon: LucideIcon; label: string }[];
  };
  /** "Connected, not copied" section. Omit to skip. */
  connections?: {
    heading: string;
    subhead: string;
    items: ProductConnection[];
  };
  /** Final CTA heading */
  finalCtaHeading: string;
  /** Final CTA body */
  finalCtaBody: string;
  /** Slugs to exclude from the "more features" chips */
  excludeFromRelated?: string[];
}

interface Props {
  content: ProductPageContent;
  mockup?: React.ReactNode;
  onOpenDiscovery: () => void;
}

/**
 * Shared scaffold for Leadli product pages. Renders the full sales-page
 * anatomy (hero → leak → mockup → what you get → deep dive → use cases →
 * callout → connections → more features → final CTA) from a content object,
 * so each feature page stays consistent and compact.
 */
export function ProductPageScaffold({ content, mockup, onOpenDiscovery }: Props) {
  const c = content;
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) => !c.excludeFromRelated?.includes(f.slug) && f.slug !== "",
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
              {c.categoryLabel}
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <c.icon className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                {c.title}
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                {c.subtitle}
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            {c.body}
          </p>

          {c.replaces.length > 0 && (
            <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
              <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
              {c.replaces.map((name) => (
                <span
                  key={name}
                  className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
                  dangerouslySetInnerHTML={{ __html: name }}
                />
              ))}
            </div>
          )}

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
                {c.leakHeading}
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              {c.leakBody.map((p, i) => (
                <p
                  key={i}
                  className="text-base sm:text-lg text-slate-700 leading-relaxed"
                  dangerouslySetInnerHTML={{ __html: p }}
                />
              ))}
              <div className="flex flex-wrap gap-2.5 pt-2">
                {c.leakChips.map((item) => (
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

      {/* ===== MOCKUP ===== */}
      {mockup && (
        <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
          <div className="max-w-6xl mx-auto px-4 sm:px-6">
            <div className="text-center max-w-2xl mx-auto mb-12">
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                The dashboard your firm actually needs
              </span>
              <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
                {c.mockupHeading}
              </h2>
              <p className="mt-3 text-sm sm:text-base text-slate-600">{c.mockupSubhead}</p>
            </div>
            {mockup}
          </div>
        </section>
      )}

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              What you get
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              {c.whatYouGetHeading}
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {c.capabilities.map((cap) => {
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
                      <p
                        className="text-sm text-slate-600 mt-1.5 leading-relaxed"
                        dangerouslySetInnerHTML={{ __html: cap.body }}
                      />
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
                  This is part of the single platform we configure around how your firm runs &mdash;
                  not a separate tool with its own login, its own pricing, and its own disconnected
                  data. One inbox, one rate, one place where everything lives.
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
      {c.deepDive && (
        <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
          <div className="max-w-5xl mx-auto px-4 sm:px-6">
            <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
              {(["left", "right"] as const).map((side) => {
                const col = c.deepDive![side];
                return (
                  <div key={side}>
                    <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                      <span className="text-xs font-bold uppercase tracking-wider">
                        {col.label}
                      </span>
                    </div>
                    <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                      {col.heading}
                    </h2>
                    <p
                      className="mt-4 text-base text-slate-700 leading-relaxed"
                      dangerouslySetInnerHTML={{ __html: col.body }}
                    />
                    <ul className="mt-6 space-y-2.5">
                      {col.bullets.map((item) => (
                        <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                          <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                          <span dangerouslySetInnerHTML={{ __html: item }} />
                        </li>
                      ))}
                    </ul>
                  </div>
                );
              })}
            </div>
          </div>
        </section>
      )}

      {/* ===== USE CASES ===== */}
      {c.useCases && (
        <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
          <div className="max-w-5xl mx-auto px-4 sm:px-6">
            <div className="text-center max-w-2xl mx-auto mb-12">
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                Built for the work you already do
              </span>
              <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
                Three moments. One platform.
              </h2>
            </div>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-5">
              {c.useCases.map((uc) => {
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
                    <p
                      className="text-sm text-slate-600 leading-relaxed flex-1"
                      dangerouslySetInnerHTML={{ __html: uc.body }}
                    />
                    <div className="mt-4 pt-3 border-t border-slate-200">
                      <span className="inline-flex items-center gap-1.5 text-[11px] font-bold text-[#3344b8]">
                        <ArrowRight className="w-3.5 h-3.5 text-amber-500" />
                        {uc.trigger}
                      </span>
                    </div>
                  </div>
                );
              })}
            </div>
          </div>
        </section>
      )}

      {/* ===== CALLOUT ===== */}
      {c.callout && (
        <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
          <div className="max-w-4xl mx-auto px-4 sm:px-6">
            <div className="rounded-3xl border border-slate-200 bg-white p-7 sm:p-10 shadow-sm">
              <div className="flex items-start gap-4">
                <div className="w-12 h-12 rounded-2xl bg-emerald-50 border border-emerald-200 flex items-center justify-center text-emerald-700 shrink-0">
                  <CheckCircle2 className="w-6 h-6" />
                </div>
                <div>
                  <div className="text-xs font-bold uppercase tracking-wider text-emerald-700 mb-1">
                    {c.callout.badge}
                  </div>
                  <h3 className="text-xl sm:text-2xl font-black text-[#12193b] tracking-tight">
                    {c.callout.heading}
                  </h3>
                  <p
                    className="mt-3 text-sm sm:text-base text-slate-700 leading-relaxed"
                    dangerouslySetInnerHTML={{ __html: c.callout.body }}
                  />
                  <div className="mt-5 flex flex-wrap gap-2.5">
                    {c.callout.chips.map((chip) => {
                      const Icon = chip.icon;
                      return (
                        <span
                          key={chip.label}
                          className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                        >
                          <Icon className="w-3.5 h-3.5" />
                          {chip.label}
                        </span>
                      );
                    })}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      )}

      {/* ===== CONNECTED ===== */}
      {c.connections && (
        <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
          <div className="max-w-5xl mx-auto px-4 sm:px-6">
            <div className="text-center max-w-2xl mx-auto mb-12">
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                Connected, not copied
              </span>
              <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
                {c.connections.heading}
              </h2>
              <p className="mt-3 text-sm sm:text-base text-slate-600">{c.connections.subhead}</p>
            </div>
            <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
              {c.connections.items.map((conn) => {
                const Icon = conn.icon;
                return (
                  <div
                    key={conn.label}
                    className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-4 text-center flex flex-col items-center gap-2"
                  >
                    <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
                      <Icon className="w-5 h-5" />
                    </div>
                    <span
                      className="text-xs font-bold text-slate-700 leading-snug"
                      dangerouslySetInnerHTML={{ __html: conn.label }}
                    />
                  </div>
                );
              })}
            </div>
          </div>
        </section>
      )}

      {/* ===== MORE FEATURES ===== */}
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              {c.title.replace(/^Leadli\s*/, "")} is just the start. Explore the rest of
              what&rsquo;s included with Leadli.
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
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">{c.finalCtaHeading}</h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            {c.finalCtaBody}
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
