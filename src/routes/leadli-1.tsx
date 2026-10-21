import { createFileRoute } from "@tanstack/react-router";
import { LeadliVariantExpressive } from "@/components/home/LeadliVariantExpressive";

export const Route = createFileRoute("/leadli-1")({
  component: LeadliVariantExpressive,
  head: () => ({
    meta: [
      { title: "Leadli · Expressive Concept | Flying Leap Studio" },
      {
        name: "description",
        content:
          "An expressive concept direction for Leadli — warm, editorial, terra-orange forward. One platform that unifies your CRM, calendars, marketing, workflows, and payments.",
      },
      { property: "og:title", content: "Leadli · Expressive Concept" },
      {
        property: "og:description",
        content: "An expressive concept direction for the Leadli business everything app.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
});
