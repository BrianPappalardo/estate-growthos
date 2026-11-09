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
          ? "py-16 sm:py-20 bg-[#12193b] text-white"
          : "py-16 sm:py-20 bg-[#fcfbf8] border-y border-slate-200"
      }
    >
      <div className="max-w-5xl mx-auto px-4 sm:px-6">
        <div className="text-center max-w-3xl mx-auto mb-10">
          <p
            className={`text-xl sm:text-2xl md:text-3xl font-extrabold tracking-tight leading-snug ${
              isDark ? "text-white" : "text-[#12193b]"
            }`}
          >
            {tagline}
          </p>
          {showExperience && (
            <p
              className={`mt-4 text-sm sm:text-base ${
                isDark ? "text-slate-300" : "text-slate-600"
              }`}
            >
              Over a decade of experience and dozens of happy clients under our belt — there's not
              much we haven't seen under the sun.
            </p>
          )}
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          {PILLARS.map((p) => {
            const Icon = p.icon;
            return (
              <div
                key={p.label}
                className={
                  isDark
                    ? "rounded-2xl bg-white/5 border border-white/10 p-5 flex flex-col gap-3"
                    : "rounded-2xl bg-white border border-slate-200 p-5 flex flex-col gap-3 shadow-xs"
                }
              >
                <div
                  className={
                    isDark
                      ? "w-11 h-11 rounded-xl bg-amber-500/15 border border-amber-400/30 flex items-center justify-center text-amber-300"
                      : "w-11 h-11 rounded-xl bg-amber-500/10 border border-amber-500/20 flex items-center justify-center text-[#f97316]"
                  }
                >
                  <Icon className="w-5 h-5" />
                </div>
                <div>
                  <div
                    className={`text-sm font-extrabold ${
                      isDark ? "text-amber-300" : "text-[#12193b]"
                    }`}
                  >
                    {p.label}
                  </div>
                  <p
                    className={`text-xs sm:text-sm mt-1 leading-relaxed ${
                      isDark ? "text-slate-300" : "text-slate-600"
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
