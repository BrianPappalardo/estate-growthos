import type { LeadliFeature } from "./types";
import { OPS_SCHEDULING } from "./ops-scheduling";
import { MARKETING_WEB } from "./marketing-web";
import { PAYMENTS_GROWTH } from "./payments-growth";
import { INSIGHTS_COMMUNICATION } from "./insights-communication";
import { PLATFORM_EDUCATION } from "./platform-education";

export type { LeadliFeature } from "./types";

export const LEADLI_FEATURES: LeadliFeature[] = [
  ...OPS_SCHEDULING,
  ...MARKETING_WEB,
  ...PAYMENTS_GROWTH,
  ...INSIGHTS_COMMUNICATION,
  ...PLATFORM_EDUCATION,
];

export function getFeatureBySlug(slug: string): LeadliFeature | undefined {
  return LEADLI_FEATURES.find((f) => f.slug === slug);
}
