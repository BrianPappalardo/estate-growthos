import {
  Activity,
  Gauge,
  BarChart3,
  Layers,
  TrendingUp,
  Calendar,
  Filter,
  Share2,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Insights · Custom Metrics",
  icon: Activity,
  title: "Leadli Custom Metrics",
  subtitle:
    "Track the numbers that actually move your firm — defined your way, pulled from anywhere in the platform.",
  body: "Define your own KPIs and pull them from any data in Leadli — cost per signed client, show rate by service, revenue per consult source — and combine them into one view that updates in real time. Stop bending your reporting around someone else’s idea of what matters, and stop exporting to a spreadsheet to calculate the one number you actually care about.",
  replaces: [
    "Spreadsheets & manual calculations",
    "Rigid built-in reports",
    "Export-to-Excel reporting",
  ],
  leakHeading: "The number you actually care about isn’t on any standard report.",
  leakBody: [
    "You want to know your cost per signed trust client by lead source. No off-the-shelf report gives you that, so every month you export three reports into a spreadsheet, write a formula, and hope you didn’t break it. By the time you have the number, it’s two weeks stale and you’ve spent an hour you’ll never get back.",
    "Leadli Custom Metrics lets you define that number once — as a rule against your platform data — and it stays live forever. Cost per signed client, show rate by service, revenue per consult source: whatever moves your firm, you build it once and watch it update in real time, shareable with your team.",
  ],
  leakChips: [
    "Build metrics from any platform data",
    "Combine sources into one view",
    "Real-time, not month-end",
    "Share with your team",
  ],
  mockupHeading: "The KPIs that matter to your firm, live.",
  mockupSubhead:
    "Define metrics from any platform data, combine sources, compare over time, and share the view with your team.",
  whatYouGetHeading: "Reporting that finally answers your real questions.",
  capabilities: [
    {
      icon: Gauge,
      title: "Build metrics from any data",
      body: "Define a KPI from any field, stage, tag, or event in Leadli — cost per signed client, show rate, revenue per source.",
    },
    {
      icon: Layers,
      title: "Combine sources",
      body: "Pull from CRM, payments, calendars, and campaigns into one metric — no exporting, no spreadsheet glue.",
    },
    {
      icon: TrendingUp,
      title: "Time-based comparisons",
      body: "Compare this month to last, this quarter to last year, before-and-after a change — automatically.",
    },
    {
      icon: Calendar,
      title: "Trend over time",
      body: "See a metric as a trend line, not a snapshot, so you know whether you’re improving or drifting.",
    },
    {
      icon: Filter,
      title: "Slice by segment",
      body: "Break a metric down by service, source, attorney, or any custom field — find the leak, not just the average.",
    },
    {
      icon: Share2,
      title: "Share with your team",
      body: "Put your custom metrics on a shared dashboard so everyone sees the same numbers — no “whose spreadsheet is right?”",
    },
  ],
  useCases: [
    {
      icon: Gauge,
      title: "Cost per signed client",
      body: "Combine ad spend and signed matters into one live metric, sliced by source. Finally know which channel produces clients at a profit.",
      trigger: "Spend with confidence",
    },
    {
      icon: TrendingUp,
      title: "Show rate by service",
      body: "Track consult show rate per service type over time. Spot that trust consults show up 90% of the time and will consults 60% — and fix the gap.",
      trigger: "Cuts no-shows",
    },
    {
      icon: Filter,
      title: "Revenue per consult source",
      body: "See which consult source produces the highest-value matters, not just the most leads. Double down on the profitable channel.",
      trigger: "Focus on value",
    },
  ],
  connections: {
    heading: "Your metrics connect to every part of the platform.",
    subhead:
      "A custom metric isn’t a formula in a spreadsheet — it’s a live query against the same data your CRM, payments, and campaigns produce.",
    items: [
      { icon: BarChart3, label: "Reporting & analytics" },
      { icon: Layers, label: "Custom dashboards" },
      { icon: Gauge, label: "Pipeline data" },
      { icon: TrendingUp, label: "Trend tracking" },
      { icon: Filter, label: "Segment slicing" },
      { icon: Share2, label: "Team sharing" },
    ],
  },
  finalCtaHeading: "Let’s track the numbers that move your firm.",
  finalCtaBody:
    "30 minutes. We’ll map the metrics you wish you had, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["custom-metrics", "reporting", "dashboards", "marketing", "payments"],
};

export function CustomMetricsProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
