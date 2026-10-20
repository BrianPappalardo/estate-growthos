import {
  CreditCard,
  Receipt,
  Package,
  Gift,
  Truck,
  Star,
  Share2,
  FileSignature,
} from "lucide-react";
import type { LeadliFeature } from "./types";

export const PAYMENTS_GROWTH: LeadliFeature[] = [
  {
    slug: "payments",
    name: "Leadli Payments",
    category: "Payments",
    icon: CreditCard,
    tagline:
      "Built specifically for complicated funds routing — including Attorney IOLTA Trust accounts.",
    description:
      "Collect retainers, split earned fees from trust funds, and route payments to the right account automatically. Leadli Payments is included for every customer at no additional fee.",
    replaces: "Stripe, LawPay, separate trust accounting tools",
    included: [
      "Retainer & invoice collection",
      "Operating vs. trust account routing",
      "Recurring & payment plans",
      "Reconciliation-ready reporting",
    ],
    primary: true,
    status: "live",
    partnerBadge: "Official Confido Legal Partner",
    partnerTitle: "Leadli Payments — built for complicated funds routing",
    partnerBody:
      "We built Leadli Payments specifically for complicated funds routing — like Attorney IOLTA Trust accounts. It's included for every customer at no additional fee. (Confido Legal payment processing fees still apply.)",
  },
  {
    slug: "invoices-estimates",
    name: "Invoices & Estimates",
    category: "Payments",
    icon: Receipt,
    tagline: "Send estimates and invoices that get paid — right in the platform.",
    description:
      "Quote, bill, and collect in one place with line items, payment plans, and auto-reminders tied to each client record.",
    replaces: "QuickBooks invoicing add-ons",
    included: [
      "Estimates & invoices",
      "Line items & payment plans",
      "Auto-reminders",
      "Auto-filed to contacts",
    ],
    primary: false,
    status: "planned",
  },
  {
    slug: "products-inventory",
    name: "Products & Inventory",
    category: "Payments",
    icon: Package,
    tagline: "Sell physical or digital products with stock tracking built in.",
    description:
      "List products, manage inventory, and sell online with automatic stock adjustments on every order.",
    replaces: "Shopify Lite & inventory spreadsheets",
    included: ["Product catalog", "Stock tracking", "Digital & physical", "Order management"],
    primary: false,
    status: "planned",
  },
  {
    slug: "coupons-gift-cards",
    name: "Coupons & Gift Cards",
    category: "Payments",
    icon: Gift,
    tagline: "Discounts and gift cards that apply at checkout automatically.",
    description:
      "Create promo codes and sell redeemable gift cards that apply themselves at checkout — no separate loyalty tool.",
    replaces: "Coupon apps & gift card platforms",
    included: ["Promo codes", "Sellable gift cards", "Auto-apply at checkout", "Usage tracking"],
    primary: false,
    status: "planned",
  },
  {
    slug: "ecommerce-shipping",
    name: "eCommerce & Shipping",
    category: "Payments",
    icon: Truck,
    tagline: "Sell and ship from the same system your clients live in.",
    description:
      "Run an online store with checkout, shipping, and order tracking connected to your CRM and automations.",
    replaces: "Shopify & ShipStation",
    included: ["Online checkout", "Shipping rates", "Order tracking", "Automated fulfillment"],
    primary: false,
    status: "planned",
  },
  {
    slug: "reviews",
    name: "Reputation + Reviews",
    category: "Growth",
    icon: Star,
    tagline: "Automated review requests triggered the moment a client signs their final plan.",
    description:
      "Turn completed engagements into five-star Google reviews on autopilot, and respond to feedback from one inbox. No separate reputation tool required.",
    replaces: "Birdeye, Podium, Broadly",
    included: [
      "Automated review requests",
      "Google & Facebook integration",
      "Centralized review responses",
      "Reputation dashboard",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "affiliate",
    name: "Affiliate Manager",
    category: "Growth",
    icon: Share2,
    tagline: "Track the referrals and partners that send you business.",
    description:
      "Run a referral or affiliate program with custom links, commission tracking, and payouts — so the partners sending you clients get credit automatically.",
    replaces: "Referral software & manual tracking",
    included: [
      "Custom referral links",
      "Commission tracking",
      "Partner portal",
      "Automated payouts",
    ],
    primary: false,
    status: "planned",
  },
  {
    slug: "contracts",
    name: "Contracts + e-Signatures",
    category: "Legal",
    icon: FileSignature,
    tagline: "Legally binding e-signature for engagement letters and fee agreements.",
    description:
      "Send engagement letters, fee agreements, and disclosures for signature right inside the platform. Status tracking and automatic reminders keep documents moving without a separate e-sign subscription.",
    replaces: "DocuSign, PandaDoc, Adobe Sign",
    included: [
      "Built-in e-signature",
      "Engagement letter templates",
      "Status tracking & reminders",
      "Auto-filed to the client record",
    ],
    primary: true,
    status: "planned",
  },
];
