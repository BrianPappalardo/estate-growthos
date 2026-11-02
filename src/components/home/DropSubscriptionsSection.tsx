import { Scissors, Check } from "lucide-react";

const DROPPABLE_TOOLS = [
  { name: "Zoom", note: "Native Meeting Rooms replace it — included in your account." },
  {
    name: "Loom",
    note: "Screen Clips is our built-in upgrade — record, annotate, and share in one place.",
  },
  {
    name: "Canva",
    note: "Creator Studio is built in — design content and ads without leaving Leadli.",
  },
  {
    name: "Asana",
    note: "Native Project Management & Ticketing is included — no separate tool to sync.",
  },
  {
    name: "Freshdesk",
    note: "Unified Inbox + Support handles tickets, live chat, and email together.",
  },
  {
    name: "Calendly",
    note: "Service Calendars book the right consult automatically — no double-booking.",
  },
  {
    name: "Mailchimp",
    note: "Email Marketing is built in — lists, campaigns, and automation in one place.",
  },
  {
    name: "DocuSign",
    note: "Contracts & e-Signatures cover engagement letters and e-sign in one spot.",
  },
  { name: "Typeform", note: "Forms, Surveys & Quizzes build intake and trust quizzes natively." },
  { name: "HubSpot", note: "Your CRM, pipelines, and smart lists already live here." },
];

export function DropSubscriptionsSection() {
  return (
    <section
      className="relative py-16 sm:py-24 overflow-hidden"
      style={{ background: "var(--v2-bg)" }}
    >
      <div className="absolute inset-0 v2-grid-bg opacity-30 pointer-events-none" />
      <div
        className="absolute top-1/3 left-1/2 -translate-x-1/2 w-[600px] h-[400px] rounded-full blur-3xl pointer-events-none v2-drift"
        style={{ background: "var(--v2-electric)", opacity: 0.14 }}
      />
      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-12">
          <div
            className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full text-xs font-extrabold tracking-wide uppercase"
            style={{
              background: "color-mix(in oklab, var(--v2-electric) 16%, transparent)",
              color: "var(--v2-electric)",
              border: "1px solid color-mix(in oklab, var(--v2-electric) 35%, transparent)",
            }}
          >
            <Scissors className="w-3.5 h-3.5" />
            Drop these subscriptions
          </div>
          <h2 className="mt-5 text-3xl sm:text-4xl lg:text-5xl font-black tracking-tight text-[var(--v2-text)]">
            Leadli 2.0 replaces the tools you're still paying for.
          </h2>
          <p className="mt-4 text-base sm:text-lg text-[var(--v2-muted)] leading-relaxed">
            Every one of these is already built into your account. Cancel the separate subscription,
            keep the workflow, and stop paying twice for software that does the same thing.
          </p>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 sm:gap-4">
          {DROPPABLE_TOOLS.map((t) => (
            <div
              key={t.name}
              className="flex items-start gap-4 p-5 rounded-2xl transition-all"
              style={{
                background: "color-mix(in oklab, var(--v2-surface) 75%, transparent)",
                border: "1px solid var(--v2-border)",
              }}
            >
              <div
                className="flex items-center justify-center w-10 h-10 rounded-xl shrink-0"
                style={{
                  background: "color-mix(in oklab, var(--v2-electric) 14%, transparent)",
                  border: "1px solid color-mix(in oklab, var(--v2-electric) 30%, transparent)",
                }}
              >
                <Scissors className="w-5 h-5" style={{ color: "var(--v2-electric)" }} />
              </div>
              <div className="min-w-0">
                <div className="flex items-center gap-2 flex-wrap">
                  <span className="font-bold text-base text-[var(--v2-text)] line-through opacity-70">
                    {t.name}
                  </span>
                  <span
                    className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-[10px] font-black uppercase tracking-wider"
                    style={{
                      background: "color-mix(in oklab, var(--v2-accent) 16%, transparent)",
                      color: "var(--v2-accent)",
                    }}
                  >
                    <Check className="w-3 h-3" strokeWidth={3} />
                    Replaced
                  </span>
                </div>
                <p className="mt-1.5 text-sm text-[var(--v2-muted)] leading-snug">{t.note}</p>
              </div>
            </div>
          ))}
        </div>

        <p className="mt-8 text-center text-sm text-[var(--v2-muted)]">
          That's ten separate subscriptions you can cancel today — and the work they do just shows
          up inside Leadli instead.
        </p>
      </div>
    </section>
  );
}
