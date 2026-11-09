import React, { useState } from "react";
import { Link } from "@tanstack/react-router";
import { ArrowRight, Mail, Send, CalendarCheck } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { getCapacityMonth } from "@/lib/capacity-month";

export const BUILD_STEPS = [
  {
    timeline: "Today",
    title: "Discovery Call",
    body: "We ask a lot of questions about how your business actually runs — from first inquiry to signed engagement. We outline what's possible, identify the cash flow and efficiency gaps costing you right now, and decide together whether we're the right team to build it. You leave with a clear estimate of the work and the cost.",
  },
  {
    timeline: "Week 1",
    title: "Map Your System",
    body: "We dig into the details of your business — your processes, your tools, your bottlenecks — and map out exactly what we're going to build and in what order. We identify the quick wins alongside the bigger structural pieces, so you see momentum early.",
  },
  {
    timeline: "Weeks 2–6",
    title: "Build Phase",
    body: "This is where the work happens. We build your automations, intake funnels, pipelines, and client touchpoints around your real business priorities — not guesswork. We meet weekly with your team, ship in sprints, and keep everything moving toward a system you can actually run.",
  },
  {
    timeline: "Week 6",
    title: "Launch",
    body: "Your new system goes live. We walk you and your team through every piece so you feel confident from day one — no 'figure it out' handoff. Then we turn focus to the marketing and sales priorities, sequenced for stable, scalable growth.",
  },
  {
    timeline: "Months 2 & 3",
    title: "Stabilize",
    body: "We don't disappear after launch. We stay close so you can stop babysitting your software and focus on serving clients. You get comfortable with your data, make confident decisions, and the day-to-day starts running without you in the middle of it.",
  },
  {
    timeline: "Months 3 & 4",
    title: "Grow",
    body: "Now that your foundation is humming, we work through the wishlist — all the nice-to-haves and growth opportunities uncovered during the build. New campaigns, new automations, new ways to turn the system into revenue. This is where it gets fun.",
  },
  {
    timeline: "Month 4 & Beyond",
    title: "Sustain & Scale",
    body: "You run the business. We're on standby for whatever's next — new campaigns, advanced automations, integrations, a website redesign. On retainer or hourly, on your terms. The system keeps working while you keep growing.",
  },
];

export function FlightPlanTimeline({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="fl-dark-canvas relative overflow-hidden py-20 sm:py-28 text-white">
      <div className="absolute inset-0 -z-10 pointer-events-none">
        <div className="fl-dark-grid absolute inset-0" />
        <div className="fl-glow absolute -bottom-24 left-[12%] w-[440px] h-[440px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-blue)_50%,transparent),transparent_70%)] blur-3xl" />
      </div>

      <div className="max-w-4xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-2xl mx-auto mb-14">
          <h2 className="fl-rise fl-rise-1 text-4xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.02]">
            How the build works.
          </h2>
          <p className="fl-rise fl-rise-2 mt-5 text-lg sm:text-xl text-white/70 leading-relaxed">
            Same process whether you choose the retainer or hourly. Here's what the first few months
            look like.
          </p>
        </div>

        <div className="relative border-l-2 border-white/15 ml-4 sm:ml-8 pl-6 sm:pl-10 space-y-8">
          {BUILD_STEPS.map((step, idx) => (
            <div
              key={step.title}
              className="fl-rise relative group"
              style={{ animationDelay: `${0.1 + idx * 0.08}s` }}
            >
              <div className="absolute -left-[31px] sm:-left-[47px] top-1.5 w-7 h-7 rounded-full bg-[var(--brand-orange)] flex items-center justify-center text-xs font-black text-[oklch(0.16_0.04_45)] shadow-lg fl-node-pulse">
                {idx + 1}
              </div>

              <div className="bg-white/[0.05] backdrop-blur-sm rounded-2xl border border-white/10 p-6 sm:p-7 hover:border-[var(--brand-orange)]/40 transition-all">
                <div className="flex flex-wrap items-center justify-between gap-2 mb-2">
                  <span className="text-xs font-bold uppercase tracking-wider px-2.5 py-0.5 rounded-full border border-[var(--brand-orange)]/40 text-[var(--brand-orange)] bg-[var(--brand-orange)]/10">
                    {step.timeline}
                  </span>
                </div>
                <h3 className="text-xl sm:text-2xl font-black text-white mb-2">{step.title}</h3>
                <p className="text-sm sm:text-base text-white/70 leading-relaxed">{step.body}</p>
              </div>
            </div>
          ))}
        </div>

        <div className="fl-rise mt-12 text-center">
          <button
            onClick={onOpenDiscovery}
            className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-black bg-[var(--brand-orange)] hover:brightness-110 text-[oklch(0.16_0.04_45)] rounded-2xl shadow-2xl shadow-orange-900/40 transition-all cursor-pointer border-2 border-white/10"
          >
            <strong>Book Your Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </div>
    </section>
  );
}

export function HomeFinalCta({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative py-20 sm:py-28 bg-[#fcfbf8] overflow-hidden">
      <div className="absolute inset-0 -z-10 pointer-events-none fl-light-grid" />
      <div className="absolute inset-0 -z-10 pointer-events-none">
        <div className="fl-glow absolute top-1/3 right-[10%] w-[400px] h-[400px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-orange)_22%,transparent),transparent_70%)] blur-3xl" />
      </div>

      <div className="max-w-4xl mx-auto px-4 sm:px-6 relative text-center">
        <div className="fl-rise fl-rise-1 inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-[#12193b] text-white text-xs sm:text-sm font-bold mb-6">
          <CalendarCheck className="w-4 h-4 text-[var(--brand-orange)]" />
          <span>30 minutes. No pressure.</span>
        </div>

        <h2 className="fl-rise fl-rise-2 text-4xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.02]">
          Let's find out if this is right for you.
        </h2>

        <p className="fl-rise fl-rise-3 mt-6 text-lg sm:text-xl text-slate-600 max-w-2xl mx-auto leading-relaxed">
          We only take about 2 new clients per month, so it's important to us that we make sure
          you're a perfect fit. We'll learn how your business runs, tell you honestly whether we're
          the right team, and give you a clear estimate of what we can build together.
        </p>

        <div className="fl-rise fl-rise-4 mt-9 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={onOpenDiscovery}
            className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-black bg-[var(--brand-orange)] hover:brightness-110 text-[oklch(0.16_0.04_45)] rounded-2xl shadow-2xl shadow-orange-900/40 transition-all cursor-pointer border-2 border-[#12193b]/10"
          >
            <strong>Book Your Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </div>
    </section>
  );
}

export function HomeFooter({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const [briefEmail, setBriefEmail] = useState("");
  const [briefSubmitted, setBriefSubmitted] = useState(false);

  const handleBriefSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!briefEmail) return;
    setBriefSubmitted(true);
  };

  return (
    <footer className="bg-white text-slate-700 py-14 border-t border-slate-200">
      <div className="max-w-7xl mx-auto px-4 sm:px-6">
        <div className="grid grid-cols-1 md:grid-cols-12 gap-10 pb-12 border-b border-slate-200">
          <div className="md:col-span-5 space-y-4">
            <FlyingLeapLogo className="h-10" />
            <p className="text-sm text-slate-600 max-w-sm leading-relaxed">
              From automation to strategy, we'll help you launch smarter — not harder.
            </p>
            <div className="pt-2 text-sm text-slate-600">
              <span className="font-semibold text-slate-900 block">Contact Info:</span>
              <a
                href="mailto:support@pappalar.do"
                className="text-[#3344b8] hover:underline flex items-center gap-1.5 mt-1"
              >
                <Mail className="w-4 h-4" />
                <span>support@pappalar.do</span>
              </a>
            </div>
          </div>

          <div className="md:col-span-3 space-y-3">
            <div className="text-xs font-bold uppercase tracking-wider text-slate-900">
              Navigation
            </div>
            <ul className="space-y-2 text-sm">
              <li>
                <Link to="/" className="text-slate-600 hover:text-[#3344b8]">
                  Home
                </Link>
              </li>
              <li>
                <Link
                  to="/estate-planning"
                  className="text-slate-600 hover:text-[#3344b8] font-medium"
                >
                  Estate Planning Vertical
                </Link>
              </li>
              <li>
                <a
                  href="https://flyingleapstudio.com/leadli/"
                  target="_blank"
                  rel="noreferrer"
                  className="text-slate-600 hover:text-[#3344b8]"
                >
                  Leadli Platform
                </a>
              </li>
              <li>
                <Link to="/signup" className="text-slate-600 hover:text-[#3344b8]">
                  Start 30-Day Free Trial
                </Link>
              </li>
              <li>
                <a
                  href="https://app.leadli.co/"
                  target="_blank"
                  rel="noreferrer"
                  className="text-slate-600 hover:text-[#3344b8]"
                >
                  Client Login
                </a>
              </li>
            </ul>
          </div>

          <div className="md:col-span-4 space-y-3">
            <div className="text-xs font-bold uppercase tracking-wider text-slate-900">
              Sign up for your Mission Brief
            </div>
            <p className="text-sm text-slate-600">
              Get business <strong>growth tips</strong> and <strong>strategies</strong> straight to
              your inbox. Periodic updates, zero static.
            </p>

            {briefSubmitted ? (
              <div className="bg-emerald-50 text-emerald-800 text-xs sm:text-sm p-3.5 rounded-xl border border-emerald-200 font-medium">
                ✓ You're in! Check your inbox for upcoming Mission Briefs.
              </div>
            ) : (
              <form onSubmit={handleBriefSubmit} className="flex flex-col sm:flex-row gap-2 mt-2">
                <input
                  type="email"
                  required
                  placeholder="Enter your email"
                  value={briefEmail}
                  onChange={(e) => setBriefEmail(e.target.value)}
                  className="px-3.5 py-2.5 rounded-xl border border-slate-300 text-sm focus:outline-none focus:ring-2 focus:ring-[#3344b8] bg-[#fcfbf8] grow"
                />
                <button
                  type="submit"
                  className="inline-flex items-center justify-center gap-1.5 px-4 py-2.5 rounded-xl bg-[#12193b] text-white hover:bg-[#202c61] text-sm font-bold cursor-pointer transition-all shrink-0"
                >
                  <span>Subscribe</span>
                  <Send className="w-3.5 h-3.5" />
                </button>
              </form>
            )}
          </div>
        </div>

        <div className="pt-8 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs text-slate-500">
          <p>© {new Date().getFullYear()} Flying Leap Studio. All rights reserved.</p>
          <div className="flex items-center gap-4">
            <a
              href="https://flyingleapstudio.com/privacy-policy/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-slate-800"
            >
              Privacy Policy
            </a>
            <span>•</span>
            <a
              href="https://flyingleapstudio.com/terms-of-service/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-slate-800"
            >
              Terms of Service
            </a>
            <span>•</span>
            <button
              onClick={onOpenDiscovery}
              className="text-[#3344b8] font-bold hover:underline cursor-pointer"
            >
              Book Discovery Call
            </button>
          </div>
        </div>
      </div>
    </footer>
  );
}
