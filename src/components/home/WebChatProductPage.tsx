import { MessagesSquare, MessageSquare, Bot, Eye, Clock, Zap, Users, Globe } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Communication · Web Chat",
  icon: MessagesSquare,
  title: "Leadli Web Chat",
  subtitle:
    "Live chat on your site that lands in your unified inbox &mdash; with full visitor context and AI-assisted replies.",
  body: "Add live chat to any page on your site and every message lands in your unified inbox, tied to a CRM contact with the visitor&rsquo;s browsing history, source, and page context. AI can draft the first reply or handle common questions, and your team picks up the conversation in the same place they handle email and text. No Intercom, no Tawk.to, no chat that lives in a separate widget your CRM can&rsquo;t see.",
  replaces: ["Intercom", "Tawk.to", "Separate live-chat widgets"],
  leakHeading: "Your site&rsquo;s chat widget is a separate inbox no one checks.",
  leakBody: [
    "You add a chat widget to your site because you&rsquo;re supposed to. A visitor asks a question, the message lands in the chat tool&rsquo;s inbox &mdash; which no one on your team monitors &mdash; and the visitor waits, then leaves. Even when someone does answer, the conversation isn&rsquo;t tied to the CRM, so the next time that person emails, you have no idea you&rsquo;ve already spoken.",
    "Leadli Web Chat routes every chat into the same unified inbox as your email and text, tied to a contact with full context. AI drafts replies to common questions so the response is instant, and your team takes over in the same place they already work. The chat isn&rsquo;t a separate widget &mdash; it&rsquo;s another channel into one inbox.",
  ],
  leakChips: [
    "Chats land in your unified inbox",
    "AI-assisted instant replies",
    "Full visitor context",
    "Tied to the CRM contact",
  ],
  mockupHeading: "Site chat that&rsquo;s part of your inbox, not a separate widget.",
  mockupSubhead:
    "A live-chat widget on any page, with AI-assisted replies, visitor context, and every conversation routed to your unified inbox.",
  whatYouGetHeading: "Chat that actually gets answered.",
  capabilities: [
    {
      icon: MessagesSquare,
      title: "On-site live chat",
      body: "Add a branded chat widget to any page &mdash; landing pages, your main site, funnels &mdash; in minutes.",
    },
    {
      icon: MessageSquare,
      title: "Unified inbox routing",
      body: "Every chat lands in the same inbox as your email and text, so your team answers from one place, not three.",
    },
    {
      icon: Bot,
      title: "AI-assisted replies",
      body: "AI drafts instant replies to common questions &mdash; pricing, hours, how to book &mdash; so the visitor gets an answer in seconds.",
    },
    {
      icon: Eye,
      title: "Visitor context",
      body: "See the page the visitor is on, where they came from, and their browsing history &mdash; so you answer in context.",
    },
    {
      icon: Clock,
      title: "Off-hours capture",
      body: "When you&rsquo;re closed, the chat captures the message and offers a consult link &mdash; no lead lost to the time of day.",
    },
    {
      icon: Zap,
      title: "CRM & workflow sync",
      body: "A chat creates or updates a contact and can trigger a workflow &mdash; book a consult, send a follow-up &mdash; automatically.",
    },
  ],
  useCases: [
    {
      icon: Bot,
      title: "The instant pricing answer",
      body: "A visitor asks &ldquo;what does a trust cost?&rdquo; AI replies instantly with your pricing snippet and a consult link &mdash; before they bounce.",
      trigger: "Catches the quick question",
    },
    {
      icon: Clock,
      title: "The after-hours capture",
      body: "Someone visits at 9 PM and chats. The bot captures their question and offers a booking link. You wake up to a booked consult.",
      trigger: "No lead lost to time",
    },
    {
      icon: Eye,
      title: "The page-aware reply",
      body: "A visitor on your trust page asks a question. You see they&rsquo;re on the trust page and answer about trusts &mdash; not a generic &ldquo;how can we help.&rdquo;",
      trigger: "Answers in context",
    },
  ],
  connections: {
    heading: "Every chat connects to a contact and a workflow.",
    subhead:
      "A chat isn&rsquo;t a separate widget in a separate tool &mdash; it&rsquo;s another channel into the same inbox, CRM, and automations as your email and text.",
    items: [
      { icon: MessageSquare, label: "Unified inbox" },
      { icon: Bot, label: "AI-assisted replies" },
      { icon: Eye, label: "Visitor context" },
      { icon: Zap, label: "Workflow triggers" },
      { icon: Globe, label: "Websites & funnels" },
      { icon: Users, label: "CRM contacts" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s make your site chat actually get answered.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map where you&rsquo;d use chat, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["web-chat", "inbox", "websites", "integrations", "automation"],
};

export function WebChatProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
