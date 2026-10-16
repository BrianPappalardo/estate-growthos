import React, { useState } from "react";
import {
  Check,
  Plus,
  Trash2,
  Sparkles,
  ShieldCheck,
  Landmark,
  ArrowRight,
  TrendingDown,
  Layers,
  HelpCircle,
  Video,
  Radio,
  FileCheck2,
  Mail,
  Calendar as CalendarIcon,
  PhoneCall,
  Bot,
  MessageSquare,
  FileSpreadsheet,
} from "lucide-react";

export interface ToolItem {
  id: string;
  category: string;
  name: string;
  examples: string;
  pricingType: "flat" | "per_user";
  defaultPrice: number; // monthly
  leadliFeature: string;
  highlight?: boolean;
  notes?: string;
  icon?: any;
}

export const DEFAULT_TOOLS: ToolItem[] = [
  {
    id: "crm",
    category: "CRM & Pipelines",
    name: "CRM & Opportunity Pipeline",
    examples: "HubSpot, Pipedrive, Lawmatics, Clio Grow",
    pricingType: "per_user",
    defaultPrice: 55,
    leadliFeature:
      "Complete unlimited estate planning pipeline, contact history, smart tags & notes",
    highlight: true,
  },
  {
    id: "scheduling",
    category: "Scheduling",
    name: "Calendar & Consult Scheduling",
    examples: "Calendly, Acuity, Chili Piper",
    pricingType: "per_user",
    defaultPrice: 16,
    leadliFeature:
      "Unlimited service calendars with automatic round-robin, intake forms & SMS confirmation",
    highlight: true,
  },
  {
    id: "email",
    category: "Marketing",
    name: "Email Marketing & Newsletters",
    examples: "Mailchimp, ActiveCampaign, Constant Contact",
    pricingType: "flat",
    defaultPrice: 65,
    leadliFeature:
      "Visual drag-and-drop email builder, automated nurture sequences & broadcast campaigns",
  },
  {
    id: "sms",
    category: "Communication",
    name: "Two-Way SMS & Text Outreach",
    examples: "SimpleTexting, EZTexting, Podium",
    pricingType: "flat",
    defaultPrice: 45,
    leadliFeature:
      "Direct 2-way SMS conversations, automated appointment reminders & text snippets",
  },
  {
    id: "esign",
    category: "Legal & Contracts",
    name: "Contracts & e-Signatures",
    examples: "DocuSign, PandaDoc, Adobe Sign",
    pricingType: "per_user",
    defaultPrice: 35,
    leadliFeature:
      "Built-in legally binding e-Sign for engagement letters, fee agreements & disclosures",
    highlight: true,
  },
  {
    id: "forms",
    category: "Intake",
    name: "Forms, Surveys & Questionnaires",
    examples: "Typeform, JotForm, Wufoo",
    pricingType: "flat",
    defaultPrice: 39,
    leadliFeature:
      "Custom multi-step estate planning intake forms that map directly into your CRM fields",
  },
  {
    id: "funnels",
    category: "Web & Pages",
    name: "Landing Pages & Funnel Builder",
    examples: "ClickFunnels, Leadpages, Unbounce",
    pricingType: "flat",
    defaultPrice: 99,
    leadliFeature:
      "Fast-loading video education funnels, workshop registration pages & custom subdomains",
  },
  {
    id: "zoom",
    category: "Video Meetings",
    name: "Video Conferencing (Zoom Replacement)",
    examples: "Zoom Pro, Google Meet Business",
    pricingType: "per_user",
    defaultPrice: 16,
    leadliFeature:
      "Native Leadli Video Rooms embedded right inside consult links — no separate Zoom licenses required",
    highlight: true,
  },
  {
    id: "loom",
    category: "Video Messaging",
    name: "Screen & Video Recording (Loom Replacement)",
    examples: "Loom Business, Vidyard",
    pricingType: "per_user",
    defaultPrice: 15,
    leadliFeature:
      "Record custom walkthroughs of drafts or quick client messages directly from your unified inbox",
    highlight: true,
  },
  {
    id: "pm",
    category: "Operations",
    name: "Project & Task Management",
    examples: "Asana, Monday.com, ClickUp, Trello",
    pricingType: "per_user",
    defaultPrice: 14,
    leadliFeature:
      "Firm task boards, automated onboarding checklists, milestone triggers & staff assignment",
    highlight: true,
  },
  {
    id: "chat",
    category: "Intake",
    name: "Website Live Chat & Web Widget",
    examples: "Intercom, Drift, Tidio",
    pricingType: "flat",
    defaultPrice: 79,
    leadliFeature:
      "On-site lead capture widget that routes incoming inquiries straight into SMS & CRM pipelines",
  },
  {
    id: "reviews",
    category: "Reputation",
    name: "Review & Reputation Management",
    examples: "Birdeye, Podium, Broadly",
    pricingType: "flat",
    defaultPrice: 249,
    leadliFeature:
      "Automated Google Review requests triggered the moment a client signs their final estate plan",
  },
  {
    id: "voip",
    category: "Phone",
    name: "Cloud Phone System & Call Tracking",
    examples: "RingCentral, CallRail, Grasshopper",
    pricingType: "flat",
    defaultPrice: 85,
    leadliFeature:
      "Recorded intake lines, call whisper, automated missed-call text back & local firm numbers",
  },
  {
    id: "social",
    category: "Marketing",
    name: "Social Media Scheduler",
    examples: "Buffer, Hootsuite, Later",
    pricingType: "flat",
    defaultPrice: 25,
    leadliFeature:
      "Schedule educational posts across LinkedIn, Facebook & Google Business in one view",
  },
  {
    id: "courses",
    category: "Education",
    name: "Client Portal & Educational Modules",
    examples: "Kajabi, Teachable, Skool",
    pricingType: "flat",
    defaultPrice: 149,
    leadliFeature:
      "Gated estate planning resource library & on-demand video modules for client families",
  },
  {
    id: "ai",
    category: "AI",
    name: "AI Subscriptions & Assistant Tools",
    examples: "ChatGPT Plus, Claude Pro, Jasper",
    pricingType: "per_user",
    defaultPrice: 20,
    leadliFeature:
      "Built-in Leadli AI conversation engine, smart response drafting & voice transcription",
  },
];

export function SoftwareSavingsCalculator() {
  const [teamSize, setTeamSize] = useState<number>(3);
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

  // Custom tool additions
  const [customTools, setCustomTools] = useState<
    Array<{ id: string; name: string; price: number }>
  >([]);
  const [newToolName, setNewToolName] = useState("");
  const [newToolPrice, setNewToolPrice] = useState("");

  const LEADLI_BASE_PRICE = 199; // as specified by user ($199/mo)

  const toggleTool = (id: string) => {
    setSelectedTools((prev) => ({
      ...prev,
      [id]: !prev[id],
    }));
  };

  const handleSelectAll = () => {
    const all: Record<string, boolean> = {};
    DEFAULT_TOOLS.forEach((t) => (all[t.id] = true));
    setSelectedTools(all);
  };

  const handleClearAll = () => {
    setSelectedTools({});
  };

  const handleAddCustomTool = (e: React.FormEvent) => {
    e.preventDefault();
    const priceNum = parseFloat(newToolPrice);
    if (!newToolName.trim() || isNaN(priceNum) || priceNum <= 0) return;

    setCustomTools((prev) => [
      ...prev,
      {
        id: `custom_${Date.now()}`,
        name: newToolName.trim(),
        price: priceNum,
      },
    ]);
    setNewToolName("");
    setNewToolPrice("");
  };

  const removeCustomTool = (id: string) => {
    setCustomTools((prev) => prev.filter((t) => t.id !== id));
  };

  // Calculations
  const defaultToolsMonthly = DEFAULT_TOOLS.reduce((sum, tool) => {
    if (!selectedTools[tool.id]) return sum;
    const cost =
      tool.pricingType === "per_user"
        ? tool.defaultPrice * Math.max(1, teamSize)
        : tool.defaultPrice;
    return sum + cost;
  }, 0);

  const customToolsMonthly = customTools.reduce((sum, t) => sum + t.price, 0);
  const totalCurrentMonthly = defaultToolsMonthly + customToolsMonthly;
  const totalCurrentAnnual = totalCurrentMonthly * 12;

  const leadliMonthly = LEADLI_BASE_PRICE;
  const leadliAnnual = leadliMonthly * 12;

  const monthlySavings = Math.max(0, totalCurrentMonthly - leadliMonthly);
  const annualSavings = monthlySavings * 12;

  const activeCount = Object.values(selectedTools).filter(Boolean).length + customTools.length;

  return (
    <div className="bg-white rounded-3xl border border-slate-200 shadow-xl overflow-hidden">
      {/* Header Banner */}
      <div className="bg-gradient-to-r from-[#12193b] via-[#1a2552] to-[#25349c] text-white p-6 sm:p-10">
        <div className="flex flex-col lg:flex-row lg:items-center justify-between gap-6">
          <div>
            <div className="inline-flex items-center gap-2 px-3.5 py-1 rounded-full bg-amber-400/20 border border-amber-300/30 text-amber-300 text-xs font-bold tracking-wider uppercase mb-3">
              <Sparkles className="w-3.5 h-3.5" />
              First Homework Assignment • Software Audit
            </div>
            <h2 className="text-2xl sm:text-4xl font-extrabold tracking-tight">
              Tech Stack & Software Savings Calculator
            </h2>
            <p className="mt-2 text-slate-300 text-sm sm:text-base max-w-2xl leading-relaxed">
              Check off the tools your firm currently pays for each month. We'll show you exactly
              how much Leadli replaces for just{" "}
              <strong className="text-white underline decoration-amber-400 decoration-2 underline-offset-4">
                $199/month
              </strong>
              .
            </p>
          </div>

          {/* Quick Team Size Selector */}
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
              Adjusts per-user software like CRM, Calendly, Zoom & Asana.
            </p>
          </div>
        </div>
      </div>

      {/* Main Grid: Tools List + Live Summary Sidebar */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-0">
        {/* Left Column: Tool Checkboxes (7 cols) */}
        <div className="lg:col-span-7 p-6 sm:p-8 border-b lg:border-b-0 lg:border-r border-slate-200">
          <div className="flex items-center justify-between mb-4">
            <div className="text-xs font-bold uppercase tracking-wider text-slate-500">
              Select Your Current Tools ({activeCount} Selected)
            </div>
            <div className="flex items-center gap-2 text-xs">
              <button
                type="button"
                onClick={handleSelectAll}
                className="text-[#3344b8] hover:underline font-semibold cursor-pointer"
              >
                Select Typical Stack
              </button>
              <span className="text-slate-300">|</span>
              <button
                type="button"
                onClick={handleClearAll}
                className="text-slate-500 hover:text-slate-800 font-semibold cursor-pointer"
              >
                Clear All
              </button>
            </div>
          </div>

          {/* List of tools */}
          <div className="space-y-3 max-h-[580px] overflow-y-auto pr-1">
            {DEFAULT_TOOLS.map((tool) => {
              const isChecked = !!selectedTools[tool.id];
              const cost =
                tool.pricingType === "per_user"
                  ? tool.defaultPrice * Math.max(1, teamSize)
                  : tool.defaultPrice;

              return (
                <div
                  key={tool.id}
                  onClick={() => toggleTool(tool.id)}
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
                      <div className="flex items-center gap-2">
                        <span className="font-bold text-sm sm:text-base text-slate-900">
                          {tool.name}
                        </span>
                        {tool.highlight && (
                          <span className="hidden sm:inline-block px-2 py-0.5 rounded text-[10px] font-bold uppercase tracking-wider bg-amber-100 text-amber-800">
                            Major Savings
                          </span>
                        )}
                      </div>
                      <div className="text-right shrink-0">
                        <span className="font-extrabold text-sm sm:text-base text-[#12193b]">
                          ${cost}/mo
                        </span>
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
            })}

            {/* Custom Tools Added by User */}
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
                    <span className="font-bold text-sm text-slate-900">{tool.name}</span>
                    <div className="text-[11px] text-slate-500">Custom Tool Subscription</div>
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

          {/* Add Another Software */}
          <form
            onSubmit={handleAddCustomTool}
            className="mt-4 p-3 bg-slate-100 rounded-xl border border-slate-200 flex flex-col sm:flex-row items-center gap-2 text-xs"
          >
            <span className="text-slate-600 font-semibold shrink-0">Have another tool?</span>
            <input
              type="text"
              placeholder="Software name (e.g. Clio Manage, Calendly Pro)"
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
                <Plus className="w-3.5 h-3.5" />
                Add
              </button>
            </div>
          </form>
        </div>

        {/* Right Column: Live Savings & Value Comparison (5 cols) */}
        <div className="lg:col-span-5 p-6 sm:p-8 bg-slate-50 flex flex-col justify-between">
          <div>
            <div className="text-xs font-bold uppercase tracking-wider text-slate-500 mb-2">
              Live Software Savings Summary
            </div>

            {/* Savings Hero Card */}
            <div className="bg-gradient-to-br from-emerald-600 via-emerald-700 to-teal-800 text-white rounded-2xl p-6 shadow-lg mb-6 relative overflow-hidden">
              <div className="absolute top-0 right-0 transform translate-x-4 -translate-y-4 w-32 h-32 bg-white/10 rounded-full blur-xl pointer-events-none" />

              <div className="flex items-center gap-2 text-emerald-200 text-xs font-bold uppercase tracking-wider mb-1">
                <TrendingDown className="w-4 h-4" />
                Your Estimated Annual Software Savings
              </div>

              <div className="text-4xl sm:text-5xl font-black tracking-tight text-white mt-1">
                ${annualSavings.toLocaleString()}
                <span className="text-lg font-bold text-emerald-200">/year</span>
              </div>

              <p className="mt-2 text-xs sm:text-sm text-emerald-100 leading-snug">
                You could save{" "}
                <strong className="text-white">${monthlySavings.toLocaleString()}/month</strong>{" "}
                while upgrading to a single, unified intake machine.
              </p>
            </div>

            {/* Side-by-Side Breakdown */}
            <div className="space-y-3 bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 text-sm">
              <div className="flex items-center justify-between pb-2 border-b border-slate-100">
                <span className="text-slate-600">Current Monthly Spend ({activeCount} tools):</span>
                <span className="font-extrabold text-slate-900 text-base">
                  ${totalCurrentMonthly.toLocaleString()}/mo
                </span>
              </div>

              <div className="flex items-center justify-between pb-2 border-b border-slate-100">
                <span className="text-slate-600">Current Annual Spend:</span>
                <span className="font-extrabold text-slate-900">
                  ${totalCurrentAnnual.toLocaleString()}/yr
                </span>
              </div>

              <div className="flex items-center justify-between pb-2 border-b border-slate-100 bg-blue-50/60 -mx-4 px-4 py-2 rounded-lg">
                <div className="flex items-center gap-1.5">
                  <span className="font-bold text-[#3344b8]">Leadli (GrowthOS Core):</span>
                </div>
                <span className="font-extrabold text-[#3344b8] text-base">
                  ${LEADLI_BASE_PRICE}/mo
                </span>
              </div>

              <div className="flex items-center justify-between pt-1">
                <span className="font-bold text-emerald-800">Net Estimated In-Pocket Savings:</span>
                <span className="font-extrabold text-emerald-600 text-lg">
                  +${monthlySavings.toLocaleString()}/mo
                </span>
              </div>
            </div>

            {/* Special Highlight: Confido Legal Integration */}
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
                    Operating & Trust Account Payment Routing
                  </h4>
                  <p className="text-xs text-slate-700 mt-1 leading-relaxed">
                    Unlike standard payment tools, we can route retainers directly to your{" "}
                    <strong>IOLTA Trust Account</strong> and earned fees straight into your{" "}
                    <strong>Operating Account</strong> with 100% compliance.
                  </p>
                </div>
              </div>
            </div>

            {/* Zoom, Loom & Project Management Replacements */}
            <div className="mt-4 grid grid-cols-3 gap-2 text-center text-xs">
              <div className="bg-white p-2.5 rounded-xl border border-slate-200">
                <Video className="w-4 h-4 mx-auto text-[#3344b8] mb-1" />
                <span className="font-bold text-slate-800 block text-[11px]">Zoom</span>
                <span className="text-[10px] text-emerald-700 font-semibold">Included</span>
              </div>
              <div className="bg-white p-2.5 rounded-xl border border-slate-200">
                <Radio className="w-4 h-4 mx-auto text-amber-600 mb-1" />
                <span className="font-bold text-slate-800 block text-[11px]">Loom</span>
                <span className="text-[10px] text-emerald-700 font-semibold">Included</span>
              </div>
              <div className="bg-white p-2.5 rounded-xl border border-slate-200">
                <FileSpreadsheet className="w-4 h-4 mx-auto text-purple-600 mb-1" />
                <span className="font-bold text-slate-800 block text-[11px]">Asana/Tasks</span>
                <span className="text-[10px] text-emerald-700 font-semibold">Included</span>
              </div>
            </div>
          </div>

          <div className="mt-6 pt-4 border-t border-slate-200">
            <p className="text-xs text-slate-500 text-center leading-relaxed">
              * Note: Software savings alone frequently cover the entire $199/month software cost of
              your GrowthOS engagement.
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}
