import { useEffect, useState } from "react";
import { Link } from "@tanstack/react-router";
import { Sparkles, ArrowRight, X } from "lucide-react";

const DISMISS_KEY = "leadli2-banner-dismissed";

/**
 * Dismissible "Leadli 2.0 is here" announcement banner.
 * Renders at the very top of a page (above the sticky header).
 * Dismissal persists in localStorage for ~30 days.
 */
export function Leadli2Banner({ dark = false }: { dark?: boolean }) {
  const [show, setShow] = useState(false);

  useEffect(() => {
    try {
      const dismissedAt = Number(localStorage.getItem(DISMISS_KEY) ?? "0");
      // Re-show after 30 days
      if (!dismissedAt || Date.now() - dismissedAt > 30 * 24 * 60 * 60 * 1000) {
        setShow(true);
      }
    } catch {
      setShow(true);
    }
  }, []);

  const dismiss = () => {
    try {
      localStorage.setItem(DISMISS_KEY, String(Date.now()));
    } catch {}
    setShow(false);
  };

  if (!show) return null;

  return (
    <div
      className={`relative z-50 w-full overflow-hidden transition-all ${
        dark ? "text-white" : "text-white"
      }`}
      style={{
        background:
          "linear-gradient(90deg, oklch(0.16 0.04 265), oklch(0.3 0.14 295) 45%, oklch(0.6 0.17 48))",
      }}
    >
      <div className="absolute inset-0 opacity-20 pointer-events-none bg-[radial-gradient(#fff_1px,transparent_1px)] [background-size:16px_16px]" />
      <div className="max-w-7xl mx-auto px-4 sm:px-6">
        <div className="flex items-center justify-center gap-3 sm:gap-4 py-2.5 sm:py-3 relative">
          <span
            className="inline-flex items-center gap-1.5 px-2.5 py-0.5 rounded-full text-[11px] font-black uppercase tracking-wider shrink-0"
            style={{
              background: "rgba(255,255,255,0.18)",
              border: "1px solid rgba(255,255,255,0.3)",
            }}
          >
            <Sparkles className="w-3 h-3" />
            New
          </span>

          <p className="text-xs sm:text-sm font-bold leading-snug text-center">
            <span className="hidden sm:inline">Leadli 2.0 is here — </span>
            <span className="sm:hidden">Leadli 2.0 — </span>
            outbound AI agents, native project management &amp; flat-rate AI from $40/mo.
          </p>

          <Link
            to="/whats-new"
            className="hidden xs:inline-flex sm:inline-flex items-center gap-1 px-3 py-1 rounded-full bg-white text-[#12193b] text-xs font-black shrink-0 hover:bg-amber-100 transition-colors"
          >
            See what's new
            <ArrowRight className="w-3 h-3" />
          </Link>

          <button
            onClick={dismiss}
            aria-label="Dismiss announcement"
            className="absolute right-0 top-1/2 -translate-y-1/2 w-7 h-7 rounded-full flex items-center justify-center hover:bg-white/15 transition-colors shrink-0 cursor-pointer"
          >
            <X className="w-3.5 h-3.5" />
          </button>
        </div>
      </div>
    </div>
  );
}
