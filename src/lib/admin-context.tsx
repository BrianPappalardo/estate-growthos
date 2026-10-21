import { createContext, useContext, useEffect, useState, type ReactNode } from "react";
import { useServerFn } from "@tanstack/react-start";
import { supabase } from "@/integrations/supabase/client";
import { getAdminStatus } from "@/lib/cms.functions";

type AdminContextValue = {
  /** True once we've confirmed the current viewer is a signed-in admin. */
  isAdmin: boolean;
  /** True while the admin status check is in flight (first paint). */
  loading: boolean;
  /** Admin's email, for the editor toolbar. */
  email: string | null;
  /** Whether inline editing is currently turned on (toggle in the toolbar). */
  editMode: boolean;
  setEditMode: (v: boolean) => void;
  /** Force a re-check of admin status (e.g. after login). */
  refresh: () => void;
};

const AdminContext = createContext<AdminContextValue | null>(null);

export function AdminProvider({ children }: { children: ReactNode }) {
  const [isAdmin, setIsAdmin] = useState(false);
  const [email, setEmail] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [editMode, setEditMode] = useState(false);

  const fetchStatus = useServerFn(getAdminStatus);

  const refresh = async () => {
    const result = await fetchStatus();
    setIsAdmin(result.isAdmin);
    setEmail(result.email);
    setLoading(false);
  };

  useEffect(() => {
    // Re-check whenever the auth session changes (login/logout).
    refresh();
    const { data: sub } = supabase.auth.onAuthStateChange(() => {
      refresh();
    });
    return () => sub.subscription.unsubscribe();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <AdminContext.Provider value={{ isAdmin, loading, email, editMode, setEditMode, refresh }}>
      {children}
    </AdminContext.Provider>
  );
}

export function useAdmin() {
  const ctx = useContext(AdminContext);
  if (!ctx) throw new Error("useAdmin must be used within AdminProvider");
  return ctx;
}
