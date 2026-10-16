// Client-side persistence for the booking contact + tech stack audit.
// Until Cloud is enabled there is no database to write to, so we keep the
// booking contact in sessionStorage (cross-page, per-tab) and the finished
// tech stack audit in localStorage keyed by the booking email. Once Cloud
// is on, this same shape moves to a real table tied to the contact.

export interface BookingContact {
  firstName: string;
  lastName: string;
  firmName: string;
  email: string;
  phone: string;
  teamSize: string;
  currentMonthlyLeads: string;
  selectedSlot?: string;
  savedAt: number;
}

export interface TechStackAudit {
  email: string;
  teamSize: number;
  selectedTools: Array<{
    id: string;
    name: string;
    monthlyCost: number;
    leadliFeature: string;
  }>;
  customTools: Array<{ id: string; name: string; price: number }>;
  totalCurrentMonthly: number;
  leadliMonthly: number;
  monthlySavings: number;
  annualSavings: number;
  savedAt: number;
}

const BOOKING_KEY = "growthos_booking_contact";

function storageKeyForEmail(email: string): string {
  return `growthos_techstack_${(email || "guest").trim().toLowerCase()}`;
}

export function saveBookingContact(contact: BookingContact): void {
  if (typeof window === "undefined") return;
  try {
    sessionStorage.setItem(BOOKING_KEY, JSON.stringify(contact));
  } catch {
    /* storage may be unavailable; ignore */
  }
}

export function getBookingContact(): BookingContact | null {
  if (typeof window === "undefined") return null;
  try {
    const raw = sessionStorage.getItem(BOOKING_KEY);
    return raw ? (JSON.parse(raw) as BookingContact) : null;
  } catch {
    return null;
  }
}

export function saveTechStackAudit(email: string, audit: Omit<TechStackAudit, "savedAt">): void {
  if (typeof window === "undefined") return;
  try {
    localStorage.setItem(
      storageKeyForEmail(email),
      JSON.stringify({ ...audit, savedAt: Date.now() } satisfies TechStackAudit),
    );
  } catch {
    /* ignore */
  }
}

export function getTechStackAudit(email: string): TechStackAudit | null {
  if (typeof window === "undefined") return null;
  try {
    const raw = localStorage.getItem(storageKeyForEmail(email));
    return raw ? (JSON.parse(raw) as TechStackAudit) : null;
  } catch {
    return null;
  }
}
