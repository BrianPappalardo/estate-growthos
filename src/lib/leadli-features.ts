import type { LucideIcon } from "lucide-react";
import {
  Database,
  Calendar,
  Zap,
  Workflow,
  BarChart3,
  CreditCard,
  Star,
  Bot,
  MessageSquare,
  LayoutDashboard,
  Globe,
  FileSignature,
  Users,
  Phone,
  Mail,
  Share2,
  GraduationCap,
} from "lucide-react";

/**
 * The full Leadli feature catalog.
 *
 * `primary` features render as cards in the LeadliPage feature grid; the rest
 * render as linked chips in the "plus everything else" cluster. Every feature has
 * a slug so it can link out to its own detail page at /feature/$slug — those pages
 * are stubs for now and will be built out over time.
 */
export interface LeadliFeature {
  slug: string;
  name: string;
  category: string;
  icon: LucideIcon;
  tagline: string;
  description: string;
  replaces?: string;
  included: string[];
  primary: boolean;
  /** Optional partner callout (e.g. Confido Legal) rendered on the detail page. */
  partnerBadge?: string;
  partnerTitle?: string;
  partnerBody?: string;
}

export const LEADLI_FEATURES: LeadliFeature[] = [
  {
    slug: "crm",
    name: "CRM + Client Management",
    category: "Operations",
    icon: Database,
    tagline:
      "Every contact, conversation, and case in one place — never lost in a spreadsheet again.",
    description:
      "Leadli's CRM gives you a full pipeline view of every prospect and client, from first inquiry to signed engagement and beyond. Smart tags, custom fields, and a complete conversation history keep your team on the same page without retyping a thing.",
    replaces: "HubSpot, Pipedrive, Lawmatics, Clio Grow",
    included: [
      "Unlimited contacts & smart tags",
      "Visual opportunity pipeline",
      "Full conversation history per contact",
      "Custom fields mapped to your intake forms",
    ],
    primary: true,
  },
  {
    slug: "calendars",
    name: "Calendars & Booking",
    category: "Scheduling",
    icon: Calendar,
    tagline:
      "Round-robin scheduling that books the right consult to the right person — automatically.",
    description:
      "Offer a calendar link for every service you provide. Leadli handles round-robin assignment, intake forms, buffer times, and SMS confirmations so the right prospect lands on the right person's calendar without a single email thread.",
    replaces: "Calendly, Acuity, Chili Piper",
    included: [
      "A calendar link for every service",
      "Automatic round-robin & availability",
      "Intake forms attached to each booking",
      "Instant SMS & email confirmations",
    ],
    primary: true,
  },
  {
    slug: "marketing",
    name: "Marketing Campaigns",
    category: "Marketing",
    icon: Zap,
    tagline: "Drag-and-drop email campaigns and nurture sequences that run themselves.",
    description:
      "Build beautiful emails and automated nurture sequences in one visual builder. Segment your audience, trigger sends on behavior, and watch engagement — all without a separate marketing tool.",
    replaces: "Mailchimp, ActiveCampaign, Constant Contact",
    included: [
      "Visual drag-and-drop email builder",
      "Automated nurture & drip sequences",
      "Audience segmentation",
      "Broadcast & batch campaigns",
    ],
    primary: true,
  },
  {
    slug: "automation",
    name: "Automation & Workflows",
    category: "Operations",
    icon: Workflow,
    tagline: "Trigger-based workflows that respond the instant a prospect takes action.",
    description:
      "When someone submits a form, books a call, watches a video, or pays an invoice, Leadli fires the exact sequence you configured — no glue, no manual follow-up, nothing falling through the cracks.",
    replaces: "Zapier zaps & manual follow-up",
    included: [
      "Trigger-based automations",
      "If/else branching logic",
      "Multi-step sequences",
      "Native SMS, email & task actions",
    ],
    primary: true,
  },
  {
    slug: "reporting",
    name: "Reporting & Analytics",
    category: "Insights",
    icon: BarChart3,
    tagline: "See exactly where leads leak and where revenue lands — in real time.",
    description:
      "Custom dashboards pull from every part of the platform so you can track show rates, pipeline value, and campaign ROI without exporting a single spreadsheet.",
    replaces: "Spreadsheets & manual reporting",
    included: [
      "Custom dashboards",
      "Pipeline & revenue reporting",
      "Campaign performance tracking",
      "Real-time data across the platform",
    ],
    primary: true,
  },
  {
    slug: "payments",
    name: "Leadli Payments",
    category: "Payments",
    icon: CreditCard,
    tagline:
      "Built specifically for complicated funds routing — including Attorney IOLTA Trust accounts.",
    description:
      "Collect retainers, split earned fees from trust funds, and route payments to the right account automatically. Leadli Payments is included for every customer at no additional fee.",
    replaces: "Stripe, LawPay, separate trust accounting tools",
    included: [
      "Retainer & invoice collection",
      "Operating vs. trust account routing",
      "Recurring & payment plans",
      "Reconciliation-ready reporting",
    ],
    primary: true,
    partnerBadge: "Official Confido Legal Partner",
    partnerTitle: "Leadli Payments — built for complicated funds routing",
    partnerBody:
      "We built Leadli Payments specifically for complicated funds routing — like Attorney IOLTA Trust accounts. It's included for every customer at no additional fee. (Confido Legal fees still apply.)",
  },
  {
    slug: "reviews",
    name: "Reputation & Reviews",
    category: "Growth",
    icon: Star,
    tagline: "Automated review requests triggered the moment a client signs their final plan.",
    description:
      "Turn completed engagements into five-star Google reviews on autopilot, and respond to feedback from one inbox. No separate reputation tool required.",
    replaces: "Birdeye, Podium, Broadly",
    included: [
      "Automated review requests",
      "Google & Facebook integration",
      "Centralized review responses",
      "Reputation dashboard",
    ],
    primary: true,
  },
  {
    slug: "integrations",
    name: "Integrations & AI Tools",
    category: "Platform",
    icon: Bot,
    tagline:
      "A built-in AI assistant and clean integrations with the tools you can't live without.",
    description:
      "Leadli includes a conversation AI engine for smart response drafting and transcription. Need to connect practice management or specialized software? We integrate through webhooks and native connectors.",
    replaces: "Separate AI subscriptions & custom API glue",
    included: [
      "Built-in AI conversation engine",
      "Smart response drafting",
      "Webhook & native integrations",
      "Zapier-compatible",
    ],
    primary: true,
  },
  {
    slug: "inbox",
    name: "Unified Inbox",
    category: "Communication",
    icon: MessageSquare,
    tagline: "Email, SMS, and social messages in one inbox — answered in seconds, not hours.",
    description:
      "Every conversation with a prospect or client lives in one place, tied to their CRM record. Reply by email or text, assign to your team, and never lose track of a thread again.",
    replaces: "Email + separate SMS tools",
    included: [
      "Email, SMS & social in one view",
      "Threaded to each contact",
      "Team assignment & notes",
      "Two-way text conversations",
    ],
    primary: true,
  },
  {
    slug: "dashboards",
    name: "Custom Dashboards",
    category: "Insights",
    icon: LayoutDashboard,
    tagline: "The metrics that matter to your firm, laid out exactly how you want them.",
    description:
      "Build dashboards that surface the numbers you actually check — show rates, lead sources, average case value — and skip the noise. Drag, drop, and save your view.",
    replaces: "Scattered reports across tools",
    included: [
      "Drag-and-drop widgets",
      "Saved personal views",
      "Shared team dashboards",
      "Goal & KPI tracking",
    ],
    primary: true,
  },
  {
    slug: "websites",
    name: "Websites & Domain Hosting",
    category: "Web",
    icon: Globe,
    tagline: "Fast, hosted landing pages and full sites — on your domain, no separate stack.",
    description:
      "Build landing pages, funnels, and full websites inside Leadli with your own domain. Hosting, SSL, and lightning-fast load times are included, so you're not paying a separate platform to do the same job.",
    replaces: "WordPress maintenance & separate hosting",
    included: [
      "Funnel & landing page builder",
      "Custom domain hosting",
      "SSL & global CDN",
      "Built-in forms & tracking",
    ],
    primary: true,
  },
  {
    slug: "contracts",
    name: "Contracts & E-Signatures",
    category: "Legal",
    icon: FileSignature,
    tagline: "Legally binding e-signature for engagement letters and fee agreements.",
    description:
      "Send engagement letters, fee agreements, and disclosures for signature right inside the platform. Status tracking and automatic reminders keep documents moving without a separate e-sign subscription.",
    replaces: "DocuSign, PandaDoc, Adobe Sign",
    included: [
      "Built-in e-signature",
      "Engagement letter templates",
      "Status tracking & reminders",
      "Auto-filed to the client record",
    ],
    primary: true,
  },
  {
    slug: "class-bookings",
    name: "Class & Event Bookings",
    category: "Scheduling",
    icon: Users,
    tagline: "Register attendees for workshops, webinars, and seminars in one flow.",
    description:
      "Run group events with capacity limits, waitlists, and automated reminders. Every registrant flows straight into your CRM for follow-up.",
    replaces: "Eventbrite & separate registration tools",
    included: [
      "Capacity & waitlist management",
      "Automated reminders",
      "Registrant CRM sync",
      "Recurring event support",
    ],
    primary: false,
  },
  {
    slug: "power-dialer",
    name: "Power Dialer",
    category: "Sales",
    icon: Phone,
    tagline: "Call through your list fast, with notes logged automatically.",
    description:
      "Power through outreach with a click-to-call dialer that logs every call, voicemail drop, and note to the right contact — so follow-up never stalls.",
    replaces: "Separate dialer & call-logging tools",
    included: [
      "Click-to-call dialer",
      "Voicemail drop",
      "Auto-logged call notes",
      "List-based outreach",
    ],
    primary: false,
  },
  {
    slug: "email-sms",
    name: "Email & SMS Marketing",
    category: "Marketing",
    icon: Mail,
    tagline: "Two-way text and email marketing that actually gets read.",
    description:
      "Run compliant SMS and email marketing campaigns with two-way conversations, templates, and scheduling — built right into the same platform as your CRM.",
    replaces: "EZTexting, SimpleTexting, Podium",
    included: [
      "Two-way SMS conversations",
      "Template library",
      "Scheduled broadcasts",
      "Compliance & opt-out handling",
    ],
    primary: false,
  },
  {
    slug: "affiliate",
    name: "Affiliate & Referral Manager",
    category: "Growth",
    icon: Share2,
    tagline: "Track the referrals and partners that send you business.",
    description:
      "Run a referral or affiliate program with custom links, commission tracking, and payouts — so the partners sending you clients get credit automatically.",
    replaces: "Referral software & manual tracking",
    included: [
      "Custom referral links",
      "Commission tracking",
      "Partner portal",
      "Automated payouts",
    ],
    primary: false,
  },
  {
    slug: "courses",
    name: "Courses & Memberships",
    category: "Education",
    icon: GraduationCap,
    tagline: "Gated educational content and client libraries, all in one place.",
    description:
      "Deliver on-demand video modules, resource libraries, and membership content to educate prospects before they book and support clients after they sign.",
    replaces: "Kajabi, Teachable, Skool",
    included: [
      "Gated video modules",
      "Resource libraries",
      "Membership tiers",
      "Progress tracking",
    ],
    primary: false,
  },
  {
    slug: "communities",
    name: "Online Communities",
    category: "Education",
    icon: Users,
    tagline: "Bring your clients and prospects into a space you control.",
    description:
      "Host private communities where clients ask questions, share wins, and stay engaged between matters — without sending them to a third-party platform.",
    replaces: "Facebook Groups, Skool, Circle",
    included: [
      "Private member spaces",
      "Threaded discussions",
      "Member directories",
      "Moderation tools",
    ],
    primary: false,
  },
  {
    slug: "cloud-phone",
    name: "Cloud Phone System",
    category: "Communication",
    icon: Phone,
    tagline: "A firm phone number with call tracking, recording, and routing.",
    description:
      "Get a local firm number with call recording, call whisper, missed-call text-back, and routing rules — so every inbound call becomes a tracked lead.",
    replaces: "RingCentral, CallRail, Grasshopper",
    included: [
      "Local firm numbers",
      "Call recording & whisper",
      "Missed-call text-back",
      "Routing & voicemail",
    ],
    primary: false,
  },
];

export function getFeatureBySlug(slug: string): LeadliFeature | undefined {
  return LEADLI_FEATURES.find((f) => f.slug === slug);
}
