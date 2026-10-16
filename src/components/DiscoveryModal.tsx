import { useState } from "react";
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
import { CheckCircle2, Clock, Calendar, ShieldCheck, Sparkles } from "lucide-react";

interface DiscoveryModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

export function DiscoveryModal({ open, onOpenChange }: DiscoveryModalProps) {
  const [submitted, setSubmitted] = useState(false);
  const [formData, setFormData] = useState({
    name: "",
    firmName: "",
    email: "",
    phone: "",
    teamSize: "Solo attorney with growth plans",
    currentMonthlyLeads: "10-25 leads",
    practiceAreas: "Estate Planning",
  });

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitted(true);
  };

  const handleReset = () => {
    setSubmitted(false);
    onOpenChange(false);
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-[580px] p-0 overflow-hidden border-border/80 shadow-2xl rounded-2xl">
        {/* Banner */}
        <div className="bg-linear-to-r from-[#29379d] via-[#3344b8] to-[#4353d4] px-6 py-5 text-white relative">
          <div className="flex items-center gap-2 mb-1.5">
            <span className="inline-flex items-center gap-1 text-xs font-bold uppercase tracking-wider bg-amber-400 text-slate-950 px-2 py-0.5 rounded-full">
              <Sparkles className="w-3 h-3" />
              November: 2 Spots Open
            </span>
            <span className="text-xs text-blue-100 flex items-center gap-1">
              <Clock className="w-3.5 h-3.5" /> 30-Minute Call
            </span>
          </div>
          <DialogTitle className="text-xl sm:text-2xl font-bold tracking-tight text-white">
            Book Your GrowthOS Discovery Call
          </DialogTitle>
          <DialogDescription className="text-blue-100/90 text-sm mt-1">
            We’ll learn how your firm runs, tell you honestly whether we’re a fit, and leave you
            with a clear estimate.
          </DialogDescription>
        </div>

        {submitted ? (
          <div className="p-8 text-center space-y-4">
            <div className="w-14 h-14 bg-emerald-100 text-emerald-600 rounded-full flex items-center justify-center mx-auto">
              <CheckCircle2 className="w-8 h-8" />
            </div>
            <h3 className="text-xl font-bold text-slate-900">
              You're In! We Received Your Request.
            </h3>
            <p className="text-slate-600 text-sm max-w-md mx-auto leading-relaxed">
              Thanks <strong>{formData.name || "Counselor"}</strong>. We’ve received your details
              for <strong>{formData.firmName || "your firm"}</strong>. A member of the Flying Leap
              Studio partner team will reach out within 2 business hours with a direct calendar
              selector for your 30-minute discovery session.
            </p>

            <div className="bg-slate-50 border border-slate-200 rounded-xl p-4 text-left text-xs text-slate-600 space-y-2 mt-4">
              <div className="font-semibold text-slate-800 flex items-center gap-1.5">
                <ShieldCheck className="w-4 h-4 text-emerald-600" />
                What happens next:
              </div>
              <p>1. We review your current intake & website before we hop on.</p>
              <p>2. We diagnose where leads currently leak or ghost.</p>
              <p>3. You walk away with a custom estimate and roadmap — no hard pitch.</p>
            </div>

            <Button
              onClick={handleReset}
              className="w-full mt-4 bg-[#3344b8] hover:bg-[#29379d] text-white font-semibold py-2.5 rounded-xl"
            >
              Close & Return to Page
            </Button>
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="p-6 space-y-4 max-h-[75vh] overflow-y-auto">
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5">
                <Label htmlFor="name" className="text-xs font-semibold text-slate-700">
                  Your Full Name *
                </Label>
                <Input
                  id="name"
                  required
                  placeholder="e.g. Sarah Jenkins, Esq."
                  value={formData.name}
                  onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  className="rounded-lg text-sm"
                />
              </div>

              <div className="space-y-1.5">
                <Label htmlFor="firmName" className="text-xs font-semibold text-slate-700">
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
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div className="space-y-1.5">
                <Label htmlFor="email" className="text-xs font-semibold text-slate-700">
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
                <Label htmlFor="phone" className="text-xs font-semibold text-slate-700">
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
              <Label htmlFor="teamSize" className="text-xs font-semibold text-slate-700">
                Firm Size
              </Label>
              <select
                id="teamSize"
                value={formData.teamSize}
                onChange={(e) => setFormData({ ...formData, teamSize: e.target.value })}
                className="w-full h-10 px-3 text-sm rounded-lg border border-input bg-background text-foreground focus:outline-hidden focus:ring-2 focus:ring-[#3344b8]"
              >
                <option value="Solo attorney with growth plans">
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
              <Label htmlFor="leads" className="text-xs font-semibold text-slate-700">
                Approximate Monthly Inquiries / Consultations
              </Label>
              <select
                id="leads"
                value={formData.currentMonthlyLeads}
                onChange={(e) => setFormData({ ...formData, currentMonthlyLeads: e.target.value })}
                className="w-full h-10 px-3 text-sm rounded-lg border border-input bg-background text-foreground focus:outline-hidden focus:ring-2 focus:ring-[#3344b8]"
              >
                <option value="Under 10 leads/month">Under 10 inquiries/mo</option>
                <option value="10-25 leads">10 - 25 inquiries/mo</option>
                <option value="25-50 leads">25 - 50 inquiries/mo</option>
                <option value="50+ leads">50+ inquiries/mo (high volume leaking)</option>
              </select>
            </div>

            <div className="p-3 bg-amber-50/80 rounded-lg border border-amber-200/80 text-xs text-amber-900 leading-relaxed">
              <strong>Capacity notice:</strong> We only onboard 2 firms per month because every
              build is fully custom to your workflows. 2 spots remain for November.
            </div>

            <Button
              type="submit"
              className="w-full py-3 h-auto text-base font-bold bg-[#3344b8] hover:bg-[#25349c] text-white shadow-md hover:shadow-lg transition-all rounded-xl"
            >
              Book My Discovery Call &rarr;
            </Button>
            <p className="text-[11px] text-center text-slate-500">
              30 minutes. Zero obligation. 100% confidential.
            </p>
          </form>
        )}
      </DialogContent>
    </Dialog>
  );
}
