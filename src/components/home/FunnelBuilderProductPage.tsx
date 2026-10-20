import {
  ListFilter,
  Globe,
  MousePointerClick,
  Filter,
  BarChart3,
  Zap,
  Split,
  Mail,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Web · Funnel Builder",
  icon: ListFilter,
  title: "Leadli Funnel Builder",
  subtitle:
    "High-converting funnels and landing pages on your domain — with forms, tracking, and CRM sync built in.",
  body: "Design multi-step funnels and landing pages that capture leads, book consults, and sell services — all on your own domain, with built-in forms, conversion tracking, and automatic CRM sync. No separate page builder, no embed code, no “is this the same person who filled out the other form?” The funnel is part of the same platform that holds the contact, the pipeline, and the follow-up.",
  replaces: ["ClickFunnels", "Leadpages", "Unbounce", "Separate page builders"],
  leakHeading: "Your landing pages live in a tool that doesn’t know your CRM exists.",
  leakBody: [
    "You build a landing page in ClickFunnels, embed a form, and send traffic to it. The form submits to your email tool, which (maybe) sends the lead to your CRM via Zapier, which (sometimes) creates the contact. Three tools, two integrations, and a dozen ways for a lead to silently disappear. And when the page needs to change, you’re editing it in a separate builder that doesn’t know what happens after the submit.",
    "Leadli Funnel Builder collapses all of that into one platform. The page, the form, the contact, the pipeline stage, and the follow-up automation are all the same record. A submit creates a contact, moves a pipeline, fires a workflow, and books a consult — with no glue layer and no lost leads.",
  ],
  leakChips: [
    "Forms, tracking & CRM sync built in",
    "On your own domain",
    "No Zapier glue layer",
    "One record from page to pipeline",
  ],
  mockupHeading: "A funnel that’s part of your CRM, not bolted on.",
  mockupSubhead:
    "Multi-step funnels with conversion tracking at every step — and every submit creates a contact and moves a pipeline automatically.",
  whatYouGetHeading: "Funnels that capture, qualify, and book — in one platform.",
  capabilities: [
    {
      icon: Globe,
      title: "Funnel & page builder",
      body: "Drag-and-drop multi-step funnels and standalone landing pages, hosted on your own domain with SSL and a global CDN.",
    },
    {
      icon: MousePointerClick,
      title: "Step-by-step tracking",
      body: "See drop-off at every step of the funnel — where they abandon, where they convert — and fix the leak, not the whole page.",
    },
    {
      icon: Filter,
      title: "Built-in forms",
      body: "Forms are native to the builder, so a submit creates a contact and fires a workflow with no embed code or integration.",
    },
    {
      icon: BarChart3,
      title: "Conversion tracking",
      body: "Per-funnel and per-step conversion rates, tied back to the ad source and the contact who converted.",
    },
    {
      icon: Zap,
      title: "CRM & workflow sync",
      body: "Every submit creates or updates a contact, moves a pipeline stage, and triggers the right follow-up automatically.",
    },
    {
      icon: Split,
      title: "Conditional funnel paths",
      body: "Branch the funnel based on form answers — send estate planning leads one way, probate another — without a second page.",
    },
  ],
  deepDive: {
    left: {
      label: "One record",
      heading: "The page, the form, and the contact are the same thing.",
      body: "When a prospect submits your consult-request form, there’s no handoff to another tool. The submit creates a contact in your CRM, drops them into the right pipeline stage, and fires the welcome-and-booking workflow — all from the same record the page lives on. No Zapier, no missing leads, no “which form did this come from?”",
      bullets: [
        "Submit creates a contact instantly",
        "Pipeline stage set automatically",
        "Follow-up workflow fires with no glue",
      ],
    },
    right: {
      label: "Step tracking",
      heading: "Find the leak, not just the page.",
      body: "A funnel that loses 60% of people between step two and three is a different problem than one that loses them at the form. Leadli shows you drop-off at every step, so you fix the exact moment people leave — not rebuild the whole funnel on a hunch.",
      bullets: [
        "Per-step conversion and drop-off rates",
        "Tied back to ad source and contact",
        "Fix the leak, not the whole page",
      ],
    },
  },
  useCases: [
    {
      icon: Globe,
      title: "The consult-request funnel",
      body: "A two-step funnel: a short form, then a calendar. Drop-off between the two tells you whether your form is too long or your calendar’s too empty.",
      trigger: "More booked consults",
    },
    {
      icon: Mail,
      title: "The lead-magnet funnel",
      body: "An opt-in page that delivers a guide and drops the contact into a nurture sequence — all in one platform, no separate landing tool.",
      trigger: "Builds your list",
    },
    {
      icon: Split,
      title: "The practice-area split",
      body: "One funnel that branches by form answer: estate planning leads see trust content, probate leads see probate content — without two separate pages.",
      trigger: "Right message per lead",
    },
  ],
  connections: {
    heading: "Your funnel is the front door to your whole platform.",
    subhead:
      "The page isn’t a standalone asset in a separate builder — it’s the first step of a pipeline that ends in a signed matter.",
    items: [
      { icon: Filter, label: "Forms & surveys" },
      { icon: Zap, label: "Automation builder" },
      { icon: BarChart3, label: "Pipeline & reports" },
      { icon: Globe, label: "Websites & domains" },
      { icon: Mail, label: "Email & SMS follow-up" },
      { icon: MousePointerClick, label: "Conversion tracking" },
    ],
  },
  finalCtaHeading: "Let’s build funnels that actually convert.",
  finalCtaBody:
    "30 minutes. We’ll map the funnels you need, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "funnel-builder",
    "websites",
    "forms-surveys-quizzes",
    "marketing",
    "automation",
  ],
};

export function FunnelBuilderProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
