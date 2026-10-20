import { Mail, FileText, Zap, Repeat, Users, Search, Clipboard, MessageSquare } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Communication · Email & Text Snippets",
  icon: Mail,
  title: "Leadli Email & Text Snippets",
  subtitle:
    "Reusable, merge-friendly snippets for the messages you send over and over — inserted in seconds.",
  body: "Save the paragraphs you type constantly — the consult-prep explanation, the fee breakdown, the “here’s what to bring” note — as snippets that insert into any email or text with a couple of keystrokes, complete with contact merge fields. No retyping the same explanation for the hundredth time, no copy-paste from a Word doc, no inconsistent messaging across your team.",
  replaces: [
    "Copy-paste from Word docs",
    "Retyping the same messages",
    "Inconsistent team messaging",
  ],
  leakHeading: "You type the same three paragraphs fifty times a week.",
  leakBody: [
    "Every new consult needs the same explanation of what a trust is and what it costs. Every fee inquiry gets the same breakdown. Every “what should I bring” question gets the same list. You or your team type these from memory, or copy from a Word doc that lives on someone’s desktop, and every version comes out a little different — some with last week’s pricing, some missing the link, none consistent.",
    "Leadli Email & Text Snippets turn those repeated messages into reusable, merge-friendly blocks. Insert one in seconds, with the contact’s name, fee, and consult details filled in automatically. Your team sends the same accurate message every time, and the hours you spend retyping become minutes.",
  ],
  leakChips: [
    "Insert in seconds",
    "Contact merge fields",
    "One source of truth for messaging",
    "Works in email & SMS",
  ],
  mockupHeading: "Your most-used messages, ready to insert.",
  mockupSubhead:
    "A snippet library with merge fields, search, and one-click insert into any email or text — consistent across your whole team.",
  whatYouGetHeading: "Consistent messaging without the retyping.",
  capabilities: [
    {
      icon: FileText,
      title: "Reusable snippets",
      body: "Save any paragraph or message as a snippet — consult prep, fee breakdown, what-to-bring — and insert it in seconds.",
    },
    {
      icon: Users,
      title: "Contact merge fields",
      body: "Snippets fill in the contact’s name, fee, consult time, and any custom field automatically — no manual find-and-replace.",
    },
    {
      icon: Mail,
      title: "Email & SMS",
      body: "Use the same snippet in an email, a text, or an automation — one library, every channel.",
    },
    {
      icon: Search,
      title: "Searchable library",
      body: "Find the right snippet fast by name or keyword — no scrolling through a Word doc looking for the right version.",
    },
    {
      icon: Zap,
      title: "Use in automations",
      body: "Drop snippets into workflows so every automated message uses your approved, accurate wording — not a one-off draft.",
    },
    {
      icon: Repeat,
      title: "Team-shared library",
      body: "Everyone on your team pulls from the same snippets, so messaging stays consistent and pricing stays current.",
    },
  ],
  useCases: [
    {
      icon: FileText,
      title: "The consult-prep message",
      body: "A snippet with the trust-cost explanation and what-to-bring list, merged with the contact’s name and consult time. Sent in seconds, accurate every time.",
      trigger: "Saves hours a week",
    },
    {
      icon: Mail,
      title: "The fee breakdown",
      body: "A snippet with your current pricing and what’s included. Update it once and every team member sends the accurate version — no stale numbers.",
      trigger: "Consistent pricing",
    },
    {
      icon: MessageSquare,
      title: "The quick text reply",
      body: "A snippet for the common “can I move my appointment” reply, merged with the reschedule link. Consistent, fast, professional.",
      trigger: "Faster replies",
    },
  ],
  connections: {
    heading: "Your snippets connect to every message you send.",
    subhead:
      "A snippet isn’t a doc on someone’s desktop — it’s a shared block that feeds your email, SMS, and automations with consistent, accurate messaging.",
    items: [
      { icon: Mail, label: "Email marketing" },
      { icon: MessageSquare, label: "SMS & inbox" },
      { icon: Zap, label: "Automation builder" },
      { icon: Users, label: "Team library" },
      { icon: Clipboard, label: "Templates" },
      { icon: Repeat, label: "Reusable everywhere" },
    ],
  },
  finalCtaHeading: "Let’s stop retyping the same messages.",
  finalCtaBody:
    "30 minutes. We’ll map the messages you send most, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["email-sms", "inbox", "email-marketing", "sms-marketing", "automation"],
};

export function EmailSmsSnippetsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
