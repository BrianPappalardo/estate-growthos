import {
  Truck,
  ShoppingCart,
  Package,
  MapPin,
  CreditCard,
  BarChart3,
  Boxes,
  Zap,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Payments · eCommerce & Shipping",
  icon: Truck,
  title: "Leadli eCommerce & Shipping",
  subtitle:
    "Run an online store with checkout, shipping, and order tracking &mdash; connected to your CRM and automations.",
  body: "Sell physical and digital products with a full checkout, live shipping rates, and order tracking that&rsquo;s tied to the same CRM and automations the rest of your firm runs on. When an order ships, a workflow can fire; when it&rsquo;s delivered, a review request can go out. No Shopify, no ShipStation, no separate store disconnected from the people who buy from you.",
  replaces: ["Shopify", "ShipStation", "Separate store & shipping tools"],
  leakHeading: "Your store, your shipping, and your CRM are three separate systems.",
  leakBody: [
    "You run a store on Shopify, ship through ShipStation, and keep your buyers in a separate CRM. An order comes in, ships out, gets delivered &mdash; and none of those events ever reach the contact record that should trigger a follow-up, a review request, or a reorder nudge. Three tools, three logins, and a buyer who bought once and was never heard from again.",
    "Leadli eCommerce & Shipping collapses the store, the shipping, and the customer into one platform. An order creates a contact, shipping updates trigger workflows, and a delivery can automatically ask for a review or offer a reorder. The buyer isn&rsquo;t a stranger in a separate store &mdash; they&rsquo;re a contact in your CRM with a full purchase history.",
  ],
  leakChips: [
    "Checkout, shipping & tracking in one",
    "Orders tied to CRM contacts",
    "Delivery triggers workflows",
    "No separate store",
  ],
  mockupHeading: "A store where every order is a contact and a workflow.",
  mockupSubhead:
    "Checkout with live shipping rates, order tracking, and automations that fire on ship and deliver &mdash; all in the CRM.",
  whatYouGetHeading: "Selling and shipping without a second (and third) platform.",
  capabilities: [
    {
      icon: ShoppingCart,
      title: "Online checkout",
      body: "A full cart and checkout on your domain, with card and ACH payment through Leadli Payments.",
    },
    {
      icon: Truck,
      title: "Live shipping rates",
      body: "Real-time carrier rates at checkout so buyers see accurate shipping &mdash; no flat-rate guessing, no margin surprises.",
    },
    {
      icon: Package,
      title: "Order tracking",
      body: "Track every order from paid to shipped to delivered, with status visible to the buyer and your team.",
    },
    {
      icon: Zap,
      title: "Automated fulfillment",
      body: "Shipping and delivery events trigger workflows &mdash; a review request on delivery, a reorder nudge 90 days later.",
    },
    {
      icon: Boxes,
      title: "Inventory sync",
      body: "Stock adjusts on every order automatically, with low-stock alerts &mdash; no separate inventory count.",
    },
    {
      icon: MapPin,
      title: "Address validation",
      body: "Validate shipping addresses at checkout to cut down on returned packages and failed deliveries.",
    },
  ],
  useCases: [
    {
      icon: ShoppingCart,
      title: "The workbook store",
      body: "Sell your printed trust workbook with live shipping rates. Every buyer becomes a contact with a purchase history ready for follow-up.",
      trigger: "Buyers become contacts",
    },
    {
      icon: Zap,
      title: "The delivery review",
      body: "When an order is marked delivered, Leadli automatically sends a review request &mdash; the moment of satisfaction, captured.",
      trigger: "More five-star reviews",
    },
    {
      icon: Package,
      title: "The reorder nudge",
      body: "Ninety days after a workbook purchase, an automatic email offers the updated edition. The buyer&rsquo;s already in your CRM &mdash; no export, no re-upload.",
      trigger: "Repeat revenue",
    },
  ],
  connections: {
    heading: "Every order connects to a contact and a workflow.",
    subhead:
      "The store isn&rsquo;t a separate site &mdash; it&rsquo;s a sales channel that feeds the same CRM, pipeline, and automations as everything else.",
    items: [
      { icon: CreditCard, label: "Leadli Payments" },
      { icon: Boxes, label: "Products & inventory" },
      { icon: Zap, label: "Fulfillment workflows" },
      { icon: BarChart3, label: "Sales reporting" },
      { icon: ShoppingCart, label: "Checkout & cart" },
      { icon: Truck, label: "Shipping & tracking" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s run your store where your contacts already live.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map your store and shipping flow, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "ecommerce-shipping",
    "products-inventory",
    "payments",
    "coupons-gift-cards",
    "invoices-estimates",
  ],
};

export function EcommerceShippingProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
