import { Timer, Clock, Calendar, Zap, Bell, Repeat, Eye, Gauge, Flame } from "lucide-react";
import { ProductPageScaffold, type ProductPageContent } from "./ProductPageScaffold";

const content: ProductPageContent = {
  categoryLabel: "Marketing · Countdown Timers",
  icon: Timer,
  title: "Leadli Countdown Timers",
  subtitle:
    "Urgency timers that drive action on any page or email — without a separate widget or embed code.",
  body: "Drop a countdown timer into a landing page, an email, or a funnel step and watch deadlines do the selling for you. Run a fixed deadline for a live webinar, or an evergreen timer that starts fresh for every visitor. No third-party widget, no embed script, no broken countdown when the page migrates.",
  replaces: [
    "Deadline Funnel",
    "Countdown apps & embeds",
    "Manual &ldquo;offer ends Friday&rdquo; emails",
  ],
  leakHeading: "Your &ldquo;limited time&rdquo; offer has no actual deadline attached to it.",
  leakBody: [
    "You tell a prospect the webinar is Thursday at noon, or that the discount expires this week &mdash; but the page they land on shows nothing but text. There&rsquo;s no ticking clock, no visual urgency, no reason to act now instead of later. So they don&rsquo;t. The lead that was warm on Tuesday is cold by Friday, and your offer quietly dies in an open tab.",
    "Leadli Countdown Timers fix that by putting a live, branded timer right inside the page or email your prospect already sees. It&rsquo;s tied to the same platform that built the funnel, sent the email, and tracks the contact &mdash; so the deadline is real, the urgency is visual, and the moment it hits zero, the workflow knows.",
  ],
  leakChips: [
    "Fixed & evergreen timers",
    "No embed script to break",
    "Triggers automations at zero",
    "Branded to your firm",
  ],
  mockupHeading: "A deadline your prospect can actually see.",
  mockupSubhead:
    "Fixed timers for live events, evergreen timers that reset per visitor, and deadline-triggered automations &mdash; all in one builder.",
  whatYouGetHeading: "Timers that turn &ldquo;maybe later&rdquo; into &ldquo;right now.&rdquo;",
  capabilities: [
    {
      icon: Clock,
      title: "Fixed-deadline timers",
      body: "Set a hard end date and time for a live webinar, a seasonal offer, or a consult promotion &mdash; the same countdown for every visitor.",
    },
    {
      icon: Repeat,
      title: "Evergreen timers",
      body: "Start a fresh countdown for each new visitor so an offer that&rsquo;s &ldquo;always closing in 72 hours&rdquo; stays honest and effective, every time.",
    },
    {
      icon: Zap,
      title: "Deadline-triggered automations",
      body: "When the timer hits zero, fire a workflow &mdash; close the offer, swap the page, send a final reminder. No manual flip of a switch.",
    },
    {
      icon: Bell,
      title: "Final-hour reminders",
      body: "Automatically text or email a &ldquo;last chance&rdquo; nudge to anyone who hasn&rsquo;t booked when the clock runs low.",
    },
    {
      icon: Eye,
      title: "Page & email embeds",
      body: "Drop the same timer into a landing page and an email so the urgency follows the prospect across every touchpoint.",
    },
    {
      icon: Gauge,
      title: "Per-contact tracking",
      body: "Because the timer lives in Leadli, you know who saw it, who acted, and who let it expire &mdash; tied to the CRM record.",
    },
  ],
  deepDive: {
    left: {
      label: "Fixed deadlines",
      heading: "Live events with a clock that means it.",
      body: "Your Trusts 101 webinar is Thursday at noon. The registration page shows a live countdown to that exact moment. When it hits zero, the page swaps to the replay, the registration form closes, and the registrant list is locked &mdash; all automatically. No one&rsquo;s editing the page at 11:59.",
      bullets: [
        "One fixed end time across every page and email",
        "Auto-swap to replay or closed offer at zero",
        "Perfect for live webinars & seasonal pushes",
      ],
    },
    right: {
      label: "Evergreen urgency",
      heading: "Offers that always feel like they&rsquo;re closing.",
      body: "Every new visitor gets a fresh 72-hour window to book a consult. The timer starts when they first land, and when it expires the offer changes &mdash; for them, not for everyone. It&rsquo;s honest, it&rsquo;s personal, and it works whether they arrive today or next month.",
      bullets: [
        "Per-visitor countdown that resets on arrival",
        "Offer changes only for the visitor whose clock ran out",
        "Ideal for always-on consult offers",
      ],
    },
  },
  useCases: [
    {
      icon: Calendar,
      title: "The webinar close",
      body: "A countdown to your live webinar on the registration page and in every reminder email. Registrations spike in the final 24 hours because the deadline is staring at them.",
      trigger: "Fills the room",
    },
    {
      icon: Flame,
      title: "The seasonal push",
      body: "An end-of-year trust review offer with a fixed deadline. The timer on the landing page and the email makes &ldquo;before the holidays&rdquo; feel real.",
      trigger: "Creates a reason to act now",
    },
    {
      icon: Repeat,
      title: "The evergreen consult",
      body: "Every new inquiry lands on a page with a 72-hour window to book. The offer shifts when their personal clock runs out &mdash; honest, and always urgent.",
      trigger: "Stops the &ldquo;I&rsquo;ll do it later&rdquo;",
    },
  ],
  connections: {
    heading: "Every timer ripples through the rest of your platform.",
    subhead:
      "The countdown isn&rsquo;t a widget floating in space &mdash; it&rsquo;s part of the funnel, the email, and the workflow that already know your contact.",
    items: [
      { icon: Zap, label: "Automation builder" },
      { icon: Calendar, label: "Webinar funnels" },
      { icon: Bell, label: "Email & SMS reminders" },
      { icon: Eye, label: "Landing pages" },
      { icon: Gauge, label: "Pipeline tracking" },
      { icon: Clock, label: "Consult calendars" },
    ],
  },
  finalCtaHeading: "Let&rsquo;s give your offers a deadline that works.",
  finalCtaBody:
    "30 minutes. We&rsquo;ll map the offers that need urgency, tell you honestly whether Leadli fits, and give you a clear estimate.",
  excludeFromRelated: [
    "countdown-timers",
    "marketing",
    "trigger-links",
    "automation",
    "webinar-funnels",
  ],
};

export function CountdownTimersProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  return <ProductPageScaffold content={content} onOpenDiscovery={onOpenDiscovery} />;
}
