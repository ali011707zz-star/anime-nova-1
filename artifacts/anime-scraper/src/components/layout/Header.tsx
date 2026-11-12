import { useLocation } from "wouter";
import { Menu, Search, Download } from "lucide-react";

interface HeaderProps {
  onMenuClick: () => void;
}

export function Header({ onMenuClick }: HeaderProps) {
  const [location, navigate] = useLocation();

  if (location.startsWith("/watch")) return null;

  return (
    <header
      className="sticky top-0 z-50 w-full backdrop-blur-xl border-b"
      style={{
        backgroundColor: "var(--bg-base, #090A0C)",
        borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
      }}
    >
      <a
        href="https://t.me/Anime_NOVA_0"
        target="_blank"
        rel="noreferrer"
        dir="rtl"
        className="flex min-h-7 items-center justify-center gap-1.5 border-b border-cyan-500/15 bg-cyan-500/[0.08] px-3 py-1 text-center text-[11px] font-bold font-['Cairo'] text-cyan-300 transition-colors hover:bg-cyan-500/[0.14]"
      >
        <span aria-hidden="true">✈</span>
        <span>تابع أخبار وتحديثات Anime NOVA وانضم لقناتنا الرسمية على تيليجرام</span>
      </a>

      {/* Unified Mobile Header Layout: Left Menu button | Right Search Pill + | ANIME NOVA */}
      <div className="px-3.5 py-2.5 flex items-center justify-between gap-2.5 max-w-7xl mx-auto" dir="ltr">
        {/* Menu Button (Matches mobile menuBtn: 42x42 rounded-[13px]) */}
        <button
          onClick={onMenuClick}
          aria-label="القائمة الجانبية"
          className="w-[42px] h-[42px] rounded-[13px] flex items-center justify-center shrink-0 transition-transform active:scale-95"
          style={{
            backgroundColor: "var(--bg-surface, #111317)",
            border: "1px solid var(--border-subtle, rgba(255,255,255,0.08))",
            color: "var(--text-main, #F3F4F6)",
          }}
        >
          <Menu className="w-[21px] h-[21px]" />
        </button>

        {/* App Download Page Quick Button */}
        <button
          onClick={() => navigate("/download")}
          className="h-[38px] px-3 rounded-[13px] bg-[#FF6B00] text-white text-[11px] font-black font-[Cairo] flex items-center gap-1.5 shrink-0 shadow-sm active:scale-95 transition-transform"
        >
          <Download className="w-3.5 h-3.5" />
          <span>التطبيق</span>
        </button>

        {/* Right Group: Compact Search Trigger + Brand Logo */}
        <div className="flex items-center gap-2.5 flex-1 justify-end">
          <button
            onClick={() => navigate("/search")}
            aria-label="البحث"
            className="flex-1 max-w-[165px] sm:max-w-[260px] h-[38px] rounded-[13px] px-3 flex items-center justify-between gap-1.5 transition-transform active:scale-95"
            style={{
              backgroundColor: "var(--bg-surface, #111317)",
              border: "1px solid var(--border-subtle, rgba(255,255,255,0.08))",
            }}
          >
            <span
              className="text-[12px] font-semibold font-['Cairo'] truncate"
              style={{ color: "var(--text-muted, #94A3B8)" }}
            >
              ...بحث
            </span>
            <Search
              className="w-[15px] h-[15px] shrink-0"
              style={{ color: "var(--text-muted, #94A3B8)" }}
            />
          </button>

          <button
            onClick={() => navigate("/")}
            className="flex items-center gap-[5px] shrink-0 active:opacity-80 transition-opacity"
          >
            <span
              className="text-[17px] font-extrabold tracking-[0.5px] font-['Cairo']"
              style={{ color: "var(--text-main, #F3F4F6)" }}
            >
              ANIME
            </span>
            <span
              className="text-[17px] font-extrabold tracking-[1px] font-['Cairo']"
              style={{ color: "var(--accent-home, #06b6d4)" }}
            >
              NOVA
            </span>
            <div
              className="w-[3px] h-[22px] rounded-full ml-1"
              style={{ backgroundColor: "var(--accent-home, #06b6d4)" }}
            />
          </button>
        </div>
      </div>
    </header>
  );
}
