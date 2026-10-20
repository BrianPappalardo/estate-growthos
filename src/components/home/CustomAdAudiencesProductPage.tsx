import {
  UsersRound,
  RefreshCw,
  Users,
  Target,
  Filter,
  TrendingUp,
  Layers,
  Repeat,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Marketing · Custom Ad Audiences",
  icon: UsersRound,
  title: "Leadli Custom Ad Audiences",
  subtitle:
    "Push your CRM segments straight to your ad platforms &mdash; automatically, so your targeting never goes stale.",
  body: "Build a Smart List once &mdash; past clients due for a review, prospects who booked but didn&rsquo;t sign, anyone who opened your last email &mdash; and Leadli syncs it to your ad platform as a custom audience that refreshes itself. No manual CSV exports, no &ldquo;audience is too small&rdquo; surprises from a list you forgot to update, no retargeting people who already hired you.",
  replaces: [
    "Manual audience uploads",
    "Stale CSV exports",
    "Retargeting signed clients by mistake",
  ],
  leakHeading: "Your ad audiences are a stale spreadsheet you update when you remember.",
  leakBody: [
    "Every quarter you export a list of past clients, scrub it in Excel, upload it to Facebook, and hope it&rsquo;s still accurate by the time the campaign runs. Meanwhile, twelve of those people already signed, three moved away, and twenty new clients never made it onto the list. So your &ldquo;past client&rdquo; audience is half wrong, your retargeting wastes money on people who already hired you, and your lookalike audience is built on bad data.",
    "Leadli Custom Ad Audiences fixes that by making your CRM the source of truth for your ad targeting. A Smart List is a live query against your CRM &mdash; it updates the moment a contact&rsquo;s data changes &mdash; and it syncs to your ad platform automatically. The audience you target is always current, always accurate, and never includes someone who already signed.",
  ],
  leakChips: [
    "Auto-refreshing audiences",
    "No CSV exports or uploads",
    "Exclude signed clients automatically",
    "Build lookalikes from clean data",
  ],
  mockupHeading: "Your CRM is your best ad-targeting tool.",
  mockupSubhead:
    "Smart Lists sync to ad platforms as custom audiences that refresh themselves &mdash; and exclude anyone who&rsquo;s already a client.",
  whatYouGetHeading: "Audiences that stay accurate without you touching them.",
  capabilities: [
    {
      icon: Users,
      title: "CRM-to-ad sync",
      body: "Any Smart List &mdash; contacts, opportunities, or custom objects &mdash; syncs to your ad platform as a custom audience automatically.",
    },
    {
      icon: RefreshCw,
      title: "Auto-refresh",
      body: "As contacts move stages, sign, or go quiet, the audience updates on its own &mdash; no manual re-upload.",
    },
    {
      icon: Filter,
      title: "Segment audiences",
      body: "Build audiences from any CRM field &mdash; pipeline stage, last consult date, practice area, or a custom tag &mdash; with and/or logic.",
    },
    {
      icon: Target,
      title: "Lookalike seeding",
      body: "Seed lookalike audiences from your best client segments &mdash; the people most like the clients who actually sign &mdash; not from a generic list.",
    },
    {
      icon: Repeat,
      title: "Stage-based exclusion",
      body: "Automatically remove signed clients and booked consults from retargeting so you stop paying to advertise to people who already hired you.",
    },
    {
      icon: Layers,
      title: "Stack with ad manager",
      body: "Pairs with Leadli Ad Manager so every synced audience has spend and attribution tied back to signed matters.",
    },
  ],
  deepDive: {
    left: {
      label: "Live segments",
      heading: "A Smart List is a query, not a static list.",
      body: "When you build a Smart List of &ldquo;past clients whose trust is 3+ years old,&rdquo; it&rsquo;s a live rule against your CRM. The moment a client crosses that three-year mark, they&rsquo;re in the audience. The moment they book a review, they&rsquo;re out. You build the rule once; the audience stays perfect forever.",
      bullets: [
        "Rules against any CRM field, with and/or logic",
        "Updates the moment a contact&rsquo;s data changes",
        "Works for contacts, opportunities & custom objects",
      ],
    },
    right: {
      label: "Clean lookalikes",
      heading: "Lookalikes built from the clients who actually sign.",
      body: "Most firms seed lookalike audiences from a generic email list. Leadli lets you seed from your highest-value segment &mdash; clients who signed a trust at full fee &mdash; so the platform finds people who look like your actual clients, not just people who once gave you an email address.",
      bullets: [
        "Seed from signed-matter segments, not raw leads",
        "Refresh the seed audience as you sign new clients",
        "Better targeting from day one of the campaign",
      ],
    },
  },
  useCases: [
    {
      icon: Users,
      title: "The review reactivation",
      body: "Sync clients whose trust is 3+ years old to a custom audience and run a small review-campaign. They already trust you &mdash; they&rsquo;re your cheapest converts.",
      trigger: "Cheapest cost per client",
    },
    {
      icon: Target,
      title: "The lookalike build",
      body: "Seed a lookalike from clients who signed a full-fee trust. The platform finds people who look like your real clients, not your whole email list.",
      trigger: "Better leads from day one",
    },
    {
      icon: Repeat,
      title: "The exclusion fix",
      body: "Automatically drop signed clients and booked consults from retargeting. Stop paying to show ads to people who already hired you.",
      trigger: "Cuts wasted spend",
    },
  ],
  connections: {
    heading: "Your targeting finally matches your pipeline.",
    subhead:
      "The audience isn&rsquo;t a separate list in a separate tool &mdash; it&rsquo;s a live view of the same contacts your pipeline, calendars, and campaigns already know.",
    items: [
      { icon: Users, label: "Smart Lists & segments" },
      { icon: RefreshCw, label: "Auto-refresh" },
      { icon: Target, label: "Lookalike seeding" },
      { icon: Repeat, label: "Stage-based exclusion" },
      { icon: TrendingUp, label: "Ad ROI reporting" },
      { icon: Layers, label: "Ad manager" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s point your ads at the right people.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map your current audiences, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "custom-ad-audiences",
    "ad-manager",
    "smart-lists",
    "marketing",
    "automation",
  ],
};

export function CustomAdAudiencesProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
