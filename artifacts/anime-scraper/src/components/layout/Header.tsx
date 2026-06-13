import { useLocation } from "wouter";
import { Bell, LogIn } from "lucide-react";
import { useAuth } from "@/lib/auth-context";

const AVATAR_COLORS: [string, string][] = [
  ["#7C3AED", "#4C1D95"],
  ["#2563EB", "#1E3A8A"],
  ["#DB2777", "#831843"],
  ["#059669", "#064E3B"],
  ["#D97706", "#78350F"],
  ["#DC2626", "#7F1D1D"],
  ["#0891B2", "#164E63"],
  ["#6D28D9", "#2E1065"],
];

interface HeaderProps {
  onMenuClick: () => void;
}

export function Header({ onMenuClick }: HeaderProps) {
  const [location, navigate] = useLocation();
  const { user } = useAuth();

  if (location.startsWith("/watch")) return null;

  const colorIdx = Math.min(user?.avatarColor ?? 0, 7);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const avatarLetter = (user?.displayName?.[0] ?? user?.email?.[0] ?? "N").toUpperCase();
  const avatarImg = user?.profileImageUrl;

  return (
    <header className="sticky top-0 z-50 w-full bg-[#09090B]/90 backdrop-blur-xl border-b border-white/[0.06] px-3 py-2 flex items-center justify-between" dir="rtl">
      {/* RIGHT: Menu + Logo */}
      <div className="flex items-center gap-2">
        <button
          onClick={onMenuClick}
          className="w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/70 hover:text-white transition-all active:scale-90"
        >
          <svg xmlns="http://www.w3.org/2000/svg" className="w-4 h-4" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
            <line x1="4" y1="6" x2="20" y2="6"/><line x1="4" y1="12" x2="20" y2="12"/><line x1="4" y1="18" x2="20" y2="18"/>
          </svg>
        </button>
        <div className="flex items-center gap-[4px]" dir="ltr">
          <span className="text-[16px] font-black tracking-tight text-white/90" style={{ fontFamily: "'Cairo',sans-serif", letterSpacing: "0.03em" }}>ANIME</span>
          <span className="text-[16px] font-black tracking-tight" style={{ fontFamily: "'Cairo',sans-serif", letterSpacing: "0.03em", background: "linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>NOVA</span>
        </div>
      </div>

      {/* LEFT: Bell + Profile */}
      <div className="flex items-center gap-1">
        <button className="relative w-8 h-8 flex items-center justify-center rounded-xl hover:bg-white/8 text-white/50 hover:text-white transition-all">
          <Bell className="w-4 h-4" />
          <span className="absolute top-1.5 right-1.5 w-1.5 h-1.5 bg-primary rounded-full" />
        </button>

        {user ? (
          <button
            onClick={() => navigate("/profile")}
            className="relative w-9 h-9 flex items-center justify-center rounded-2xl transition-all active:scale-90 hover:scale-105 group overflow-hidden"
            style={{
              background: avatarImg ? undefined : `linear-gradient(135deg,${g1},${g2})`,
              border: `1.5px solid ${g1}80`,
              boxShadow: `0 2px 12px ${g1}40`,
            }}
            title="الملف الشخصي"
          >
            {avatarImg ? (
              <img src={avatarImg} alt="" className="w-full h-full object-cover" />
            ) : (
              <span className="text-[13px] font-black text-white" style={{ textShadow: "0 1px 4px rgba(0,0,0,0.5)" }}>
                {avatarLetter}
              </span>
            )}
            <span className="absolute inset-0 rounded-2xl opacity-0 group-hover:opacity-100 transition-opacity"
              style={{ boxShadow: `0 0 16px ${g1}80` }} />
          </button>
        ) : (
          <button
            onClick={() => navigate("/auth")}
            className="flex items-center gap-1.5 px-3 h-8 rounded-2xl text-[11px] font-black font-['Cairo'] text-white/80 hover:text-white transition-all active:scale-95"
            style={{
              background: "linear-gradient(135deg, rgba(139,92,246,0.2), rgba(109,40,217,0.12))",
              border: "1px solid rgba(139,92,246,0.3)"
            }}
          >
            <LogIn className="w-3.5 h-3.5" />
            دخول
          </button>
        )}
      </div>
    </header>
  );
}
