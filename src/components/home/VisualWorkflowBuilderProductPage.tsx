import {
  Split,
  Workflow,
  GitBranch,
  Clock,
  Zap,
  MousePointerClick,
  TestTube,
  Layers,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Builder · Visual Workflow Builder",
  icon: Split,
  title: "Leadli Visual Workflow Builder",
  subtitle:
    "Drag, connect, and automate on a clean visual canvas &mdash; triggers, branches, waits, and actions, no code.",
  body: "Build multi-step automations with triggers, if/else branches, waits, and actions on a clean visual canvas &mdash; all drag-and-drop, all testable, no code. When a form submits, branch by practice area, wait two hours, send a text, then book a consult. You see the whole flow laid out, you test it before it goes live, and you can change it without a developer. No Zapier zaps that break silently, no Make scenarios you can&rsquo;t read.",
  replaces: ["Zapier", "Make", "Custom API glue", "Code-based automations"],
  leakHeading: "Your automations are zaps that break when an API updates &mdash; silently.",
  leakBody: [
    "You build a Zapier flow: form submits, create a contact, send a text, add to a pipeline. It works for months, until the form tool updates its API and the zap silently stops. You don&rsquo;t find out until a lead complains they never heard back. Now you&rsquo;re debugging someone else&rsquo;s integration, paying per task, and the flow is a stack of boxes you can&rsquo;t quite read.",
    "Leadli Visual Workflow Builder puts the automation inside your platform, where the data lives. No external API to break, no per-task bill, no glue layer. You drag the steps on a canvas, branch and wait where you need to, test it, and turn it on. When something needs to change, you change it on the canvas &mdash; not in a zap you didn&rsquo;t build.",
  ],
  leakChips: [
    "Drag-and-drop canvas",
    "If/else branching & waits",
    "Test before you go live",
    "No external API to break",
  ],
  mockupHeading: "See your whole automation laid out &mdash; and test it.",
  mockupSubhead:
    "A visual canvas of triggers, branches, waits, and actions &mdash; drag to build, test before live, change without a developer.",
  whatYouGetHeading: "Automations you can see, test, and change yourself.",
  capabilities: [
    {
      icon: MousePointerClick,
      title: "Drag-and-drop canvas",
      body: "Build automations by dragging triggers, actions, branches, and waits onto a visual canvas &mdash; no code, no config files.",
    },
    {
      icon: GitBranch,
      title: "If/else branching",
      body: "Branch by practice area, lead score, form answer, or any field &mdash; estate planning leads one way, probate another.",
    },
    {
      icon: Clock,
      title: "Wait steps",
      body: "Pause a flow for minutes, hours, or days &mdash; wait two hours after a form, then text; wait three days, then follow up.",
    },
    {
      icon: TestTube,
      title: "Test before live",
      body: "Run a test execution on a real contact before you turn the workflow on &mdash; catch the broken step before a lead does.",
    },
    {
      icon: Zap,
      title: "Native actions",
      body: "Send email, send SMS, update a contact, move a pipeline, create a task, book a consult &mdash; all native, no external action.",
    },
    {
      icon: Layers,
      title: "Multi-action sequences",
      body: "Chain as many steps as you need &mdash; one trigger can run a dozen actions across email, SMS, pipeline, and tasks.",
    },
  ],
  deepDive: {
    left: {
      label: "Visual, readable",
      heading: "A flow you can read at a glance.",
      body: "A Zapier zap is a stack of boxes you scroll through. A Leadli workflow is a canvas you can see all at once &mdash; the trigger, the branch, the wait, the actions &mdash; laid out the way you think. When a new team member needs to understand it, they look at the canvas, not a config you have to explain.",
      bullets: [
        "Whole flow visible on one canvas",
        "Branches and waits shown as paths",
        "Anyone on your team can read it",
      ],
    },
    right: {
      label: "Testable",
      heading: "Catch the broken step before a lead does.",
      body: "Before a workflow goes live, run a test on a real contact and watch each step fire in order. If the branch sends the lead the wrong way, you see it in the test &mdash; not in a complaint three days later. You ship automations that work the first time.",
      bullets: [
        "Test execution on a real contact",
        "See each step fire in order",
        "Fix the broken step before it&rsquo;s live",
      ],
    },
  },
  useCases: [
    {
      icon: GitBranch,
      title: "The practice-area branch",
      body: "A form submission branches by practice area: estate planning leads get trust content and a consult link, probate leads get probate content &mdash; one workflow, two paths.",
      trigger: "Right message per lead",
    },
    {
      icon: Clock,
      title: "The timed follow-up",
      body: "A lead books a consult. The workflow waits two hours, sends a prep text, waits until the day before, sends a reminder &mdash; all automatic.",
      trigger: "Cuts no-shows",
    },
    {
      icon: Zap,
      title: "The signed-matter cascade",
      body: "An engagement letter is signed. The workflow moves the pipeline, sends a welcome email, creates onboarding tasks, and requests a review &mdash; one trigger, many actions.",
      trigger: "Smooth onboarding",
    },
  ],
  connections: {
    heading: "Your workflows connect to every part of your platform.",
    subhead:
      "The builder isn&rsquo;t a separate automation tool &mdash; it&rsquo;s the engine that drives your CRM, calendars, marketing, and payments from one canvas.",
    items: [
      { icon: Zap, label: "Native actions" },
      { icon: GitBranch, label: "Branching logic" },
      { icon: Clock, label: "Wait steps" },
      { icon: TestTube, label: "Test execution" },
      { icon: Layers, label: "Multi-step sequences" },
      { icon: Workflow, label: "CRM & pipelines" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s build automations you can see and trust.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map the workflows that run your firm, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "visual-workflow-builder",
    "automation",
    "smart-lists",
    "trigger-links",
    "marketing",
  ],
};

export function VisualWorkflowBuilderProductPage({
  onOpenDiscovery,
}: {
  onOpenDiscovery: () => void;
}) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
