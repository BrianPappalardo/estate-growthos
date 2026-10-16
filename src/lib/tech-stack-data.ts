// The default tech-stack catalog for the software savings calculator.
// Kept in its own module so the component stays small and this list is
// easy to audit/edit without touching the UI.

export interface ToolItem {
  id: string;
  category: string;
  name: string;
  examples: string;
  pricingType: "flat" | "per_user";
  defaultPrice: number; // monthly
  leadliFeature: string;
  dropLabel: string; // the "Drop your X" headline for this tool
  highlight?: boolean;
}

export const DEFAULT_TOOLS: ToolItem[] = [
  {
    id: "crm",
    category: "CRM & Pipelines",
    name: "CRM & Opportunity Pipeline",
    examples: "HubSpot, Pipedrive, Lawmatics, Clio Grow",
    pricingType: "per_user",
    defaultPrice: 55,
    leadliFeature:
      "Complete unlimited estate planning pipeline, contact history, smart tags & notes",
    dropLabel: "Drop your CRM subscription",
    highlight: true,
  },
  {
    id: "scheduling",
    category: "Scheduling",
    name: "Calendar & Consult Scheduling",
    examples: "Calendly, Acuity, Chili Piper",
    pricingType: "per_user",
    defaultPrice: 16,
    leadliFeature:
      "Unlimited service calendars with automatic round-robin, intake forms & SMS confirmation",
    dropLabel: "Drop your Calendly / scheduling tool",
    highlight: true,
  },
  {
    id: "email",
    category: "Marketing",
    name: "Email Marketing & Newsletters",
    examples: "Mailchimp, ActiveCampaign, Constant Contact",
    pricingType: "flat",
    defaultPrice: 65,
    leadliFeature:
      "Visual drag-and-drop email builder, automated nurture sequences & broadcast campaigns",
    dropLabel: "Drop your Mailchimp / email tool",
  },
  {
    id: "sms",
    category: "Communication",
    name: "Two-Way SMS & Text Outreach",
    examples: "SimpleTexting, EZTexting, Podium",
    pricingType: "flat",
    defaultPrice: 45,
    leadliFeature:
      "Direct 2-way SMS conversations, automated appointment reminders & text snippets",
    dropLabel: "Drop your separate texting app",
  },
  {
    id: "esign",
    category: "Legal & Contracts",
    name: "Contracts & e-Signatures",
    examples: "DocuSign, PandaDoc, Adobe Sign",
    pricingType: "per_user",
    defaultPrice: 35,
    leadliFeature:
      "Built-in legally binding e-Sign for engagement letters, fee agreements & disclosures",
    dropLabel: "Drop your DocuSign plan",
    highlight: true,
  },
  {
    id: "forms",
    category: "Intake",
    name: "Forms, Surveys & Questionnaires",
    examples: "Typeform, JotForm, Wufoo",
    pricingType: "flat",
    defaultPrice: 39,
    leadliFeature:
      "Custom multi-step estate planning intake forms that map directly into your CRM fields",
    dropLabel: "Drop your Typeform subscription",
  },
  {
    id: "funnels",
    category: "Web & Pages",
    name: "Landing Pages & Funnel Builder",
    examples: "ClickFunnels, Leadpages, Unbounce",
    pricingType: "flat",
    defaultPrice: 99,
    leadliFeature:
      "Fast-loading video education funnels, workshop registration pages & custom subdomains",
    dropLabel: "Drop your funnel builder",
  },
  {
    id: "zoom",
    category: "Video Meetings",
    name: "Video Conferencing (Zoom Replacement)",
    examples: "Zoom Pro, Google Meet Business",
    pricingType: "per_user",
    defaultPrice: 16,
    leadliFeature:
      "Native Leadli Video Rooms embedded right inside consult links — no separate Zoom licenses required",
    dropLabel: "Drop your Zoom account",
    highlight: true,
  },
  {
    id: "loom",
    category: "Video Messaging",
    name: "Screen & Video Recording (Loom Replacement)",
    examples: "Loom Business, Vidyard",
    pricingType: "per_user",
    defaultPrice: 15,
    leadliFeature:
      "Record custom walkthroughs of drafts or quick client messages directly from your unified inbox",
    dropLabel: "Drop your Loom account",
    highlight: true,
  },
  {
    id: "pm",
    category: "Operations",
    name: "Project & Task Management",
    examples: "Asana, Monday.com, ClickUp, Trello",
    pricingType: "per_user",
    defaultPrice: 14,
    leadliFeature:
      "Firm task boards, automated onboarding checklists, milestone triggers & staff assignment",
    dropLabel: "Drop your Asana subscription",
    highlight: true,
  },
  {
    id: "chat",
    category: "Intake",
    name: "Website Live Chat & Web Widget",
    examples: "Intercom, Drift, Tidio",
    pricingType: "flat",
    defaultPrice: 79,
    leadliFeature:
      "On-site lead capture widget that routes incoming inquiries straight into SMS & CRM pipelines",
    dropLabel: "Drop your live chat tool",
  },
  {
    id: "reviews",
    category: "Reputation",
    name: "Review & Reputation Management",
    examples: "Birdeye, Podium, Broadly",
    pricingType: "flat",
    defaultPrice: 249,
    leadliFeature:
      "Automated Google Review requests triggered the moment a client signs their final estate plan",
    dropLabel: "Drop your review software",
  },
  {
    id: "voip",
    category: "Phone",
    name: "Cloud Phone System & Call Tracking",
    examples: "RingCentral, CallRail, Grasshopper",
    pricingType: "flat",
    defaultPrice: 85,
    leadliFeature:
      "Recorded intake lines, call whisper, automated missed-call text back & local firm numbers",
    dropLabel: "Drop your separate phone system",
  },
  {
    id: "social",
    category: "Marketing",
    name: "Social Media Scheduler",
    examples: "Buffer, Hootsuite, Later",
    pricingType: "flat",
    defaultPrice: 25,
    leadliFeature:
      "Schedule educational posts across LinkedIn, Facebook & Google Business in one view",
    dropLabel: "Drop your social scheduler",
  },
  {
    id: "courses",
    category: "Education",
    name: "Client Portal & Educational Modules",
    examples: "Kajabi, Teachable, Skool",
    pricingType: "flat",
    defaultPrice: 149,
    leadliFeature:
      "Gated estate planning resource library & on-demand video modules for client families",
    dropLabel: "Drop your course platform",
  },
  {
    id: "ai",
    category: "AI",
    name: "AI Subscriptions & Assistant Tools",
    examples: "ChatGPT Plus, Claude Pro, Jasper",
    pricingType: "per_user",
    defaultPrice: 20,
    leadliFeature:
      "Built-in Leadli AI conversation engine, smart response drafting & voice transcription",
    dropLabel: "Drop your separate AI subscriptions",
  },
];

export const LEADLI_BASE_PRICE = 199;

export function toolMonthlyCost(tool: ToolItem, teamSize: number): number {
  return tool.pricingType === "per_user"
    ? tool.defaultPrice * Math.max(1, teamSize)
    : tool.defaultPrice;
}
