import React, { useState } from "react";
import { Link } from "@tanstack/react-router";
import { ArrowRight, ArrowUpRight } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { LiteSavingsCalculator } from "@/components/LiteSavingsCalculator";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { LEADLI_FUNCTIONS } from "@/lib/leadli-functions";

/**
 * Bold variant — high-contrast brutalist. Near-black ink, solid orange blocks,
 * hard square corners, thick borders, oversized uppercase type, no gradients,
 * no shadows-as-glow. Orange dominant, blue reduced to a single tag accent.
 */
export function LeadliVariantBold() {
  const [modalOpen, setModalOpen] = useState(false);
  const open = () => setModalOpen(true);
  const ink = "#111111";
  const orange = "#f15a24";
  const blue = "#1d3a8a";

  return (
    <div className="min-h-screen bg-[#fdfdfb] text-[#111111] font-sans selection:bg-[#f15a24] selection:text-white">
      {/* HEADER */}
      <header className="sticky top-0 z-40 bg-[#111111] text-white border-b-4 border-[#f15a24]">
        <div className="max-w-6xl mx-auto px-5 h-16 flex items-center justify-between">
          <Link to="/" className="flex items-center [&_img]:brightness-0 [&_img]:invert">
            <FlyingLeapLogo className="h-9" />
          </Link>
          <div className="hidden md:flex items-center gap-6 text-[13px] font-bold uppercase tracking-wide text-white/80">
            <Link to="/" className="hover:text-[#f15a24]">
              Home
            </Link>
            <Link to="/estate-planning" className="hover:text-[#f15a24]">
              Estate Planning
            </Link>
            <Link to="/leadli" className="text-[#f15a24]">
              Leadli
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-[#f15a24]"
            >
              Login
            </a>
          </div>
          <button
            onClick={open}
            className="inline-flex items-center gap-2 px-4 py-2 bg-[#f15a24] text-[#111111] text-sm font-black uppercase tracking-wide hover:bg-white transition-colors cursor-pointer"
          >
            Book a Call <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </header>

      {/* HERO — solid orange block, square, oversized type */}
      <section className="bg-[#f15a24] text-[#111111] border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-20 lg:py-28">
          <div className="inline-block bg-[#111111] text-[#f15a24] px-3 py-1 text-xs font-black uppercase tracking-[0.2em] mb-8">
            The Business Everything App
          </div>
          <h1 className="font-black uppercase leading-[0.9] tracking-tight text-5xl sm:text-7xl lg:text-8xl">
            One platform.
            <br />
            Built backwards
            <br />
            <span className="text-white">around you.</span>
          </h1>
          <p className="mt-8 max-w-xl text-lg font-bold text-[#111111]/80">
            CRM. Calendars. Marketing. Workflows. E-signatures. Payments. On one record. Nothing
            falls through the cracks — because there are no cracks.
          </p>
          <div className="mt-10 flex flex-wrap items-center gap-4">
            <button
              onClick={open}
              className="inline-flex items-center gap-2 px-8 py-4 bg-[#111111] text-white font-black uppercase tracking-wide text-base hover:bg-white hover:text-[#111111] transition-colors cursor-pointer"
            >
              Book a Discovery Call <ArrowRight className="w-5 h-5" />
            </button>
            <a
              href="https://www.leadli.co/standard-order"
              target="_blank"
              rel="noreferrer"
              className="inline-flex items-center gap-1.5 text-base font-black uppercase tracking-wide text-[#111111] border-b-4 border-[#111111] hover:text-white hover:border-white transition-colors"
            >
              Get Started Free <ArrowUpRight className="w-5 h-5" />
            </a>
          </div>
        </div>
      </section>

      {/* PRICE STRIP */}
      <div className="bg-[#111111] text-white border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-6 flex flex-wrap items-center justify-between gap-4">
          <div className="flex items-baseline gap-3">
            <span className="text-4xl font-black text-[#f15a24]">$199</span>
            <span className="text-sm font-bold uppercase tracking-wide text-white/60">
              / month, flat. all core features.
            </span>
          </div>
          <span className="text-xs font-black uppercase tracking-[0.2em] text-white/50">
            No long-term contracts · Unlimited contacts
          </span>
        </div>
      </div>

      {/* AUDIENCE — stamped tags */}
      <section className="border-b-4 border-[#111111] bg-[#fdfdfb]">
        <div className="max-w-6xl mx-auto px-5 py-5 flex flex-wrap items-center gap-3">
          <span className="text-xs font-black uppercase tracking-[0.2em] text-[#111111]/50">
            Run your whole firm on it
          </span>
          {LEADLI_FUNCTIONS.map((fn) => (
            <Link
              key={fn.slug}
              to="/leadli/$slug"
              params={{ slug: fn.slug }}
              className="px-3 py-1.5 text-xs font-black uppercase tracking-wide bg-[#111111] text-white hover:bg-[#f15a24] hover:text-[#111111] transition-colors"
            >
              {fn.name}
            </Link>
          ))}
        </div>
      </section>

      {/* ARCHITECTURE — hard grid blocks */}
      <section className="border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <BlockLabel n="01" label="The Architecture" />
          <h2 className="text-4xl sm:text-6xl font-black uppercase tracking-tight leading-[0.95] max-w-3xl mt-6 mb-12">
            It adapts to the way you already work.
          </h2>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-0 border-4 border-[#111111]">
            <div className="bg-[#111111] text-white p-6 md:col-span-2 md:row-span-2 flex flex-col justify-between min-h-[220px]">
              <div className="text-xs font-black uppercase tracking-[0.2em] text-[#f15a24]">
                Leadli Core
              </div>
              <div>
                <div className="text-3xl font-black uppercase">Workflow Engine</div>
                <div className="text-sm font-bold text-white/60 mt-2">
                  Central CRM & automations. Everything connects here.
                </div>
              </div>
            </div>
            {[
              ["Reporting", "Dashboards that update themselves."],
              ["Calendars", "Right consult, right length."],
              ["Marketing", "Email, text, social, ads, reviews."],
              ["Payments", "Operating or trust, routed right."],
            ].map(([t, d], i) => (
              <div
                key={t}
                className={`p-6 border-t-2 md:border-t-0 border-l-2 border-[#111111] ${i % 2 === 0 ? "bg-[#fdfdfb]" : "bg-[#f15a24]/10"}`}
              >
                <div className="text-xs font-black uppercase tracking-[0.2em] text-[#f15a24]">{`0${i + 2}`}</div>
                <div className="text-xl font-black uppercase mt-2">{t}</div>
                <div className="text-xs font-bold text-[#111111]/70 mt-1">{d}</div>
              </div>
            ))}
          </div>
          <button
            onClick={open}
            className="mt-10 inline-flex items-center gap-2 text-sm font-black uppercase tracking-wide border-b-4 border-[#f15a24] text-[#111111] hover:text-[#f15a24]"
          >
            See it mapped to your firm <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </section>

      {/* CHAOS — solid ink block with stats */}
      <section className="bg-[#111111] text-white border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <div className="text-xs font-black uppercase tracking-[0.2em] text-[#f15a24] mb-6">
            02 — The stack you're paying for
          </div>
          <h2 className="text-4xl sm:text-6xl font-black uppercase tracking-tight leading-[0.95] max-w-4xl">
            Ten logins. Ten invoices. A Zapier that breaks on every API change.
          </h2>
          <p className="mt-6 max-w-xl text-lg font-bold text-white/60">
            That's the fragmented stack most firms run on — $600 to $1,200 a month for tools that
            don't talk. Leadli replaces the lot for $199, natively connected.
          </p>
          <div className="mt-12 grid grid-cols-2 md:grid-cols-4 border-4 border-white">
            {[
              ["10+", "logins → 1"],
              ["$199", "flat, all features"],
              ["0", "third-party glue"],
              ["∞", "contacts & funnels"],
            ].map(([n, l], i) => (
              <div
                key={l}
                className={`p-6 ${i < 3 ? "border-r-4 border-white" : ""} ${i < 2 ? "border-b-4 md:border-b-0 border-white" : ""}`}
              >
                <div className="text-5xl font-black text-[#f15a24]">{n}</div>
                <div className="text-xs font-black uppercase tracking-wide text-white/60 mt-2">
                  {l}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FEATURE INDEX — list with hard rules */}
      <section className="border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <BlockLabel n="03" label="The Feature Index" />
          <h2 className="text-4xl sm:text-6xl font-black uppercase tracking-tight leading-[0.95] mt-6 mb-12">
            Everything your firm runs on.
          </h2>
          <div className="border-t-4 border-[#111111]">
            {LEADLI_FEATURES.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="group flex items-center justify-between gap-4 border-b-2 border-[#111111] py-3 px-2 hover:bg-[#f15a24] transition-colors"
              >
                <span className="font-black uppercase text-sm tracking-wide group-hover:text-[#111111]">
                  {f.name}
                </span>
                <ArrowUpRight className="w-5 h-5 text-[#111111]/30 group-hover:text-[#111111]" />
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* FUNCTIONS — bold links */}
      <section className="border-b-4 border-[#111111] bg-[#fdfdfb]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <BlockLabel n="04" label="Browse by what you do" />
          <h2 className="text-4xl sm:text-6xl font-black uppercase tracking-tight leading-[0.95] mt-6 mb-12">
            Five functions. One platform.
          </h2>
          <div className="border-4 border-[#111111]">
            {LEADLI_FUNCTIONS.map((fn, i) => (
              <Link
                key={fn.slug}
                to="/leadli/$slug"
                params={{ slug: fn.slug }}
                className="group flex items-center justify-between gap-4 p-6 border-t-2 border-[#111111] first:border-t-0 hover:bg-[#111111] hover:text-white transition-colors"
              >
                <div>
                  <div className="text-xs font-black uppercase tracking-[0.2em] text-[#f15a24]">{`0${i + 1}`}</div>
                  <div className="text-2xl font-black uppercase mt-1">{fn.name}</div>
                  <div className="text-sm font-bold text-current/70 mt-1 max-w-2xl">
                    {fn.tagline}
                  </div>
                </div>
                <div className="flex items-center gap-3 shrink-0">
                  <span className="text-xs font-black uppercase tracking-wide bg-[#f15a24] text-[#111111] px-2 py-1">
                    {fn.featureSlugs.length} tools
                  </span>
                  <ArrowUpRight className="w-6 h-6" />
                </div>
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* CALCULATOR */}
      <section className="border-b-4 border-[#111111]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <BlockLabel n="05" label="The Numbers" />
          <h2 className="text-4xl sm:text-6xl font-black uppercase tracking-tight leading-[0.95] mt-6 mb-4 max-w-3xl">
            What's your tech stack costing you?
          </h2>
          <p className="text-lg font-bold text-[#111111]/70 max-w-xl mb-10">
            Toggle the tools you pay for. We dial in the real numbers on your consult.
          </p>
          <LiteSavingsCalculator onOpenDiscovery={open} />
        </div>
      </section>

      {/* FINAL CTA — full orange */}
      <section className="bg-[#f15a24] border-b-4 border-[#111111]">
        <div className="max-w-4xl mx-auto px-5 py-24 text-center">
          <div className="inline-block bg-[#111111] text-[#f15a24] px-3 py-1 text-xs font-black uppercase tracking-[0.2em] mb-8">
            The Invitation
          </div>
          <h2 className="text-4xl sm:text-7xl font-black uppercase tracking-tight leading-[0.9] text-[#111111]">
            Stop fooling around with duct-taped Frankensystems.
          </h2>
          <p className="mt-6 text-xl font-bold text-[#111111]/70">
            30 minutes. We'll tell you honestly if it fits.
          </p>
          <button
            onClick={open}
            className="mt-8 inline-flex items-center gap-2 px-8 py-4 bg-[#111111] text-white font-black uppercase tracking-wide text-base hover:bg-white hover:text-[#111111] transition-colors cursor-pointer"
          >
            Book a Discovery Call <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>

      <HomeFooter onOpenDiscovery={open} />
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}

function BlockLabel({ n, label }: { n: string; label: string }) {
  return (
    <div className="inline-flex items-center gap-2 bg-[#111111] text-[#f15a24] px-3 py-1 text-xs font-black uppercase tracking-[0.2em]">
      <span>{n}</span>
      <span className="text-white/40">/</span>
      <span className="text-white">{label}</span>
    </div>
  );
}
