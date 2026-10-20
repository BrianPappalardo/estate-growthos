import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Database,
  Tag,
  Filter,
  Layers,
  MessageSquare,
  Workflow,
  Calendar,
  CreditCard,
  Mail,
  PhoneCall,
  Users,
  Search,
  TrendingUp,
} from "lucide-react";
import { getFeatureBySlug, LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli CRM + Client Management product.
 *
 * Renders inside /feature/$slug when the slug is "crm". The header, footer,
 * and discovery modal are owned by the route, so this component renders only
 * the <main> content.
 */
export function CrmProductPage({
  onOpenDiscovery,
}: {
  feature?: ReturnType<typeof getFeatureBySlug>;
  onOpenDiscovery: () => void;
}) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "crm" && f.slug !== "automation" && f.slug !== "calendars" && f.slug !== "inbox",
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
              Operations · CRM
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Database className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli CRM & Client Management
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Every contact, conversation, and case in one place — never lost in a spreadsheet
                again.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            A full pipeline view of every prospect and client, from first inquiry to signed
            engagement and beyond. Smart tags, custom fields, and a complete conversation history
            keep your team on the same page without retyping a single thing.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["HubSpot", "Pipedrive", "Lawmatics", "Clio Grow"].map((name) => (
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
                Your leads are scattered across five tabs. No wonder half of them go cold.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect fills out your form on Tuesday. Their name lands in a spreadsheet. Their
                email gets logged in your marketing tool. Their booking lives in a separate
                calendar. And their signed engagement letter sits in a fourth place nobody checks.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                By Thursday, nobody remembers who called whom — and the lead has booked with someone
                who <em>did</em> have it together. The Leadli CRM plugs that hole by making one
                record the source of truth for every person who ever contacts your firm.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {["One record per person", "Full conversation history", "No more retyping"].map(
                  (item) => (
                    <span
                      key={item}
                      className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                    >
                      <CheckCircle2 className="w-3.5 h-3.5" />
                      {item}
                    </span>
                  ),
                )}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== PIPELINE MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Visual pipeline
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              See exactly where every prospect stands.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Drag deals from stage to stage. Filter by value, source, or custom field. Your whole
              team sees the same board.
            </p>
          </div>

          {/* Kanban-style mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Layers className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Estate Planning Pipeline</span>
              </div>
              <div className="flex items-center gap-2 text-xs text-slate-300">
                <Search className="w-3.5 h-3.5" />
                <span className="hidden sm:inline">Filter &amp; search</span>
              </div>
            </div>
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 p-4 sm:p-6 bg-slate-50/60">
              {PIPELINE_COLUMNS.map((col) => (
                <div key={col.stage} className="flex flex-col gap-3">
                  <div className="flex items-center justify-between">
                    <span className="text-xs font-extrabold uppercase tracking-wider text-slate-700">
                      {col.stage}
                    </span>
                    <span className="text-[10px] font-bold text-white bg-slate-400 rounded-full px-1.5 py-0.5">
                      {col.cards.length}
                    </span>
                  </div>
                  {col.cards.map((card) => (
                    <div
                      key={card.name}
                      className="rounded-xl bg-white border border-slate-200 p-3 shadow-sm"
                    >
                      <div className="flex items-center justify-between mb-2">
                        <span className="text-xs font-bold text-slate-900 truncate">
                          {card.name}
                        </span>
                        <span
                          className={`text-[10px] font-extrabold px-1.5 py-0.5 rounded ${card.accent}`}
                        >
                          {card.value}
                        </span>
                      </div>
                      <div className="flex flex-wrap gap-1">
                        {card.tags.map((tag) => (
                          <span
                            key={tag}
                            className="text-[9px] font-bold px-1.5 py-0.5 rounded bg-blue-50 text-[#3344b8] border border-blue-100"
                          >
                            {tag}
                          </span>
                        ))}
                      </div>
                    </div>
                  ))}
                </div>
              ))}
            </div>
            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">Pipeline value: $48,300</span>
              <span className="flex items-center gap-1.5">
                <TrendingUp className="w-3.5 h-3.5 text-emerald-600" />
                Show rate tracking built in
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
              A CRM built around your firm — not the other way around.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {CRM_CAPABILITIES.map((cap) => {
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
                  The CRM is the spine of the single platform we configure around the way your firm
                  actually works. No extra subscription, no separate login.
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

      {/* ===== CUSTOM FIELDS + SMART LISTS ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Tag className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">Custom fields</span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Capture exactly the details your firm cares about.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Add fields for practice area, household size, referral source, planned trust type —
                anything. Dropdowns, dates, monetary values, even signatures. Group them into
                folders, hide the empty ones, and filter your pipeline by any of them.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Contact fields for the person, opportunity fields for the deal",
                  "Trigger automations when a field changes",
                  "Merge field values into texts, emails, and documents",
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
                <Filter className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Smart lists &amp; tags
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Slice your contacts any way you need.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Tag people by service, source, or where they are in your process. Build saved Smart
                Lists that update themselves — “trust prospects who haven't booked a consult” is one
                click, not a thirty-minute CRM dig.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Saved, self-updating Smart Lists",
                  "Bulk actions on any filtered group",
                  "That list of 400 forgotten leads? Finally findable.",
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
              The CRM talks to everything else in Leadli.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no re-typing. When something happens, the contact record knows.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {CONNECTIONS.map((conn) => {
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
              The CRM is just the start. Explore the rest of what's included with Leadli.
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
            Let's see if Leadli fits your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We'll learn how your intake runs today, tell you honestly whether we're a
            fit, and give you a clear estimate.
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

const PIPELINE_COLUMNS = [
  {
    stage: "New Lead",
    cards: [
      {
        name: "M. Alvarez",
        value: "—",
        tags: ["Webform", "Trust"],
        accent: "bg-slate-100 text-slate-600",
      },
      { name: "J. Whitman", value: "—", tags: ["Phone"], accent: "bg-slate-100 text-slate-600" },
    ],
  },
  {
    stage: "Consult Booked",
    cards: [
      { name: "R. Singh", value: "$4,500", tags: ["Estate"], accent: "bg-blue-50 text-[#3344b8]" },
    ],
  },
  {
    stage: "Proposal Sent",
    cards: [
      {
        name: "K. Donovan",
        value: "$6,200",
        tags: ["Trust+Will"],
        accent: "bg-amber-50 text-amber-800",
      },
    ],
  },
  {
    stage: "Signed",
    cards: [
      {
        name: "L. Park",
        value: "$5,800",
        tags: ["Paid"],
        accent: "bg-emerald-50 text-emerald-700",
      },
    ],
  },
];

const CRM_CAPABILITIES: { title: string; body: string; icon: typeof Database }[] = [
  {
    icon: Users,
    title: "Unlimited contacts & smart tags",
    body: "No per-seat contact limits. Tag every person by service, source, stage, or whatever else you track — then filter instantly.",
  },
  {
    icon: Layers,
    title: "Visual opportunity pipeline",
    body: "A drag-and-drop board for every service you offer. See value at a glance and know exactly where each deal stands.",
  },
  {
    icon: MessageSquare,
    title: "Full conversation history",
    body: "Every email, text, call note, and booking lives on one record. Anyone on your team picks up exactly where you left off.",
  },
  {
    icon: Tag,
    title: "Custom fields mapped to your intake",
    body: "Capture the details that matter to your firm — practice area, household, referral source — and use them in automations and documents.",
  },
  {
    icon: Workflow,
    title: "Trigger automations from any change",
    body: "A field updates, a deal moves, a tag is added — fire a follow-up, a notification, or a whole sequence without lifting a finger.",
  },
  {
    icon: Search,
    title: "Find forgotten leads in seconds",
    body: "Those 400 contacts sitting in your old CRM? Imported, cleaned up, and finally searchable. No more digging through dead lists.",
  },
];

const CONNECTIONS: { label: string; icon: typeof Database }[] = [
  { icon: Calendar, label: "Calendars & booking" },
  { icon: Workflow, label: "Automations" },
  { icon: Mail, label: "Email & SMS" },
  { icon: MessageSquare, label: "Unified inbox" },
  { icon: CreditCard, label: "Payments" },
  { icon: PhoneCall, label: "Power dialer" },
];
