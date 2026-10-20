import { QrCode, ScanLine, Link, BarChart3, Globe, Tag, Smartphone, MapPin } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Marketing · QR Codes",
  icon: QrCode,
  title: "Leadli QR Codes",
  subtitle:
    "Trackable, branded QR codes that bridge print to your CRM &mdash; so a mailer, a sign, or a flyer becomes a tracked lead.",
  body: "Generate branded QR codes for direct mail, seminar signage, business cards, and flyers. Every scan routes to a page, form, or automation &mdash; and every scan is tracked and tied to a contact in your CRM. No generic QR generator that hands you a code and forgets about it, no &ldquo;how did you hear about us?&rdquo; guessing.",
  replaces: [
    "QR generators",
    "Link shorteners",
    "Manual &ldquo;how did you hear about us&rdquo; tracking",
  ],
  leakHeading: "You can&rsquo;t tell which mailer or sign actually produced the call.",
  leakBody: [
    "You send a postcard to 2,000 homes and put a QR code on it from a free generator. A few people scan it. A few call. But the generator doesn&rsquo;t know who scanned, your CRM doesn&rsquo;t know it came from the mailer, and you have no idea whether the postcard or the seminar flyer is worth doing again. So you keep paying for print that you can&rsquo;t measure.",
    "Leadli QR Codes fix that by making every code a tracked, branded entry point into your CRM. Each code routes to a specific page or form, each scan is logged with its source, and each new contact carries that source through your whole pipeline. The mailer that worked gets repeated; the one that didn&rsquo;t gets cut.",
  ],
  leakChips: [
    "Per-code scan tracking",
    "Source attribution to the CRM",
    "Branded, not a generic code",
    "Routes to pages, forms & automations",
  ],
  mockupHeading: "Every scan is a tracked lead with a source.",
  mockupSubhead:
    "Generate branded codes per campaign, route scans to the right page or form, and watch each code&rsquo;s scan and conversion count.",
  whatYouGetHeading: "Print that finally proves its ROI.",
  capabilities: [
    {
      icon: QrCode,
      title: "Branded QR codes",
      body: "Generate clean, branded codes for every campaign &mdash; mailers, signage, flyers, business cards &mdash; styled to your firm.",
    },
    {
      icon: ScanLine,
      title: "Scan tracking",
      body: "See how many times each code was scanned, when, and from roughly where &mdash; per code, per campaign.",
    },
    {
      icon: Link,
      title: "Routing to pages & forms",
      body: "Send a scan to a landing page, an intake form, a calendar, or an automation &mdash; you pick the destination per code.",
    },
    {
      icon: Tag,
      title: "Campaign attribution",
      body: "Every contact created from a scan carries its source through the pipeline, so you know which print piece produced the signed matter.",
    },
    {
      icon: Smartphone,
      title: "Mobile-first landing",
      body: "Scans are mobile by definition; Leadli routes them to fast, mobile-optimized pages that load instantly.",
    },
    {
      icon: BarChart3,
      title: "Per-code analytics",
      body: "Compare codes side by side &mdash; the postcard vs. the seminar flyer vs. the business card &mdash; and double down on what works.",
    },
  ],
  useCases: [
    {
      icon: Globe,
      title: "The direct-mail postcard",
      body: "A QR code on every postcard routes to a consult-booking page. You see exactly how many scans and bookings the mailer produced &mdash; and whether to send it again.",
      trigger: "Measurable mail ROI",
    },
    {
      icon: MapPin,
      title: "The seminar sign-in",
      body: "A QR code on the seminar handout routes to a feedback form that also books a consult. Attendees self-identify and book before they leave the room.",
      trigger: "Turns attendees into consults",
    },
    {
      icon: Smartphone,
      title: "The business card",
      body: "A QR code on your card routes to a v-card that saves straight to a contact&rsquo;s phone &mdash; and into your CRM when they scan.",
      trigger: "Never lose a card again",
    },
  ],
  connections: {
    heading: "A scan becomes a contact becomes a client.",
    subhead:
      "The QR code isn&rsquo;t a dead-end graphic &mdash; it&rsquo;s the front door to the same CRM, pipeline, and calendars the rest of your firm runs on.",
    items: [
      { icon: Link, label: "Landing pages & forms" },
      { icon: Tag, label: "Campaign attribution" },
      { icon: BarChart3, label: "Pipeline & reports" },
      { icon: Smartphone, label: "Mobile-first pages" },
      { icon: Globe, label: "Websites & funnels" },
      { icon: ScanLine, label: "Scan analytics" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s make your print trackable.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map the print pieces you&rsquo;d like to measure, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "qr-codes",
    "marketing",
    "trigger-links",
    "websites",
    "forms-surveys-quizzes",
  ],
};

export function QrCodesProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
