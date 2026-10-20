import { useState } from "react";
import {
  Users,
  Calendar,
  Clock,
  Mail,
  Bell,
  Video,
  MapPin,
  Plus,
  CheckCircle2,
  AlertCircle,
  ArrowRight,
  Zap,
  RefreshCw,
  ShieldCheck,
} from "lucide-react";

// =============================================================
// Types
// =============================================================

type EventId = "seminar" | "webinar" | "workshop";

type Format = "in-person" | "online";

type Registrant = {
  id: string;
  name: string;
  email: string;
  status: "registered" | "waitlist" | "attended";
};

type Event = {
  id: EventId;
  label: string;
  format: Format;
  date: string;
  capacity: number;
  registered: number;
  waitlist: number;
  showRate: string;
  registrants: Registrant[];
};

// =============================================================
// Event data
// =============================================================

const EVENTS: Event[] = [
  {
    id: "seminar",
    label: "Estate Planning 101",
    format: "in-person",
    date: "Thu · Nov 14 · 6:00 PM",
    capacity: 30,
    registered: 24,
    waitlist: 8,
    showRate: "82%",
    registrants: [
      { id: "r1", name: "Margaret Olson", email: "m.olson@gmail.com", status: "registered" },
      { id: "r2", name: "James Whitfield", email: "jwhitfield@yahoo.com", status: "registered" },
      { id: "r3", name: "Diane Castellano", email: "dianec@outlook.com", status: "registered" },
      { id: "r4", name: "Robert Reyes", email: "rrhesq@gmail.com", status: "registered" },
    ],
  },
  {
    id: "webinar",
    label: "Trust Planning Webinar",
    format: "online",
    date: "Tue · Nov 19 · 12:00 PM",
    capacity: 100,
    registered: 67,
    waitlist: 0,
    showRate: "76%",
    registrants: [
      { id: "w1", name: "Patricia Ng", email: "pat.ng@gmail.com", status: "registered" },
      { id: "w2", name: "Steven Harmon", email: "sharmon@proton.me", status: "registered" },
      { id: "w3", name: "Linda Vasquez", email: "l.vasquez@yahoo.com", status: "registered" },
    ],
  },
  {
    id: "workshop",
    label: "Elder Law Workshop",
    format: "in-person",
    date: "Sat · Nov 23 · 10:00 AM",
    capacity: 20,
    registered: 20,
    waitlist: 15,
    showRate: "88%",
    registrants: [
      { id: "k1", name: "Gerald Foster", email: "gfoster@gmail.com", status: "registered" },
      { id: "k2", name: "Helen Bauer", email: "helenb@outlook.com", status: "waitlist" },
      { id: "k3", name: "Carl Sandoval", email: "csand@yahoo.com", status: "waitlist" },
    ],
  },
];

const REMINDERS: { label: string; icon: typeof Bell; detail: string }[] = [
  { label: "Confirmation + calendar invite", icon: Mail, detail: "instant on register" },
  { label: "24-hour reminder", icon: Bell, detail: "auto" },
  { label: "1-hour reminder + join link", icon: Clock, detail: "auto" },
];

const FOLLOW_UP: { label: string; icon: typeof Zap; detail: string }[] = [
  { label: "Tag attendees in CRM", icon: Users, detail: "by event" },
  { label: "Send replay to no-shows", icon: Video, detail: "morning after" },
  { label: "Open consult-booking sequence", icon: Calendar, detail: "to everyone who came" },
];

// =============================================================
// Component
// =============================================================

export function ClassBookingsMockup() {
  const [activeEvent, setActiveEvent] = useState<EventId>("seminar");

  const event = EVENTS.find((e) => e.id === activeEvent)!;
  const pct = Math.min(100, Math.round((event.registered / event.capacity) * 100));
  const isFull = event.registered >= event.capacity;

  return (
    <div className="rounded-3xl border border-slate-200 bg-white shadow-xl overflow-hidden">
      {/* Top bar */}
      <div className="bg-[#12193b] text-white px-5 py-3 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <Users className="w-4 h-4 text-amber-300" />
          <span className="text-sm font-bold">Leadli Events &middot; yourfirm.law</span>
        </div>
        <div className="flex items-center gap-3 text-xs text-slate-300">
          <span className="hidden sm:inline-flex items-center gap-1">
            <RefreshCw className="w-3.5 h-3.5 text-emerald-400" />
            Live &middot; updated just now
          </span>
          <span className="inline-flex items-center gap-1 text-emerald-400 font-bold">
            <ShieldCheck className="w-3.5 h-3.5" />
            Registrants sync to CRM
          </span>
        </div>
      </div>

      {/* Event tabs */}
      <div className="px-5 py-4 bg-slate-50/80 border-b border-slate-200 flex flex-wrap items-center gap-2">
        <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400 mr-1">
          Event
        </span>
        {EVENTS.map((e) => {
          const Icon = e.format === "online" ? Video : MapPin;
          const isActive = activeEvent === e.id;
          const full = e.registered >= e.capacity;
          return (
            <button
              key={e.id}
              onClick={() => setActiveEvent(e.id)}
              className={`inline-flex items-center gap-1.5 px-3.5 py-2 rounded-xl text-xs font-bold transition-all cursor-pointer ${
                isActive
                  ? "bg-[#3344b8] text-white shadow-md"
                  : "bg-white border border-slate-200 text-slate-600 hover:border-[#3344b8]/40 hover:text-[#3344b8]"
              }`}
            >
              <Icon className="w-3.5 h-3.5" />
              {e.label}
              {full && (
                <span className="ml-1 text-[9px] font-extrabold uppercase bg-amber-500/20 text-amber-700 px-1.5 py-0.5 rounded">
                  Full
                </span>
              )}
            </button>
          );
        })}
      </div>

      {/* Event detail */}
      <div className="p-4 sm:p-5 bg-slate-50/60 space-y-4">
        {/* Header row */}
        <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8] shrink-0">
              {event.format === "online" ? (
                <Video className="w-5 h-5" />
              ) : (
                <MapPin className="w-5 h-5" />
              )}
            </div>
            <div>
              <div className="text-sm font-black text-[#12193b]">{event.label}</div>
              <div className="text-[11px] text-slate-500 font-semibold flex items-center gap-1.5">
                <Calendar className="w-3.5 h-3.5" />
                {event.date}
                <span className="text-slate-300">&middot;</span>
                <span className="capitalize">{event.format}</span>
              </div>
            </div>
          </div>
          <div className="flex items-center gap-2 text-xs">
            <span className="inline-flex items-center gap-1.5 px-2.5 py-1.5 rounded-lg bg-blue-50 text-[#3344b8] border border-blue-200 font-bold">
              <Clock className="w-3.5 h-3.5" />
              Show rate {event.showRate}
            </span>
          </div>
        </div>

        {/* Capacity + waitlist */}
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
          <div className="rounded-2xl border border-slate-200 bg-white p-4">
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                Registered
              </span>
              <span className="text-xs font-black text-[#12193b]">
                {event.registered}/{event.capacity}
              </span>
            </div>
            <div className="h-2.5 rounded-full bg-slate-100 overflow-hidden">
              <div
                className={`h-full rounded-full transition-all ${
                  isFull ? "bg-amber-500" : "bg-[#3344b8]"
                }`}
                style={{ width: `${pct}%` }}
              />
            </div>
            <div className="mt-2 text-[10px] font-bold text-slate-500">
              {isFull ? (
                <span className="inline-flex items-center gap-1 text-amber-700">
                  <AlertCircle className="w-3 h-3" />
                  At capacity &mdash; waitlist open
                </span>
              ) : (
                <span className="inline-flex items-center gap-1 text-emerald-700">
                  <CheckCircle2 className="w-3 h-3" />
                  {event.capacity - event.registered} seats left
                </span>
              )}
            </div>
          </div>

          <div className="rounded-2xl border border-slate-200 bg-white p-4">
            <div className="flex items-center justify-between mb-2">
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                Waitlist
              </span>
              <span className="text-xs font-black text-[#12193b]">{event.waitlist}</span>
            </div>
            <div className="text-[10px] font-bold text-slate-500 leading-relaxed">
              {event.waitlist > 0 ? (
                <span>
                  Auto-promoted when a seat opens &mdash; first come, first seated, no manual
                  juggling.
                </span>
              ) : (
                <span className="text-emerald-700 inline-flex items-center gap-1">
                  <CheckCircle2 className="w-3 h-3" />
                  No waitlist yet
                </span>
              )}
            </div>
          </div>
        </div>

        {/* Registrant list */}
        <div className="rounded-2xl border border-slate-200 bg-white p-4">
          <div className="flex items-center justify-between mb-3">
            <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
              Registrants
            </span>
            <span className="text-[10px] font-bold text-slate-400">
              {event.registrants.length} of {event.registered} shown
            </span>
          </div>
          <ul className="space-y-2">
            {event.registrants.map((r) => (
              <li
                key={r.id}
                className="flex items-center justify-between gap-3 rounded-xl bg-slate-50 border border-slate-200 px-3 py-2"
              >
                <div className="flex items-center gap-2.5 min-w-0">
                  <div className="w-7 h-7 rounded-lg bg-white border border-slate-200 flex items-center justify-center text-[#3344b8] shrink-0">
                    <Users className="w-3.5 h-3.5" />
                  </div>
                  <div className="min-w-0">
                    <div className="text-[12px] font-bold text-slate-800 truncate">{r.name}</div>
                    <div className="text-[10px] text-slate-400 font-medium truncate">{r.email}</div>
                  </div>
                </div>
                <span
                  className={`shrink-0 text-[9px] font-extrabold uppercase px-2 py-0.5 rounded-full ${
                    r.status === "waitlist"
                      ? "bg-amber-100 text-amber-800 border border-amber-200"
                      : "bg-emerald-50 text-emerald-700 border border-emerald-200"
                  }`}
                >
                  {r.status}
                </span>
              </li>
            ))}
          </ul>
          <button className="mt-3 w-full rounded-lg border border-dashed border-slate-300 text-slate-400 hover:border-[#3344b8]/40 hover:text-[#3344b8] text-[10px] font-bold py-1.5 inline-flex items-center justify-center gap-1 transition-colors">
            <Plus className="w-3 h-3" />
            Add seat
          </button>
        </div>

        {/* Reminder automations */}
        <div className="rounded-2xl border border-slate-200 bg-white p-4 sm:p-5">
          <div className="flex items-center gap-2 mb-3">
            <div className="w-8 h-8 rounded-lg bg-[#3344b8]/10 border border-[#3344b8]/20 flex items-center justify-center text-[#3344b8]">
              <Bell className="w-4 h-4" />
            </div>
            <div className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
              Reminders
            </div>
            <span className="text-[10px] font-bold text-emerald-700 bg-emerald-50 border border-emerald-200 rounded-full px-2 py-0.5">
              Fires automatically
            </span>
          </div>
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-2.5">
            {REMINDERS.map((r) => {
              const Icon = r.icon;
              return (
                <div
                  key={r.label}
                  className="flex items-center gap-2.5 rounded-xl bg-slate-50 border border-slate-200 px-3 py-2.5"
                >
                  <div className="w-7 h-7 rounded-lg bg-white border border-slate-200 flex items-center justify-center text-[#3344b8] shrink-0">
                    <Icon className="w-3.5 h-3.5" />
                  </div>
                  <div className="min-w-0">
                    <div className="text-[11px] font-bold text-slate-700 leading-tight">
                      {r.label}
                    </div>
                    <div className="text-[10px] text-slate-400 font-medium">{r.detail}</div>
                  </div>
                </div>
              );
            })}
          </div>

          {/* Follow-up */}
          <div className="mt-3 pt-3 border-t border-slate-200">
            <div className="flex items-center gap-2 mb-2">
              <Zap className="w-3.5 h-3.5 text-amber-500" />
              <span className="text-[10px] font-extrabold uppercase tracking-widest text-slate-400">
                Morning after the event
              </span>
            </div>
            <div className="flex flex-wrap items-center gap-2">
              {FOLLOW_UP.map((f) => {
                const Icon = f.icon;
                return (
                  <span
                    key={f.label}
                    className="inline-flex items-center gap-1.5 text-[11px] font-bold text-slate-700 bg-slate-50 border border-slate-200 rounded-lg px-2.5 py-1.5"
                  >
                    <Icon className="w-3.5 h-3.5 text-[#3344b8]" />
                    {f.label}
                    <ArrowRight className="w-3 h-3 text-slate-300" />
                    <span className="text-slate-400">{f.detail}</span>
                  </span>
                );
              })}
            </div>
          </div>
        </div>
      </div>

      {/* Footer */}
      <div className="px-5 py-3 bg-white border-t border-slate-200 flex flex-wrap items-center justify-between gap-2 text-xs text-slate-500">
        <span className="font-semibold">
          {event.registered} registered &middot; {event.waitlist} waitlist &middot; {event.label}
        </span>
        <span className="inline-flex items-center gap-1.5 text-emerald-600 font-bold">
          <CheckCircle2 className="w-3.5 h-3.5" />
          Every registrant &rarr; CRM, tagged by event
        </span>
      </div>
    </div>
  );
}
