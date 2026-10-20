import React from "react";
import { Check } from "lucide-react";

export function PricingCards({ onBookClick }: { onBookClick: () => void }) {
  return (
    <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-stretch">
      {/* Option 1 */}
      <div className="bg-white rounded-2xl border border-slate-200 p-8 shadow-xs flex flex-col justify-between">
        <div>
          <div className="text-xs font-extrabold uppercase tracking-wider text-slate-500">
            OPTION 1
          </div>
          <h3 className="text-2xl font-bold text-slate-900 mt-1">Software + Hourly</h3>
          <div className="mt-4 flex items-baseline gap-1">
            <span className="text-4xl font-extrabold text-[#12193b]">$199</span>
            <span className="text-slate-500 font-semibold text-sm">/mo for software</span>
          </div>
          <div className="text-sm font-semibold text-[#3344b8] mt-1">
            + $100/hr for our team’s time
          </div>
          <p className="mt-4 text-sm text-slate-600 leading-relaxed border-t border-slate-100 pt-4">
            This plan is super flexible — we can work with any budget or timeline, as fast or as
            slow as you need.
          </p>

          <ul className="mt-6 space-y-3 text-xs sm:text-sm text-slate-700">
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-emerald-600 shrink-0" />
              <span>Full 4-6 week custom intake buildout</span>
            </li>
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-emerald-600 shrink-0" />
              <span>Dedicated intake CRM software setup</span>
            </li>
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-emerald-600 shrink-0" />
              <span>Pay for design/dev hours only when needed</span>
            </li>
          </ul>
        </div>

        <button
          onClick={onBookClick}
          className="mt-8 w-full py-3.5 px-4 rounded-xl border-2 border-[#3344b8] text-[#3344b8] hover:bg-[#3344b8] hover:text-white font-bold transition-all"
        >
          <strong>Schedule a Call</strong> →
        </button>
      </div>

      {/* Option 2 (Featured) */}
      <div className="bg-linear-to-b from-[#12193b] to-[#1c265e] text-white rounded-2xl p-8 shadow-xl relative border-2 border-amber-400 flex flex-col justify-between">
        <div className="absolute -top-3.5 right-6 bg-amber-400 text-slate-950 text-xs font-extrabold px-3 py-1 rounded-full uppercase tracking-wider">
          Most Popular
        </div>

        <div>
          <div className="text-xs font-extrabold uppercase tracking-wider text-amber-300">
            OPTION 2
          </div>
          <h3 className="text-2xl font-bold text-white mt-1">All-You-Can-Eat</h3>
          <div className="mt-4 flex items-baseline gap-1">
            <span className="text-4xl font-extrabold text-white">$1,250</span>
            <span className="text-slate-300 font-semibold text-sm">/mo</span>
          </div>
          <div className="text-sm font-semibold text-emerald-300 mt-1">
            Buildout, support, and ongoing work, even a website redesign.
          </div>
          <p className="mt-4 text-sm text-slate-300 leading-relaxed border-t border-white/10 pt-4">
            Software included. We become part of your team.
          </p>

          <ul className="mt-6 space-y-3 text-xs sm:text-sm text-slate-200">
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-amber-400 shrink-0" />
              <span>Full 4-6 week custom intake build included</span>
            </li>
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-amber-400 shrink-0" />
              <span>Ongoing work & website redesign included</span>
            </li>
            <li className="flex items-center gap-2">
              <Check className="w-4 h-4 text-amber-400 shrink-0" />
              <span>Dedicated team support & team training</span>
            </li>
          </ul>
        </div>

        <button
          onClick={onBookClick}
          className="mt-8 w-full py-3.5 px-4 rounded-xl bg-[#f97316] hover:bg-[#ea580c] text-white font-extrabold shadow-lg transition-all"
        >
          <strong>Schedule a Call</strong> →
        </button>
      </div>
    </div>
  );
}
