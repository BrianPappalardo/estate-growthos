import {
  Package,
  Boxes,
  Tag,
  ShoppingCart,
  Truck,
  BarChart3,
  Layers,
  RefreshCw,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Payments · Products & Inventory",
  icon: Package,
  title: "Leadli Products & Inventory",
  subtitle:
    "Sell physical or digital products with stock tracking built in — no separate store or inventory spreadsheet.",
  body: "List products, manage inventory, and sell online with automatic stock adjustments on every order. Whether you sell a digital estate-planning guide, a printed workbook, or a bundled service, Leadli tracks what you have, what sold, and what needs restocking — all in the same platform that holds the buyer’s CRM record. No Shopify Lite, no inventory spreadsheet, no separate store to maintain.",
  replaces: ["Shopify Lite", "Inventory spreadsheets", "Separate store platforms"],
  leakHeading: "You sell a few products and run a whole separate store to do it.",
  leakBody: [
    "You have a digital guide, a printed workbook, and maybe a seminar ticket to sell. So you stand up a Shopify store, sync inventory by hand, and pay a monthly fee for a storefront that sells a handful of items. The buyer’s info sits in Shopify; your CRM has no idea they bought; and the inventory count in your spreadsheet is wrong by Tuesday.",
    "Leadli Products & Inventory folds selling into the platform your contacts already live in. A product purchase creates or updates a contact, adjusts stock automatically, and can trigger a fulfillment workflow — all from one record. No separate store, no manual stock counts, no buyer data trapped outside your CRM.",
  ],
  leakChips: [
    "Physical & digital products",
    "Auto stock adjustment",
    "Buyer synced to CRM",
    "No separate store",
  ],
  mockupHeading: "A product catalog that’s part of your CRM.",
  mockupSubhead:
    "List products, track stock, and watch every order adjust inventory and create a contact automatically.",
  whatYouGetHeading: "Selling without a whole second platform.",
  capabilities: [
    {
      icon: Package,
      title: "Product catalog",
      body: "List physical and digital products with images, descriptions, pricing, and variants — all managed in Leadli.",
    },
    {
      icon: Boxes,
      title: "Stock tracking",
      body: "Inventory counts adjust automatically on every order, with low-stock alerts so you reorder before you run out.",
    },
    {
      icon: Tag,
      title: "Digital & physical",
      body: "Sell a downloadable guide that delivers instantly, or a printed workbook that triggers a fulfillment workflow — same catalog.",
    },
    {
      icon: ShoppingCart,
      title: "Order management",
      body: "Every order is tied to a contact, with status tracking from paid to fulfilled to delivered.",
    },
    {
      icon: RefreshCw,
      title: "Auto stock adjustment",
      body: "No manual count — every sale, refund, and restock updates inventory in real time.",
    },
    {
      icon: BarChart3,
      title: "Sales reporting",
      body: "See what’s selling, to whom, and how often — tied back to the contact and the campaign that brought them in.",
    },
  ],
  useCases: [
    {
      icon: Package,
      title: "The digital guide",
      body: "Sell a downloadable estate-planning guide. The purchase delivers the file instantly, creates a contact, and drops them into a nurture sequence — all automatic.",
      trigger: "Builds your list & revenue",
    },
    {
      icon: Boxes,
      title: "The printed workbook",
      body: "Sell a printed trust workbook with real stock. Leadli adjusts inventory on every sale and alerts you when it’s time to reprint.",
      trigger: "No more stockouts",
    },
    {
      icon: ShoppingCart,
      title: "The seminar ticket",
      body: "Sell seminar tickets as products with capacity limits. Every sale reserves a seat and creates a registrant record for reminders.",
      trigger: "Fills the room",
    },
  ],
  connections: {
    heading: "Every sale connects to a contact and a workflow.",
    subhead:
      "A product isn’t a line item in a separate store — it’s a purchase that creates a contact, adjusts stock, and can trigger fulfillment.",
    items: [
      { icon: ShoppingCart, label: "Orders & checkout" },
      { icon: RefreshCw, label: "Inventory sync" },
      { icon: BarChart3, label: "Sales reporting" },
      { icon: Truck, label: "Fulfillment workflows" },
      { icon: Layers, label: "CRM contact record" },
      { icon: Tag, label: "Coupons & gift cards" },
    ],
  },
  finalCtaHeading: "Let’s sell your products without a second platform.",
  finalCtaBody:
    "30 minutes. We’ll map what you sell, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "products-inventory",
    "payments",
    "ecommerce-shipping",
    "coupons-gift-cards",
    "invoices-estimates",
  ],
};

export function ProductsInventoryProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
