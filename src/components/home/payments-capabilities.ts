import {
  Split,
  Percent,
  PiggyBank,
  Receipt,
  RefreshCw,
  UserCircle2,
  CalendarClock,
  FileSpreadsheet,
  Landmark,
  Building2,
  CreditCard,
  Database,
  Workflow,
  Calendar,
  Mail,
  MessageSquare,
  BarChart3,
} from "lucide-react";

export const PAYMENTS_CAPABILITIES: { title: string; body: string; icon: typeof CreditCard }[] = [
  {
    icon: Split,
    title: "Operating vs. trust account routing",
    body: "Automatically send earned fees to your operating account and unearned retainers to your IOLTA trust account — based on rules you define, not manual transfers.",
  },
  {
    icon: Percent,
    title: "Pass-through processing fees",
    body: "Toggle the card processing fee on or off per payment. Pass it through to the client so you keep the full amount, or absorb it — your choice, per transaction or globally.",
  },
  {
    icon: PiggyBank,
    title: "IOLTA-compliant trust accounting",
    body: "Built for attorney trust accounts. Every trust deposit and disbursement is tracked, categorized, and exportable for reconciliation — no separate trust ledger required.",
  },
  {
    icon: Receipt,
    title: "Retainers, invoices & payment plans",
    body: "Collect flat retainers, send invoices, and set up recurring payment plans — all tied to the client record and synced to your pipeline stages automatically.",
  },
  {
    icon: RefreshCw,
    title: "Automated reconciliation reporting",
    body: "Every transaction is labeled by account, source, and purpose. Export clean reports for your bookkeeper or accountant without building a spreadsheet from scratch.",
  },
  {
    icon: UserCircle2,
    title: "CRM-driven routing rules",
    body: "Route funds based on what's in a contact's CRM record — their tags, their service, their appointment type. A payment from an estate planning client routes differently than one from a probate client.",
  },
  {
    icon: CalendarClock,
    title: "Appointment-fee routing",
    body: "Consultation fees, scheduling deposits, and appointment-based payments can route to their own account — so your consult revenue never gets mixed with trust funds.",
  },
  {
    icon: FileSpreadsheet,
    title: "Built-in estimates & invoices",
    body: "Send estimates, convert them to invoices, and collect payment in the same platform — no separate billing tool, no copy-pasting amounts between systems.",
  },
];

export const ROUTING_RULES: { label: string; body: string; icon: typeof Split }[] = [
  {
    icon: Receipt,
    label: "Product or service purchased",
    body: "Estate plan retainer → trust. Digital guide → operating. Route by what they bought.",
  },
  {
    icon: CalendarClock,
    label: "Appointment fees",
    body: "Consultation fee → operating. Trust deposit → IOLTA. Route by the appointment type.",
  },
  {
    icon: UserCircle2,
    label: "CRM data on the contact",
    body: "Tags, custom fields, matter type — route based on what's in the client's record.",
  },
  {
    icon: Building2,
    label: "Practice area or matter",
    body: "Estate planning vs. probate vs. elder law — each can route to a different account.",
  },
];

export const PAYMENTS_CONNECTIONS: { label: string; icon: typeof CreditCard }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Workflow, label: "Automations" },
  { icon: Calendar, label: "Appointments" },
  { icon: Mail, label: "Email receipts" },
  { icon: MessageSquare, label: "Payment texts" },
  { icon: BarChart3, label: "Reporting" },
];

export const CONFIDO_BADGES: { label: string }[] = [
  { label: "1 account or 12" },
  { label: "IOLTA trust-ready" },
  { label: "Pass-through fees" },
];

export { Landmark, Building2, PiggyBank, Split, CreditCard };
