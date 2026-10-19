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
    <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
            The Engine
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            Everything you need to run your business in one place.
          </h2>
          <p className="mt-3 text-base sm:text-lg text-slate-600">
            Every tool works together out of the box — no Zapier duct tape required.
          </p>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4 sm:gap-6">
          {PLATFORM_FEATURES.map((feature) => {
            const Icon = feature.icon;
            return (
              <div
                key={feature.name}
                className="bg-[#fcfbf8] p-5 rounded-2xl border border-slate-200 hover:border-[#3344b8]/40 hover:shadow-md transition-all group"
              >
                <div className="w-11 h-11 rounded-xl bg-amber-500/10 border border-amber-500/20 flex items-center justify-center text-[#f97316] mb-3 group-hover:bg-[#3344b8]/10 group-hover:text-[#3344b8] transition-colors">
                  <Icon className="w-5 h-5" />
                </div>
                <h3 className="font-bold text-slate-900 text-base">{feature.name}</h3>
                <p className="text-xs sm:text-sm text-slate-600 mt-1 leading-snug">
                  {feature.desc}
                </p>
              </div>
            );
          })}
        </div>

        <p className="mt-10 text-center text-sm text-slate-500">
          Our Consolidate &amp; Save Calculator lives on the Leadli page — coming soon. For now,{" "}
          <Link
            to="/estate-planning"
            className="text-[#3344b8] font-bold hover:underline underline-offset-4"
          >
            explore the estate planning build →
          </Link>
        </p>
      </div>
    </section>
  );
}

export function OfferingsSection({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#f97316] bg-amber-50 px-3 py-1 rounded-full border border-amber-200">
            It's 2026. Isn't it time your business runs itself?
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            Choose your experience.
          </h2>
          <p className="mt-3 text-base sm:text-lg text-slate-600">
            From done-for-you work with you in the driver's seat to a fully managed retainer, we
            meet you where you are.
          </p>
        </div>

        {/* Estate planner vertical callout */}
        <div className="mb-10 max-w-3xl mx-auto">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-4 bg-gradient-to-r from-amber-50 to-blue-50 border border-amber-200 rounded-2xl px-6 py-5">
            <div className="text-center sm:text-left">
              <h3 className="text-lg sm:text-xl font-black text-[#12193b] tracking-tight">
                Are you an Estate Planner? We have something just for you.
              </h3>
              <p className="text-sm text-slate-600 mt-1">
                We've built an entire vertical around estate planning intake. See how it works.
              </p>
            </div>
            <Link
              to="/estate-planning"
              className="inline-flex items-center gap-2 px-5 py-3 rounded-xl bg-[#12193b] text-white font-bold text-sm hover:bg-[#202c61] transition-all whitespace-nowrap shrink-0"
            >
              <span>See the Estate Planning Vertical</span>
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8 items-start">
          {/* Leadli+ — Hourly (Featured) */}
          <div className="relative bg-white rounded-3xl border-2 border-[#3344b8] p-7 sm:p-8 shadow-xl flex flex-col justify-between md:mt-2">
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
                  <span>On standby for training, questions &amp; new projects</span>
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
          <div className="bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
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
                  <span>Complete marketing, sales &amp; ops system built around your firm</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>We proactively scope the next improvement every month</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Ongoing build, support &amp; team training</span>
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
          <div className="bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
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
                  <span>Unlimited contacts, pipelines &amp; users</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Expert support &amp; build services available hourly</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100">
              <a
                href="https://www.leadli.co/order"
                target="_blank"
                rel="noreferrer"
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-white hover:bg-slate-50 text-slate-900 border-2 border-slate-300 font-bold text-sm transition-all"
              >
                <span>Start Software Only</span>
                <ArrowRight className="w-4 h-4" />
              </a>
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
