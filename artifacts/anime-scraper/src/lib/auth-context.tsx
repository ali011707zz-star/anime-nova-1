import { createContext, useContext, useState, useEffect, type ReactNode } from "react";

export interface AuthUser {
  id: string;
  email?: string | null;
  displayName?: string | null;
  username?: string | null;
  firstName?: string | null;
  lastName?: string | null;
  profileImageUrl?: string | null;
  authType?: "replit" | "email";
}

interface AuthContextType {
  user: AuthUser | null;
  loading: boolean;
  signIn: () => void;
  signOut: () => Promise<void>;
  emailSignIn: (email: string, password: string) => Promise<{ error?: string }>;
  emailSignUp: (email: string, password: string, name: string) => Promise<{ error?: string }>;
  updateProfile: (data: { displayName?: string; username?: string; profileImageCustom?: string | null }) => Promise<{ error?: string }>;
  refreshUser: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType>({
  user: null,
  loading: true,
  signIn: () => { window.location.href = "/api/login"; },
  signOut: async () => { window.location.href = "/api/logout"; },
  emailSignIn: async () => ({}),
  emailSignUp: async () => ({}),
  updateProfile: async () => ({}),
  refreshUser: async () => {},
});

async function fetchUser(): Promise<AuthUser | null> {
  try {
    const res = await fetch("/api/auth/user", { credentials: "include" });
    if (res.status === 401) return null;
    if (!res.ok) return null;
    return res.json();
  } catch {
    return null;
  }
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [loading, setLoading] = useState(true);

  const refreshUser = async () => {
    const u = await fetchUser();
    setUser(u);
  };

  useEffect(() => {
    fetchUser().then(u => { setUser(u); setLoading(false); });
  }, []);

  const signIn = () => { window.location.href = "/api/login"; };

  const signOut = async () => {
    if (user?.authType === "email") {
      await fetch("/api/auth/email-signout", { method: "POST", credentials: "include" });
      setUser(null);
    } else {
      window.location.href = "/api/logout";
    }
  };

  const emailSignIn = async (email: string, password: string) => {
    try {
      const res = await fetch("/api/auth/email-signin", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email, password }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "فشل تسجيل الدخول" };
      setUser({ ...data, authType: "email" });
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const emailSignUp = async (email: string, password: string, name: string) => {
    try {
      const res = await fetch("/api/auth/email-signup", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ email, password, name }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "فشل إنشاء الحساب" };
      setUser({ ...data, authType: "email" });
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const updateProfile = async (data: { displayName?: string; username?: string; profileImageCustom?: string | null }) => {
    try {
      const res = await fetch("/api/auth/profile", {
        method: "PATCH",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      });
      const body = await res.json();
      if (!res.ok) return { error: body.error || "فشل تحديث الملف" };
      setUser(prev => prev ? { ...prev, ...body, authType: prev.authType } : body);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  return (
    <AuthContext.Provider value={{ user, loading, signIn, signOut, emailSignIn, emailSignUp, updateProfile, refreshUser }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);
