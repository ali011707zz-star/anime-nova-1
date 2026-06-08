import { useState } from "react";
import { useLocation } from "wouter";
import { Bell, Menu, User, LogOut, LogIn } from "lucide-react";
import { AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";
import { AuthModal } from "@/pages/Auth";

interface HeaderProps {
  onMenuClick: () => void;
}

export function Header({ onMenuClick }: HeaderProps) {
  const [location, navigate] = useLocation();
  const { user, signOut } = useAuth();
  const [showAuth, setShowAuth] = useState(false);
  const [showUserMenu, setShowUserMenu] = useState(false);

  if (location.startsWith("/watch")) return null;

  const avatarLetter = user?.email?.[0]?.toUpperCase() ?? "؟";

  return (
    <>
      <header className="sticky top-0 z-50 w-full bg-[#09090B]/90 backdrop-blur-xl border-b border-white/[0.06] px-3 py-2 flex items-center justify-between" dir="rtl">
        {/* RIGHT: Menu + Logo */}
        <div className="flex items-center gap-2">
          <button
            onClick={onMenuClick}
            className="w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/70 hover:text-white transition-all active:scale-90"
          >
            <Menu className="w-4 h-4" />
          </button>
          <div className="flex items-center gap-[4px]">
            <span className="text-[16px] font-black tracking-tight text-white/80" style={{ fontFamily: "'Cairo',sans-serif" }}>anime</span>
            <span className="text-[16px] font-black tracking-tight" style={{ fontFamily: "'Cairo',sans-serif", background: "linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>nova</span>
          </div>
        </div>

        {/* LEFT: Bell + User */}
        <div className="flex items-center gap-0.5">
          <button className="relative w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all">
            <Bell className="w-4 h-4" />
            <span className="absolute top-1.5 right-1.5 w-1.5 h-1.5 bg-primary rounded-full" />
          </button>
          {user ? (
            <div className="relative">
              <button
                onClick={() => setShowUserMenu(!showUserMenu)}
                className="w-8 h-8 flex items-center justify-center rounded-xl bg-primary/20 border border-primary/30 text-primary font-black text-xs transition-all hover:bg-primary/30"
              >
                {avatarLetter}
              </button>
              <AnimatePresence>
                {showUserMenu && (
                  <div className="absolute top-10 left-0 w-40 bg-[#111116] border border-white/10 rounded-xl shadow-2xl py-1 z-50" dir="rtl">
                    <div className="px-3 py-2 border-b border-white/6">
                      <p className="text-[9px] text-white/40 font-['Cairo'] truncate">{user.email}</p>
                    </div>
                    <button
                      onClick={() => { setShowUserMenu(false); navigate("/library"); }}
                      className="w-full flex items-center gap-2 px-3 py-2 text-[11px] text-white/70 hover:text-white hover:bg-white/5 font-['Cairo'] transition-colors"
                    >
                      <User className="w-3 h-3" /> مكتبتي
                    </button>
                    <button
                      onClick={() => { setShowUserMenu(false); signOut(); }}
                      className="w-full flex items-center gap-2 px-3 py-2 text-[11px] text-red-400 hover:bg-red-500/10 font-['Cairo'] transition-colors"
                    >
                      <LogOut className="w-3 h-3" /> تسجيل الخروج
                    </button>
                  </div>
                )}
              </AnimatePresence>
            </div>
          ) : (
            <button
              onClick={() => setShowAuth(true)}
              className="w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all"
            >
              <LogIn className="w-4 h-4" />
            </button>
          )}
        </div>
      </header>

      <AnimatePresence>
        {showAuth && <AuthModal onClose={() => setShowAuth(false)} />}
      </AnimatePresence>
    </>
  );
}
