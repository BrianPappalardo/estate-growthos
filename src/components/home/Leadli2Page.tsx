import { useState } from "react";
import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  Sparkles,
  Bot,
  Wand2,
  Gift,
  Workflow,
  Rocket,
  Layers,
  Building2,
  Navigation,
  CreditCard,
  Zap,
  Check,
  ChevronRight,
  Cpu,
  Gauge,
  ArrowUpRight,
} from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";

type Release = {
  id: string;
  badge: string;
  title: string;
  blurb: string;
  icon: typeof Bot;
  accent: string; // hex for inline style tints
  points: { label: string; detail: string }[];
};

const AI_RELEASES: Release[] = [
  {
    id: "conversation-ai",
    badge: "Conversation AI Flow Builder",
    title: "Outbound agents that reactivate your dead database — up to 2.6x faster.",
    blurb:
      "The Flow Builder now ships outbound agents and database reactivation on top of a serious processing-speed upgrade. Your AI isn't just replying faster — it's reaching out on its own.",
    icon: Bot,
    accent: "#22d3ee",
    points: [
      { label: "Outbound agents", detail: "AI that initiates, not just responds" },
      { label: "Database reactivation", detail: "Wake up cold leads automatically" },
      { label: "2.6x faster processing", detail: "Less latency between intent and reply" },
    ],
  },
  {
    id: "creator-studio",
    badge: "Creator Studio",
    title: "A built-in Canva and ad-recreation tool — no extra subscription.",
    blurb:
      "Create and recreate content and ads inside the platform you already use. It's the alternative to Canva and Higgsfield, baked into Leadli so your creative work lives next to your data.",
    icon: Wand2,
    accent: "#a78bfa",
    points: [
      { label: "Content creation", detail: "Design without leaving the platform" },
      { label: "Ad recreation", detail: "Spin up fresh variations fast" },
      { label: "No extra subscription", detail: "Included, not upsold" },
    ],
  },
  {
    id: "free-ai-tools",
    badge: "Free AI Tools",
    title: "Free AI generation for the tools you use every day.",
    blurb:
      "Ask AI, AI Studio, Creator Studio, workflows, and AI email are now free to generate. Managed agents and Conversation AI stay monetized — the everyday stuff is on the house.",
    icon: Gift,
    accent: "#34d399",
    points: [
      { label: "Ask AI, AI Studio", detail: "Free generation across the board" },
      { label: "Workflows + AI email", detail: "Free to generate" },
      { label: "Managed agents", detail: "Still a monetized, premium service" },
    ],
  },
  {
    id: "workflow-map",
    badge: "Workflow Map & MCP",
    title: "Visual workflow mapping that finally makes automation legible.",
    blurb:
      "See your automations mapped out, build them outside the main interface, and let the system upgrade templates and fix tags automatically. The MCP integration means automation is no longer a black box.",
    icon: Workflow,
    accent: "#fb923c",
    points: [
      { label: "Visual map", detail: "Simplify automation tracking" },
      { label: "Build outside the UI", detail: "Map & MCP integration" },
      { label: "Auto template upgrades", detail: "Tag fixes handled for you" },
    ],
  },
];

const OPS_RELEASES: Release[] = [
  {
    id: "founder-plan",
    badge: "Founder Plan",
    title: "The $497 Agency Pro plan is now the Founder Plan — same price, more unlocks.",
    blurb:
      "We renamed it and kept the price. The Founder Plan unlocks exclusive features: Industry Modes, Workflow Maps, the Founders Club, and Partner Network access.",
    icon: Rocket,
    accent: "#fb923c",
    points: [
      { label: "Same $497 price", detail: "Renamed, not repriced" },
      { label: "Industry Modes", detail: "Exclusive to Founders" },
      { label: "Founders Club + Partner Network", detail: "Access unlocked" },
    ],
  },
  {
    id: "native-pm",
    badge: "Native Project Management & Ticketing",
    title: "Task management, status groups, and workflow automations — built in.",
    blurb:
      "Run your team's work where your data already lives. Built-in task management with updated status groups, reminder automations, and public APIs for custom integrations.",
    icon: Layers,
    accent: "#22d3ee",
    points: [
      { label: "Built-in task management", detail: "No third-party PM tool" },
      { label: "Updated status groups", detail: "Reminders & workflow automation" },
      { label: "Public APIs", detail: "Custom integrations welcome" },
    ],
  },
  {
    id: "industry-snapshots",
    badge: "Industry Snapshots / Operating Systems",
    title: "Full operational snapshots tailored to your vertical.",
    blurb:
      "Snapshots for verticals like restaurants and home services — complete with table drawing, online ordering, and job routing. Drop in an operating system, not just a template.",
    icon: Building2,
    accent: "#a78bfa",
    points: [
      { label: "Vertical-tailored", detail: "Restaurants, home services, more" },
      { label: "Table drawing + online ordering", detail: "Operational out of the box" },
      { label: "Job routing", detail: "Built for real operations" },
    ],
  },
  {
    id: "ad-fuel",
    badge: "Ad Fuel",
    title: "HighLevel helps you create and run targeted ads — inside the ad manager.",
    blurb:
      "A Founder Plan program where we assist with targeted advertising creation and execution, right inside the ad manager. Less guesswork, better ad spend.",
    icon: Zap,
    accent: "#f97316",
    points: [
      { label: "Targeted ad creation", detail: "Assisted by the platform" },
      { label: "Execution inside ad manager", detail: "Create and run in one place" },
      { label: "Founder Plan members", detail: "Exclusive program" },
    ],
  },
  {
    id: "new-navigation",
    badge: "New Navigation",
    title: "A reorganized sidebar built around how you actually move.",
    blurb:
      "Pins, recents, and a genuinely better global search. The sidebar finally feels like it knows where you're going before you do.",
    icon: Navigation,
    accent: "#60a5fa",
    points: [
      { label: "Pins + recents", detail: "Your most-used, surfaced" },
      { label: "Improved global search", detail: "Find anything, faster" },
      { label: "Reorganized sidebar", detail: "Less hunting, more doing" },
    ],
  },
  {
    id: "lc-payments",
    badge: "LC Payments & E-Commerce",
    title: "Shopify fulfillment automation and new LC Payments commission structures.",
    blurb:
      "Order fulfillment workflow automation for Shopify, plus new commission structures for reselling LC payments. Commerce and payments just got tighter.",
    icon: CreditCard,
    accent: "#34d399",
    points: [
      { label: "Shopify fulfillment automation", detail: "Orders sync automatically" },
      { label: "New commission structures", detail: "Resell LC payments cleanly" },
      { label: "Tighter e-commerce", detail: "Payments + orders, together" },
    ],
  },
];

function SquiggleBackground() {
  return (
    <svg
      className="absolute inset-0 w-full h-full pointer-events-none opacity-[0.5]"
      preserveAspectRatio="none"
      viewBox="0 0 1200 800"
      fill="none"
    >
      <path
        className="v2-squiggle"
        d="M-20 180 Q 120 120, 240 180 T 480 180 T 720 180 T 960 180 T 1220 180"
        stroke="#fb923c"
        strokeWidth="2"
        strokeLinecap="round"
      />
      <path
        className="v2-squiggle-slow"
        d="M-20 420 Q 150 360, 300 420 T 600 420 T 900 420 T 1220 420"
        stroke="#22d3ee"
        strokeWidth="2"
        strokeLinecap="round"
      />
      <path
        className="v2-squiggle"
        d="M-20 640 Q 180 580, 360 640 T 720 640 T 1080 640 T 1220 640"
        stroke="#a78bfa"
        strokeWidth="2"
        strokeLinecap="round"
      />
    </svg>
  );
}

function ReleaseSection({ release, index }: { release: Release; index: number }) {
  const Icon = release.icon;
  const flip = index % 2 === 1;

  return (
    <div
      id={release.id}
      className="v2-rise scroll-mt-28"
      style={{ animationDelay: `${0.06 * index}s` }}
    >
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 lg:gap-12 items-center">
        {/* visual */}
        <div className={`lg:col-span-5 ${flip ? "lg:order-2" : ""}`}>
          <div
            className="relative rounded-3xl p-8 sm:p-10 v2-grid-bg"
            style={{
              background:
                "linear-gradient(145deg, color-mix(in oklab, var(--v2-surface) 92%, transparent), var(--v2-bg-2))",
              border: "1px solid color-mix(in oklab, " + release.accent + " 35%, var(--v2-border))",
            }}
          >
            <div
              className="absolute -top-8 -right-8 w-36 h-36 rounded-full blur-3xl pointer-events-none v2-drift"
              style={{ background: release.accent, opacity: 0.22 }}
            />
            <div className="relative flex flex-col items-center text-center gap-5 py-8">
              <div
                className="relative w-20 h-20 rounded-2xl flex items-center justify-center"
                style={{
                  background: `color-mix(in oklab, ${release.accent} 16%, transparent)`,
                  border: `1px solid ${release.accent}66`,
                }}
              >
                <span
                  className="absolute inset-0 rounded-2xl"
                  style={{
                    animation: "v2-pulse-ring 3s ease-out infinite",
                    border: `2px solid ${release.accent}`,
                  }}
                />
                <Icon className="w-9 h-9" style={{ color: release.accent }} />
              </div>
              <div className="text-[11px] font-black uppercase tracking-widest text-white/60">
                Release {String(index + 1).padStart(2, "0")}
              </div>
              <div
                className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full text-xs font-extrabold tracking-wide"
                style={{ background: `${release.accent}1a`, color: release.accent }}
              >
                <Sparkles className="w-3.5 h-3.5" />
                {release.badge}
              </div>
            </div>
          </div>
        </div>

        {/* copy */}
        <div className={`lg:col-span-7 ${flip ? "lg:order-1" : ""}`}>
          <h3 className="text-2xl sm:text-3xl lg:text-4xl font-black tracking-tight text-[var(--v2-text)] leading-[1.12]">
            {release.title}
          </h3>
          <p className="mt-5 text-base sm:text-lg text-[var(--v2-muted)] leading-relaxed max-w-xl">
            {release.blurb}
          </p>

          <ul className="mt-7 grid sm:grid-cols-1 gap-3">
            {release.points.map((p) => (
              <li
                key={p.label}
                className="flex items-start gap-3 p-4 rounded-xl"
                style={{
                  background: "color-mix(in oklab, var(--v2-surface) 70%, transparent)",
                  border: "1px solid var(--v2-border)",
                }}
              >
                <span
                  className="mt-0.5 w-5 h-5 rounded-full flex items-center justify-center shrink-0"
                  style={{ background: `${release.accent}26`, color: release.accent }}
                >
                  <Check className="w-3 h-3" strokeWidth={3} />
                </span>
                <div>
                  <div className="font-bold text-sm text-[var(--v2-text)]">{p.label}</div>
                  <div className="text-xs text-[var(--v2-muted)] mt-0.5">{p.detail}</div>
                </div>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </div>
  );
}

function AIPricingBlock({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <section className="relative py-20 sm:py-28 overflow-hidden">
      <div
        className="absolute inset-0 pointer-events-none"
        style={{
          background:
            "radial-gradient(60% 60% at 50% 0%, color-mix(in oklab, var(--v2-violet) 22%, transparent), transparent 70%)",
        }}
      />
      <div className="absolute inset-0 v2-noise opacity-30 pointer-events-none" />
      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
        <div
          className="rounded-[2rem] p-8 sm:p-12 lg:p-16 relative overflow-hidden v2-glow"
          style={{
            background:
              "linear-gradient(150deg, color-mix(in oklab, var(--v2-violet) 26%, var(--v2-surface)), var(--v2-surface) 55%, color-mix(in oklab, var(--v2-electric) 18%, var(--v2-surface)))",
            border: "1px solid color-mix(in oklab, var(--v2-violet) 40%, var(--v2-border))",
          }}
        >
          <div
            className="absolute -top-24 -right-24 w-72 h-72 rounded-full blur-3xl pointer-events-none v2-drift"
            style={{ background: "#a78bfa", opacity: 0.3 }}
          />
          <div
            className="absolute -bottom-24 -left-24 w-72 h-72 rounded-full blur-3xl pointer-events-none v2-drift"
            style={{ background: "#22d3ee", opacity: 0.2, animationDelay: "3s" }}
          />

          <div className="relative grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
              <div
                className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide v2-glow-cyan"
                style={{
                  background: "color-mix(in oklab, var(--v2-electric) 16%, transparent)",
                  color: "var(--v2-electric)",
                }}
              >
                <Cpu className="w-3.5 h-3.5" />
                New AI pricing
              </div>
              <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)] leading-[1.1]">
                Unlimited AI for the whole workspace.
              </h2>
              <p className="mt-5 text-base sm:text-lg text-[var(--v2-muted)] leading-relaxed">
                Flat-rate AI usage across your entire team — no per-seat metering, no surprise
                overages. Generate as much as your business needs.
              </p>

              <div className="mt-7 flex items-end gap-2">
                <span className="text-5xl sm:text-6xl font-black v2-shimmer-text">$40</span>
                <span className="text-xl font-bold text-[var(--v2-muted)] mb-1">/mo</span>
                <span className="text-sm text-[var(--v2-muted)] mb-2 ml-2">per workspace</span>
              </div>
            </div>

            <ul className="space-y-3.5">
              {[
                "Unlimited AI generation across the workspace",
                "Ask AI, AI Studio, Creator Studio, workflows & AI email",
                "No per-seat AI metering — one flat rate",
                "Managed agents & Conversation AI stay premium add-ons",
              ].map((t) => (
                <li
                  key={t}
                  className="flex items-start gap-3 p-4 rounded-xl"
                  style={{
                    background: "color-mix(in oklab, var(--v2-bg-2) 70%, transparent)",
                    border: "1px solid var(--v2-border)",
                  }}
                >
                  <span
                    className="mt-0.5 w-5 h-5 rounded-full flex items-center justify-center shrink-0"
                    style={{
                      background: "color-mix(in oklab, var(--v2-electric) 26%, transparent)",
                      color: "var(--v2-electric)",
                    }}
                  >
                    <Check className="w-3 h-3" strokeWidth={3} />
                  </span>
                  <span className="text-sm font-semibold text-[var(--v2-text)] leading-snug">
                    {t}
                  </span>
                </li>
              ))}
              <li>
                <button
                  onClick={onOpenDiscovery}
                  className="mt-2 w-full inline-flex items-center justify-center gap-2 px-6 py-3.5 rounded-xl font-bold text-sm transition-all cursor-pointer"
                  style={{ background: "var(--v2-electric)", color: "#06243a" }}
                >
                  Talk to us about AI
                  <ArrowRight className="w-4 h-4" />
                </button>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  );
}

function Release2Footer({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return (
    <footer
      className="border-t"
      style={{ borderColor: "var(--v2-border)", background: "var(--v2-bg-2)" }}
    >
      <div className="max-w-7xl mx-auto px-4 sm:px-6 py-12">
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-8">
          <div>
            <div className="[&_svg]:brightness-0 [&_svg]:invert">
              <FlyingLeapLogo className="h-9 opacity-90" />
            </div>
            <p className="mt-4 text-sm text-[var(--v2-muted)] max-w-md">
              Leadli is our white-label platform. Leadli 2.0 is the cumulative work of the last
              release cycle — and we're just getting started.
            </p>
          </div>
          <button
            onClick={onOpenDiscovery}
            className="inline-flex items-center gap-2 px-6 py-3.5 rounded-xl font-bold text-sm transition-all cursor-pointer"
            style={{ background: "var(--v2-accent)", color: "#1a1206" }}
          >
            Book a discovery call
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>
        <div
          className="mt-10 pt-6 border-t text-xs text-[var(--v2-muted)]"
          style={{ borderColor: "var(--v2-border)" }}
        >
          © {new Date().getFullYear()} Flying Leap Studio. Leadli is a white-label platform.
        </div>
      </div>
    </footer>
  );
}

export function Leadli2Page() {
  const [modalOpen, setModalOpen] = useState(false);
  const handleOpenDiscovery = () => setModalOpen(true);

  return (
    <div
      className="min-h-screen font-sans overflow-x-hidden"
      style={{ background: "var(--v2-bg)", color: "var(--v2-text)" }}
    >
      {/* ── HEADER ── */}
      <header
        className="sticky top-0 z-50 backdrop-blur-md border-b"
        style={{
          borderColor: "var(--v2-border)",
          background: "color-mix(in oklab, var(--v2-bg) 80%, transparent)",
        }}
      >
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center [&_svg]:brightness-0 [&_svg]:invert">
            <FlyingLeapLogo className="h-11" />
          </Link>
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-[var(--v2-muted)]">
            <Link to="/" className="hover:text-white transition-colors">
              Home
            </Link>
            <Link to="/leadli" className="hover:text-white transition-colors">
              Leadli
            </Link>
            <span className="font-black text-white">2.0</span>
            <Link to="/signup" className="hover:text-white transition-colors">
              Start free
            </Link>
          </nav>
          <button
            onClick={handleOpenDiscovery}
            className="inline-flex items-center justify-center gap-2 px-5 py-2.5 rounded-full font-bold text-sm transition-all cursor-pointer"
            style={{ background: "var(--v2-accent)", color: "#1a1206" }}
          >
            <strong>Book a call</strong>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </header>

      {/* ── HERO ── */}
      <section className="relative pt-16 sm:pt-24 pb-20 sm:pb-28 overflow-hidden">
        <div className="absolute inset-0 v2-grid-bg opacity-40 pointer-events-none" />
        <div
          className="absolute top-1/3 left-1/2 -translate-x-1/2 w-[700px] h-[400px] rounded-full blur-3xl pointer-events-none v2-drift"
          style={{ background: "var(--v2-accent)", opacity: 0.18 }}
        />
        <SquiggleBackground />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative text-center">
          <div
            className="v2-rise inline-flex items-center gap-2 px-4 py-1.5 rounded-full text-xs sm:text-sm font-extrabold tracking-wide uppercase mb-7"
            style={{
              background: "color-mix(in oklab, var(--v2-accent) 16%, transparent)",
              color: "var(--v2-accent)",
              border: "1px solid color-mix(in oklab, var(--v2-accent) 40%, transparent)",
            }}
          >
            <Sparkles className="w-4 h-4" />
            Leadli 2.0 is here
          </div>

          <h1
            className="v2-rise text-4xl sm:text-6xl lg:text-7xl font-black tracking-tight leading-[1.05]"
            style={{ animationDelay: "0.08s" }}
          >
            The platform just got a <span className="v2-shimmer-text">serious upgrade.</span>
          </h1>

          <p
            className="v2-rise mt-7 text-lg sm:text-2xl text-[var(--v2-muted)] max-w-3xl mx-auto leading-relaxed"
            style={{ animationDelay: "0.16s" }}
          >
            Ten major releases in the last cycle — from outbound AI agents and a built-in creative
            studio to native project management, vertical operating systems, and flat-rate AI.
            Here's what changed.
          </p>

          <div
            className="v2-rise mt-9 flex flex-col sm:flex-row items-center justify-center gap-4"
            style={{ animationDelay: "0.24s" }}
          >
            <button
              onClick={handleOpenDiscovery}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 py-4 rounded-2xl font-bold text-base transition-all cursor-pointer v2-glow"
              style={{ background: "var(--v2-accent)", color: "#1a1206" }}
            >
              <strong>Book a discovery call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <a
              href="#releases"
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-7 py-4 rounded-2xl font-bold text-base text-[var(--v2-text)] transition-all"
              style={{
                background: "color-mix(in oklab, var(--v2-surface) 80%, transparent)",
                border: "1px solid var(--v2-border)",
              }}
            >
              <span>See the releases</span>
              <ChevronRight className="w-4 h-4" />
            </a>
          </div>

          {/* stat strip */}
          <div
            className="v2-rise mt-14 grid grid-cols-3 gap-3 sm:gap-6 max-w-2xl mx-auto"
            style={{ animationDelay: "0.3s" }}
          >
            {[
              { v: "2.6x", l: "Faster AI processing" },
              { v: "10", l: "Major releases" },
              { v: "$40", l: "Flat AI / workspace" },
            ].map((s) => (
              <div
                key={s.l}
                className="rounded-2xl py-5 px-3"
                style={{
                  background: "color-mix(in oklab, var(--v2-surface) 70%, transparent)",
                  border: "1px solid var(--v2-border)",
                }}
              >
                <div className="text-3xl sm:text-4xl font-black v2-shimmer-text">{s.v}</div>
                <div className="mt-1 text-[11px] sm:text-xs font-semibold text-[var(--v2-muted)] uppercase tracking-wider">
                  {s.l}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── AI RELEASES ── */}
      <section
        id="releases"
        className="relative py-16 sm:py-24"
        style={{ background: "var(--v2-bg-2)" }}
      >
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-3xl mx-auto mb-16">
            <div
              className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide uppercase"
              style={{
                background: "color-mix(in oklab, var(--v2-electric) 16%, transparent)",
                color: "var(--v2-electric)",
                border: "1px solid color-mix(in oklab, var(--v2-electric) 35%, transparent)",
              }}
            >
              <Bot className="w-3.5 h-3.5" />
              AI & Automation releases
            </div>
            <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)]">
              Smarter, faster, and a little more autonomous.
            </h2>
            <p className="mt-4 text-base sm:text-lg text-[var(--v2-muted)]">
              The AI layer of Leadli 2.0 doesn't just answer — it acts.
            </p>
          </div>

          <div className="space-y-20 sm:space-y-28">
            {AI_RELEASES.map((r, i) => (
              <ReleaseSection key={r.id} release={r} index={i} />
            ))}
          </div>
        </div>
      </section>

      {/* ── AI PRICING ── */}
      <AIPricingBlock onOpenDiscovery={handleOpenDiscovery} />

      {/* ── AGENCY & OPS RELEASES ── */}
      <section className="relative py-16 sm:py-24" style={{ background: "var(--v2-bg-2)" }}>
        <div className="absolute inset-0 v2-grid-bg opacity-30 pointer-events-none" />
        <div className="max-w-6xl mx-auto px-4 sm:px-6 relative">
          <div className="text-center max-w-3xl mx-auto mb-16">
            <div
              className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide uppercase"
              style={{
                background: "color-mix(in oklab, var(--v2-accent) 16%, transparent)",
                color: "var(--v2-accent)",
                border: "1px solid color-mix(in oklab, var(--v2-accent) 35%, transparent)",
              }}
            >
              <Gauge className="w-3.5 h-3.5" />
              Agency &amp; Operations
            </div>
            <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)]">
              Built for the way you actually run it.
            </h2>
            <p className="mt-4 text-base sm:text-lg text-[var(--v2-muted)]">
              The operational backbone — from project management to vertical operating systems.
            </p>
          </div>

          <div className="space-y-20 sm:space-y-28">
            {OPS_RELEASES.map((r, i) => (
              <ReleaseSection key={r.id} release={r} index={i} />
            ))}
          </div>
        </div>
      </section>

      {/* ── FINAL CTA ── */}
      <section className="relative py-20 sm:py-28 overflow-hidden">
        <div className="absolute inset-0 v2-grid-bg opacity-40 pointer-events-none" />
        <SquiggleBackground />
        <div
          className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[400px] rounded-full blur-3xl pointer-events-none v2-drift"
          style={{ background: "var(--v2-accent)", opacity: 0.16 }}
        />
        <div className="max-w-4xl mx-auto px-4 sm:px-6 relative text-center">
          <div
            className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full text-xs sm:text-sm font-extrabold tracking-wide uppercase mb-6"
            style={{
              background: "color-mix(in oklab, var(--v2-accent) 16%, transparent)",
              color: "var(--v2-accent)",
              border: "1px solid color-mix(in oklab, var(--v2-accent) 40%, transparent)",
            }}
          >
            <Sparkles className="w-4 h-4" />
            Ready when you are
          </div>
          <h2 className="text-3xl sm:text-5xl lg:text-6xl font-black tracking-tight leading-[1.08]">
            See what Leadli 2.0 can do <span className="v2-shimmer-text">for your firm.</span>
          </h2>
          <p className="mt-6 text-base sm:text-xl text-[var(--v2-muted)] max-w-2xl mx-auto leading-relaxed">
            30 minutes. We'll walk you through the upgrades that matter for your operations and give
            you a clear estimate. No pressure.
          </p>
          <div className="mt-9 flex flex-col sm:flex-row items-center justify-center gap-4">
            <button
              onClick={handleOpenDiscovery}
              className="w-full sm:w-auto inline-flex items-center justify-center gap-3 px-8 py-4 rounded-2xl font-bold text-base sm:text-lg transition-all cursor-pointer v2-glow"
              style={{ background: "var(--v2-accent)", color: "#1a1206" }}
            >
              <strong>Book a discovery call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <Link
              to="/leadli"
              className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-7 py-4 rounded-2xl font-bold text-base text-[var(--v2-text)] transition-all"
              style={{
                background: "color-mix(in oklab, var(--v2-surface) 80%, transparent)",
                border: "1px solid var(--v2-border)",
              }}
            >
              <span>Explore the full platform</span>
              <ArrowUpRight className="w-5 h-5" />
            </Link>
          </div>
        </div>
      </section>

      <Release2Footer onOpenDiscovery={handleOpenDiscovery} />
      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
