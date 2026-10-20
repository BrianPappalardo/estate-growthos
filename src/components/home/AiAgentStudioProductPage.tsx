import {
  BrainCircuit,
  Bot,
  Workflow,
  Users,
  FileText,
  Repeat,
  Zap,
  MessageSquare,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Platform · AI Agent Studio",
  icon: BrainCircuit,
  title: "Leadli AI Agent Studio",
  subtitle:
    "Build custom AI agents trained on your processes and content &mdash; that draft replies, qualify leads, and handle routine work inside your workflows.",
  body: "Design AI agents trained on your firm&rsquo;s processes, pricing, and content to draft replies, qualify leads, and handle routine work &mdash; all inside Leadli, connected to your CRM and workflows. An agent that pre-qualifies estate-planning inquiries, one that drafts consult-prep summaries, one that answers common questions on your site chat. You build them once, they work inside your automations, and a human is always a handoff away.",
  replaces: ["Separate AI subscriptions", "Custom API glue", "Manual lead qualification"],
  leakHeading:
    "You pay for AI tools that don&rsquo;t know your firm and don&rsquo;t talk to your CRM.",
  leakBody: [
    "You subscribe to a chatbot, a writing assistant, and a lead-qualifier &mdash; three separate AI tools, three bills, none of them trained on your actual firm. The chatbot gives generic answers, the writer doesn&rsquo;t know your pricing, and the qualifier can&rsquo;t update your CRM. So you&rsquo;re paying for AI that&rsquo;s always a step removed from your actual work and your actual data.",
    "Leadli AI Agent Studio puts the AI inside your platform, trained on your content, connected to your CRM. An agent qualifies a lead, drafts a reply, and updates the pipeline &mdash; in one workflow, with one record. No separate subscriptions, no glue, no AI that doesn&rsquo;t know your firm.",
  ],
  leakChips: [
    "Agents trained on your content",
    "Work inside your workflows",
    "Connected to your CRM",
    "Human handoff built in",
  ],
  mockupHeading: "AI agents that actually know your firm.",
  mockupSubhead:
    "Build agents trained on your processes, deploy them inside workflows, and watch them draft, qualify, and handle routine work &mdash; with human handoff.",
  whatYouGetHeading: "AI that&rsquo;s part of your platform, not a separate subscription.",
  capabilities: [
    {
      icon: Bot,
      title: "Custom agent builders",
      body: "Design agents for specific jobs &mdash; lead qualifier, consult-prep drafter, FAQ responder &mdash; each with its own training and rules.",
    },
    {
      icon: FileText,
      title: "Process-trained AI",
      body: "Train agents on your services, pricing, intake process, and content so they answer like your firm, not a generic bot.",
    },
    {
      icon: Workflow,
      title: "Workflow integration",
      body: "Agents run inside your automations &mdash; a new inquiry triggers the qualifier, which drafts a reply and updates the pipeline.",
    },
    {
      icon: Users,
      title: "Lead qualification",
      body: "An agent can ask the right questions, score the lead, and route &mdash; warm to consult, cold to nurture &mdash; automatically.",
    },
    {
      icon: MessageSquare,
      title: "Reply drafting",
      body: "Agents draft replies to common inquiries for your team to approve &mdash; faster responses, consistent messaging, your voice.",
    },
    {
      icon: Repeat,
      title: "Human handoff",
      body: "When a conversation needs a person, the agent hands off with a full summary &mdash; never a cold transfer or a stuck lead.",
    },
  ],
  useCases: [
    {
      icon: Users,
      title: "The lead qualifier",
      body: "A new inquiry comes in. The agent asks 3 qualifying questions, scores the lead, and books a consult for the warm ones &mdash; or nurtures the cold.",
      trigger: "Faster, better qualification",
    },
    {
      icon: FileText,
      title: "The consult-prep drafter",
      body: "Before a consult, the agent pulls the contact&rsquo;s form answers and history and drafts a one-page prep summary for you to review.",
      trigger: "Walk in ready",
    },
    {
      icon: MessageSquare,
      title: "The site-chat responder",
      body: "An agent handles common site-chat questions &mdash; pricing, services, hours &mdash; and hands off to your team for anything complex.",
      trigger: "Instant, accurate answers",
    },
  ],
  connections: {
    heading: "Your agents connect to every part of your platform.",
    subhead:
      "An agent isn&rsquo;t a separate AI tool &mdash; it&rsquo;s a worker inside your CRM, workflows, and inbox, trained on your firm and connected to your data.",
    items: [
      { icon: Workflow, label: "Automation builder" },
      { icon: Users, label: "CRM & pipelines" },
      { icon: MessageSquare, label: "Unified inbox" },
      { icon: Bot, label: "Voice AI" },
      { icon: FileText, label: "Forms & surveys" },
      { icon: Zap, label: "Workflow triggers" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s put AI to work inside your firm.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map the routine work you&rsquo;d hand to an agent, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["ai-agent-studio", "voice-ai", "integrations", "automation", "inbox"],
};

export function AiAgentStudioProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
