import React from "react";

export function MantraSection() {
  return (
    <section id="order" className="py-16 sm:py-24 bg-[#fcfbf8]">
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
          <div className="lg:col-span-6 space-y-6">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              The Core Strategy
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] tracking-tight leading-tight">
              Start Closest to the Money.
            </h2>
            <p className="text-slate-700 text-base sm:text-lg leading-relaxed">
              Most marketers start with ads and traffic. We think that’s nuts. It's like pouring water into a bucket full of holes. It doesn’t matter how much you pour in until you plug the holes.
            </p>
            <p className="text-slate-700 text-base sm:text-lg leading-relaxed">
              So we do it backwards. Find the moment someone gives you money, then fix everything right before that. We think the most important thing that a firm can have is a buttery smooth intake process.
            </p>
            <p className="text-slate-700 text-base sm:text-lg leading-relaxed">
              For an estate planning firm, that moment is the initial consult: they decide whether they like you and trust you, they sign your engagement letter, and then they cut a check. That's where we start.
            </p>
          </div>

          {/* Order Visual */}
          <div className="lg:col-span-6 bg-white border-2 border-slate-200/90 rounded-2xl p-6 sm:p-8 shadow-md">
            <h3 className="text-sm font-extrabold uppercase tracking-wider text-slate-500 mb-6">
              The Order We Work In:
            </h3>

            <div className="space-y-3 relative">
              {/* Item 1 - Featured */}
              <div className="bg-[#3344b8] text-white p-4 rounded-xl shadow-md border border-blue-600 flex items-center justify-between">
                <div className="flex items-center gap-3">
                  <span className="w-8 h-8 rounded-full bg-white text-[#3344b8] font-bold flex items-center justify-center text-sm shrink-0">
                    1
                  </span>
                  <div>
                    <div className="font-bold text-base">Your intake process</div>
                    <div className="text-xs text-blue-100"></div>
                  </div>
                </div>
                <span className="text-xs bg-amber-400 text-slate-950 font-bold px-2.5 py-1 rounded-md uppercase">
                  Start Here
                </span>
              </div>

              {/* Item 2 */}
              <div className="bg-slate-50 border border-slate-200 p-3.5 rounded-xl flex items-center gap-3 text-slate-700 font-medium">
                <span className="w-7 h-7 rounded-full bg-slate-200 text-slate-700 font-bold flex items-center justify-center text-xs shrink-0">
                  2
                </span>
                <span>Your website</span>
              </div>

              {/* Item 3 */}
              <div className="bg-slate-50 border border-slate-200 p-3.5 rounded-xl flex items-center gap-3 text-slate-700 font-medium">
                <span className="w-7 h-7 rounded-full bg-slate-200 text-slate-700 font-bold flex items-center justify-center text-xs shrink-0">
                  3
                </span>
                <span>Email &amp; Text Marketing</span>
              </div>

              {/* Item 4 */}
              <div className="bg-slate-50 border border-slate-200 p-3.5 rounded-xl flex items-center gap-3 text-slate-700 font-medium">
                <span className="w-7 h-7 rounded-full bg-slate-200 text-slate-700 font-bold flex items-center justify-center text-xs shrink-0">
                  4
                </span>
                <span>Lead Magnets</span>
              </div>

              {/* Item 5 */}
              <div className="bg-slate-100 border border-slate-200 p-3.5 rounded-xl flex items-center gap-3 text-slate-500 line-through text-xs sm:text-sm">
                <span className="w-7 h-7 rounded-full bg-slate-200 text-slate-500 font-bold flex items-center justify-center text-xs shrink-0">
                  5
                </span>
                <span>Ads and social media (Don't start here!!)</span>
              </div>
            </div>

            <div className="mt-6 p-4 bg-amber-50 rounded-xl border border-amber-200 text-xs sm:text-sm text-amber-900 font-semibold text-center">
              Plug the holes first. Then we turn up the water.
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
