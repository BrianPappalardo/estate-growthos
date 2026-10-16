/**
 * The capacity month we market toward.
 *
 * Booking capacity rolls over mid-month: once we're past the 14th,
 * current-month onboarding is effectively closed, so we point prospects
 * to the next month. Through the first 14 days we keep marketing the
 * current month.
 *
 * Defaults to "today" but accepts an optional reference date for tests.
 */
export function getCapacityMonth(reference: Date = new Date()): string {
  const day = reference.getDate();

  if (day <= 14) {
    return reference.toLocaleDateString("en-US", { month: "long" });
  }

  // Point to next month (back half of the current month).
  const nextMonth = new Date(reference.getFullYear(), reference.getMonth() + 1, 1);
  return nextMonth.toLocaleDateString("en-US", { month: "long" });
}
