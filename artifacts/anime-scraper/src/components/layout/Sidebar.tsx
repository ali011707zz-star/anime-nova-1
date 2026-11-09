import { motion, AnimatePresence } from "framer-motion";
import { useLocation } from "wouter";
import {
  X,
  Home,
  Flame,
  Search,
  Compass,
  Calendar,
  BookOpen,
  BarChart2,
  Clock,
  Tv,
  Heart,
  History,
  Settings,
  ChevronLeft,
  User,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";

interface SidebarProps {
  open: boolean;
  onClose: () => void;
}

interface NavItem {
  icon: any;
  label: string;
  route: string;
  color: string;
  badge?: number;
}

const MAIN_ITEMS: NavItem[] = [
  { icon: Home,      label: "الرئيسية",              route: "/",                        color: "#8B5CF6" },
  { icon: Flame,     label: "أحدث الحلقات",          route: "/latest",                  color: "#f97316" },
  { icon: Search,    label: "البحث",                 route: "/search",                  color: "#6366f1" },
  { icon: Compass,   label: "تصفح الأنمي",           route: "/browse",                  color: "#3b82f6" },
  { icon: Calendar,  label: "المواسم",               route: "/seasons",                 color: "#f59e0b" },
  { icon: BookOpen,  label: "المانجا",               route: "/manga",                   color: "#10b981" },
  { icon: BarChart2, label: "الإحصائيات العالمية",   route: "/stats",                   color: "#0ea5e9" },
  { icon: Clock,     label: "قادم قريباً",            route: "/upcoming",                color: "#ec4899" },
  { icon: Tv,        label: "كرتون مدبلج ومترجم",    route: "/aw-dubbed?tab=cartoon",   color: "#10b981" },
  { icon: Calendar,  label: "جدول البث الأسبوعي",    route: "/schedule",                color: "#10b981" },
];

export function Sidebar({ open, onClose }: SidebarProps) {
  const [location, navigate] = useLocation();
  const { user } = useAuth();

  const watchCount = (() => {
    try {
      const a = JSON.parse(localStorage.getItem("watch-history") || "[]").length;
      const b = JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length;
      return a + b;
    } catch {
      return 0;
    }
  })();

  const favCount = (() => {
    try {
      return JSON.parse(localStorage.getItem("savedAnime") || "[]").length;
    } catch {
      return 0;
    }
  })();

  const go = (href: string) => {
    onClose();
    navigate(href);
  };

  const isActive = (route: string) => {
    const cleanRoute = route.split("?")[0];
    if (cleanRoute === "/") return location === "/" || location === "";
    return location.startsWith(cleanRoute);
  };

  const renderItem = (item: NavItem) => {
    const Icon = item.icon;
    const active = isActive(item.route);
    return (
      <button
        key={item.route + item.label}
        onClick={() => go(item.route)}
        className="w-full flex items-center justify-between px-3.5 py-2.5 rounded-xl transition-all active:scale-[0.98]"
        style={{
          backgroundColor: active ? `${item.color}16` : "transparent",
        }}
      >
        <div className="flex items-center gap-3 min-w-0">
          <div
            className="w-[34px] h-[34px] rounded-[10px] flex items-center justify-center shrink-0"
            style={{ backgroundColor: `${item.color}18` }}
          >
            <Icon className="w-[18px] h-[18px]" style={{ color: item.color }} />
          </div>
          <span
            className="text-[14px] font-semibold font-['Cairo'] truncate"
            style={{ color: "var(--text-main, #F3F4F6)" }}
          >
            {item.label}
          </span>
        </div>

        <div className="flex items-center gap-1.5 shrink-0">
          {item.badge != null && item.badge > 0 && (
            <span
              className="px-2 py-0.5 rounded-full text-[11px] font-bold font-['Cairo']"
              style={{
                backgroundColor: `${item.color}25`,
                color: item.color,
              }}
            >
              {item.badge}
            </span>
          )}
          <ChevronLeft
            className="w-4 h-4"
            style={{ color: "var(--text-muted, #94A3B8)" }}
          />
        </div>
      </button>
    );
  };

  return (
    <AnimatePresence>
      {open && (
        <>
          <motion.div
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/65 backdrop-blur-[2px] z-[200]"
          />

          <motion.aside
            initial={{ x: "100%" }}
            animate={{ x: 0 }}
            exit={{ x: "100%" }}
            transition={{ type: "spring", damping: 28, stiffness: 300 }}
            className="fixed top-0 right-0 bottom-0 w-[82%] max-w-[300px] z-[201] flex flex-col overflow-hidden border-l"
            style={{
              backgroundColor: "var(--bg-surface, #111317)",
              borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
            }}
            dir="rtl"
          >
            {/* Header matching mobile DrawerMenu.tsx */}
            <div
              className="flex items-center justify-between px-4 pt-5 pb-4 border-b shrink-0"
              style={{ borderColor: "var(--border-subtle, rgba(255,255,255,0.08))" }}
            >
              <div className="flex flex-col items-start">
                <div className="flex items-center gap-1.5" dir="ltr">
                  <div className="w-1 h-7 rounded-sm bg-[#06b6d4] mr-1" />
                  <span
                    className="text-[18px] font-bold tracking-[0.5px] font-['Cairo']"
                    style={{ color: "var(--text-main, #F3F4F6)" }}
                  >
                    ANIME
                  </span>
                  <span className="text-[18px] font-bold tracking-[1px] font-['Cairo'] text-[#06b6d4]">
                    NOVA
                  </span>
                </div>
                <span
                  className="text-[11px] font-['Cairo'] mt-0.5"
                  style={{ color: "var(--text-muted, #94A3B8)" }}
                >
                  منصة الأنمي العربية
                </span>
              </div>

              <button
                onClick={onClose}
                aria-label="إغلاق القائمة"
                className="w-[34px] h-[34px] rounded-[10px] flex items-center justify-center active:scale-90 transition-transform"
                style={{
                  backgroundColor: "var(--bg-card, #14171C)",
                  color: "var(--text-secondary, #CBD5E1)",
                }}
              >
                <X className="w-[18px] h-[18px]" />
              </button>
            </div>

            {/* User Card matching mobile DrawerMenu.tsx */}
            <button
              onClick={() => go(user ? "/profile" : "/auth")}
              className="mx-3.5 mt-3 mb-1 p-3 rounded-[14px] border flex items-center justify-between gap-2.5 text-right transition-transform active:scale-[0.98]"
              style={{
                backgroundColor: "var(--bg-card, #14171C)",
                borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
              }}
            >
              <div className="flex items-center gap-2.5 min-w-0">
                <div
                  className="w-[38px] h-[38px] rounded-full flex items-center justify-center shrink-0 overflow-hidden"
                  style={{
                    backgroundColor: user ? "#8B5CF6" : "var(--bg-elevated, #1B1F26)",
                  }}
                >
                  {user?.profileImageUrl ? (
                    <img src={user.profileImageUrl} alt="" className="w-full h-full object-cover" />
                  ) : user ? (
                    <span className="text-white font-bold text-base font-['Cairo']">
                      {(user.displayName || user.email || "U")[0].toUpperCase()}
                    </span>
                  ) : (
                    <User className="w-[18px] h-[18px]" style={{ color: "var(--text-muted, #94A3B8)" }} />
                  )}
                </div>
                <div className="min-w-0 text-right">
                  <p
                    className="text-[13px] font-bold font-['Cairo'] truncate"
                    style={{ color: "var(--text-main, #F3F4F6)" }}
                  >
                    {user ? user.displayName || user.email?.split("@")[0] : "زائر"}
                  </p>
                  <p
                    className="text-[11px] font-['Cairo'] truncate"
                    style={{ color: "var(--text-muted, #94A3B8)" }}
                  >
                    {user ? user.email || "اضغط لعرض الملف الشخصي" : "اضغط لتسجيل الدخول"}
                  </p>
                </div>
              </div>
              <ChevronLeft className="w-4 h-4 shrink-0" style={{ color: "var(--text-muted, #94A3B8)" }} />
            </button>

            {/* Navigation List matching mobile DrawerMenu.tsx */}
            <div className="flex-1 overflow-y-auto px-2.5 py-2 space-y-0.5" style={{ scrollbarWidth: "none" }}>
              {MAIN_ITEMS.map(renderItem)}

              <div
                className="h-px my-2.5 mx-3"
                style={{ backgroundColor: "var(--border-subtle, rgba(255,255,255,0.08))" }}
              />
              <p
                className="text-[11px] font-bold font-['Cairo'] px-3.5 pb-1"
                style={{ color: "var(--text-muted, #94A3B8)" }}
              >
                مكتبتي
              </p>
              {renderItem({
                icon: Heart,
                label: "المفضلة",
                route: "/library?tab=saved",
                color: "#f43f5e",
                badge: favCount,
              })}
              {renderItem({
                icon: History,
                label: "سجل المشاهدة",
                route: "/library?tab=history",
                color: "#f59e0b",
                badge: watchCount,
              })}

              <div
                className="h-px my-2.5 mx-3"
                style={{ backgroundColor: "var(--border-subtle, rgba(255,255,255,0.08))" }}
              />
              <p
                className="text-[11px] font-bold font-['Cairo'] px-3.5 pb-1"
                style={{ color: "var(--text-muted, #94A3B8)" }}
              >
                أخرى
              </p>
              {renderItem({
                icon: Settings,
                label: "الإعدادات",
                route: "/settings",
                color: "#64748b",
              })}
            </div>

            {/* Footer matching mobile DrawerMenu.tsx */}
            <div
              className="px-4 py-3.5 border-t text-center shrink-0"
              style={{ borderColor: "var(--border-subtle, rgba(255,255,255,0.08))" }}
            >
              <p
                className="text-[12px] font-bold font-['Cairo']"
                style={{ color: "var(--text-muted, #94A3B8)" }}
              >
                Anime NOVA v2.4
              </p>
              <p
                className="text-[11px] font-['Cairo'] mt-0.5 opacity-75"
                style={{ color: "var(--text-muted, #94A3B8)" }}
              >
                مجاني تماماً • 10+ مصادر بث
              </p>
            </div>
          </motion.aside>
        </>
      )}
    </AnimatePresence>
  );
}
