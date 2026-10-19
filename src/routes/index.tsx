import React, { useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import {
  HomeHero,
  SystemOverviewCard,
  DuctTapeSection,
} from "@/components/home/HomeHeroAndOverview";
import { PlatformFeaturesGrid, OfferingsSection } from "@/components/home/HomeFeaturesAndOfferings";
import { FlightPlanTimeline, HomeFinalCta, HomeFooter } from "@/components/home/HomeCrewAndPlan";

export const Route = createFileRoute("/")({
  component: FlyingLeapHomePage,
  head: () => ({
    meta: [
      {
        title: "Flying Leap Studio | Systems & Strategy for Growing Service Businesses",
      },
      {
        name: "description",
        content:
          "Flying Leap Studio helps established service businesses replace scattered tools and guesswork with one connected system — and provides the strategy to grow it.",
      },
      {
        property: "og:title",
        content: "Flying Leap Studio | One Team. One Platform. No Loose Ends.",
      },
      {
        property: "og:description",
        content:
          "You built a business you're proud of. Now let's build the system it deserves. Powered by Leadli and our experienced flight crew.",
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

function FlyingLeapHomePage() {
  const [modalOpen, setModalOpen] = useState(false);

  const handleOpenDiscovery = () => {
    setModalOpen(true);
  };

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      {/* 1. TOP HEADER / NAV */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80 transition-all">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </Link>

          {/* Navigation Links */}
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-slate-700">
            <Link to="/" className="text-[#3344b8] hover:text-[#12193b] transition-colors">
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
            <a
              href="https://flyingleapstudio.com/leadli/"
              target="_blank"
              rel="noreferrer"
              className="text-slate-700 hover:text-[#3344b8] transition-colors"
            >
              Leadli
            </a>
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
              <strong>Build My System</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </header>

      {/* 2. HERO */}
      <HomeHero onOpenDiscovery={handleOpenDiscovery} />

      {/* 3. ONE TEAM, ONE PLATFORM */}
      <SystemOverviewCard onOpenDiscovery={handleOpenDiscovery} />

      {/* 4. DUCT TAPE & A PRAYER */}
      <DuctTapeSection onOpenDiscovery={handleOpenDiscovery} />

      {/* 5. ALL IN ONE PLACE ENGINE */}
      <PlatformFeaturesGrid />

      {/* 6. CHOOSE YOUR EXPERIENCE */}
      <OfferingsSection onOpenDiscovery={handleOpenDiscovery} />

      {/* 7. BUILD TIMELINE */}
      <FlightPlanTimeline onOpenDiscovery={handleOpenDiscovery} />

      {/* 9. TESTIMONIALS */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-emerald-700 bg-emerald-50 px-3 py-1 rounded-full border border-emerald-200">
              Client Proof
            </span>
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
              Don't just take our word for it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="bg-[#fcfbf8] rounded-2xl border border-slate-200 p-7 flex flex-col justify-between">
              <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
                “I came to Brian and team eight years ago with a long list of ideas and everything
                I’d heard I needed to do for digital marketing. Instead of selling me a package,
                they asked who my audience was and how we could reach them on a budget that made
                sense. It has never been cookie-cutter. They’re responsive, creative, and always
                asking the questions that help us find what I actually need.”
              </p>
              <div className="mt-6 pt-4 border-t border-slate-200 flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-[#3344b8] text-white flex items-center justify-center font-bold text-sm">
                  JK
                </div>
                <div>
                  <div className="font-bold text-slate-900 text-sm">Jennifer Redmond Knight</div>
                  <div className="text-xs text-slate-500">Coalition Coaches</div>
                </div>
              </div>
            </div>

            <div className="bg-[#fcfbf8] rounded-2xl border border-slate-200 p-7 flex flex-col justify-between">
              <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
                “Working with Leadli has been very easy. I’m not your super tech girl, but I’m not
                low tech either. I can dream up whatever I want, then speak to their programming
                team, and they figure out how it’s built. I get to stay in the visionary role
                without getting in the weeds. When you’re looking for that white-glove experience,
                hands down, Flying Leap Studio is where you should go.”
              </p>
              <div className="mt-6 pt-4 border-t border-slate-200 flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-amber-500 text-white flex items-center justify-center font-bold text-sm">
                  JN
                </div>
                <div>
                  <div className="font-bold text-slate-900 text-sm">Jennifer Norton</div>
                  <div className="text-xs text-slate-500">Norton Estate Planning</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* 10. FINAL LAUNCH CTA */}
      <HomeFinalCta onOpenDiscovery={handleOpenDiscovery} />

      {/* 11. FOOTER */}
      <HomeFooter onOpenDiscovery={handleOpenDiscovery} />

      {/* DISCOVERY MODAL */}
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
