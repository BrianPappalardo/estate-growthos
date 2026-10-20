import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Star,
  ThumbsUp,
  MessageSquare,
  ShieldCheck,
  Zap,
  Calendar,
  Mail,
  Database,
  Workflow,
  Clock,
  Send,
  Reply,
  AlertCircle,
  Award,
  TrendingUp,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Reputation + Reviews product.
 *
 * Renders inside /feature/$slug when the slug is "reviews". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function ReviewsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "reviews" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "marketing" &&
      f.slug !== "inbox",
  ).slice(0, 7);

  return (
    <main>
      {/* ===== HERO ===== */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-tr from-[#3344b8]/30 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="mb-6 flex flex-col items-start gap-3">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              All Leadli Features
            </Link>

            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
              <Sparkles className="w-4 h-4 text-amber-400" />
              Growth · Reputation
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Star className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Reputation &amp; Reviews
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Automated review requests the moment a client signs their final plan — and every
                response from one inbox.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Your happiest clients never leave a review, and your unhappy ones do it for you. Leadli
            flips that. The moment an engagement closes out, a review request fires automatically —
            timed when your client is happiest. Every review lands in one inbox, where you respond
            in a click. No separate reputation tool, no chasing stars by hand.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Birdeye",
              "Podium",
              "Broadly",
              "Google review requests",
              "Reputation spreadsheets",
            ].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
              >
                {name}
              </span>
            ))}
          </div>

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              Included with Leadli at one flat $199/mo rate. See how it fits your firm on a
              30-minute call.
            </p>
          </div>
        </div>
      </section>

      {/* ===== THE LEAK ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-12">
            <div className="lg:col-span-5">
              <span className="text-xs font-bold uppercase tracking-wider text-rose-600 bg-rose-50 px-3 py-1 rounded-full border border-rose-200 inline-block">
                The leak
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight leading-tight">
                Your happiest clients never leave a review — and your unhappy ones do it for you.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You handed off a flawless estate plan. The family is thrilled. You ask for a review
                and they say &ldquo;of course!&rdquo; — and then life happens. The request gets
                buried in a text you forget to follow up on. Six months later, you have two reviews
                on Google, and one of them is from a disgruntled prospect who never even hired you.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Meanwhile the firm down the street — the one with the mediocre intake and the same
                results — has 127 five-star reviews and a full calendar. Leadli plugs that hole by
                asking for the review at the exact moment your client is happiest, and keeping every
                response in one inbox so nothing slips through.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Ask at the happiest moment",
                  "One inbox for every response",
                  "No reputation tool to babysit",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    {item}
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== REPUTATION DASHBOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Reputation on autopilot
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Every review request fires itself — and every response lives in one place.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Trigger requests the moment an engagement closes. Route happy clients to Google. Catch
              unhappy ones privately first.
            </p>
          </div>

          {/* Reputation dashboard mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Award className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Reputation Dashboard · yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <Zap className="w-3.5 h-3.5 text-amber-400" />
                  Auto-requests on
                </span>
                <span className="flex items-center gap-1 text-emerald-400 font-bold">
                  <ShieldCheck className="w-3.5 h-3.5" />
                  Live
                </span>
              </div>
            </div>

            <div className="p-5 sm:p-6 bg-slate-50/60">
              {/* Summary row */}
              <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-6">
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Overall Rating
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">4.9</span>
                    <div className="flex items-center gap-0.5 pb-1">
                      {[0, 1, 2, 3, 4].map((i) => (
                        <Star key={i} className="w-4 h-4 fill-amber-400 text-amber-400" />
                      ))}
                    </div>
                  </div>
                  <div className="mt-1 text-xs text-slate-500 font-medium">127 reviews</div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Requests Sent
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">38</span>
                    <span className="text-xs text-emerald-600 font-bold pb-1.5">this month</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Send className="w-3.5 h-3.5 text-[#3344b8]" />
                    Auto-fired on closeout
                  </div>
                </div>
                <div className="rounded-2xl bg-white border border-slate-200 p-5 shadow-sm">
                  <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                    Response Rate
                  </div>
                  <div className="mt-2 flex items-end gap-2">
                    <span className="text-3xl font-black text-[#12193b]">100%</span>
                    <span className="text-xs text-slate-500 font-medium pb-1.5">answered</span>
                  </div>
                  <div className="mt-1 flex items-center gap-1.5 text-xs text-slate-500 font-medium">
                    <Reply className="w-3.5 h-3.5 text-[#3344b8]" />
                    From one inbox
                  </div>
                </div>
              </div>

              {/* Reviews feed */}
              <div className="rounded-2xl bg-white border border-slate-200 overflow-hidden">
                <div className="px-4 py-3 border-b border-slate-100 flex items-center justify-between">
                  <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
                    Recent Reviews
                  </span>
                  <span className="flex items-center gap-1.5 text-[10px] font-bold text-emerald-600">
                    <TrendingUp className="w-3.5 h-3.5" />
                    +12 this month
                  </span>
                </div>
                <div className="divide-y divide-slate-100">
                  {REVIEWS.map((review) => (
                    <div key={review.name} className="px-4 py-4 flex items-start gap-4">
                      <div className="w-9 h-9 rounded-full bg-slate-100 flex items-center justify-center text-xs font-black text-slate-500 shrink-0">
                        {review.initials}
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center justify-between gap-3 flex-wrap">
                          <span className="text-sm font-bold text-[#12193b]">{review.name}</span>
                          <span className="text-[10px] text-slate-400 font-medium">
                            {review.source}
                          </span>
                        </div>
                        <div className="mt-0.5 flex items-center gap-2">
                          <div className="flex items-center gap-0.5">
                            {Array.from({ length: 5 }).map((_, i) => (
                              <Star
                                key={i}
                                className={`w-3 h-3 ${
                                  i < review.stars
                                    ? "fill-amber-400 text-amber-400"
                                    : "fill-slate-200 text-slate-200"
                                }`}
                              />
                            ))}
                          </div>
                          <span
                            className={`text-[10px] font-bold px-1.5 py-0.5 rounded ${
                              review.responded
                                ? "bg-emerald-50 text-emerald-700 border border-emerald-200"
                                : "bg-amber-50 text-amber-700 border border-amber-200"
                            }`}
                          >
                            {review.responded ? "Responded" : "Needs reply"}
                          </span>
                        </div>
                        <p className="mt-1.5 text-xs text-slate-600 leading-relaxed">
                          &ldquo;{review.body}&rdquo;
                        </p>
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Auto-request flow */}
              <div className="mt-5 flex flex-wrap items-center gap-2 text-[11px] font-bold">
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-emerald-50 text-emerald-700 border border-emerald-200">
                  <CheckCircle2 className="w-3.5 h-3.5" />
                  Engagement closes
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200">
                  <Clock className="w-3.5 h-3.5" />
                  Wait 2 days
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-amber-50 text-amber-700 border border-amber-200">
                  <Star className="w-3.5 h-3.5" />
                  Review request sent
                </span>
                <ArrowRight className="w-3.5 h-3.5 text-slate-300" />
                <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-slate-100 text-slate-600 border border-slate-200">
                  <ThumbsUp className="w-3.5 h-3.5" />
                  Happy? → Google
                </span>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">127 reviews · 4.9 avg · 100% response rate</span>
              <span className="flex items-center gap-1.5">
                <AlertCircle className="w-3.5 h-3.5 text-amber-600" />
                Negative feedback routed privately first
              </span>
            </div>
          </div>
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              What you get
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              A reputation engine built around how your firm actually finishes work.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {REVIEW_CAPABILITIES.map((cap) => {
              const Icon = cap.icon;
              return (
                <div
                  key={cap.title}
                  className="rounded-2xl border border-slate-200 p-6 bg-white hover:shadow-md transition-shadow"
                >
                  <div className="flex items-start gap-4">
                    <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                      <Icon className="w-5 h-5" />
                    </div>
                    <div>
                      <h3 className="font-black text-base text-[#12193b]">{cap.title}</h3>
                      <p className="text-sm text-slate-600 mt-1.5 leading-relaxed">{cap.body}</p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-10 rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-5">
              <div>
                <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300 mb-1">
                  Included in Leadli
                </div>
                <p className="text-sm text-slate-200 leading-relaxed max-w-xl">
                  Reputation &amp; reviews are part of the single platform we configure around the
                  way your firm finishes work. No extra subscription, no separate reputation tool.
                </p>
              </div>
              <div className="flex items-baseline gap-2 shrink-0">
                <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                <span className="text-3xl font-black text-amber-300">$199/mo</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== SMART TIMING + CENTRALIZED RESPONSE DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Clock className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Ask at the happiest moment
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The review request fires when your client is actually happy.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Trigger the ask the moment an engagement closes out — not a week later when
                they&apos;ve moved on. Leadli waits a beat, then sends a personalized request from
                the attorney they worked with. Timing is everything, and the timing is handled.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Trigger on engagement closeout, not a calendar reminder",
                  "Personalized from the attorney who did the work",
                  "Smart delays so you don't ask too soon — or too late",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <ShieldCheck className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Catch the bad ones first
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Route unhappy clients to private feedback — before they go public.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A quick &ldquo;how did it go?&rdquo; lands first. If they had a great experience,
                they&apos;re guided to Google. If not, their feedback routes straight to you
                privately — so you can make it right before it becomes a one-star review you
                can&apos;t take back.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Internal feedback capture before public reviews",
                  "Happy clients guided to Google & Facebook",
                  "Unhappy clients routed to you — not the internet",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    {item}
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Your reputation knows what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no copy-paste. When an engagement closes, the review request knows.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {REVIEW_CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
                    <Icon className="w-5 h-5" />
                  </div>
                  <span className="text-xs font-bold text-slate-700 leading-snug">
                    {conn.label}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* ===== MORE FEATURES ===== */}
      <section className="py-16 sm:py-20 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Reputation &amp; reviews are just the start. Explore the rest of what&apos;s included
              with Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-white border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
              >
                {f.name}
              </Link>
            ))}
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let&apos;s see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll learn how your firm finishes work today, tell you honestly
            whether we&apos;re a fit, and give you a clear estimate.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-amber-500 hover:bg-amber-600 text-slate-950 rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>
    </main>
  );
}

const REVIEWS: {
  name: string;
  initials: string;
  stars: number;
  source: string;
  body: string;
  responded: boolean;
}[] = [
  {
    name: "Maria L.",
    initials: "ML",
    stars: 5,
    source: "Google",
    body: "They made the whole process painless. We finally have our trust set up and feel so relieved.",
    responded: true,
  },
  {
    name: "David R.",
    initials: "DR",
    stars: 5,
    source: "Google",
    body: "Professional, responsive, and genuinely cared about our family. Couldn't recommend them more.",
    responded: true,
  },
  {
    name: "Patricia K.",
    initials: "PK",
    stars: 4,
    source: "Facebook",
    body: "Great experience overall. Took a little longer than expected but the outcome was worth it.",
    responded: false,
  },
  {
    name: "James W.",
    initials: "JW",
    stars: 5,
    source: "Google",
    body: "Explained everything in plain English. No pressure, no jargon. Exactly what we needed.",
    responded: true,
  },
];

const REVIEW_CAPABILITIES: { title: string; body: string; icon: typeof Star }[] = [
  {
    icon: Zap,
    title: "Automated review requests",
    body: "The moment an engagement closes out, a personalized request fires — from the attorney who did the work, not a generic 'noreply' address.",
  },
  {
    icon: Star,
    title: "Google & Facebook integration",
    body: "Happy clients land straight on your Google Business or Facebook profile to leave their review — no links to hunt down, no instructions to give.",
  },
  {
    icon: MessageSquare,
    title: "One inbox for every response",
    body: "Every review across every platform shows up in a single inbox. Reply in a click — and never miss one sitting unread on a tab you forgot about.",
  },
  {
    icon: ShieldCheck,
    title: "Negative review routing",
    body: "Catch unhappy clients with a private feedback path before they post publicly — so you can make it right instead of reading about it on Google.",
  },
  {
    icon: Award,
    title: "Reputation dashboard",
    body: "See your average rating, request volume, and response rate across every platform in one view — no spreadsheet, no logging into five dashboards.",
  },
  {
    icon: TrendingUp,
    title: "Review-driven growth",
    body: "More five-star reviews mean more clicks, more calls, and more consults. Leadli turns the work you already do into the marketing you can't buy.",
  },
  {
    icon: Clock,
    title: "Smart request timing",
    body: "Requests send at the right moment — a beat after closeout, when your client is happiest — not on a reminder you forgot to set.",
  },
  {
    icon: Send,
    title: "Automated follow-ups",
    body: "Didn't leave a review? A gentle nudge sends itself a few days later. Didn't respond to one? A reminder pings you. Nothing falls through.",
  },
];

const REVIEW_CONNECTIONS: { label: string; icon: typeof Star }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Workflow, label: "Closeout automations" },
  { icon: Calendar, label: "Engagement timeline" },
  { icon: Mail, label: "Email & SMS requests" },
  { icon: MessageSquare, label: "Response inbox" },
  { icon: ThumbsUp, label: "Google & Facebook" },
];
