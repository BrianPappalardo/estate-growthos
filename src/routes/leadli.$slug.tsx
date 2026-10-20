import { useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight, ArrowLeft } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { FunctionPage } from "@/components/home/FunctionPage";
import { getFunctionBySlug } from "@/lib/leadli-functions";

export const Route = createFileRoute("/leadli/$slug")({
  loader: ({ params }) => {
    return { fn: getFunctionBySlug(params.slug) };
  },
  head: ({ loaderData }) => {
    const fn = loaderData?.fn;
    const title = fn
      ? `${fn.name} | Leadli by Flying Leap Studio`
      : "Function | Leadli by Flying Leap Studio";
    const description = fn?.tagline ?? "Explore Leadli functions.";
    return {
      meta: [
        { title },
        { name: "description", content: description },
        { property: "og:title", content: title },
        { property: "og:description", content: description },
        { property: "og:type", content: "website" },
        { name: "twitter:card", content: "summary_large_image" },
      ],
    };
  },
  component: FunctionDetailPage,
});

function FunctionDetailPage() {
  const { fn } = Route.useLoaderData();
  const [modalOpen, setModalOpen] = useState(false);
  const handleOpenDiscovery = () => setModalOpen(true);

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      {/* HEADER */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </Link>
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-slate-700">
            <Link to="/" className="hover:text-[#3344b8] transition-colors">
              Home
            </Link>
            <Link
              to="/estate-planning"
              className="hover:text-[#3344b8] transition-colors inline-flex items-center gap-1.5"
            >
              <span>Estate Planning</span>
              <span className="text-[10px] uppercase font-bold tracking-wider px-1.5 py-0.5 rounded-sm bg-amber-100 text-amber-900 border border-amber-300">
                Vertical
              </span>
            </Link>
            <Link to="/leadli" className="hover:text-[#3344b8] transition-colors">
              Leadli
            </Link>
          </nav>
          <div className="flex items-center gap-3">
            <Link
              to="/leadli"
              className="hidden sm:inline-flex items-center gap-1.5 text-sm font-semibold text-slate-600 hover:text-[#3344b8] transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              Back to Leadli
            </Link>
            <button
              onClick={handleOpenDiscovery}
              className="inline-flex items-center justify-center gap-2 px-5 sm:px-6 py-2.5 sm:py-3 rounded-full bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm sm:text-base transition-all shadow-md hover:shadow-lg cursor-pointer"
            >
              <strong>Book a Call</strong>
              <ArrowRight className="w-4 h-4" />
            </button>
          </div>
        </div>
      </header>

      {fn ? (
        <FunctionPage fn={fn} onOpenDiscovery={handleOpenDiscovery} />
      ) : (
        <main>
          <section className="py-24 sm:py-32 bg-white text-center">
            <div className="max-w-2xl mx-auto px-4 sm:px-6">
              <h1 className="text-3xl sm:text-5xl font-black text-[#12193b] tracking-tight">
                This function page is on the way.
              </h1>
              <p className="mt-5 text-base sm:text-lg text-slate-600 leading-relaxed">
                We couldn't find that function. Head back to the Leadli platform to see everything
                that's included.
              </p>
              <Link
                to="/leadli"
                className="mt-8 inline-flex items-center gap-2 px-8 py-4 text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl transition-all"
              >
                <ArrowLeft className="w-5 h-5" />
                Back to Leadli
              </Link>
            </div>
          </section>
        </main>
      )}

      <HomeFooter onOpenDiscovery={handleOpenDiscovery} />
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
