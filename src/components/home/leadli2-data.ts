import {
  Bot,
  Wand2,
  Gift,
  Workflow,
  Layers,
  Building2,
  Navigation,
  CreditCard,
  Gauge,
  Ticket,
} from "lucide-react";

export type Release = {
  id: string;
  badge: string;
  title: string;
  blurb: string;
  icon: typeof Bot;
  accent: string;
  points: { label: string; detail: string }[];
};

export const SPEED_RELEASES: Release[] = [
  {
    id: "speed",
    badge: "Up to 2.6x Faster",
    title: "Everything just got faster — across the board.",
    blurb:
      "Processing speeds across the platform jumped up to 2.6x. Automations fire sooner, AI replies land quicker, and the lag between a prospect doing something and your system reacting has shrunk dramatically. Speed is the whole game when a lead is still warm.",
    icon: Gauge,
    accent: "#fb923c",
    points: [
      { label: "Up to 2.6x faster processing", detail: "Less waiting between intent and reply" },
      { label: "Snappier automations", detail: "Workflows fire closer to the moment they should" },
      { label: "Faster AI responses", detail: "Conversations that keep pace with a real lead" },
    ],
  },
  {
    id: "conversation-ai",
    badge: "Conversation AI Flow Builder",
    title: "Your AI can now reach out first — not just answer.",
    blurb:
      "The Conversation AI in your account now ships outbound agents and database reactivation. It doesn't just answer faster — it reaches out on its own, waking up the leads that went quiet and never came back.",
    icon: Bot,
    accent: "#22d3ee",
    points: [
      { label: "Outbound agents", detail: "AI that initiates — not just replies" },
      { label: "Database reactivation", detail: "Wake up cold leads automatically" },
      { label: "Faster processing", detail: "Less waiting between intent and reply" },
    ],
  },
  {
    id: "creator-studio",
    badge: "Creator Studio",
    title: "A built-in Canva — for your content and your ads.",
    blurb:
      "Create and recreate your content and ads without leaving Leadli or paying for another tool. It's the alternative to Canva and Higgsfield, sitting right where your contacts and data already live.",
    icon: Wand2,
    accent: "#a78bfa",
    points: [
      { label: "Content + ad creation", detail: "Design without leaving the platform" },
      { label: "Spin up variations fast", detail: "Fresh creative in minutes, not days" },
      { label: "No extra subscription", detail: "Already in your account" },
    ],
  },
  {
    id: "free-ai-tools",
    badge: "Free AI Tools",
    title: "Free AI generation, on the everyday tools you already use.",
    blurb:
      "Ask AI, AI Studio, Creator Studio, workflows, and AI email are now free to generate. The everyday AI work is on the house — managed agents and Conversation AI stay as optional premium add-ons if you want to go further.",
    icon: Gift,
    accent: "#34d399",
    points: [
      { label: "Ask AI, AI Studio", detail: "Free generation across the board" },
      { label: "Workflows + AI email", detail: "Free to generate" },
      { label: "Managed agents", detail: "Still an optional premium add-on" },
    ],
  },
  {
    id: "workflow-map",
    badge: "Workflow Map & MCP",
    title: "See your automations mapped out — and fix them at a glance.",
    blurb:
      "Your workflows now have a visual map, so automation is no longer a black box. See every step, build outside the main interface, and let the system upgrade templates and fix tags for you automatically.",
    icon: Workflow,
    accent: "#fb923c",
    points: [
      { label: "Visual map", detail: "Every step of every automation, visible" },
      { label: "Build outside the UI", detail: "Map & MCP integration" },
      { label: "Auto template upgrades", detail: "Tag fixes handled for you" },
    ],
  },
];

export const OPS_RELEASES: Release[] = [
  {
    id: "native-pm",
    badge: "Native Project Management",
    title: "Your tasks now live where your data does.",
    blurb:
      "Built-in task management with spaces, folders, custom fields, custom statuses, Kanban and list views, and deep workflow integrations — all inside Leadli. Run your team's work where your clients and contacts already are, with no separate project tool to buy or sync.",
    icon: Layers,
    accent: "#22d3ee",
    points: [
      { label: "Spaces & folders", detail: "Organize work the way your team thinks" },
      { label: "Custom fields & statuses", detail: "Model your process, not someone else's" },
      { label: "Kanban + list views", detail: "More views on the way" },
      { label: "Deep workflow integrations", detail: "Tasks trigger automations, and vice versa" },
    ],
  },
  {
    id: "ticketing",
    badge: "Native Ticketing",
    title: "Support tickets, without the separate helpdesk.",
    blurb:
      "Built-in ticketing with updated status groups, reminder automations, and public APIs for custom integrations. A request comes in, becomes a ticket, gets routed, and gets resolved — all tracked inside the same system your team already lives in.",
    icon: Ticket,
    accent: "#a78bfa",
    points: [
      { label: "Updated status groups", detail: "Tickets move through a clear pipeline" },
      { label: "Reminder automations", detail: "Nothing slips through the cracks" },
      { label: "Public APIs", detail: "Hook in your custom integrations" },
    ],
  },
  {
    id: "industry-snapshots",
    badge: "Industry Operating Systems",
    title: "An operating system tailored to your kind of business.",
    blurb:
      "Snapshots built for verticals like restaurants and home services — complete with table drawing, online ordering, and job routing. Drop in a way of running your business, not just a template you have to learn.",
    icon: Building2,
    accent: "#a78bfa",
    points: [
      { label: "Vertical-tailored", detail: "Restaurants, home services, and more" },
      { label: "Table drawing + online ordering", detail: "Operational out of the box" },
      { label: "Job routing", detail: "Built for real, day-to-day operations" },
    ],
  },
  {
    id: "new-navigation",
    badge: "New Navigation",
    title: "The sidebar finally knows where you're going.",
    blurb:
      "A reorganized sidebar with pins, recents, and a genuinely better global search. Less hunting, more doing — it surfaces your most-used before you go looking for them.",
    icon: Navigation,
    accent: "#60a5fa",
    points: [
      { label: "Pins + recents", detail: "Your most-used, surfaced first" },
      { label: "Improved global search", detail: "Find anything, faster" },
      { label: "Reorganized sidebar", detail: "Less hunting, more doing" },
    ],
  },
  {
    id: "lc-payments",
    badge: "Payments & E-Commerce",
    title: "Your payments and your orders, finally talking to each other.",
    blurb:
      "Shopify order fulfillment now syncs automatically, and there are new, smarter ways to handle payments and commissions inside your account. Commerce and payments just got tighter — and faster.",
    icon: CreditCard,
    accent: "#34d399",
    points: [
      { label: "Shopify fulfillment automation", detail: "Orders sync automatically" },
      { label: "Smarter payments", detail: "New commission structures" },
      { label: "Payments + orders together", detail: "One place, no reconciliation" },
    ],
  },
];

export const TICKER_ITEMS = [
  "Custom appointment statuses",
  "Association triggers",
  "Updated status groups",
  "Public APIs for custom integrations",
  "Auto template upgrades",
  "Automatic tag fixes",
  "Pins & recents in the sidebar",
  "Improved global search",
  "Shopify order fulfillment automation",
  "New commission structures",
  "Database reactivation",
  "Outbound AI agents",
  "Workflow mapping outside the UI",
  "MCP integration",
  "Industry snapshots for verticals",
  "Table drawing & online ordering",
  "Job routing",
  "Reminder automations",
  "Custom fields for tasks",
  "Custom statuses for tasks",
];
