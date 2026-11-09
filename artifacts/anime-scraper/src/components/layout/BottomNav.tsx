import { Link, useLocation } from "wouter";
import { Home, Compass, Tv, BookOpen, Bookmark } from "lucide-react";

const navItems = [
  { icon: Home,     label: "الرئيسية",  href: "/" },
  { icon: Compass,  label: "تصفح",      href: "/browse" },
  { icon: Tv,       label: "مدبلج",     href: "/aw-dubbed" },
  { icon: BookOpen, label: "المانجا",   href: "/manga" },
  { icon: Bookmark, label: "قائمتي",    href: "/library" },
];

const HIDE_ON = ["/watch", "/comments", "/dubbed/watch", "/aw-dubbed/watch", "/stardima/watch"];

export function BottomNav() {
  const [location] = useLocation();
  if (HIDE_ON.some((p) => location.startsWith(p))) return null;

  return (
    <nav
      className="fixed bottom-0 left-0 right-0 z-50 border-t pb-safe backdrop-blur-xl"
      style={{
        backgroundColor: "var(--bg-base, #090A0C)",
        borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
      }}
      dir="rtl"
    >
      <div className="max-w-7xl mx-auto h-[58px] grid grid-cols-5 items-center px-1">
        {navItems.map((item) => {
          const isActive =
            item.href === "/"
              ? location === "/" || location === ""
              : item.href === "/aw-dubbed"
                ? location.startsWith("/aw-dubbed") || location.startsWith("/dubbed") || location.startsWith("/stardima")
                : item.href === "/browse"
                  ? location.startsWith("/browse") || location.startsWith("/search")
                  : location.startsWith(item.href);
          const Icon = item.icon;
          const activeColor = item.href === "/" ? "var(--accent-home, #06b6d4)" : "var(--accent-primary, #7654C8)";

          return (
            <Link
              key={item.href}
              href={item.href}
              className="relative flex flex-col items-center justify-center h-full select-none"
            >
              {isActive && (
                <span
                  className="absolute top-0 w-7 h-[2.5px] rounded-full"
                  style={{ backgroundColor: activeColor }}
                />
              )}
              <Icon
                className="w-[21px] h-[21px] transition-transform duration-150"
                style={{
                  color: isActive ? activeColor : "var(--text-muted, #94A3B8)",
                }}
                strokeWidth={isActive ? 2.4 : 1.9}
              />
              <span
                className="mt-1 text-[10px] font-bold font-['Cairo'] leading-none whitespace-nowrap"
                style={{
                  color: isActive ? activeColor : "var(--text-muted, #94A3B8)",
                }}
              >
                {item.label}
              </span>
            </Link>
          );
        })}
      </div>
    </nav>
  );
}
