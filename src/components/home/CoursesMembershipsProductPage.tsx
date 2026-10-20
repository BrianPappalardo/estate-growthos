import {
  GraduationCap,
  Video,
  BookOpen,
  Users,
  BarChart3,
  Lock,
  PlayCircle,
  Repeat,
} from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Education · Courses & Memberships",
  icon: GraduationCap,
  title: "Leadli Courses & Memberships",
  subtitle:
    "Gated educational content and client libraries in one place — to educate prospects before they book and support clients after they sign.",
  body: "Deliver on-demand video modules, resource libraries, and membership content that educate prospects before they book and support clients after they sign — all in the same platform as your CRM and marketing. A prospect watches your “what a trust costs” module and arrives pre-educated; a client gets a post-signing resource library. No Kajabi, no Teachable, no sending people to a third-party platform that doesn’t know your firm.",
  replaces: ["Kajabi", "Teachable", "Skool", "Separate course platforms"],
  leakHeading: "Your educational content lives on a platform that doesn’t know your CRM.",
  leakBody: [
    "You record videos explaining what a trust is, what it costs, and who needs one — the exact education that turns a cold lead into a pre-sold client. But they live on YouTube, or Kajabi, or a separate course platform that has no idea who watched, how much they watched, or whether they booked afterward. So the content educates, but the data doesn’t come home to your CRM.",
    "Leadli Courses & Memberships puts that content inside your platform. A prospect’s viewing is tracked on their CRM record, so you know they watched the pricing video before the consult. A client gets a gated resource library after signing. The content educates, and the data feeds your pipeline — all in one place.",
  ],
  leakChips: [
    "Gated video modules",
    "Viewing tracked to the CRM",
    "Membership tiers",
    "No separate course platform",
  ],
  mockupHeading: "Educational content that feeds your pipeline.",
  mockupSubhead:
    "Gated video modules, resource libraries, and membership tiers — with viewing tracked to each contact and progress visible.",
  whatYouGetHeading: "Content that educates and tracks — in one platform.",
  capabilities: [
    {
      icon: Video,
      title: "Gated video modules",
      body: "Publish on-demand video courses — trust basics, pricing, what to expect — gated behind a form or a booking.",
    },
    {
      icon: BookOpen,
      title: "Resource libraries",
      body: "Give clients a gated library of guides, checklists, and templates after they sign — organized and branded to your firm.",
    },
    {
      icon: Users,
      title: "Membership tiers",
      body: "Offer free, paid, or client-only tiers — with access controlled by tag, stage, or purchase, all in your CRM.",
    },
    {
      icon: BarChart3,
      title: "Progress tracking",
      body: "See who watched what, how far they got, and whether they booked — tracked to the contact, not a separate platform.",
    },
    {
      icon: Lock,
      title: "Access control",
      body: "Gate content by form submission, purchase, pipeline stage, or membership — the right people see the right content.",
    },
    {
      icon: Repeat,
      title: "Feeds your pipeline",
      body: "A prospect finishing the pricing module can trigger a consult offer automatically — the content does the selling.",
    },
  ],
  useCases: [
    {
      icon: Video,
      title: "The pre-consult education",
      body: "A prospect watches your “what a trust costs” module before booking. They arrive pre-educated, ready to move — and you know they watched.",
      trigger: "Pre-sold consults",
    },
    {
      icon: BookOpen,
      title: "The post-signing library",
      body: "After a client signs, they get a gated library of guides and checklists for their estate plan — branded, organized, and tracked.",
      trigger: "Better client support",
    },
    {
      icon: Users,
      title: "The paid workshop",
      body: "Run a paid workshop as a gated course. Purchasers get access automatically, and their progress and questions feed back to their CRM record.",
      trigger: "New revenue stream",
    },
  ],
  connections: {
    heading: "Your content connects to your contacts and your pipeline.",
    subhead:
      "A course isn’t a separate platform — it’s content that educates prospects and clients, with viewing tracked to the same CRM that books and bills them.",
    items: [
      { icon: Video, label: "Video modules" },
      { icon: BarChart3, label: "Viewing analytics" },
      { icon: Users, label: "CRM contacts" },
      { icon: Lock, label: "Access control" },
      { icon: Repeat, label: "Workflow triggers" },
      { icon: BookOpen, label: "Resource libraries" },
    ],
  },
  finalCtaHeading: "Let’s turn your content into pre-sold clients.",
  finalCtaBody:
    "30 minutes. We’ll map the content that educates your prospects, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: ["courses", "communities", "webinar-funnels", "marketing", "client-portal"],
};

export function CoursesMembershipsProductPage({
  onOpenDiscovery,
}: {
  onOpenDiscovery: () => void;
}) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
