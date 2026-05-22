import { Link, useLocation } from "wouter";
import { Home, Search, BookMarked, Compass, Settings2 } from "lucide-react";
import { motion } from "framer-motion";

const navItems = [
  { icon: Home,      label: "الرئيسية", href: "/" },
  { icon: Compass,   label: "تصفح",     href: "/browse" },
  { icon: Search,    label: "بحث",      href: "/search" },
  { icon: BookMarked,label: "مكتبتي",   href: "/library" },
  { icon: Settings2, label: "الإعدادات",href: "/settings" },
];

const HIDE_ON = ["/watch"];

export function BottomNav() {
  const [location] = useLocation();
  if (HIDE_ON.some(p => location.startsWith(p))) return null;

  return (
    <nav className="fixed bottom-0 left-0 right-0 z-50 pb-safe">
      <div className="mx-3 mb-3 flex items-center justify-around bg-[#111116]/96 backdrop-blur-2xl border border-white/[0.08] rounded-[26px] px-1 py-1.5 shadow-2xl shadow-black/60">
        {navItems.map((item) => {
          const isActive = item.href === "/"
            ? (location === "/" || location === "")
            : location.startsWith(item.href);
          const Icon = item.icon;
          return (
            <Link key={item.href} href={item.href}
              className="relative flex flex-col items-center justify-center px-3 py-1.5 min-w-[52px]"
            >
              {isActive && (
                <motion.div
                  layoutId="nav-pill"
                  className="absolute inset-0 bg-primary/15 rounded-2xl border border-primary/20"
                  transition={{ type: "spring", stiffness: 400, damping: 32 }}
                />
              )}
              <Icon
                className={`relative z-10 transition-all duration-200
                  ${isActive ? "text-primary scale-110 w-[20px] h-[20px]" : "text-white/30 w-[20px] h-[20px]"}`}
                strokeWidth={isActive ? 2.5 : 1.8}
              />
              <span className={`relative z-10 mt-0.5 text-[8.5px] font-black transition-colors font-['Cairo']
                ${isActive ? "text-primary" : "text-white/25"}`}>
                {item.label}
              </span>
            </Link>
          );
        })}
      </div>
    </nav>
  );
}
