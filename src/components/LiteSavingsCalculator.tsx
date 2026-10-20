import { useState } from "react";
import { ArrowRight, TrendingDown, Sparkles, Check, Landmark } from "lucide-react";
import { DEFAULT_TOOLS, LEADLI_BASE_PRICE, toolMonthlyCost } from "@/lib/tech-stack-data";

/**
 * A lighter, illustrative version of the Consolidate & Save calculator.
 *
 * No persistence — it exists purely to show prospects what consolidating onto
 * Leadli could save them. The only action is to book a consult, where we dial in
 * the real numbers together.
 */
export function LiteSavingsCalculator({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const [teamSize, setTeamSize] = useState(3);
  const [selected, setSelected] = useState<Record<string, boolean>>({
    crm: true,
    scheduling: true,
    email: true,
    sms: true,
    esign: true,
    forms: true,
    zoom: true,
    loom: true,
    pm: true,
    chat: true,
    ai: true,
  });

  const toggle = (id: string) => setSelected((p) => ({ ...p, [id]: !p[id] }));

  const loadTypical = () =>
    setSelected({
      crm: true,
      scheduling: true,
      email: true,
      sms: true,
      esign: true,
      forms: true,
      zoom: true,
      loom: true,
      pm: true,
      chat: true,
      reviews: true,
      voip: true,
      funnels: true,
      social: true,
      courses: true,
      ai: true,
    });

  const clearAll = () => setSelected({});

  const currentMonthly = DEFAULT_TOOLS.reduce(
    (sum, t) => (selected[t.id] ? sum + toolMonthlyCost(t, teamSize) : sum),
    0,
  );
  const currentAnnual = currentMonthly * 12;
  const monthlySavings = Math.max(0, currentMonthly - LEADLI_BASE_PRICE);
  const annualSavings = monthlySavings * 12;
  const activeCount = Object.values(selected).filter(Boolean).length;

  return (
    <div className="rounded-3xl border border-slate-200 shadow-xl overflow-hidden bg-white">
      {/* HEADER BANNER */}
      <div className="bg-gradient-to-r from-[#12193b] via-[#1a2552] to-[#25349c] text-white p-6 sm:p-8">
        <div className="flex flex-col lg:flex-row lg:items-center justify-between gap-6">
          <div className="max-w-xl">
            <div className="inline-flex items-center gap-2 px-3.5 py-1 rounded-full bg-amber-400/20 border border-amber-300/30 text-amber-300 text-xs font-bold tracking-wider uppercase mb-3">
              <Sparkles className="w-3.5 h-3.5" />
              Illustrative Estimate
            </div>
            <h3 className="text-2xl sm:text-3xl font-extrabold tracking-tight">
              Consolidate & Save
            </h3>
            <p className="mt-2 text-sm sm:text-base text-slate-300 leading-relaxed">
              Toggle the tools you pay for today to see an illustrative estimate of what you'd save
              by consolidating onto Leadli at{" "}
              <strong className="text-white underline decoration-amber-400 decoration-2 underline-offset-4">
                $199/mo
              </strong>
              .
            </p>
          </div>

          <div className="bg-white/10 backdrop-blur-md rounded-2xl p-4 border border-white/15 lg:w-64 shrink-0">
            <label className="block text-xs font-bold uppercase tracking-wider text-slate-200 mb-2">
              People using these tools
            </label>
            <div className="flex items-center justify-between gap-3">
              <input
                type="range"
                min="1"
                max="25"
                value={teamSize}
                onChange={(e) => setTeamSize(parseInt(e.target.value, 10))}
                className="w-full h-2 bg-slate-600 rounded-lg appearance-none cursor-pointer accent-amber-400"
              />
              <span className="text-lg font-black text-amber-300 min-w-[3rem] text-right">
                {teamSize} {teamSize === 1 ? "user" : "users"}
              </span>
            </div>
            <p className="text-[11px] text-slate-400 mt-1">
              Adjusts per-user tools like CRM & Zoom.
            </p>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12">
        {/* TOGGLE LIST */}
        <div className="lg:col-span-7 p-6 sm:p-8 border-b lg:border-b-0 lg:border-r border-slate-200">
          <div className="flex items-center justify-between mb-4">
            <span className="text-xs font-bold uppercase tracking-wider text-slate-500">
              What are you paying for? ({activeCount})
            </span>
            <div className="flex items-center gap-2 text-xs">
              <button
                type="button"
                onClick={loadTypical}
                className="text-[#3344b8] hover:underline font-semibold cursor-pointer"
              >
                Load the typical stack
              </button>
              <span className="text-slate-300">|</span>
              <button
                type="button"
                onClick={clearAll}
                className="text-slate-500 hover:text-slate-800 font-semibold cursor-pointer"
              >
                Clear
              </button>
            </div>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2.5">
            {DEFAULT_TOOLS.map((tool) => {
              const isOn = !!selected[tool.id];
              const cost = toolMonthlyCost(tool, teamSize);
              return (
                <button
                  key={tool.id}
                  type="button"
                  onClick={() => toggle(tool.id)}
                  className={`text-left p-3 rounded-xl border transition-all flex items-center gap-3 cursor-pointer ${
                    isOn
                      ? "bg-blue-50/60 border-[#3344b8]/40 ring-1 ring-[#3344b8]/20"
                      : "bg-slate-50/70 border-slate-200 hover:bg-slate-100"
                  }`}
                >
                  <div
                    className={`w-5 h-5 rounded-md flex items-center justify-center shrink-0 transition-colors ${
                      isOn ? "bg-[#3344b8] text-white" : "border-2 border-slate-300 bg-white"
                    }`}
                  >
                    {isOn && <Check className="w-3.5 h-3.5 stroke-[3]" />}
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="font-bold text-xs sm:text-sm text-slate-900 truncate">
                      {tool.name}
                    </div>
                    <div className="text-[11px] text-slate-500">
                      {tool.pricingType === "per_user"
                        ? `$${tool.defaultPrice}/user × ${teamSize}`
                        : "flat rate"}
                    </div>
                  </div>
                  <div className="text-right shrink-0">
                    <span className="font-extrabold text-sm text-[#12193b]">${cost}</span>
                    <span className="text-[10px] text-slate-400">/mo</span>
                  </div>
                </button>
              );
            })}
          </div>
        </div>

        {/* SUMMARY + CTA */}
        <div className="lg:col-span-5 p-6 sm:p-8 bg-slate-50 flex flex-col">
          <div className="text-xs font-bold uppercase tracking-wider text-slate-500 mb-2">
            Illustrative savings
          </div>

          <div className="bg-gradient-to-br from-emerald-600 via-emerald-700 to-teal-800 text-white rounded-2xl p-6 shadow-lg mb-5 relative overflow-hidden">
            <div className="absolute top-0 right-0 transform translate-x-4 -translate-y-4 w-28 h-28 bg-white/10 rounded-full blur-xl pointer-events-none" />
            <div className="flex items-center gap-2 text-emerald-200 text-xs font-bold uppercase tracking-wider mb-1">
              <TrendingDown className="w-4 h-4" />
              Estimated annual software savings
            </div>
            <div className="text-4xl font-black tracking-tight mt-1">
              ${annualSavings.toLocaleString()}
              <span className="text-lg font-bold text-emerald-200">/year</span>
            </div>
            <p className="mt-2 text-xs text-emerald-100 leading-snug">
              That's <strong className="text-white">${monthlySavings.toLocaleString()}/mo</strong>{" "}
              while upgrading to one unified platform.
            </p>
          </div>

          <div className="space-y-2.5 bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 text-sm">
            <div className="flex items-center justify-between pb-2 border-b border-slate-100">
              <span className="text-slate-600">Current monthly spend ({activeCount} tools):</span>
              <span className="font-extrabold text-slate-900 text-base">
                ${currentMonthly.toLocaleString()}/mo
              </span>
            </div>
            <div className="flex items-center justify-between pb-2 border-b border-slate-100">
              <span className="text-slate-600">Current annual spend:</span>
              <span className="font-extrabold text-slate-900">
                ${currentAnnual.toLocaleString()}/yr
              </span>
            </div>
            <div className="flex items-center justify-between bg-blue-50/60 -mx-4 px-4 py-2 rounded-lg">
              <span className="font-bold text-[#3344b8]">Leadli core:</span>
              <span className="font-extrabold text-[#3344b8] text-base">
                ${LEADLI_BASE_PRICE}/mo
              </span>
            </div>
            <div className="flex items-center justify-between pt-1">
              <span className="font-bold text-emerald-800">Net monthly savings:</span>
              <span className="font-extrabold text-emerald-600 text-lg">
                +${monthlySavings.toLocaleString()}/mo
              </span>
            </div>
          </div>

          {/* Confido partner callout */}
          <div className="mt-5 p-4 rounded-2xl bg-amber-500/10 border border-amber-500/30">
            <div className="flex items-start gap-3">
              <div className="p-2 bg-amber-500/20 rounded-xl text-amber-700 shrink-0 mt-0.5">
                <Landmark className="w-5 h-5" />
              </div>
              <div>
                <div className="flex flex-wrap items-center gap-2 mb-0.5">
                  <span className="text-xs font-bold uppercase tracking-wider text-amber-900">
                    Official Confido Legal Partner
                  </span>
                  <span className="px-1.5 py-0.5 text-[10px] font-extrabold bg-amber-500/20 text-amber-900 rounded">
                    IOLTA Ready
                  </span>
                </div>
                <h4 className="font-bold text-sm text-[#12193b] mt-0.5">
                  We built Leadli Payments specifically for complicated funds routing — like Attorney IOLTA Trust accounts. It's included for every customer at no additional fee. (Confido Legal payment processing fees still apply.)
                </h4>
                <p className="text-xs text-slate-700 mt-1 leading-relaxed">
                  
                </p>
              </div>
            </div>
          </div>

          <div className="mt-auto pt-6">
            <button
              onClick={onOpenDiscovery}
              className="w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl bg-[#12193b] hover:bg-[#202c61] text-white font-bold text-sm shadow-md hover:shadow-lg transition-all cursor-pointer"
            >
              <strong>Book a Consult</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
            <p className="text-[11px] text-slate-500 text-center mt-2 leading-relaxed">
              Illustrative estimate only — we'll confirm the real numbers on your discovery call.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
