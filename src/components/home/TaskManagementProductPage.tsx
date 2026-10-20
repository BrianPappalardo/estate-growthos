import { Link } from "@tanstack/react-router";
import {
  ArrowRight,
  ArrowLeft,
  CheckCircle2,
  Sparkles,
  ListTodo,
  FolderKanban,
  KanbanSquare,
  ListChecks,
  Tag,
  Zap,
  Users,
  Clock,
  Calendar,
  Workflow,
  Database,
  FileText,
  DollarSign,
} from "lucide-react";
import { LEADLI_FEATURES } from "@/lib/leadli-features";
import { ProjectBoardMockup } from "@/components/home/project-board-mockup";

/**
 * Dedicated sales page for the Leadli Project Management product.
 *
 * Renders inside /feature/$slug when the slug is "task-management". The
 * header, footer, and discovery modal are owned by the route, so this
 * component renders only the <main> content.
 */
export function TaskManagementProductPage({ onOpenDiscovery }: { onOpenDiscovery: () => void }) {
  const relatedFeatures = LEADLI_FEATURES.filter(
    (f) =>
      f.slug !== "task-management" &&
      f.slug !== "crm" &&
      f.slug !== "automation" &&
      f.slug !== "opportunity-pipelines",
  ).slice(0, 7);

  return (
    <main>
      {/* ===== HERO ===== */}
      <section className="relative pt-14 pb-20 sm:pt-20 sm:pb-28 bg-[#12193b] text-white overflow-hidden">
        <div className="absolute inset-0 bg-[radial-gradient(#3344b8_1px,transparent_1px)] [background-size:24px_24px] opacity-20 pointer-events-none" />
        <div className="absolute top-1/3 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[300px] bg-gradient-to-tr from-[#3344b8]/30 to-amber-500/10 blur-3xl pointer-events-none rounded-full" />

        <div className="max-w-5xl mx-auto px-4 sm:px-6 relative">
          <div className="mb-6 flex flex-col items-start gap-3">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-1.5 text-xs font-bold uppercase tracking-wider text-amber-300 hover:text-amber-200 transition-colors"
            >
              <ArrowLeft className="w-4 h-4" />
              All Leadli Features
            </Link>

            <div className="inline-flex items-center gap-2 px-4 py-1.5 rounded-full bg-white/10 border border-white/20 text-amber-300 text-xs font-extrabold tracking-wide uppercase">
              <Sparkles className="w-4 h-4 text-amber-400" />
              Operations &middot; Project Management
            </div>
          </div>

          <div className="flex items-start gap-5">
            <div className="hidden sm:flex w-16 h-16 rounded-2xl bg-white/10 border border-amber-400/40 items-center justify-center text-amber-300 shrink-0">
              <ListTodo className="w-8 h-8" />
            </div>
            <div>
              <h1 className="text-3xl sm:text-5xl md:text-6xl font-black tracking-tight leading-[1.1]">
                Leadli Project Management
              </h1>
              <p className="mt-4 text-lg sm:text-2xl text-slate-200 max-w-3xl leading-relaxed font-semibold">
                Spaces, folders, and custom task statuses &mdash; tied to your contacts and deals,
                not stranded in a separate to-do app.
              </p>
            </div>
          </div>

          <p className="mt-6 text-base sm:text-lg text-slate-300 max-w-3xl leading-relaxed">
            Most firms run their work in a project tool that has no idea who the contact is, where
            the deal stands, or what just got signed. Leadli&apos;s project management lives inside
            the same platform as your CRM and your pipeline &mdash; so a task is attached to the
            person it&apos;s for, the deal it&apos;s part of, and the automation that created it.
            Create a space for every practice area, a folder for every matter, and custom statuses
            and fields that match how your team actually moves work.
          </p>

          <div className="mt-7 inline-flex flex-wrap items-center gap-2 text-xs">
            <span className="font-bold uppercase tracking-wider text-slate-400">Replaces:</span>
            {["Asana", "Trello", "Monday", "Sticky-note to-do lists"].map((name) => (
              <span
                key={name}
                className="px-3 py-1 rounded-full bg-white/10 border border-white/15 text-slate-200 font-semibold line-through decoration-rose-400/60"
              >
                {name}
              </span>
            ))}
          </div>

          <div className="mt-9 flex flex-col sm:flex-row items-start gap-4">
            <button
              onClick={onOpenDiscovery}
              className="inline-flex items-center justify-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-[#3344b8] hover:bg-[#25349c] text-white rounded-2xl shadow-xl hover:shadow-2xl transition-all cursor-pointer"
            >
              <strong>Book a Discovery Call</strong>
              <ArrowRight className="w-5 h-5" />
            </button>
            <p className="text-xs sm:text-sm text-slate-400 font-medium max-w-xs leading-relaxed pt-2">
              Included with Leadli at one flat $199/mo rate. See how it fits your firm on a
              30-minute call.
            </p>
          </div>
        </div>
      </section>

      {/* ===== THE LEAK ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-12">
            <div className="lg:col-span-5">
              <span className="text-xs font-bold uppercase tracking-wider text-rose-600 bg-rose-50 px-3 py-1 rounded-full border border-rose-200 inline-block">
                The leak
              </span>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] mt-4 tracking-tight leading-tight">
                Your tasks live in a tool that doesn&apos;t know who the work is for &mdash; or
                where the deal stands.
              </h2>
            </div>
            <div className="lg:col-span-7 space-y-5">
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                You run a matter in Asana. The client is in your CRM. The deal is on a pipeline
                board. The signed engagement letter is in an email thread. So someone&apos;s job is
                to keep four tabs in sync &mdash; and that someone is usually you, at 9 p.m.,
                retracing what already happened.
              </p>
              <p className="text-base sm:text-lg text-slate-700 leading-relaxed">
                Leadli puts the task next to the contact, the deal, and the signed document. A task
                created when a stage changes, attached to the prospect it belongs to, checked off
                when the next step fires &mdash; one record, one place, one less thing to keep in
                your head. No one retypes a name. No one loses the thread.
              </p>
              <div className="flex flex-wrap gap-2.5 pt-2">
                {[
                  "Tasks tied to contacts & deals",
                  "Statuses that match your workflow",
                  "Automations create & complete tasks",
                ].map((item) => (
                  <span
                    key={item}
                    className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-emerald-50 border border-emerald-200 text-emerald-800 text-xs font-bold"
                  >
                    <CheckCircle2 className="w-3.5 h-3.5" />
                    {item}
                  </span>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== PROJECT BOARD MOCKUP ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-6xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              The workspace your team actually needs
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Spaces for every practice area. Folders for every matter. Tasks for the work in
              between.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Switch the view to see your work the way that fits &mdash; a Kanban board for the
              team, a list for the intake coordinator, custom statuses that match how you move a
              matter. All inside Leadli.
            </p>
          </div>

          <ProjectBoardMockup />
        </div>
      </section>

      {/* ===== WHAT YOU GET ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              What you get
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Project management wired into the rest of your firm &mdash; not sitting next to it.
            </h2>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {PROJECT_CAPABILITIES.map((cap) => {
              const Icon = cap.icon;
              return (
                <div
                  key={cap.title}
                  className="rounded-2xl border border-slate-200 p-6 bg-white hover:shadow-md transition-shadow"
                >
                  <div className="flex items-start gap-4">
                    <div className="w-11 h-11 rounded-xl bg-blue-50 border border-blue-200 flex items-center justify-center text-[#3344b8] shrink-0">
                      <Icon className="w-5 h-5" />
                    </div>
                    <div>
                      <h3 className="font-black text-base text-[#12193b]">{cap.title}</h3>
                      <p className="text-sm text-slate-600 mt-1.5 leading-relaxed">{cap.body}</p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>

          <div className="mt-10 rounded-3xl bg-gradient-to-br from-[#12193b] to-[#202c61] text-white p-6 sm:p-8 shadow-xl">
            <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-5">
              <div>
                <div className="text-xs font-extrabold uppercase tracking-widest text-amber-300 mb-1">
                  Included in Leadli
                </div>
                <p className="text-sm text-slate-200 leading-relaxed max-w-xl">
                  Project management is part of the single platform we configure around how your
                  firm runs &mdash; not a separate Asana plan you have to remember to open. No extra
                  subscription, no per-seat bill, no spreadsheet to babysit.
                </p>
              </div>
              <div className="flex items-baseline gap-2 shrink-0">
                <span className="text-sm text-slate-300 font-semibold">Your rate</span>
                <span className="text-3xl font-black text-amber-300">$199/mo</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ===== DEEP DIVE: SPACES + STATUSES & FIELDS ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-start">
            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <FolderKanban className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Spaces &amp; folders
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                A space for every practice area &mdash; and a folder for every matter inside it.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                Estate planning, probate, elder law &mdash; each gets its own space. Inside it, a
                folder for the Henderson trust, the Martinez probate, the Sutton Medicaid matter.
                Tasks live where the work lives, grouped the way your firm thinks about it, not the
                way someone else&apos;s template decided you should.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Unlimited spaces &mdash; one per practice area",
                  "Nested folders for every matter",
                  "Move work between spaces without losing the thread",
                  "Permissions per space so the right people see the right work",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </li>
                ))}
              </ul>
            </div>

            <div>
              <div className="inline-flex items-center gap-2 text-[#3344b8] mb-3">
                <Tag className="w-5 h-5" />
                <span className="text-xs font-bold uppercase tracking-wider">
                  Custom statuses &amp; fields
                </span>
              </div>
              <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight leading-tight">
                Statuses and fields that match your workflow &mdash; not a template&apos;s.
              </h2>
              <p className="mt-4 text-base text-slate-700 leading-relaxed">
                A matter doesn&apos;t move from &ldquo;To Do&rdquo; to &ldquo;Done.&rdquo; It moves
                from &ldquo;Intake&rdquo; to &ldquo;Drafting&rdquo; to &ldquo;Review&rdquo; to
                &ldquo;Execution&rdquo; to &ldquo;Funded.&rdquo; We build the statuses that match
                the way you actually work &mdash; and the custom fields (priority, responsible
                attorney, statute date) that make a task actually useful.
              </p>
              <ul className="mt-6 space-y-2.5">
                {[
                  "Custom statuses per space &mdash; your words, not &ldquo;done&rdquo;",
                  "Custom fields: priority, owner, due date, and anything else",
                  "Color-coded by status so the board reads at a glance",
                  "Change a field and trigger the next automation",
                ].map((item) => (
                  <li key={item} className="flex items-start gap-2.5 text-sm text-slate-700">
                    <CheckCircle2 className="w-4 h-4 text-emerald-600 shrink-0 mt-0.5" />
                    <span dangerouslySetInnerHTML={{ __html: item }} />
                  </li>
                ))}
              </ul>
            </div>
          </div>
        </div>
      </section>

      {/* ===== VIEWS ===== */}
      <section className="py-16 sm:py-24 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              See your work your way
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Kanban for the team. List for the coordinator. More views on the way.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Same tasks, same data &mdash; the view that fits the person looking at it. Drag a card
              or check a row; the record underneath doesn&apos;t move.
            </p>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            <div className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-6">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
                  <KanbanSquare className="w-5 h-5" />
                </div>
                <h3 className="font-black text-base text-[#12193b]">Kanban view</h3>
              </div>
              <p className="text-sm text-slate-600 leading-relaxed">
                Drag a task across your custom statuses and watch the board update. The partner sees
                the whole firm at a glance; the paralegal sees their column. Move a card and the
                next step fires.
              </p>
            </div>
            <div className="rounded-2xl border border-slate-200 bg-[#fcfbf8] p-6">
              <div className="flex items-center gap-3 mb-4">
                <div className="w-10 h-10 rounded-xl bg-white border border-slate-200 flex items-center justify-center text-[#3344b8]">
                  <ListChecks className="w-5 h-5" />
                </div>
                <h3 className="font-black text-base text-[#12193b]">List view</h3>
              </div>
              <p className="text-sm text-slate-600 leading-relaxed">
                Sort, filter, and check off a row. The intake coordinator lives in the list &mdash;
                everything assigned to them, ordered by due date, with the custom fields that matter
                right there in the columns.
              </p>
            </div>
          </div>

          <div className="mt-6 flex flex-wrap items-center justify-center gap-2.5">
            <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-amber-50 border border-amber-200 text-amber-800 text-xs font-bold">
              <Clock className="w-3.5 h-3.5" />
              Calendar &amp; timeline views coming soon
            </span>
            <span className="inline-flex items-center gap-1.5 px-3 py-1.5 rounded-full bg-blue-50 border border-blue-200 text-[#3344b8] text-xs font-bold">
              <Zap className="w-3.5 h-3.5" />
              Every view reads the same record
            </span>
          </div>
        </div>
      </section>

      {/* ===== CONNECTED ===== */}
      <section className="py-16 sm:py-24 bg-[#fcfbf8] border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-12">
            <span className="text-xs font-bold uppercase tracking-wider text-[#3344b8] bg-blue-50 px-3 py-1 rounded-full border border-blue-200 inline-block">
              Connected, not copied
            </span>
            <h2 className="text-2xl sm:text-4xl font-black text-[#12193b] mt-4 tracking-tight">
              Your tasks know what the rest of your platform knows.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              No exports, no copy-paste, no &ldquo;does this match the CRM?&rdquo; The task reads
              the same data your contacts, deals, and payments run through &mdash; so it&apos;s
              always right.
            </p>
          </div>

          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-6 gap-3">
            {PROJECT_CONNECTIONS.map((conn) => {
              const Icon = conn.icon;
              return (
                <div
                  key={conn.label}
                  className="rounded-2xl border border-slate-200 bg-white p-4 text-center flex flex-col items-center gap-2"
                >
                  <div className="w-10 h-10 rounded-xl bg-[#fcfbf8] border border-slate-200 flex items-center justify-center text-[#3344b8]">
                    <Icon className="w-5 h-5" />
                  </div>
                  <span className="text-xs font-bold text-slate-700 leading-snug">
                    {conn.label}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </section>

      {/* ===== MORE FEATURES ===== */}
      <section className="py-16 sm:py-20 bg-white border-b border-slate-200">
        <div className="max-w-5xl mx-auto px-4 sm:px-6">
          <div className="text-center max-w-2xl mx-auto mb-10">
            <h2 className="text-2xl sm:text-3xl font-black text-[#12193b] tracking-tight">
              One platform. Every feature. One flat rate.
            </h2>
            <p className="mt-3 text-sm sm:text-base text-slate-600">
              Project management is just the start. Explore the rest of what&apos;s included with
              Leadli.
            </p>
          </div>
          <div className="flex flex-wrap items-center justify-center gap-2.5">
            {relatedFeatures.map((f) => (
              <Link
                key={f.slug}
                to="/feature/$slug"
                params={{ slug: f.slug }}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-full bg-[#fcfbf8] border border-slate-200 text-xs font-bold text-slate-700 hover:text-[#3344b8] hover:border-[#3344b8]/40 transition-all"
              >
                {f.name}
              </Link>
            ))}
          </div>
          <div className="mt-10 text-center">
            <Link
              to="/leadli"
              className="inline-flex items-center gap-2 text-sm font-bold text-[#3344b8] hover:underline"
            >
              See the full Leadli platform
              <ArrowRight className="w-4 h-4" />
            </Link>
          </div>
        </div>
      </section>

      {/* ===== FINAL CTA ===== */}
      <section className="py-20 bg-gradient-to-br from-[#12193b] via-[#1a2350] to-[#0d122b] text-white text-center">
        <div className="max-w-3xl mx-auto px-4 sm:px-6">
          <h2 className="text-3xl sm:text-5xl font-black tracking-tight">
            Let&apos;s get your whole team on one board.
          </h2>
          <p className="mt-5 text-base sm:text-xl text-slate-300 max-w-xl mx-auto leading-relaxed">
            30 minutes. We&apos;ll map how your firm tracks work today, tell you honestly whether
            Leadli fits, and give you a clear estimate.
          </p>
          <button
            onClick={onOpenDiscovery}
            className="mt-8 inline-flex items-center gap-3 px-8 sm:px-10 py-4 text-base sm:text-lg font-bold bg-amber-500 hover:bg-amber-600 text-slate-950 rounded-2xl shadow-xl transition-all cursor-pointer"
          >
            <strong>Book a Discovery Call</strong>
            <ArrowRight className="w-5 h-5" />
          </button>
        </div>
      </section>
    </main>
  );
}

const PROJECT_CAPABILITIES: { title: string; body: string; icon: typeof ListTodo }[] = [
  {
    icon: FolderKanban,
    title: "Spaces &amp; folders",
    body: "Create a space for every practice area and a folder for every matter inside it. Tasks live where the work lives &mdash; grouped the way your firm thinks, not the way a template decided.",
  },
  {
    icon: Tag,
    title: "Custom statuses &amp; fields",
    body: "Build the statuses that match how a matter actually moves &mdash; Intake, Drafting, Review, Execution, Funded &mdash; and the custom fields (priority, owner, statute date) that make a task useful.",
  },
  {
    icon: KanbanSquare,
    title: "Kanban view",
    body: "Drag a task across your custom statuses and watch the board update. The partner sees the whole firm; the paralegal sees their column. Move a card and the next step fires.",
  },
  {
    icon: ListChecks,
    title: "List view",
    body: "Sort, filter, and check off a row. The intake coordinator lives in the list &mdash; everything assigned to them, ordered by due date, with the custom fields right in the columns.",
  },
  {
    icon: Zap,
    title: "Tasks created by automations",
    body: "A deal hits &ldquo;engagement sent&rdquo; and a task to file the trust appears &mdash; assigned to the paralegal, due in three days. The work shows up because the status changed, not because someone remembered.",
  },
  {
    icon: Database,
    title: "One record, every view",
    body: "The task is tied to the same contact record as the emails, the calls, and the signed matter. Drag a card and the whole history moves with it &mdash; nothing orphaned, nothing lost.",
  },
  {
    icon: Users,
    title: "Team assignment &amp; views",
    body: "Assign tasks to the right person and filter the board by owner. A coordinator sees their queue; a partner sees the whole firm. Everyone works off the same board.",
  },
  {
    icon: Clock,
    title: "Due dates &amp; reminders",
    body: "Every task has a due date, and Leadli reminds the owner before it slips &mdash; not after. A statute deadline approaching? The responsible attorney sees it before it&apos;s a problem.",
  },
];

const PROJECT_CONNECTIONS: { label: string; icon: typeof ListTodo }[] = [
  { icon: Database, label: "CRM & contacts" },
  { icon: Workflow, label: "Pipelines & deals" },
  { icon: Calendar, label: "Consult bookings" },
  { icon: FileText, label: "Engagement letters" },
  { icon: Workflow, label: "Automations" },
  { icon: DollarSign, label: "Payments & invoices" },
];
