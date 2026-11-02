import { ArrowRight, Check, Cpu } from "lucide-react";

export function AIPricingBlock({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative py-20 sm:py-28 overflow-hidden">
      <div
        className="absolute inset-0 pointer-events-none"
        style={{
          background:
            "radial-gradient(60% 60% at 50% 0%, color-mix(in oklab, var(--v2-violet) 22%, transparent), transparent 70%)",
        }}
      />
      <div className="absolute inset-0 v2-noise opacity-30 pointer-events-none" />
      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
        <div
          className="rounded-[2rem] p-8 sm:p-12 lg:p-16 relative overflow-hidden v2-glow"
          style={{
            background:
              "linear-gradient(150deg, color-mix(in oklab, var(--v2-violet) 26%, var(--v2-surface)), var(--v2-surface) 55%, color-mix(in oklab, var(--v2-electric) 18%, var(--v2-surface)))",
            border: "1px solid color-mix(in oklab, var(--v2-violet) 40%, var(--v2-border))",
          }}
        >
          <div
            className="absolute -top-24 -right-24 w-72 h-72 rounded-full blur-3xl pointer-events-none v2-drift"
            style={{ background: "#a78bfa", opacity: 0.3 }}
          />
          <div
            className="absolute -bottom-24 -left-24 w-72 h-72 rounded-full blur-3xl pointer-events-none v2-drift"
            style={{ background: "#22d3ee", opacity: 0.2, animationDelay: "3s" }}
          />

          <div className="relative grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
              <div
                className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide v2-glow-cyan"
                style={{
                  background: "color-mix(in oklab, var(--v2-electric) 16%, transparent)",
                  color: "var(--v2-electric)",
                }}
              >
                <Cpu className="w-3.5 h-3.5" />
                Want to go unlimited?
              </div>
              <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)] leading-[1.1]">
                Unlimited AI for your whole workspace.
              </h2>
              <p className="mt-5 text-base sm:text-lg text-[var(--v2-muted)] leading-relaxed">
                Turn on flat-rate AI across your entire team — no per-seat metering, no surprise
                overages. Generate as much as your business needs. The new features above are
                already free in your account; this is for when you want to take the AI further.
              </p>

              <div className="mt-7 flex items-end gap-2">
                <span className="text-5xl sm:text-6xl font-black v2-shimmer-text">$40</span>
                <span className="text-xl font-bold text-[var(--v2-muted)] mb-1">/mo</span>
                <span className="text-sm text-[var(--v2-muted)] mb-2 ml-2">per workspace</span>
              </div>
            </div>

            <ul className="space-y-3.5">
              {[
                "Unlimited AI generation across the workspace",
                "Ask AI, AI Studio, Creator Studio, workflows & AI email",
                "No per-seat AI metering — one flat rate",
                "Managed agents & Conversation AI stay premium add-ons",
              ].map((t) => (
                <li
                  key={t}
                  className="flex items-start gap-3 p-4 rounded-xl"
                  style={{
                    background: "color-mix(in oklab, var(--v2-bg-2) 70%, transparent)",
                    border: "1px solid var(--v2-border)",
                  }}
                >
                  <span
                    className="mt-0.5 w-5 h-5 rounded-full flex items-center justify-center shrink-0"
                    style={{
                      background: "color-mix(in oklab, var(--v2-electric) 26%, transparent)",
                      color: "var(--v2-electric)",
                    }}
                  >
                    <Check className="w-3 h-3" strokeWidth={3} />
                  </span>
                  <span className="text-sm font-semibold text-[var(--v2-text)] leading-snug">
                    {t}
                  </span>
                </li>
              ))}
              <li>
                <button
                  onClick={onOpenDiscovery}
                  className="mt-2 w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl font-bold text-sm transition-all cursor-pointer"
                  style={{ background: "var(--v2-electric)", color: "#06243a" }}
                >
                  Talk to us about unlimited AI
                  <ArrowRight className="w-4 h-4" />
                </button>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
}
