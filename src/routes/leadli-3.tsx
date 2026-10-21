import { createFileRoute } from "@tanstack/react-router";
import { LeadliVariantSimple } from "@/components/home/LeadliVariantSimple";

export const Route = createFileRoute("/leadli-3")({
  component: LeadliVariantSimple,
  head: () => ({
    meta: [
      { title: "Leadli · Simple Concept | Flying Leap Studio" },
      {
        name: "description",
        content:
          "A minimal concept direction for Leadli — quiet, spacious, one restrained orange accent. One platform that unifies your CRM, calendars, marketing, workflows, and payments.",
      },
      { property: "og:title", content: "Leadli · Simple Concept" },
      {
        property: "og:description",
        content: "A minimal concept direction for the Leadli business everything app.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
});
