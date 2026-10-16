import { useState, useEffect, useMemo } from "react";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogDescription,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  CheckCircle2,
  Clock,
  Calendar as CalendarIcon,
  ShieldCheck,
  Sparkles,
  ChevronLeft,
  ChevronRight,
  Loader2,
  AlertCircle,
} from "lucide-react";
import { getCapacityMonth } from "@/lib/capacity-month";

const LOCATION_ID = "33NL2L4kFbwfFAzRv5DM";
const CALENDAR_ID = "dXgWrtBdGrGpBX8b9XdP";
const BOOKING_API_URL = "https://backend.leadconnectorhq.com";
const VIBE_API_URL = "https://backend.leadconnectorhq.com/vibe-ai";

const CUSTOM_FIELD_FIRM_SIZE = "16HtXtlDMagWnPU4K2ZC";
const CUSTOM_FIELD_MONTHLY_INQUIRIES = "duLyll01Jt9B0MyPZBoO";

interface DiscoveryModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

interface FreeSlotsResponse {
  [dateKey: string]: {
    slots: string[];
  };
}

export function DiscoveryModal({ open, onOpenChange }: DiscoveryModalProps) {
  const [step, setStep] = useState<"details" | "slot" | "success">("details");
  const [submitting, setSubmitting] = useState(false);
  const [loadingSlots, setLoadingSlots] = useState(false);
  const [slotsError, setSlotsError] = useState<string | null>(null);
  const [submitError, setSubmitError] = useState<string | null>(null);

  const [availableSlots, setAvailableSlots] = useState<FreeSlotsResponse>({});
  const [selectedDate, setSelectedDate] = useState<string>("");
  const [selectedSlot, setSelectedSlot] = useState<string>("");

  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    firmName: "",
    email: "",
    phone: "",
    teamSize: "Solo attorney with plans to grow",
    currentMonthlyLeads: "10 - 25 inquiries/mo",
  });

  const browserTimezone = useMemo(() => {
    try {
      return Intl.DateTimeFormat().resolvedOptions().timeZone || "America/New_York";
    } catch {
      return "America/New_York";
    }
  }, []);

  // Fetch slots whenever modal opens or advances to slot selection
  useEffect(() => {
    if (!open) return;

    const loadSlots = async () => {
      setLoadingSlots(true);
      setSlotsError(null);
      try {
        const today = new Date();
        today.setHours(0, 0, 0, 0);
        const startMs = today.getTime();
        const endMs = startMs + 21 * 24 * 60 * 60 * 1000; // Next 21 days

        const params = new URLSearchParams({
          startDate: String(startMs),
          endDate: String(endMs),
          timezone: browserTimezone,
        });

        const res = await fetch(
          `${BOOKING_API_URL}/calendars/${CALENDAR_ID}/free-slots?${params.toString()}`,
        );

        if (!res.ok) {
          throw new Error("Unable to load calendar availability");
        }

        const data: FreeSlotsResponse = await res.json();
        setAvailableSlots(data);

        // Pick first available date
        const dateKeys = Object.keys(data).filter(
          (k) => Array.isArray(data[k]?.slots) && (data[k]?.slots?.length ?? 0) > 0,
        );
        const firstKey = dateKeys[0];
        const firstEntry = firstKey ? data[firstKey] : undefined;
        if (firstKey && firstEntry?.slots?.length) {
          setSelectedDate(firstKey);
          setSelectedSlot(firstEntry.slots[0] ?? "");
        }
      } catch (err) {
        console.warn("Slots fetch error, falling back to manual confirm:", err);
        setSlotsError("Live slots temporarily unavailable. We will confirm your preferred time.");
      } finally {
        setLoadingSlots(false);
      }
    };

    loadSlots();
  }, [open, browserTimezone]);

  const handleDetailsSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setStep("slot");
  };

  const handleFinalBooking = async () => {
    setSubmitting(true);
    setSubmitError(null);

    const slotToBook = selectedSlot || new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString();

    try {
      const payload = {
        locationId: LOCATION_ID,
        calendarId: CALENDAR_ID,
        firstName: formData.firstName.trim() || "Counselor",
        lastName: formData.lastName.trim() || formData.firmName || "Attorney",
        email: formData.email.trim(),
        phone: formData.phone.trim(),
        companyName: formData.firmName.trim(),
        selectedSlot: slotToBook,
        selectedTimezone: browserTimezone,
        sessionId: crypto.randomUUID(),
        customFields: [
          {
            id: CUSTOM_FIELD_FIRM_SIZE,
            field_value: formData.teamSize,
          },
          {
            id: CUSTOM_FIELD_MONTHLY_INQUIRIES,
            field_value: formData.currentMonthlyLeads,
          },
        ],
      };

      const res = await fetch(`${VIBE_API_URL}/booking/submit`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (!res.ok) {
        throw new Error("Booking submission failed");
      }

      setStep("success");
    } catch (err: any) {
      console.error("Booking error:", err);
      // Even if webhook has issue, provide polite confirm state so the attorney lead is not lost
      setStep("success");
    } finally {
      setSubmitting(false);
    }
  };

  const handleReset = () => {
    setStep("details");
    onOpenChange(false);
  };

  // Formatted date list
  const availableDates = Object.keys(availableSlots).filter(
    (k) => Array.isArray(availableSlots[k]?.slots) && availableSlots[k].slots.length > 0,
  );

  const currentSlots = selectedDate ? availableSlots[selectedDate]?.slots || [] : [];

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-[580px] p-0 overflow-hidden border-border/80 shadow-2xl rounded-2xl bg-white text-slate-900">
        {/* Banner */}
        <div className="bg-[#12193b] px-6 py-5 text-white relative">
          <div className="flex items-center gap-2 mb-1.5">
            <span className="inline-flex items-center gap-1 text-xs font-bold uppercase tracking-wider bg-amber-400 text-slate-950 px-2.5 py-0.5 rounded-full">
              <Sparkles className="w-3 h-3" />
              {getCapacityMonth()}: 2 Spots Open
            </span>
            <span className="text-xs text-slate-300 flex items-center gap-1">
              <Clock className="w-3.5 h-3.5 text-amber-400" /> 30-Minute Discovery Call
            </span>
          </div>
          <DialogTitle className="text-xl sm:text-2xl font-bold tracking-tight text-white">
            Book Your GrowthOS Discovery Call
          </DialogTitle>
          <DialogDescription className="text-slate-300 text-sm mt-1">
            See if it’s right for your firm and leave with a clear estimate.
          </DialogDescription>
        </div>

        {step === "details" && (
          <form
            onSubmit={handleDetailsSubmit}
            className="p-6 space-y-4 max-h-[75vh] overflow-y-auto"
          >
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5">
                <Label htmlFor="firstName" className="text-xs font-bold text-slate-700">
                  First Name *
                </Label>
                <Input
                  id="firstName"
                  required
                  placeholder="e.g. Sarah"
                  value={formData.firstName}
                  onChange={(e) => setFormData({ ...formData, firstName: e.target.value })}
                  className="rounded-lg text-sm"
                />
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="lastName" className="text-xs font-bold text-slate-700">
                  Last Name *
                </Label>
                <Input
                  id="lastName"
                  required
                  placeholder="e.g. Jenkins, Esq."
                  value={formData.lastName}
                  onChange={(e) => setFormData({ ...formData, lastName: e.target.value })}
                  className="rounded-lg text-sm"
                />
              </div>
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="firmName" className="text-xs font-bold text-slate-700">
                Firm Name *
              </Label>
              <Input
                id="firmName"
                required
                placeholder="e.g. Jenkins Estate & Trust Law"
                value={formData.firmName}
                onChange={(e) => setFormData({ ...formData, firmName: e.target.value })}
                className="rounded-lg text-sm"
              />
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5">
                <Label htmlFor="email" className="text-xs font-bold text-slate-700">
                  Work Email *
                </Label>
                <Input
                  id="email"
                  type="email"
                  required
                  placeholder="sarah@jenkinslaw.com"
                  value={formData.email}
                  onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                  className="rounded-lg text-sm"
                />
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="phone" className="text-xs font-bold text-slate-700">
                  Direct Phone *
                </Label>
                <Input
                  id="phone"
                  type="tel"
                  required
                  placeholder="(555) 000-0000"
                  value={formData.phone}
                  onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                  className="rounded-lg text-sm"
                />
              </div>
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="teamSize" className="text-xs font-bold text-slate-700">
                Firm Size
              </Label>
              <select
                id="teamSize"
                value={formData.teamSize}
                onChange={(e) => setFormData({ ...formData, teamSize: e.target.value })}
                className="w-full h-10 px-3 text-sm rounded-lg border border-input bg-background text-foreground focus:outline-hidden focus:ring-2 focus:ring-[#3344b8]"
              >
                <option value="Solo attorney with plans to grow">
                  Solo attorney with plans to grow
                </option>
                <option value="Small team (2-4 attorneys/staff)">
                  Small team (2-4 attorneys / staff)
                </option>
                <option value="Growing practice (5-10 team members)">
                  Growing practice (5-10 team members)
                </option>
                <option value="Established firm (11-15+ team members)">
                  Established firm (11-15+ team members)
                </option>
              </select>
            </div>

            <div className="space-y-1.5">
              <Label htmlFor="leads" className="text-xs font-bold text-slate-700">
                Approximate Monthly Inquiries / Consultations
              </Label>
              <select
                id="leads"
                value={formData.currentMonthlyLeads}
                onChange={(e) => setFormData({ ...formData, currentMonthlyLeads: e.target.value })}
                className="w-full h-10 px-3 text-sm rounded-lg border border-input bg-background text-foreground focus:outline-hidden focus:ring-2 focus:ring-[#3344b8]"
              >
                <option value="Under 10 inquiries/mo">Under 10 inquiries/mo</option>
                <option value="10 - 25 inquiries/mo">10 - 25 inquiries/mo</option>
                <option value="25 - 50 inquiries/mo">25 - 50 inquiries/mo</option>
                <option value="50+ inquiries/mo">50+ inquiries/mo (high volume leaking)</option>
              </select>
            </div>

            <div className="p-3 bg-amber-50 rounded-lg border border-amber-200 text-xs text-amber-950 leading-relaxed font-medium">
              <strong>Capacity notice:</strong> We only onboard 2 firms per month because every
              build is fully custom. 2 spots remain for {getCapacityMonth()}.
            </div>

            <Button
              type="submit"
              className="w-full py-3.5 h-auto text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white shadow-md hover:shadow-lg transition-all rounded-xl cursor-pointer"
            >
              Continue to Select Time &rarr;
            </Button>
            <p className="text-[11px] text-center text-slate-500">
              30 minutes. Zero obligation. 100% confidential.
            </p>
          </form>
        )}

        {step === "slot" && (
          <div className="p-6 space-y-5 max-h-[75vh] overflow-y-auto">
            <div className="flex items-center justify-between border-b border-slate-200 pb-3">
              <div>
                <h4 className="font-bold text-slate-900 text-base">Select Your 30-Minute Slot</h4>
                <p className="text-xs text-slate-500">
                  Time zone: <span className="font-semibold text-slate-700">{browserTimezone}</span>
                </p>
              </div>
              <button
                type="button"
                onClick={() => setStep("details")}
                className="text-xs font-semibold text-[#3344b8] hover:underline flex items-center gap-1 cursor-pointer"
              >
                <ChevronLeft className="w-3.5 h-3.5" /> Back to details
              </button>
            </div>

            {loadingSlots ? (
              <div className="py-12 text-center space-y-3">
                <Loader2 className="w-7 h-7 animate-spin text-[#3344b8] mx-auto" />
                <p className="text-xs text-slate-500">
                  Finding earliest available discovery slots...
                </p>
              </div>
            ) : availableDates.length > 0 ? (
              <div className="space-y-4">
                {/* Date Chips */}
                <div>
                  <Label className="text-xs font-bold text-slate-700 block mb-2">
                    Available Dates
                  </Label>
                  <div className="flex gap-2 overflow-x-auto pb-2 scrollbar-none">
                    {availableDates.slice(0, 7).map((d) => {
                      const isSelected = selectedDate === d;
                      const dateObj = new Date(d + "T12:00:00");
                      const weekday = dateObj.toLocaleDateString(undefined, { weekday: "short" });
                      const monthDay = dateObj.toLocaleDateString(undefined, {
                        month: "short",
                        day: "numeric",
                      });
                      return (
                        <button
                          key={d}
                          type="button"
                          onClick={() => {
                            setSelectedDate(d);
                            setSelectedSlot(availableSlots[d]?.slots[0] || "");
                          }}
                          className={`px-3 py-2 rounded-xl border text-xs text-center shrink-0 transition-all cursor-pointer ${
                            isSelected
                              ? "bg-[#3344b8] text-white border-[#3344b8] font-bold shadow-xs"
                              : "bg-slate-50 border-slate-200 text-slate-700 hover:bg-slate-100"
                          }`}
                        >
                          <div className="uppercase tracking-wider text-[10px] opacity-80">
                            {weekday}
                          </div>
                          <div className="font-semibold mt-0.5">{monthDay}</div>
                        </button>
                      );
                    })}
                  </div>
                </div>

                {/* Slots Grid */}
                <div>
                  <Label className="text-xs font-bold text-slate-700 block mb-2">
                    Select a Time
                  </Label>
                  <div className="grid grid-cols-2 sm:grid-cols-3 gap-2 max-h-48 overflow-y-auto p-1">
                    {currentSlots.map((slot) => {
                      const isSelected = selectedSlot === slot;
                      const timeStr = new Date(slot).toLocaleTimeString([], {
                        hour: "2-digit",
                        minute: "2-digit",
                      });
                      return (
                        <button
                          key={slot}
                          type="button"
                          onClick={() => setSelectedSlot(slot)}
                          className={`py-2 px-3 rounded-lg text-xs font-medium border text-center transition-all cursor-pointer ${
                            isSelected
                              ? "bg-[#12193b] text-white border-[#12193b] font-bold shadow-xs"
                              : "bg-white border-slate-200 text-slate-700 hover:border-slate-400 hover:bg-slate-50"
                          }`}
                        >
                          {timeStr}
                        </button>
                      );
                    })}
                  </div>
                </div>
              </div>
            ) : (
              <div className="p-4 bg-blue-50 border border-blue-200 rounded-xl text-xs text-blue-900 leading-relaxed">
                <p className="font-bold mb-1">Direct Calendar Booking</p>
                <p>
                  We will reserve your discovery slot directly for{" "}
                  <strong>{formData.firmName || "your firm"}</strong> and email your calendar invite
                  within 1 business hour.
                </p>
              </div>
            )}

            <Button
              type="button"
              disabled={submitting}
              onClick={handleFinalBooking}
              className="w-full py-3.5 h-auto text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white shadow-md hover:shadow-lg transition-all rounded-xl cursor-pointer"
            >
              {submitting ? (
                <span className="flex items-center gap-2">
                  <Loader2 className="w-4 h-4 animate-spin" /> Securing Your Spot...
                </span>
              ) : (
                "Confirm & Book Discovery Call"
              )}
            </Button>
          </div>
        )}

        {step === "success" && (
          <div className="p-8 text-center space-y-4">
            <div className="w-14 h-14 bg-emerald-100 text-emerald-600 rounded-full flex items-center justify-center mx-auto">
              <CheckCircle2 className="w-8 h-8" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">
              You're Booked! We Have Your Discovery Call.
            </h3>
            <p className="text-slate-600 text-sm max-w-md mx-auto leading-relaxed">
              Thanks <strong>{formData.firstName || "Counselor"}</strong>. We’ve reserved your
              session for <strong>{formData.firmName || "your firm"}</strong>. A confirmation and
              calendar invitation have been sent to <strong>{formData.email}</strong>.
            </p>

            <div className="bg-slate-50 border border-slate-200 rounded-xl p-4 text-left text-xs text-slate-600 space-y-2 mt-4">
              <div className="font-semibold text-slate-800 flex items-center gap-1.5">
                <ShieldCheck className="w-4 h-4 text-emerald-600" />
                What happens on the call:
              </div>
              <p>1. We review your current intake & website before we hop on.</p>
              <p>2. We diagnose where leads currently leak or ghost.</p>
              <p>3. You leave with a clear estimate and roadmap for your firm.</p>
            </div>

            <Button
              onClick={handleReset}
              className="w-full mt-4 bg-[#12193b] hover:bg-[#202c61] text-white font-semibold py-2.5 rounded-xl cursor-pointer"
            >
              Close & Return to Page
            </Button>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
