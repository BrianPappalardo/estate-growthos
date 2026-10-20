import { useState } from "react";
import { Calculator, ArrowRight, DollarSign, TrendingUp, Clock, AlertTriangle } from "lucide-react";

export function IntakeLeakCalculator({ onBookClick }: { onBookClick: () => void }) {
  const [monthlyInquiries, setMonthlyInquiries] = useState(25);
  const [avgTrustFee, setAvgTrustFee] = useState(4500);

  // Industry average: 45% show up, 35% close = ~15.75% of total inquiries hire
  const currentShowRate = 0.45;
  const currentCloseRate = 0.35;
  const currentClients =
    Math.round(monthlyInquiries * currentShowRate * currentCloseRate * 10) / 10;
  const currentRevenue = Math.round(currentClients * avgTrustFee);

  // GrowthOS goal: 85% show up (pre-educated, price-informed), 60% close
  const growthOsShowRate = 0.85;
  const growthOsCloseRate = 0.55;
  const projectedClients =
    Math.round(monthlyInquiries * growthOsShowRate * growthOsCloseRate * 10) / 10;
  const projectedRevenue = Math.round(projectedClients * avgTrustFee);

  const monthlyLostRevenue = Math.max(0, projectedRevenue - currentRevenue);
  const annualLostRevenue = monthlyLostRevenue * 12;

  // Admin hours lost: ~3 hrs per lead vs 15 min (.25 hr)
  const currentAdminHours = Math.round(monthlyInquiries * 3);
  const savedAdminHours = Math.round(monthlyInquiries * 2.75);

  return (
    <div className="bg-white border-2 border-slate-200/90 rounded-2xl p-6 sm:p-8 shadow-xl relative overflow-hidden">
      <div className="absolute top-0 right-0 w-64 h-64 bg-amber-100/40 rounded-full blur-3xl pointer-events-none -mr-20 -mt-20" />

      <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4 pb-6 border-b border-slate-200">
        <div>
          <span className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wider bg-amber-100 text-amber-900 mb-2">
            <Calculator className="w-3.5 h-3.5 text-amber-600" />
            Interactive Firm Audit
          </span>
          <h3 className="text-2xl sm:text-3xl font-extrabold text-slate-900 tracking-tight">
            How Much Money Is Your Intake Leaking?
          </h3>
          <p className="text-sm text-slate-600 mt-1">
            Compare chaotic manual follow-ups vs. a custom GrowthOS pre-education system.
          </p>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 pt-6">
        {/* Sliders */}
        <div className="lg:col-span-5 space-y-6">
          <div className="space-y-2">
            <div className="flex justify-between items-center text-sm font-semibold text-slate-800">
              <span>Monthly Inquiries / Leads:</span>
              <span className="text-base font-bold text-[#3344b8] bg-blue-50 px-2.5 py-1 rounded-md border border-blue-200">
                {monthlyInquiries} leads / mo
              </span>
            </div>
            <input
              type="range"
              min="5"
              max="80"
              step="5"
              value={monthlyInquiries}
              onChange={(e) => setMonthlyInquiries(Number(e.target.value))}
              className="w-full accent-[#3344b8] cursor-pointer h-2 bg-slate-200 rounded-lg"
            />
            <div className="flex justify-between text-[11px] text-slate-400">
              <span>5 leads (Solo)</span>
              <span>40 leads (Growing)</span>
              <span>80+ leads (Established)</span>
            </div>
          </div>

          <div className="space-y-2">
            <div className="flex justify-between items-center text-sm font-semibold text-slate-800">
              <span>Your Avg Estate Plan / Trust Fee:</span>
              <span className="text-base font-bold text-[#f97316] bg-orange-50 px-2.5 py-1 rounded-md border border-orange-200">
                ${avgTrustFee.toLocaleString()}
              </span>
            </div>
            <input
              type="range"
              min="2000"
              max="9000"
              step="250"
              value={avgTrustFee}
              onChange={(e) => setAvgTrustFee(Number(e.target.value))}
              className="w-full accent-[#f97316] cursor-pointer h-2 bg-slate-200 rounded-lg"
            />
            <div className="flex justify-between text-[11px] text-slate-400">
              <span>$2,000 (Base Will)</span>
              <span>$4,500 (Comprehensive Trust)</span>
              <span>$9,000+ (High Net Worth)</span>
            </div>
          </div>

          <div className="p-4 bg-slate-50 border border-slate-200 rounded-xl space-y-2 text-xs text-slate-600">
            <div className="font-semibold text-slate-900 flex items-center gap-1.5">
              <Clock className="w-4 h-4 text-[#3344b8]" />
              Staff Time Leaking Every Month:
            </div>
            <p>
              Your team spends ~<strong>{currentAdminHours} hours/month</strong> manually re-typing
              leads, phone-tagging ghosts, and answering price questions.
            </p>
            <p className="text-emerald-700 font-medium">
              GrowthOS frees up ~<strong>{savedAdminHours} hours/month</strong> for billable legal
              client work.
            </p>
          </div>
        </div>

        {/* Results Comparison Card */}
        <div className="lg:col-span-7 bg-linear-to-br from-slate-900 via-[#12193b] to-[#1c265e] text-white rounded-2xl p-6 sm:p-7 shadow-xl flex flex-col justify-between">
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <span className="text-xs font-bold uppercase tracking-wider text-amber-400 flex items-center gap-1.5">
                <AlertTriangle className="w-4 h-4" /> Estimated Monthly Revenue Gap
              </span>
              <span className="text-xs bg-white/10 px-2.5 py-1 rounded-full text-slate-200">
                Plug the Holes First
              </span>
            </div>

            <div className="grid grid-cols-2 gap-4 pt-2">
              <div className="bg-white/5 border border-white/10 rounded-xl p-3.5">
                <div className="text-xs text-slate-400 uppercase font-medium">
                  Currently Signing
                </div>
                <div className="text-xl sm:text-2xl font-bold text-slate-200 mt-1">
                  ~{currentClients} clients
                </div>
                <div className="text-xs text-slate-400 mt-0.5">
                  ~${currentRevenue.toLocaleString()} / mo
                </div>
                <div className="text-[11px] text-red-300 mt-2">45% show rate • 3+ hrs admin</div>
              </div>

              <div className="bg-emerald-500/10 border border-emerald-400/30 rounded-xl p-3.5">
                <div className="text-xs text-emerald-300 uppercase font-medium">With GrowthOS</div>
                <div className="text-xl sm:text-2xl font-bold text-emerald-400 mt-1">
                  ~{projectedClients} clients
                </div>
                <div className="text-xs text-emerald-200/90 mt-0.5">
                  ~${projectedRevenue.toLocaleString()} / mo
                </div>
                <div className="text-[11px] text-emerald-300 mt-2">
                  85%+ show rate • {"<15m"} admin
                </div>
              </div>
            </div>

            <div className="bg-white/10 rounded-xl p-4 border border-white/15">
              <div className="text-xs font-semibold text-amber-300 uppercase tracking-wide">
                Untapped Revenue You Are Currently Leaving On The Table
              </div>
              <div className="text-3xl sm:text-4xl font-extrabold text-white mt-1 tracking-tight flex items-baseline gap-2">
                <span>+${monthlyLostRevenue.toLocaleString()}</span>
                <span className="text-sm font-normal text-slate-300">/ month</span>
              </div>
              <div className="text-xs text-slate-300 mt-1">
                That is approximately <strong>+${annualLostRevenue.toLocaleString()}</strong> in
                recovered revenue every year from the leads you already pay to generate.
              </div>
            </div>
          </div>

          <div className="pt-6 flex flex-col sm:flex-row gap-3 items-center">
            <button
              onClick={onBookClick}
              className="w-full sm:w-auto flex-1 inline-flex items-center justify-center gap-2 px-6 py-3.5 text-base font-bold bg-[#f97316] hover:bg-[#ea580c] text-white rounded-xl shadow-lg hover:shadow-orange-500/25 transition-all"
            >
              <strong>Stop The Leaks: Book Discovery Call</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
            <span className="text-[11px] text-slate-400 text-center sm:text-left">
              30 mins • Free Firm Intake Audit
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}
