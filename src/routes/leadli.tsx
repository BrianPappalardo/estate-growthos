import React, { useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight, CheckCircle2, XCircle, PhoneCall } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { LiteSavingsCalculator } from "@/components/LiteSavingsCalculator";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import {
  LeadliPageHero,
  LeadliConstellationSection,
  LeadliChaosSection,
  LeadliFeatureGrid,
} from "@/components/home/LeadliPageSections";

export const Route = createFileRoute("/leadli")({
  component: LeadliPage,
  head: () => ({
    meta: [
      {
        title: "Leadli | The Business Everything App | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Leadli is the all-in-one system built for the way you work. Replace 10+ fragmented software subscriptions with one powerful, customizable CRM and automation engine.",
      },
      {
        property: "og:title",
        content: "Leadli | The Business Everything App",
      },
      {
        property: "og:description",
        content:
          "Smart systems that grow with you. CRM, automations, calendars, funnels, payments, unified inbox, and AI tools — all in one place.",
      },
      {
        property: "og:type",
        content: "website",
      },
      {
        name: "twitter:card",
        content: "summary_large_image",
      },
    ],
  }),
});

function LeadliPage() {
  const [modalOpen, setModalOpen] = useState(false);
  const [activeWorkflowTab, setActiveWorkflowTab] = useState<"triggers" | "logic" | "connected">(
    "triggers",
  );

  const handleOpenDiscovery = () => {
    setModalOpen(true);
  };

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      {/* 1. HEADER */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80 transition-all">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </Link>

          {/* Navigation Links */}
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-slate-700">
            <Link to="/" className="hover:text-[#3344b8] transition-colors">
              Home
            </Link>
            <Link
              to="/estate-planning"
              className="text-slate-700 hover:text-[#3344b8] transition-colors inline-flex items-center gap-1.5"
            >
              <span>Estate Planning</span>
              <span className="text-[10px] uppercase font-bold tracking-wider px-1.5 py-0.5 rounded-sm bg-amber-100 text-amber-900 border border-amber-300">
                Vertical
              </span>
            </Link>
            <Link to="/leadli" className="text-[#3344b8] font-extrabold transition-colors">
              Leadli
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="text-slate-700 hover:text-[#3344b8] transition-colors"
            >
              Login
            </a>
          </nav>

          <div className="flex items-center gap-3">
            <button
              onClick={handleOpenDiscovery}
              className="inline-flex items-center justify-center gap-2 px-5 sm:px-6 py-2.5 sm:py-3 rounded-full bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm sm:text-base transition-all shadow-md hover:shadow-lg cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </header>

      {/* 2. HERO */}
      <LeadliPageHero onOpenDiscovery={handleOpenDiscovery} />

      {/* 3. CONSTELLATION / ADAPTS TO WORK */}
      <LeadliConstellationSection onOpenDiscovery={handleOpenDiscovery} />

      {/* 4. FRAGMENTED CHAOS VS LEADLI */}
      <LeadliChaosSection />

      {/* 5. WORKFLOW ENGINE TABS */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3.5 py-1.5 rounded-full border border-blue-200 inline-block">
              Smart. Powerful. Customizable. Workflows.
            </span>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] mt-3 tracking-tight">
              Automation that turns everyday systems into seamless operations.
            </h2>
            <p className="mt-3 text-base sm:text-lg text-slate-600">
              From lead capture to follow-up, every workflow can be customized to match your
              processes.
            </p>
          </div>

          <div className="bg-[#fcfbf8] rounded-3xl border border-slate-200 p-6 sm:p-10 shadow-lg">
            <div className="flex flex-wrap justify-center gap-2 mb-8 border-b border-slate-200 pb-4">
              <button
                onClick={() => setActiveWorkflowTab("triggers")}
                className={`px-5 py-2.5 rounded-xl font-bold text-sm transition-all cursor-pointer ${
                  activeWorkflowTab === "triggers"
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white text-slate-700 hover:bg-slate-100 border border-slate-200"
                }`}
              >
                Trigger-Based Automations
              </button>
              <button
                onClick={() => setActiveWorkflowTab("logic")}
                className={`px-5 py-2.5 rounded-xl font-bold text-sm transition-all cursor-pointer ${
                  activeWorkflowTab === "logic"
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white text-slate-700 hover:bg-slate-100 border border-slate-200"
                }`}
              >
                Customizable Logic
              </button>
              <button
                onClick={() => setActiveWorkflowTab("connected")}
                className={`px-5 py-2.5 rounded-xl font-bold text-sm transition-all cursor-pointer ${
                  activeWorkflowTab === "connected"
                    ? "bg-[#3344b8] text-white shadow-md"
                    : "bg-white text-slate-700 hover:bg-slate-100 border border-slate-200"
                }`}
              >
                Connected Across Every Tool
              </button>
            </div>

            {activeWorkflowTab === "triggers" && (
              <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div className="space-y-4">
                  <h3 className="text-2xl font-black text-[#12193b]">
                    Respond instantly to client actions — no manual follow-up required.
                  </h3>
                  <p className="text-slate-600 text-sm sm:text-base leading-relaxed">
                    When someone submits a form, books a call, watches a video, or pays an invoice,
                    Leadli fires the exact sequence you configured.
                  </p>
                  <ul className="space-y-2 text-sm text-slate-700 font-semibold">
                    <li className="flex items-center gap-2">
                      <span className="w-2 h-2 rounded-full bg-emerald-500" />
                      <span>Send personalized emails & 2-way SMS text messages</span>
                    </li>
                    <li className="flex items-center gap-2">
                      <span className="w-2 h-2 rounded-full bg-emerald-500" />
                      <span>Schedule appointments & send calendar reminders</span>
                    </li>
                    <li className="flex items-center gap-2">
                      <span className="w-2 h-2 rounded-full bg-emerald-500" />
                      <span>Collect payments & automatically route to operating or trust</span>
                    </li>
                  </ul>
                </div>

                <div className="bg-white p-6 rounded-2xl border border-slate-200 shadow-inner space-y-3">
                  <div className="text-xs uppercase font-extrabold text-[#3344b8] tracking-wider">
                    Workflow Preview
                  </div>
                  <div className="p-3 bg-amber-50 rounded-xl border border-amber-200 text-xs text-amber-900 font-bold flex items-center justify-between">
                    <span>⚡ TRIGGER: Form Submitted ("Inquiry")</span>
                    <span className="text-[10px] bg-amber-200 px-2 py-0.5 rounded">Instant</span>
                  </div>
                  <div className="text-center text-xs text-slate-400 font-bold">↓</div>
                  <div className="p-3 bg-blue-50 rounded-xl border border-blue-200 text-xs text-blue-900 font-medium">
                    📧 ACTION: Send Confirmation Email + Video Link
                  </div>
                  <div className="text-center text-xs text-slate-400 font-bold">↓</div>
                  <div className="p-3 bg-emerald-50 rounded-xl border border-emerald-200 text-xs text-emerald-900 font-medium">
                    📱 ACTION: Send SMS Reminder ("Your Consult is booked")
                  </div>
                </div>
              </div>
            )}

            {activeWorkflowTab === "logic" && (
              <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div className="space-y-4">
                  <h3 className="text-2xl font-black text-[#12193b]">
                    Branching logic that knows what your prospect did.
                  </h3>
                  <p className="text-slate-600 text-sm sm:text-base leading-relaxed">
                    If someone skips your pricing video, route them to a fee preparation sequence.
                    If someone fills out an intake form, push their details directly into your
                    practice management system.
                  </p>
                </div>

                <div className="bg-white p-6 rounded-2xl border border-slate-200 shadow-inner space-y-3">
                  <div className="text-xs uppercase font-extrabold text-[#3344b8] tracking-wider">
                    If / Else Logic
                  </div>
                  <div className="p-3 bg-slate-100 rounded-xl border text-xs font-bold text-slate-800">
                    ❓ CONDITION: Watched 80%+ of Pricing Video?
                  </div>
                  <div className="grid grid-cols-2 gap-2 text-xs">
                    <div className="p-3 bg-emerald-50 border border-emerald-200 rounded-xl text-emerald-900 font-medium">
                      ✓ YES: Send Direct Consult Link
                    </div>
                    <div className="p-3 bg-amber-50 border border-amber-200 rounded-xl text-amber-900 font-medium">
                      ✕ NO: Prepare Attorney to cover fees early
                    </div>
                  </div>
                </div>
              </div>
            )}

            {activeWorkflowTab === "connected" && (
              <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                <div className="space-y-4">
                  <h3 className="text-2xl font-black text-[#12193b]">
                    Need custom tools? We integrate cleanly.
                  </h3>
                  <p className="text-slate-600 text-sm sm:text-base leading-relaxed">
                    While Leadli offers ALMOST every tool a business needs to thrive, if you have
                    any custom or industry-specific software you can’t live without, we can connect
                    through Zapier or webhooks.
                  </p>
                </div>

                <div className="bg-white p-6 rounded-2xl border border-slate-200 shadow-inner text-center space-y-3">
                  <div className="text-xs uppercase font-extrabold text-[#3344b8]">Sync Engine</div>
                  <div className="text-lg font-black text-slate-900">
                    Leadli Hub ⟷ Zapier / Webhooks / Custom APIs
                  </div>
                  <p className="text-xs text-slate-500">
                    Keep your practice management or specialized software in lockstep.
                  </p>
                </div>
              </div>
            )}
          </div>
        </div>
      </section>

      {/* 6. FEATURE GRID */}
      <LeadliFeatureGrid />

      {/* 7. CONSOLIDATE & SAVE CALCULATOR (LITE / ILLUSTRATIVE) */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-10">
            <span className="text-xs font-bold uppercase tracking-wider text-emerald-700 bg-emerald-50 px-3.5 py-1.5 rounded-full border border-emerald-200">
              Illustrative Savings Estimate
            </span>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] mt-3 tracking-tight">
              What is your tech stack costing you?
            </h2>
            <p className="mt-3 text-base sm:text-lg text-slate-600">
              Toggle the tools you pay for today to see an illustrative estimate of what you'd save
              by consolidating onto Leadli. We'll dial in the real numbers on your consult.
            </p>
          </div>

          <LiteSavingsCalculator onOpenDiscovery={handleOpenDiscovery} />
        </div>
      </section>

      {/* 8. FROM CHAOS TO CONFIDENCE */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-14">
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] tracking-tight">
              From chaos... to confidence
            </h2>
            <p className="mt-3 text-base sm:text-lg text-slate-600">
              See the exact shift our clients experience when they move from disconnected tools to
              one clear process.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="bg-rose-50/70 border border-rose-200 rounded-3xl p-7 sm:p-8 space-y-4">
              <div className="text-xs font-extrabold uppercase tracking-wider text-rose-700 flex items-center gap-2">
                <XCircle className="w-4 h-4" />
                <span>Before Leadli (The Chaos)</span>
              </div>
              <ul className="space-y-3 text-xs sm:text-sm text-slate-700">
                <li className="flex items-start gap-2">
                  <span className="text-rose-500 font-bold">✕</span>
                  <span>Juggling too many disconnected systems that don't talk to each other</span>
                </li>
                <li className="flex items-start gap-2">
                  <span className="text-rose-500 font-bold">✕</span>
                  <span>Manual data entry and scattered information stealing hours weekly</span>
                </li>
                <li className="flex items-start gap-2">
                  <span className="text-rose-500 font-bold">✕</span>
                  <span>Drowning in unused subscriptions without the functionality you need</span>
                </li>
                <li className="flex items-start gap-2">
                  <span className="text-rose-500 font-bold">✕</span>
                  <span>Critical tasks and warm leads slipping through the cracks</span>
                </li>
              </ul>
            </div>

            <div className="bg-emerald-50/70 border border-emerald-200 rounded-3xl p-7 sm:p-8 space-y-4">
              <div className="text-xs font-extrabold uppercase tracking-wider text-emerald-800 flex items-center gap-2">
                <CheckCircle2 className="w-4 h-4" />
                <span>With Leadli (The Confidence)</span>
              </div>
              <ul className="space-y-3 text-xs sm:text-sm text-slate-800">
                <li className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>One centralized system where everything works together seamlessly</span>
                </li>
                <li className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Automation that eliminates manual work and saves hours every week</span>
                </li>
                <li className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Fewer tools, lower overall costs, and much more capability</span>
                </li>
                <li className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>A single source of truth for leads, tasks, and accountability</span>
                </li>
              </ul>
            </div>
          </div>

          <div className="mt-12 bg-gradient-to-br from-[#12193b] to-[#25349c] text-white p-8 sm:p-10 rounded-3xl text-center space-y-4 shadow-xl">
            <h3 className="text-2xl sm:text-3xl font-black tracking-tight">
              One system. Clear processes. Confident growth.
            </h3>
            <p className="text-slate-200 text-sm sm:text-base max-w-xl mx-auto">
              Ready to stop fooling around with duct-taped Frankensystems and start running your
              business the right way?
            </p>
            <div className="pt-2">
              <button
                onClick={handleOpenDiscovery}
                className="inline-flex items-center gap-2 px-8 py-3.5 rounded-xl bg-amber-500 hover:bg-amber-600 text-slate-950 font-black text-sm sm:text-base shadow-lg transition-all cursor-pointer"
              >
                <span>Schedule Your Discovery Call Today</span>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </section>

      {/* 9. FINAL CALL TO ACTION */}
      <section className="py-20 bg-white border-b border-slate-200 text-center">
        <div className="max-w-4xl mx-auto px-4 sm:px-6 space-y-6">
          <div className="w-14 h-14 rounded-2xl bg-blue-50 border border-blue-200 text-[#3344b8] mx-auto flex items-center justify-center">
            <PhoneCall className="w-7 h-7" />
          </div>
          <h2 className="text-3xl sm:text-5xl font-black text-[#12193b] tracking-tight">
            It's Time to Power Up Your Business
          </h2>
          <p className="text-base sm:text-xl text-slate-600 max-w-2xl mx-auto">
            Talk to our team to see how Leadli and Flying Leap Studio can transform your operations.
          </p>
          <div>
            <button
              onClick={handleOpenDiscovery}
              className="inline-flex items-center gap-2 px-8 py-4 rounded-2xl bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-base shadow-xl transition-all cursor-pointer"
            >
              <strong>Talk to Our Team</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
          </div>
        </div>
      </section>

      {/* FOOTER */}
      <HomeFooter onOpenDiscovery={handleOpenDiscovery} />

      {/* DISCOVERY MODAL */}
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
