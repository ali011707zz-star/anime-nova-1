import { useState, useEffect } from "react";

export interface AuthUser {
  id: string;
  email?: string | null;
  firstName?: string | null;
  lastName?: string | null;
  profileImageUrl?: string | null;
}

export function useAuth() {
  const [user, setUser] = useState<AuthUser | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    fetch("/api/auth/user", { credentials: "include" })
      .then(res => {
        if (res.status === 401) return null;
        if (!res.ok) throw new Error(res.statusText);
        return res.json() as Promise<AuthUser>;
      })
      .then(u => setUser(u))
      .catch(() => setUser(null))
      .finally(() => setIsLoading(false));
  }, []);

  return {
    user,
    isLoading,
    isAuthenticated: !!user,
  };
}
