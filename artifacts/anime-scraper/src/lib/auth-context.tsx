import { createContext, useContext, useState, useEffect, useCallback, type ReactNode } from "react";

export interface AuthUser {
  id: string;
  email?: string | null;
  displayName?: string | null;
  username?: string | null;
  firstName?: string | null;
  lastName?: string | null;
  profileImageUrl?: string | null;
  authType?: "supabase" | "replit" | "email";
}

interface AuthContextType {
  user: AuthUser | null;
  session: null;
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

async function fetchCurrentUser(): Promise<AuthUser | null> {
  try {
    const res = await fetch("/api/auth/user", { credentials: "include" });
    if (!res.ok) return null;
    return await res.json();
  } catch {
    return null;
  }
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [loading, setLoading] = useState(true);

  const refreshUser = useCallback(async () => {
    const u = await fetchCurrentUser();
    setUser(u);
  }, []);

  useEffect(() => {
    fetchCurrentUser().then((u) => {
      setUser(u);
      setLoading(false);
    });
  }, []);

  const signIn = () => { window.location.href = "/api/login"; };

  const signOut = async () => {
    try {
      await fetch("/api/auth/email-signout", { method: "POST", credentials: "include" });
    } catch {}
    window.location.href = "/api/logout";
  };

  const emailSignIn = async (email: string, password: string) => {
    try {
      const res = await fetch("/api/auth/email-signin", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ email, password }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "حدث خطأ، حاول مرة أخرى" };
      if (data.requiresVerification) return { requiresVerification: true, email: data.email };
      setUser(data);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const emailSignUp = async (email: string, password: string, name: string) => {
    try {
      const res = await fetch("/api/auth/email-signup", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ email, password, name }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "حدث خطأ، حاول مرة أخرى" };
      if (data.requiresVerification) return { requiresVerification: true, email: data.email };
      setUser(data);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const updateProfile = async (data: { displayName?: string; username?: string; profileImageCustom?: string | null }) => {
    try {
      const res = await fetch("/api/auth/profile", {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify(data),
      });
      const json = await res.json();
      if (!res.ok) return { error: json.error || "حدث خطأ، حاول مرة أخرى" };
      setUser(json);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const changePassword = async (currentPassword: string, newPassword: string) => {
    try {
      const res = await fetch("/api/auth/change-password", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ currentPassword, newPassword }),
      });
      const json = await res.json();
      if (!res.ok) return { error: json.error || "حدث خطأ، حاول مرة أخرى" };
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const deleteAccount = async () => {
    try {
      const res = await fetch("/api/auth/account", {
        method: "DELETE",
        credentials: "include",
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "فشل حذف الحساب" };
      setUser(null);
      window.location.href = "/";
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  return (
    <AuthContext.Provider value={{
      user,
      session: null,
      loading,
      signIn,
      signOut,
      emailSignIn,
      emailSignUp,
      updateProfile,
      deleteAccount,
      refreshUser,
      changePassword,
    }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);
