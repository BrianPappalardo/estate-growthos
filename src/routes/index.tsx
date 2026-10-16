import React, { useState } from "react";
import { createFileRoute } from "@tanstack/react-router";
import { ArrowRight } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { IntakeLeakCalculator } from "@/components/IntakeLeakCalculator";
import { ProblemSection } from "@/components/ProblemSection";
import { EmotionalSection } from "@/components/EmotionalSection";
import { MantraSection } from "@/components/MantraSection";
import { PricingCards } from "@/components/PricingCards";
import { ProofSection } from "@/components/ProofSection";
import { GrowthOSFAQ } from "@/components/GrowthOSFAQ";
import { DeliverablesSection } from "@/components/DeliverablesSection";
import { ComparisonAndProcess } from "@/components/ComparisonAndProcess";
import { TopBanner, FinalCtaSection } from "@/components/CtaSections";

export const Route = createFileRoute("/")({
  component: GrowthOSLandingPage,
  head: () => ({
    meta: [
      {
        title: "GrowthOS | Fix Your Estate Planning Intake | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Stop pouring money into a leaky bucket. In 4-6 weeks, we build a custom intake system around how your estate planning firm actually works, so more leads show up educated and hire you.",
      },
      {
        property: "og:title",
        content: "GrowthOS | Custom Intake Systems for Estate Planning Law Firms",
      },
      {
        property: "og:description",
        content:
          "Stop running a non-profit you didn't sign up for. In 4-6 weeks, convert warm leads into pre-sold, high-value estate planning clients.",
      },
      {
        property: "og:type",
        content: "website",
      },
      {
        name: "twitter:card",
        content: "summary_large_image",
      },
      {
        property: "og:image",
        content:
          "https://vibe.filesafe.space/1792124205677784135/attachments/12d064d3-9ad0-4bda-ba9d-a5e91e57df39.png",
      },
      {
        name: "twitter:image",
        content:
          "https://vibe.filesafe.space/1792124205677784135/attachments/12d064d3-9ad0-4bda-ba9d-a5e91e57df39.png",
      },
    ],
  }),
});

function GrowthOSLandingPage() {
  const [modalOpen, setModalOpen] = useState(false);

  const handleOpenDiscovery = () => {
    setModalOpen(true);
  };

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      {/* 1. TOP ANNOUNCEMENT BAR */}
      <TopBanner />

      {/* 2. NAVIGATION BAR (Clean Ad-Landing Style: Logo + Top-Right Call to Action) */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80 transition-all">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <a href="#" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </a>

          <div className="flex items-center gap-3">
            <button
              onClick={handleOpenDiscovery}
              className="inline-flex items-center justify-center gap-2 px-6 sm:px-7 py-2.5 sm:py-3 rounded-full bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm sm:text-base transition-all shadow-md hover:shadow-lg cursor-pointer"
            >
              <strong>Book a Call</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </header>

      {/* 3. HERO SECTION */}
      <section className="relative pt-12 pb-20 sm:pt-16 sm:pb-28 overflow-hidden">
        <div className="absolute top-10 left-1/2 -translate-x-1/2 w-[720px] h-[400px] bg-gradient-to-tr from-blue-100/50 via-amber-100/40 to-purple-100/30 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center">
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-amber-500/15 border border-amber-500/30 text-amber-950 text-xs sm:text-sm font-bold mb-6 shadow-xs">
            <span className="w-2.5 h-2.5 rounded-full bg-amber-500 animate-pulse" />
            <span>Only 2 new clients per month. November: 2 spots open.</span>
          </div>

          <h1 className="text-3xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.14]">
            Stop Pouring Money Into a Leaky Bucket.{" "}
            <span className="block text-[#3344b8] mt-2">
              Fix Your Estate Planning Intake First.
            </span>
          </h1>

          <p className="mt-6 text-lg sm:text-xl text-slate-700 max-w-3xl mx-auto leading-relaxed font-normal">
            In 4-6 weeks, we build a custom intake system around the way your firm actually works,
            so more of the people who contact you show up, understand your fees, and hire you.
          </p>

          <div className="mt-8 flex flex-col items-center gap-3">
            <button
              onClick={handleOpenDiscovery}
              className="group relative inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl hover:scale-[1.01] transition-all cursor-pointer border-2 border-blue-400/30"
            >
              <strong>Book My Discovery Call</strong>
              <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
            </button>

            <p className="text-xs sm:text-sm text-slate-600 font-medium">
              30 minutes. See if it’s right for you and leave with a clear estimate.
            </p>
          </div>

          {/* Opportunity Pipeline Screenshot & Matching Layout */}
          <div className="mt-14 relative max-w-4xl mx-auto">
            <div className="relative rounded-2xl overflow-hidden border-2 border-slate-300 shadow-2xl bg-white">
              <div className="bg-slate-100 px-4 py-2.5 border-b border-slate-200 flex items-center gap-2">
                <div className="flex gap-1.5">
                  <div className="w-3 h-3 rounded-full bg-red-400" />
                  <div className="w-3 h-3 rounded-full bg-amber-400" />
                  <div className="w-3 h-3 rounded-full bg-emerald-400" />
                </div>
                <div className="text-[11px] text-slate-500 font-mono mx-auto font-medium">
                  GrowthOS • Estate Planning Intake & Opportunity Pipeline
                </div>
              </div>

              <div className="relative aspect-16/9 bg-slate-900 overflow-hidden">
                <img
                  src="https://vibe.filesafe.space/1792124205677784135/attachments/12d064d3-9ad0-4bda-ba9d-a5e91e57df39.png"
                  alt="GrowthOS Platform Opportunity Pipeline Preview"
                  className="w-full h-full object-cover object-top opacity-95"
                />

                <div className="absolute bottom-4 right-4 sm:bottom-6 sm:right-6 bg-white/95 backdrop-blur-md p-5 rounded-2xl border border-slate-200 shadow-xl max-w-sm text-left">
                  <div className="text-xs font-bold uppercase tracking-wider text-[#3344b8]">
                    One team. One platform.
                  </div>
                  <div className="text-base sm:text-lg font-black text-slate-900 mt-0.5 leading-snug">
                    No loose ends.
                  </div>
                  <p className="text-xs text-slate-600 mt-1.5 leading-relaxed">
                    Flying Leap Studio is the team. GrowthOS is the system built directly around
                    your firm’s specific consult and fee flow.
                  </p>
                </div>
              </div>
            </div>
          </div>

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

      {/* 4. THE PROBLEM */}
      <ProblemSection />

      {/* Interactive Firm Leak Audit / Calculator */}
      <section className="py-12 bg-white">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <IntakeLeakCalculator onBookClick={handleOpenDiscovery} />
        </div>
      </section>

      {/* 5. THE EMOTIONAL SECTION */}
      <EmotionalSection onBookClick={handleOpenDiscovery} />

      {/* 6. THE MANTRA */}
      <div id="strategy">
        <MantraSection />
      </div>

      {/* 7. WHAT YOU GET */}
      <DeliverablesSection onBookClick={handleOpenDiscovery} />

      {/* 8-10. WHY DIFFERENT, HOW IT WORKS, RISK REVERSAL, WHO IT'S FOR */}
      <ComparisonAndProcess onBookClick={handleOpenDiscovery} />

      {/* 11. PRICING SECTION */}
      <section id="pricing" className="py-16 sm:py-24 bg-[#fcfbf8]">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-14">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              Clear, Simple Investment
            </span>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              Two ways to work with us.
            </h2>
            <p className="mt-3 text-base sm:text-lg text-slate-600">
              The initial 4-6 week build is the same either way.
            </p>
          </div>

          <PricingCards onBookClick={handleOpenDiscovery} />

          <div className="mt-8 text-center text-sm text-slate-600">
            Not sure which is right? We’ll talk it through on your Discovery Call and give you a
            clear estimate.
          </div>
        </div>
      </section>

      {/* 12. PROOF / TESTIMONIALS */}
      <section className="py-16 sm:py-24 bg-white border-y border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-emerald-700 bg-emerald-50 px-3 py-1 rounded-full border border-emerald-200">
              Client Proof
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              What Law Firm Leaders Say
            </h2>
          </div>

          <ProofSection />
        </div>
      </section>

      {/* 13. FAQ SECTION */}
      <section className="py-16 sm:py-24 bg-white border-y border-slate-200">
        <div className="max-w-4xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
              Frequently Asked Questions
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              Everything You Need to Know
            </h2>
          </div>

          <GrowthOSFAQ />
        </div>
      </section>

      {/* 14. FINAL CTA SECTION */}
      <FinalCtaSection onBookClick={handleOpenDiscovery} />

      {/* FOOTER */}
      <footer className="bg-[#0b1026] text-slate-400 py-12 border-t border-slate-800">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 flex flex-col md:flex-row items-center justify-between gap-6">
          <div className="flex items-center gap-3">
            <FlyingLeapLogo className="h-9" />
          </div>

          <p className="text-xs text-slate-500 text-center md:text-left">
            © {new Date().getFullYear()} Flying Leap Studio. All rights reserved. GrowthOS is a
            custom-engineered intake operating system for professional service firms.
          </p>

          <div className="flex items-center gap-4 text-xs">
            <button
              onClick={handleOpenDiscovery}
              className="text-amber-400 hover:text-amber-300 font-semibold cursor-pointer"
            >
              Book Discovery Call
            </button>
            <span>•</span>
            <span className="text-slate-500">2 Spots for November</span>
          </div>
        </div>
      </footer>

      {/* DISCOVERY CALL INTERACTIVE MODAL */}
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
