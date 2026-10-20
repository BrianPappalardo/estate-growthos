import { Gift, Tag, Percent, CreditCard, BarChart3, Sparkles, Repeat, Wallet } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Payments · Coupons & Gift Cards",
  icon: Gift,
  title: "Leadli Coupons & Gift Cards",
  subtitle:
    "Discounts and gift cards that apply themselves at checkout &mdash; no separate loyalty or promo tool.",
  body: "Create promo codes for seasonal offers and sell redeemable gift cards that apply themselves at checkout automatically. Track usage, set expiry dates, and limit codes to specific products or services &mdash; all inside the same platform that holds the buyer, the product, and the payment. No coupon app, no gift card platform, no manual &ldquo;did they use the code?&rdquo; tracking.",
  replaces: ["Coupon apps", "Gift card platforms", "Manual promo tracking"],
  leakHeading:
    "Your promo codes and gift cards live in a tool that doesn&rsquo;t talk to your store.",
  leakBody: [
    "You run a holiday discount and hand out a code. Some people use it, some don&rsquo;t, and you find out how many did by exporting orders into a spreadsheet at the end of the month. Gift cards are worse &mdash; a separate platform, a separate balance, and no way to see who bought them, who redeemed them, or how much is outstanding. So promos are a guessing game and gift cards are a liability you can&rsquo;t quite measure.",
    "Leadli Coupons & Gift Cards put both inside the same checkout your products and contacts already live in. A code applies itself, a gift card redeems itself, and every use is tracked against the contact and the order. You see redemption in real time, you control exactly what each code works on, and gift card balances stay accurate without a separate system.",
  ],
  leakChips: [
    "Auto-apply at checkout",
    "Per-code usage tracking",
    "Sellable gift cards",
    "No separate loyalty tool",
  ],
  mockupHeading: "Promos and gift cards that track themselves.",
  mockupSubhead:
    "Create codes with limits and expiry, sell gift cards with live balances, and watch every redemption tied to a contact.",
  whatYouGetHeading: "Offers that run themselves and report themselves.",
  capabilities: [
    {
      icon: Tag,
      title: "Promo codes",
      body: "Create discount codes with fixed or percentage discounts, expiry dates, and usage limits &mdash; per product or across the catalog.",
    },
    {
      icon: Gift,
      title: "Sellable gift cards",
      body: "Sell redeemable gift cards that carry a live balance, apply at checkout automatically, and stay accurate without a separate system.",
    },
    {
      icon: Percent,
      title: "Auto-apply at checkout",
      body: "Codes and gift cards apply themselves the moment a buyer enters them &mdash; no manual price adjustment, no &ldquo;let me fix that for you.&rdquo;",
    },
    {
      icon: BarChart3,
      title: "Usage tracking",
      body: "See how many times each code was used, by whom, and against which order &mdash; in real time, tied to the contact.",
    },
    {
      icon: Repeat,
      title: "Product & service limits",
      body: "Restrict a code to a specific product, service, or category so a consult discount doesn&rsquo;t accidentally apply to a workbook.",
    },
    {
      icon: Sparkles,
      title: "Seasonal campaigns",
      body: "Stack coupons with countdown timers and email campaigns for a coordinated seasonal push &mdash; all in one platform.",
    },
  ],
  useCases: [
    {
      icon: Tag,
      title: "The holiday discount",
      body: "A 15%-off code for December, limited to your digital guide. Leadli tracks every redemption and shows you the campaign&rsquo;s real revenue lift.",
      trigger: "Measurable promos",
    },
    {
      icon: Gift,
      title: "The gift card",
      body: "Sell gift cards clients can give to family for estate-planning services. Balances stay accurate and redeem automatically at checkout.",
      trigger: "New revenue upfront",
    },
    {
      icon: Percent,
      title: "The seminar early-bird",
      body: "An early-bird code that expires when the countdown timer hits zero. Urgency plus discount, tracked end to end.",
      trigger: "Fills seats early",
    },
  ],
  connections: {
    heading: "Every offer connects to the order and the contact.",
    subhead:
      "A coupon isn&rsquo;t a code floating in a separate tool &mdash; it&rsquo;s a tracked discount on an order tied to a contact in your CRM.",
    items: [
      { icon: CreditCard, label: "Checkout & payments" },
      { icon: BarChart3, label: "Usage reporting" },
      { icon: Wallet, label: "Gift card balances" },
      { icon: Tag, label: "Product limits" },
      { icon: Repeat, label: "Countdown timers" },
      { icon: Sparkles, label: "Email campaigns" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s make your offers trackable.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map the promos and gift cards you&rsquo;d like to run, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "coupons-gift-cards",
    "products-inventory",
    "payments",
    "ecommerce-shipping",
    "invoices-estimates",
  ],
};

export function CouponsGiftCardsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
