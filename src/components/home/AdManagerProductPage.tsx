import {
  Megaphone,
  Target,
  BarChart3,
  Wallet,
  Users,
  RefreshCw,
  Filter,
  TrendingUp,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Marketing · Ad Manager",
  icon: Megaphone,
  title: "Leadli Ad Manager",
  subtitle:
    "Launch and track ad campaigns alongside your funnel and CRM — so you finally know which ads actually drive clients.",
  body: "Manage ad creative, audiences, and spend from one dashboard tied to your Leadli funnel and CRM. Instead of guessing which campaign produced the client who signed last week, you see the full path: ad click → landing page → consult → signed engagement. No spreadsheet tracking, no “where did you find us?” intake question.",
  replaces: ["Spreadsheet ad tracking", "Disconnected ad platforms", "Manual lead attribution"],
  leakHeading: "You’re paying for ads you can’t tie to a single signed client.",
  leakBody: [
    "You run Facebook and Google ads, and every month you spend hours pulling reports into a spreadsheet trying to figure out what’s working. But the ad platform knows about clicks; your CRM knows about consults; your practice management software knows about signed matters. None of them talk. So you keep paying for the campaign that “seems” busy while the one that actually closes clients quietly runs out of budget.",
    "Leadli Ad Manager closes that loop. The ad that brought in the click is the same record that became the consult, the engagement, and the signed matter — all in one pipeline. You see cost per signed client, not just cost per click, and you can finally turn off the ads that don’t produce clients.",
  ],
  leakChips: [
    "Cost per signed client, not per click",
    "Full ad-to-matter attribution",
    "Audience sync from your CRM",
    "One dashboard for every platform",
  ],
  mockupHeading: "See which ads actually become clients.",
  mockupSubhead:
    "Ad spend, leads, consults, and signed matters side by side — with per-campaign cost per client and ROI.",
  whatYouGetHeading: "Ad spend you can finally justify.",
  capabilities: [
    {
      icon: Target,
      title: "Campaign management",
      body: "Launch and manage campaigns across platforms from one dashboard — creative, budget, and schedule in one place.",
    },
    {
      icon: Users,
      title: "Audience sync",
      body: "Push your Leadli Smart Lists straight to your ad platforms as audiences, so your targeting stays current without manual exports.",
    },
    {
      icon: Wallet,
      title: "Spend tracking",
      body: "See what each campaign costs in real time, alongside what it produced — no end-of-month spreadsheet reconciliation.",
    },
    {
      icon: BarChart3,
      title: "Lead attribution",
      body: "Every lead carries its source through the pipeline, so you know which ad produced the consult that became a client.",
    },
    {
      icon: RefreshCw,
      title: "Auto-refresh audiences",
      body: "As contacts move stages, your ad audiences update automatically — retarget the warm, exclude the signed.",
    },
    {
      icon: TrendingUp,
      title: "ROI reporting",
      body: "Cost per lead, per consult, and per signed client per campaign — the numbers that actually tell you what to scale.",
    },
  ],
  deepDive: {
    left: {
      label: "Attribution",
      heading: "From ad click to signed matter, in one record.",
      body: "When Sarah clicks your Facebook ad, lands on your funnel, books a consult, and signs an engagement letter, that’s one continuous record in Leadli — not four entries in four tools. So when you ask “did that campaign work?” the answer isn’t a guess from a spreadsheet. It’s the signed matter, tied back to the ad.",
      bullets: [
        "Source follows the contact through every stage",
        "Cost per signed client, per campaign",
        "No “where did you hear about us?” intake question",
      ],
    },
    right: {
      label: "Audiences",
      heading: "Your CRM segments become your ad targeting.",
      body: "Build a Smart List of past clients whose trust is three years old, sync it to your ad platform as a custom audience, and run a review-campaign aimed exactly at them. When someone books, they leave the audience automatically. No CSV exports, no stale lists, no retargeting people who already hired you.",
      bullets: [
        "Smart Lists sync to ad platforms automatically",
        "Exclude signed clients from retargeting",
        "Refresh audiences as contacts move stages",
      ],
    },
  },
  useCases: [
    {
      icon: Target,
      title: "The consult campaign",
      body: "Run a local awareness ad aimed at booking consults. Leadli attributes every booked consult back to the ad, so you know your true cost per consult — not just cost per click.",
      trigger: "Real cost per consult",
    },
    {
      icon: Users,
      title: "The past-client reactivation",
      body: "Sync a Smart List of clients due for a trust review to a custom audience and run a small retargeting campaign. The people who already know you are your cheapest converts.",
      trigger: "Cheapest cost per client",
    },
    {
      icon: Filter,
      title: "The exclusion cleanup",
      body: "Automatically exclude anyone who’s already signed or booked from your retargeting, so you stop paying to show ads to people who are already your clients.",
      trigger: "Stops wasted spend",
    },
  ],
  connections: {
    heading: "Your ad spend finally connects to your revenue.",
    subhead:
      "The ad isn’t a separate line item in a separate tool — it’s the first step of a pipeline that ends in a signed matter.",
    items: [
      { icon: Users, label: "Custom ad audiences" },
      { icon: BarChart3, label: "Pipeline & reports" },
      { icon: Target, label: "Funnel builder" },
      { icon: Megaphone, label: "Campaign management" },
      { icon: Wallet, label: "Spend tracking" },
      { icon: TrendingUp, label: "ROI reporting" },
    ],
  },
  finalCtaHeading: "Let’s make your ad spend accountable.",
  finalCtaBody:
    "30 minutes. We’ll map your current ad-to-client path, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "ad-manager",
    "custom-ad-audiences",
    "marketing",
    "trigger-links",
    "automation",
  ],
};

export function AdManagerProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
