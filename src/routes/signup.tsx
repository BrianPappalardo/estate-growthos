import React, { useState, useEffect } from "react";
import { createFileRoute, Link, useNavigate } from "@tanstack/react-router";
import {
  CheckCircle2,
  ShieldCheck,
  Zap,
  ArrowRight,
  Clock,
  Sparkles,
  ChevronDown,
  Layers,
  HelpCircle,
  Headphones,
} from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { PaymentCheckoutBlock, type CheckoutOrder } from "@/integrations/payments";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";

const SELECTION_STORAGE_KEY = "vibe.checkout.selection.v1";
const LEADLI_STANDARD_PRICE_ID = "6770c540421d7af8749c4496"; // $199/mo with 30-day trial

export const Route = createFileRoute("/signup")({
  head: () => ({
    meta: [
      {
        title: "Start Your 30-Day Free Trial of Leadli | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Full access to the Leadli platform for 30 days free. No long-term contracts. Replace your CRM, funnels, calendars, email, and texting tools.",
      },
      {
        property: "og:title",
        content: "Leadli — 30-Day Free Trial | All-In-One Platform",
      },
      {
        property: "og:description",
        content:
          "Start your 30-day trial of Leadli. $199/month after trial. Unlimited contacts, funnels, calendars, and automations.",
      },
    ],
  }),
  component: LeadliSignupPage,
});

function LeadliSignupPage() {
  const [modalOpen, setModalOpen] = useState(false);
  const [mounted, setMounted] = useState(false);
  const [activeFaq, setActiveFaq] = useState<number | null>(0);
  const navigate = useNavigate();

  // Set up the pre-selected product in localStorage on mount
  useEffect(() => {
    try {
      localStorage.setItem(
        SELECTION_STORAGE_KEY,
        JSON.stringify({
          items: [{ priceId: LEADLI_STANDARD_PRICE_ID, quantity: 1 }],
        }),
      );
    } catch {
      // Storage unavailable or disabled
    }
    setMounted(true);
  }, []);

  const handlePaymentSuccess = (order: CheckoutOrder) => {
    navigate({ to: "/thank-you" });
  };

  const scrollToCheckout = () => {
    const el = document.getElementById("checkout-section");
    if (el) {
      el.scrollIntoView({ behavior: "smooth" });
    }
  };

  const faqs = [
    {
      q: "Will I be charged today?",
      a: "No. You'll enter payment details securely to start your 30-day trial, but you won't be charged anything today. We'll send helpful reminders before your first $199/mo charge occurs, and you can cancel anytime with one click.",
    },
    {
      q: "What is included during the 30-day trial?",
      a: "You get full, unrestricted access to every core Leadli feature: CRM, pipelines, visual workflows, appointment calendars, landing pages and funnels, unified conversations inbox (2-way SMS and email), review requests, forms, surveys, and reporting.",
    },
    {
      q: "Can I bring my existing contacts and pipelines?",
      a: "Yes! We make importing easy with CSV imports for contacts, opportunities, and tag mapping. If you'd like our team to handle the import and setup for you, you can also book a guided onboarding call or upgrade to Leadli+.",
    },
    {
      q: "Are there limits on contacts, users, or funnels?",
      a: "No! Unlike most software that charges more as your list grows, Leadli includes unlimited contacts, unlimited team member users, and unlimited funnels and websites at the flat $199/month rate.",
    },
    {
      q: "What if I decide it's not a fit?",
      a: "You can cancel anytime directly from your billing settings before day 30, and you will never be charged a cent. No cancellation hassle, no lengthy exit interviews.",
    },
  ];

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-[#f97316] selection:text-white">
      {/* 1. HEADER */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80">
        <div className="max-w-6xl mx-auto px-4 sm:px-6 h-18 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-10 sm:h-11" />
          </Link>
          <div className="flex items-center gap-3 sm:gap-4">
            <button
              onClick={() => setModalOpen(true)}
              className="text-xs sm:text-sm font-bold text-slate-600 hover:text-[#12193b] transition-colors"
            >
              Have questions? Talk to us
            </button>
            <button
              onClick={scrollToCheckout}
              className="inline-flex items-center justify-center gap-1.5 px-4 sm:px-5 py-2 rounded-full bg-[#f97316] hover:bg-[#ea580c] text-white font-bold text-xs sm:text-sm transition-all shadow-sm cursor-pointer"
            >
              <span>Start Free Trial</span>
              <ArrowRight className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>
      </header>

      {/* 2. HERO SECTION */}
      <section className="pt-12 sm:pt-16 pb-12 sm:pb-16 border-b border-slate-200 bg-white">
        <div className="max-w-5xl mx-auto px-4 sm:px-6 text-center">
          <div className="inline-flex items-center gap-2 px-3.5 py-1.5 rounded-full bg-amber-500/10 border border-amber-500/20 text-[#f97316] text-xs sm:text-sm font-extrabold tracking-wide mb-6">
            <Sparkles className="w-4 h-4" />
            <span>30-Day Free Trial • No Charge Today • Cancel Anytime</span>
          </div>

          <h1 className="text-4xl sm:text-5xl md:text-6xl font-black text-[#12193b] tracking-tight leading-[1.08] max-w-4xl mx-auto">
            Turn clicks into clients with <span className="text-[#f97316]">Leadli</span>
          </h1>

          <p className="mt-5 text-lg sm:text-xl text-slate-600 max-w-2xl mx-auto leading-relaxed">
            Your all-in-one sales, marketing, and operations engine — built for growing service
            businesses that are done duct-taping ten different software tools together.
          </p>

          <div className="mt-8 flex flex-col sm:flex-row items-center justify-center gap-4">
            <button
              onClick={scrollToCheckout}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-8 py-4 rounded-xl bg-[#f97316] hover:bg-[#ea580c] text-white font-black text-base shadow-lg hover:shadow-xl transition-all cursor-pointer"
            >
              <span>Start My 30-Day Free Trial</span>
              <ArrowRight className="w-5 h-5" />
            </button>
            <button
              onClick={() => setModalOpen(true)}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-6 py-4 rounded-xl bg-[#fcfbf8] hover:bg-slate-100 text-slate-800 font-bold text-base border border-slate-300 transition-all cursor-pointer"
            >
              <Headphones className="w-4 h-4 text-slate-500" />
              <span>Book a Discovery Call Instead</span>
            </button>
          </div>

          <div className="mt-6 flex flex-wrap items-center justify-center gap-6 text-xs sm:text-sm text-slate-500 font-medium">
            <span className="flex items-center gap-1.5">
              <CheckCircle2 className="w-4 h-4 text-emerald-600" />
              $0 due today
            </span>
            <span className="flex items-center gap-1.5">
              <CheckCircle2 className="w-4 h-4 text-emerald-600" />
              Full access for 30 days
            </span>
            <span className="flex items-center gap-1.5">
              <CheckCircle2 className="w-4 h-4 text-emerald-600" />
              $199/mo thereafter
            </span>
            <span className="flex items-center gap-1.5">
              <CheckCircle2 className="w-4 h-4 text-emerald-600" />
              Cancel in 1 click
            </span>
          </div>
        </div>
      </section>

      {/* 3. CORE BENEFITS GRID */}
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-12">
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] tracking-tight">
              Everything you need, ready to deploy in days — not months.
            </h2>
            <p className="mt-3 text-base text-slate-600">
              Launch your Leadli workspace complete with CRM, funnels, automations, and calendars —
              without the "figure it out alone" phase.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-orange-100 text-[#f97316] flex items-center justify-center font-bold mb-4">
                01
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">
                High-Converting Funnels & Websites
              </h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Build drag-and-drop landing pages, intake forms, and service funnels. Capture leads,
                book consults, and sell offers without messy third-party plugins.
              </p>
            </div>

            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-blue-100 text-[#3344b8] flex items-center justify-center font-bold mb-4">
                02
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">
                Automations That Never Sleep
              </h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Trigger instant SMS follow-ups, email education sequences, and pipeline stage moves
                automatically. Stop losing deals to delayed response times.
              </p>
            </div>

            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center font-bold mb-4">
                03
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">Unified Conversations Inbox</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Every text message, email thread, phone call recording, and website chat lives on a
                single contact timeline. Your whole team stays perfectly in sync.
              </p>
            </div>

            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center font-bold mb-4">
                04
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">Calendars & Booking Links</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Replace Calendly. Multi-service booking links route clients to the right service,
                collect upfront intake info, and send automated reminders that slash no-shows.
              </p>
            </div>

            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-amber-100 text-amber-700 flex items-center justify-center font-bold mb-4">
                05
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">Visual Pipelines & Deals</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Drag-and-drop Kanban opportunity stages show you exactly where every prospect is in
                your pipeline, who needs follow-up, and projected monthly revenue.
              </p>
            </div>

            <div className="bg-white p-6 sm:p-7 rounded-2xl border border-slate-200 shadow-xs">
              <div className="w-10 h-10 rounded-xl bg-rose-100 text-rose-700 flex items-center justify-center font-bold mb-4">
                06
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">Reviews, Signatures & More</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Send review requests to Google with one click, create and send native contracts with
                e-signatures, and collect payments routed straight to your accounts.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* 4. THE 3-STEP ROADMAP */}
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] tracking-tight">
              Launch in a weekend.
            </h2>
            <p className="mt-2 text-slate-600">
              Your path from starting your trial to a live, automated system:
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div className="relative p-6 rounded-2xl bg-[#fcfbf8] border border-slate-200">
              <div className="w-9 h-9 rounded-full bg-[#12193b] text-white flex items-center justify-center font-black text-sm mb-4">
                1
              </div>
              <h3 className="font-bold text-slate-900 text-lg mb-2">Create your workspace</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Use the secure checkout below to start your 30-day trial. $0 today, full access
                unlocked instantly.
              </p>
            </div>

            <div className="relative p-6 rounded-2xl bg-[#fcfbf8] border border-slate-200">
              <div className="w-9 h-9 rounded-full bg-[#f97316] text-white flex items-center justify-center font-black text-sm mb-4">
                2
              </div>
              <h3 className="font-bold text-slate-900 text-lg mb-2">Connect your tools</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Import your contacts, set up your calendar link, and activate your first follow-up
                workflow.
              </p>
            </div>

            <div className="relative p-6 rounded-2xl bg-[#fcfbf8] border border-slate-200">
              <div className="w-9 h-9 rounded-full bg-emerald-600 text-white flex items-center justify-center font-black text-sm mb-4">
                3
              </div>
              <h3 className="font-bold text-slate-900 text-lg mb-2">Turn on the flow</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Watch new leads book directly on your calendar, receive instant confirmations, and
                show up pre-educated.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* 5. CHECKOUT SECTION */}
      <section
        id="checkout-section"
        className="py-16 sm:py-24 bg-gradient-to-b from-amber-50/40 via-white to-[#fcfbf8] border-b border-slate-200"
      >
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-[#f97316]/10 text-[#f97316] text-xs font-black uppercase tracking-wider mb-3">
              <ShieldCheck className="w-4 h-4" />
              Secure 2-Step Enrollment
            </div>
            <h2 className="text-3xl sm:text-4xl md:text-5xl font-black text-[#12193b] tracking-tight">
              Start your 30-day free trial.
            </h2>
            <p className="mt-3 text-base text-slate-600 leading-relaxed">
              Step 1 captures your details. Step 2 securely confirms your payment method — but{" "}
              <strong>you won't be charged a single penny until after your 30 days</strong>.
            </p>
          </div>

          {/* Checkout block — single wide wrapper as required for proper internal 2-step layout */}
          <div className="bg-white rounded-3xl border-2 border-slate-200/90 p-6 sm:p-10 md:p-12 shadow-xl">
            {mounted ? (
              <div className="w-full min-w-0">
                <PaymentCheckoutBlock
                  layout="two-step"
                  fields={{ phone: "required" }}
                  onSuccess={handlePaymentSuccess}
                />
              </div>
            ) : (
              <div className="py-16 text-center text-slate-400 text-sm">
                Loading secure checkout...
              </div>
            )}
          </div>
        </div>
      </section>

      {/* 6. FAQ SECTION */}
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-extrabold text-[#12193b] tracking-tight">
              Frequently asked questions
            </h2>
            <p className="mt-2 text-slate-600">
              Everything you need to know about your 30-day Leadli trial.
            </p>
          </div>

          <div className="space-y-4">
            {faqs.map((faq, idx) => {
              const isOpen = activeFaq === idx;
              return (
                <div
                  key={faq.q}
                  className="border border-slate-200 rounded-2xl overflow-hidden bg-[#fcfbf8] transition-all"
                >
                  <button
                    onClick={() => setActiveFaq(isOpen ? null : idx)}
                    className="w-full p-5 text-left flex items-center justify-between gap-4 font-bold text-slate-900 hover:text-[#f97316] transition-colors cursor-pointer"
                  >
                    <span>{faq.q}</span>
                    <ChevronDown
                      className={`w-5 h-5 text-slate-400 shrink-0 transition-transform ${
                        isOpen ? "rotate-180 text-[#f97316]" : ""
                      }`}
                    />
                  </button>
                  {isOpen && (
                    <div className="px-5 pb-5 text-sm text-slate-600 leading-relaxed border-t border-slate-100 pt-3">
                      {faq.a}
                    </div>
                  )}
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* 7. FINAL BOTTOM CTA BANNER */}
      <section className="py-16 sm:py-20 bg-gradient-to-r from-[#12193b] via-[#1a2558] to-[#12193b] text-white text-center">
        <div className="max-w-4xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-black tracking-tight leading-tight">
            You've seen what's possible.
            <br />
            Now put <span className="text-[#f97316]">Leadli</span> to work for your business.
          </h2>
          <p className="mt-4 text-slate-300 text-base sm:text-lg max-w-xl mx-auto">
            Get full access to all your funnels, automations, calendars, and CRM for the next 30
            days. No charge today.
          </p>

          <div className="mt-8 flex flex-col sm:flex-row items-center justify-center gap-4">
            <button
              onClick={scrollToCheckout}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-8 py-4 rounded-xl bg-[#f97316] hover:bg-[#ea580c] text-white font-black text-base shadow-lg transition-all cursor-pointer"
            >
              <span>Start My 30-Day Free Trial</span>
              <ArrowRight className="w-5 h-5" />
            </button>
            <button
              onClick={() => setModalOpen(true)}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-6 py-4 rounded-xl bg-white/10 hover:bg-white/20 text-white font-bold text-base border border-white/20 transition-all cursor-pointer"
            >
              <span>Want a Guided Build? Talk to Us</span>
            </button>
          </div>
        </div>
      </section>

      {/* 8. FOOTER */}
      <HomeFooter onOpenDiscovery={() => setModalOpen(true)} />

      {/* DISCOVERY MODAL */}
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
