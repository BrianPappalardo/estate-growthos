import { Hammer, GraduationCap, Wrench, Lightbulb } from "lucide-react";

const PILLARS = [
  {
    icon: Hammer,
    label: "Build",
    text: "We build it for you — configured around your workflow, not a template.",
  },
  {
    icon: GraduationCap,
    label: "Train",
    text: "We train your team so everyone knows the system and actually uses it.",
  },
  {
    icon: Wrench,
    label: "Troubleshoot",
    text: "No sweat, we'll fix it for you.",
  },
  {
    icon: Lightbulb,
    label: "Implement",
    text: "New idea, new offer, new integration? We help you roll it out.",
  },
];

interface Props {
  /** Optional override for the tagline line. */
  tagline?: string;
  /** Visual variant. "light" = cream/white card, "dark" = navy card. */
  variant?: "light" | "dark";
  /** Show the "decade of experience" proof line. Default false. */
  showExperience?: boolean;
}

/**
 * The recurring "software is the tool, we are the implementors" promise.
 * Used on the homepage, estate planning page, Leadli page, and feature pages
 * so the team story is recognizable without being repetitive.
 */
export function ImplementationPromise({
  tagline = "Powered by the experts at Flying Leap Studio. We build, train, troubleshoot, and implement — so you don't have to.",
  variant = "light",
  showExperience = false,
}: Props) {
  const isDark = variant === "dark";

  return (
    <section
      className={
        isDark
          ? "fl-dark-canvas relative overflow-hidden py-20 sm:py-24 text-white"
          : "relative overflow-hidden py-20 sm:py-24 bg-white border-y border-slate-200"
      }
    >
      {isDark && (
        <div className="absolute inset-0 -z-10 pointer-events-none">
          <div className="fl-dark-grid absolute inset-0" />
          <div className="fl-glow absolute top-1/2 left-[5%] w-[380px] h-[380px] rounded-full bg-[radial-gradient(circle_at_center,color-mix(in_oklab,var(--brand-orange)_50%,transparent),transparent_70%)] blur-3xl" />
        </div>
      )}
      {!isDark && <div className="absolute inset-0 -z-10 pointer-events-none fl-light-grid" />}

      <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
        <div className="text-center max-w-3xl mx-auto mb-10">
          <p
            className={`fl-rise fl-rise-1 text-2xl sm:text-3xl md:text-4xl font-black tracking-tight leading-[1.1] ${
              isDark ? "text-white" : "text-[#12193b]"
            }`}
          >
            {tagline}
          </p>
          {showExperience && (
            <p
              className={`fl-rise fl-rise-2 mt-5 text-base sm:text-lg ${
                isDark ? "text-white/60" : "text-slate-600"
              }`}
            >
              Over a decade of experience and dozens of happy clients under our belt — there's not
              much we haven't seen under the sun.
            </p>
          )}
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          {PILLARS.map((p, i) => {
            const Icon = p.icon;
            return (
              <div
                key={p.label}
                className={`fl-rise rounded-2xl p-6 flex flex-col gap-3 transition-all hover:-translate-y-1 ${
                  isDark
                    ? "bg-white/[0.06] backdrop-blur-sm border border-white/10 hover:border-[var(--brand-orange)]/40"
                    : "bg-[#fcfbf8] border border-slate-200 hover:border-[var(--brand-orange)]/40 hover:shadow-md"
                }`}
                style={{ animationDelay: `${0.08 + i * 0.06}s` }}
              >
                <div
                  className={`w-12 h-12 rounded-xl flex items-center justify-center ${
                    isDark
                      ? "bg-[var(--brand-orange)]/15 border border-[var(--brand-orange)]/30 text-[var(--brand-orange)]"
                      : "bg-[var(--brand-orange)]/10 border border-[var(--brand-orange)]/20 text-[var(--brand-orange)]"
                  }`}
                >
                  <Icon className="w-6 h-6" />
                </div>
                <div>
                  <div
                    className={`text-base font-black ${isDark ? "text-white" : "text-[#12193b]"}`}
                  >
                    {p.label}
                  </div>
                  <p
                    className={`text-sm mt-1 leading-relaxed ${
                      isDark ? "text-white/60" : "text-slate-600"
                    }`}
                  >
                    {p.text}
                  </p>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
}
