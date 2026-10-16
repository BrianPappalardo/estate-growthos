import React from "react";
import { Clock, Video, Database, XCircle } from "lucide-react";

export function ProblemSection() {
  return (
    <section id="problem" className="py-16 sm:py-24 bg-white border-y border-slate-200/80">
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-12">
          <span className="text-xs font-bold uppercase tracking-wider text-rose-600 bg-rose-50 px-3 py-1 rounded-full border border-rose-200">
            The Intake Leak
          </span>
          <h2 className="text-3xl sm:text-4xl font-extrabold text-[#12193b] mt-3 tracking-tight">
            Your intake is where the money leaks.
          </h2>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {/* Problem Card 1 */}
          <div className="bg-[#fcfbf8] rounded-2xl p-7 border border-slate-200 shadow-xs hover:border-slate-300 transition-all flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 bg-rose-100 text-rose-600 rounded-xl flex items-center justify-center mb-5 font-bold text-xl">
                <Clock className="w-6 h-6" />
              </div>
              <h3 className="text-xl font-bold text-slate-900 mb-2">Warm leads go cold.</h3>
              <p className="text-slate-600 text-sm leading-relaxed">
                Someone fills out your form on Tuesday. Nobody calls until Thursday, and by then
                they’ve booked with someone else. Or they ghost after the first conversation and
                never hear from you again. You know your team should follow up within minutes, but
                you have a firm to run.
              </p>
            </div>
            <div className="mt-6 pt-4 border-t border-slate-200/60 text-xs font-semibold text-rose-700 flex items-center gap-1.5">
              <XCircle className="w-4 h-4 shrink-0" />
              Lost to faster competitors
            </div>
          </div>

          {/* Problem Card 2 */}
          <div className="bg-[#fcfbf8] rounded-2xl p-7 border border-slate-200 shadow-xs hover:border-slate-300 transition-all flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 bg-amber-100 text-amber-600 rounded-xl flex items-center justify-center mb-5 font-bold text-xl">
                <Video className="w-6 h-6" />
              </div>
              <h3 className="text-xl font-bold text-slate-900 mb-2">No-shows and sticker shock.</h3>
              <p className="text-slate-600 text-sm leading-relaxed">
                Half your consults don’t show. Of the ones who do, many don’t know what a good estate plan costs, or what a trust even is. You spend the first 30 minutes educating someone who was never going to hire you in the first place.
              </p>
            </div>
            <div className="mt-6 pt-4 border-t border-slate-200/60 text-xs font-semibold text-amber-800 flex items-center gap-1.5">
              <XCircle className="w-4 h-4 shrink-0" />
              Wasted 30-min consult blocks
            </div>
          </div>

          {/* Problem Card 3 */}
          <div className="bg-[#fcfbf8] rounded-2xl p-7 border border-slate-200 shadow-xs hover:border-slate-300 transition-all flex flex-col justify-between">
            <div>
              <div className="w-12 h-12 bg-indigo-100 text-[#3344b8] rounded-xl flex items-center justify-center mb-5 font-bold text-xl">
                <Database className="w-6 h-6" />
              </div>
              <h3 className="text-xl font-bold text-slate-900 mb-2">Manual everything.</h3>
              <p className="text-slate-600 text-sm leading-relaxed">
                Names, emails, and notes typed into one system, then re-typed into another. Leads
                sitting in your CRM that nobody has time to dig through.
              </p>
            </div>
            <div className="mt-6 pt-4 border-t border-slate-200/60 text-xs font-semibold text-indigo-900 flex items-center gap-1.5">
              <XCircle className="w-4 h-4 shrink-0" />
              3+ hours of admin chaos per lead
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
