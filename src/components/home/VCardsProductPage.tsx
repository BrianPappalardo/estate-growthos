import {
  Contact,
  Smartphone,
  QrCode,
  RefreshCw,
  Link,
  Database,
  Globe,
  UserPlus,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Web · V-Cards",
  icon: Contact,
  title: "Leadli V-Cards",
  subtitle:
    "Smart digital business cards that save to a contact&rsquo;s phone &mdash; and into your CRM the moment they scan.",
  body: "Share a v-card that imports straight into a contact&rsquo;s phone with one tap, and updates everywhere the moment your details change. When someone scans your card, they land on a branded page, save your info, and &mdash; if you want &mdash; become a tracked contact in your CRM. No paper cards lost in a drawer, no &ldquo;let me text you my info,&rdquo; no out-of-date cards floating around.",
  replaces: [
    "Paper business cards",
    "Separate contact apps",
    "Manual &ldquo;text me your info&rdquo; exchanges",
  ],
  leakHeading: "Your paper business card is lost before they get to the car.",
  leakBody: [
    "You hand out paper cards at a seminar, a networking event, a consult. Most end up in a pocket, then a drawer, then the recycling. The ones that survive go stale the moment your phone number or office changes. And you have no idea who actually kept yours, who called, or who became a client &mdash; the card is a dead end the moment it leaves your hand.",
    "Leadli V-Cards turn that dead end into a tracked entry point. A scan opens a branded page, saves your live details to their phone, and can create a contact in your CRM tied to the event where you met. Update your info once and every card you&rsquo;ve ever shared updates with it. No reprinting, no lost leads, no stale numbers.",
  ],
  leakChips: [
    "One-tap save to phone",
    "Updates everywhere when you change info",
    "Scan creates a tracked CRM contact",
    "Branded to your firm",
  ],
  mockupHeading: "A business card that updates itself and tracks itself.",
  mockupSubhead:
    "A branded v-card page with one-tap save, live details, and optional CRM capture on every scan.",
  whatYouGetHeading: "A card that actually becomes a contact.",
  capabilities: [
    {
      icon: Contact,
      title: "Digital contact sharing",
      body: "A branded v-card page with your photo, title, phone, email, office, and links &mdash; saved to a contact&rsquo;s phone with one tap.",
    },
    {
      icon: Smartphone,
      title: "Click-to-save",
      body: "One tap imports your details straight into their phone&rsquo;s contacts &mdash; no typing, no &ldquo;let me put you in.&rdquo;",
    },
    {
      icon: RefreshCw,
      title: "Updateable everywhere",
      body: "Change your number or office once and every card you&rsquo;ve ever shared updates automatically &mdash; no reprinting.",
    },
    {
      icon: UserPlus,
      title: "CRM sync on scan",
      body: "A scan can create a tracked contact in your CRM, tagged with the event or context where you met.",
    },
    {
      icon: QrCode,
      title: "QR + shareable link",
      body: "Each v-card has a QR code for print and a shareable link for email, text, and your email signature.",
    },
    {
      icon: Database,
      title: "Tied to the contact record",
      body: "When a scanned contact later books or signs, the v-card scan is part of their source history in the pipeline.",
    },
  ],
  useCases: [
    {
      icon: UserPlus,
      title: "The networking event",
      body: "Instead of paper cards, you share your v-card. Every scan is a tracked contact tagged &ldquo;networking,&rdquo; ready for a follow-up sequence the next morning.",
      trigger: "No lost contacts",
    },
    {
      icon: Globe,
      title: "The seminar handout",
      body: "A QR code on the seminar slide routes to your v-card. Attendees save you before they leave the room &mdash; and land in your CRM tagged by event.",
      trigger: "Captures the room",
    },
    {
      icon: RefreshCw,
      title: "The office move",
      body: "You move offices. You update your v-card once. Every card you&rsquo;ve ever shared now shows the new address &mdash; no reprint, no stale cards.",
      trigger: "Always current",
    },
  ],
  connections: {
    heading: "A card that&rsquo;s part of your pipeline, not a dead end.",
    subhead:
      "The v-card isn&rsquo;t a standalone graphic &mdash; a scan is the first touch in a contact record that can end in a signed matter.",
    items: [
      { icon: UserPlus, label: "CRM contact capture" },
      { icon: QrCode, label: "QR codes" },
      { icon: Link, label: "Shareable links" },
      { icon: Smartphone, label: "One-tap save" },
      { icon: Database, label: "Pipeline tracking" },
      { icon: RefreshCw, label: "Live updates" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s turn your business card into a tracked lead.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map how you&rsquo;d use v-cards, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["v-cards", "qr-codes", "websites", "crm", "marketing"],
};

export function VCardsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
