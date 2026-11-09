import { Link } from "@tanstack/react-router";
import { ArrowRight, Sparkles, ChevronRight } from "lucide-react";
import { getCapacityMonth } from "@/lib/capacity-month";

export function HomeHero({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const marqueeItems = [
    "Build it for you",
    "Train your team",
    "Troubleshoot",
    "Implement new ideas",
    "One connected system",
    "No loose ends",
    "Powered by Flying Leap Studio",
  ];

  return (
    <section className="hero-bold-canvas relative overflow-hidden pt-16 pb-0 sm:pt-24 sm:pb-0 text-white">
      {/* Layered background */}
      <div className="absolute inset-0 -z-10 pointer-events-none">
        <div className="hero-bold-grid absolute inset-0" />
        {/* Orange glow orb */}
        <div className="hero-glow absolute -top-24 left-[10%] w-[480px] h-[480px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-orange)_60%,transparent),transparent_70%)] blur-3xl" />
        {/* Blue accent glow */}
        <div className="hero-glow-2 absolute top-20 right-[8%] w-[420px] h-[420px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-blue)_55%,transparent),transparent_70%)] blur-3xl" />
        {/* Slow rotating dashed ring — decorative */}
        <svg
          className="hero-bold-spin absolute -right-32 top-1/2 -translate-y-1/2 w-[520px] h-[520px] opacity-[0.18] hidden lg:block"
          viewBox="0 0 200 200"
          fill="none"
        >
          <circle
            cx="100"
            cy="100"
            r="96"
            stroke="var(--brand-orange)"
            strokeWidth="0.5"
            strokeDasharray="2 6"
          />
          <circle cx="100" cy="100" r="72" stroke="#fff" strokeWidth="0.4" strokeDasharray="1 5" />
          <circle
            cx="100"
            cy="100"
            r="48"
            stroke="var(--brand-blue)"
            strokeWidth="0.4"
            strokeDasharray="1 4"
          />
        </svg>
      </div>

      <div className="max-w-6xl mx-auto px-4 sm:px-6 relative text-center">
        {/* Eyebrow — live status pill */}
        <div className="hero-rise hero-rise-1 inline-flex items-center gap-2.5 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-white/90 text-xs sm:text-sm font-bold mb-10 backdrop-blur-sm">
          <span className="hero-bold-dot w-2 h-2 rounded-full bg-[var(--brand-orange)]" />
          <span>One Team. One Platform. No Loose Ends.</span>
        </div>

        {/* Oversized headline — line by line reveal */}
        <h1 className="font-black tracking-tight leading-[0.95] text-5xl sm:text-7xl md:text-8xl lg:text-[8.5rem]">
          <span className="hero-bold-line block text-white" style={{ animationDelay: "0.08s" }}>
            You built a business
          </span>
          <span className="hero-bold-line block text-white" style={{ animationDelay: "0.18s" }}>
            you're <span className="italic font-light">proud</span> of.
          </span>
        </h1>

        <p
          className="hero-bold-line hero-bold-orange-text mt-6 text-2xl sm:text-3xl md:text-4xl font-bold tracking-tight"
          style={{ animationDelay: "0.3s" }}
        >
          Now let's build the system it deserves.
        </p>

        {/* Supporting copy */}
        <div className="hero-rise hero-rise-4 mt-10 max-w-2xl mx-auto space-y-3">
          <p className="text-lg sm:text-xl text-white/70 leading-relaxed">
            Starting a business takes nerve. Growing one takes something more.
          </p>
          <p className="text-lg sm:text-xl text-white/70 leading-relaxed">
            We celebrate every flying leap you've already taken — your first client, your first
            pivot, your first hire — and we're here to support your next one.
          </p>
        </div>

        {/* Value proposition — bold bordered slab */}
        <div className="hero-rise hero-rise-5 mt-10 mx-auto max-w-3xl">
          <div className="relative rounded-2xl bg-white/[0.06] backdrop-blur-md border border-white/15 px-6 sm:px-10 py-7 shadow-2xl shadow-black/40">
            <div className="absolute -top-px left-1/2 -translate-x-1/2 w-2/3 h-px bg-gradient-to-r from-transparent via-[var(--brand-orange)] to-transparent" />
            <p className="text-xl sm:text-2xl md:text-3xl font-bold tracking-tight leading-snug text-white">
              Flying Leap Studio helps established service businesses replace scattered tools and
              guesswork with one connected system — and provides the{" "}
              <span className="hero-bold-orange-text">team</span> to grow it.
            </p>
          </div>
        </div>

        {/* CTAs */}
        <div className="hero-rise hero-rise-5 mt-10 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={onOpenDiscovery}
            className="group w-full sm:w-auto inline-flex items-center justify-center gap-3 px-9 sm:px-12 py-4 sm:py-5 text-base sm:text-lg font-black bg-[var(--brand-orange)] hover:brightness-110 text-[oklch(0.16_0.04_45)] rounded-2xl shadow-2xl shadow-orange-900/40 transition-all cursor-pointer border-2 border-white/10"
          >
            <strong>Build My System</strong>
            <ArrowRight className="w-5 h-5 transition-transform group-hover:translate-x-1" />
          </button>

          <Link
            to="/estate-planning"
            className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-7 py-4 sm:py-5 text-base font-bold bg-white/5 hover:bg-white/10 text-white rounded-2xl border-2 border-white/20 transition-all"
          >
            <span>Explore the Estate Planning Vertical</span>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </Link>
        </div>

        <p className="hero-rise hero-rise-5 mt-5 text-xs sm:text-sm text-white/50 font-medium">
          Customized setup • Concierge support • Only 2 build spots open for {getCapacityMonth()}
        </p>
      </div>

      {/* Kinetic marquee bar — bold, full-bleed, orange */}
      <div className="relative mt-16 sm:mt-24 border-y border-white/10 bg-[var(--brand-orange)] text-[oklch(0.16_0.04_45)] overflow-hidden">
        <div className="flex hero-bold-marquee-track whitespace-nowrap py-4 sm:py-5">
          {[...marqueeItems, ...marqueeItems, ...marqueeItems, ...marqueeItems].map((item, i) => (
            <span
              key={i}
              className="mx-6 sm:mx-10 text-lg sm:text-2xl font-black uppercase tracking-tight flex items-center gap-6 sm:gap-10"
            >
              {item}
              <span className="text-[oklch(0.16_0.04_45)]/40">✦</span>
            </span>
          ))}
        </div>
      </div>
    </section>
  );
}

export function SystemOverviewCard({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative py-20 sm:py-24 bg-[#fcfbf8] overflow-hidden">
      <div className="absolute inset-0 -z-10 pointer-events-none fl-light-grid" />
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="relative bg-white rounded-3xl border-2 border-slate-200/90 p-8 sm:p-12 shadow-xl overflow-hidden">
          <div className="absolute top-0 right-0 w-80 h-80 bg-[var(--brand-orange)]/10 rounded-full blur-3xl pointer-events-none -mr-20 -mt-20" />
          <div className="relative grid grid-cols-1 md:grid-cols-12 gap-8 items-center">
            <div className="md:col-span-7 space-y-4">
              <span className="fl-rise fl-rise-1 text-xs font-bold uppercase tracking-wider text-[var(--brand-orange)] bg-[var(--brand-orange)]/10 px-3 py-1 rounded-full border border-[var(--brand-orange)]/20 inline-block">
                The Flying Leap Difference
              </span>
              <h2 className="fl-rise fl-rise-2 text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] tracking-tight leading-[1.05]">
                One team. One platform. No loose ends.
              </h2>
              <div className="text-slate-600 text-sm sm:text-base leading-relaxed space-y-3">
                <p>
                  <strong>Flying Leap Studio</strong> is the team. <strong>Leadli</strong> is the
                  platform we build on.
                </p>
                <p>
                  Most businesses that come to us have tried software before — and either couldn't
                  get it off the ground or cobbled together something that technically works but
                  costs too much and breaks too often.
                </p>
                <p>
                  We fix that. We configure Leadli specifically for the way your business runs. Not
                  a generic template. A system built around your clients, your processes, and where
                  you're headed next.
                </p>
              </div>
              <div className="pt-4 grid grid-cols-2 sm:grid-cols-4 gap-3">
                {[
                  { label: "Build", text: "We build it for you." },
                  { label: "Train", text: "We train your team." },
                  { label: "Troubleshoot", text: "We fix what breaks." },
                  { label: "Implement", text: "We roll out new ideas." },
                ].map((p) => (
                  <div key={p.label} className="text-center">
                    <div className="text-xs font-extrabold text-[var(--brand-orange)] uppercase tracking-wider">
                      {p.label}
                    </div>
                    <div className="text-[11px] text-slate-500 mt-0.5 leading-tight">{p.text}</div>
                  </div>
                ))}
              </div>
              <div className="pt-2">
                <button
                  onClick={onOpenDiscovery}
                  className="inline-flex items-center gap-2 px-6 py-3 rounded-xl bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm shadow-md transition-all cursor-pointer"
                >
                  <strong>Build My System</strong>
                  <ArrowRight className="w-4 h-4" />
                </button>
                <span className="ml-3 text-xs text-slate-500">
                  Customized setup & concierge support
                </span>
              </div>
            </div>

            <div className="md:col-span-5 fl-dark-canvas text-white rounded-2xl p-6 shadow-inner space-y-4 relative overflow-hidden">
              <div className="fl-dark-grid absolute inset-0 opacity-60" />
              <div className="relative">
                <div className="text-xs uppercase font-extrabold text-[var(--brand-orange)] tracking-wider">
                  What You Get
                </div>
                <div className="space-y-3 text-sm mt-3">
                  <div className="flex items-start gap-2.5">
                    <Sparkles className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                    <span>No DIY headaches — our team builds it for you</span>
                  </div>
                  <div className="flex items-start gap-2.5">
                    <Sparkles className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                    <span>Replaces 10+ expensive separate subscriptions</span>
                  </div>
                  <div className="flex items-start gap-2.5">
                    <Sparkles className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                    <span>Automated intake, reminders & client journeys</span>
                  </div>
                  <div className="flex items-start gap-2.5">
                    <Sparkles className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                    <span>Direct access to our senior engineering & strategy team</span>
                  </div>
                </div>
                <div className="pt-3 mt-3 border-t border-white/10 text-xs text-slate-300">
                  Built on Leadli — configured around your exact workflow.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export function DuctTapeSection({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="fl-dark-canvas relative overflow-hidden py-20 sm:py-24 text-white">
      <div className="absolute inset-0 -z-10 pointer-events-none">
        <div className="fl-dark-grid absolute inset-0" />
        <div className="fl-glow absolute top-1/4 right-[10%] w-[400px] h-[400px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-orange)_45%,transparent),transparent_70%)] blur-3xl" />
      </div>

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-12">
          <h2 className="fl-rise fl-rise-1 text-3xl sm:text-4xl md:text-5xl font-black tracking-tight leading-[1.05]">
            Duct tape and a prayer is not the way to run a business.
          </h2>
          <p className="fl-rise fl-rise-2 mt-5 text-lg sm:text-xl text-white/70 leading-relaxed">
            When your systems don't connect, growth is inconsistent and slow — multiple logins,
            scattered data, and leads that keep slipping through the cracks end up costing more than
            just money.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-stretch">
          <div className="fl-rise bg-white/[0.05] backdrop-blur-sm rounded-2xl p-7 border border-rose-500/30">
            <div className="inline-flex items-center gap-2 text-rose-400 text-sm font-bold uppercase tracking-wider mb-4">
              <span className="text-rose-400 font-bold">✕</span>
              <span>Bloated Tech Stacks Keep You Stuck</span>
            </div>
            <ul className="space-y-3.5 text-white/70 text-sm sm:text-base">
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Paying for subscriptions with overlapping or unnecessary features</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Using tools that don't integrate cleanly with each other</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Patching together a single view of your pipeline across 5 tabs</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Wasting hours troubleshooting tech instead of serving clients</span>
              </li>
            </ul>
          </div>

          <div className="fl-rise fl-rise-2 bg-white/[0.06] backdrop-blur-sm rounded-2xl p-7 border border-[var(--brand-orange)]/30 flex flex-col justify-between">
            <div>
              <div className="inline-flex items-center gap-2 text-[var(--brand-orange)] text-sm font-bold uppercase tracking-wider mb-4">
                <Sparkles className="w-4 h-4" />
                <span>The Connected Solution</span>
              </div>
              <h3 className="text-xl sm:text-2xl font-black text-white mb-3">
                Flying Leap replaces the Frankensystem with Leadli.
              </h3>
              <p className="text-white/70 text-sm sm:text-base leading-relaxed">
                We design and implement the foundation, then we build, train, troubleshoot, and
                implement alongside you — turning scattered tech into a streamlined system built for
                growth. You're never on your own with this.
              </p>
            </div>

            <div className="mt-6 pt-5 border-t border-white/10">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl bg-[var(--brand-orange)] hover:brightness-110 text-[oklch(0.16_0.04_45)] font-bold text-sm sm:text-base shadow-lg transition-all cursor-pointer"
              >
                <strong>I'm Ready for One Connected System</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
