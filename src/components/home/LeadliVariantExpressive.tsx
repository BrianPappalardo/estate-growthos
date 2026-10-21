import React, { useState } from "react";
import { Link } from "@tanstack/react-router";
import { ArrowRight, ArrowUpRight, Plus } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { LiteSavingsCalculator } from "@/components/LiteSavingsCalculator";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { LEADLI_FUNCTIONS } from "@/lib/leadli-functions";

/**
 * Expressive variant — warm editorial, paper-and-ink, terra orange dominant,
 * blue only as a quiet accent. Magazine layout: oversized numerals, pulled
 * quotes, asymmetric columns, hand-set section numbers instead of eyebrow pills.
 */
export function LeadliVariantExpressive() {
  const [modalOpen, setModalOpen] = useState(false);
  const open = () => setModalOpen(true);

  return (
    <div className="min-h-screen bg-[#f7f1e8] text-[#2a2118] font-sans selection:bg-[#e8843a] selection:text-white">
      {/* HEADER */}
      <header className="sticky top-0 z-40 bg-[#f7f1e8]/90 backdrop-blur-sm border-b border-[#2a2118]/15">
        <div className="max-w-6xl mx-auto px-5 h-16 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-9" />
          </Link>
          <div className="hidden md:flex items-center gap-6 text-[13px] font-semibold text-[#2a2118]/80">
            <Link to="/" className="hover:text-[#c85a1e]">
              Home
            </Link>
            <Link to="/estate-planning" className="hover:text-[#c85a1e]">
              Estate Planning
            </Link>
            <Link to="/leadli" className="text-[#c85a1e]">
              Leadli
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-[#c85a1e]"
            >
              Login
            </a>
          </div>
          <button
            onClick={open}
            className="inline-flex items-center gap-2 px-4 py-2 bg-[#2a2118] text-[#f7f1e8] text-sm font-bold rounded-full hover:bg-[#c85a1e] transition-colors cursor-pointer"
          >
            Book a Call <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </header>

      {/* HERO — asymmetric editorial split */}
      <section className="relative overflow-hidden border-b border-[#2a2118]/15">
        <div className="max-w-6xl mx-auto px-5 grid grid-cols-1 lg:grid-cols-12 gap-8 py-16 lg:py-24">
          <div className="lg:col-span-7">
            <p className="text-xs font-bold uppercase tracking-[0.2em] text-[#c85a1e] mb-6">
              Issue 01 — The Business Everything App
            </p>
            <h1 className="font-black text-[#2a2118] leading-[0.95] tracking-tight">
              <span className="text-4xl sm:text-6xl lg:text-7xl block">An all-in-one</span>
              <span className="text-4xl sm:text-6xl lg:text-7xl block italic text-[#c85a1e]">
                that bends
              </span>
              <span className="text-4xl sm:text-6xl lg:text-7xl block">around your work,</span>
              <span className="text-4xl sm:text-6xl lg:text-7xl block text-[#2a2118]/55">
                not the other way around.
              </span>
            </h1>
            <p className="mt-8 text-lg text-[#2a2118]/75 max-w-md leading-relaxed">
              CRM, calendars, marketing, workflows, e-signatures, payments — on one record. Nothing
              falls through the cracks because there are no cracks.
            </p>
            <div className="mt-9 flex flex-wrap items-center gap-4">
              <button
                onClick={open}
                className="inline-flex items-center gap-2 px-7 py-3.5 bg-[#c85a1e] text-white font-bold rounded-full hover:bg-[#a8481a] transition-colors cursor-pointer"
              >
                Book a Discovery Call <ArrowRight className="w-4 h-4" />
              </button>
              <a
                href="https://www.leadli.co/standard-order"
                target="_blank"
                rel="noreferrer"
                className="inline-flex items-center gap-1.5 text-sm font-bold text-[#2a2118] underline decoration-[#c85a1e] decoration-2 underline-offset-4 hover:text-[#c85a1e]"
              >
                Get Started Free <ArrowUpRight className="w-4 h-4" />
              </a>
            </div>
          </div>

          {/* Editorial sidebar card */}
          <div className="lg:col-span-5 lg:pl-8 lg:border-l border-[#2a2118]/15 flex flex-col justify-end">
            <div className="border-t-4 border-[#c85a1e] pt-5">
              <p className="text-5xl font-black text-[#2a2118] leading-none">
                $199<span className="text-base font-bold align-top">/mo</span>
              </p>
              <p className="mt-2 text-sm text-[#2a2118]/70 leading-relaxed">
                One flat rate. Replaces the 10+ subscriptions you're duct-taping together today. No
                long-term contracts, unlimited contacts.
              </p>
            </div>
            <div className="mt-8 space-y-2.5 text-sm">
              {[
                "Replaces HubSpot, Calendly, Mailchimp, DocuSign, Typeform, Zapier",
                "Concierge setup — we build it around you",
                "Unlimited contacts, funnels, and automations",
              ].map((t) => (
                <div key={t} className="flex items-start gap-3">
                  <span className="mt-1.5 w-1.5 h-1.5 rounded-full bg-[#c85a1e] shrink-0" />
                  <span className="text-[#2a2118]/80">{t}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
        {/* faint grain rule */}
        <div className="h-px w-full bg-[#2a2118]/10" />
      </section>

      {/* AUDIENCE BAR — inline prose, no pills */}
      <section className="border-b border-[#2a2118]/15 bg-[#f1e8da]">
        <div className="max-w-6xl mx-auto px-5 py-5">
          <p className="text-sm text-[#2a2118]/75">
            <span className="font-bold text-[#2a2118]">Run your whole firm on it. </span>
            {LEADLI_FUNCTIONS.map((fn, i) => (
              <React.Fragment key={fn.slug}>
                <Link
                  to="/leadli/$slug"
                  params={{ slug: fn.slug }}
                  className="font-bold text-[#c85a1e] hover:underline"
                >
                  {fn.name}
                </Link>
                {i < LEADLI_FUNCTIONS.length - 1 ? (
                  <span className="text-[#2a2118]/40"> · </span>
                ) : null}
              </React.Fragment>
            ))}
            .
          </p>
        </div>
      </section>

      {/* THE WORKBENCH — reimagined hub as overlapping offset cards */}
      <Section n="02" title="It adapts to the way you already work." kicker="The architecture">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-10 items-center">
          <div className="lg:col-span-5 space-y-5">
            <p className="text-lg text-[#2a2118]/80 leading-relaxed">
              Most platforms hand you a template and ask you to shrink your firm into it. We start
              with your real client touchpoints and configure the software around them.
            </p>
            <p className="text-sm text-[#2a2118]/65 leading-relaxed">
              The core engine — CRM and automations — sits at the center. Reporting, conversations,
              calendars, marketing, and payments orbit it, connected natively. Add what you need.
              Ignore what you don't.
            </p>
            <button
              onClick={open}
              className="inline-flex items-center gap-2 text-sm font-bold text-[#c85a1e] hover:underline"
            >
              See it mapped to your firm <ArrowRight className="w-4 h-4" />
            </button>
          </div>

          {/* Overlapping cards composition */}
          <div className="lg:col-span-7 relative h-[380px] sm:h-[420px]">
            <div className="absolute left-0 top-4 w-44 bg-white border-2 border-[#2a2118] p-4 rotate-[-3deg] shadow-[6px_6px_0_#2a2118]">
              <div className="text-[10px] font-black uppercase tracking-widest text-[#c85a1e]">
                Orbit 01
              </div>
              <div className="font-black mt-1">Reporting</div>
              <p className="text-xs text-[#2a2118]/60 mt-1">Dashboards that update themselves.</p>
            </div>
            <div className="absolute right-2 top-0 w-44 bg-white border-2 border-[#2a2118] p-4 rotate-[2deg] shadow-[6px_6px_0_#c85a1e]">
              <div className="text-[10px] font-black uppercase tracking-widest text-[#c85a1e]">
                Orbit 02
              </div>
              <div className="font-black mt-1">Calendars</div>
              <p className="text-xs text-[#2a2118]/60 mt-1">
                Right consult, right length, every time.
              </p>
            </div>
            <div className="absolute left-1/2 -translate-x-1/2 top-1/2 -translate-y-1/2 w-60 bg-[#2a2118] text-[#f7f1e8] p-6 border-2 border-[#2a2118] shadow-[8px_8px_0_#c85a1e]">
              <div className="text-[10px] font-black uppercase tracking-widest text-[#c85a1e]">
                Leadli Core
              </div>
              <div className="text-2xl font-black mt-1">Workflow Engine</div>
              <p className="text-xs text-[#f7f1e8]/70 mt-1">Central CRM & automations.</p>
            </div>
            <div className="absolute left-4 bottom-2 w-44 bg-white border-2 border-[#2a2118] p-4 rotate-[-1.5deg] shadow-[6px_6px_0_#2a2118]">
              <div className="text-[10px] font-black uppercase tracking-widest text-[#c85a1e]">
                Orbit 03
              </div>
              <div className="font-black mt-1">Marketing</div>
              <p className="text-xs text-[#2a2118]/60 mt-1">Email, text, social, ads, reviews.</p>
            </div>
            <div className="absolute right-4 bottom-6 w-44 bg-white border-2 border-[#2a2118] p-4 rotate-[3deg] shadow-[6px_6px_0_#c85a1e]">
              <div className="text-[10px] font-black uppercase tracking-widest text-[#c85a1e]">
                Orbit 04
              </div>
              <div className="font-black mt-1">Payments</div>
              <p className="text-xs text-[#2a2118]/60 mt-1">Operating or trust, routed right.</p>
            </div>
          </div>
        </div>
      </Section>

      {/* CHAOS VS LEADLI — pull-quote treatment */}
      <section className="border-b border-[#2a2118]/15 bg-[#2a2118] text-[#f7f1e8]">
        <div className="max-w-5xl mx-auto px-5 py-20">
          <p className="text-xs font-bold uppercase tracking-[0.2em] text-[#c85a1e] mb-8">
            Section 03 — The stack you're paying for
          </p>
          <blockquote className="text-3xl sm:text-5xl font-black leading-tight tracking-tight max-w-3xl">
            "Ten logins, ten invoices, and a Zapier that breaks every time an API changes."
          </blockquote>
          <p className="mt-6 text-lg text-[#f7f1e8]/70 max-w-xl">
            That's the fragmented stack most firms run on — $600 to $1,200 a month for tools that
            don't talk to each other. Leadli replaces the lot for $199, natively connected.
          </p>
          <div className="mt-12 grid grid-cols-2 sm:grid-cols-4 gap-6 border-t border-[#f7f1e8]/15 pt-8">
            {[
              ["10+", "logins collapsed to 1"],
              ["$199", "flat, all core features"],
              ["0", "third-party glue required"],
              ["∞", "contacts, funnels, automations"],
            ].map(([n, l]) => (
              <div key={l}>
                <div className="text-4xl font-black text-[#c85a1e]">{n}</div>
                <div className="text-sm text-[#f7f1e8]/65 mt-1">{l}</div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FEATURE INDEX — directory, not a card grid */}
      <Section n="04" title="Everything your firm runs on." kicker="The feature index">
        <FeatureIndex />
      </Section>

      {/* FUNCTIONS — prose links */}
      <Section n="05" title="Five functions. One platform." kicker="Browse by what you do">
        <div className="divide-y divide-[#2a2118]/15 border-y border-[#2a2118]/15">
          {LEADLI_FUNCTIONS.map((fn) => (
            <Link
              key={fn.slug}
              to="/leadli/$slug"
              params={{ slug: fn.slug }}
              className="group flex items-baseline justify-between gap-6 py-6 hover:bg-[#f1e8da] -mx-3 px-3 transition-colors"
            >
              <div>
                <div className="text-xl font-black text-[#2a2118] group-hover:text-[#c85a1e]">
                  {fn.name}
                </div>
                <div className="text-sm text-[#2a2118]/65 mt-1 max-w-2xl">{fn.tagline}</div>
              </div>
              <span className="text-sm font-bold text-[#c85a1e] shrink-0 flex items-center gap-1">
                {fn.featureSlugs.length} tools <ArrowUpRight className="w-4 h-4" />
              </span>
            </Link>
          ))}
        </div>
      </Section>

      {/* CALCULATOR */}
      <section className="border-b border-[#2a2118]/15 bg-[#f1e8da]">
        <div className="max-w-6xl mx-auto px-5 py-20">
          <div className="max-w-2xl mb-10">
            <p className="text-xs font-bold uppercase tracking-[0.2em] text-[#c85a1e] mb-4">
              Section 06 — The numbers
            </p>
            <h2 className="text-3xl sm:text-5xl font-black tracking-tight text-[#2a2118]">
              What's your tech stack costing you?
            </h2>
            <p className="mt-4 text-[#2a2118]/70">
              Toggle the tools you pay for today. We'll dial in the real numbers on your consult.
            </p>
          </div>
          <LiteSavingsCalculator onOpenDiscovery={open} />
        </div>
      </section>

      {/* FINAL CTA — quiet, editorial */}
      <section className="py-24">
        <div className="max-w-3xl mx-auto px-5 text-center">
          <p className="text-xs font-bold uppercase tracking-[0.2em] text-[#c85a1e] mb-6">
            The invitation
          </p>
          <h2 className="text-4xl sm:text-6xl font-black tracking-tight text-[#2a2118] leading-tight">
            Stop fooling around with duct-taped Frankensystems.
          </h2>
          <p className="mt-6 text-lg text-[#2a2118]/70">
            30 minutes. We'll see if Leadli fits your firm, honestly.
          </p>
          <button
            onClick={open}
            className="mt-8 inline-flex items-center gap-2 px-8 py-4 bg-[#c85a1e] text-white font-bold rounded-full hover:bg-[#a8481a] transition-colors cursor-pointer"
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

/* ---------- local helpers ---------- */

function Section({
  n,
  kicker,
  title,
  children,
}: {
  n: string;
  kicker: string;
  title: string;
  children: React.ReactNode;
}) {
  return (
    <section className="border-b border-[#2a2118]/15">
      <div className="max-w-6xl mx-auto px-5 py-20">
        <div className="flex items-baseline gap-4 mb-10">
          <span className="text-sm font-black text-[#c85a1e] tabular-nums">{n}</span>
          <span className="text-xs font-bold uppercase tracking-[0.2em] text-[#2a2118]/45">
            {kicker}
          </span>
        </div>
        <h2 className="text-3xl sm:text-5xl font-black tracking-tight text-[#2a2118] max-w-3xl mb-10">
          {title}
        </h2>
        {children}
      </div>
    </section>
  );
}

function FeatureIndex() {
  const core = LEADLI_FEATURES.filter((f) => f.primary);
  const rest = LEADLI_FEATURES.filter((f) => !f.primary);
  return (
    <div>
      <div className="columns-2 sm:columns-3 lg:columns-4 gap-x-8 gap-y-1">
        {core.map((f) => (
          <Link
            key={f.slug}
            to="/feature/$slug"
            params={{ slug: f.slug }}
            className="group block py-2 border-b border-[#2a2118]/10 hover:border-[#c85a1e] transition-colors"
          >
            <div className="flex items-baseline justify-between gap-2">
              <span className="font-bold text-sm text-[#2a2118] group-hover:text-[#c85a1e]">
                {f.name}
              </span>
              <Plus className="w-3.5 h-3.5 text-[#2a2118]/30 group-hover:text-[#c85a1e] shrink-0" />
            </div>
          </Link>
        ))}
      </div>
      <div className="mt-8 pt-6 border-t border-[#2a2118]/15">
        <p className="text-xs font-bold uppercase tracking-wider text-[#2a2118]/45 mb-4">
          Plus everything else, all included
        </p>
        <div className="flex flex-wrap gap-2">
          {rest.map((f) => (
            <Link
              key={f.slug}
              to="/feature/$slug"
              params={{ slug: f.slug }}
              className="px-3 py-1.5 text-sm font-bold text-[#2a2118]/70 border border-[#2a2118]/20 rounded-full hover:border-[#c85a1e] hover:text-[#c85a1e] transition-colors"
            >
              {f.name}
            </Link>
          ))}
        </div>
      </div>
    </div>
  );
}
