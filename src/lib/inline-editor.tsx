import { useEffect, useRef, useState } from "react";
import { useServerFn } from "@tanstack/react-start";
import { useLocation } from "@tanstack/react-router";
import { toast } from "sonner";
import { Loader2, Pencil, X, Save, LogOut, Eye } from "lucide-react";
import { useAdmin } from "@/lib/admin-context";
import { saveContentEdit } from "@/lib/cms.functions";
import { supabase } from "@/integrations/supabase/client";

/**
 * Free-form inline editor.
 *
 * When edit mode is ON, every text node and <img> on the page gets a hover
 * outline. Clicking a text element turns it into a contentEditable; clicking
 * an image opens a file picker. On save we compute a stable path for the
 * element (its DOM position signature) and persist the override keyed by
 * route + path.
 *
 * On render, the saved overrides are applied by InlineEditsApplier (below),
 * which swaps text content and image src attributes before the editor ever
 * attaches — so visitors see the saved content on first paint.
 */

type EditMap = Record<string, { field_type: "text" | "image"; value: string }>;

/** Build a stable, human-ish path for a DOM element within <main id="cms-root">. */
function elementPath(el: HTMLElement): string | null {
  const root = document.getElementById("cms-root");
  if (!root || !root.contains(el)) return null;
  const parts: string[] = [];
  let node: HTMLElement | null = el;
  while (node && node !== root) {
    const tag = node.tagName.toLowerCase();
    const parent = node.parentElement;
    if (!parent) break;
    const siblings = Array.from(parent.children).filter(
      (c: Element) => c.tagName === node!.tagName,
    );
    const index = siblings.indexOf(node);
    const sig = siblings.length > 1 ? `${tag}[${index}]` : tag;
    parts.unshift(sig);
    node = parent;
  }
  return parts.join("/");
}

export function InlineEditor({ edits, children }: { edits: EditMap; children: React.ReactNode }) {
  const { isAdmin, editMode, setEditMode, email, refresh } = useAdmin();
  const location = useLocation();
  const route = location.pathname || "/";
  const save = useServerFn(saveContentEdit);

  const [activeEl, setActiveEl] = useState<HTMLElement | null>(null);
  const [activePath, setActivePath] = useState<string | null>(null);
  const [activeType, setActiveType] = useState<"text" | "image">("text");
  const [draft, setDraft] = useState("");
  const [saving, setSaving] = useState(false);
  const [appliedEdits, setAppliedEdits] = useState<EditMap>(edits);
  const overlayRef = useRef<HTMLDivElement | null>(null);

  // Keep the applied edits in sync if the loader refetches.
  useEffect(() => {
    setAppliedEdits(edits);
  }, [edits]);

  // Apply saved text/image overrides to the live DOM on mount + when edits change.
  useEffect(() => {
    if (typeof document === "undefined") return;
    const root = document.getElementById("cms-root");
    if (!root) return;
    for (const [path, edit] of Object.entries(appliedEdits)) {
      const el = findByPath(root, path);
      if (!el) continue;
      if (edit.field_type === "image" && el.tagName === "IMG") {
        (el as HTMLImageElement).src = edit.value;
      } else if (edit.field_type === "text") {
        el.textContent = edit.value;
      }
    }
  }, [appliedEdits]);

  // Edit-mode hover + click handlers (delegated).
  useEffect(() => {
    if (!isAdmin || !editMode) return;
    const root = document.getElementById("cms-root");
    if (!root) return;

    const onOver = (e: MouseEvent) => {
      const target = (e.target as HTMLElement)?.closest(
        "h1,h2,h3,h4,h5,h6,p,span,li,a,button,img,blockquote",
      ) as HTMLElement | null;
      if (!target || !root.contains(target)) return;
      if (target === activeEl) return;
      // outline candidate
      target.style.outline = "2px dashed #f97316";
      target.style.outlineOffset = "2px";
      target.style.cursor = "pointer";
      target.setAttribute("data-cms-hover", "1");
    };
    const onOut = (e: MouseEvent) => {
      const target = e.target as HTMLElement;
      if (target.getAttribute("data-cms-hover") === "1" && target !== activeEl) {
        target.style.outline = "";
        target.style.outlineOffset = "";
        target.style.cursor = "";
        target.removeAttribute("data-cms-hover");
      }
    };
    const onClick = (e: MouseEvent) => {
      const target = (e.target as HTMLElement)?.closest(
        "h1,h2,h3,h4,h5,h6,p,span,li,a,button,img,blockquote",
      ) as HTMLElement | null;
      if (!target || !root.contains(target)) return;
      const path = elementPath(target);
      if (!path) return;
      e.preventDefault();
      e.stopPropagation();
      // clear previous hover styles
      root.querySelectorAll("[data-cms-hover='1']").forEach((n) => {
        const n2 = n as HTMLElement;
        n2.style.outline = "";
        n2.style.outlineOffset = "";
        n2.style.cursor = "";
        n2.removeAttribute("data-cms-hover");
      });
      setActiveEl(target);
      setActivePath(path);
      const isImg = target.tagName === "IMG";
      setActiveType(isImg ? "image" : "text");
      setDraft(isImg ? (target as HTMLImageElement).src : (target.textContent ?? ""));
      if (!isImg) {
        target.setAttribute("contenteditable", "true");
        target.focus();
      }
    };

    root.addEventListener("mouseover", onOver, true);
    root.addEventListener("mouseout", onOut, true);
    root.addEventListener("click", onClick, true);
    return () => {
      root.removeEventListener("mouseover", onOver, true);
      root.removeEventListener("mouseout", onOut, true);
      root.removeEventListener("click", onClick, true);
      root.querySelectorAll("[data-cms-hover='1']").forEach((n) => {
        const n2 = n as HTMLElement;
        n2.style.outline = "";
        n2.style.outlineOffset = "";
        n2.style.cursor = "";
        n2.removeAttribute("data-cms-hover");
      });
    };
  }, [isAdmin, editMode, activeEl]);

  const handleSave = async () => {
    if (!activeEl || !activePath) return;
    setSaving(true);
    try {
      const value = activeType === "text" ? (activeEl.textContent ?? "") : draft;
      await save({
        data: {
          route,
          element_path: activePath,
          field_type: activeType,
          value,
        },
      });
      setAppliedEdits((p) => ({ ...p, [activePath]: { field_type: activeType, value } }));
      toast.success("Saved. Visitors will see this now.");
      closeEditor();
    } catch (err) {
      console.error(err);
      toast.error("Couldn't save that change.");
    } finally {
      setSaving(false);
    }
  };

  const closeEditor = () => {
    if (activeEl && activeType === "text") {
      activeEl.removeAttribute("contenteditable");
      activeEl.style.outline = "";
      activeEl.style.outlineOffset = "";
    }
    setActiveEl(null);
    setActivePath(null);
  };

  const handleImagePick = async (file: File) => {
    if (!activePath) return;
    setSaving(true);
    try {
      const ext = file.name.split(".").pop() || "png";
      const path = `cms/${Date.now()}-${Math.random().toString(36).slice(2)}.${ext}`;
      const { error: upErr } = await supabase.storage
        .from("cms-images")
        .upload(path, file, { cacheControl: "3600", upsert: false });
      if (upErr) throw upErr;
      const { data: pub } = supabase.storage.from("cms-images").getPublicUrl(path);
      const url = pub.publicUrl;
      await save({
        data: {
          route,
          element_path: activePath,
          field_type: "image",
          value: url,
        },
      });
      if (activeEl && activeEl.tagName === "IMG") (activeEl as HTMLImageElement).src = url;
      setAppliedEdits((p) => ({ ...p, [activePath]: { field_type: "image", value: url } }));
      toast.success("Image updated.");
      closeEditor();
    } catch (err) {
      console.error(err);
      toast.error("Image upload failed.");
    } finally {
      setSaving(false);
    }
  };

  const handleSignOut = async () => {
    await supabase.auth.signOut();
    setEditMode(false);
    refresh();
  };

  return (
    <>
      {children}

      {/* Admin toolbar */}
      {isAdmin && (
        <div className="fixed bottom-4 left-1/2 -translate-x-1/2 z-[100] flex items-center gap-2 bg-[#12193b] text-white px-3 py-2 rounded-2xl shadow-2xl border border-white/10">
          <span className="text-xs font-bold px-2 hidden sm:inline">
            {email ? `Admin · ${email}` : "Admin"}
          </span>
          {!editMode ? (
            <button
              onClick={() => setEditMode(true)}
              className="inline-flex items-center gap-1.5 text-xs font-bold bg-[#f97316] hover:bg-[#ea580c] px-3 py-1.5 rounded-xl cursor-pointer"
            >
              <Pencil className="w-3.5 h-3.5" /> Edit page
            </button>
          ) : (
            <button
              onClick={() => {
                closeEditor();
                setEditMode(false);
              }}
              className="inline-flex items-center gap-1.5 text-xs font-bold bg-white/15 hover:bg-white/25 px-3 py-1.5 rounded-xl cursor-pointer"
            >
              <Eye className="w-3.5 h-3.5" /> Stop editing
            </button>
          )}
          <button
            onClick={handleSignOut}
            className="inline-flex items-center gap-1.5 text-xs font-medium text-slate-300 hover:text-white px-2 py-1.5 rounded-xl cursor-pointer"
          >
            <LogOut className="w-3.5 h-3.5" /> <span className="hidden sm:inline">Sign out</span>
          </button>
        </div>
      )}

      {/* Element editor popover */}
      {editMode && activeEl && activePath && (
        <div
          ref={overlayRef}
          className="fixed bottom-20 left-1/2 -translate-x-1/2 z-[101] bg-white border border-slate-300 rounded-2xl shadow-2xl p-3 w-[min(92vw,420px)]"
        >
          <div className="flex items-center justify-between mb-2">
            <span className="text-xs font-bold text-slate-700 truncate">
              {activeType === "image" ? "Replace image" : "Edit text"}
            </span>
            <button
              onClick={closeEditor}
              className="text-slate-400 hover:text-slate-700 cursor-pointer"
            >
              <X className="w-4 h-4" />
            </button>
          </div>

          {activeType === "image" ? (
            <div className="space-y-2">
              <input
                type="file"
                accept="image/*"
                onChange={(e) => {
                  const f = e.target.files?.[0];
                  if (f) handleImagePick(f);
                }}
                className="text-xs w-full"
              />
              <p className="text-[11px] text-slate-500">
                Uploads to Cloud Storage. The public URL is saved as the new image.
              </p>
            </div>
          ) : (
            <p className="text-[11px] text-slate-500">
              Edit the text directly on the page, then hit Save.
            </p>
          )}

          <div className="flex items-center gap-2 mt-3">
            <button
              onClick={handleSave}
              disabled={saving}
              className="inline-flex items-center gap-1.5 text-xs font-bold bg-[#3344b8] hover:bg-[#25349c] text-white px-3 py-1.5 rounded-xl cursor-pointer disabled:opacity-50"
            >
              {saving ? (
                <Loader2 className="w-3.5 h-3.5 animate-spin" />
              ) : (
                <Save className="w-3.5 h-3.5" />
              )}
              Save
            </button>
            <button
              onClick={closeEditor}
              className="text-xs font-medium text-slate-500 hover:text-slate-800 px-2 py-1.5 cursor-pointer"
            >
              Cancel
            </button>
          </div>
        </div>
      )}
    </>
  );
}

/** Resolve an element from its stable path (inverse of elementPath). */
function findByPath(root: HTMLElement, path: string): HTMLElement | null {
  const parts = path.split("/");
  let current: HTMLElement = root;
  for (const part of parts) {
    const m = part.match(/^(.+)\[(\d+)\]$/);
    let next: Element | null = null;
    if (m) {
      const tag = m[1] as string;
      const idx = parseInt(m[2], 10);
      const sibs = Array.from(current.children).filter(
        (c: Element) => c.tagName.toLowerCase() === tag,
      );
      next = sibs[idx] ?? null;
    } else {
      next = current.querySelector(`:scope > ${part}`);
    }
    if (!next || !(next instanceof HTMLElement)) return null;
    current = next;
  }
  return current;
}
