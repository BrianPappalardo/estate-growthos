import React from "react";
import { ArrowRight } from "lucide-react";

export function EmotionalSection({ onBookClick }: { onBookClick: () => void }) {
  return (
    <section className="py-16 sm:py-24 bg-linear-to-b from-[#12193b] via-[#18234e] to-[#12193b] text-white relative overflow-hidden">
      <div className="max-w-4xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-12">
          <h2 className="text-3xl sm:text-5xl font-extrabold text-white tracking-tight leading-tight">
            Stop Running a Non-Profit You Didn’t Sign Up For.
          </h2>
        </div>

        {/* Quote Bubble Callouts */}
        <div className="space-y-4 mb-10 max-w-2xl mx-auto">
          <div className="bg-white/10 backdrop-blur-md p-5 rounded-2xl border border-white/15 text-slate-100 text-sm sm:text-base italic">
            “Why am I spending 45 minutes explaining my value to someone who just wants a $99
            template?”
          </div>
          <div className="bg-white/10 backdrop-blur-md p-5 rounded-2xl border border-white/15 text-slate-100 text-sm sm:text-base italic">
            “I have 400 leads in my CRM, but I don’t have the time or the energy to go digging for
            them.”
          </div>
          <div className="bg-white/10 backdrop-blur-md p-5 rounded-2xl border border-white/15 text-slate-100 text-sm sm:text-base italic">
            “I’m the first one in and the last one out, yet I’m barely taking home more than my
            senior associate.”
          </div>
        </div>

        {/* Story copy */}
        <div className="max-w-2xl mx-auto text-slate-300 text-base sm:text-lg leading-relaxed text-center sm:text-left space-y-4">
          <p>
            Every hour you spend explaining why a trust isn’t $200 is an hour you aren’t billing for
            real work, or sitting at your daughter’s soccer game.
          </p>
          <p>
            You didn’t go to law school to become a salesperson. Or to run a call center. You went
            to help people protect their legacies. But when your intake is a mess, the bargain
            hunters and tire kickers crowd out the families who actually need you.
          </p>
          <p className="text-xl sm:text-2xl font-extrabold text-amber-300 pt-2 text-center">
            What you want is to have all your shit together. We can help with that.
          </p>
        </div>

        <div className="mt-10 text-center">
          <button
            onClick={onBookClick}
            className="inline-flex items-center justify-center gap-3 px-8 py-4 text-base sm:text-lg font-bold bg-[#f97316] hover:bg-[#ea580c] text-white rounded-2xl shadow-xl hover:shadow-orange-500/20 transition-all cursor-pointer"
          >
            <strong>Book My Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </div>
    </section>
  );
}
