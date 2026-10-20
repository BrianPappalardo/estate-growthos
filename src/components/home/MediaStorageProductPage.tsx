import {
  Cloud,
  FileText,
  Image,
  ShieldCheck,
  Link,
  Users,
  BarChart3,
  FolderOpen,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Platform · Unlimited Media Storage",
  icon: Cloud,
  title: "Leadli Unlimited Media Storage",
  subtitle:
    "Host files and media without a separate storage bill &mdash; tied to each contact, secure by default.",
  body: "Store documents, images, videos, and media in-platform with unlimited space tied to each contact and matter &mdash; no extra storage subscription, no &ldquo;your drive is full&rdquo; upgrade prompts. Every file is filed to the right record, shareable securely, and part of the same platform as your CRM and workflows. No Dropbox add-on, no Google Drive upgrade, no storage that&rsquo;s separate from the people it belongs to.",
  replaces: ["Dropbox", "Google Drive add-ons", "Separate storage subscriptions"],
  leakHeading: "Your client files live in a storage tool that&rsquo;s separate from your CRM.",
  leakBody: [
    "A client sends you their asset list, a scan of their deed, and a video walkthrough of their estate. You drop them in Dropbox, where they sit in a folder that&rsquo;s named by matter but disconnected from the CRM record. Your team hunts for the right folder, the storage bill creeps up with every upgrade, and the files are one shared link away from being somewhere they shouldn&rsquo;t be.",
    "Leadli Unlimited Media Storage puts every file on the contact&rsquo;s record &mdash; documents, images, videos, all of it &mdash; with unlimited space and no separate bill. A file is filed where it belongs, shareable securely, and part of the same platform your team already works in. No hunting, no upgrade prompts, no storage that&rsquo;s separate from the people it belongs to.",
  ],
  leakChips: [
    "Unlimited space",
    "Files tied to each contact",
    "Secure sharing",
    "No extra storage bill",
  ],
  mockupHeading: "All your files, where they belong &mdash; on the contact record.",
  mockupSubhead:
    "Unlimited storage for documents, images, and media, filed to each contact and matter, shareable securely.",
  whatYouGetHeading: "Storage that&rsquo;s part of your CRM, not a separate bill.",
  capabilities: [
    {
      icon: Cloud,
      title: "Unlimited storage",
      body: "Store as many documents, images, and videos as you need &mdash; no per-GB charge, no &ldquo;drive full&rdquo; upgrade prompts.",
    },
    {
      icon: Users,
      title: "Contact-linked files",
      body: "Every file is filed to the contact or matter it belongs to &mdash; no orphaned folders, no hunting for the right place.",
    },
    {
      icon: Link,
      title: "Secure sharing",
      body: "Share a file or folder with a client through a secure, expiring link &mdash; not a public Dropbox URL that lives forever.",
    },
    {
      icon: FileText,
      title: "Documents & media",
      body: "PDFs, images, videos, audio &mdash; store and preview them all in-platform, tied to the record.",
    },
    {
      icon: ShieldCheck,
      title: "Secure by default",
      body: "Files are stored securely and access-controlled &mdash; not sitting in a publicly shared drive anyone with the link can open.",
    },
    {
      icon: BarChart3,
      title: "Part of the workflow",
      body: "A file upload can trigger a workflow &mdash; client uploads their asset list, your team gets a task to review it.",
    },
  ],
  useCases: [
    {
      icon: FileText,
      title: "The estate document set",
      body: "A client uploads their deed, asset list, and beneficiary docs &mdash; all filed to their matter, ready for your team to review. No email attachments.",
      trigger: "Organized intake",
    },
    {
      icon: Image,
      title: "The video walkthrough",
      body: "A client records a video walkthrough of their home and assets for their estate plan. It lives on their record, secure and shareable.",
      trigger: "Richer client files",
    },
    {
      icon: FolderOpen,
      title: "The team handoff",
      body: "A paralegal picks up a matter and every file is right there on the contact record &mdash; no &ldquo;where did you put that folder?&rdquo;",
      trigger: "Faster handoffs",
    },
  ],
  connections: {
    heading: "Every file connects to the contact and the workflow.",
    subhead:
      "Storage isn&rsquo;t a separate drive &mdash; it&rsquo;s files on the same records your CRM, portal, and workflows already use.",
    items: [
      { icon: Users, label: "CRM contacts" },
      { icon: Link, label: "Secure sharing" },
      { icon: FileText, label: "Client portal" },
      { icon: ShieldCheck, label: "Access control" },
      { icon: BarChart3, label: "Workflow triggers" },
      { icon: FolderOpen, label: "Matter files" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s put your files where your contacts are.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map how you store and share files, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["media-storage", "client-portal", "crm", "contracts", "courses"],
};

export function MediaStorageProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
