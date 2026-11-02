import { Zap } from "lucide-react";
import { TICKER_ITEMS } from "@/components/home/leadli2-data";

function TickerChip({ label, variant = "orange" }: { label: string; variant?: "orange" | "cyan" }) {
  const isCyan = variant === "cyan";
  const accent = isCyan ? "var(--v2-electric)" : "var(--v2-accent)";
  return (
    <div
      className="flex items-center gap-2.5 px-4 py-2.5 rounded-full whitespace-nowrap shrink-0"
      style={{
        background: "color-mix(in oklab, var(--v2-surface) 80%, transparent)",
        border: "1px solid color-mix(in oklab, " + accent + " 30%, var(--v2-border))",
      }}
    >
      <span className="w-1.5 h-1.5 rounded-full v2-pulse-soft" style={{ background: accent }} />
      <span className="text-sm font-bold text-[var(--v2-text)]">{label}</span>
    </div>
  );
}

export function TickerStrip() {
  const row1 = [...TICKER_ITEMS, ...TICKER_ITEMS];
  const reversed = [...TICKER_ITEMS].reverse();
  const row2 = [...reversed, ...reversed];

  return (
    <section
      className="relative py-14 sm:py-20 overflow-hidden"
      style={{ background: "var(--v2-bg)" }}
    >
      <div className="absolute inset-0 v2-grid-bg opacity-25 pointer-events-none" />
      <div
        className="absolute inset-y-0 left-0 w-24 sm:w-40 z-10 pointer-events-none"
        style={{ background: "linear-gradient(90deg, var(--v2-bg), transparent)" }}
      />
      <div
        className="absolute inset-y-0 right-0 w-24 sm:w-40 z-10 pointer-events-none"
        style={{ background: "linear-gradient(270deg, var(--v2-bg), transparent)" }}
      />

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center mb-10">
        <div
          className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide uppercase"
          style={{
            background: "color-mix(in oklab, var(--v2-accent) 16%, transparent)",
            color: "var(--v2-accent)",
            border: "1px solid color-mix(in oklab, var(--v2-accent) 35%, transparent)",
          }}
        >
          <Zap className="w-3.5 h-3.5" />
          And a whole lot more
        </div>
        <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)]">
          Dozens of smaller upgrades, all in this cycle.
        </h2>
        <p className="mt-4 text-base sm:text-lg text-[var(--v2-muted)] max-w-2xl mx-auto">
          The headline releases get the spotlight — but the platform moved forward in dozens of
          other ways this cycle too. Here's a scroll of what else just landed in your account.
        </p>
      </div>

      <div className="relative flex overflow-hidden py-3">
        <div className="flex shrink-0 v2-marquee gap-3 pr-3">
          {row1.map((t, i) => (
            <TickerChip key={`a-${i}`} label={t} />
          ))}
        </div>
      </div>
      <div className="relative flex overflow-hidden py-3 mt-1">
        <div className="flex shrink-0 v2-marquee-rev gap-3 pr-3">
          {row2.map((t, i) => (
            <TickerChip key={`b-${i}`} label={t} variant="cyan" />
          ))}
        </div>
      </div>
    </section>
  );
}
