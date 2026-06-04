import { createContext, useContext, type ReactNode } from "react";
import { useAuth as useReplitAuth, type AuthUser } from "@/hooks/use-auth";

interface AuthContextType {
  user: AuthUser | null;
  loading: boolean;
  signIn: () => void;
  signOut: () => void;
}

const AuthContext = createContext<AuthContextType>({
  user: null,
  loading: true,
  signIn: () => { window.location.href = "/api/login"; },
  signOut: () => { window.location.href = "/api/logout"; },
});

export function AuthProvider({ children }: { children: ReactNode }) {
  const { user, isLoading } = useReplitAuth();

  const signIn = () => { window.location.href = "/api/login"; };
  const signOut = () => { window.location.href = "/api/logout"; };

  return (
    <AuthContext.Provider value={{ user, loading: isLoading, signIn, signOut }}>
      {children}
    </AuthContext.Provider>
  );
}

export const useAuth = () => useContext(AuthContext);
