/**
 * Controlled vocabulary for changelog entries.
 *
 * The webhook receiver validates every incoming `category` and every `tag`
 * against these lists. Anything not listed here is rejected with a 400, so the
 * agent can never invent a category or tag on the fly.
 *
 * Keep this file as the single source of truth. When you add a new product
 * surface or a new tag, add it here AND to the agent's instructions.
 */

export const APPROVED_CATEGORIES = [
  "automations",
  "calendar",
  "chat_widget",
  "forms-surveys-quizzes",
  "reporting",
  "templates",
  "ai",
  "conversations",
  "crm",
  "courses",
  "task-management",
  "qr-codes",
  "payments",
  "email-marketing",
  "sms-marketing",
  "social",
  "reviews",
  "websites",
  "funnels",
  "invoices",
  "products",
  "contracts",
  "inbox",
  "phone",
  "integrations",
  "client-portal",
  "media-storage",
  "communities",
  "voice-ai",
  "ai-agents",
  "general",
] as const;

export type ApprovedCategory = (typeof APPROVED_CATEGORIES)[number];

/**
 * Human-friendly labels shown on the changelog page. Keys must match the
 * approved category slugs above.
 */
export const CATEGORY_LABELS: Record<string, string> = {
  automations: "Automations & Workflows",
  calendar: "Calendars & Booking",
  chat_widget: "Chat Widget",
  "forms-surveys-quizzes": "Forms, Surveys & Quizzes",
  reporting: "Reporting & Dashboards",
  templates: "Templates",
  ai: "AI Tools",
  conversations: "Conversations",
  crm: "CRM & Client Management",
  courses: "Courses & Memberships",
  "task-management": "Task Management",
  "qr-codes": "QR Codes",
  payments: "Payments",
  "email-marketing": "Email Marketing",
  "sms-marketing": "SMS Marketing",
  social: "Social Media",
  reviews: "Reputation & Reviews",
  websites: "Websites & Domains",
  funnels: "Funnels & Landing Pages",
  invoices: "Invoices & Estimates",
  products: "Products & Inventory",
  contracts: "Contracts & e-Signatures",
  inbox: "Unified Inbox",
  phone: "Cloud Phone",
  integrations: "Integrations",
  "client-portal": "Client Portal",
  "media-storage": "Media Storage",
  communities: "Online Communities",
  "voice-ai": "Voice AI",
  "ai-agents": "AI Agents",
  general: "General",
};

/**
 * Approved tag slugs. The agent may send any subset of these. Tags not in
 * this list are dropped (not rejected) so a slightly-off tag never blocks a
 * valid entry — but the agent should be instructed to only use these.
 */
export const APPROVED_TAGS = [
  // Feature surfaces
  "crm",
  "calendar",
  "automation",
  "workflow",
  "email",
  "sms",
  "social",
  "funnel",
  "website",
  "forms",
  "surveys",
  "quizzes",
  "reporting",
  "dashboard",
  "payments",
  "invoices",
  "contracts",
  "esign",
  "reviews",
  "reputation",
  "inbox",
  "phone",
  "chat",
  "integrations",
  "ai",
  "voice-ai",
  "ai-agents",
  "courses",
  "communities",
  "client-portal",
  "media-storage",
  "task-management",
  "projects",
  "kanban",
  "smart-lists",
  "trigger-links",
  "webinars",
  "qr-codes",
  "v-cards",
  "affiliate",
  "products",
  "ecommerce",
  "coupons",
  "gift-cards",
  "countdown-timers",
  "ad-manager",
  "custom-audiences",
  // Change types
  "new-feature",
  "improvement",
  "fix",
  "beta",
  "update",
  "announcement",
  // Source / origin
  "wp-import",
  "agent",
] as const;

export type ApprovedTag = (typeof APPROVED_TAGS)[number];

export const APPROVED_CATEGORIES_SET = new Set<string>(APPROVED_CATEGORIES);
export const APPROVED_TAGS_SET = new Set<string>(APPROVED_TAGS);

/**
 * Normalize and filter an incoming category. Returns null if the value is not
 * an approved category (the caller decides whether to reject or default).
 */
export function normalizeCategory(value: unknown): ApprovedCategory | null {
  if (typeof value !== "string") return null;
  const slug = value.trim().toLowerCase();
  if (APPROVED_CATEGORIES_SET.has(slug)) return slug as ApprovedCategory;
  // Accept a few common aliases the agent might produce.
  const aliases: Record<string, ApprovedCategory> = {
    automation: "automations",
    workflows: "automations",
    workflow: "automations",
    calendars: "calendar",
    booking: "calendar",
    scheduling: "calendar",
    "chat-widget": "chat_widget",
    chatwidget: "chat_widget",
    "live-chat": "chat_widget",
    forms: "forms-surveys-quizzes",
    surveys: "forms-surveys-quizzes",
    quizzes: "forms-surveys-quizzes",
    analytics: "reporting",
    dashboards: "reporting",
    reports: "reporting",
    "task-management": "task-management",
    tasks: "task-management",
    projects: "task-management",
    "project-management": "task-management",
    "qr-code": "qr-codes",
    qrcodes: "qr-codes",
    payment: "payments",
    invoice: "invoices",
    invoicing: "invoices",
    contract: "contracts",
    esign: "contracts",
    "e-signature": "contracts",
    "unified-inbox": "inbox",
    "cloud-phone": "phone",
    dialer: "phone",
    "client-portal": "client-portal",
    portal: "client-portal",
    media: "media-storage",
    storage: "media-storage",
    community: "communities",
    "voice-ai": "voice-ai",
    voice: "voice-ai",
    "ai-agent": "ai-agents",
    "ai-agents": "ai-agents",
    "ai-tools": "ai",
    "social-media": "social",
    "social-scheduler": "social",
    "email-marketing": "email-marketing",
    "sms-marketing": "sms-marketing",
    reputation: "reviews",
    review: "reviews",
    website: "websites",
    domains: "websites",
    funnel: "funnels",
    "landing-pages": "funnels",
    product: "products",
    inventory: "products",
    ecommerce: "products",
    "e-commerce": "products",
  };
  const mapped = aliases[slug];
  if (mapped && APPROVED_CATEGORIES_SET.has(mapped)) return mapped;
  return null;
}

/**
 * Normalize and filter an incoming list of tags. Unknown tags are dropped
 * (not rejected) so a slightly-off tag never blocks a valid entry.
 */
export function normalizeTags(value: unknown): string[] {
  if (!Array.isArray(value)) return [];
  const out: string[] = [];
  for (const raw of value) {
    if (typeof raw !== "string") continue;
    const slug = raw.trim().toLowerCase().replace(/\s+/g, "-");
    if (APPROVED_TAGS_SET.has(slug)) {
      out.push(slug);
    }
  }
  // de-dupe, preserve order
  return Array.from(new Set(out));
}
