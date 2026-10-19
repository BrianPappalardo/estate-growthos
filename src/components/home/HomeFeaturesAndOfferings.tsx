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

        <div className="mt-12 text-center">
          <Link
            to="/thank-you"
            className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:text-[#12193b] underline underline-offset-4"
          >
            See our Consolidate & Save Calculator to calculate your software savings →
          </Link>
        </div>
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
            From full turnkey buildouts to self-managed software, we meet you where you are.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {/* Full Launch: Leadli + Growth OS */}
          <div className="relative bg-white rounded-3xl border-2 border-[#3344b8] p-7 sm:p-8 shadow-xl flex flex-col justify-between">
            <div className="absolute -top-3.5 left-1/2 -translate-x-1/2 bg-[#3344b8] text-white text-xs font-extrabold uppercase px-4 py-1 rounded-full tracking-wider">
              Most Popular • Turnkey
            </div>

            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400 mt-2">
                Full Launch
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Leadli + Growth OS</h3>
              <p className="text-sm font-semibold text-[#3344b8] mt-1">
                We build the system. You run the business.
              </p>

              <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                Flying Leap installs your Growth OS inside Leadli — configured around how your
                business works today, and where it needs to go next.
              </p>

              <div className="mt-6 space-y-2.5 text-xs sm:text-sm text-slate-700">
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Complete marketing, sales & ops workflow build</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Custom educational video intake funnels</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Follow-up runs automatically; no leads go cold</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Weekly build sprints & hands-on concierge support</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100 flex flex-col gap-2">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-[#3344b8] hover:bg-[#25349c] text-white font-bold text-sm shadow-md transition-all cursor-pointer"
              >
                <strong>Fix My Growth System</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
              <Link
                to="/intake"
                className="text-center text-xs font-semibold text-[#3344b8] hover:underline"
              >
                View Estate Planning Intake details →
              </Link>
            </div>
          </div>

          {/* Leadli System Buildout */}
          <div className="bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400">
                Implementation
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Leadli + Buildout</h3>
              <p className="text-sm font-semibold text-slate-700 mt-1">
                Built correctly, with flexibility for next steps.
              </p>

              <p className="mt-4 text-sm text-slate-600 leading-relaxed">
                You want your Leadli system built right without committing to an ongoing retainer.
                We configure the foundation to eliminate manual data entry and streamline client
                onboarding.
              </p>

              <div className="mt-6 space-y-2.5 text-xs sm:text-sm text-slate-700">
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Core CRM, calendar & pipeline setup</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>Run it yourself once live, or request additions</span>
                </div>
                <div className="flex items-start gap-2">
                  <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                  <span>No long-term contracts; hourly support available</span>
                </div>
              </div>
            </div>

            <div className="mt-8 pt-6 border-t border-slate-100">
              <button
                onClick={onOpenDiscovery}
                className="w-full inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-slate-900 hover:bg-slate-800 text-white font-bold text-sm shadow-md transition-all cursor-pointer"
              >
                <strong>Talk With Our Team</strong>
              </button>
            </div>
          </div>

          {/* Software Only */}
          <div className="bg-white rounded-3xl border border-slate-200 p-7 sm:p-8 shadow-sm hover:shadow-md transition-all flex flex-col justify-between">
            <div>
              <div className="text-xs font-bold uppercase tracking-wider text-slate-400">
                Self-Service
              </div>
              <h3 className="text-2xl font-black text-[#12193b] mt-1">Software Only</h3>
              <p className="text-sm font-semibold text-slate-700 mt-1">
                DIY Leadli Subscription for builder-owners.
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
      </div>
    </section>
  );
}
