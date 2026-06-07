import { Link, useLocation } from "wouter";
import { Home, Search, Film, Heart, History } from "lucide-react";
import { motion } from "framer-motion";

const navItems = [
  { icon: Home,    label: "الرئيسية", href: "/" },
  { icon: Heart,   label: "قائمتي",   href: "/library" },
  { icon: Film,    label: "أنيميشن",  href: "/animations" },
  { icon: History, label: "السجل",    href: "/history" },
  { icon: Search,  label: "بحث",      href: "/search" },
];

const HIDE_ON = ["/watch", "/animation/watch"];

export function BottomNav() {
  const [location] = useLocation();
  if (HIDE_ON.some(p => location.startsWith(p))) return null;

  return (
    <nav className="fixed bottom-0 left-0 right-0 z-50 pb-safe">
      <div className="mx-2 mb-2 flex items-center justify-around bg-[#0e0e14]/98 backdrop-blur-2xl border border-white/[0.07] rounded-[22px] px-0.5 py-1.5 shadow-2xl shadow-black/70">
        {navItems.map((item) => {
          const isActive = item.href === "/"
            ? (location === "/" || location === "")
            : location.startsWith(item.href);
          const Icon = item.icon;
          return (
            <Link key={item.href} href={item.href}
              className="relative flex flex-col items-center justify-center px-3 py-0.5 min-w-[44px]"
            >
              {isActive && (
                <motion.div
                  layoutId="nav-pill"
                  className="absolute inset-0 rounded-[16px]"
                  style={{ background: "linear-gradient(135deg,rgba(139,92,246,0.18),rgba(109,40,217,0.12))", border: "1px solid rgba(139,92,246,0.22)" }}
                  transition={{ type: "spring", stiffness: 420, damping: 34 }}
                />
              )}
              <div className="relative z-10">
                <Icon
                  className={`transition-all duration-200 w-[14px] h-[14px]
                    ${isActive ? "text-violet-400" : "text-white/28"}`}
                  strokeWidth={isActive ? 2.5 : 1.8}
                />
                {isActive && (
                  <motion.div
                    layoutId="nav-glow"
                    className="absolute -inset-1 rounded-full blur-md"
                    style={{ background: "rgba(139,92,246,0.30)" }}
                    transition={{ type: "spring", stiffness: 420, damping: 34 }}
                  />
                )}
              </div>
              <span className={`relative z-10 mt-0.5 text-[7.5px] font-black transition-colors font-['Cairo']
                ${isActive ? "text-violet-400" : "text-white/22"}`}>
                {item.label}
              </span>
            </Link>
          );
        })}
      </div>
    </nav>
  );
}
