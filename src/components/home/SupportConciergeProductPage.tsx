import {
  LifeBuoy,
  Headphones,
  Users,
  Wrench,
  GraduationCap,
  Clock,
  MessageSquare,
  Sparkles,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Platform · Support + Concierge Team",
  icon: LifeBuoy,
  title: "Leadli Support + Concierge Team",
  subtitle:
    "A real human team on standby to configure, train, and troubleshoot &mdash; so you&rsquo;re never stuck with software you can&rsquo;t run.",
  body: "Beyond the software, you get our concierge team to help build, train your staff, and keep your system running. When something needs configuring, a workflow needs building, or your team needs a refresher, a real person who knows your firm picks up &mdash; not a chatbot, not a ticket queue, not a help doc you have to find and follow. You&rsquo;re never on your own with the platform.",
  replaces: ["DIY support tickets", "Help docs you have to find", "Chatbot-only support"],
  leakHeading: "Your software vendor hands you a help doc and wishes you luck.",
  leakBody: [
    "You buy software, it does a hundred things, and when you need to set up the one thing you actually bought it for, you&rsquo;re pointed at a knowledge base. You open a ticket, wait two days, get a link to an article, and figure it out yourself. Your team never quite learns it, the features you paid for go unused, and the software becomes shelf-ware that someone renews out of habit.",
    "Leadli Support + Concierge flips that. You get a real human team that knows your firm and your setup &mdash; people who configure the workflow, train your staff on it, and troubleshoot when something breaks. The features you pay for actually get used because someone helps you use them, and your team gets confident instead of frustrated.",
  ],
  leakChips: [
    "Real humans, fast",
    "White-glove configuration",
    "Team training included",
    "Knows your firm",
  ],
  mockupHeading: "Support that&rsquo;s a team, not a ticket queue.",
  mockupSubhead:
    "White-glove configuration, team training, ongoing troubleshooting &mdash; from people who know your firm and your setup.",
  whatYouGetHeading: "Software you actually use, because someone helps you use it.",
  capabilities: [
    {
      icon: Wrench,
      title: "White-glove configuration",
      body: "We configure workflows, pipelines, and automations for you &mdash; you don&rsquo;t build from scratch or puzzle through a doc.",
    },
    {
      icon: GraduationCap,
      title: "Team training",
      body: "We train your staff on the parts they&rsquo;ll use &mdash; live, on your actual setup &mdash; so everyone&rsquo;s confident, not confused.",
    },
    {
      icon: Headphones,
      title: "Ongoing troubleshooting",
      body: "When something breaks or needs changing, a real person who knows your firm picks up &mdash; not a chatbot or a two-day ticket.",
    },
    {
      icon: Clock,
      title: "Fast response",
      body: "Real response times from people who know your account &mdash; not a queue where you&rsquo;re a number.",
    },
    {
      icon: Users,
      title: "Knows your firm",
      body: "Your concierge knows your setup, your workflows, and your goals &mdash; you&rsquo;re not re-explaining your firm every time.",
    },
    {
      icon: Sparkles,
      title: "Proactive improvements",
      body: "We don&rsquo;t just fix what breaks &mdash; we suggest the next improvement, the next automation, the next leak to plug.",
    },
  ],
  useCases: [
    {
      icon: Wrench,
      title: "The new-workflow build",
      body: "You want a new consult-reminder sequence. You tell us; we build it, test it, and train your team on it. You don&rsquo;t touch the builder.",
      trigger: "Done for you",
    },
    {
      icon: GraduationCap,
      title: "The team onboarding",
      body: "New intake coordinator starts. We train them on your actual CRM, pipelines, and inbox &mdash; live, on your setup.",
      trigger: "Confident from day one",
    },
    {
      icon: Headphones,
      title: "The something-broke",
      body: "A workflow stops firing. You message us; a person who knows your account investigates and fixes it &mdash; not a ticket in a queue.",
      trigger: "Fixed fast",
    },
  ],
  connections: {
    heading: "Your concierge connects to every part of your platform.",
    subhead:
      "Support isn&rsquo;t a separate vendor &mdash; it&rsquo;s the same team that built your setup, knows your workflows, and helps you use every feature you pay for.",
    items: [
      { icon: Wrench, label: "Workflow configuration" },
      { icon: GraduationCap, label: "Team training" },
      { icon: Headphones, label: "Troubleshooting" },
      { icon: MessageSquare, label: "Unified inbox" },
      { icon: Users, label: "CRM & pipelines" },
      { icon: Sparkles, label: "Proactive improvements" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s show you what real support looks like.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll learn how your firm runs, tell you honestly whether Leadli fits, and give you a clear estimate &mdash; with a real team behind it.",
  excludeFromRelated: ["support-concierge", "integrations", "automation", "crm", "inbox"],
};

export function SupportConciergeProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
