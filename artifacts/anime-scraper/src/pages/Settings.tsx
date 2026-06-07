import { useState } from "react";
import {
  Globe, Bell, BellOff, Home, Monitor, ChevronRight,
  Check, Tv, Layers, Info, Shield, Star, LogIn, LogOut, User,
  Smartphone, List, LayoutGrid, Volume2, Download, Trash2,
  ChevronLeft, Settings as SettingsIcon,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { Link } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { AuthModal } from "@/pages/Auth";

/* ──────────────── Theme definitions ──────────────── */
const THEMES = [
  { id: "dark",   label: "داكن",           color: "#3F3F46", bg: "#09090B" },
  { id: "amoled", label: "AMOLED",         color: "#ffffff", bg: "#000000" },
  { id: "violet", label: "بنفسجي",         color: "#8B5CF6", bg: "#0B0814" },
  { id: "blue",   label: "أزرق",           color: "#3B82F6", bg: "#0B1120" },
  { id: "pink",   label: "وردي",           color: "#EC4899", bg: "#130811" },
];

function applyTheme(t: string) {
  const root = document.documentElement;
  root.setAttribute("data-theme", t);
  const map: Record<string, [string, string]> = {
    amoled: ["#000000", "#0A0A0A"],
    violet: ["#0B0814", "#130F1E"],
    blue:   ["#0B1120", "#0F1829"],
    pink:   ["#130811", "#1A0E15"],
  };
  const [base, card] = map[t] ?? ["#09090B", "#111116"];
  root.style.setProperty("--bg-base", base);
  root.style.setProperty("--bg-card", card);
}

/* ──────────────── Toggle switch ──────────────── */
function Toggle({ on, onChange }: { on: boolean; onChange: (v: boolean) => void }) {
  return (
    <motion.button
      onClick={() => onChange(!on)}
      className={`relative shrink-0 rounded-full transition-colors duration-200 ${on ? "bg-primary" : "bg-white/15"}`}
      style={{ width: 46, height: 26 }}
    >
      <motion.div
        animate={{ x: on ? 21 : 2 }}
        transition={{ type: "spring", stiffness: 500, damping: 30 }}
        className="absolute top-[3px] w-5 h-5 bg-white rounded-full shadow-md"
      />
    </motion.button>
  );
}

/* ──────────────── Section header ──────────────── */
function SectionHeader({ title }: { title: string }) {
  return (
    <div className="px-5 pt-7 pb-3">
      <div className="flex items-center gap-2.5">
        <div className="h-px flex-1 bg-white/6" />
        <span className="text-[10px] font-black text-white/30 tracking-[0.15em] uppercase font-['Cairo']">{title}</span>
        <div className="h-px flex-1 bg-white/6" />
      </div>
    </div>
  );
}

/* ──────────────── Row item ──────────────── */
function SettingItem({
  icon: Icon, iconColor = "text-primary", iconBg = "bg-primary/12",
  label, sub, children, onClick, danger = false
}: {
  icon: any; iconColor?: string; iconBg?: string;
  label: string; sub?: string;
  children?: React.ReactNode;
  onClick?: () => void;
  danger?: boolean;
}) {
  const inner = (
    <>
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} ${danger ? "border-red-500/20" : "border-white/8"}`}>
        <Icon className={`w-4 h-4 ${danger ? "text-red-400" : iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className={`text-[13.5px] font-bold font-['Cairo'] leading-tight ${danger ? "text-red-400" : "text-white/85"}`}>{label}</p>
        {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5 leading-tight">{sub}</p>}
      </div>
      {children}
    </>
  );
  return (
    <div
      onClick={onClick}
      role={onClick ? "button" : undefined}
      className={`flex items-center gap-3.5 px-5 py-3.5 transition-all select-none ${onClick ? "active:scale-[0.98] hover:bg-white/3 cursor-pointer" : ""}`}
    >
      {inner}
    </div>
  );
}

/* ──────────────── Card container ──────────────── */
function Card({ children }: { children: React.ReactNode }) {
  return (
    <div className="mx-4 bg-[#111116] border border-white/[0.06] rounded-2xl overflow-hidden divide-y divide-white/[0.05]">
      {children}
    </div>
  );
}

/* ──────────────── Radio group ──────────────── */
function RadioRow({ options, value, onChange }: {
  options: { id: string; label: string; icon?: any }[];
  value: string;
  onChange: (v: string) => void;
}) {
  return (
    <div className="flex gap-2 px-5 pb-4">
      {options.map(opt => {
        const active = value === opt.id;
        const Icon = opt.icon;
        return (
          <button key={opt.id} onClick={() => onChange(opt.id)}
            className={`flex-1 flex items-center gap-2 px-3.5 py-2.5 rounded-xl border transition-all active:scale-95 ${
              active ? "bg-primary/15 border-primary/35" : "bg-white/3 border-white/8"
            }`}>
            {Icon && <Icon className={`w-3.5 h-3.5 shrink-0 ${active ? "text-primary" : "text-white/25"}`} />}
            <span className={`text-[11.5px] font-black font-['Cairo'] ${active ? "text-primary" : "text-white/40"}`}>{opt.label}</span>
            {active && <div className="w-1.5 h-1.5 rounded-full bg-primary mr-auto shrink-0" />}
          </button>
        );
      })}
    </div>
  );
}

/* ══════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════ */
export default function Settings() {
  const { user, signOut } = useAuth();
  const [showAuth, setShowAuth] = useState(false);

  const [theme,     setTheme]     = useState(() => localStorage.getItem("pref-theme")     || "dark");
  const [notifs,    setNotifs]    = useState(() => localStorage.getItem("pref-notifs")    !== "false");
  const [autoMark,  setAutoMark]  = useState(() => localStorage.getItem("pref-automark") !== "false");
  const [startPage, setStartPage] = useState(() => localStorage.getItem("pref-startpage") || "home");
  const [lang,      setLang]      = useState(() => localStorage.getItem("pref-lang")      || "ar");
  const [viewMode,  setViewMode]  = useState(() => localStorage.getItem("pref-viewmode")  || "grid");
  const [player,    setPlayer]    = useState(() => localStorage.getItem("pref-player")    || "native");

  const setT  = (t: string) => { setTheme(t);     localStorage.setItem("pref-theme",     t); applyTheme(t); };
  const setN  = (v: boolean) => { setNotifs(v);   localStorage.setItem("pref-notifs",    String(v)); };
  const setAM = (v: boolean) => { setAutoMark(v); localStorage.setItem("pref-automark",  String(v)); };
  const setSP = (v: string)  => { setStartPage(v);localStorage.setItem("pref-startpage", v); };
  const setL  = (v: string)  => { setLang(v);     localStorage.setItem("pref-lang",      v); };
  const setVM = (v: string)  => { setViewMode(v); localStorage.setItem("pref-viewmode",  v); };
  const setP  = (v: string)  => { setPlayer(v);   localStorage.setItem("pref-player",    v); };

  const histCount = (() => {
    try {
      const a = JSON.parse(localStorage.getItem("watch-history")      || "[]").length;
      const b = JSON.parse(localStorage.getItem("anim-watch-history") || "[]").length;
      return a + b;
    } catch { return 0; }
  })();
  const savedCount = (() => {
    try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; }
  })();

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-32" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 py-3.5 flex items-center gap-3">
        <Link href="/">
          <button className="w-9 h-9 bg-white/5 border border-white/8 rounded-xl flex items-center justify-center active:scale-90 transition-transform">
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <div className="flex items-center gap-2 flex-1">
          <SettingsIcon className="w-4.5 h-4.5 text-white/40" />
          <h1 className="text-[17px] font-black font-['Cairo']">الإعدادات</h1>
        </div>
        <div className="flex items-center gap-1.5 bg-white/4 border border-white/8 rounded-xl px-2.5 py-1.5">
          <div className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span className="text-[9px] text-white/30 font-['Cairo'] font-bold">Nova v2.1</span>
        </div>
      </div>

      {/* ── Profile / Account card ── */}
      <div className="mx-4 mt-5">
        {user ? (
          <div className="flex items-center gap-3.5 bg-[#111116] border border-white/8 rounded-2xl p-4">
            <div className="w-12 h-12 rounded-xl bg-primary/25 border border-primary/30 flex items-center justify-center text-primary font-black text-xl shrink-0">
              {user.email?.[0]?.toUpperCase() ?? "؟"}
            </div>
            <div className="flex-1 min-w-0">
              <p className="text-[13px] font-black text-white/90 font-['Cairo'] truncate">{user.email}</p>
              <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">مشترك · مجاني</p>
            </div>
            <button onClick={() => signOut()}
              className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-red-500/10 border border-red-500/15 text-red-400 active:scale-95 transition-transform">
              <LogOut className="w-3.5 h-3.5" />
              <span className="text-[11px] font-black font-['Cairo']">خروج</span>
            </button>
          </div>
        ) : (
          <button onClick={() => setShowAuth(true)}
            className="w-full flex items-center gap-3.5 bg-[#111116] border border-white/8 rounded-2xl p-4 active:scale-[0.98] transition-transform">
            <div className="w-12 h-12 rounded-xl bg-white/5 border border-white/10 flex items-center justify-center shrink-0">
              <User className="w-5 h-5 text-white/30" />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13px] font-black text-white/75 font-['Cairo']">تسجيل الدخول / إنشاء حساب</p>
              <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">احفظ قائمتك وتاريخك عبر الأجهزة</p>
            </div>
            <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
          </button>
        )}
      </div>

      {/* ── Stats row ── */}
      <div className="mx-4 mt-3 flex gap-3">
        {[
          { label: "مشاهدة",  val: histCount,  color: "text-violet-400" },
          { label: "محفوظة",  val: savedCount, color: "text-pink-400" },
          { label: "مجاني",   val: "∞",        color: "text-emerald-400" },
        ].map(s => (
          <div key={s.label} className="flex-1 flex flex-col items-center gap-1 bg-white/3 border border-white/6 rounded-xl py-2.5">
            <span className={`text-lg font-black ${s.color}`}>{s.val}</span>
            <span className="text-[9px] text-white/30 font-['Cairo'] font-bold">{s.label}</span>
          </div>
        ))}
      </div>

      {/* ══════ عام ══════ */}
      <SectionHeader title="عام" />
      <Card>

        {/* Language */}
        <div className="px-5 py-4">
          <div className="flex items-center gap-3.5">
            <div className="w-9 h-9 rounded-xl bg-cyan-500/10 border border-white/8 flex items-center justify-center shrink-0">
              <Globe className="w-4 h-4 text-cyan-400" />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13.5px] font-bold text-white/85 font-['Cairo']">لغة التطبيق</p>
            </div>
          </div>
          <div className="flex gap-2 mt-3">
            {[{ id: "ar", label: "العربية 🇸🇦" }, { id: "en", label: "English 🇺🇸" }].map(l => (
              <button key={l.id} onClick={() => setL(l.id)}
                className={`flex-1 py-2 rounded-xl border text-[11.5px] font-black font-['Cairo'] transition-all active:scale-95 ${
                  lang === l.id ? "bg-primary/15 border-primary/35 text-primary" : "bg-white/3 border-white/8 text-white/40"
                }`}>
                {l.label}
              </button>
            ))}
          </div>
        </div>

        {/* Notifications */}
        <SettingItem
          icon={notifs ? Bell : BellOff}
          iconColor={notifs ? "text-amber-400" : "text-white/30"}
          iconBg={notifs ? "bg-amber-500/10" : "bg-white/5"}
          label="الإشعارات"
          sub="تفعيل وتعطيل إشعارات الحلقات الجديدة"
          onClick={() => setN(!notifs)}
        >
          <Toggle on={notifs} onChange={setN} />
        </SettingItem>

        {/* Auto-mark watched */}
        <SettingItem
          icon={Check}
          iconColor="text-emerald-400"
          iconBg="bg-emerald-500/10"
          label="تأشير تلقائي للمشاهدات"
          sub="تحديد الحلقات كمشاهَدة تلقائياً"
          onClick={() => setAM(!autoMark)}
        >
          <Toggle on={autoMark} onChange={setAM} />
        </SettingItem>

        {/* Start page */}
        <div>
          <SettingItem icon={Home} iconColor="text-blue-400" iconBg="bg-blue-500/10" label="صفحة البداية" sub="الصفحة التي تظهر عند فتح التطبيق" />
          <RadioRow
            value={startPage}
            onChange={setSP}
            options={[
              { id: "home",   label: "الرئيسية" },
              { id: "browse", label: "تصفح" },
            ]}
          />
        </div>

      </Card>

      {/* ══════ المظهر ══════ */}
      <SectionHeader title="المظهر" />
      <Card>

        {/* Theme color circles */}
        <div className="px-5 py-4">
          <div className="flex items-center gap-3 mb-4">
            <div className="w-9 h-9 rounded-xl bg-violet-500/10 border border-white/8 flex items-center justify-center shrink-0">
              <span className="text-[15px]">🎨</span>
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13.5px] font-bold text-white/85 font-['Cairo']">الوضع الليلي</p>
              <p className="text-[10px] text-white/30 font-['Cairo']">اختر لون ثيم التطبيق</p>
            </div>
          </div>

          {/* Large color circles in a row */}
          <div className="flex items-center justify-between gap-2">
            {THEMES.map(t => {
              const active = theme === t.id;
              return (
                <motion.button key={t.id} whileTap={{ scale: 0.88 }} onClick={() => setT(t.id)}
                  className="flex flex-col items-center gap-2">
                  <div
                    className={`relative transition-all duration-200 rounded-full border-2 flex items-center justify-center ${
                      active ? "border-white/70 scale-110 shadow-lg" : "border-white/15"
                    }`}
                    style={{ width: 42, height: 42, background: t.color }}>
                    {active && (
                      <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }}
                        className="w-4 h-4 bg-white rounded-full shadow-md flex items-center justify-center">
                        <Check className="w-2.5 h-2.5 text-gray-800" strokeWidth={3} />
                      </motion.div>
                    )}
                  </div>
                  <span className={`text-[9px] font-black font-['Cairo'] ${active ? "text-white/80" : "text-white/30"}`}>
                    {t.label}
                  </span>
                </motion.button>
              );
            })}
          </div>
        </div>

        {/* View mode */}
        <div>
          <SettingItem icon={viewMode === "grid" ? LayoutGrid : List}
            iconColor="text-indigo-400" iconBg="bg-indigo-500/10"
            label="وضع عرض القائمة" sub="طريقة عرض قوائم الأنمي" />
          <RadioRow
            value={viewMode}
            onChange={setVM}
            options={[
              { id: "grid", label: "شبكة", icon: LayoutGrid },
              { id: "list", label: "قائمة", icon: List },
            ]}
          />
        </div>

      </Card>

      {/* ══════ المشغّل ══════ */}
      <SectionHeader title="المشغّل" />
      <Card>
        <div>
          <SettingItem icon={Tv} iconColor="text-rose-400" iconBg="bg-rose-500/10"
            label="نوع المشغّل الافتراضي" sub="طريقة تشغيل الحلقات" />
          <RadioRow
            value={player}
            onChange={setP}
            options={[
              { id: "native", label: "مشغّل داخلي", icon: Monitor },
              { id: "iframe", label: "مشغّل المواقع", icon: Layers },
            ]}
          />
        </div>
      </Card>

      {/* ══════ عن التطبيق ══════ */}
      <SectionHeader title="عن التطبيق" />
      <Card>
        <SettingItem icon={Shield} iconColor="text-teal-400" iconBg="bg-teal-500/10"
          label="الخصوصية والبيانات" sub="لا نجمع أي بيانات شخصية · مفتوح المصدر" />
        <SettingItem icon={Smartphone} iconColor="text-violet-400" iconBg="bg-violet-500/10"
          label="الإصدار الحالي" sub="Nova Anime">
          <div className="text-right shrink-0">
            <span className="text-[11px] font-black text-primary font-['Cairo']">v2.1.0</span>
          </div>
        </SettingItem>
        <SettingItem icon={Info} iconColor="text-white/30" iconBg="bg-white/5"
          label="10+ مصادر أنمي" sub="شاهيد · أنميليك · أنيمي دار · كاواي · وأكثر" />
      </Card>

      {/* ══════ البيانات ══════ */}
      <SectionHeader title="البيانات" />
      <Card>
        <SettingItem
          icon={Trash2} danger
          label="مسح سجل المشاهدة"
          sub={`${histCount} حلقة مشاهَدة`}
          onClick={() => {
            if (confirm("هل تريد مسح سجل المشاهدة كاملاً؟ لا يمكن التراجع.")) {
              localStorage.removeItem("watch-history");
              localStorage.removeItem("anim-watch-history");
              window.location.reload();
            }
          }}
        >
          <ChevronLeft className="w-4 h-4 text-red-400/40 shrink-0" />
        </SettingItem>
        <SettingItem
          icon={Trash2} danger
          iconColor="text-orange-400" iconBg="bg-orange-500/10"
          label="مسح الكاش والإعدادات"
          sub="يعيد التطبيق للحالة الأولية"
          onClick={() => {
            if (confirm("سيتم مسح جميع البيانات والإعدادات. تأكد؟")) {
              localStorage.clear();
              window.location.reload();
            }
          }}
        >
          <ChevronLeft className="w-4 h-4 text-orange-400/40 shrink-0" />
        </SettingItem>
      </Card>

      {/* Footer */}
      <div className="text-center pt-8 pb-4 px-6">
        <div className="inline-flex items-center gap-1.5 mb-2">
          <span className="text-[14px] font-black text-white/60">ANIME</span>
          <span className="text-[14px] font-black"
            style={{ background: "linear-gradient(135deg,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>
            NOVA
          </span>
        </div>
        <p className="text-[9px] text-white/18 font-['Cairo']">جميع الحقوق محفوظة · 2025 · مجاني للجميع</p>
      </div>

      <AnimatePresence>
        {showAuth && <AuthModal onClose={() => setShowAuth(false)} />}
      </AnimatePresence>
    </main>
  );
}
