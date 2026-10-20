import {
  Mail,
  MessageSquare,
  MessagesSquare,
  Send,
  Inbox,
  Users,
  Zap,
  Star,
  ShieldCheck,
  Database,
  Workflow,
  Calendar,
  Phone,
} from "lucide-react";

export type ChannelId = "email" | "sms" | "social" | "chat";

export const CHANNEL_ICONS: Record<ChannelId, typeof Mail> = {
  email: Mail,
  sms: MessageSquare,
  social: MessagesSquare,
  chat: Send,
};

export type InboxThread = {
  id: string;
  name: string;
  initials: string;
  channel: ChannelId;
  channelLabel: string;
  preview: string;
  time: string;
  unread: boolean;
};

export const INBOX_THREADS: InboxThread[] = [
  {
    id: "t1",
    name: "Caroline Reynolds",
    initials: "CR",
    channel: "email",
    channelLabel: "Email",
    preview: "Just watched it — perfect, exactly what I needed. See you Thursday!",
    time: "9:22a",
    unread: true,
  },
  {
    id: "t2",
    name: "Marcus Bell",
    initials: "MB",
    channel: "sms",
    channelLabel: "SMS",
    preview: "Hey, do you handle Medicaid planning too? My dad...",
    time: "8:47a",
    unread: true,
  },
  {
    id: "t3",
    name: "Priya Shah",
    initials: "PS",
    channel: "social",
    channelLabel: "Social",
    preview: "Saw your post about trusts — quick question for you...",
    time: "Yest.",
    unread: true,
  },
  {
    id: "t4",
    name: "Dana Whitfield",
    initials: "DW",
    channel: "chat",
    channelLabel: "Web Chat",
    preview: "Thanks for the quick reply! I'll book a time this week.",
    time: "Yest.",
    unread: false,
  },
  {
    id: "t5",
    name: "Robert Kim",
    initials: "RK",
    channel: "email",
    channelLabel: "Email",
    preview: "Got the engagement letter — signing and sending back today.",
    time: "Mon",
    unread: false,
  },
];

export const INBOX_CAPABILITIES: { title: string; body: string; icon: typeof Mail }[] = [
  {
    icon: Inbox,
    title: "One inbox for every channel",
    body: "Email, SMS, social DMs, and web chat all land in a single stream — not four tabs you forget to check.",
  },
  {
    icon: Users,
    title: "Tied to the CRM record",
    body: "Every conversation is threaded to the contact it belongs to, right next to their pipeline stage, notes, and history.",
  },
  {
    icon: MessageSquare,
    title: "Two-way SMS conversations",
    body: "Text back and forth from the same inbox — no separate texting app, no logging in somewhere else to read the reply.",
  },
  {
    icon: Send,
    title: "Web chat on every page",
    body: "Add live chat to any page on your site; messages land in your unified inbox with full visitor context attached.",
  },
  {
    icon: Users,
    title: "Team assignment & notes",
    body: "Hand a thread to a teammate with the full history already attached. Add internal notes that stay with the conversation.",
  },
  {
    icon: Zap,
    title: "Auto-replies & assignments",
    body: "A new message at 9pm gets an instant acknowledgement and routes to the right person — so no lead waits until morning.",
  },
  {
    icon: Star,
    title: "Priority & starring",
    body: "Mark the hot leads, pin the threads you can't lose, and let the noise fall to the bottom. Work what matters first.",
  },
  {
    icon: ShieldCheck,
    title: "Compliance & opt-out handling",
    body: "Built-in opt-out management and consent tracking keeps your SMS and email clean — no manual unsubscribe lists to babysit.",
  },
];

export const INBOX_CONNECTIONS: { label: string; icon: typeof Mail }[] = [
  { icon: Database, label: "CRM records" },
  { icon: Workflow, label: "Trigger automations" },
  { icon: Calendar, label: "Booked appointments" },
  { icon: Mail, label: "Email sequences" },
  { icon: MessageSquare, label: "SMS campaigns" },
  { icon: Phone, label: "Cloud phone calls" },
];
