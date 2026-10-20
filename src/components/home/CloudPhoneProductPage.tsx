import {
  Phone,
  PhoneCall,
  Mic,
  MessageSquare,
  Route,
  BarChart3,
  Headphones,
  Voicemail,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Communication · Cloud Phone System",
  icon: Phone,
  title: "Leadli Cloud Phone System",
  subtitle:
    "A firm phone number with call tracking, recording, routing, and missed-call text-back — so every call becomes a tracked lead.",
  body: "Get a local firm number with call recording, call whisper, routing rules, and missed-call text-back that turns a dropped call into a captured lead. Every inbound call is logged to a CRM contact, every voicemail is transcribed, and every conversation is part of the same record as the emails and texts. No RingCentral, no CallRail, no calls that vanish from your CRM.",
  replaces: ["RingCentral", "CallRail", "Grasshopper", "Separate phone & call-tracking tools"],
  leakHeading: "Your firm’s calls land in a phone system your CRM can’t see.",
  leakBody: [
    "A prospect calls your firm number. If someone’s at the desk, great — but the call isn’t logged anywhere your CRM can find it. If no one answers, it goes to a voicemail someone checks eventually, and the prospect often just calls the next firm. You have no idea how many calls came in, how many were missed, or which marketing source produced the call — the phone is a black box.",
    "Leadli Cloud Phone System opens that box. Every call is logged to a contact, recorded and transcribed, routed by rule, and — if missed — answered instantly with an automatic text that captures the lead. The call is part of the same record as the form they filled out and the email they opened, and you can finally see which source produces calls that become clients.",
  ],
  leakChips: [
    "Missed-call text-back",
    "Calls logged to the CRM",
    "Recording & transcription",
    "Routing by rule",
  ],
  mockupHeading: "A phone system that captures every call as a lead.",
  mockupSubhead:
    "Local numbers, call routing, recording, transcription, and missed-call text-back — every call logged to a contact.",
  whatYouGetHeading: "A firm number that turns calls into tracked leads.",
  capabilities: [
    {
      icon: PhoneCall,
      title: "Local firm numbers",
      body: "Get a local number for your firm, with extensions and routing rules that send the right call to the right person.",
    },
    {
      icon: MessageSquare,
      title: "Missed-call text-back",
      body: "When a call goes unanswered, an automatic text replies in seconds — capturing the lead before they call the next firm.",
    },
    {
      icon: Mic,
      title: "Call recording & whisper",
      body: "Record calls for training and quality, with a whisper message that tells the answerer who’s calling and from where.",
    },
    {
      icon: Voicemail,
      title: "Voicemail transcription",
      body: "Voicemails are transcribed and filed to the contact — read them instead of listening, and never lose one in a queue.",
    },
    {
      icon: Route,
      title: "Routing & voicemail",
      body: "Route by time of day, source, or service — estate planning calls to one person, probate to another — with rules you set.",
    },
    {
      icon: BarChart3,
      title: "Call tracking & analytics",
      body: "See call volume, answer rate, missed calls, and source — tied to the campaigns and contacts that produced them.",
    },
  ],
  useCases: [
    {
      icon: MessageSquare,
      title: "The missed-call save",
      body: "A prospect calls after hours. No one answers, but an instant text replies: “Sorry we missed you — here’s a link to book a consult.” The lead is captured, not lost.",
      trigger: "Saves missed leads",
    },
    {
      icon: Route,
      title: "The service router",
      body: "Estate planning calls route to your intake coordinator, probate to your paralegal — by rule, not by whoever grabs the line first.",
      trigger: "Right call, right person",
    },
    {
      icon: BarChart3,
      title: "The source tracker",
      body: "See which marketing source produces the most inbound calls — and which produce calls that become clients. Finally measure phone ROI.",
      trigger: "Measures call ROI",
    },
  ],
  connections: {
    heading: "Every call connects to the contact and the source.",
    subhead:
      "A call isn’t a separate event in a separate phone system — it’s a logged conversation on the same record your pipeline, campaigns, and inbox run on.",
    items: [
      { icon: PhoneCall, label: "Inbound routing" },
      { icon: MessageSquare, label: "Missed-call text-back" },
      { icon: Mic, label: "Recording & transcription" },
      { icon: BarChart3, label: "Call analytics" },
      { icon: Headphones, label: "Power dialer" },
      { icon: Voicemail, label: "Unified inbox" },
    ],
  },
  finalCtaHeading: "Let’s turn your firm’s phone into a lead engine.",
  finalCtaBody:
    "30 minutes. We’ll map your call flow, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["cloud-phone", "power-dialer", "inbox", "marketing", "automation"],
};

export function CloudPhoneProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
