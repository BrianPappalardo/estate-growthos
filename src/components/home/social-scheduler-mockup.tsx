import { useState } from "react";
import {
  Calendar,
  Clock,
  Image as ImageIcon,
  MessageSquare,
  Repeat,
  CheckCircle2,
  ArrowRight,
  Heart,
  MessageCircle,
  Send,
  Bookmark,
  Hash,
} from "lucide-react";

type Platform = "instagram" | "facebook" | "linkedin";

interface Post {
  id: string;
  day: number;
  time: string;
  platform: Platform;
  caption: string;
  hashtags: string[];
  status: "scheduled" | "published" | "draft";
  likes: number;
  comments: number;
}

const PLATFORMS: Record<Platform, { label: string; color: string; bg: string; text: string }> = {
  instagram: {
    label: "Instagram",
    color: "bg-gradient-to-br from-fuchsia-500 to-amber-500",
    bg: "bg-fuchsia-50",
    text: "text-fuchsia-700",
  },
  facebook: {
    label: "Facebook",
    color: "bg-blue-600",
    bg: "bg-blue-50",
    text: "text-blue-700",
  },
  linkedin: {
    label: "LinkedIn",
    color: "bg-sky-700",
    bg: "bg-sky-50",
    text: "text-sky-700",
  },
};

const POSTS: Post[] = [
  {
    id: "p1",
    day: 3,
    time: "9:00 AM",
    platform: "linkedin",
    caption:
      "Most estate plans fail not because the attorney did a bad job — but because the family never updated it. Here's what to review every 3 years.",
    hashtags: ["estateplanning", "trust", "family"],
    status: "published",
    likes: 42,
    comments: 8,
  },
  {
    id: "p2",
    day: 3,
    time: "11:30 AM",
    platform: "instagram",
    caption:
      "5 signs your estate plan is outdated (and what it could cost your family). Save this one for later.",
    hashtags: ["estateplanning", "trust", "familylaw"],
    status: "published",
    likes: 128,
    comments: 14,
  },
  {
    id: "p3",
    day: 7,
    time: "10:00 AM",
    platform: "facebook",
    caption:
      "Reminder: our free Trusts 101 webinar is next Thursday. If you've been putting this off, this is your sign.",
    hashtags: ["webinar", "trusts101", "estateplanning"],
    status: "scheduled",
    likes: 0,
    comments: 0,
  },
  {
    id: "p4",
    day: 10,
    time: "8:30 AM",
    platform: "linkedin",
    caption:
      "A trust isn't just for wealthy families. If you own a home, have kids, or care about what happens after you're gone — you need one.",
    hashtags: ["trust", "estateplanning"],
    status: "scheduled",
    likes: 0,
    comments: 0,
  },
  {
    id: "p5",
    day: 14,
    time: "12:00 PM",
    platform: "instagram",
    caption:
      "Behind the scenes at the office. This is what a client intake meeting actually looks like.",
    hashtags: ["behindthescenes", "lawfirm", "estateplanning"],
    status: "scheduled",
    likes: 0,
    comments: 0,
  },
  {
    id: "p6",
    day: 17,
    time: "9:00 AM",
    platform: "linkedin",
    caption: "The #1 question I get: 'Do I really need a trust?' Here's the honest answer.",
    hashtags: ["trust", "estateplanning", "faq"],
    status: "draft",
    likes: 0,
    comments: 0,
  },
  {
    id: "p7",
    day: 21,
    time: "10:00 AM",
    platform: "facebook",
    caption:
      "We just published a new article: 'What happens if you die without a will?' It's not pretty. Read it here.",
    hashtags: ["will", "estateplanning", "probate"],
    status: "draft",
    likes: 0,
    comments: 0,
  },
  {
    id: "p8",
    day: 24,
    time: "11:00 AM",
    platform: "instagram",
    caption:
      "Client spotlight: the relief on their face when they realized their kids were protected. This is why we do this.",
    hashtags: ["clientspotlight", "estateplanning", "legacy"],
    status: "draft",
    likes: 0,
    comments: 0,
  },
];

const DAYS = Array.from({ length: 30 }, (_, i) => i + 1);
const WEEKDAYS = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

const STATUS_STYLES: Record<Post["status"], string> = {
  published: "text-emerald-700 bg-emerald-50 border-emerald-200",
  scheduled: "text-amber-700 bg-amber-50 border-amber-200",
  draft: "text-slate-500 bg-slate-50 border-slate-200",
};

const STATUS_LABELS: Record<Post["status"], string> = {
  published: "Published",
  scheduled: "Scheduled",
  draft: "Draft",
};

export function SocialSchedulerMockup() {
  const [view, setView] = useState<"calendar" | "library">("calendar");
  const [selectedId, setSelectedId] = useState<string>(POSTS[1]?.id ?? "");
  const selected = POSTS.find((p) => p.id === selectedId) ?? POSTS.find(() => true);
  if (!selected) return null;

  return (
    <div className="rounded-3xl border border-slate-200 bg-white overflow-hidden shadow-lg">
      {/* Dashboard header */}
      <div className="flex items-center justify-between px-5 sm:px-6 py-4 border-b border-slate-200 bg-slate-50">
        <div className="flex items-center gap-2.5">
          <div className="w-8 h-8 rounded-lg bg-[#12193b] flex items-center justify-center text-amber-300">
            <Calendar className="w-4 h-4" />
          </div>
          <div>
            <div className="text-sm font-black text-[#12193b]">Social Planner</div>
            <div className="text-[11px] text-slate-500 font-medium">
              Plan, publish & track across every platform
            </div>
          </div>
        </div>
        <div className="flex items-center gap-1 bg-white rounded-lg border border-slate-200 p-0.5">
          <button
            onClick={() => setView("calendar")}
            className={`px-3 py-1.5 rounded-md text-xs font-bold transition-all ${
              view === "calendar" ? "bg-[#3344b8] text-white" : "text-slate-600 hover:bg-slate-100"
            }`}
          >
            Calendar
          </button>
          <button
            onClick={() => setView("library")}
            className={`px-3 py-1.5 rounded-md text-xs font-bold transition-all ${
              view === "library" ? "bg-[#3344b8] text-white" : "text-slate-600 hover:bg-slate-100"
            }`}
          >
            Content Library
          </button>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12">
        {/* Left: calendar or library list */}
        <div
          className={`lg:col-span-7 border-b lg:border-b-0 lg:border-r border-slate-200 ${
            view === "calendar" ? "p-4 sm:p-5" : "p-4 sm:p-5"
          }`}
        >
          {view === "calendar" ? (
            <>
              <div className="flex items-center justify-between mb-3">
                <div className="text-xs font-bold text-slate-700">November 2026</div>
                <div className="flex items-center gap-1.5 text-[10px] font-bold text-slate-500">
                  <span className="inline-flex items-center gap-1">
                    <span className="w-2 h-2 rounded-full bg-emerald-500" />
                    Published
                  </span>
                  <span className="inline-flex items-center gap-1">
                    <span className="w-2 h-2 rounded-full bg-amber-500" />
                    Scheduled
                  </span>
                  <span className="inline-flex items-center gap-1">
                    <span className="w-2 h-2 rounded-full bg-slate-400" />
                    Draft
                  </span>
                </div>
              </div>

              {/* Weekday labels */}
              <div className="grid grid-cols-7 gap-1 mb-1.5">
                {WEEKDAYS.map((d) => (
                  <div
                    key={d}
                    className="text-center text-[9px] font-bold uppercase text-slate-400 py-1"
                  >
                    {d}
                  </div>
                ))}
              </div>

              {/* Calendar grid */}
              <div className="grid grid-cols-7 gap-1">
                {/* Empty offset cells (Nov 2026 starts on Sunday, but let's offset Mon) */}
                {[...Array(6)].map((_, i) => (
                  <div key={`off-${i}`} className="aspect-square" />
                ))}
                {DAYS.map((day) => {
                  const dayPosts = POSTS.filter((p) => p.day === day);
                  const hasPublished = dayPosts.some((p) => p.status === "published");
                  const hasScheduled = dayPosts.some((p) => p.status === "scheduled");
                  const hasDraft = dayPosts.some((p) => p.status === "draft");
                  return (
                    <button
                      key={day}
                      onClick={() => {
                        const first = dayPosts[0];
                        if (first) {
                          setSelectedId(first.id);
                        }
                      }}
                      className={`aspect-square rounded-lg border text-[10px] font-bold flex flex-col items-center justify-start pt-1.5 transition-all ${
                        dayPosts.length > 0
                          ? "border-slate-300 bg-[#fcfbf8] hover:border-[#3344b8] cursor-pointer"
                          : "border-slate-100 text-slate-300"
                      }`}
                    >
                      <span className={dayPosts.length > 0 ? "text-slate-700" : "text-slate-300"}>
                        {day}
                      </span>
                      {dayPosts.length > 0 && (
                        <div className="flex gap-0.5 mt-0.5">
                          {hasPublished && (
                            <span className="w-1.5 h-1.5 rounded-full bg-emerald-500" />
                          )}
                          {hasScheduled && (
                            <span className="w-1.5 h-1.5 rounded-full bg-amber-500" />
                          )}
                          {hasDraft && <span className="w-1.5 h-1.5 rounded-full bg-slate-400" />}
                        </div>
                      )}
                    </button>
                  );
                })}
              </div>

              {/* Upcoming queue */}
              <div className="mt-5">
                <div className="text-[11px] font-bold uppercase tracking-wider text-slate-400 mb-2.5">
                  Upcoming queue
                </div>
                <div className="space-y-1.5">
                  {POSTS.filter((p) => p.status === "scheduled" || p.status === "draft")
                    .slice(0, 3)
                    .map((post) => {
                      const plat = PLATFORMS[post.platform];
                      return (
                        <button
                          key={post.id}
                          onClick={() => setSelectedId(post.id)}
                          className={`w-full text-left rounded-xl border p-2.5 flex items-center gap-2.5 transition-all ${
                            post.id === selectedId
                              ? "border-[#3344b8] bg-blue-50/50"
                              : "border-slate-200 hover:border-slate-300"
                          }`}
                        >
                          <div
                            className={`w-7 h-7 rounded-lg ${plat.color} flex items-center justify-center text-white shrink-0`}
                          >
                            <MessageSquare className="w-3.5 h-3.5" />
                          </div>
                          <div className="min-w-0 flex-1">
                            <div className="text-xs font-bold text-slate-700 truncate">
                              {plat.label}
                            </div>
                            <div className="text-[10px] text-slate-400 font-medium">
                              Nov {post.day} · {post.time}
                            </div>
                          </div>
                          <span
                            className={`text-[9px] font-bold px-2 py-0.5 rounded-full border ${
                              STATUS_STYLES[post.status]
                            }`}
                          >
                            {STATUS_LABELS[post.status]}
                          </span>
                        </button>
                      );
                    })}
                </div>
              </div>
            </>
          ) : (
            <>
              <div className="text-[11px] font-bold uppercase tracking-wider text-slate-400 mb-3">
                Content library · reusable assets
              </div>
              <div className="space-y-2">
                {POSTS.map((post) => {
                  const plat = PLATFORMS[post.platform];
                  const Icon = post.platform === "instagram" ? Heart : MessageCircle;
                  return (
                    <button
                      key={post.id}
                      onClick={() => {
                        setSelectedId(post.id);
                        setView("calendar");
                      }}
                      className={`w-full text-left rounded-xl border p-3 flex items-center gap-3 transition-all ${
                        post.id === selectedId
                          ? "border-[#3344b8] bg-blue-50/50"
                          : "border-slate-200 hover:border-slate-300"
                      }`}
                    >
                      <div
                        className={`w-9 h-9 rounded-lg ${plat.bg} flex items-center justify-center ${plat.text} shrink-0`}
                      >
                        <Icon className="w-4 h-4" />
                      </div>
                      <div className="min-w-0 flex-1">
                        <div className="text-xs font-bold text-slate-700 truncate">
                          {plat.label} · Nov {post.day}
                        </div>
                        <div className="text-[10px] text-slate-400 truncate">
                          {post.caption.slice(0, 48)}…
                        </div>
                      </div>
                      <span
                        className={`text-[9px] font-bold px-2 py-0.5 rounded-full border shrink-0 ${
                          STATUS_STYLES[post.status]
                        }`}
                      >
                        {STATUS_LABELS[post.status]}
                      </span>
                    </button>
                  );
                })}
              </div>
              <div className="mt-4 flex items-center gap-2 text-[11px] text-slate-500 font-medium rounded-xl border border-slate-200 bg-[#fcfbf8] p-3">
                <Repeat className="w-4 h-4 text-[#3344b8] shrink-0" />
                <span>
                  Drag any post onto the calendar to reuse it — or set it to recycle on a schedule.
                  Your best content keeps working.
                </span>
              </div>
            </>
          )}
        </div>

        {/* Right: post preview */}
        <div className="lg:col-span-5 p-5 sm:p-6 bg-[#fcfbf8]">
          <div className="flex items-center justify-between mb-4">
            <span
              className={`inline-flex items-center gap-1.5 text-[10px] font-bold px-2.5 py-1 rounded-full border ${STATUS_STYLES[selected.status]}`}
            >
              <span className="w-1.5 h-1.5 rounded-full" />
              {STATUS_LABELS[selected.status]}
            </span>
            <div className="flex items-center gap-1 text-[10px] font-bold text-slate-400">
              <Clock className="w-3 h-3" />
              Nov {selected.day} · {selected.time}
            </div>
          </div>

          {/* Platform badge */}
          <div className="mb-4">
            <div
              className={`inline-flex items-center gap-2 px-3 py-1.5 rounded-lg ${PLATFORMS[selected.platform].bg} ${PLATFORMS[selected.platform].text}`}
            >
              <span
                className={`w-5 h-5 rounded ${PLATFORMS[selected.platform].color} flex items-center justify-center text-white`}
              >
                <MessageSquare className="w-3 h-3" />
              </span>
              <span className="text-xs font-black">{PLATFORMS[selected.platform].label}</span>
            </div>
          </div>

          {/* Post card mockup */}
          <div className="rounded-2xl border border-slate-200 bg-white overflow-hidden shadow-sm">
            {/* Post "image" placeholder */}
            <div className="aspect-[4/3] bg-gradient-to-br from-[#12193b] via-[#202c61] to-[#3344b8] flex items-center justify-center relative">
              <div className="absolute inset-0 bg-[radial-gradient(rgba(255,255,255,0.08)_1.5px,transparent_1.5px)] [background-size:20px_20px] opacity-40" />
              <div className="text-center relative">
                <ImageIcon className="w-10 h-10 text-white/30 mx-auto" />
                <div className="text-[10px] text-white/40 font-bold mt-1.5 uppercase tracking-wider">
                  {PLATFORMS[selected.platform].label} post
                </div>
              </div>
            </div>

            {/* Caption */}
            <div className="p-4">
              <div className="flex items-center gap-2 mb-2">
                <div className="w-7 h-7 rounded-full bg-gradient-to-br from-[#3344b8] to-amber-500" />
                <div>
                  <div className="text-xs font-black text-slate-800">Your Firm</div>
                  <div className="text-[9px] text-slate-400 font-medium">
                    Estate Planning Attorney
                  </div>
                </div>
              </div>
              <p className="text-xs text-slate-700 leading-relaxed">{selected.caption}</p>
              <div className="mt-2.5 flex flex-wrap gap-1">
                {selected.hashtags.map((tag) => (
                  <span
                    key={tag}
                    className="inline-flex items-center gap-0.5 text-[10px] font-bold text-[#3344b8]"
                  >
                    <Hash className="w-2.5 h-2.5" />
                    {tag}
                  </span>
                ))}
              </div>

              {/* Engagement stats (only for published) */}
              {selected.status === "published" ? (
                <div className="mt-3 pt-3 border-t border-slate-100 flex items-center gap-4 text-[10px] font-bold text-slate-500">
                  <span className="inline-flex items-center gap-1">
                    <Heart className="w-3.5 h-3.5 text-rose-500" />
                    {selected.likes}
                  </span>
                  <span className="inline-flex items-center gap-1">
                    <MessageCircle className="w-3.5 h-3.5 text-slate-400" />
                    {selected.comments}
                  </span>
                  <span className="inline-flex items-center gap-1">
                    <Send className="w-3.5 h-3.5 text-slate-400" />
                    23
                  </span>
                  <span className="inline-flex items-center gap-1 ml-auto">
                    <Bookmark className="w-3.5 h-3.5 text-slate-400" />
                  </span>
                </div>
              ) : (
                <div className="mt-3 pt-3 border-t border-slate-100 flex items-center gap-1.5 text-[10px] text-slate-400 font-medium">
                  <CheckCircle2 className="w-3.5 h-3.5 text-emerald-500" />
                  Will auto-publish on Nov {selected.day} at {selected.time}
                </div>
              )}
            </div>
          </div>

          {/* CRM tie-in */}
          <div className="mt-4 flex items-start gap-2.5 text-xs text-slate-500">
            <ArrowRight className="w-4 h-4 text-[#3344b8] shrink-0 mt-0.5 rotate-45" />
            <span className="leading-relaxed">
              Every post ties to your CRM — track which prospects engage, trigger follow-up on
              high-intent interactions, and keep your whole social presence in one place.
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}
