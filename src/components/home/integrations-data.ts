import {
  Bot,
  BrainCircuit,
  Cpu,
  Plug,
  Webhook,
  Zap,
  ShieldCheck,
  Database,
  Phone,
  Calendar,
  CreditCard,
  Mail,
  MessageSquare,
  FileText,
  AlertCircle,
  RefreshCw,
} from "lucide-react";

export const AI_MESSAGES: {
  id: number;
  from: "client" | "firm";
  text: string;
  draft?: boolean;
}[] = [
  {
    id: 1,
    from: "client",
    text: "Hi! Quick question \u2014 do you offer payment plans for the trust package?",
  },
  {
    id: 2,
    from: "firm",
    text: "Hi Maria, yes we do! We can split the $4,200 trust package into three monthly payments after your consult on Thursday. I\u2019ll have the details ready when we meet. Looking forward to it!",
    draft: true,
  },
];

export const AI_CONTEXT: { label: string; value: string; icon: typeof Calendar }[] = [
  {
    label: "Consult Booked",
    value: "Thursday, 2:00 PM \u2014 Trust package consult",
    icon: Calendar,
  },
  {
    label: "Fee Discussed",
    value: "$4,200 \u2014 split into 3 monthly payments available",
    icon: CreditCard,
  },
  {
    label: "Prior Messages",
    value: "2 emails, 1 text \u2014 all about scheduling and fees",
    icon: MessageSquare,
  },
];

export const INTEGRATION_CARDS: {
  name: string;
  detail: string;
  status: "Connected" | "Available";
  icon: typeof Database;
}[] = [
  {
    name: "Practice Management",
    detail: "Signed matters push in automatically",
    status: "Connected",
    icon: Database,
  },
  {
    name: "Cloud Phone System",
    detail: "Call logs and recordings synced",
    status: "Connected",
    icon: Phone,
  },
  {
    name: "Calendar Sync",
    detail: "Two-way with Google & Outlook",
    status: "Connected",
    icon: Calendar,
  },
  {
    name: "Custom Webhook",
    detail: "We build the connection you need",
    status: "Available",
    icon: Webhook,
  },
];

export const INTEGRATIONS_CAPABILITIES: { title: string; body: string; icon: typeof Bot }[] = [
  {
    icon: BrainCircuit,
    title: "Built-in conversation AI",
    body: "Draft replies, summarize calls, and transcribe voicemails from the same screen as your CRM &mdash; no separate AI tab, no copy-paste, no &ldquo;as an AI&rdquo; disclaimers.",
  },
  {
    icon: MessageSquare,
    title: "Smart response drafting",
    body: "The AI reads the contact&apos;s full history &mdash; their emails, their consult notes, the stage they&apos;re in &mdash; and drafts a reply in your firm&apos;s voice. Review, tweak, send.",
  },
  {
    icon: Plug,
    title: "Native integrations",
    body: "Connect practice management, phone, calendar, and accounting tools natively &mdash; two-way sync, not a one-way export that breaks when an API changes.",
  },
  {
    icon: Webhook,
    title: "Webhook triggers",
    body: "Need to connect something Leadli doesn&apos;t do natively? Fire a webhook on any event &mdash; a signed matter, a booked call, a paid invoice &mdash; and we build the bridge.",
  },
  {
    icon: Cpu,
    title: "Call transcription",
    body: "Inbound and outbound calls transcribe automatically, with summary notes filed to the contact record. The AI captures the next steps so you don&apos;t have to take them by hand.",
  },
  {
    icon: ShieldCheck,
    title: "Your data stays in-platform",
    body: "The AI assistant runs inside Leadli &mdash; your client conversations and contact data don&apos;t get shipped to a separate service every time you draft a reply.",
  },
  {
    icon: Zap,
    title: "Automations that connect",
    body: "Every integration pairs with the automation engine. A signed matter pushes to practice management AND fires the onboarding sequence AND sends the retainer invoice &mdash; in one step.",
  },
  {
    icon: Bot,
    title: "We build it for you",
    body: "You&apos;re not handed a Zapier account and told to figure it out. We configure every integration, test it, and keep it working &mdash; so it doesn&apos;t silently break six months later.",
  },
];

export const INTEGRATION_CONNECTIONS: { label: string; icon: typeof Database }[] = [
  { icon: Database, label: "Practice management" },
  { icon: Phone, label: "Cloud phone" },
  { icon: Calendar, label: "Calendar sync" },
  { icon: CreditCard, label: "Payments & invoicing" },
  { icon: Mail, label: "Email & SMS" },
  { icon: FileText, label: "Document storage" },
];
