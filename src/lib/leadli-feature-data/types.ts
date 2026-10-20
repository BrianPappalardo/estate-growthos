import type { LucideIcon } from "lucide-react";

/**
 * The full Leadli feature catalog.
 *
 * `primary` features render as cards in the LeadliPage feature grid; the rest
 * render as linked chips. `status` drives the Build Roadmap: "live" features
 * have a fully built, dedicated product page; "planned" features are on the
 * roadmap and render the generic template for now. Every feature has a slug so
 * it links to its own detail page at /feature/$slug.
 */
export interface LeadliFeature {
  slug: string;
  name: string;
  category: string;
  icon: LucideIcon;
  tagline: string;
  description: string;
  replaces?: string;
  included: string[];
  primary: boolean;
  status: "live" | "planned";
  /** Optional partner callout (e.g. Confido Legal) rendered on the detail page. */
  partnerBadge?: string;
  partnerTitle?: string;
  partnerBody?: string;
}
