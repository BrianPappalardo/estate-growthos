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
  },
];

export function getFunctionBySlug(slug: string): LeadliFunction | undefined {
  return LEADLI_FUNCTIONS.find((f) => f.slug === slug);
}
