import { LEADLI_FEATURES, type LeadliFeature } from "@/lib/leadli-feature-data";

export type { LeadliFeature };

export { LEADLI_FEATURES };

export function getFeatureBySlug(slug: string): LeadliFeature | undefined {
  return LEADLI_FEATURES.find((f) => f.slug === slug);
}
