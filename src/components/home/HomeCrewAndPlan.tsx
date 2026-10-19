import React, { useState } from "react";
import { Link } from "@tanstack/react-router";
import { ArrowRight, Rocket, Mail, Send } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { getCapacityMonth } from "@/lib/capacity-month";

export const TEAM_MEMBERS = [
  {
    name: "Brian Pappalardo",
    role: "Mission Commander",
    description: "Sets the course and leads the crew.",
    image:
      "https://vibe.filesafe.space/1792124205677784135/assets/a0a734e4-bd8a-4236-81ff-df39c687c25f.webp",
  },
  {
    name: "Adam Campbell",
    role: "Chief Rocket Builder",
    description: "Makes the launch happen.",
    image:
      "https://vibe.filesafe.space/1792124205677784135/assets/41ce6538-4fc2-4a31-b9c0-ae877f648226.webp",
  },
  {
    name: "Sara Kotila",
    role: "Flight Navigator",
    description: "Explores new frontiers of strategy & marketing.",
    image:
      "https://vibe.filesafe.space/1792124205677784135/assets/14a12cb4-feac-4ba7-88d8-ad510fcffbda.png",
  },
  {
    name: "Whitney Wilde",
    role: "Ground Control",
    description: "Handles communication & keeps everything running smoothly from Flying Leap HQ.",
    image:
      "https://vibe.filesafe.space/1792124205677784135/assets/2443152c-7938-4319-9b45-39c5d9c6fb5b.png",
  },
];

export const FLIGHT_PLAN_STEPS = [
  {
    timeline: "Today",
    title: "Mission Objectives Assessment",
    body: "This is where we outline what's possible. We introduce the Growth OS and decide what gets built first and why. We listen to your current setup, identify cash flow and efficiency gaps, and decide if we're the right co-pilots. More importantly, we identify ways to consolidate your tech stack and save money.",
    badgeColor: "bg-blue-100 text-blue-900 border-blue-200",
  },
  {
    timeline: "Week 1",
    title: "Create your Flight Plan",
    body: "This is where your flight plan takes shape, and we build systems — not just check technical boxes. We dive into the details of your business, identify quick wins, map your processes, and kick off your Growth Accelerator OS.",
    badgeColor: "bg-amber-100 text-amber-900 border-amber-200",
  },
  {
    timeline: "Weeks 2-6",
    title: "Rocket Assembly Phase",
    body: "Here's where we get to work behind the scenes. Your build is guided by real business priorities, not guesswork. We assemble automations, custom intake funnels, and client touchpoints, meeting weekly with your team so everything is ready for the cockpit.",
    badgeColor: "bg-indigo-100 text-indigo-900 border-indigo-200",
  },
  {
    timeline: "Week 6",
    title: "Launch Phase",
    body: "This is your system test flight. We walk you and your team through every part of your new system so you feel confident from day one. We turn focus to the marketing and sales priorities sequenced for stable, scalable growth.",
    badgeColor: "bg-emerald-100 text-emerald-900 border-emerald-200",
  },
  {
    timeline: "Months 2 & 3",
    title: "Cruise Phase",
    body: "We don't just hand you the keys and say 'good luck.' We stay with you so you can stop babysitting your software and focus on growing your business. You'll understand your data and make confident decisions.",
    badgeColor: "bg-purple-100 text-purple-900 border-purple-200",
  },
  {
    timeline: "Months 3 & 4",
    title: "Trajectory Phase",
    body: "Now that your systems are humming, we review your wish list — all the nice-to-haves and growth opportunities uncovered during the build. This is where the sky becomes the limit.",
    badgeColor: "bg-rose-100 text-rose-900 border-rose-200",
  },
  {
    timeline: "Month 4 & Beyond",
    title: "Extended Ops Phase",
    body: "Ground Control on standby. You confidently run your day-to-day operations. When you're ready for new campaigns, advanced automations, or new growth systems, our team is right here on your terms.",
    badgeColor: "bg-slate-100 text-slate-800 border-slate-300",
  },
];

export function FlightCrewSection() {
  return (
    <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
            The People Behind the Platform
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            Meet your flight crew for business growth.
          </h2>
          <p className="mt-4 text-base sm:text-lg text-slate-600 leading-relaxed">
            We don’t just install software — we design the marketing, sales, and operational systems
            that make it work together. Marketing, sales, and operations stop competing for your
            attention and start reinforcing each other.
          </p>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          {TEAM_MEMBERS.map((member) => (
            <div
              key={member.name}
              className="bg-[#fcfbf8] rounded-2xl border border-slate-200 p-6 text-center hover:border-blue-300 hover:shadow-lg transition-all"
            >
              <div className="w-28 h-28 mx-auto rounded-full overflow-hidden border-3 border-white shadow-md bg-slate-200 mb-4">
                <img
                  src={member.image}
                  alt={member.name}
                  className="w-full h-full object-cover"
                  loading="lazy"
                />
              </div>
              <h3 className="text-lg font-black text-[#12193b]">{member.name}</h3>
              <div className="text-xs font-bold uppercase tracking-wider text-[#3344b8] mt-0.5">
                {member.role}
              </div>
              <p className="text-xs sm:text-sm text-slate-600 mt-2.5 leading-relaxed">
                {member.description}
              </p>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}

export function FlightPlanTimeline({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
      <div className="max-w-4xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-2xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#f97316] bg-amber-50 px-3 py-1 rounded-full border border-amber-200">
            Systems + Strategy Built Together
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            Here's your Flight Plan.
          </h2>
          <p className="mt-3 text-base sm:text-lg text-slate-600">
            Your blueprint for saving money and making money.
          </p>
        </div>

        <div className="relative border-l-2 border-slate-200 ml-4 sm:ml-8 pl-6 sm:pl-10 space-y-10">
          {FLIGHT_PLAN_STEPS.map((step, idx) => (
            <div key={step.title} className="relative group">
              <div className="absolute -left-[31px] sm:-left-[47px] top-1.5 w-7 h-7 rounded-full bg-white border-3 border-[#3344b8] flex items-center justify-center text-xs font-bold text-[#3344b8] shadow-sm">
                {idx + 1}
              </div>

              <div className="bg-white rounded-2xl border border-slate-200 p-6 sm:p-7 shadow-xs hover:shadow-md transition-shadow">
                <div className="flex flex-wrap items-center justify-between gap-2 mb-2">
                  <span
                    className={`text-xs font-bold uppercase tracking-wider px-2.5 py-0.5 rounded-full border ${step.badgeColor}`}
                  >
                    {step.timeline}
                  </span>
                </div>
                <h3 className="text-xl font-black text-[#12193b] mb-2">{step.title}</h3>
                <p className="text-sm sm:text-base text-slate-600 leading-relaxed">{step.body}</p>
              </div>
            </div>
          ))}
        </div>

        <div className="mt-12 text-center">
          <button
            onClick={onOpenDiscovery}
            className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Start Your Flight Plan</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </div>
    </section>
  );
}

export function HomeFinalCta({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="py-20 sm:py-28 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white relative overflow-hidden">
      <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />

      <div className="max-w-4xl mx-auto px-4 sm:px-6 relative text-center">
        <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-white text-xs sm:text-sm font-bold mb-6">
          <Rocket className="w-4 h-4 text-amber-400" />
          <span>Ready for your next flying leap?</span>
        </div>

        <h2 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-tight">
          Let’s build the system that launches your business into orbit.
        </h2>

        <p className="mt-6 text-base sm:text-xl text-slate-300 max-w-2xl mx-auto leading-relaxed">
          In 30 minutes, we’ll learn how your business runs, tell you honestly whether we’re a fit,
          and give you a clear estimate of what we can build together.
        </p>

        <div className="mt-9 flex flex-col sm:flex-row items-center justify-center gap-4">
          <button
            onClick={onOpenDiscovery}
            className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#f97316] hover:bg-[#ea580c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
          >
            <strong>Take the Assessment & Book Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>

        <p className="mt-4 text-xs sm:text-sm text-slate-400">
          Only 2 build spots open for {getCapacityMonth()}
        </p>
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
              From automation to strategy, we’ll help you launch smarter — not harder.
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
                <Link to="/intake" className="text-slate-600 hover:text-[#3344b8] font-medium">
                  GrowthOS (Intake System)
                </Link>
              </li>
              <li>
                <Link to="/thank-you" className="text-slate-600 hover:text-[#3344b8]">
                  Consolidate & Save Calculator
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
