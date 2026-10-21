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
 * Simple variant — quiet, minimal, lots of air. Neutral grays, a single
 * restrained orange accent, hairline rules, left-aligned, no shadows, no
 * gradients, no rounded blobs. Think directory/IBM-clean, not landing-page.
 */
export function LeadliVariantSimple() {
  const [modalOpen, setModalOpen] = useState(false);
  const open = () => setModalOpen(true);

  return (
    <div className="min-h-screen bg-white text-[#1a1a1a] font-sans selection:bg-[#f15a24] selection:text-white">
      {/* HEADER — hairline */}
      <header className="sticky top-0 z-40 bg-white/95 backdrop-blur-sm border-b border-[#1a1a1a]/10">
        <div className="max-w-5xl mx-auto px-6 h-14 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-8" />
          </Link>
          <div className="hidden md:flex items-center gap-7 text-[13px] font-medium text-[#1a1a1a]/60">
            <Link to="/" className="hover:text-[#1a1a1a]">
              Home
            </Link>
            <Link to="/estate-planning" className="hover:text-[#1a1a1a]">
              Estate Planning
            </Link>
            <Link to="/leadli" className="text-[#1a1a1a]">
              Leadli
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-[#1a1a1a]"
            >
              Login
            </a>
          </div>
          <button
            onClick={open}
            className="inline-flex items-center gap-2 px-4 py-2 text-sm font-medium text-[#1a1a1a] border border-[#1a1a1a]/15 rounded-full hover:border-[#f15a24] hover:text-[#f15a24] transition-colors cursor-pointer"
          >
            Book a Call <ArrowRight className="w-3.5 h-3.5" />
          </button>
        </div>
      </header>

      {/* HERO — left-aligned, generous, quiet */}
      <section className="border-b border-[#1a1a1a]/10">
        <div className="max-w-5xl mx-auto px-6 py-24 lg:py-32">
          <p className="text-sm text-[#f15a24] font-medium mb-8">The business everything app</p>
          <h1 className="text-4xl sm:text-5xl lg:text-6xl font-medium tracking-tight leading-[1.1] max-w-3xl text-[#1a1a1a]">
            An all-in-one platform built for the way you work — not the other way around.
          </h1>
          <p className="mt-8 text-lg text-[#1a1a1a]/60 max-w-xl leading-relaxed">
            CRM, calendars, marketing, workflows, e-signatures, and payments on one record. Nothing
            falls through the cracks.
          </p>
          <div className="mt-10 flex flex-wrap items-center gap-6">
            <button
              onClick={open}
              className="inline-flex items-center gap-2 text-[15px] font-medium text-[#1a1a1a] hover:text-[#f15a24] transition-colors cursor-pointer"
            >
              Book a Discovery Call <ArrowRight className="w-4 h-4" />
            </button>
            <a
              href="https://www.leadli.co/standard-order"
              target="_blank"
              rel="noreferrer"
              className="inline-flex items-center gap-1.5 text-[15px] font-medium text-[#1a1a1a]/60 hover:text-[#1a1a1a] transition-colors"
            >
              Get Started Free <ArrowUpRight className="w-4 h-4" />
            </a>
          </div>
          <div className="mt-14 pt-6 border-t border-[#1a1a1a]/10 flex flex-wrap gap-x-12 gap-y-4">
            <div>
              <div className="text-2xl font-medium text-[#1a1a1a]">
                $199<span className="text-sm text-[#1a1a1a]/40">/mo</span>
              </div>
              <div className="text-xs text-[#1a1a1a]/50 mt-1">Flat. All core features.</div>
            </div>
            <div>
              <div className="text-2xl font-medium text-[#1a1a1a]">10+ → 1</div>
              <div className="text-xs text-[#1a1a1a]/50 mt-1">Subscriptions consolidated.</div>
            </div>
            <div>
              <div className="text-2xl font-medium text-[#1a1a1a]">∞</div>
              <div className="text-xs text-[#1a1a1a]/50 mt-1">Contacts, funnels, automations.</div>
            </div>
          </div>
        </div>
      </section>

      {/* AUDIENCE — inline */}
      <section className="border-b border-[#1a1a1a]/10">
        <div className="max-w-5xl mx-auto px-6 py-5">
          <p className="text-sm text-[#1a1a1a]/55">
            <span className="text-[#1a1a1a] font-medium">Run your whole firm on it. </span>
            {LEADLI_FUNCTIONS.map((fn, i) => (
              <React.Fragment key={fn.slug}>
                <Link
                  to="/leadli/$slug"
                  params={{ slug: fn.slug }}
                  className="text-[#1a1a1a] hover:text-[#f15a24]"
                >
                  {fn.name}
                </Link>
                {i < LEADLI_FUNCTIONS.length - 1 ? (
                  <span className="text-[#1a1a1a]/30"> · </span>
                ) : null}
              </React.Fragment>
            ))}
            .
          </p>
        </div>
      </section>

      {/* ARCHITECTURE — clean list of connections */}
      <Section title="It adapts to the way you already work." kicker="Architecture">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-start">
          <div className="space-y-5 text-[#1a1a1a]/70 leading-relaxed max-w-md">
            <p>
              Most platforms hand you a template and ask you to shrink your firm into it. We start
              with your real client touchpoints and configure the software around them.
            </p>
            <p>
              The core engine — CRM and automations — sits at the center. Reporting, conversations,
              calendars, marketing, and payments connect natively. Add what you need. Ignore what
              you don't.
            </p>
            <button
              onClick={open}
              className="inline-flex items-center gap-2 text-sm font-medium text-[#1a1a1a] hover:text-[#f15a24] transition-colors"
            >
              See it mapped to your firm <ArrowRight className="w-4 h-4" />
            </button>
          </div>
          <div className="border-t border-[#1a1a1a]/10">
            <div className="py-4 border-b border-[#1a1a1a]/10">
              <div className="text-xs text-[#f15a24] mb-1">Core</div>
              <div className="font-medium text-[#1a1a1a]">
                Leadli Workflow Engine — CRM & automations
              </div>
            </div>
            {[
              ["Reporting", "Dashboards that update themselves."],
              ["Calendars", "Right consult, right length, every time."],
              ["Conversations", "Email, text, phone, and chat in one inbox."],
              ["Marketing", "Email, text, social, ads, and reviews."],
              ["Payments", "Operating or trust, routed to the right account."],
            ].map(([t, d]) => (
              <div
                key={t}
                className="py-4 border-b border-[#1a1a1a]/10 flex items-baseline justify-between gap-6"
              >
                <div>
                  <div className="font-medium text-[#1a1a1a]">{t}</div>
                  <div className="text-sm text-[#1a1a1a]/50 mt-0.5">{d}</div>
                </div>
              </div>
            ))}
          </div>
        </div>
      </Section>

      {/* CHAOS — restrained */}
      <Section title="The stack you're paying for." kicker="Consolidation" dark>
        <p className="text-lg text-white/70 max-w-xl leading-relaxed mb-10">
          Ten logins, ten invoices, and a Zapier that breaks on every API change — $600 to $1,200 a
          month for tools that don't talk. Leadli replaces the lot, natively connected, for $199.
        </p>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-y-8 max-w-3xl">
          {[
            ["10+", "logins collapsed to 1"],
            ["$199", "flat, all features"],
            ["0", "third-party glue"],
            ["∞", "contacts & funnels"],
          ].map(([n, l]) => (
            <div key={l}>
              <div className="text-3xl font-medium text-[#f15a24]">{n}</div>
              <div className="text-sm text-white/50 mt-1">{l}</div>
            </div>
          ))}
        </div>
      </Section>

      {/* FEATURE INDEX — clean directory */}
      <Section title="Everything your firm runs on." kicker="Feature index">
        <div className="columns-2 md:columns-3 lg:columns-4 gap-x-10">
          {LEADLI_FEATURES.filter((f) => f.primary).map((f) => (
            <Link
              key={f.slug}
              to="/feature/$slug"
              params={{ slug: f.slug }}
              className="group block py-2.5 border-b border-[#1a1a1a]/10 break-inside-avoid hover:border-[#f15a24] transition-colors"
            >
              <span className="text-sm text-[#1a1a1a]/80 group-hover:text-[#f15a24] font-medium">
                {f.name}
              </span>
            </Link>
          ))}
        </div>
        <div className="mt-10 pt-6 border-t border-[#1a1a1a]/10">
          <p className="text-xs text-[#1a1a1a]/40 mb-4">Plus everything else, all included</p>
          <div className="flex flex-wrap gap-x-5 gap-y-2">
            {LEADLI_FEATURES.filter((f) => !f.primary).map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="text-sm text-[#1a1a1a]/55 hover:text-[#f15a24] transition-colors"
              >
                {f.name}
              </Link>
            ))}
          </div>
        </div>
      </Section>

      {/* FUNCTIONS */}
      <Section title="Five functions. One platform." kicker="Browse by what you do">
        <div className="border-t border-[#1a1a1a]/10">
          {LEADLI_FUNCTIONS.map((fn) => (
            <Link
              key={fn.slug}
              to="/leadli/$slug"
              params={{ slug: fn.slug }}
              className="group flex items-baseline justify-between gap-6 py-5 border-b border-[#1a1a1a]/10 hover:bg-[#fafafa] -mx-3 px-3 transition-colors"
            >
              <div>
                <div className="font-medium text-[#1a1a1a] group-hover:text-[#f15a24]">
                  {fn.name}
                </div>
                <div className="text-sm text-[#1a1a1a]/50 mt-1 max-w-2xl">{fn.tagline}</div>
              </div>
              <span className="text-sm text-[#1a1a1a]/40 group-hover:text-[#f15a24] shrink-0 flex items-center gap-1.5">
                {fn.featureSlugs.length} tools <ArrowUpRight className="w-4 h-4" />
              </span>
            </Link>
          ))}
        </div>
      </Section>

      {/* CALCULATOR */}
      <Section title="What's your tech stack costing you?" kicker="The numbers">
        <p className="text-[#1a1a1a]/60 max-w-xl mb-12">
          Toggle the tools you pay for today. We dial in the real numbers on your consult.
        </p>
        <LiteSavingsCalculator onOpenDiscovery={open} />
      </Section>

      {/* FINAL CTA */}
      <section className="border-t border-[#1a1a1a]/10">
        <div className="max-w-5xl mx-auto px-6 py-24 text-center">
          <h2 className="text-3xl sm:text-5xl font-medium tracking-tight text-[#1a1a1a] max-w-2xl mx-auto leading-tight">
            Stop fooling around with duct-taped Frankensystems.
          </h2>
          <p className="mt-5 text-[#1a1a1a]/55">30 minutes. We'll tell you honestly if it fits.</p>
          <button
            onClick={open}
            className="mt-8 inline-flex items-center gap-2 text-[15px] font-medium text-[#1a1a1a] hover:text-[#f15a24] transition-colors cursor-pointer"
          >
            Book a Discovery Call <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </section>

      <HomeFooter onOpenDiscovery={open} />
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}

function Section({
  title,
  kicker,
  children,
  dark,
}: {
  title: string;
  kicker: string;
  children: React.ReactNode;
  dark?: boolean;
}) {
  return (
    <section
      className={
        dark
          ? "bg-[#111111] text-white border-y border-[#1a1a1a]/10"
          : "border-b border-[#1a1a1a]/10"
      }
    >
      <div className="max-w-5xl mx-auto px-6 py-24">
        <p className={`text-sm font-medium mb-6 ${dark ? "text-[#f15a24]" : "text-[#f15a24]"}`}>
          {kicker}
        </p>
        <h2
          className={`text-3xl sm:text-4xl font-medium tracking-tight max-w-2xl mb-12 ${dark ? "text-white" : "text-[#1a1a1a]"}`}
        >
          {title}
        </h2>
        {children}
      </div>
    </section>
  );
}
