import { createFileRoute } from "@tanstack/react-router";
import { Leadli2Page } from "@/components/home/Leadli2Page";

export const Route = createFileRoute("/whats-new")({
  head: () => ({
    meta: [
      {
        title: "Leadli 2.0 is here | What's new | Flying Leap Studio",
      },
      {
        name: "description",
        content:
          "Ten major Leadli releases in the last cycle — outbound AI agents, a built-in creator studio, native project management, vertical operating systems, and flat-rate AI from $40/mo.",
      },
      {
        property: "og:title",
        content: "Leadli 2.0 is here | Flying Leap Studio",
      },
      {
        property: "og:description",
        content:
          "The platform just got a serious upgrade. See the major AI, automation, and operations releases — and flat-rate AI from $40/mo per workspace.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
  component: Leadli2Page,
});
