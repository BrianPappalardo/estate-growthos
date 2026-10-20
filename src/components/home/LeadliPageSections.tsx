import React from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  CheckCircle2,
  XCircle,
  Sparkles,
  Zap,
  Bot,
  MessageSquare,
  BarChart3,
  Globe,
  Database,
  Calendar,
  Layers,
  ShieldCheck,
  Star,
  ChevronRight,
  PhoneCall,
} from "lucide-react";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { SoftwareSavingsCalculator } from "@/components/SoftwareSavingsCalculator";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";

export function LeadliPageHero({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative pt-12 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
      <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-25 pointer-events-none" />
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[800px] h-[500px] bg-gradient-to-tr from-[#3344b8]/30 via-purple-600/20 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center">
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs sm:text-sm font-extrabold mb-6 tracking-wide uppercase">
          <Sparkles className="w-4 h-4 text-amber-400" />
          <span>LEADLI... THE BUSINESS EVERYTHING APP</span>
        </div>

        <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.15]">
          Finally, an all-in-one system built for the way you work—
          <span className="block text-amber-400 mt-2">not the other way around.</span>
        </h1>

        <p className="mt-6 text-lg sm:text-2xl text-slate-200 max-w-3xl mx-auto leading-relaxed font-semibold">
          One platform that unifies your CRM, calendars, marketing, workflows, e-signatures, and
          payments so nothing falls through the cracks.
        </p>

        <div className="mt-9 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={onOpenDiscovery}
            className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer border-2 border-blue-400/30"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>

          <a
            href="https://www.leadli.co/standard-order"
            target="_blank"
            rel="noreferrer"
            className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-7 py-4 text-base font-bold bg-white/10 hover:bg-white/20 text-white rounded-2xl border-2 border-white/20 backdrop-blur-sm transition-all"
          >
            <span>Get Started Free</span>
            <ChevronRight className="w-4 h-4 text-slate-300" />
          </a>
        </div>

        <p className="mt-4 text-xs sm:text-sm text-slate-400 font-medium">
          No long-term contracts • Replaces 10+ subscriptions • Concierge setup available
        </p>
      </div>
    </section>
  );
}

export function LeadliConstellationSection({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
          <div className="lg:col-span-6 bg-gradient-to-br from-slate-900 to-[#12193b] p-8 sm:p-12 rounded-3xl text-white relative overflow-hidden shadow-2xl">
            <div className="text-xs font-extrabold uppercase tracking-widest text-amber-400 mb-6">
              Connected Constellation
            </div>

            <div className="relative h-[320px] flex items-center justify-center">
              <svg className="absolute inset-0 w-full h-full stroke-amber-400/30 stroke-[2] [stroke-dasharray:4_4]">
                <line x1="20%" y1="20%" x2="50%" y2="50%" />
                <line x1="80%" y1="20%" x2="50%" y2="50%" />
                <line x1="15%" y1="60%" x2="50%" y2="50%" />
                <line x1="85%" y1="60%" x2="50%" y2="50%" />
                <line x1="30%" y1="85%" x2="50%" y2="50%" />
                <line x1="70%" y1="85%" x2="50%" y2="50%" />
              </svg>

              <div className="absolute top-[15%] left-[15%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Reporting
              </div>
              <div className="absolute top-[15%] right-[15%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Memberships
              </div>
              <div className="absolute top-[35%] left-[5%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Conversations
              </div>
              <div className="absolute top-[35%] right-[5%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Calendars
              </div>

              <div className="z-10 bg-[#3344b8] text-white px-6 py-4 rounded-2xl shadow-2xl border-2 border-amber-400 text-center scale-110">
                <div className="text-xs uppercase font-extrabold tracking-wider text-amber-300">
                  Leadli Hub
                </div>
                <div className="text-xl font-black tracking-tight mt-0.5">Workflow Engine</div>
              </div>

              <div className="absolute bottom-[15%] left-[20%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Marketing
              </div>
              <div className="absolute bottom-[15%] right-[20%] bg-white/10 backdrop-blur-md px-3 py-1.5 rounded-full border border-amber-400/40 text-xs font-bold text-amber-300">
                ★ Payments
              </div>
            </div>
          </div>

          <div className="lg:col-span-6 space-y-6">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3.5 py-1.5 rounded-full border border-blue-200 inline-block">
              Smart Systems That Grow With You
            </span>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] tracking-tight leading-tight">
              One platform that adapts to the way you work.
            </h2>
            <p className="text-slate-700 text-base sm:text-lg leading-relaxed">
              Business isn’t static—and neither is Leadli. Automate what you can, customize what you
              need, and evolve your setup as you grow.
            </p>
            <p className="text-slate-600 text-sm sm:text-base leading-relaxed">
              Most platforms force you to shrink or stretch your operations to fit their template.
              Leadli is built backwards: we start with your real client touchpoints and configure
              the software around you.
            </p>

            <div className="pt-2">
              <button
                onClick={onOpenDiscovery}
                className="inline-flex items-center gap-2 px-6 py-3.5 rounded-xl bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm shadow-md transition-all cursor-pointer"
              >
                <strong>Schedule a Discovery Call</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export function LeadliChaosSection() {
  return (
    <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] tracking-tight">
            Fragmented tools = Fragmented growth.
          </h2>
          <p className="mt-3 text-base sm:text-lg text-slate-600">
            When software lives in silos, leads slip through the cracks and team time is eaten up by
            manual copy-pasting.
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 items-stretch">
          <div className="bg-white rounded-3xl p-8 border-2 border-rose-200 shadow-sm flex flex-col justify-between">
            <div>
              <div className="inline-flex items-center gap-2 text-rose-700 text-xs font-extrabold uppercase tracking-wider bg-rose-50 px-3 py-1 rounded-full border border-rose-200 mb-6">
                <XCircle className="w-4 h-4" />
                <span>The Fragmented Chaos</span>
              </div>

              <div className="p-6 bg-slate-50 rounded-2xl border border-slate-200 text-center mb-6">
                <div className="text-xs uppercase font-extrabold text-slate-400 mb-2">
                  Scattered Subscriptions
                </div>
                <div className="flex flex-wrap items-center justify-center gap-2 text-xs font-bold text-slate-700">
                  <span className="px-2.5 py-1 bg-white rounded-lg border">HubSpot</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">Calendly</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">Mailchimp</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">DocuSign</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">Typeform</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">Zapier</span>
                  <span className="px-2.5 py-1 bg-white rounded-lg border">ActiveCampaign</span>
                </div>
              </div>

              <ul className="space-y-3 text-slate-700 text-sm">
                <li className="flex items-start gap-2.5">
                  <span className="text-rose-500 font-black">✕</span>
                  <span>10+ logins, passwords, and separate monthly invoices</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-rose-500 font-black">✕</span>
                  <span>Zapier zaps break silently when an API updates</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <span className="text-rose-500 font-black">✕</span>
                  <span>No single view of where a prospect stands in your pipeline</span>
                </li>
              </ul>
            </div>

            <div className="mt-6 pt-4 border-t border-slate-200 text-xs text-rose-600 font-bold">
              Cost: $600 – $1,200+/month in piecemeal software
            </div>
          </div>

          <div className="bg-gradient-to-br from-[#12193b] to-[#202c61] text-white rounded-3xl p-8 border-2 border-blue-400/40 shadow-xl flex flex-col justify-between">
            <div>
              <div className="inline-flex items-center gap-2 text-emerald-400 text-xs font-extrabold uppercase tracking-wider bg-white/10 px-3 py-1 rounded-full border border-white/20 mb-6">
                <CheckCircle2 className="w-4 h-4" />
                <span>Leadli Unified System</span>
              </div>

              <div className="p-6 bg-white/10 backdrop-blur-md rounded-2xl border border-white/15 text-center mb-6">
                <div className="text-xs uppercase font-extrabold text-amber-300 mb-1">
                  Leadli Engine
                </div>
                <div className="text-2xl font-black text-white">One Central Source of Truth</div>
                <div className="text-xs text-slate-300 mt-1">
                  CRM + Calendars + Workflows + E-Sign + Payments
                </div>
              </div>

              <ul className="space-y-3 text-slate-200 text-sm">
                <li className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>One flat $199/mo rate for all core features</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>Native integrations — no third-party glue required</span>
                </li>
                <li className="flex items-start gap-2.5">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400 shrink-0 mt-0.5" />
                  <span>Full pipeline visibility for your entire team</span>
                </li>
              </ul>
            </div>

            <div className="mt-6 pt-4 border-t border-white/15 text-xs text-emerald-300 font-bold">
              Leadli Cost: $199/month flat • Unlimited contacts
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export function LeadliFeatureGrid() {
  return (
    <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
            Complete Capability
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] mt-3 tracking-tight">
            Every Feature Your Business Needs
          </h2>
          <p className="mt-3 text-base sm:text-lg text-slate-600">
            Use all of the features or only the ones you need to automate, connect, and grow with
            confidence.
          </p>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4">
          {[
            { name: "CRM + Client Management", icon: Database },
            { name: "Calendars & Booking", icon: Calendar },
            { name: "Marketing Campaigns", icon: Zap },
            { name: "Automation & Workflows", icon: Layers },
            { name: "Reporting & Analytics", icon: BarChart3 },
            { name: "Payments & E-Commerce", icon: ShieldCheck },
            { name: "Reputation & Reviews", icon: Star },
            { name: "Integrations & AI Tools", icon: Bot },
            { name: "Unified Inbox", icon: MessageSquare },
            { name: "Custom Dashboards", icon: BarChart3 },
            { name: "Websites & Domain Hosting", icon: Globe },
            { name: "Contracts & E-Signatures", icon: ShieldCheck },
          ].map((item) => {
            const Icon = item.icon;
            return (
              <div
                key={item.name}
                className="bg-white p-4 sm:p-5 rounded-2xl border border-slate-200 shadow-2xs hover:shadow-md transition-all flex items-center gap-3"
              >
                <div className="w-10 h-10 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                  <Icon className="w-5 h-5" />
                </div>
                <span className="font-bold text-xs sm:text-sm text-slate-900 leading-snug">
                  {item.name}
                </span>
              </div>
            );
          })}
        </div>

        <div className="mt-10 p-6 bg-white rounded-2xl border border-slate-200 text-center max-w-2xl mx-auto">
          <p className="text-sm font-semibold text-slate-700">
            Plus: Class bookings, Power dialer, Email & SMS marketing, Affiliate manager, Courses &
            memberships, Online communities, and Cloud phone system.
          </p>
        </div>
      </div>
    </section>
  );
}
