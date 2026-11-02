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
          "Eight major Leadli releases in the last cycle — outbound AI agents that reactivate cold leads, a built-in creator studio, native project management, payments that sync with your orders, and flat-rate AI from $40/mo.",
      },
      {
        property: "og:title",
        content: "Leadli 2.0 is here | Flying Leap Studio",
      },
      {
        property: "og:description",
        content:
          "Your Leadli just got a serious upgrade — and it's all already in your account. See the major AI, automation, and commerce releases.",
      },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
  component: Leadli2Page,
});
