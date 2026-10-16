import React from "react";
import { ArrowRight } from "lucide-react";

export function HeroSection({ onBookClick }: { onBookClick: () => void }) {
  return (
    <section className="relative pt-12 pb-20 sm:pt-16 sm:pb-28 overflow-hidden">
      {/* Subtle background glow */}
      <div className="absolute top-10 left-1/2 -translate-x-1/2 w-[700px] h-[400px] bg-gradient-to-tr from-blue-100/40 via-amber-100/30 to-purple-100/20 blur-3xl pointer-events-none rounded-full" />

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center">
        {/* Urgency Pill */}
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-amber-500/15 border border-amber-500/30 text-amber-900 text-xs sm:text-sm font-bold mb-6">
          <span className="w-2 h-2 rounded-full bg-amber-600 animate-pulse" />
          <span>Only 2 new clients per month. November: 2 spots open.</span>
        </div>

        {/* Headline */}
        <h1 className="text-3xl sm:text-5xl md:text-6xl font-extrabold text-[#12193b] tracking-tight leading-[1.15]">
          Stop Pouring Money Into a Leaky Bucket.{" "}
          <span className="block text-[#3344b8] mt-1">Fix Your Estate Planning Intake First.</span>
        </h1>

        {/* Subheadline */}
        <p className="mt-6 text-lg sm:text-xl text-slate-700 max-w-3xl mx-auto leading-relaxed font-normal">
          In 4-6 weeks, we build a custom intake system around the way your firm actually works, so
          more of the people who contact you show up, understand your fees, and hire you.
        </p>

        {/* Hero CTA Box */}
        <div className="mt-8 flex flex-col items-center gap-3">
          <button
            onClick={onBookClick}
            className="group relative inline-flex items-center justify-center gap-3 px-8 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl hover:scale-[1.01] transition-all cursor-pointer border-2 border-blue-400/30"
          >
            <strong>Book My Discovery Call</strong>
            <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
          </button>

          <p className="text-xs sm:text-sm text-slate-600 font-medium">
            30 minutes. See if it’s right for you and leave with a clear estimate.
          </p>
        </div>

        {/* Visual Proof / Quick Badges */}
        <div className="mt-12 pt-8 border-t border-slate-200/80 grid grid-cols-2 md:grid-cols-4 gap-4 max-w-4xl mx-auto">
          <div className="bg-white/80 p-3.5 rounded-xl border border-slate-200 text-center shadow-xs">
            <div className="text-xs text-slate-500 font-semibold uppercase">Show Rate</div>
            <div className="text-xl sm:text-2xl font-extrabold text-emerald-600 mt-0.5">85%+</div>
            <div className="text-[11px] text-slate-500">vs 40% industry avg</div>
          </div>
          <div className="bg-white/80 p-3.5 rounded-xl border border-slate-200 text-center shadow-xs">
            <div className="text-xs text-slate-500 font-semibold uppercase">Avg Case Value</div>
            <div className="text-xl sm:text-2xl font-extrabold text-[#3344b8] mt-0.5">
              $3.5k - $7k
            </div>
            <div className="text-[11px] text-slate-500">Pre-educated trusts</div>
          </div>
          <div className="bg-white/80 p-3.5 rounded-xl border border-slate-200 text-center shadow-xs">
            <div className="text-xs text-slate-500 font-semibold uppercase">Admin Time/Lead</div>
            <div className="text-xl sm:text-2xl font-extrabold text-[#f97316] mt-0.5">
              &lt; 15 Mins
            </div>
            <div className="text-[11px] text-slate-500">vs 3+ hrs manual</div>
          </div>
          <div className="bg-white/80 p-3.5 rounded-xl border border-slate-200 text-center shadow-xs">
            <div className="text-xs text-slate-500 font-semibold uppercase">Build Timeline</div>
            <div className="text-xl sm:text-2xl font-extrabold text-slate-900 mt-0.5">
              4-6 Weeks
            </div>
            <div className="text-[11px] text-slate-500">100% custom system</div>
          </div>
        </div>
      </div>
    </section>
  );
}
