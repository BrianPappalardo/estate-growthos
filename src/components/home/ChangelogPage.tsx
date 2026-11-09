import { useState } from "react";
import { Link } from "@tanstack/react-router";
import { ArrowLeft, ArrowRight, Search, Tag, Sparkles } from "lucide-react";
import { FlyingLeapLogo } from "@/components/FlyingLeapLogo";
import { DiscoveryModal } from "@/components/DiscoveryModal";
import { HomeFooter } from "@/components/home/HomeCrewAndPlan";
import { Leadli2Banner } from "@/components/home/Leadli2Banner";
import type { ChangelogEntry } from "@/lib/changelog.functions";

const CATEGORY_LABELS: Record<string, string> = {
  automations: "Automations & Workflows",
  calendar: "Calendars & Booking",
  chat_widget: "Chat Widget",
  "chat-widget": "Chat Widget",
  "forms-surveys-quizzes": "Forms, Surveys & Quizzes",
  reporting: "Reporting & Dashboards",
  templates: "Templates",
  ai: "AI Tools",
  conversations: "Conversations",
  crm: "CRM & Client Management",
  courses: "Courses & Memberships",
  "task-management": "Task Management",
  "qr-codes": "QR Codes",
  general: "General",
};

function formatDate(iso: string): string {
  try {
    return new Date(iso).toLocaleDateString("en-US", {
      year: "numeric",
      month: "long",
      day: "numeric",
    });
  } catch {
    return iso;
  }
}

function groupByMonth(entries: ChangelogEntry[]) {
  const groups: { key: string; label: string; entries: ChangelogEntry[] }[] = [];
  for (const entry of entries) {
    const d = new Date(entry.publishedAt);
    const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}`;
    const label = d.toLocaleDateString("en-US", { year: "numeric", month: "long" });
    let group = groups.find((g) => g.key === key);
    if (!group) {
      group = { key, label, entries: [] };
      groups.push(group);
    }
    group.entries.push(entry);
  }
  return groups;
}

export function ChangelogPage({ entries }: { entries: ChangelogEntry[] }) {
  const [modalOpen, setModalOpen] = useState(false);
  const [query, setQuery] = useState("");
  const [activeCategory, setActiveCategory] = useState<string>("all");

  const handleOpenDiscovery = () => setModalOpen(true);

  const allCategories = Array.from(new Set(entries.map((e) => e.category))).sort();

  const filtered = entries.filter((e) => {
    if (activeCategory !== "all" && e.category !== activeCategory) return false;
    if (query.trim()) {
      const q = query.toLowerCase();
      return (
        e.title.toLowerCase().includes(q) ||
        e.summary.toLowerCase().includes(q) ||
        e.tags.some((t) => t.toLowerCase().includes(q))
      );
    }
    return true;
  });

  const groups = groupByMonth(filtered);

  return (
    <div className="min-h-screen bg-[#fcfbf8] text-slate-900 font-sans selection:bg-amber-200 selection:text-slate-900">
      <Leadli2Banner />

      {/* HEADER */}
      <header className="sticky top-0 z-40 bg-[#fcfbf8]/95 backdrop-blur-md border-b border-slate-200/80">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 h-20 flex items-center justify-between">
          <Link to="/" className="flex items-center">
            <FlyingLeapLogo className="h-11 sm:h-12" />
          </Link>
          <nav className="hidden md:flex items-center gap-7 text-sm font-semibold text-slate-700">
            <Link to="/" className="hover:text-[#3344b8] transition-colors">
              Home
            </Link>
            <Link to="/leadli" className="hover:text-[#3344b8] transition-colors">
              Leadli
            </Link>
            <Link to="/features" className="text-[#3344b8] font-extrabold transition-colors">
              Changelog
            </Link>
            <a
              href="https://app.leadli.co/"
              target="_blank"
              rel="noreferrer"
              className="hover:text-[#3344b8] transition-colors"
            >
              Login
            </a>
          </nav>
          <button
            onClick={handleOpenDiscovery}
            className="inline-flex items-center justify-center gap-2 px-5 sm:px-6 py-2.5 sm:py-3 rounded-full bg-[#12193b] text-white hover:bg-[#202c61] font-bold text-sm sm:text-base transition-all shadow-md hover:shadow-lg cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-4 h-4" />
          </button>
        </div>
      </header>

      {/* HERO */}
      <section className="relative pt-14 pb-16 sm:pt-20 sm:pb-20 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-tr from-[#3344b8]/30 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />
        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <Link
            to="/leadli"
            className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors mb-6"
          >
            <ArrowLeft className="w-4 h-4" />
            Back to Leadli
          </Link>
          <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase mb-5">
            <Sparkles className="w-4 h-4 text-amber-400" />
            Leadli Changelog
          </div>
          <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
            What's new in Leadli.
          </h1>
          <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
            Every update that ships to your account — new features, improvements, and fixes,
            straight from the build team.
          </p>
        </div>
      </section>

      {/* CONTROLS */}
      <section className="py-8 bg-white border-b border-slate-200 sticky top-20 z-30">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="flex flex-col sm:flex-row gap-4 items-stretch sm:items-center justify-between">
            <div className="relative flex-1 max-w-md">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
              <input
                type="text"
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Search updates..."
                className="w-full pl-10 pr-4 py-2.5 rounded-full border border-slate-300 bg-[#fcfbf8] text-sm font-medium text-slate-800 placeholder:text-slate-400 focus:outline-none focus:ring-2 focus:ring-[#3344b8] focus:border-transparent"
              />
            </div>
            <div className="flex flex-wrap gap-2">
              <button
                onClick={() => setActiveCategory("all")}
                className={`px-3.5 py-1.5 rounded-full text-xs font-bold transition-all cursor-pointer ${
                  activeCategory === "all"
                    ? "bg-[#12193b] text-white"
                    : "bg-[#fcfbf8] text-slate-600 border border-slate-200 hover:border-slate-300"
                }`}
              >
                All
              </button>
              {allCategories.map((cat) => (
                <button
                  key={cat}
                  onClick={() => setActiveCategory(cat)}
                  className={`px-3.5 py-1.5 rounded-full text-xs font-bold transition-all cursor-pointer ${
                    activeCategory === cat
                      ? "bg-[#3344b8] text-white"
                      : "bg-[#fcfbf8] text-slate-600 border border-slate-200 hover:border-slate-300"
                  }`}
                >
                  {CATEGORY_LABELS[cat] ?? cat}
                </button>
              ))}
            </div>
          </div>
        </div>
      </section>

      {/* TIMELINE */}
      <section className="py-12 sm:py-16 bg-[#fcfbf8]">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          {filtered.length === 0 ? (
            <div className="text-center py-20">
              <p className="text-slate-500 font-medium">
                {entries.length === 0 ? "Loading updates..." : "No updates match your search."}
              </p>
            </div>
          ) : (
            <div className="relative">
              {/* vertical line */}
              <div className="absolute left-3 sm:left-4 top-2 bottom-2 w-0.5 bg-slate-200" />
              <div className="space-y-12">
                {groups.map((group) => (
                  <div key={group.key}>
                    <div className="relative flex items-center gap-3 mb-6">
                      <div className="w-6 h-6 sm:w-8 sm:h-8 rounded-full bg-[#12193b] border-4 border-[#fcfbf8] z-10 shrink-0" />
                      <h2 className="text-lg sm:text-xl font-black text-[#12193b] tracking-tight">
                        {group.label}
                      </h2>
                    </div>
                    <div className="space-y-5 ml-9 sm:ml-12">
                      {group.entries.map((entry) => (
                        <article
                          key={entry.id}
                          className="rounded-2xl border border-slate-200 bg-white p-5 sm:p-6 shadow-sm hover:shadow-md transition-shadow"
                        >
                          <div className="flex items-start justify-between gap-4 flex-wrap">
                            <h3 className="text-base sm:text-lg font-black text-[#12193b] tracking-tight leading-snug">
                              {entry.title}
                            </h3>
                            <span className="text-xs text-slate-400 font-semibold whitespace-nowrap">
                              {formatDate(entry.publishedAt)}
                            </span>
                          </div>
                          {entry.summary && (
                            <p className="mt-2 text-sm text-slate-600 leading-relaxed">
                              {entry.summary}
                            </p>
                          )}
                          {entry.tags.length > 0 && (
                            <div className="mt-3 flex flex-wrap gap-1.5">
                              {entry.tags.map((tag) => (
                                <span
                                  key={tag}
                                  className="inline-flex items-center gap-1 px-2 py-0.5 rounded-full bg-blue-50 border border-blue-100 text-[#3344b8] text-[10px] font-bold"
                                >
                                  <Tag className="w-2.5 h-2.5" />
                                  {tag}
                                </span>
                              ))}
                            </div>
                          )}
                        </article>
                      ))}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      </section>

      {/* FOOTER */}
      <HomeFooter onOpenDiscovery={handleOpenDiscovery} />

      <DiscoveryModal open={modalOpen} onOpenChange={setModalOpen} />
    </div>
  );
}
