import {
  Database,
  Workflow,
  GitBranch,
  ListTodo,
  ListFilter,
  ClipboardList,
  Calendar,
  Users,
  CalendarCheck,
} from "lucide-react";
import type { LeadliFeature } from "./types";

export const OPS_SCHEDULING: LeadliFeature[] = [
  {
    slug: "crm",
    name: "CRM + Client Management",
    category: "Operations",
    icon: Database,
    tagline:
      "Every contact, conversation, and case in one place — never lost in a spreadsheet again.",
    description:
      "Leadli's CRM gives you a full pipeline view of every prospect and client, from first inquiry to signed engagement and beyond. Smart tags, custom fields, and a complete conversation history keep your team on the same page without retyping a thing.",
    replaces: "HubSpot, Pipedrive, Lawmatics, Clio Grow",
    included: [
      "Unlimited contacts & smart tags",
      "Visual opportunity pipeline",
      "Full conversation history per contact",
      "Custom fields mapped to your intake forms",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "automation",
    name: "Automation + Workflows",
    category: "Operations",
    icon: Workflow,
    tagline: "Trigger-based workflows that respond the instant a prospect takes action.",
    description:
      "When someone submits a form, books a call, watches a video, or pays an invoice, Leadli fires the exact sequence you configured — no glue, no manual follow-up, nothing falling through the cracks.",
    replaces: "Zapier zaps & manual follow-up",
    included: [
      "Trigger-based automations",
      "If/else branching logic",
      "Multi-step sequences",
      "Native SMS, email & task actions",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "opportunity-pipelines",
    name: "Opportunity Pipelines",
    category: "Operations",
    icon: GitBranch,
    tagline: "Visual, drag-and-drop pipelines for every deal in flight.",
    description:
      "See every prospect's stage at a glance, move deals with a drag, and trigger automations the moment a stage changes.",
    replaces: "Pipedrive & spreadsheet pipelines",
    included: [
      "Visual drag-and-drop",
      "Stage-change automations",
      "Per-pipeline views",
      "Revenue forecasting",
    ],
    primary: false,
    status: "live",
  },
  {
    slug: "task-management",
    name: "Project Management",
    category: "Operations",
    icon: ListTodo,
    tagline: "Spaces, folders, and custom task statuses — tied to your contacts and deals.",
    description:
      "Create spaces for each practice area, folders for each matter, and custom statuses and fields for every task. Kanban and list views keep the whole team aligned, and automations create and complete tasks as deals move — so the work is never separate from the record it belongs to.",
    replaces: "Asana, Trello & Monday",
    included: [
      "Spaces, folders & nested projects",
      "Custom statuses & custom fields per task",
      "Kanban & list views (more views coming)",
      "Tasks linked to contacts, deals & automations",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "smart-lists",
    name: "Smart Lists & Segments",
    category: "Operations",
    icon: ListFilter,
    tagline:
      "Saved audiences for contacts, opportunities, custom objects, and projects — that update themselves as data changes.",
    description:
      "Define a segment once by tag, field, stage, or behavior, and it stays current automatically across every kind of record in your CRM — no exports, no re-uploads, no stale lists.",
    replaces: "Manual list exports, CSV scrubs & spreadsheet filters",
    included: [
      "Segments for contacts, opportunities, custom objects & projects",
      "Tag, field, stage & behavior rules with and / or logic",
      "Auto-updating as records change",
      "Reusable across email, SMS & workflow triggers",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "forms-surveys-quizzes",
    name: "Forms, Surveys & Quizzes",
    category: "Operations",
    icon: ClipboardList,
    tagline: "Capture exactly the information you need — and route it.",
    description:
      "Build forms, surveys, and quizzes that feed your CRM, trigger workflows, and qualify leads automatically.",
    replaces: "Typeform & Google Forms",
    included: ["Drag-and-drop builder", "Conditional logic", "CRM & workflow sync", "Lead scoring"],
    primary: false,
    status: "planned",
  },
  {
    slug: "calendars",
    name: "Calendars + Appointment Bookings",
    category: "Scheduling",
    icon: Calendar,
    tagline:
      "Round-robin scheduling that books the right consult to the right person — automatically.",
    description:
      "Offer a calendar link for every service you provide. Leadli handles round-robin assignment, intake forms, buffer times, and SMS confirmations so the right prospect lands on the right person's calendar without a single email thread.",
    replaces: "Calendly, Acuity, Chili Piper",
    included: [
      "A calendar link for every service",
      "Automatic round-robin & availability",
      "Intake forms attached to each booking",
      "Instant SMS & email confirmations",
    ],
    primary: true,
    status: "live",
  },
  {
    slug: "class-bookings",
    name: "Class Bookings",
    category: "Scheduling",
    icon: Users,
    tagline: "Register attendees for workshops, webinars, and seminars in one flow.",
    description:
      "Run group events with capacity limits, waitlists, and automated reminders. Every registrant flows straight into your CRM for follow-up.",
    replaces: "Eventbrite & separate registration tools",
    included: [
      "Capacity & waitlist management",
      "Automated reminders",
      "Registrant CRM sync",
      "Recurring event support",
    ],
    primary: false,
    status: "planned",
  },
  {
    slug: "service-calendars",
    name: "Service Calendars",
    category: "Scheduling",
    icon: CalendarCheck,
    tagline: "A dedicated booking calendar for every service you offer.",
    description:
      "Offer the right calendar for the right service, with service-specific intake forms, buffers, and assignment rules built in.",
    replaces: "One-size-fits-all scheduling",
    included: [
      "Per-service calendars",
      "Service-specific intake forms",
      "Custom buffers",
      "Right-to-the-right-person routing",
    ],
    primary: false,
    status: "planned",
  },
];
