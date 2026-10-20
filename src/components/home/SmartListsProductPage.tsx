import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  ListFilter,
  Tag,
  RefreshCw,
  Users,
  GitBranch,
  Database,
  ListTodo,
  Zap,
  Mail,
  Smartphone,
  Layers,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { SmartListMockup } from "@/components/home/smart-lists-mockup";

/**
 * Dedicated sales page for the Leadli Smart Lists & Segments product.
 *
 * Renders inside /feature/$slug when the slug is "smart-lists". The
 * header, footer, and discovery modal are owned by the route, so this
 * component renders only the <main> content.
 */
export function SmartListsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "smart-lists" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "marketing",
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
              Operations &middot; Smart Lists &amp; Segments
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <ListFilter className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Smart Lists &amp; Segments
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Organize ALL your data in your CRM &mdash; contacts, opportunities, custom objects,
                and projects &mdash; in lists that keep themselves current.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Most CRMs make you export a list, scrub it, and re-upload it every time you want to
            reach a specific audience. Leadli Smart Lists live inside your data: define a segment
            once by tag, custom field, stage, or behavior, and it updates itself the moment a
            contact or deal changes. No exports, no re-uploads, no stale lists.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "Manual list exports",
              "Spreadsheet filters",
              "Re-uploading CSVs",
              "The Friday-night list scrub",
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
                Your lists rot the moment you export them &mdash; so you keep scrubbing the same
                data over and over.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You need every estate planning prospect who&apos;s reached consult but hasn&apos;t
                signed. So someone exports the CRM, drops it in a spreadsheet, filters by stage, and
                mails it off. By the time the campaign sends, three of those prospects have signed,
                two have ghosted, and one never should have been on the list at all.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli Smart Lists don&apos;t export. They read the live data &mdash; contacts,
                opportunities, custom objects, and projects &mdash; and they update themselves the
                instant anything changes. The list you send to on Monday morning is the same list
                you send to on Friday at 5, because it&apos;s never a snapshot. It&apos;s a living
                segment.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Self-updating segments",
                  "Every entity, one builder",
                  "No exports, no re-uploads",
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

      {/* ===== SMART LIST MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              The segment builder your firm actually needs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              One builder for every kind of record in your CRM.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch the entity to see how the same rules organize contacts, opportunities, custom
              objects, and projects &mdash; all living, all auto-updating, all inside Leadli.
            </p>
          </div>

          <SmartListMockup />
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
              Segments wired into the rest of your firm &mdash; not sitting next to it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {SMARTLIST_CAPABILITIES.map((cap) => {
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
                  Smart Lists are part of the single platform we configure around how your firm runs
                  &mdash; not a separate export tool you have to remember to run. No extra
                  subscription, no spreadsheet to babysit.
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

      {/* ===== DEEP DIVE: EVERY ENTITY + AUTO-UPDATING ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Layers className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Every entity, one builder
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Organize contacts, opportunities, custom objects, and projects &mdash; the same way.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A Smart List isn&apos;t just for contacts. Build a segment of every open estate
                planning opportunity above $3,000. A segment of every custom funding checklist
                that&apos;s stalled. A segment of every project in the Estate Planning space marked
                high priority. One builder, four kinds of data, one living list each.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Contacts &mdash; by tag, stage, field, or behavior",
                  "Opportunities &mdash; by pipeline, stage, and value",
                  "Custom objects &mdash; by type, status, and field",
                  "Projects &mdash; by space, status, and custom field",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <RefreshCw className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Auto-updating, never stale
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                The list you send to is the list that&apos;s true right now &mdash; not last
                Tuesday.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Define the rules once. A prospect signs? They leave the list. A deal moves to
                engagement sent? It joins the list. A custom field changes? The segment reshuffles
                itself. No one exports, no one scrubs, no one sends to a list that&apos;s been
                quietly wrong for a week.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Rules re-evaluate on every record change",
                  "Add or remove a rule and the list reshuffles instantly",
                  "One segment feeds email, SMS, and workflows &mdash; one source of truth",
                  "No CSV exports, no re-uploads, no &ldquo;wait, that list is old&rdquo;",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
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
              Your segments know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no &ldquo;does this match the CRM?&rdquo; The list reads
              the same data your contacts, deals, and payments run through &mdash; so it&apos;s
              always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {SMARTLIST_CONNECTIONS.map((conn) => {
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
              Smart Lists are just the start. Explore the rest of what&apos;s included with Leadli.
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
          <div className="mt-10 text-center">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:underline"
            >
              See the full Leadli platform
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let&apos;s organize every record in your firm.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll look at how you segment your data today, tell you honestly
            whether Leadli fits, and give you a clear estimate.
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

const SMARTLIST_CAPABILITIES: { title: string; body: string; icon: typeof ListFilter }[] = [
  {
    icon: Users,
    title: "Segments for contacts",
    body: "Build a list of every estate planning prospect at consult, every elder law intake this month, or every client due for an annual review &mdash; defined once, maintained forever.",
  },
  {
    icon: GitBranch,
    title: "Segments for opportunities",
    body: "Pull every open deal above $3,000, every probate matter in the creditor period, or every opportunity that&apos;s sat idle for nine days &mdash; straight off the live pipeline.",
  },
  {
    icon: Database,
    title: "Segments for custom objects",
    body: "Organize the records that aren&apos;t contacts or deals &mdash; funding checklists, review cycles, custom workflows &mdash; with the same rules and the same auto-updating logic.",
  },
  {
    icon: ListTodo,
    title: "Segments for projects",
    body: "List every high-priority task in your Estate Planning space, every matter that&apos;s stalled in drafting, or every project due this week &mdash; reading the same board your team works from.",
  },
  {
    icon: RefreshCw,
    title: "Auto-updating rules",
    body: "A prospect signs and leaves the list. A deal moves up in value and joins it. The segment re-evaluates on every change &mdash; no one touches it, no one breaks it.",
  },
  {
    icon: Tag,
    title: "Tag, field &amp; behavior rules",
    body: "Filter by any tag, any custom field, any stage, or any behavior (watched the pricing video, opened the last email). Combine rules with and / or logic &mdash; your words, not a template&apos;s.",
  },
  {
    icon: Zap,
    title: "One list, every channel",
    body: "Drop a Smart List into an email campaign, an SMS blast, or a workflow trigger. One segment feeds every channel &mdash; one source of truth, no re-uploading between tools.",
  },
  {
    icon: Layers,
    title: "Saved, shared &amp; reusable",
    body: "Save a segment once and reuse it across campaigns, dashboards, and automations. Share it with your team so everyone works off the same live list &mdash; not their own private export.",
  },
];

const SMARTLIST_CONNECTIONS: { label: string; icon: typeof ListFilter }[] = [
  { icon: Users, label: "Contacts & CRM" },
  { icon: GitBranch, label: "Opportunities" },
  { icon: Database, label: "Custom objects" },
  { icon: ListTodo, label: "Projects & tasks" },
  { icon: Mail, label: "Email campaigns" },
  { icon: Smartphone, label: "SMS & workflows" },
];
