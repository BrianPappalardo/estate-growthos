import React from "react";
import { ArrowRight, Check } from "lucide-react";

export function TopBanner() {
  return (
    <div className="bg-[#0f1738] text-white py-2 px-4 text-center text-xs sm:text-sm font-bold tracking-wider uppercase border-b border-blue-900/40">
      <div className="max-w-7xl mx-auto flex items-center justify-center gap-2">
        <span className="inline-block w-2 h-2 rounded-full bg-amber-400 animate-pulse" />
        <span>PAPPALARDO DIGITAL IS NOW FLYING LEAP STUDIO!</span>
      </div>
    </div>
  );
}

export function FinalCtaSection({ onBookClick }: { onBookClick: () => void }) {
  return (
    <section className="py-20 sm:py-28 bg-[#12193b] text-white text-center relative overflow-hidden">
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-r from-blue-600/20 via-orange-500/20 to-purple-600/20 blur-3xl pointer-events-none rounded-full" />

      <div className="max-w-4xl mx-auto px-4 sm:px-6 relative">
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-amber-400/20 border border-amber-400/40 text-amber-300 text-xs sm:text-sm font-bold mb-6">
          <span className="w-2 h-2 rounded-full bg-amber-400 animate-pulse" />
          <span>November: Only 2 spots open</span>
        </div>

        <h2 className="text-3xl sm:text-5xl md:text-6xl font-black text-white tracking-tight leading-tight">
          Find out if GrowthOS is right for your firm.
        </h2>

        <p className="mt-6 text-base sm:text-xl text-slate-300 max-w-2xl mx-auto leading-relaxed">
          In 30 minutes, we’ll learn how your firm runs, tell you honestly whether we’re a fit, and
          give you a clear estimate. Only 2 spots open for November.
        </p>

        <div className="mt-10">
          <button
            onClick={onBookClick}
            className="group inline-flex items-center justify-center gap-3 px-10 py-5 text-lg sm:text-xl font-bold bg-[#f97316] hover:bg-[#ea580c] text-white rounded-2xl shadow-2xl hover:shadow-orange-500/30 transition-all cursor-pointer border-2 border-orange-400/40"
          >
            <strong>Book My Discovery Call</strong>
            <ArrowRight className="w-6 h-6 group-hover:translate-x-1.5 transition-transform" />
          </button>
        </div>

        <div className="mt-8 flex flex-wrap items-center justify-center gap-6 text-xs sm:text-sm text-slate-400">
          <div className="flex items-center gap-1.5">
            <Check className="w-4 h-4 text-emerald-400" />
            <span>30-minute discovery call</span>
          </div>
          <div className="flex items-center gap-1.5">
            <Check className="w-4 h-4 text-emerald-400" />
            <span>Clear custom estimate</span>
          </div>
          <div className="flex items-center gap-1.5">
            <Check className="w-4 h-4 text-emerald-400" />
            <span>30-day first-invoice guarantee</span>
          </div>
        </div>
      </div>
    </section>
  );
}
