import { Megaphone, HandCoins, Workflow, Bot, Globe, type LucideIcon } from "lucide-react";

export interface LeadliFunction {
  slug: string;
  name: string;
  tagline: string;
  description: string;
  icon: LucideIcon;
  /** Hex accent used for the hero icon chip and section highlights. */
  accent: string;
  /** Leadli feature slugs that belong to this function. */
  featureSlugs: string[];
  /** Bespoke section copy. Each falls back to a sensible templated default. */
  featureGridHeading?: string;
  featureGridSub?: string;
  whatYouGetHeading?: string;
  whatYouGetBody?: string;
  otherFunctionsHeading?: string;
  finalCtaHeading?: string;
  finalCtaSub?: string;
}

export const LEADLI_FUNCTIONS: LeadliFunction[] = [
  {
    slug: "marketing-growth",
    name: "Marketing & Growth",
    tagline: "Attract attention, nurture interest, and turn strangers into booked conversations.",
    description:
      "Everything you use to get found, stay top of mind, and fill the top of your pipeline — email, text, social, ads, reviews, webinars, and the funnels that tie them together. No separate marketing stack, no copy-pasting audiences between tools.",
    icon: Megaphone,
    accent: "#f97316",
    featureSlugs: [
      "marketing",
      "email-marketing",
      "sms-marketing",
      "social-scheduler",
      "ad-manager",
      "custom-ad-audiences",
      "trigger-links",
      "webinar-funnels",
      "countdown-timers",
      "reviews",
      "affiliate",
    ],
    featureGridHeading: "Fill the top of your pipeline — without a second marketing stack.",
    featureGridSub:
      "Email, text, social, ads, reviews, and webinars — all running from the same platform that already holds your contacts. No copy-pasting audiences between tools, no second login for every campaign.",
    whatYouGetHeading: "Marketing that remembers what every prospect did.",
    whatYouGetBody:
      "Most marketing tools don't talk to your CRM, so you end up marketing to strangers you've already met. Leadli flips that — every email, ad, and post is built on the same contact record, so you can target people who watched your pricing video, skipped it, or booked and no-showed. You stop shouting into the void and start talking to the right people.",
    otherFunctionsHeading: "Marketing is the top of the funnel — here's the rest of the path.",
    finalCtaHeading: "Let's see if your marketing can finally run from one place.",
    finalCtaSub:
      "30 minutes. We'll look at how you attract and nurture leads today, and tell you honestly whether Leadli can replace the stack behind it.",
  },
  {
    slug: "sales-revenue",
    name: "Sales & Revenue",
    tagline:
      "From the first inquiry to a signed engagement and a deposited check — one connected path.",
    description:
      "The whole path a prospect walks to become a paying client: the CRM that tracks them, the calendar that books them, the contract they sign, and the payment that lands in the right account. One record, start to finish, so nothing falls through the cracks.",
    icon: HandCoins,
    accent: "#10b981",
    featureSlugs: [
      "crm",
      "opportunity-pipelines",
      "calendars",
      "service-calendars",
      "class-bookings",
      "contracts",
      "payments",
      "invoices-estimates",
      "products-inventory",
      "coupons-gift-cards",
      "ecommerce-shipping",
    ],
    featureGridHeading: "From first inquiry to deposited check — one connected path.",
    featureGridSub:
      "The CRM that tracks them, the calendar that books them, the contract they sign, and the payment that lands in the right account. One record, start to finish — so nothing falls through the cracks between tools.",
    whatYouGetHeading: "The whole revenue path, on a single record.",
    whatYouGetBody:
      "Right now a lead lives in your CRM, gets booked in a separate scheduler, signed in a separate e-sign tool, and paid through a separate processor — four tools, four logins, and four chances to lose the thread. Leadli keeps the entire journey on one contact: the form they filled out, the consult they booked, the engagement letter they signed, and the check that landed in your trust account. You see the whole story without switching tabs.",
    otherFunctionsHeading: "Revenue is the path — here are the systems that feed and follow it.",
    finalCtaHeading: "Let's see if your sales path can run end to end.",
    finalCtaSub:
      "30 minutes. We'll walk your pipeline from first inquiry to signed engagement and tell you where the thread keeps dropping.",
  },
  {
    slug: "operations-automation",
    name: "Operations & Automation",
    tagline: "The behind-the-scenes engine that keeps every lead, task, and report in sync.",
    description:
      "The systems your team runs on: visual workflows that fire the moment something happens, projects tied to the deals they belong to, saved segments that update themselves, forms that feed the CRM, and the reporting that tells you what's working — all on one platform.",
    icon: Workflow,
    accent: "#3344b8",
    featureSlugs: [
      "automation",
      "visual-workflow-builder",
      "task-management",
      "smart-lists",
      "forms-surveys-quizzes",
      "reporting",
      "dashboards",
      "custom-metrics",
    ],
    featureGridHeading: "The engine room — where every lead, task, and report stays in sync.",
    featureGridSub:
      "Visual workflows that fire the moment something happens, projects tied to the deals they belong to, saved segments that update themselves, and the reporting that tells you what's actually working. This is the part of your firm that should run itself.",
    whatYouGetHeading: "Automation that runs your firm while you run your firm.",
    whatYouGetBody:
      "The leakiest part of most firms isn't the marketing — it's the handoffs. The form that never reaches the CRM, the task that never gets created, the report nobody has time to pull. Leadli closes those gaps with workflows that fire on real events, tasks that live next to the deals they belong to, and dashboards that update themselves. You stop being the glue between your tools.",
    otherFunctionsHeading: "Operations is the engine — here's what it powers.",
    finalCtaHeading: "Let's see if your operations can stop running on memory.",
    finalCtaSub:
      "30 minutes. We'll map how work moves through your firm today and show you where automation could be doing it instead.",
  },
  {
    slug: "communication-ai",
    name: "Communication & AI",
    tagline:
      "Every conversation in one place — and an AI team that never misses a message or a call.",
    description:
      "Email, text, phone, and live chat funneled into a single inbox tied to each contact. Add a cloud phone number, a power dialer for outreach, and AI that answers calls and builds agents inside your workflows — plus a real human concierge team when you need one.",
    icon: Bot,
    accent: "#8b5cf6",
    featureSlugs: [
      "inbox",
      "email-sms",
      "cloud-phone",
      "power-dialer",
      "web-chat",
      "integrations",
      "voice-ai",
      "ai-agent-studio",
      "support-concierge",
    ],
    featureGridHeading: "Every conversation in one place — answered in seconds, not hours.",
    featureGridSub:
      "Email, text, phone, and live chat funneled into a single inbox tied to each contact. Add a cloud phone number, a power dialer for outreach, and AI that answers calls and builds agents inside your workflows — plus a real human concierge team when you need one.",
    whatYouGetHeading: "One inbox, one phone system, and an AI team that never clocks out.",
    whatYouGetBody:
      "Most firms lose leads not because nobody cares, but because the message landed in a place nobody checked. Leadli pulls every channel — email, text, phone, chat — into one inbox tied to the contact it belongs to, so the right person sees it and the record stays whole. Layer in a cloud phone number, a power dialer, and AI that answers and routes, and your response time drops from hours to seconds.",
    otherFunctionsHeading: "Communication is how you close — here's the rest of the system.",
    finalCtaHeading: "Let's see if your response time can stop costing you clients.",
    finalCtaSub:
      "30 minutes. We'll look at where your conversations live today and whether one inbox — and an AI team — could close the gap.",
  },
  {
    slug: "client-experience-web",
    name: "Client Experience & Web",
    tagline:
      "The client-facing side of your firm: your site, your portal, your content, your community.",
    description:
      "Where your clients and prospects actually meet you — fast, hosted websites and funnels on your domain, a branded portal for documents and messages, gated courses and communities that educate and retain, and the little touches like QR codes and v-cards that bridge print to your CRM.",
    icon: Globe,
    accent: "#0ea5e9",
    featureSlugs: [
      "websites",
      "funnel-builder",
      "client-portal",
      "media-storage",
      "courses",
      "communities",
      "qr-codes",
      "v-cards",
    ],
    featureGridHeading: "Where your clients actually meet you — fast, branded, and on your domain.",
    featureGridSub:
      "Fast, hosted websites and funnels on your domain, a branded portal for documents and messages, gated courses and communities that educate and retain, and the little touches like QR codes and v-cards that bridge print to your CRM.",
    whatYouGetHeading: "The client-facing side of your firm, built to impress.",
    whatYouGetBody:
      "Your clients judge your firm by the experience, not just the work. A clunky intake form or a portal that won't load erodes trust before they ever sign. Leadli gives you the client-facing layer — websites, portals, courses, and communities — on the same platform as your CRM, so a prospect who fills out a form is already in your system before you've even said hello.",
    otherFunctionsHeading: "Client experience is the front door — here's the house behind it.",
    finalCtaHeading: "Let's see if your client experience can stop being an afterthought.",
    finalCtaSub:
      "30 minutes. We'll look at how clients find and interact with you today and where a branded, connected experience could do the heavy lifting.",
  },
];

export function getFunctionBySlug(slug: string): LeadliFunction | undefined {
  return LEADLI_FUNCTIONS.find((f) => f.slug === slug);
}
