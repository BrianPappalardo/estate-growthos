import {
  Users,
  MessageCircle,
  UserCheck,
  ShieldCheck,
  MessagesSquare,
  Repeat,
  Star,
  Globe,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Education · Online Communities",
  icon: Users,
  title: "Leadli Online Communities",
  subtitle:
    "Bring your clients and prospects into a private space you control — not a third-party platform.",
  body: "Host private communities where clients ask questions, share wins, and stay engaged between matters — on your domain, branded to your firm, controlled by you. A space for past clients to ask follow-up questions, a group for seminar attendees to keep the conversation going, a referral network for your best partners. No Facebook Group, no Skool, no sending your clients to a platform that shows them ads for other lawyers.",
  replaces: ["Facebook Groups", "Skool", "Circle", "Third-party community platforms"],
  leakHeading: "Your community lives on a platform that shows your clients competitors’ ads.",
  leakBody: [
    "You start a Facebook Group for past clients to stay in touch. It works — until the algorithm buries your posts, the group fills with spam, and the sidebar shows your estate-planning clients ads for a discount will service. You built the audience; the platform owns it and monetizes it against you. And none of it connects to your CRM.",
    "Leadli Online Communities puts that space on your domain, branded to your firm, with no ads and no algorithm deciding who sees what. Members are CRM contacts, their activity is part of their record, and you control who’s in, what they see, and how it’s moderated. Your community, your rules, your data.",
  ],
  leakChips: [
    "On your domain, your brand",
    "No ads, no algorithm",
    "Members are CRM contacts",
    "You control access & moderation",
  ],
  mockupHeading: "A community you own, on your domain.",
  mockupSubhead:
    "Private member spaces, threaded discussions, member directories, and moderation — branded to your firm, tied to your CRM.",
  whatYouGetHeading: "A community that builds loyalty, not someone else’s ad inventory.",
  capabilities: [
    {
      icon: Users,
      title: "Private member spaces",
      body: "Create gated communities for past clients, seminar attendees, or partners — on your domain, branded to your firm.",
    },
    {
      icon: MessageCircle,
      title: "Threaded discussions",
      body: "Members ask questions, share wins, and help each other in threaded conversations you can moderate and pin.",
    },
    {
      icon: UserCheck,
      title: "Member directories",
      body: "Let members see and connect with each other — or keep it private. You control what’s visible.",
    },
    {
      icon: ShieldCheck,
      title: "Moderation tools",
      body: "Approve members, moderate posts, and keep the space clean — no spam, no trolls, no algorithmic chaos.",
    },
    {
      icon: MessagesSquare,
      title: "Tied to the CRM",
      body: "Members are CRM contacts, so their community activity is part of their record — engagement that feeds your pipeline.",
    },
    {
      icon: Repeat,
      title: "Triggers & nurturing",
      body: "A new community member can trigger a welcome sequence; a question in the group can alert your team to follow up.",
    },
  ],
  useCases: [
    {
      icon: Users,
      title: "The past-client group",
      body: "A private space for past clients to ask follow-up questions and refer friends. They stay engaged between matters — and refer more often.",
      trigger: "More referrals",
    },
    {
      icon: MessageCircle,
      title: "The seminar after-party",
      body: "Seminar attendees join a community to keep the conversation going. The ones who engage are the ones who book.",
      trigger: "Converts attendees",
    },
    {
      icon: UserCheck,
      title: "The partner network",
      body: "A private space for the advisors and CPAs who refer you. You nurture the relationships that produce your best clients.",
      trigger: "Stronger referral sources",
    },
  ],
  connections: {
    heading: "Your community connects to your contacts and your pipeline.",
    subhead:
      "A community isn’t a separate platform — it’s a space where your CRM contacts engage, with their activity feeding the same records you market and bill from.",
    items: [
      { icon: Users, label: "CRM contacts" },
      { icon: MessageCircle, label: "Threaded discussions" },
      { icon: ShieldCheck, label: "Moderation" },
      { icon: Repeat, label: "Workflow triggers" },
      { icon: Star, label: "Engagement tracking" },
      { icon: Globe, label: "Your domain" },
    ],
  },
  finalCtaHeading: "Let’s build a community you actually own.",
  finalCtaBody:
    "30 minutes. We’ll map the community you’d like to build, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["communities", "courses", "client-portal", "marketing", "reviews"],
};

export function OnlineCommunitiesProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
