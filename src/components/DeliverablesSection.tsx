import React from "react";
import { Calendar, Video, BarChart3, Users, Database, Check, ArrowRight } from "lucide-react";

export function DeliverablesSection({ onBookClick }: { onBookClick: () => void }) {
  return (
    <section className="py-16 sm:py-24 bg-white border-y border-slate-200">
      <div className="max-w-6xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-14">
          <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200">
            The GrowthOS Deliverables
          </span>
          <h2 className="text-3xl sm:text-4xl md:text-5xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            GrowthOS: Your Intake, Built Around Your Firm
          </h2>
          <p className="mt-4 text-base sm:text-lg text-slate-600">
            At the end of the engagement, you own a custom intake system that includes:
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div className="bg-[#fcfbf8] p-7 rounded-2xl border border-slate-200 shadow-xs flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 rounded-xl bg-blue-100 text-[#3344b8] flex items-center justify-center mb-4">
                <Calendar className="w-6 h-6" />
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">
                A calendar link for every service you offer
              </h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                So prospects book the right consult right away without back-and-forth email tag or
                wrong calendar slots.
              </p>
            </div>
            <div className="mt-5 pt-3 border-t border-slate-200/60 text-xs font-semibold text-[#3344b8] flex items-center gap-1">
              <Check className="w-4 h-4" /> Service-specific routing
            </div>
          </div>

          <div className="bg-[#fcfbf8] p-7 rounded-2xl border border-slate-200 shadow-xs flex flex-col justify-between md:col-span-2 lg:col-span-2">
            <div>
              <div className="w-12 h-12 rounded-xl bg-amber-100 text-[#f97316] flex items-center justify-center mb-4">
                <Video className="w-6 h-6" />
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">
                An education video funnel for every service
              </h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                For estate planning, that means videos on the cost of doing nothing, what a trust
                is, what a will is, who should be your trustee, what it costs, and whether you need
                to update your plan afterward.
              </p>
              <div className="mt-3 inline-block bg-amber-50 text-amber-900 text-xs font-semibold px-3 py-1.5 rounded-lg border border-amber-200">
                Prospects arrive already educated, and already know your fees. They're ready to buy.
              </div>
            </div>
            <div className="mt-5 pt-3 border-t border-slate-200/60 text-xs font-semibold text-emerald-700 flex items-center gap-1">
              <Check className="w-4 h-4" /> Eliminates sticker shock before the call
            </div>
          </div>

          <div className="bg-[#fcfbf8] p-7 rounded-2xl border border-slate-200 shadow-xs flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 rounded-xl bg-purple-100 text-purple-700 flex items-center justify-center mb-4">
                <BarChart3 className="w-6 h-6" />
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">Analytics for each prospect</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                See who watched what before the consult. For instance, if someone skipped the pricing video, you know that you may need to spend a little extra time there during your discovery call.
              </p>
            </div>
            <div className="mt-5 pt-3 border-t border-slate-200/60 text-xs font-semibold text-purple-700 flex items-center gap-1">
              <Check className="w-4 h-4" /> Real-time prospect engagement data
            </div>
          </div>

          <div className="bg-[#fcfbf8] p-7 rounded-2xl border border-slate-200 shadow-xs flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 rounded-xl bg-emerald-100 text-emerald-700 flex items-center justify-center mb-4">
                <Users className="w-6 h-6" />
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">A CRM for your prospects</h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Your existing lead list is cleaned up and imported so those 400 forgotten leads are
                finally findable, organized, and ready for re-engagement.
              </p>
            </div>
            <div className="mt-5 pt-3 border-t border-slate-200/60 text-xs font-semibold text-emerald-700 flex items-center gap-1">
              <Check className="w-4 h-4" /> Revives dormant pipeline revenue
            </div>
          </div>

          <div className="bg-[#fcfbf8] p-7 rounded-2xl border border-slate-200 shadow-xs flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 rounded-xl bg-indigo-100 text-[#3344b8] flex items-center justify-center mb-4">
                <Database className="w-6 h-6" />
              </div>
              <h3 className="text-lg font-bold text-slate-900 mb-2">
                A practice management integration
              </h3>
              <p className="text-sm text-slate-600 leading-relaxed">
                Once someone signs and pays, their information is pushed directly into your practice
                management software, so nobody retypes data twice.
              </p>
            </div>
            <div className="mt-5 pt-3 border-t border-slate-200/60 text-xs font-semibold text-[#3344b8] flex items-center gap-1">
              <Check className="w-4 h-4" /> Zero manual duplicate data entry
            </div>
          </div>
        </div>

        <div className="mt-12 bg-linear-to-r from-slate-900 via-[#12193b] to-[#1c265e] text-white rounded-2xl p-8 sm:p-10 shadow-xl border border-slate-700">
          <div className="max-w-3xl">
            <span className="text-xs font-bold uppercase tracking-wider text-amber-400">
              Custom Tailoring Guarantee
            </span>
            <h3 className="text-2xl sm:text-3xl font-extrabold mt-2 text-white">
              No snapshots. No templates. No cookie-cutter.
            </h3>
            <p className="text-slate-300 mt-4 leading-relaxed text-sm sm:text-base">
              Other companies license a “proprietary system” that some marketer dreamed up, then
              cram your firm into it. It doesn’t work, because your firm isn’t theirs. We build
              software around the processes you already have. No documented processes? We’ll help
              you create them.
            </p>
          </div>

          <div className="mt-8 pt-6 border-t border-white/10 grid grid-cols-1 md:grid-cols-2 gap-6 items-center">
            <div>
              <div className="text-xs font-extrabold uppercase tracking-wider text-amber-300">
                Where we can take it next:
              </div>
              <p className="text-xs sm:text-sm text-slate-300 mt-1 leading-relaxed">
                Every build uncovers a wishlist. Automated follow-up and reminders, landing pages,
                webinar and seminar signups, integrations with other systems, AI agents, a website
                redesign, phone systems. We build outward from the intake, one step at a time.
              </p>
            </div>

            <div className="text-right sm:text-center md:text-right">
              <button
                onClick={onBookClick}
                className="w-full sm:w-auto inline-flex items-center justify-center gap-2 px-6 py-3.5 bg-[#f97316] hover:bg-[#ea580c] text-white font-bold rounded-xl shadow-md transition-all cursor-pointer"
              >
                <strong>See If GrowthOS Is Right for My Firm</strong>
                <ArrowRight className="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
