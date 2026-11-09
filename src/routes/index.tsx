import { useState } from "react";
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
import { ImplementationPromise } from "@/components/home/ImplementationPromise";
import { FlightPlanTimeline, HomeFinalCta, HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { Leadli2Banner } from "@/components/home/Leadli2Banner";

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
    <div
      id="cms-root"
      className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900"
    >
      <Leadli2Banner />

      {/* 1. TOP HEADER / NAV — transparent overlay on dark hero */}
      <header className="absolute top-0 inset-x-0 z-40 transition-all">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12 brightness-0 invert" />
          </Link>

          {/* Navigation Links */}
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-white/80">
            <Link to="/" className="text-white hover:text-white transition-colors">
              Home
            </Link>
            <Link
              to="/estate-planning"
              className="text-white/80 hover:text-white transition-colors inline-flex items-center gap-1.5"
            >
              <span>Estate Planning</span>
              <span className="text-[10px] uppercase font-bold tracking-wider px-1.5 py-0.5 rounded-sm bg-[var(--brand-orange)] text-[oklch(0.16_0.04_45)] border border-[var(--brand-orange)]">
                Vertical
              </span>
            </Link>
            <Link
              to="/leadli"
              className="text-white/80 hover:text-white transition-colors font-medium"
            >
              Leadli
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="text-white/80 hover:text-white transition-colors"
            >
              Login
            </a>
          </nav>

          <div className="flex items-center gap-3">
            <button
              onClick={handleOpenDiscovery}
              className="inline-flex items-center justify-center gap-2 px-5 sm:px-6 py-2.5 sm:py-3 rounded-full bg-[var(--brand-orange)] text-[oklch(0.16_0.04_45)] hover:brightness-110 font-bold text-sm sm:text-base transition-all shadow-lg cursor-pointer"
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

      {/* 5a. WE BUILD, TRAIN, TROUBLESHOOT, IMPLEMENT */}
      <ImplementationPromise showExperience />

      {/* 6. CHOOSE YOUR EXPERIENCE */}
      <OfferingsSection onOpenDiscovery={handleOpenDiscovery} />

      {/* 7. BUILD TIMELINE */}
      <FlightPlanTimeline onOpenDiscovery={handleOpenDiscovery} />

      {/* 9. TESTIMONIALS */}
      <section className="relative py-20 sm:py-28 bg-white border-b border-slate-200 overflow-hidden">
        <div className="absolute inset-0 -z-10 pointer-events-none fl-light-grid" />
        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="fl-rise fl-rise-1 text-4xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.02]">
              Don't just take our word for it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div className="fl-rise bg-[#fcfbf8] rounded-2xl border border-slate-200 p-7 flex flex-col justify-between hover:border-[var(--brand-orange)]/40 hover:shadow-md transition-all">
              <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
                “I came to Brian and team eight years ago with a long list of ideas and everything
                I’d heard I needed to do for digital marketing. Instead of selling me a package,
                they asked who my audience was and how we could reach them on a budget that made
                sense. It has never been cookie-cutter. They’re responsive, creative, and always
                asking the questions that help us find what I actually need.”
              </p>
              <div className="mt-6 pt-4 border-t border-slate-200 flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-[var(--brand-orange)] text-white flex items-center justify-center font-bold text-sm">
                  JK
                </div>
                <div>
                  <div className="font-bold text-slate-900 text-sm">Jennifer Redmond Knight</div>
                  <div className="text-xs text-slate-500">Coalition Coaches</div>
                </div>
              </div>
            </div>

            <div className="fl-rise fl-rise-2 bg-[#fcfbf8] rounded-2xl border border-slate-200 p-7 flex flex-col justify-between hover:border-[var(--brand-orange)]/40 hover:shadow-md transition-all">
              <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
                “Working with Leadli has been very easy. I’m not your super tech girl, but I’m not
                low tech either. I can dream up whatever I want, then speak to their programming
                team, and they figure out how it’s built. I get to stay in the visionary role
                without getting in the weeds. When you’re looking for that white-glove experience,
                hands down, Flying Leap Studio is where you should go.”
              </p>
              <div className="mt-6 pt-4 border-t border-slate-200 flex items-center gap-3">
                <div className="w-10 h-10 rounded-full bg-[#3344b8] text-white flex items-center justify-center font-bold text-sm">
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
