import { Share2, Link, Users, Wallet, BarChart3, Percent, UserCheck, Repeat } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Growth · Affiliate Manager",
  icon: Share2,
  title: "Leadli Affiliate Manager",
  subtitle:
    "Track the referrals and partners who send you business — with custom links, commissions, and automatic payouts.",
  body: "Run a referral or affiliate program where the partners sending you clients get credit automatically. Each partner gets a custom link, every referral is tracked back to them, and commissions are calculated and paid without a spreadsheet. Whether it’s a financial advisor who refers estate-planning clients or a past client who sends their neighbor, Leadli tracks the source, the conversion, and the payout — all tied to your CRM.",
  replaces: ["Referral software", "Manual commission tracking", "Spreadsheet payouts"],
  leakHeading: "You get referrals and have no real way to track or reward them.",
  leakBody: [
    "A financial advisor sends you three clients this year. A past client sends their neighbor. You mean to track who sent whom and send a thank-you or a referral fee, but it lives in your head and a sticky note. So partners stop referring because they never hear back, and you have no idea which relationships actually produce clients — the lifeblood of a practice.",
    "Leadli Affiliate Manager turns referrals into a tracked, rewarded system. Each partner gets a link, every referred lead is tagged to them in your CRM, and commissions calculate and pay automatically when a referral signs. The partners who send you business feel valued and keep sending; the ones who don’t, you can see.",
  ],
  leakChips: [
    "Custom referral links",
    "Automatic commission tracking",
    "Referrals tagged in the CRM",
    "Payouts without a spreadsheet",
  ],
  mockupHeading: "A referral program that runs and rewards itself.",
  mockupSubhead:
    "Partner links, per-referral tracking, commission calculation, and payouts — all tied to signed matters.",
  whatYouGetHeading: "The partners who send you business, finally tracked and rewarded.",
  capabilities: [
    {
      icon: Link,
      title: "Custom referral links",
      body: "Give every partner a unique link that tags every referred lead to them in your CRM — automatically.",
    },
    {
      icon: UserCheck,
      title: "Partner portal",
      body: "Partners see their referrals, conversions, and commissions in a branded portal — no “did you track that one?” emails.",
    },
    {
      icon: Percent,
      title: "Commission tracking",
      body: "Set flat or percentage commissions per partner or per service, calculated automatically when a referral signs.",
    },
    {
      icon: Wallet,
      title: "Automated payouts",
      body: "Pay partners through Leadli Payments on a schedule — no manual commission math, no end-of-month spreadsheet.",
    },
    {
      icon: BarChart3,
      title: "Referral reporting",
      body: "See which partners send the most leads, the most signed matters, and the highest-value clients — and nurture the best.",
    },
    {
      icon: Repeat,
      title: "Two-way CRM sync",
      body: "A referred lead is a contact in your pipeline and a referral in your affiliate system — one record, two views.",
    },
  ],
  useCases: [
    {
      icon: Users,
      title: "The advisor network",
      body: "Give financial advisors and CPAs custom links. Every estate-planning client they refer is tagged to them, and their referral fee pays out automatically on signing.",
      trigger: "Rewards your best sources",
    },
    {
      icon: UserCheck,
      title: "The past-client referral",
      body: "Past clients get a link to share. When their neighbor signs, they get a thank-you gift or credit — automatically, no sticky notes.",
      trigger: "Turns clients into advocates",
    },
    {
      icon: BarChart3,
      title: "The partner review",
      body: "Quarterly, see which partners sent the most signed matters and double down on those relationships — with real numbers, not guesses.",
      trigger: "Focus on what works",
    },
  ],
  connections: {
    heading: "Every referral connects to a contact and a payout.",
    subhead:
      "A referral isn’t a note in a spreadsheet — it’s a tracked lead in your CRM with a partner, a commission, and an automatic payout.",
    items: [
      { icon: Link, label: "Referral links" },
      { icon: UserCheck, label: "Partner portal" },
      { icon: Wallet, label: "Leadli Payments" },
      { icon: BarChart3, label: "Referral reporting" },
      { icon: Users, label: "CRM contacts" },
      { icon: Percent, label: "Commission rules" },
    ],
  },
  finalCtaHeading: "Let’s turn your referrals into a tracked system.",
  finalCtaBody:
    "30 minutes. We’ll map your referral relationships, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["affiliate", "payments", "reviews", "marketing", "crm"],
};

export function AffiliateManagerProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
