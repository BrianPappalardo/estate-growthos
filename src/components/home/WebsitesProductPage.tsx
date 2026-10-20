import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  Globe,
  Layout,
  SlidersHorizontal,
  ShieldCheck,
  Zap,
  Link as LinkIcon,
  FormInput,
  BarChart3,
  Workflow,
  Calendar,
  CreditCard,
  MessageSquare,
  Mail,
  Database,
  Layers,
  FileText,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";

/**
 * Dedicated sales page for the Leadli Websites + Domain Management product.
 *
 * Renders inside /feature/$slug when the slug is "websites". The header,
 * footer, and discovery modal are owned by the route, so this component
 * renders only the <main> content.
 */
export function WebsitesProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "websites" &&
      f.slug !== "crm" &&
      f.slug !== "calendars" &&
      f.slug !== "automation" &&
      f.slug !== "funnel-builder",
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
              Web · Sites &amp; Domains
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <Globe className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Websites &amp; Domain Management
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Fast, hosted landing pages, funnels, and full sites — on your own domain, with no
                separate hosting stack to babysit.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Build landing pages, funnels, and complete websites inside Leadli on your custom domain.
            Hosting, SSL, and a global CDN are baked in, and every form and page feeds straight into
            your CRM and automations — no WordPress plugins, no separate hosting bill, no Zapier
            glue.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {[
              "WordPress",
              "Wix",
              "Squarespace",
              "ClickFunnels",
              "Leadpages",
              "Separate hosting",
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
                Your website is a dead end — and the form submissions vanish into a black hole.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                A prospect finds you on Google at 11&nbsp;p.m. They read your page, like what they
                see, and fill out your contact form. That submission lands in a generic email inbox
                — or worse, in a WordPress plugin nobody checks. By the time someone copies their
                name into your CRM and drafts a reply on Thursday, they&apos;ve already booked a
                consult down the street.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli&apos;s websites plug that hole. Every page lives in the same platform as your
                CRM, calendars, and automations, so a form submission instantly creates a contact,
                fires a nurture sequence, and books the right consult — without a single retype or a
                third-party form tool.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Forms flow straight into the CRM",
                  "No plugin updates to babysit",
                  "Fast loads on a global CDN",
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

      {/* ===== BROWSER / PAGE BUILDER MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              One builder, zero handoffs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Drag a page together, and the form behind it is already wired up.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Every landing page, funnel step, and full site lives in Leadli — on your domain, with
              forms that talk to your CRM the instant they&apos;re submitted.
            </p>
          </div>

          {/* Browser-window mock */}
          <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
            {/* Browser chrome */}
            <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Layout className="w-4 h-4 text-amber-300" />
                <span className="text-sm font-bold">Page Builder · yourfirm.law</span>
              </div>
              <div className="flex items-center gap-3 text-xs text-slate-300">
                <span className="hidden sm:inline-flex items-center gap-1">
                  <ShieldCheck className="w-3.5 h-3.5 text-emerald-400" />
                  SSL · Live
                </span>
                <span className="flex items-center gap-1">
                  <Globe className="w-3.5 h-3.5" />
                  CDN
                </span>
              </div>
            </div>

            {/* URL bar */}
            <div className="bg-slate-50 border-b border-slate-200 px-5 py-2.5 flex items-center gap-2 text-xs text-slate-500">
              <div className="flex items-center gap-1.5">
                <span className="w-2.5 h-2.5 rounded-full bg-rose-400/80" />
                <span className="w-2.5 h-2.5 rounded-full bg-amber-400/80" />
                <span className="w-2.5 h-2.5 rounded-full bg-emerald-400/80" />
              </div>
              <div className="ml-2 flex-1 bg-white border border-slate-200 rounded-md px-3 py-1 font-mono text-[11px] truncate">
                https://yourfirm.law/book-a-consult
              </div>
              <span className="hidden sm:inline-flex items-center gap-1 text-emerald-600 font-bold">
                <Zap className="w-3.5 h-3.5" />
                98
              </span>
            </div>

            {/* Page preview */}
            <div className="p-6 sm:p-8 bg-slate-50/60">
              <div className="max-w-3xl mx-auto rounded-2xl bg-white border border-slate-200 shadow-sm overflow-hidden">
                {/* Mock hero */}
                <div className="p-6 sm:p-8 bg-gradient-to-br from-[#12193b] to-[#202c61] text-white">
                  <span className="text-[10px] font-extrabold uppercase tracking-widest text-amber-300">
                    Estate Planning Consult
                  </span>
                  <h3 className="mt-2 text-xl sm:text-2xl font-black tracking-tight">
                    Protect your family&apos;s legacy.
                  </h3>
                  <p className="mt-1.5 text-xs sm:text-sm text-slate-200 max-w-md">
                    Book a 30-minute consult and walk away with a clear plan — and a clear estimate.
                  </p>
                  <span className="mt-3 inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-amber-500 text-slate-950 text-xs font-extrabold">
                    Book My Consult
                    <ArrowRight className="w-3.5 h-3.5" />
                  </span>
                </div>

                {/* Mock form */}
                <div className="p-6 sm:p-7">
                  <div className="flex items-center gap-2 mb-3">
                    <FormInput className="w-4 h-4 text-[#3344b8]" />
                    <span className="text-[10px] font-extrabold uppercase tracking-widest text-[#3344b8]">
                      Built-in intake form
                    </span>
                  </div>
                  <div className="grid grid-cols-2 gap-3">
                    <div className="rounded-lg border border-slate-200 bg-slate-50 px-3 py-2 text-xs text-slate-400 font-medium">
                      Full name
                    </div>
                    <div className="rounded-lg border border-slate-200 bg-slate-50 px-3 py-2 text-xs text-slate-400 font-medium">
                      Email
                    </div>
                    <div className="rounded-lg border border-slate-200 bg-slate-50 px-3 py-2 text-xs text-slate-400 font-medium">
                      Phone
                    </div>
                    <div className="rounded-lg border border-slate-200 bg-slate-50 px-3 py-2 text-xs text-slate-400 font-medium">
                      Service of interest
                    </div>
                  </div>
                  <div className="mt-3 flex flex-wrap items-center gap-1.5">
                    <span className="text-[9px] font-bold px-1.5 py-0.5 rounded bg-emerald-50 text-emerald-700 border border-emerald-200">
                      → CRM record created
                    </span>
                    <span className="text-[9px] font-bold px-1.5 py-0.5 rounded bg-blue-50 text-[#3344b8] border border-blue-100">
                      → Nurture sequence fired
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
              <span className="font-semibold">1 page · 1 form · 0 plugins · 0 handoffs</span>
              <span className="flex items-center gap-1.5 font-bold text-[#3344b8]">
                <LinkIcon className="w-3.5 h-3.5" />
                Connected to your domain
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
              A web presence built around how your firm actually captures leads.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {WEBSITE_CAPABILITIES.map((cap) => {
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
                  Your website is part of the single platform we configure around the way your firm
                  actually works. No separate hosting bill, no plugin updates, no WordPress login to
                  remember.
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

      {/* ===== DOMAIN/CDN + FORMS DIVE ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <ShieldCheck className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Your domain, your brand
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Host on your own domain — with SSL and a global CDN baked in.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Point your domain at Leadli and you&apos;re live — no separate hosting account, no
                renewals to chase, no SSL certificate to install by hand. Pages load fast from a
                global CDN, and there&apos;s no plugin update to break your site at 2&nbsp;a.m. on a
                Sunday.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Custom domain hosting with automatic SSL",
                  "Global CDN for fast loads anywhere",
                  "No WordPress plugin or theme updates to manage",
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
                <FormInput className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Forms wired to the CRM
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Every form submission becomes a contact — instantly.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Drop a form on any page, and the moment it&apos;s submitted Leadli creates a CRM
                record, tags the lead, fires the right nurture sequence, and pings your team. No
                separate form tool, no Zapier zap, no copy-pasting into a spreadsheet. The page and
                the pipeline are the same system.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Drag-and-drop form builder with custom fields",
                  "Submissions auto-filed to the contact record",
                  "Trigger any workflow the second a form is filled out",
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
              Your pages know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No Zapier glue, no re-typing. A form fill on the site becomes a lead in your CRM —
              automatically.
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
              Websites are just the start. Explore the rest of what&apos;s included with Leadli.
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
            30 minutes. We&apos;ll learn how your site captures leads today, tell you honestly
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

const WEBSITE_CAPABILITIES: { title: string; body: string; icon: typeof Globe }[] = [
  {
    icon: Layout,
    title: "Drag-and-drop page builder",
    body: "Build landing pages, funnels, and full sites in one visual editor. Drop in your branding, reorder sections, and preview on mobile — no developer, no separate stack.",
  },
  {
    icon: Globe,
    title: "Custom domain & hosting",
    body: "Point your own domain at Leadli and go live. Hosting and SSL are included, so you're not paying a second bill to keep a separate site online.",
  },
  {
    icon: FormInput,
    title: "Forms that feed the CRM",
    body: "Every form submission creates a contact, applies a tag, and can trigger an automation — the instant it's filled out. No form tool, no Zapier, no copy-paste.",
  },
  {
    icon: Layers,
    title: "Funnels & multi-step flows",
    body: "String pages into a full funnel with built-in tracking, conversion events, and follow-up sequences. See exactly where prospects drop off and where they book.",
  },
  {
    icon: ShieldCheck,
    title: "SSL & global CDN",
    body: "Automatic SSL and a fast global CDN keep your pages loading quickly and securely — no certificate to renew, no plugin to break your site overnight.",
  },
  {
    icon: SlidersHorizontal,
    title: "Customizable, not cookie-cutter",
    body: "We build your pages around your firm's real intake — not a template we drop on top. No documented process? We'll help you create one as part of the build.",
  },
  {
    icon: BarChart3,
    title: "Conversion tracking built in",
    body: "See which page, which form, and which source drove each booking — without a separate analytics tool. Know what's working and where leads are leaking.",
  },
  {
    icon: FileText,
    title: "Built-in content & blogging",
    body: "Publish pages, posts, and lead magnets on your domain with SEO controls baked in — so your content lives where your leads do, not on a third-party platform.",
  },
];

const CONNECTIONS: { label: string; icon: typeof Globe }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Calendar, label: "Calendars & booking" },
  { icon: Workflow, label: "Automations" },
  { icon: Mail, label: "Email & SMS" },
  { icon: CreditCard, label: "Payments" },
  { icon: MessageSquare, label: "Unified inbox" },
];
