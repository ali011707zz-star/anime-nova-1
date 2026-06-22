import { createContext, useContext, useState, useEffect, useCallback, type ReactNode } from "react";

export interface AuthUser {
  id: string;
  email?: string | null;
  displayName?: string | null;
  username?: string | null;
  avatarColor?: number;
  profileImageUrl?: string | null;
  authType?: "email";
  createdAt?: string | null;
}

interface AuthContextType {
  user: AuthUser | null;
  loading: boolean;
  signIn: (email: string, password: string) => Promise<{ error?: string }>;
  signUp: (email: string, password: string, displayName?: string, verifyCode?: string) => Promise<{ error?: string }>;
  signOut: () => Promise<void>;
  updateProfile: (data: {
    displayName?: string;
    username?: string;
    avatarColor?: number;
    profileImageCustom?: string | null;
  }) => Promise<{ error?: string }>;
  changePassword: (currentPassword: string, newPassword: string) => Promise<{ error?: string }>;
  deleteAccount: () => Promise<{ error?: string }>;
  refreshUser: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType>({
  user: null,
  loading: true,
  signIn: async () => ({}),
  signUp: async () => ({ }),
  signOut: async () => {},
  updateProfile: async () => ({}),
  changePassword: async () => ({}),
  deleteAccount: async () => ({}),
  refreshUser: async () => {},
});

async function fetchCurrentUser(): Promise<AuthUser | null> {
  try {
    const res = await fetch("/api/auth/me", { credentials: "include" });
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
    fetchCurrentUser().then(u => {
      setUser(u);
      setLoading(false);
    });
  }, []);

  const signIn = async (email: string, password: string) => {
    try {
      const res = await fetch("/api/auth/signin", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ email, password }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "حدث خطأ، حاول مرة أخرى" };
      setUser(data);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const signUp = async (email: string, password: string, displayName?: string, verifyCode?: string) => {
    try {
      const res = await fetch("/api/auth/signup", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ email, password, displayName, verifyCode }),
      });
      const data = await res.json();
      if (!res.ok) return { error: data.error || "حدث خطأ، حاول مرة أخرى" };
      setUser(data);
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  const signOut = async () => {
    try {
      await fetch("/api/auth/signout", { method: "POST", credentials: "include" });
    } catch {}
    setUser(null);
  };

  const updateProfile = async (data: {
    displayName?: string;
    username?: string;
    avatarColor?: number;
    profileImageCustom?: string | null;
  }) => {
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
      return {};
    } catch {
      return { error: "خطأ في الاتصال" };
    }
  };

  return (
    <AuthContext.Provider value={{
      user, loading, signIn, signUp, signOut,
      updateProfile, changePassword, deleteAccount, refreshUser,
    }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);
