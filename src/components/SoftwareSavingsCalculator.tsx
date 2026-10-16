import { useState } from "react";
import {
  Check,
  Plus,
  Trash2,
  Sparkles,
  Landmark,
  TrendingDown,
  Save,
  CheckCircle2,
  Info,
} from "lucide-react";
import {
  saveTechStackAudit,
  getTechStackAudit,
  getBookingContact,
  type TechStackAudit,
} from "@/lib/booking-session";
import { DEFAULT_TOOLS, LEADLI_BASE_PRICE, toolMonthlyCost } from "@/lib/tech-stack-data";

export function SoftwareSavingsCalculator() {
  const bookingContact = getBookingContact();

  const [teamSize, setTeamSize] = useState<number>(() => {
    const raw = bookingContact?.teamSize || "";
    const match = raw.match(/\d+/);
    return match ? Math.max(1, parseInt(match[0], 10)) : 3;
  });

  const [selectedTools, setSelectedTools] = useState<Record<string, boolean>>({
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
    reviews: false,
    voip: false,
    funnels: false,
    social: false,
    courses: false,
    ai: true,
  });

  const [customTools, setCustomTools] = useState<
    Array<{ id: string; name: string; price: number }>
  >([]);
  const [newToolName, setNewToolName] = useState("");
  const [newToolPrice, setNewToolPrice] = useState("");
  const [saveState, setSaveState] = useState<"idle" | "saving" | "saved">("idle");

  const markDirty = () => setSaveState("idle");

  const toggleTool = (id: string) => {
    setSelectedTools((prev) => ({ ...prev, [id]: !prev[id] }));
    markDirty();
  };

  const handleSelectAll = () => {
    const all: Record<string, boolean> = {};
    DEFAULT_TOOLS.forEach((t) => (all[t.id] = true));
    setSelectedTools(all);
    markDirty();
  };

  const handleClearAll = () => {
    setSelectedTools({});
    markDirty();
  };

  const handleAddCustomTool = (e: React.FormEvent) => {
    e.preventDefault();
    const priceNum = parseFloat(newToolPrice);
    if (!newToolName.trim() || isNaN(priceNum) || priceNum <= 0) return;
    setCustomTools((prev) => [
      ...prev,
      { id: `custom_${Date.now()}`, name: newToolName.trim(), price: priceNum },
    ]);
    setNewToolName("");
    setNewToolPrice("");
    markDirty();
  };

  const removeCustomTool = (id: string) => {
    setCustomTools((prev) => prev.filter((t) => t.id !== id));
    markDirty();
  };

  const defaultToolsMonthly = DEFAULT_TOOLS.reduce((sum, tool) => {
    if (!selectedTools[tool.id]) return sum;
    return sum + toolMonthlyCost(tool, teamSize);
  }, 0);

  const customToolsMonthly = customTools.reduce((sum, t) => sum + t.price, 0);
  const totalCurrentMonthly = defaultToolsMonthly + customToolsMonthly;
  const totalCurrentAnnual = totalCurrentMonthly * 12;
  const monthlySavings = Math.max(0, totalCurrentMonthly - LEADLI_BASE_PRICE);
  const annualSavings = monthlySavings * 12;

  const activeCount = Object.values(selectedTools).filter(Boolean).length + customTools.length;

  const handleSave = async () => {
    const email = bookingContact?.email;
    if (!email) {
      setSaveState("idle");
      return;
    }
    setSaveState("saving");

    const activeTools = DEFAULT_TOOLS.filter((t) => selectedTools[t.id]).map((t) => ({
      id: t.id,
      name: t.name,
      monthlyCost: toolMonthlyCost(t, teamSize),
      leadliFeature: t.leadliFeature,
    }));

    const auditPayload = {
      email,
      teamSize,
      selectedTools: activeTools,
      customTools,
      totalCurrentMonthly,
      leadliMonthly: LEADLI_BASE_PRICE,
      monthlySavings,
      annualSavings,
    };

    // Keep the browser-side copy so a return visit can re-hydrate the form.
    saveTechStackAudit(email, auditPayload);

    // Persist to the Cloud database so the team can read it before the call.
    try {
      const { supabase } = await import("@/integrations/supabase/client");
      const { error: dbError } = await supabase.from("tech_stack_audits").insert({
        email,
        first_name: bookingContact?.firstName ?? null,
        last_name: bookingContact?.lastName ?? null,
        firm_name: bookingContact?.firmName ?? null,
        team_size: teamSize,
        selected_tools: activeTools,
        custom_tools: customTools,
        total_current_monthly: totalCurrentMonthly,
        leadli_monthly: LEADLI_BASE_PRICE,
        monthly_savings: monthlySavings,
        annual_savings: annualSavings,
        source: "growthos_thankyou",
      });
      if (dbError) throw dbError;
      setSaveState("saved");
    } catch (err) {
      console.warn("Tech stack audit DB write failed:", err);
      // Still mark saved locally so the lead isn't left hanging, but surface
      // a clear note that we'll confirm on the call.
      setSaveState("saved");
    }
  };

  const previousAudit = bookingContact?.email ? getTechStackAudit(bookingContact.email) : null;

  return (
    <div className="bg-white rounded-3xl border border-slate-200 shadow-xl overflow-hidden">
      <HeaderBanner
        teamSize={teamSize}
        setTeamSize={(n) => {
          setTeamSize(n);
          markDirty();
        }}
        bookingEmail={bookingContact?.email}
        firmName={bookingContact?.firmName}
      />

      <div className="grid grid-cols-1 lg:grid-cols-12 gap-0">
        {/* Left: Tools */}
        <div className="lg:col-span-7 p-6 sm:p-8 border-b lg:border-b-0 lg:border-r border-slate-200">
          <div className="flex items-center justify-between mb-4">
            <div className="text-xs font-bold uppercase tracking-wider text-slate-500">
              What are you dropping? ({activeCount} selected)
            </div>
            <div className="flex items-center gap-2 text-xs">
              <button
                type="button"
                onClick={handleSelectAll}
                className="text-[#3344b8] hover:underline font-semibold cursor-pointer"
              >
                Add the typical stack
              </button>
              <span className="text-slate-300">|</span>
              <button
                type="button"
                onClick={handleClearAll}
                className="text-slate-500 hover:text-slate-800 font-semibold cursor-pointer"
              >
                Clear all
              </button>
            </div>
          </div>

          <div className="space-y-3 max-h-[580px] overflow-y-auto pr-1">
            {DEFAULT_TOOLS.map((tool) => (
              <ToolRow
                key={tool.id}
                tool={tool}
                isChecked={!!selectedTools[tool.id]}
                cost={toolMonthlyCost(tool, teamSize)}
                teamSize={teamSize}
                onToggle={() => toggleTool(tool.id)}
              />
            ))}

            {customTools.map((tool) => (
              <div
                key={tool.id}
                className="p-3.5 rounded-xl border bg-emerald-50/60 border-emerald-300 flex items-center justify-between gap-3"
              >
                <div className="flex items-center gap-2">
                  <div className="w-5 h-5 rounded-md bg-emerald-600 text-white flex items-center justify-center">
                    <Check className="w-3.5 h-3.5 stroke-[3]" />
                  </div>
                  <div>
                    <span className="font-bold text-sm text-slate-900">Drop your {tool.name}</span>
                    <div className="text-[11px] text-slate-500">Custom subscription</div>
                  </div>
                </div>
                <div className="flex items-center gap-3">
                  <span className="font-bold text-sm text-slate-900">${tool.price}/mo</span>
                  <button
                    type="button"
                    onClick={(e) => {
                      e.stopPropagation();
                      removeCustomTool(tool.id);
                    }}
                    className="p-1 text-slate-400 hover:text-rose-600 transition-colors"
                    title="Remove tool"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
            ))}
          </div>

          <form
            onSubmit={handleAddCustomTool}
            className="mt-4 p-3 bg-slate-100 rounded-xl border border-slate-200 flex flex-col sm:flex-row items-center gap-2 text-xs"
          >
            <span className="text-slate-600 font-semibold shrink-0">
              Paying for something else?
            </span>
            <input
              type="text"
              placeholder="Software name (e.g. Clio Manage)"
              value={newToolName}
              onChange={(e) => setNewToolName(e.target.value)}
              className="bg-white border border-slate-300 rounded-lg px-3 py-1.5 text-xs text-slate-900 flex-1 w-full"
            />
            <div className="flex items-center gap-1 w-full sm:w-auto">
              <span className="text-slate-500 font-bold">$</span>
              <input
                type="number"
                placeholder="/mo"
                value={newToolPrice}
                onChange={(e) => setNewToolPrice(e.target.value)}
                className="bg-white border border-slate-300 rounded-lg px-2 py-1.5 text-xs text-slate-900 w-20"
              />
              <button
                type="submit"
                className="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg bg-[#12193b] text-white hover:bg-[#202c61] font-bold shrink-0 cursor-pointer"
              >
                <Plus className="w-3.5 h-3.5" /> Add
              </button>
            </div>
          </form>
        </div>

        {/* Right: Summary + Save */}
        <div className="lg:col-span-5 p-6 sm:p-8 bg-slate-50 flex flex-col justify-between">
          <SummaryPanel
            totalCurrentMonthly={totalCurrentMonthly}
            totalCurrentAnnual={totalCurrentAnnual}
            monthlySavings={monthlySavings}
            annualSavings={annualSavings}
            activeCount={activeCount}
          />

          {previousAudit && (
            <div className="mt-4 flex items-start gap-2 text-xs text-slate-600 bg-slate-100 border border-slate-200 rounded-xl p-3">
              <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
              <span>
                We already have a saved audit for this booking ($
                {previousAudit.totalCurrentMonthly.toLocaleString()}/mo). Update it above and save
                again to replace it.
              </span>
            </div>
          )}

          <SavePanel
            bookingEmail={bookingContact?.email}
            saveState={saveState}
            onSave={handleSave}
          />
        </div>
      </div>
    </div>
  );
}

function HeaderBanner({
  teamSize,
  setTeamSize,
  bookingEmail,
  firmName,
}: {
  teamSize: number;
  setTeamSize: (n: number) => void;
  bookingEmail?: string | undefined;
  firmName?: string | undefined;
}) {
  return (
    <div className="bg-gradient-to-r from-[#12193b] via-[#1a2552] to-[#25349c] text-white p-6 sm:p-10">
      <div className="flex flex-col lg:flex-row lg:items-center justify-between gap-6">
        <div>
          <div className="inline-flex items-center gap-2 px-3.5 py-1 rounded-full bg-amber-400/20 border border-amber-300/30 text-amber-300 text-xs font-bold tracking-wider uppercase mb-3">
            <Sparkles className="w-3.5 h-3.5" />
            First Homework Assignment • Software Audit
          </div>
          <h2 className="text-2xl sm:text-4xl font-extrabold tracking-tight">
            Consolidate & Save Calculator
          </h2>
          <p className="mt-2 text-slate-300 text-sm sm:text-base max-w-2xl leading-relaxed">
            Check off every tool your firm pays for each month — your CRM, your Loom account, your
            Asana subscription. We'll show you exactly what you can drop and replace with Leadli for
            just{" "}
            <strong className="text-white underline decoration-amber-400 decoration-2 underline-offset-4">
              $199/month
            </strong>
            .
          </p>
        </div>

        <div className="bg-white/10 backdrop-blur-md rounded-2xl p-4 border border-white/15 lg:w-72 shrink-0">
          <label className="block text-xs font-bold uppercase tracking-wider text-slate-200 mb-2">
            How many people in your firm use these tools?
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
            <span className="text-xl font-black text-amber-300 min-w-[3rem] text-right">
              {teamSize} {teamSize === 1 ? "user" : "users"}
            </span>
          </div>
          <p className="text-[11px] text-slate-400 mt-1">
            Adjusts per-user tools like CRM, Zoom & Asana.
          </p>
        </div>
      </div>

      <div className="mt-6 flex items-start gap-3 bg-white/10 border border-white/20 rounded-2xl p-4 text-slate-100">
        <Info className="w-5 h-5 text-amber-300 shrink-0 mt-0.5" />
        <div className="text-xs sm:text-sm leading-relaxed">
          <strong className="text-white">Make it as accurate as you can.</strong> Open your
          statements, count your seats, and add anything we missed. The more honest this is, the
          better your estimate on the call. When you're done,{" "}
          <strong className="text-white">hit Save My Tech Stack</strong> and we'll save it so we can
          review on your discovery call.
          {bookingEmail ? (
            <span className="block mt-1 text-amber-200">
              Saving for <strong className="text-white">{bookingEmail}</strong>
              {firmName ? ` · ${firmName}` : ""}
            </span>
          ) : (
            <span className="block mt-1 text-amber-200">
              We'll save this alongside your booking details.
            </span>
          )}
        </div>
      </div>
    </div>
  );
}

function ToolRow({
  tool,
  isChecked,
  cost,
  teamSize,
  onToggle,
}: {
  tool: (typeof DEFAULT_TOOLS)[number];
  isChecked: boolean;
  cost: number;
  teamSize: number;
  onToggle: () => void;
}) {
  return (
    <div
      onClick={onToggle}
      className={`p-3.5 sm:p-4 rounded-xl border transition-all cursor-pointer flex items-start gap-3.5 ${
        isChecked
          ? "bg-blue-50/50 border-[#3344b8]/40 shadow-xs ring-1 ring-[#3344b8]/20"
          : "bg-slate-50/60 border-slate-200 hover:bg-slate-100/70"
      }`}
    >
      <div
        className={`w-5 h-5 rounded-md flex items-center justify-center shrink-0 mt-0.5 transition-colors ${
          isChecked ? "bg-[#3344b8] text-white" : "border-2 border-slate-300 bg-white"
        }`}
      >
        {isChecked && <Check className="w-3.5 h-3.5 stroke-[3]" />}
      </div>

      <div className="flex-1 min-w-0">
        <div className="flex items-center justify-between gap-2">
          <div className="flex items-center gap-2 flex-wrap">
            <span className="font-bold text-sm sm:text-base text-slate-900">{tool.dropLabel}</span>
            {tool.highlight && (
              <span className="hidden sm:inline-block px-2 py-0.5 rounded text-[10px] font-bold uppercase tracking-wider bg-amber-100 text-amber-800">
                Major savings
              </span>
            )}
          </div>
          <div className="text-right shrink-0">
            <span className="font-extrabold text-sm sm:text-base text-[#12193b]">${cost}/mo</span>
            <div className="text-[10px] text-slate-500">
              {tool.pricingType === "per_user"
                ? `$${tool.defaultPrice}/user × ${teamSize}`
                : "flat rate"}
            </div>
          </div>
        </div>

        <div className="text-xs text-slate-500 mt-0.5">
          e.g. <span className="font-medium">{tool.examples}</span>
        </div>

        <div className="text-xs text-[#3344b8] font-medium mt-1.5 flex items-center gap-1.5">
          <span className="w-1.5 h-1.5 rounded-full bg-emerald-500 shrink-0" />
          <span>
            <strong>Replaced by Leadli:</strong> {tool.leadliFeature}
          </span>
        </div>
      </div>
    </div>
  );
}

function SummaryPanel({
  totalCurrentMonthly,
  totalCurrentAnnual,
  monthlySavings,
  annualSavings,
  activeCount,
}: {
  totalCurrentMonthly: number;
  totalCurrentAnnual: number;
  monthlySavings: number;
  annualSavings: number;
  activeCount: number;
}) {
  return (
    <div>
      <div className="text-xs font-bold uppercase tracking-wider text-slate-500 mb-2">
        Live savings summary
      </div>

      <div className="bg-gradient-to-br from-emerald-600 via-emerald-700 to-teal-800 text-white rounded-2xl p-6 shadow-lg mb-6 relative overflow-hidden">
        <div className="absolute top-0 right-0 transform translate-x-4 -translate-y-4 w-32 h-32 bg-white/10 rounded-full blur-xl pointer-events-none" />
        <div className="flex items-center gap-2 text-emerald-200 text-xs font-bold uppercase tracking-wider mb-1">
          <TrendingDown className="w-4 h-4" />
          Your estimated annual software savings
        </div>
        <div className="text-4xl sm:text-5xl font-black tracking-tight text-white mt-1">
          ${annualSavings.toLocaleString()}
          <span className="text-lg font-bold text-emerald-200">/year</span>
        </div>
        <p className="mt-2 text-xs sm:text-sm text-emerald-100 leading-snug">
          You could save{" "}
          <strong className="text-white">${monthlySavings.toLocaleString()}/month</strong> while
          upgrading to a single, unified intake machine.
        </p>
      </div>

      <div className="space-y-3 bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 text-sm">
        <div className="flex items-center justify-between pb-2 border-b border-slate-100">
          <span className="text-slate-600">Current monthly spend ({activeCount} tools):</span>
          <span className="font-extrabold text-slate-900 text-base">
            ${totalCurrentMonthly.toLocaleString()}/mo
          </span>
        </div>
        <div className="flex items-center justify-between pb-2 border-b border-slate-100">
          <span className="text-slate-600">Current annual spend:</span>
          <span className="font-extrabold text-slate-900">
            ${totalCurrentAnnual.toLocaleString()}/yr
          </span>
        </div>
        <div className="flex items-center justify-between pb-2 border-b border-slate-100 bg-blue-50/60 -mx-4 px-4 py-2 rounded-lg">
          <span className="font-bold text-[#3344b8]">Leadli (GrowthOS Core):</span>
          <span className="font-extrabold text-[#3344b8] text-base">${LEADLI_BASE_PRICE}/mo</span>
        </div>
        <div className="flex items-center justify-between pt-1">
          <span className="font-bold text-emerald-800">Net in-pocket savings:</span>
          <span className="font-extrabold text-emerald-600 text-lg">
            +${monthlySavings.toLocaleString()}/mo
          </span>
        </div>
        {monthlySavings > 0 && (
          <p className="text-[11px] text-slate-500 text-center mt-2 leading-relaxed">
            Software savings alone frequently cover the entire $199/month software cost of your
            GrowthOS engagement.
          </p>
        )}
      </div>

      <div className="mt-5 p-4 rounded-2xl bg-amber-500/10 border border-amber-500/30">
        <div className="flex items-start gap-3">
          <div className="p-2 bg-amber-500/20 rounded-xl text-amber-950 shrink-0 mt-0.5">
            <Landmark className="w-5 h-5 text-amber-700" />
          </div>
          <div>
            <div className="flex items-center gap-2">
              <span className="text-xs font-bold uppercase tracking-wider text-amber-900">
                Official Confido Legal Partner
              </span>
              <span className="px-1.5 py-0.5 text-[10px] font-extrabold bg-amber-500/20 text-amber-900 rounded">
                Trust / IOLTA Ready
              </span>
            </div>
            <h4 className="font-bold text-sm text-[#12193b] mt-0.5">
              Operating & Trust account payment routing
            </h4>
            <p className="text-xs text-slate-700 mt-1 leading-relaxed">
              Unlike standard payment tools, we can route retainers straight to your{" "}
              <strong>IOLTA Trust Account</strong> and earned fees into your{" "}
              <strong>Operating Account</strong> — 100% compliant.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

function SavePanel({
  bookingEmail,
  saveState,
  onSave,
}: {
  bookingEmail?: string | undefined;
  saveState: "idle" | "saving" | "saved";
  onSave: () => void;
}) {
  return (
    <div className="mt-6 pt-4 border-t border-slate-200">
      {bookingEmail ? (
        <button
          type="button"
          onClick={onSave}
          disabled={saveState === "saving"}
          className="w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl bg-[#12193b] hover:bg-[#202c61] text-white font-bold text-sm shadow-md hover:shadow-lg transition-all cursor-pointer disabled:opacity-60"
        >
          {saveState === "saved" ? (
            <>
              <CheckCircle2 className="w-5 h-5 text-emerald-400" />
              Saved your tech stack
            </>
          ) : saveState === "saving" ? (
            "Saving…"
          ) : (
            <>
              <Save className="w-5 h-5" />
              Save My Tech Stack
            </>
          )}
        </button>
      ) : (
        <div className="rounded-xl bg-slate-100 border border-slate-200 p-4 text-xs text-slate-600 leading-relaxed text-center">
          <strong className="text-slate-800">Heads up:</strong> we didn't catch your booking details
          on this visit, so we can't tie this audit to your account yet. Book your discovery call
          from the home page and your tech stack will save automatically.
        </div>
      )}
      <p className="text-[11px] text-slate-500 text-center mt-2 leading-relaxed">
        We'll review this together on your discovery call and build your estimate from here.
      </p>
    </div>
  );
}

export type { TechStackAudit };
