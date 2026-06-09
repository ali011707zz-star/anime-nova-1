import { createContext, useContext, useState, useEffect, type ReactNode } from "react";
import { supabase } from "./supabase-client";
import type { User, Session } from "@supabase/supabase-js";

export interface AuthUser {
  id: string;
  email?: string | null;
  displayName?: string | null;
  username?: string | null;
  firstName?: string | null;
  lastName?: string | null;
  profileImageUrl?: string | null;
  authType?: "supabase" | "replit";
}

interface AuthContextType {
  user: AuthUser | null;
  session: Session | null;
  loading: boolean;
  signIn: () => void;
  signOut: () => Promise<void>;
  emailSignIn: (email: string, password: string) => Promise<{ error?: string; requiresVerification?: boolean; email?: string }>;
  emailSignUp: (email: string, password: string, name: string) => Promise<{ error?: string; requiresVerification?: boolean; email?: string }>;
  updateProfile: (data: { displayName?: string; username?: string; profileImageCustom?: string | null }) => Promise<{ error?: string }>;
  deleteAccount: () => Promise<{ error?: string }>;
  refreshUser: () => Promise<void>;
  changePassword: (currentPassword: string, newPassword: string) => Promise<{ error?: string }>;
}

const AuthContext = createContext<AuthContextType>({
  user: null,
  session: null,
  loading: true,
  signIn: () => { window.location.href = "/api/login"; },
  signOut: async () => {},
  emailSignIn: async () => ({}),
  emailSignUp: async () => ({}),
  updateProfile: async () => ({}),
  deleteAccount: async () => ({}),
  refreshUser: async () => {},
  changePassword: async () => ({}),
});

function supabaseUserToAuthUser(supabaseUser: User, meta?: Record<string, any>): AuthUser {
  const m = meta ?? supabaseUser.user_metadata ?? {};
  return {
    id: supabaseUser.id,
    email: supabaseUser.email,
    displayName: m.display_name || m.full_name || m.name || null,
    username: m.username || null,
    firstName: m.first_name || null,
    lastName: m.last_name || null,
    profileImageUrl: m.profile_image_custom || m.avatar_url || null,
    authType: "supabase",
  };
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => {
      const s = data.session;
      setSession(s);
      setUser(s?.user ? supabaseUserToAuthUser(s.user) : null);
      setLoading(false);
    });

    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, s) => {
      setSession(s);
      setUser(s?.user ? supabaseUserToAuthUser(s.user) : null);
    });

    return () => subscription.unsubscribe();
  }, []);

  const refreshUser = async () => {
    const { data } = await supabase.auth.getUser();
    if (data.user) setUser(supabaseUserToAuthUser(data.user));
  };

  const signIn = () => { window.location.href = "/api/login"; };

  const signOut = async () => {
    await supabase.auth.signOut();
    setUser(null);
    setSession(null);
  };

  const emailSignIn = async (email: string, password: string) => {
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    if (error) {
      if (error.message.toLowerCase().includes("email not confirmed")) {
        await supabase.auth.resend({ type: "signup", email });
        return { requiresVerification: true, email };
      }
      return { error: translateError(error.message) };
    }
    return {};
  };

  const emailSignUp = async (email: string, password: string, name: string) => {
    const { error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        data: {
          display_name: name || email.split("@")[0],
          full_name: name || email.split("@")[0],
        },
      },
    });
    if (error) return { error: translateError(error.message) };
    return { requiresVerification: true, email };
  };

  const updateProfile = async (data: { displayName?: string; username?: string; profileImageCustom?: string | null }) => {
    const updates: Record<string, any> = {};
    if (data.displayName !== undefined) { updates.display_name = data.displayName; updates.full_name = data.displayName; }
    if (data.username !== undefined) updates.username = data.username;
    if (data.profileImageCustom !== undefined) updates.profile_image_custom = data.profileImageCustom;

    const { data: updated, error } = await supabase.auth.updateUser({ data: updates });
    if (error) return { error: translateError(error.message) };
    if (updated.user) setUser(supabaseUserToAuthUser(updated.user));
    return {};
  };

  const changePassword = async (_currentPassword: string, newPassword: string) => {
    const { error } = await supabase.auth.updateUser({ password: newPassword });
    if (error) return { error: translateError(error.message) };
    return {};
  };

  const deleteAccount = async () => {
    try {
      const res = await fetch("/api/auth/delete-account", {
        method: "DELETE",
        headers: { "Authorization": `Bearer ${session?.access_token}` },
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "فشل حذف الحساب" };
      await supabase.auth.signOut();
      setUser(null);
      setSession(null);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  return (
    <AuthContext.Provider value={{ user, session, loading, signIn, signOut, emailSignIn, emailSignUp, updateProfile, deleteAccount, refreshUser, changePassword }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);

function translateError(msg: string): string {
  const m = msg.toLowerCase();
  if (m.includes("invalid login credentials") || m.includes("invalid credentials")) return "بريد إلكتروني أو كلمة مرور غير صحيحة";
  if (m.includes("email not confirmed")) return "يرجى تأكيد بريدك الإلكتروني أولاً";
  if (m.includes("user already registered") || m.includes("already registered")) return "هذا البريد الإلكتروني مسجّل مسبقاً";
  if (m.includes("password should be")) return "كلمة المرور يجب أن تكون 6 أحرف على الأقل";
  if (m.includes("rate limit")) return "حاولت كثيراً، انتظر قليلاً ثم أعد المحاولة";
  if (m.includes("network") || m.includes("fetch")) return "خطأ في الاتصال";
  return "حدث خطأ، حاول مرة أخرى";
}
