import React from "react";
import { ArrowRight, CheckCircle2, X, Sparkles } from "lucide-react";
import { getCapacityMonth } from "@/lib/capacity-month";

export function ComparisonAndProcess({ onBookClick }: { onBookClick: () => void }) {
  return (
    <>
      {/* WHY THIS IS DIFFERENT */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8]">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              The Fundamental Difference
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              Most agencies sell you leads or traffic. We fix the process that decides whether those leads become clients.
            </h2>
          </div>

          <div className="bg-white rounded-2xl border-2 border-slate-200 overflow-hidden shadow-lg">
            <div className="overflow-x-auto">
              <table className="w-full text-left border-collapse">
                <thead>
                  <tr className="border-b border-slate-200 bg-slate-50 text-slate-900 text-xs sm:text-sm font-bold uppercase tracking-wider">
                    <th className="py-4 px-6">Metric</th>
                    <th className="py-4 px-6 text-rose-700 bg-rose-50/60">
                      Industry Chaos (I mean, average)
                    </th>
                    <th className="py-4 px-6 text-emerald-800 bg-emerald-50/80">GrowthOS Goal</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-slate-200 text-sm sm:text-base">
                  <tr>
                    <td className="py-4 px-6 font-bold text-slate-800">Consult Show Rate</td>
                    <td className="py-4 px-6 text-slate-600 bg-rose-50/20">40-50%</td>
                    <td className="py-4 px-6 font-extrabold text-emerald-700 bg-emerald-50/40">
                      85%+
                    </td>
                  </tr>
                  <tr>
                    <td className="py-4 px-6 font-bold text-slate-800">Average Case Value</td>
                    <td className="py-4 px-6 text-slate-600 bg-rose-50/20">$800 (Wills)</td>
                    <td className="py-4 px-6 font-extrabold text-[#3344b8] bg-emerald-50/40">
                      $3,500-$7,000 (Trusts)
                    </td>
                  </tr>
                  <tr>
                    <td className="py-4 px-6 font-bold text-slate-800">Admin Time per Lead</td>
                    <td className="py-4 px-6 text-slate-600 bg-rose-50/20">3+ Hours</td>
                    <td className="py-4 px-6 font-extrabold text-[#f97316] bg-emerald-50/40">
                      &lt; 15 Minutes
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div className="px-6 py-2.5 bg-slate-50 text-right text-[11px] text-slate-500 italic">
              Results will vary.
            </div>
          </div>

          <div className="mt-8 bg-blue-50/70 border border-blue-200 rounded-2xl p-6 sm:p-8">
            <div className="flex flex-col sm:flex-row gap-6 items-start">
              <div className="w-12 h-12 rounded-xl bg-[#3344b8] text-white flex items-center justify-center shrink-0 font-bold">
                VS
              </div>
              <div className="space-y-3">
                <h4 className="text-xl font-bold text-slate-900">Lead vs. Pre-Sold Client</h4>
                <p className="text-slate-700 text-sm sm:text-base leading-relaxed">
                  A <strong>lead</strong> is a person who clicked a button. A{" "}
                  <strong>pre-sold client</strong> has watched your educational videos, has seen
                  what you charge, and has booked a time that works for both of you.
                </p>
                <p className="text-sm sm:text-base font-semibold text-[#3344b8]">
                  In other words, they show up already trusting you and ready to move forward.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* HOW IT WORKS */}
      <section id="how-it-works" className="py-16 sm:py-24 bg-white border-y border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-14">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              The 3-Step Plan
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              From first call to a finished intake process.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 relative">
            <div className="bg-[#fcfbf8] rounded-2xl p-7 border-2 border-slate-200 flex flex-col justify-between">
              <div>
                <div className="w-12 h-12 rounded-xl bg-[#3344b8] text-white font-extrabold text-lg flex items-center justify-center mb-5">
                  1
                </div>
                <h3 className="text-xl font-bold text-slate-900 mb-1">The Discovery Call</h3>
                <span className="text-xs font-semibold text-amber-700 uppercase">30 minutes</span>
                <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                  We ask a lot of questions about how your firm runs, from first inquiry to signed engagement letter. By the end of the call, you’ll know whether we’re a good fit, and you’ll have a clear estimate of the work we'll do together and what it will cost.
                </p>
              </div>
              <div className="mt-6 pt-4 border-t border-slate-200/80 text-xs font-semibold text-[#3344b8]">
                Clear estimate guaranteed
              </div>
            </div>

            <div className="bg-[#fcfbf8] rounded-2xl p-7 border-2 border-slate-200 flex flex-col justify-between">
              <div>
                <div className="w-12 h-12 rounded-xl bg-[#f97316] text-white font-extrabold text-lg flex items-center justify-center mb-5">
                  2
                </div>
                <h3 className="text-xl font-bold text-slate-900 mb-1">The Custom Build</h3>
                <span className="text-xs font-semibold text-[#f97316] uppercase">4-6 weeks</span>
                <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                  We meet every week, and every week there’s work on both sides: homework for you,
                  building for us. Plan on 1-2 hours a week in meetings so we can understand your
                  business, plus about an hour of homework. Whether it takes 4 weeks or 6 depends on
                  how many services you offer, how much availability we get, and how quickly the
                  homework comes back. If we’re waiting a week on a piece of information, we’ve lost
                  a week.
                </p>
              </div>
              <div className="mt-6 pt-4 border-t border-slate-200/80 text-xs font-semibold text-[#f97316]">
                Iterative weekly progress
              </div>
            </div>

            <div className="bg-[#fcfbf8] rounded-2xl p-7 border-2 border-slate-200 flex flex-col justify-between">
              <div>
                <div className="w-12 h-12 rounded-xl bg-emerald-600 text-white font-extrabold text-lg flex items-center justify-center mb-5">
                  3
                </div>
                <h3 className="text-xl font-bold text-slate-900 mb-1">Launch and Grow</h3>
                <span className="text-xs font-semibold text-emerald-700 uppercase">
                  Fully operational
                </span>
                <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                  You walk away with a working intake system. From there you can keep building with
                  us, or move to support-only: we train your team, and you decide when and how to
                  use our support team.
                </p>
              </div>
              <div className="mt-6 pt-4 border-t border-slate-200/80 text-xs font-semibold text-emerald-700">
                You own your intake system
              </div>
            </div>
          </div>

          <div className="mt-12 text-center">
            <button
              onClick={onBookClick}
              className="inline-flex items-center justify-center gap-3 px-8 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book My Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
          </div>
        </div>
      </section>

      {/* RISK REVERSAL AND CAPACITY */}
      <section className="py-16 sm:py-24 bg-linear-to-b from-[#12193b] via-[#1a2558] to-[#12193b] text-white">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 text-center">
          <span className="text-xs font-bold uppercase tracking-wider text-amber-300 bg-amber-400/10 px-3.5 py-1 rounded-full border border-amber-400/30">
            30-Day Zero-Risk Guarantee & Capacity
          </span>

          <h2 className="text-3xl sm:text-5xl font-extrabold text-white mt-4 tracking-tight">
            Try it for 30 days. If it’s not a fit, we’ll tear up the first invoice.
          </h2>

          <div className="mt-8 bg-white/10 backdrop-blur-md p-6 sm:p-8 rounded-2xl border border-white/20 text-slate-200 text-base sm:text-lg leading-relaxed max-w-3xl mx-auto">
            <p>
              If you decide in the first 30 days that we’re not right for you, and you’ve done your
              homework and shown up for our meetings, we’ll tear up your first invoice. We’ll also
              cover the cost of the software for those 30 days.
            </p>
          </div>

          <div className="mt-8 inline-flex items-center gap-3 px-5 py-2.5 rounded-full bg-amber-400/20 border border-amber-400/40 text-amber-300 font-bold text-sm sm:text-base">
            <Sparkles className="w-5 h-5 text-amber-400" />
            <span>We only take 2 new clients per month. {getCapacityMonth()}: 2 spots open.</span>
          </div>

          <p className="mt-4 text-xs sm:text-sm text-slate-300 max-w-xl mx-auto">
            Because every build is fully custom, we don't take on more than that.
          </p>

          <div className="mt-8">
            <button
              onClick={onBookClick}
              className="inline-flex items-center justify-center gap-3 px-8 py-4 text-base sm:text-lg font-bold bg-[#f97316] hover:bg-[#ea580c] text-white rounded-2xl shadow-xl hover:shadow-orange-500/25 transition-all cursor-pointer"
            >
              <strong>Claim One of 2 {getCapacityMonth()} Spots</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
          </div>
        </div>
      </section>

      {/* WHO IT’S FOR (AND WHO IT’S NOT) */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8]">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-14">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              Firm Qualification
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              Who It’s For (And Who It’s Not)
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="bg-white rounded-2xl p-8 border-2 border-emerald-300 shadow-md">
              <div className="flex items-center gap-2 text-emerald-700 font-bold text-lg mb-4">
                <CheckCircle2 className="w-6 h-6" />
                <span>GrowthOS is for you if:</span>
              </div>
              <ul className="space-y-4 text-sm sm:text-base text-slate-700">
                <li className="flex items-start gap-3">
                  <div className="w-5 h-5 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center shrink-0 mt-0.5">
                    ✓
                  </div>
                  <span>
                    You run a profitable estate planning firm, whether you're a solo attorney with plans to grow, or leading a full team. (We LOVE workign with small businesses, and our pricing and service reflects that)
                  </span>
                </li>
                <li className="flex items-start gap-3">
                  <div className="w-5 h-5 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center shrink-0 mt-0.5">
                    ✓
                  </div>
                  <span>You believe in educating clients before asking them to buy. </span>
                </li>
                <li className="flex items-start gap-3">
                  <div className="w-5 h-5 rounded-full bg-emerald-100 text-emerald-700 flex items-center justify-center shrink-0 mt-0.5">
                    ✓
                  </div>
                  <span>You’ll commit about 2-3 hours a week during the build</span>
                </li>
              </ul>
            </div>

            <div className="bg-white rounded-2xl p-8 border-2 border-rose-300 shadow-md">
              <div className="flex items-center gap-2 text-rose-700 font-bold text-lg mb-4">
                <X className="w-6 h-6" />
                <span>It’s not for you if:</span>
              </div>
              <ul className="space-y-4 text-sm sm:text-base text-slate-700">
                <li className="flex items-start gap-3">
                  <div className="w-5 h-5 rounded-full bg-rose-100 text-rose-700 flex items-center justify-center shrink-0 mt-0.5 font-bold">
                    ✕
                  </div>
                  <span>
                    You’re looking for a last-ditch rescue. We make profitable firms more
                    profitable. We install a process; we don’t work miracles.
                  </span>
                </li>
                <li className="flex items-start gap-3">
                  <div className="w-5 h-5 rounded-full bg-rose-100 text-rose-700 flex items-center justify-center shrink-0 mt-0.5 font-bold">
                    ✕
                  </div>
                  <span>You want a template dropped on your firm. We don’t do that.</span>
                </li>
              </ul>
            </div>
          </div>

          <div className="mt-8 bg-blue-50/70 border border-blue-200 rounded-xl p-5 text-center text-xs sm:text-sm text-slate-700">
            <strong>Not an estate planner?</strong> The approach works for elder law, probate, other
            practice areas, and other professional services. Ask on the call.
          </div>

          <div className="mt-8 text-center">
            <button
              onClick={onBookClick}
              className="inline-flex items-center justify-center gap-2 px-8 py-3.5 text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-xl shadow-md transition-all cursor-pointer"
            >
              <strong>See If GrowthOS Is Right for My Firm</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </section>
    </>
  );
}
