import {
  MonitorSmartphone,
  FileText,
  MessageSquare,
  CreditCard,
  ShieldCheck,
  Lock,
  Users,
  Globe,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Platform · Client Portal",
  icon: MonitorSmartphone,
  title: "Leadli Client Portal",
  subtitle:
    "A private, branded space where clients self-serve documents, messages, and payments &mdash; controlled by you.",
  body: "Give clients a secure, branded portal for documents, messages, payments, and matter updates &mdash; on your domain, controlled by you. A client logs in to sign their engagement letter, upload an asset list, send a secure message, and pay their retainer, all in one place that looks like your firm. No shared Google Drive, no portal app that looks like someone else&rsquo;s brand, no &ldquo;can you re-send that link?&rdquo;",
  replaces: ["Shared drives", "Separate portal apps", "Email-attachment document chaos"],
  leakHeading: "Your clients&rsquo; documents live in email attachments and a shared drive.",
  leakBody: [
    "A client needs to send you their asset list. They email it as an attachment, you download it, it lives in a folder on your desktop and a shared drive your team sometimes remembers to check. The signed engagement letter is somewhere in a thread. The retainer payment is a separate process. Nothing is in one place, nothing is secure by default, and the client has no way to check on their own matter without calling you.",
    "Leadli Client Portal gives every client a secure, branded home for their matter. They upload documents, send secure messages, sign and pay &mdash; all in one portal tied to their CRM record. You control what they see, everything is logged, and the client can check their own status without a phone call. Professional for them, organized for you.",
  ],
  leakChips: [
    "Branded to your firm",
    "Documents, messages & payments",
    "Secure by default",
    "Tied to the CRM record",
  ],
  mockupHeading: "A client portal that looks like your firm, not a tool.",
  mockupSubhead:
    "Secure login, document sharing, messaging, and payments &mdash; branded to your firm and tied to each client&rsquo;s record.",
  whatYouGetHeading: "A professional home for every client matter.",
  capabilities: [
    {
      icon: Lock,
      title: "Secure client login",
      body: "Every client gets a secure, branded login on your domain &mdash; no third-party portal app, no &ldquo;is this legit?&rdquo; hesitation.",
    },
    {
      icon: FileText,
      title: "Document sharing",
      body: "Clients upload and download documents securely, with version history and access logging &mdash; no email attachments, no shared drives.",
    },
    {
      icon: MessageSquare,
      title: "Secure messaging",
      body: "Clients message you through the portal &mdash; secure, threaded, and filed to their record &mdash; not lost in an email thread.",
    },
    {
      icon: CreditCard,
      title: "Payments in-portal",
      body: "Clients pay retainers and invoices inside the portal, routed to the right account by Leadli Payments.",
    },
    {
      icon: ShieldCheck,
      title: "Access control",
      body: "You decide what each client sees &mdash; documents, status, messages &mdash; with permissions you control per matter.",
    },
    {
      icon: Users,
      title: "Tied to the CRM record",
      body: "Every portal action &mdash; upload, message, payment &mdash; is filed to the client&rsquo;s CRM record and can trigger a workflow.",
    },
  ],
  useCases: [
    {
      icon: FileText,
      title: "The asset-list upload",
      body: "A client uploads their asset list through the portal &mdash; secure, logged, filed to their matter. No email attachment, no lost file.",
      trigger: "Organized intake",
    },
    {
      icon: CreditCard,
      title: "The retainer payment",
      body: "A client pays their retainer inside the portal, routed to your trust account automatically. No separate payment link, no &ldquo;did you get it?&rdquo;",
      trigger: "Cleaner collections",
    },
    {
      icon: MessageSquare,
      title: "The status check",
      body: "A client logs in to see their matter status and documents instead of calling you. Fewer status-call interruptions, more confident clients.",
      trigger: "Fewer interruptions",
    },
  ],
  connections: {
    heading: "Every portal action connects to the client record.",
    subhead:
      "The portal isn&rsquo;t a separate app &mdash; it&rsquo;s a branded front door to the same CRM, payments, and documents the rest of your firm runs on.",
    items: [
      { icon: FileText, label: "Documents & e-sign" },
      { icon: CreditCard, label: "Leadli Payments" },
      { icon: MessageSquare, label: "Unified inbox" },
      { icon: Users, label: "CRM contacts" },
      { icon: ShieldCheck, label: "Access control" },
      { icon: Globe, label: "Your domain" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s give your clients a portal that looks like your firm.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map what your clients need to self-serve, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["client-portal", "contracts", "payments", "inbox", "media-storage"],
};

export function ClientPortalProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
