import { Mic, PhoneCall, Bot, Clock, Calendar, MessageSquare, Headphones, Zap } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Platform · Voice AI & Conversational AI",
  icon: Mic,
  title: "Leadli Voice AI & Conversational AI",
  subtitle:
    "AI that answers calls and books appointments 24/7 — so a missed call never becomes a lost client.",
  body: "Conversational AI answers inbound calls and messages around the clock, handles common questions, books consults on your calendar, and hands off to your team when it’s needed. A prospect calls at 9 PM, the AI answers, answers their pricing question, and books them for Tuesday at 2 — all before you’re back at your desk. No answering service reading from a script, no missed call that goes to the next firm.",
  replaces: ["Answering services", "Call centers", "After-hours voicemail black holes"],
  leakHeading: "After-hours calls go to voicemail, and the caller just calls the next firm.",
  leakBody: [
    "Most of your prospects call outside business hours — evenings, weekends, lunch breaks. They hit your voicemail, leave a message, and while you’re sleeping they call the next firm on the list. By the time you call back Tuesday morning, they’ve already booked someone else. The after-hours call is the highest-intent lead you get, and it’s the one you lose most.",
    "Leadli Voice AI answers every call, instantly, 24/7. It handles the common questions — pricing, services, how to book — and books the consult right on your calendar. When a call needs a human, it routes to your team with a full summary. The 9 PM caller becomes a Tuesday 2 PM consult before you’ve had your coffee.",
  ],
  leakChips: [
    "Answers every call, 24/7",
    "Books consults automatically",
    "Handles common questions",
    "Hands off to your team",
  ],
  mockupHeading: "An AI receptionist that never sleeps and never misses.",
  mockupSubhead:
    "24/7 call answering, appointment booking, FAQ handling, and warm handoff to your team — with every call logged to a contact.",
  whatYouGetHeading: "Every call answered, every lead captured — day or night.",
  capabilities: [
    {
      icon: PhoneCall,
      title: "24/7 call answering",
      body: "Every inbound call is answered instantly, day or night — no ring-no-answer, no voicemail, no lost lead.",
    },
    {
      icon: Calendar,
      title: "Appointment booking",
      body: "The AI books consults straight onto your calendar, matching service to the right calendar and availability.",
    },
    {
      icon: Bot,
      title: "FAQ handling",
      body: "Trained on your services and pricing, the AI answers the common questions that eat up your team’s time.",
    },
    {
      icon: Headphones,
      title: "Transfer to your team",
      body: "When a call needs a human, the AI warms up a transfer with a full summary — not a cold handoff.",
    },
    {
      icon: MessageSquare,
      title: "Text & chat too",
      body: "The same conversational AI handles texts and web chat — one brain, every channel, consistent answers.",
    },
    {
      icon: Zap,
      title: "CRM & workflow sync",
      body: "Every call creates or updates a contact, with a transcript and summary filed to the record automatically.",
    },
  ],
  useCases: [
    {
      icon: Clock,
      title: "The 9 PM caller",
      body: "A prospect calls after hours. The AI answers, explains your pricing, and books a Tuesday consult — before they call the next firm.",
      trigger: "Captures after-hours leads",
    },
    {
      icon: Bot,
      title: "The pricing question",
      body: "“What does a trust cost?” The AI answers with your pricing and books a consult — saving your team the same call fifty times a week.",
      trigger: "Frees your team",
    },
    {
      icon: Headphones,
      title: "The complex handoff",
      body: "A caller has a nuanced probate question. The AI summarizes it and warms up a transfer to your team — with context, not a cold ring.",
      trigger: "Right call, right person",
    },
  ],
  connections: {
    heading: "Every AI conversation connects to a contact and a calendar.",
    subhead:
      "The AI isn’t a separate answering service — it’s part of the same CRM, calendars, and inbox that handle your email, text, and pipeline.",
    items: [
      { icon: Calendar, label: "Consult calendars" },
      { icon: MessageSquare, label: "Unified inbox" },
      { icon: Zap, label: "Workflow triggers" },
      { icon: Bot, label: "AI Agent Studio" },
      { icon: PhoneCall, label: "Cloud phone" },
      { icon: Headphones, label: "Team handoff" },
    ],
  },
  finalCtaHeading: "Let’s stop losing your after-hours calls.",
  finalCtaBody:
    "30 minutes. We’ll map your call flow, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["voice-ai", "ai-agent-studio", "cloud-phone", "calendars", "inbox"],
};

export function VoiceAiProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
