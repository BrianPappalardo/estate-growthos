import React from "react";
import { Quote } from "lucide-react";

export function ProofSection() {
  return (
    <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
      {/* Testimonial 1 */}
      <div className="bg-[#faf9f6] p-8 rounded-2xl border border-slate-200 flex flex-col justify-between shadow-xs">
        <div>
          <Quote className="w-8 h-8 text-[#3344b8] opacity-60 mb-4" />
          <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
            “I came to Brian and team eight years ago with a long list of ideas and everything I’d
            heard I needed to do for digital marketing. Instead of selling me a package, they asked
            who my audience was and how we could reach them on a budget that made sense. It has
            never been cookie-cutter. It’s always been ‘what do you need to be successful in your
            business?’ They’re responsive, creative, and always asking the questions that help us
            find what I actually need. If you want to grow but feel overloaded by all the advice out
            there, this is the group to work with.”
          </p>
        </div>
        <div className="mt-6 pt-4 border-t border-slate-200">
          <div className="font-bold text-slate-900">Jennifer Redmond Knight</div>
          <div className="text-xs text-[#3344b8] font-semibold">Coalition Coaches</div>
        </div>
      </div>

      {/* Testimonial 2 */}
      <div className="bg-[#faf9f6] p-8 rounded-2xl border border-slate-200 flex flex-col justify-between shadow-xs">
        <div>
          <Quote className="w-8 h-8 text-[#f97316] opacity-60 mb-4" />
          <p className="text-slate-700 text-sm sm:text-base leading-relaxed italic">
            “Working with Leadli has been very easy. I’m not your super tech girl, but I’m not low
            tech either. I’m mid tech. I can dream up whatever I want, then speak to their
            programming team, and they figure out how it’s built. I get to stay in the visionary
            role without getting in the weeds of ‘if I click here, it needs to go there.’ When
            you’re looking for that white-glove experience, hands down, Flying Leap Studio is where
            you should go.”
          </p>
        </div>
        <div className="mt-6 pt-4 border-t border-slate-200">
          <div className="font-bold text-slate-900">Jennifer Norton</div>
          <div className="text-xs text-[#f97316] font-semibold">
            Estate Planner, Norton Law Group
          </div>
        </div>
      </div>
    </div>
  );
}
