import React from "react";
import { Link } from "@tanstack/react-router";
import { ArrowRight, CheckCircle2, XCircle, Sparkles, ChevronRight } from "lucide-react";
import { getCapacityMonth } from "@/lib/capacity-month";

export function HomeHero({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative pt-12 pb-16 sm:pt-20 sm:pb-24 overflow-hidden">
      <div className="absolute top-10 left-1/2 -translate-x-1/2 w-[800px] h-[450px] bg-gradient-to-tr from-blue-100/60 via-amber-100/40 to-purple-100/30 blur-3xl pointer-events-none rounded-full" />

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center">
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-blue-50 border border-blue-200 text-[#3344b8] text-xs sm:text-sm font-bold mb-6 shadow-xs">
          <Sparkles className="w-4 h-4 text-[#f97316]" />
          <span>One Team. One Platform. No Loose Ends.</span>
        </div>

        <h1 className="text-3xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.15]">
          You built a business you're proud of.{" "}
          <span className="block text-[#3344b8] mt-2">Now let's build the system it deserves.</span>
        </h1>

        <p className="mt-6 text-lg sm:text-2xl text-slate-700 max-w-3xl mx-auto leading-relaxed font-semibold">
          Flying Leap Studio helps established service businesses replace scattered tools and
          guesswork with one connected system — and provides the strategy to grow it.
        </p>

        <div className="mt-6 max-w-2xl mx-auto text-slate-600 text-sm sm:text-base leading-relaxed space-y-3">
          <p>
            Starting a business takes nerve. Growing one takes something more. We built Flying Leap
            Studio for the business owners who are still at it — the ones who’ve been running on
            instinct and hustle, and are ready to put real systems behind their momentum.
          </p>
          <p>
            The name is intentional: we celebrate every flying leap you’ve already taken — your
            first client, your first pivot, your first hire — and we’re here to support your next
            one.
          </p>
        </div>

        <div className="mt-9 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={onOpenDiscovery}
            className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer border-2 border-blue-400/30"
          >
            <strong>Build My System</strong>
            <ArrowRight className="w-5 h-5" />
          </button>

          <Link
            to="/intake"
            className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-7 py-4 text-base font-bold bg-white hover:bg-slate-50 text-[#12193b] rounded-2xl border-2 border-slate-300 shadow-sm transition-all"
          >
            <span>Explore GrowthOS Intake</span>
            <ChevronRight className="w-4 h-4 text-slate-400" />
          </Link>
        </div>

        <p className="mt-3 text-xs sm:text-sm text-slate-500 font-medium">
          Customized setup • Concierge support • Only 2 build spots open for {getCapacityMonth()}
        </p>
      </div>
    </section>
  );
}

export function SystemOverviewCard({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="pb-16 sm:pb-24">
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="relative bg-white rounded-3xl border-2 border-slate-200/90 p-8 sm:p-12 shadow-xl overflow-hidden">
          <div className="absolute top-0 right-0 w-80 h-80 bg-blue-50 rounded-full blur-3xl pointer-events-none -mr-20 -mt-20" />
          <div className="relative grid grid-cols-1 md:grid-cols-12 gap-8 items-center">
            <div className="md:col-span-7 space-y-4">
              <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
                The Flying Leap Difference
              </span>
              <h2 className="text-2xl sm:text-3xl md:text-4xl font-extrabold text-[#12193b] tracking-tight">
                One team. One platform. No loose ends.
              </h2>
              <div className="text-slate-600 text-sm sm:text-base leading-relaxed space-y-3">
                <p>
                  <strong>Flying Leap Studio</strong> is the team. <strong>Leadli</strong> is the
                  platform we build on.
                </p>
                <p>
                  Most businesses that come to us have tried software before — and either couldn’t
                  get it off the ground or cobbled together something that technically works but
                  costs too much and breaks too often.
                </p>
                <p>
                  We fix that. We configure Leadli specifically for the way your business runs. Not
                  a generic template. A system built around your clients, your processes, and where
                  you’re headed next.
                </p>
              </div>
              <div className="pt-2">
                <button
                  onClick={onOpenDiscovery}
                  className="inline-flex items-center gap-2 px-6 py-3 rounded-xl bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm shadow-md transition-all cursor-pointer"
                >
                  <strong>Build My System</strong>
                  <ArrowRight className="w-4 h-4" />
                </button>
                <span className="ml-3 text-xs text-slate-500">
                  Customized setup & concierge support
                </span>
              </div>
            </div>

            <div className="md:col-span-5 bg-gradient-to-br from-slate-900 to-[#12193b] text-white rounded-2xl p-6 shadow-inner space-y-4">
              <div className="text-xs uppercase font-extrabold text-amber-400 tracking-wider">
                What You Get
              </div>
              <div className="space-y-3 text-sm">
                <div className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>No DIY headaches — our team builds it for you</span>
                </div>
                <div className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>Replaces 10+ expensive separate subscriptions</span>
                </div>
                <div className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>Automated intake, reminders & client journeys</span>
                </div>
                <div className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>Direct access to our senior engineering & strategy team</span>
                </div>
              </div>
              <div className="pt-3 border-t border-white/10 text-xs text-slate-300">
                Built on Leadli — configured around your exact workflow.
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export function DuctTapeSection({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="py-16 sm:py-20 bg-slate-900 text-white">
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-12">
          <h2 className="text-2xl sm:text-4xl font-extrabold tracking-tight">
            Duct tape and a prayer is not the way to run a business.
          </h2>
          <p className="mt-4 text-base sm:text-lg text-slate-300">
            When your systems don't connect, growth is inconsistent and slow — multiple logins,
            scattered data, and leads that keep slipping through the cracks end up costing more than
            just money.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-stretch">
          <div className="bg-slate-800/80 rounded-2xl p-7 border border-rose-500/30">
            <div className="inline-flex items-center gap-2 text-rose-400 text-sm font-bold uppercase tracking-wider mb-4">
              <XCircle className="w-4 h-4" />
              <span>Bloated Tech Stacks Keep You Stuck</span>
            </div>
            <ul className="space-y-3.5 text-slate-300 text-sm sm:text-base">
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Paying for subscriptions with overlapping or unnecessary features</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Using tools that don’t integrate cleanly with each other</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Patching together a single view of your pipeline across 5 tabs</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-rose-400 font-bold">✕</span>
                <span>Wasting hours troubleshooting tech instead of serving clients</span>
              </li>
            </ul>
          </div>

          <div className="bg-gradient-to-br from-[#12193b] to-blue-950 rounded-2xl p-7 border border-blue-400/40 flex flex-col justify-between">
            <div>
              <div className="inline-flex items-center gap-2 text-emerald-400 text-sm font-bold uppercase tracking-wider mb-4">
                <CheckCircle2 className="w-4 h-4" />
                <span>The Connected Solution</span>
              </div>
              <h3 className="text-xl sm:text-2xl font-bold text-white mb-3">
                Flying Leap replaces the Frankensystem with Leadli.
              </h3>
              <p className="text-slate-300 text-sm sm:text-base leading-relaxed">
                We design and implement the foundation, then support you as needed, turning
                scattered tech into a streamlined system built for growth.
              </p>
            </div>

            <div className="mt-6 pt-5 border-t border-white/10">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl bg-[#3344b8] hover:bg-[#25349c] text-white font-bold text-sm sm:text-base shadow-lg transition-all cursor-pointer"
              >
                <strong>I'm Ready for One Connected System</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
