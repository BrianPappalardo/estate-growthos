import {
  Receipt,
  FileText,
  CreditCard,
  Bell,
  Repeat,
  ListChecks,
  Link,
  Wallet,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Payments · Invoices & Estimates",
  icon: Receipt,
  title: "Leadli Invoices & Estimates",
  subtitle:
    "Quote, bill, and collect in one place — with line items, payment plans, and auto-reminders tied to each client record.",
  body: "Send estimates and invoices that get paid right inside the platform, with line items, payment plans, and automatic reminders that fire when an invoice is overdue. Every invoice is filed to the client’s CRM record, so you’re never hunting through a separate billing tool to find out who paid and who didn’t. Quote, bill, collect, and reconcile — all where the contact already lives.",
  replaces: ["QuickBooks invoicing add-ons", "Separate billing tools", "Manual reminder emails"],
  leakHeading: "Your invoices live in a billing tool your CRM can’t see.",
  leakBody: [
    "You send an invoice from QuickBooks. The client pays a week late, or not at all, and the only way you know is by logging into a separate tool and checking. Your CRM still says “engagement sent,” the pipeline doesn’t move, and the reminder you meant to send never goes out because you forgot to check. So unpaid invoices sit, and your team has no idea who’s actually paid up.",
    "Leadli Invoices & Estimates fixes that by putting quoting and billing inside the same record as the contact, the matter, and the pipeline. An estimate becomes an invoice becomes a payment, and each step updates the CRM automatically. Overdue invoices trigger reminders on their own, and paid invoices move the pipeline — no separate billing tool, no manual follow-up.",
  ],
  leakChips: [
    "Estimates & invoices in one place",
    "Auto-reminders when overdue",
    "Filed to the client record",
    "Pipeline moves on payment",
  ],
  mockupHeading: "Quote, bill, and collect — all in the client record.",
  mockupSubhead:
    "Estimates that convert to invoices, invoices with line items and payment plans, and auto-reminders that fire when payment’s late.",
  whatYouGetHeading: "Billing that’s part of the matter, not a separate chore.",
  capabilities: [
    {
      icon: FileText,
      title: "Estimates & invoices",
      body: "Send a quote that converts to an invoice with one click — line items, quantities, and tax all editable in the same builder.",
    },
    {
      icon: CreditCard,
      title: "Online payment",
      body: "Invoices are payable by card or ACH through Leadli Payments, with operating and trust routing handled automatically.",
    },
    {
      icon: Repeat,
      title: "Payment plans",
      body: "Split a fee into installments and let Leadli collect each one on schedule — with reminders and reconciliation built in.",
    },
    {
      icon: Bell,
      title: "Auto-reminders",
      body: "Overdue invoices trigger polite, automatic reminders by email and text — no one on your team has to remember to chase.",
    },
    {
      icon: ListChecks,
      title: "Line items & tax",
      body: "Itemize a trust, a will, and a power of attorney on one invoice with per-item tax — clear for the client, clean for your books.",
    },
    {
      icon: Link,
      title: "Filed to the contact",
      body: "Every estimate and invoice is attached to the client’s CRM record, so anyone on your team can see what was sent, paid, or outstanding.",
    },
  ],
  deepDive: {
    left: {
      label: "Quote to bill",
      heading: "An estimate becomes an invoice becomes a payment.",
      body: "Send a prospect an estimate for a trust package. They approve it. One click converts it to an invoice, the client pays by card, and the payment — routed to the right account by Leadli Payments — moves the pipeline from “engagement sent” to “engaged.” Three steps, one record, no re-keying.",
      bullets: [
        "Estimate converts to invoice with one click",
        "Payment routed to operating or trust automatically",
        "Pipeline stage updates on payment",
      ],
    },
    right: {
      label: "Reminders",
      heading: "Overdue invoices follow up on themselves.",
      body: "An invoice that’s seven days overdue fires a polite email. Fourteen days, a text. Thirty days, a final notice. You set the cadence once and Leadli handles every invoice the same way — so your team stops spending Mondays chasing last month’s bills.",
      bullets: [
        "Customizable reminder cadence by email & SMS",
        "No manual “just checking in” emails",
        "Reconciliation-ready reporting at month end",
      ],
    },
  },
  useCases: [
    {
      icon: FileText,
      title: "The trust package quote",
      body: "Send an itemized estimate for a trust, will, and POA. The client approves, it becomes an invoice, they pay, the matter opens — one record, end to end.",
      trigger: "Closes the engagement",
    },
    {
      icon: Repeat,
      title: "The installment plan",
      body: "Split a $5,000 fee into four payments. Leadli collects each on schedule, sends reminders, and reconciles — without you touching it.",
      trigger: "Makes big fees affordable",
    },
    {
      icon: Bell,
      title: "The overdue chase",
      body: "An unpaid invoice triggers reminders at 7, 14, and 30 days automatically. Your team stops spending Mondays on collections.",
      trigger: "Cuts days-sales-outstanding",
    },
  ],
  connections: {
    heading: "Every invoice connects to the matter and the money.",
    subhead:
      "Billing isn’t a separate tool — it’s a step in the same record that holds the contact, the matter, and the payment routing.",
    items: [
      { icon: CreditCard, label: "Leadli Payments" },
      { icon: Link, label: "CRM contact record" },
      { icon: Bell, label: "Email & SMS reminders" },
      { icon: Wallet, label: "Trust & operating routing" },
      { icon: ListChecks, label: "Pipeline & reports" },
      { icon: FileText, label: "Engagement letters" },
    ],
  },
  finalCtaHeading: "Let’s get your billing into the same place as your clients.",
  finalCtaBody:
    "30 minutes. We’ll map your quote-to-collect flow, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "invoices-estimates",
    "payments",
    "contracts",
    "products-inventory",
    "coupons-gift-cards",
  ],
};

export function InvoicesEstimatesProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
