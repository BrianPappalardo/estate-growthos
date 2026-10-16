import React from "react";
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion";

export function GrowthOSFAQ() {
  return (
    <div className="bg-white rounded-2xl border border-slate-200/90 p-6 sm:p-8 shadow-xs">
      <Accordion type="single" collapsible className="w-full space-y-4">
        <AccordionItem value="item-1" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            What software does this run on?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            GrowthOS is powered by our enterprise CRM and automation platform stack. As developers,
            we’ve added a custom suite of features and integrations that estate planners find
            essential.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-2" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            Do I have to record the videos myself?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            Yes. You’re the expert, and your clients want to hear from you. We’ll give you simple
            frameworks and best practices to make it easy. It’s not scary.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-3" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            What if I don’t have documented processes?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            That’s okay. We’ll help you create and document them as part of the 4-6 week buildout.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-4" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            What happens to my existing leads?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            We clean up your current client and lead list and import it into your new CRM. If the
            list is especially messy, cleanup can add time to the build.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-5" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            What happens after the 4-6 weeks?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            You can keep building with us (landing pages, webinars, integrations, AI agents, and
            more) or move to support-only, where we train your team and you use our support team as
            much or as little as you like.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-6" className="border-b border-slate-200 pb-2">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            How much does it cost?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            $199/mo for the software plus $100/hr, or $1,250/mo all-in. The initial build is the
            same either way, and we’ll give you a clear estimate on your Discovery Call.
          </AccordionContent>
        </AccordionItem>

        <AccordionItem value="item-7" className="border-none">
          <AccordionTrigger className="text-left text-base sm:text-lg font-bold text-slate-900 hover:text-[#3344b8] py-3">
            What if it’s not a fit?
          </AccordionTrigger>
          <AccordionContent className="text-slate-600 text-sm leading-relaxed">
            If you decide within the first 30 days and you’ve done your homework and been available,
            we’ll tear up your first invoice.
          </AccordionContent>
        </AccordionItem>
      </Accordion>
    </div>
  );
}
