import { useState } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import { ArrowRight, ArrowLeft, CheckCircle2, Sparkles, Landmark } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { CrmProductPage } from "@/components/home/CrmProductPage";
import { CalendarProductPage } from "@/components/home/CalendarProductPage";
import { MarketingProductPage } from "@/components/home/MarketingProductPage";
import { AutomationProductPage } from "@/components/home/AutomationProductPage";
import { WebsitesProductPage } from "@/components/home/WebsitesProductPage";
import { PaymentsProductPage } from "@/components/home/PaymentsProductPage";
import { ReviewsProductPage } from "@/components/home/ReviewsProductPage";
import { ContractsProductPage } from "@/components/home/ContractsProductPage";
import { ReportingProductPage } from "@/components/home/ReportingProductPage";
import { DashboardsProductPage } from "@/components/home/DashboardsProductPage";
import { InboxProductPage } from "@/components/home/InboxProductPage";
import { IntegrationsProductPage } from "@/components/home/IntegrationsProductPage";
import { OpportunityPipelinesProductPage } from "@/components/home/OpportunityPipelinesProductPage";
import { TaskManagementProductPage } from "@/components/home/TaskManagementProductPage";
import { SmartListsProductPage } from "@/components/home/SmartListsProductPage";
import { FormsProductPage } from "@/components/home/FormsProductPage";
import { getFeatureBySlug, LEADLI_FEATURES } from "@/lib/leadli-features";

export const Route = createFileRoute("/feature/$slug")({
  loader: ({ params }) => {
    return { feature: getFeatureBySlug(params.slug) };
  },
  head: ({ loaderData }) => {
    const feature = loaderData?.feature;
    const title = feature
      ? `${feature.name} | Leadli by Flying Leap Studio`
      : "Feature | Leadli by Flying Leap Studio";
    const description = feature?.tagline ?? "Explore Leadli features.";
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
  component: FeatureDetailPage,
});

function FeatureDetailPage() {
  const { feature } = Route.useLoaderData();
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

      {feature ? (
        feature.slug === "crm" ? (
          <CrmProductPage feature={feature} onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "calendars" ? (
          <CalendarProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "marketing" ? (
          <MarketingProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "automation" ? (
          <AutomationProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "websites" ? (
          <WebsitesProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "payments" ? (
          <PaymentsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "reviews" ? (
          <ReviewsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "contracts" ? (
          <ContractsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "reporting" ? (
          <ReportingProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "dashboards" ? (
          <DashboardsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "inbox" ? (
          <InboxProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "integrations" ? (
          <IntegrationsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "opportunity-pipelines" ? (
          <OpportunityPipelinesProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "task-management" ? (
          <TaskManagementProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "smart-lists" ? (
          <SmartListsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : feature.slug === "forms-surveys-quizzes" ? (
          <FormsProductPage onOpenDiscovery={handleOpenDiscovery} />
        ) : (
          <FeatureContent feature={feature} onOpenDiscovery={handleOpenDiscovery} />
        )
      ) : (
        <FeatureComingSoon onOpenDiscovery={handleOpenDiscovery} />
      )}

      <HomeFooter onOpenDiscovery={handleOpenDiscovery} />
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}

function FeatureContent({
  feature,
  onOpenDiscovery,
}: {
  feature: NonNullable<ReturnType<typeof getFeatureBySlug>>;
  onOpenDiscovery: () => void;
}) {
  const Icon = feature.icon;
  const moreFeatures = LEADLI_FEATURES.filter((f) => f.slug !== feature.slug).slice(0, 8);

  return (
    <main>
      {/* HERO */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="mb-6 flex flex-col items-start gap-3">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              All Leadli Features
            </Link>

            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
              <Sparkles className="w-4 h-4 text-amber-400" />
              {feature.category}
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Icon className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                {feature.name}
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                {feature.tagline}
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            {feature.description}
          </p>

          {feature.replaces && (
            <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
              <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
              <span className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold">
                {feature.replaces}
              </span>
            </div>
          )}

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              Included with Leadli at one flat $199/mo rate. See how it fits your firm on a
              30-minute call.
            </p>
          </div>
        </div>
      </section>

      {/* WHAT YOU GET */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 md:grid-cols-12 gap-10">
            <div className="md:col-span-7">
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                What you get
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight">
                {feature.name}, built around your firm.
              </h2>
              <div className="mt-6 space-y-3.5">
                {feature.included.map((item) => (
                  <div key={item} className="flex items-start gap-3">
                    <CheckCircle2 className="w-5 h-5 text-emerald-600 shrink-0 mt-0.5" />
                    <span className="text-sm sm:text-base text-slate-700 font-medium">{item}</span>
                  </div>
                ))}
              </div>
            </div>

            <div className="md:col-span-5">
              <div className="rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
                <div className="flex items-center gap-3 mb-4">
                  <div className="w-11 h-11 rounded-xl bg-white/10 border border-amber-400/40 flex items-center justify-center text-amber-300">
                    <Icon className="w-6 h-6" />
                  </div>
                  <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300">
                    Included in Leadli
                  </div>
                </div>
                <p className="text-sm text-slate-200 leading-relaxed">
                  This is part of the single platform we configure around the way your firm actually
                  works — not a template we drop on top of it. No extra subscription, no separate
                  login.
                </p>
                <div className="mt-5 pt-4 border-t border-white/15 flex items-baseline justify-between">
                  <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                  <span className="text-2xl font-black text-amber-300">$199/mo</span>
                </div>
              </div>
            </div>
          </div>

          {/* Partner callout (Confido) */}
          {feature.partnerTitle && (
            <div className="mt-10 p-6 sm:p-7 rounded-3xl bg-amber-500/10 border border-amber-500/30">
              <div className="flex items-start gap-4">
                <div className="p-3 bg-amber-500/20 rounded-2xl text-amber-700 shrink-0">
                  <Landmark className="w-6 h-6" />
                </div>
                <div>
                  <div className="flex flex-wrap items-center gap-2 mb-1">
                    <span className="text-xs font-bold uppercase tracking-wider text-amber-900">
                      {feature.partnerBadge}
                    </span>
                    <span className="px-2 py-0.5 text-[10px] font-extrabold bg-amber-500/20 text-amber-900 rounded">
                      IOLTA Ready
                    </span>
                  </div>
                  <h3 className="font-black text-lg text-[#12193b]">{feature.partnerTitle}</h3>
                  <p className="text-sm text-slate-700 mt-1.5 leading-relaxed">
                    {feature.partnerBody}
                  </p>
                </div>
              </div>
            </div>
          )}
        </div>
      </section>

      {/* MORE FEATURES */}
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              {feature.name} is just one piece. Explore the rest of what's included with Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {moreFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-white border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
              >
                {f.name}
              </Link>
            ))}
          </div>
          <div className="mt-10 text-center">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:underline"
            >
              See the full Leadli platform
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </section>

      {/* FINAL CTA */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let's see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll learn how you work, tell you honestly whether we're a fit, and give
            you a clear estimate.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-amber-500 hover:bg-amber-600 text-slate-950 rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>
    </main>
  );
}

function FeatureComingSoon({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <main>
      <section className="py-24 sm:py-32 bg-white text-center">
        <div className="max-w-2xl mx-auto px-4 sm:px-6">
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-blue-50 border border-blue-200 text-[#3344b8] text-xs font-bold uppercase tracking-wider mb-6">
            <Sparkles className="w-4 h-4" />
            More to come
          </div>
          <h1 className="text-3xl sm:text-5xl font-black text-[#12193b] tracking-tight">
            This feature page is on the way.
          </h1>
          <p className="mt-5 text-base sm:text-lg text-slate-600 leading-relaxed">
            We're still building out the detail here. In the meantime, this feature is part of
            Leadli — one platform, one flat $199/mo rate. Ask us about it on a discovery call.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 py-4 text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
          <div className="mt-6">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-sm font-bold text-[#3344b8] hover:underline"
            >
              <ArrowLeft className="w-4 h-4" />
              Back to the Leadli platform
            </Link>
          </div>
        </div>
      </section>
    </main>
  );
}
