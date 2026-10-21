import { useState, useEffect } from "react";
import { createFileRoute, Link } from "@tanstack/react-router";
import {
  CheckCircle2,
  Sparkles,
  ShieldCheck,
  Landmark,
  ExternalLink,
  Video,
  Radio,
  FileSpreadsheet,
} from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { SoftwareSavingsCalculator } from "@/components/SoftwareSavingsCalculator";
import { getCapacityMonth } from "@/lib/capacity-month";
import { getBookingContact, type BookingContact } from "@/lib/booking-session";

export const Route = createFileRoute("/thank-you")({
  component: ThankYouPage,
  head: () => ({
    meta: [
      {
        title: "You're In! Next Steps & Tech Stack Audit | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Your call is booked! Here is what to expect next and your first fun homework assignment: auditing your software stack to see how much Leadli will save your firm.",
      },
      {
        property: "og:title",
        content: "Discovery Call Confirmed | Flying Leap Studio GrowthOS",
      },
      {
        property: "og:description",
        content: "What to expect on your discovery call plus your first tech stack savings audit.",
      },
      {
        property: "og:type",
        content: "website",
      },
      {
        name: "twitter:card",
        content: "summary",
      },
    ],
  }),
});

function ThankYouPage() {
  const [booking, setBooking] = useState<BookingContact | null>(null);

  useEffect(() => {
    setBooking(getBookingContact());
  }, []);

  const firstName = booking?.firstName?.trim();
  const firmName = booking?.firmName?.trim();

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      {/* HEADER */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </Link>

          <div className="flex items-center gap-3">
            <span className="hidden sm:inline-flex items-center gap-2 px-3.5 py-1 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold">
              <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
              Call Confirmed
            </span>
            <Link
              to="/"
              className="text-xs sm:text-sm font-bold text-[#3344b8] hover:text-[#25349c] transition-colors"
            >
              ← Back to Overview
            </Link>
          </div>
        </div>
      </header>

      {/* HERO / CONFIRMATION SECTION */}
      <section className="relative pt-12 pb-16 sm:pt-16 sm:pb-20 overflow-hidden">
        <div className="absolute top-10 left-1/2 -translate-x-1/2 w-[720px] h-[360px] bg-gradient-to-tr from-emerald-100/50 via-blue-100/40 to-amber-100/30 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-4xl mx-auto px-4 sm:px-6 relative text-center">
          <div className="inline-flex items-center justify-center w-16 h-16 sm:w-20 sm:h-20 rounded-3xl bg-emerald-500 text-white shadow-xl shadow-emerald-500/20 mb-6">
            <CheckCircle2 className="w-10 h-10 sm:w-12 sm:h-12" />
          </div>

          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-amber-500/15 border border-amber-500/30 text-amber-950 text-xs sm:text-sm font-bold mb-4">
            <span>
              {firstName
                ? `${firstName}, you're on the calendar for ${getCapacityMonth()}`
                : `You're on the calendar for ${getCapacityMonth()}`}
            </span>
          </div>

          <h1 className="text-3xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.15]">
            You're in! Here’s what happens next.
          </h1>

          <p className="mt-5 text-lg sm:text-xl text-slate-700 max-w-2xl mx-auto leading-relaxed">
            {firmName ? (
              <>
                <strong>{firmName}</strong> is officially on the schedule.{" "}
              </>
            ) : null}
            Check your inbox
            {booking?.email ? (
              <>
                {" "}
                at <strong>{booking.email}</strong>
              </>
            ) : null}{" "}
            for your calendar invitation and meeting link. We're looking forward to digging into
            your firm’s intake process and finding where the money is currently leaking.
          </p>

          {/* 3 Quick Expectations Cards */}
          <div className="mt-10 grid grid-cols-1 md:grid-cols-3 gap-4 text-left">
            <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-8 h-8 rounded-xl bg-blue-50 text-[#3344b8] flex items-center justify-center font-black text-sm mb-3">
                1
              </div>
              <h3 className="font-extrabold text-[#12193b] text-base">Show up on the call</h3>
              <p className="text-xs sm:text-sm text-slate-600 mt-1 leading-relaxed">
                Plan for 30 minutes on a computer with good internet. Bring an honest look at how
                prospects currently find you and book with you. Get ready to answer some questions!
              </p>
            </div>

            <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-8 h-8 rounded-xl bg-blue-50 text-[#3344b8] flex items-center justify-center font-black text-sm mb-3">
                2
              </div>
              <h3 className="font-extrabold text-[#12193b] text-base">No slick sales pitch</h3>
              <p className="text-xs sm:text-sm text-slate-600 mt-1 leading-relaxed">
                We ask a lot of direct questions about your intake pipeline. If GrowthOS isn’t a
                fit, we’ll say so plainly and point you in another direction.
              </p>
            </div>

            <div className="bg-white p-5 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-8 h-8 rounded-xl bg-blue-50 text-[#3344b8] flex items-center justify-center font-black text-sm mb-3">
                3
              </div>
              <h3 className="font-extrabold text-[#12193b] text-base">
                Leave with a clear estimate
              </h3>
              <p className="text-xs sm:text-sm text-slate-600 mt-1 leading-relaxed">
                You’ll leave with an exact estimate of what your custom 4-6 week buildout will cost
                and what software subscriptions we can cut.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* THE FUN HOMEWORK SECTION */}
      <section className="py-12 sm:py-16 bg-white border-y border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="bg-[#fcfbf8] border-2 border-dashed border-amber-300 rounded-3xl p-6 sm:p-10 mb-10 text-center sm:text-left">
            <div className="flex flex-col sm:flex-row items-center sm:items-start gap-6">
              <div className="w-16 h-16 rounded-2xl bg-amber-500/20 text-amber-900 flex items-center justify-center shrink-0">
                <Sparkles className="w-8 h-8 text-amber-700" />
              </div>
              <div>
                <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
                  Your first homework assignment is a fun one.
                </h2>
                <p className="mt-3 text-base text-slate-700 leading-relaxed max-w-3xl">
                  Usually, when we onboard a client, an unexpected benefit is that we save them a
                  ton of money on their software subscriptions. Most law firms end up paying 7 to 10
                  different companies for tools that don't even talk to each other — CRM, Calendly,
                  DocuSign, Zoom, Loom, Asana, Mailchimp, Typeform, and text messaging apps.
                </p>
                <p className="mt-2 text-base text-slate-700 leading-relaxed max-w-3xl">
                  With <strong>Leadli</strong> (our CRM platform included with GrowthOS), almost all
                  of those subscriptions can be replaced for just <strong>$199/month</strong>.
                </p>
              </div>
            </div>
          </div>

          {/* CALCULATOR EMBED */}
          <SoftwareSavingsCalculator />

          {/* SPECIAL LEGAL FEATURES: CONFIDO LEGAL, ZOOM & LOOM REPLACEMENTS */}
          <div className="mt-12 grid grid-cols-1 md:grid-cols-2 gap-6">
            {/* Confido Legal Partner Card */}
            <div className="bg-gradient-to-br from-slate-900 via-[#12193b] to-[#1e2a63] text-white p-7 rounded-3xl shadow-lg relative overflow-hidden">
              <div className="flex items-center gap-2 mb-3">
                <span className="px-3 py-1 rounded-full bg-emerald-500/20 border border-emerald-400/30 text-emerald-300 text-xs font-bold uppercase tracking-wider flex items-center gap-1.5">
                  <ShieldCheck className="w-4 h-4" />
                  Official Confido Legal Partner
                </span>
              </div>

              <h3 className="text-xl sm:text-2xl font-black tracking-tight text-white">
                Compliant Trust & Operating Payment Routing
              </h3>

              <p className="mt-3 text-sm text-slate-300 leading-relaxed">
                Most general marketing platforms can’t touch legal payments because they violate
                state bar trust accounting rules. Because Flying Leap Studio is an official partner
                with <strong>Confido Legal</strong>, our intake systems can route payments
                appropriately:
              </p>

              <ul className="mt-4 space-y-2 text-xs sm:text-sm text-slate-200">
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 mt-1.5 shrink-0" />
                  <span>
                    <strong>Retainers & Unearned Fees:</strong> Directed straight into your IOLTA
                    Trust Account.
                  </span>
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 mt-1.5 shrink-0" />
                  <span>
                    <strong>Flat-Fee Plans & Consult Fees:</strong> Deposited directly into your
                    Operating Account.
                  </span>
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 rounded-full bg-emerald-400 mt-1.5 shrink-0" />
                  <span>
                    <strong>Zero Commingling:</strong> Processing fees are never deducted from trust
                    accounts.
                  </span>
                </li>
              </ul>
            </div>

            {/* Extra Replacements (Zoom, Loom, Asana) */}
            <div className="bg-[#fcfbf8] p-7 rounded-3xl border border-slate-200 flex flex-col justify-between">
              <div>
                <h3 className="text-xl sm:text-2xl font-black tracking-tight text-[#12193b]">
                  A Few Things You Might Not Expect Included:
                </h3>

                <div className="mt-4 space-y-3.5 text-xs sm:text-sm text-slate-700">
                  <div className="flex items-start gap-3">
                    <div className="p-2 rounded-xl bg-blue-50 text-[#3344b8] shrink-0 mt-0.5">
                      <Video className="w-4 h-4" />
                    </div>
                    <div>
                      <strong className="text-slate-900 block">
                        Native Meeting Rooms (Zoom Replacement):
                      </strong>
                      Host intake consults directly inside your custom branded domain without paying
                      for extra Zoom seats.
                    </div>
                  </div>

                  <div className="flex items-start gap-3">
                    <div className="p-2 rounded-xl bg-amber-50 text-amber-700 shrink-0 mt-0.5">
                      <Radio className="w-4 h-4" />
                    </div>
                    <div>
                      <strong className="text-slate-900 block">
                        Video Screen Walkthroughs (Loom Replacement):
                      </strong>
                      Record personalized explanations of drafts and email them directly to clients
                      from your intake dashboard.
                    </div>
                  </div>

                  <div className="flex items-start gap-3">
                    <div className="p-2 rounded-xl bg-purple-50 text-purple-700 shrink-0 mt-0.5">
                      <FileSpreadsheet className="w-4 h-4" />
                    </div>
                    <div>
                      <strong className="text-slate-900 block">
                        Project & Task Management (Asana Replacement):
                      </strong>
                      Automate team checklists so drafting attorneys and paralegals know the second
                      a check clears.
                    </div>
                  </div>
                </div>
              </div>

              <div className="mt-6 pt-4 border-t border-slate-200 flex items-center justify-between">
                <span className="text-xs text-slate-500">
                  Want to see the entire feature suite?
                </span>
                <a
                  href="https://flyingleapstudio.com/leadli/"
                  target="_blank"
                  rel="noopener noreferrer"
                  className="inline-flex items-center gap-1.5 text-xs font-bold text-[#3344b8] hover:underline"
                >
                  Explore Leadli Features
                  <ExternalLink className="w-3.5 h-3.5" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* FOOTER */}
      <footer className="bg-white text-slate-700 py-12 border-t border-slate-200">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 flex flex-col md:flex-row items-center justify-between gap-6">
          <div className="flex items-center gap-3">
            <FlyingLeapLogo className="h-9" />
          </div>

          <p className="text-xs text-slate-500 text-center md:text-left">
            © {new Date().getFullYear()} Flying Leap Studio. All rights reserved. GrowthOS is a
            custom-engineered intake operating system for professional service firms.
          </p>

          <div className="flex items-center gap-4 text-xs">
            <Link
              to="/"
              className="text-[#3344b8] hover:text-[#25349c] font-semibold cursor-pointer"
            >
              Return to GrowthOS
            </Link>
            <span className="text-slate-300">•</span>
            <span className="text-slate-500">2 Spots for {getCapacityMonth()}</span>
          </div>
        </div>
      </footer>
    </div>
  );
}
