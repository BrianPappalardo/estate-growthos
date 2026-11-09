import React from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  CheckCircle2,
  Database,
  BarChart3,
  Calendar,
  FileText,
  CreditCard,
  Megaphone,
  Star,
  GitBranch,
  Globe,
  Users2,
  Puzzle,
} from "lucide-react";

export const PLATFORM_FEATURES = [
  { name: "CRM", icon: Database, desc: "Unified contacts, pipeline & communication history." },
  { name: "Reporting Dashboards", icon: BarChart3, desc: "Clear attribution and revenue metrics." },
  { name: "Calendars", icon: Calendar, desc: "Multi-service booking links that prevent no-shows." },
  {
    name: "Forms & Surveys",
    icon: FileText,
    desc: "Smart logic forms that qualify prospects automatically.",
  },
  {
    name: "Payment Gateway",
    icon: CreditCard,
    desc: "Operating & trust account routing via Confido Legal.",
  },
  {
    name: "Documents & E-Sign",
    icon: FileText,
    desc: "Native contracts & engagement letters without DocuSign fees.",
  },
  {
    name: "Marketing Engine",
    icon: Megaphone,
    desc: "Email, 2-way SMS, broadcast sequences & drip campaigns.",
  },
  {
    name: "Reputation Management",
    icon: Star,
    desc: "Automated 5-star review collection on Google & more.",
  },
  {
    name: "Workflow Builder",
    icon: GitBranch,
    desc: "Visual automation for onboarding, reminders & follow-ups.",
  },
  {
    name: "WordPress Hosting",
    icon: Globe,
    desc: "Fast, secure managed hosting right in your dashboard.",
  },
  {
    name: "Memberships & Communities",
    icon: Users2,
    desc: "Client portals, training materials & resource hubs.",
  },
  {
    name: "Integrations",
    icon: Puzzle,
    desc: "Seamless sync with practice management software & tools.",
  },
];

export function PlatformFeaturesGrid() {
  return (
    <section className="fl-dark-canvas relative overflow-hidden py-20 sm:py-28 text-white">
      <div className="absolute inset-0 -z-10 pointer-events-none">
        <div className="fl-dark-grid absolute inset-0" />
        <div className="fl-glow absolute -top-20 right-[8%] w-[420px] h-[420px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-orange)_55%,transparent),transparent_70%)] blur-3xl" />
      </div>

      <div className="max-w-6xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <h2 className="fl-rise fl-rise-1 text-4xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.02]">
            All the power of an all-in-one system.
            <span className="block hero-bold-orange-text mt-2">Without all of the headaches.</span>
          </h2>
          <p className="fl-rise fl-rise-2 mt-5 text-lg sm:text-xl text-white/70 leading-relaxed">
            These are the tools. We're the team that sets them up, connects them, and teaches your
            people to use them — so you never have to wrestle with software again.
          </p>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4 sm:gap-5">
          {PLATFORM_FEATURES.map((feature, i) => {
            const Icon = feature.icon;
            return (
              <div
                key={feature.name}
                className="fl-rise bg-white/[0.05] backdrop-blur-sm p-5 rounded-2xl border border-white/10 hover:border-[var(--brand-orange)]/50 hover:bg-white/[0.08] transition-all group"
                style={{ animationDelay: `${0.05 + i * 0.04}s` }}
              >
                <div className="w-11 h-11 rounded-xl bg-[var(--brand-orange)]/15 border border-[var(--brand-orange)]/30 flex items-center justify-center text-[var(--brand-orange)] mb-3 group-hover:scale-110 transition-transform">
                  <Icon className="w-5 h-5" />
                </div>
                <h3 className="font-bold text-white text-base">{feature.name}</h3>
                <p className="text-xs sm:text-sm text-white/60 mt-1 leading-snug">{feature.desc}</p>
              </div>
            );
          })}
        </div>

        <div className="fl-rise mt-12 max-w-3xl mx-auto">
          <div className="rounded-2xl bg-white/[0.06] backdrop-blur-md border border-white/15 px-6 sm:px-8 py-6 text-center">
            <p className="text-lg sm:text-xl font-bold text-white leading-relaxed">
              Seem like a lot? It is — and our team builds, trains, and supports every bit of it so
              you don't have to.
            </p>
            <p className="mt-2 text-sm text-white/60">
              The software includes access to hourly build help whenever you need it.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}

export function OfferingsSection({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative py-20 sm:py-28 bg-[#fcfbf8] overflow-hidden">
      <div className="absolute inset-0 -z-10 pointer-events-none fl-light-grid" />

      <div className="max-w-6xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <h2 className="fl-rise fl-rise-1 text-4xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.02]">
            Choose your experience.
          </h2>
          <p className="fl-rise fl-rise-2 mt-5 text-lg sm:text-xl text-slate-600 leading-relaxed">
            From done-for-you work with you in the driver's seat to a fully managed retainer, we
            meet you where you are.
          </p>
        </div>

        {/* Estate planner vertical callout */}
        <div className="fl-rise mb-10 max-w-3xl mx-auto">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-4 bg-[#12193b] rounded-2xl px-6 py-5 border border-[#12193b] shadow-xl">
            <div className="text-center sm:text-left">
              <h3 className="text-lg sm:text-xl font-black text-white tracking-tight">
                Are you an Estate Planner? We have something just for you.
              </h3>
              <p className="text-sm text-white/60 mt-1">
                We've built an entire vertical around estate planning intake. See how it works.
              </p>
            </div>
            <Link
              to="/estate-planning"
              className="inline-flex items-center gap-2 px-5 py-3 rounded-xl bg-[var(--brand-orange)] text-[oklch(0.16_0.04_45)] font-bold text-sm hover:brightness-110 transition-all whitespace-nowrap shrink-0"
            >
              <span>See the Estate Planning Vertical</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 items-start">
          {/* Leadli+ — Hourly (Featured) */}
          <div className="fl-rise relative bg-white rounded-3xl border-2 border-[#3344b8] p-7 sm:p-8 shadow-xl flex flex-col justify-between md:mt-2">
            <div className="absolute -top-3.5 left-1/2 -translate-x-1/2 bg-[#3344b8] text-white text-xs font-extrabold uppercase px-4 py-1 rounded-full tracking-wider whitespace-nowrap">
              Most Popular • You're in the driver's seat
            </div>

            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400 mt-2">
                Implementation
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Leadli+</h3>
              <p className="text-sm font-semibold text-[#3344b8] mt-1">
                Done for you. You're in the driver's seat.
              </p>

              <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                Done-for-you services where you set the pace. Leadli+ lets us work with any client
                and any budget, and we can go as fast or as slow as you'd like. We start with the
                highest value work that will show a return on investment — then we're on standby for
                any training, questions, or additional projects after your initial buildout is
                complete.
              </p>

              <div className="mt-6 space-y-2.5 text-xs sm:text-sm text-slate-700">
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Full Leadli system built around your workflow</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Software + billable hours only when you need them</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Any budget, any timeline — no long-term contracts</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>On standby for training, questions & new projects</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-[#3344b8] hover:bg-[#25349c] text-white font-bold text-sm shadow-md transition-all cursor-pointer"
              >
                <strong>Book Your Discovery Call</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>

          {/* Growth OS — Retainer */}
          <div className="fl-rise fl-rise-2 bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400">
                Retainer
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Growth OS</h3>
              <p className="text-sm font-semibold text-slate-700 mt-1">
                A carefully planned build that's always improving.
              </p>

              <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                A carefully planned, done-for-you build that's always improving. Each month we're
                looking for the highest-ROI item to improve, so your system keeps getting sharper
                and your business keeps getting more efficient — month after month. We become part
                of your team.
              </p>

              <div className="mt-6 space-y-2.5 text-xs sm:text-sm text-slate-700">
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Complete marketing, sales & ops system built around your firm</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>We proactively scope the next improvement every month</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Ongoing build, support & team training</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-slate-900 hover:bg-slate-800 text-white font-bold text-sm shadow-md transition-all cursor-pointer"
              >
                <strong>Book Your Discovery Call</strong>
              </button>
            </div>
          </div>

          {/* Software Only — DIY */}
          <div className="fl-rise fl-rise-3 bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400">
                Self-Service
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Software Only</h3>
              <p className="text-sm font-semibold text-slate-700 mt-1">
                DIY Leadli subscription for builder-owners.
              </p>

              <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                Best for business owners who already know how they want things to work and feel
                comfortable configuring workflows, forms, and triggers on their own.
              </p>

              <div className="mt-6 space-y-2.5 text-xs sm:text-sm text-slate-700">
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>All-in-one platform from Day 1 ($199/mo)</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Unlimited contacts, pipelines & users</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Expert support & build services available hourly</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100">
              <Link
                to="/signup"
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-white hover:bg-slate-50 text-slate-900 border-2 border-slate-300 font-bold text-sm transition-all"
              >
                <span>Start Software Only</span>
                <ArrowRight className="w-4 h-4" />
              </Link>
            </div>
          </div>
        </div>

        <p className="mt-10 text-center text-sm text-slate-500 max-w-xl mx-auto">
          Not sure which is right? We'll talk it through on your Discovery Call and give you a clear
          estimate of the work and the cost.
        </p>
      </div>
    </section>
  );
}
