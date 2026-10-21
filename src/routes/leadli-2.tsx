import { createFileRoute } from "@tanstack/react-router";
import { LeadliVariantBold } from "@/components/home/LeadliVariantBold";

export const Route = createFileRoute("/leadli-2")({
  component: LeadliVariantBold,
  head: () => ({
    meta: [
      { title: "Leadli · Bold Concept | Flying Leap Studio" },
      {
        name: "description",
        content:
          "A bold concept direction for Leadli — high-contrast, oversized type, solid orange blocks. One platform that unifies your CRM, calendars, marketing, workflows, and payments.",
      },
      { property: "og:title", content: "Leadli · Bold Concept" },
      {
        property: "og:description",
        content: "A bold concept direction for the Leadli business everything app.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
});
