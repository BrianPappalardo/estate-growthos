import { Phone, PhoneCall, Mic, ListChecks, Clock, BarChart3, Headphones, Zap } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Communication · Power Dialer",
  icon: Phone,
  title: "Leadli Power Dialer",
  subtitle:
    "Call through your list fast, with every call, voicemail, and note logged to the right contact automatically.",
  body: "Power through outreach with a click-to-call dialer that works through a Smart List of contacts and logs every call, voicemail drop, and note to the right CRM record. No separate dialer, no &ldquo;let me remember what we talked about,&rdquo; no calls that vanish from the record. Follow-up never stalls because the next call and the last note live in the same place.",
  replaces: ["Separate dialer tools", "Manual call logging", "Voicemail drop apps"],
  leakHeading: "Your outreach calls get made, and then nobody remembers what was said.",
  leakBody: [
    "You or your intake coordinator work through a list of cold leads, calling one by one. Some answer, some don&rsquo;t, and the notes &mdash; if they get taken &mdash; end up in a notebook or a separate doc that never makes it back to the CRM. So the next person who touches that lead has no idea they were already called, what was said, or whether to try again. The lead goes cold twice.",
    "Leadli Power Dialer fixes that by putting the call, the note, and the contact in one screen. Click to call, talk, type a note, and it&rsquo;s filed to the record instantly &mdash; with a voicemail drop for the ones who don&rsquo;t answer. The next call picks up exactly where the last one left off, and your pipeline reflects every conversation.",
  ],
  leakChips: [
    "Click-to-call from any list",
    "Notes logged to the contact",
    "One-click voicemail drops",
    "No separate dialer",
  ],
  mockupHeading: "A dialer that logs itself as you go.",
  mockupSubhead:
    "Work through a Smart List, call with one click, drop a voicemail, and log a note &mdash; all filed to the contact automatically.",
  whatYouGetHeading: "Outreach that leaves a trail, not a gap.",
  capabilities: [
    {
      icon: PhoneCall,
      title: "Click-to-call dialer",
      body: "Call any contact with one click from a Smart List, a pipeline, or a contact record &mdash; no manual dialing.",
    },
    {
      icon: Mic,
      title: "Voicemail drop",
      body: "Leave a pre-recorded voicemail with one click when someone doesn&rsquo;t answer &mdash; consistent message, no repetition.",
    },
    {
      icon: ListChecks,
      title: "Auto-logged call notes",
      body: "Type a note during or after the call and it&rsquo;s filed to the contact&rsquo;s record instantly &mdash; with call time and outcome.",
    },
    {
      icon: Zap,
      title: "List-based outreach",
      body: "Work through a Smart List of cold leads or follow-ups in one session &mdash; the dialer moves you to the next automatically.",
    },
    {
      icon: Clock,
      title: "Call disposition",
      body: "Mark each call as answered, voicemail, no-answer, or booked &mdash; and trigger the right next step per outcome.",
    },
    {
      icon: BarChart3,
      title: "Outreach analytics",
      body: "See calls made, answered, and booked per list or per rep &mdash; so you know who&rsquo;s converting outreach into consults.",
    },
  ],
  useCases: [
    {
      icon: ListChecks,
      title: "The cold-lead revival",
      body: "Work through 400 dormant leads in one session. The dialer moves you along, logs each call, and books the ones who say yes &mdash; all in the CRM.",
      trigger: "Wakes dormant revenue",
    },
    {
      icon: Mic,
      title: "The no-answer voicemail",
      body: "When a lead doesn&rsquo;t pick up, drop a pre-recorded voicemail with one click. Consistent, professional, and filed to the record.",
      trigger: "No more &ldquo;I&rsquo;ll call back later&rdquo;",
    },
    {
      icon: BarChart3,
      title: "The follow-up audit",
      body: "See how many calls each rep made, how many answered, how many booked. Know who&rsquo;s converting outreach into consults &mdash; with real numbers.",
      trigger: "Coaches your team",
    },
  ],
  connections: {
    heading: "Every call connects to the contact and the pipeline.",
    subhead:
      "A call isn&rsquo;t a separate event in a separate dialer &mdash; it&rsquo;s a logged conversation on the same record your pipeline and follow-up run on.",
    items: [
      { icon: PhoneCall, label: "Click-to-call" },
      { icon: Mic, label: "Voicemail drops" },
      { icon: ListChecks, label: "Smart Lists" },
      { icon: Zap, label: "Workflow triggers" },
      { icon: BarChart3, label: "Outreach reports" },
      { icon: Headphones, label: "Cloud phone" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s turn your outreach into a tracked, logged system.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map your call lists and follow-up, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["power-dialer", "cloud-phone", "inbox", "smart-lists", "automation"],
};

export function PowerDialerProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
