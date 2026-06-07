import { useState, useRef, useEffect } from "react";
import {
  Bell, BellOff, Home, Monitor,
  Check, Tv, Layers, Info, Shield, Star, LogIn, LogOut, User,
  Smartphone, List, LayoutGrid, Trash2, ChevronLeft,
  Settings as SettingsIcon, Palette, ChevronDown, Zap, ChevronRight,
  Subtitles, PlayCircle, Award, BarChart3,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { Link } from "wouter";
import { useAuth } from "@/lib/auth-context";
import { AuthModal } from "@/pages/Auth";

/* ──────────────── Theme definitions ──────────────── */
const THEMES = [
  { id: "dark",   label: "داكن",    desc: "رمادي داكن",   dot: "#3F3F46", bg: "#09090B" },
  { id: "amoled", label: "AMOLED",  desc: "أسود حقيقي",   dot: "#ffffff", bg: "#000000" },
  { id: "violet", label: "بنفسجي",  desc: "توهّج بنفسجي", dot: "#a78bfa", bg: "#0B0814" },
  { id: "blue",   label: "أزرق",    desc: "توهّج أزرق",   dot: "#3b82f6", bg: "#0B1120" },
  { id: "pink",   label: "وردي",    desc: "توهّج وردي",   dot: "#ec4899", bg: "#130811" },
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

/* ──────────────── Custom Dropdown ──────────────── */
interface DropOption { id: string; label: string; icon?: string; }

function DropdownSelect({
  value, options, onChange, icon: Icon, iconColor = "text-primary", iconBg = "bg-primary/12",
  label, sub,
}: {
  value: string; options: DropOption[];
  onChange: (v: string) => void;
  icon: any; iconColor?: string; iconBg?: string;
  label: string; sub?: string;
}) {
  const [open, setOpen] = useState(false);
  const ref = useRef<HTMLDivElement>(null);
  const current = options.find(o => o.id === value);

  useEffect(() => {
    const handler = (e: MouseEvent) => {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false);
    };
    if (open) document.addEventListener("mousedown", handler);
    return () => document.removeEventListener("mousedown", handler);
  }, [open]);

  return (
    <div ref={ref} className="relative">
      <button
        onClick={() => setOpen(v => !v)}
        className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-white/3 active:scale-[0.99]"
      >
        <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
          <Icon className={`w-4 h-4 ${iconColor}`} />
        </div>
        <div className="flex-1 min-w-0 text-right">
          <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">{label}</p>
          {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">{sub}</p>}
        </div>
        <div className="flex items-center gap-2 shrink-0">
          <span className="text-[11px] font-bold text-white/40 font-['Cairo']">{current?.label}</span>
          <motion.div animate={{ rotate: open ? 180 : 0 }} transition={{ duration: 0.2 }}>
            <ChevronDown className="w-3.5 h-3.5 text-white/25" />
          </motion.div>
        </div>
      </button>

      <AnimatePresence>
        {open && (
          <motion.div
            initial={{ opacity: 0, y: -6, scaleY: 0.92 }}
            animate={{ opacity: 1, y: 0, scaleY: 1 }}
            exit={{ opacity: 0, y: -6, scaleY: 0.92 }}
            transition={{ duration: 0.18, ease: [0.22, 1, 0.36, 1] }}
            style={{ transformOrigin: "top", background: "rgba(10,10,20,0.98)", border: "1px solid rgba(139,92,246,0.20)", backdropFilter: "blur(40px)", boxShadow: "0 20px 60px rgba(0,0,0,0.80)" }}
            className="absolute left-4 right-4 z-50 rounded-2xl overflow-hidden"
          >
            <div className="rounded-2xl overflow-hidden">
              {options.map((opt, i) => {
                const active = value === opt.id;
                return (
                  <button key={opt.id} onClick={() => { onChange(opt.id); setOpen(false); }}
                    className="w-full flex items-center gap-3 px-4 py-3 transition-all active:bg-white/5 text-right"
                    style={{
                      background: active ? "rgba(139,92,246,0.14)" : "transparent",
                      borderBottom: i < options.length - 1 ? "1px solid rgba(255,255,255,0.05)" : "none",
                    }}>
                    {opt.icon && <span className="text-base shrink-0">{opt.icon}</span>}
                    <span className="flex-1 text-[13px] font-bold font-['Cairo']"
                      style={{ color: active ? "#e2d9fc" : "rgba(255,255,255,0.70)" }}>
                      {opt.label}
                    </span>
                    {active && (
                      <div className="w-2 h-2 rounded-full shrink-0"
                        style={{ background: "#a78bfa", boxShadow: "0 0 6px rgba(167,139,250,0.70)" }} />
                    )}
                  </button>
                );
              })}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
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
function SectionHeader({ title, icon }: { title: string; icon?: string }) {
  return (
    <div className="px-5 pt-7 pb-3">
      <div className="flex items-center gap-2.5">
        <div className="h-px flex-1 bg-white/6" />
        <span className="text-[10px] font-black text-white/30 tracking-[0.15em] uppercase font-['Cairo'] flex items-center gap-1">
          {icon && <span>{icon}</span>}
          {title}
        </span>
        <div className="h-px flex-1 bg-white/6" />
      </div>
    </div>
  );
}

/* ──────────────── Toggle row ──────────────── */
function ToggleRow({
  icon: Icon, iconColor = "text-primary", iconBg = "bg-primary/12",
  label, sub, on, onChange,
}: {
  icon: any; iconColor?: string; iconBg?: string;
  label: string; sub?: string; on: boolean; onChange: (v: boolean) => void;
}) {
  return (
    <div onClick={() => onChange(!on)} role="button"
      className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-white/3 cursor-pointer select-none">
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
        <Icon className={`w-4 h-4 ${iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">{label}</p>
        {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      <Toggle on={on} onChange={onChange} />
    </div>
  );
}

/* ──────────────── Card container ──────────────── */
function Card({ children }: { children: React.ReactNode }) {
  return (
    <div className="mx-4 rounded-2xl overflow-hidden divide-y divide-white/[0.045]"
      style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.06)" }}>
      {children}
    </div>
  );
}

/* ──────────────── Danger row ──────────────── */
function DangerRow({ label, sub, onClick }: { label: string; sub?: string; onClick: () => void }) {
  return (
    <button onClick={onClick}
      className="w-full flex items-center gap-3.5 px-5 py-3.5 transition-all hover:bg-red-500/5 active:scale-[0.99]">
      <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border bg-red-500/10 border-red-500/20">
        <Trash2 className="w-4 h-4 text-red-400" />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[13.5px] font-bold font-['Cairo'] text-red-400/85">{label}</p>
        {sub && <p className="text-[10px] text-red-400/30 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      <ChevronLeft className="w-4 h-4 text-red-400/25 shrink-0" />
    </button>
  );
}

/* ──────────────── Info row ──────────────── */
function InfoRow({ icon: Icon, iconColor, iconBg, label, sub, value }: {
  icon: any; iconColor: string; iconBg: string; label: string; sub?: string; value?: string;
}) {
  return (
    <div className="flex items-center gap-3.5 px-5 py-3.5">
      <div className={`w-9 h-9 rounded-xl flex items-center justify-center shrink-0 border ${iconBg} border-white/8`}>
        <Icon className={`w-4 h-4 ${iconColor}`} />
      </div>
      <div className="flex-1 min-w-0 text-right">
        <p className="text-[13.5px] font-bold font-['Cairo'] text-white/85">{label}</p>
        {sub && <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      {value && <span className="text-[12px] font-black text-primary shrink-0">{value}</span>}
    </div>
  );
}

/* ══════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════ */
export default function Settings() {
  const { user, signOut } = useAuth();
  const [showAuth, setShowAuth] = useState(false);

  const [theme,       setTheme]       = useState(() => localStorage.getItem("pref-theme")     || "dark");
  const [notifs,      setNotifs]      = useState(() => localStorage.getItem("pref-notifs")    !== "false");
  const [autoMark,    setAutoMark]    = useState(() => localStorage.getItem("pref-automark")  !== "false");
  const [autoplay,    setAutoplay]    = useState(() => localStorage.getItem("pref-autoplay")  !== "false");
  const [startPage,   setStartPage]   = useState(() => localStorage.getItem("pref-startpage") || "home");
  const [viewMode,    setViewMode]    = useState(() => localStorage.getItem("pref-viewmode")  || "grid");
  const [quality,     setQuality]     = useState(() => localStorage.getItem("pref-quality")   || "auto");
  const [subSize,     setSubSize]     = useState(() => localStorage.getItem("pref-subsize")   || "medium");
  const [autoSub,     setAutoSub]     = useState(() => localStorage.getItem("pref-autosub")   !== "false");

  const setT   = (t: string)  => { setTheme(t);     localStorage.setItem("pref-theme",     t); applyTheme(t); };
  const setN   = (v: boolean) => { setNotifs(v);    localStorage.setItem("pref-notifs",    String(v)); };
  const setAM  = (v: boolean) => { setAutoMark(v);  localStorage.setItem("pref-automark",  String(v)); };
  const setAP  = (v: boolean) => { setAutoplay(v);  localStorage.setItem("pref-autoplay",  String(v)); };
  const setSP  = (v: string)  => { setStartPage(v); localStorage.setItem("pref-startpage", v); };
  const setVM  = (v: string)  => { setViewMode(v);  localStorage.setItem("pref-viewmode",  v); };
  const setQ   = (v: string)  => { setQuality(v);   localStorage.setItem("pref-quality",   v); };
  const setSS  = (v: string)  => { setSubSize(v);   localStorage.setItem("pref-subsize",   v); };
  const setAS  = (v: boolean) => { setAutoSub(v);   localStorage.setItem("pref-autosub",   String(v)); };

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

  const cacheKb = (() => {
    try {
      let total = 0;
      for (let i = 0; i < localStorage.length; i++) {
        const k = localStorage.key(i) || "";
        const v = localStorage.getItem(k) || "";
        total += k.length + v.length;
      }
      return Math.round(total / 1024);
    } catch { return 0; }
  })();

  const currentTheme = THEMES.find(t => t.id === theme) || THEMES[0];

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-32 font-['Cairo']" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 backdrop-blur-xl px-4 py-3.5 flex items-center gap-3"
        style={{ background: "rgba(9,9,11,0.92)", borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
        <Link href="/">
          <button className="w-9 h-9 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
            <ChevronRight className="w-4 h-4 text-white/50" />
          </button>
        </Link>
        <div className="flex items-center gap-2.5 flex-1">
          <div className="w-8 h-8 rounded-xl flex items-center justify-center"
            style={{ background: "rgba(139,92,246,0.18)", border: "1px solid rgba(139,92,246,0.30)" }}>
            <SettingsIcon className="w-4 h-4 text-violet-300" />
          </div>
          <h1 className="text-[17px] font-black">الإعدادات</h1>
        </div>
        <div className="flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl"
          style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.07)" }}>
          <div className="w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
          <span className="text-[9px] text-white/30 font-bold">Nova v2.3</span>
        </div>
      </div>

      {/* ── Profile / Account card ── */}
      <div className="mx-4 mt-5">
        {user ? (
          <div className="flex items-center gap-3.5 rounded-2xl p-4"
            style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <div className="w-12 h-12 rounded-xl flex items-center justify-center text-violet-300 font-black text-xl shrink-0"
              style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(139,92,246,0.35)" }}>
              {user.email?.[0]?.toUpperCase() ?? "؟"}
            </div>
            <div className="flex-1 min-w-0">
              <p className="text-[13px] font-black text-white/90 truncate">{user.email}</p>
              <p className="text-[10px] text-white/30 mt-0.5">مشترك · مجاني</p>
            </div>
            <button onClick={() => signOut()}
              className="flex items-center gap-1.5 px-3 py-2 rounded-xl active:scale-95 transition-transform"
              style={{ background: "rgba(239,68,68,0.10)", border: "1px solid rgba(239,68,68,0.18)" }}>
              <LogOut className="w-3.5 h-3.5 text-red-400" />
              <span className="text-[11px] font-black text-red-400">خروج</span>
            </button>
          </div>
        ) : (
          <button onClick={() => setShowAuth(true)}
            className="w-full flex items-center gap-3.5 rounded-2xl p-4 active:scale-[0.98] transition-transform"
            style={{ background: "rgba(17,17,22,0.95)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <div className="w-12 h-12 rounded-xl flex items-center justify-center shrink-0"
              style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}>
              <User className="w-5 h-5 text-white/30" />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13px] font-black text-white/75">تسجيل الدخول / إنشاء حساب</p>
              <p className="text-[10px] text-white/30 mt-0.5">احفظ قائمتك وتاريخك عبر الأجهزة</p>
            </div>
            <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
          </button>
        )}
      </div>

      {/* ── Stats row ── */}
      <div className="mx-4 mt-3 grid grid-cols-4 gap-2">
        {[
          { label: "مشاهَدة", val: histCount,         color: "text-violet-400", bg: "rgba(139,92,246,0.10)" },
          { label: "محفوظة",  val: savedCount,        color: "text-pink-400",   bg: "rgba(236,72,153,0.10)" },
          { label: "الكاش",   val: `${cacheKb}KB`,   color: "text-cyan-400",   bg: "rgba(6,182,212,0.10)" },
          { label: "مجاني",   val: "∞",               color: "text-emerald-400",bg: "rgba(16,185,129,0.10)" },
        ].map(s => (
          <div key={s.label} className="flex flex-col items-center gap-1 rounded-xl py-2.5"
            style={{ background: s.bg, border: "1px solid rgba(255,255,255,0.05)" }}>
            <span className={`text-base font-black ${s.color}`}>{s.val}</span>
            <span className="text-[9px] text-white/30 font-bold">{s.label}</span>
          </div>
        ))}
      </div>

      {/* ══════ المظهر ══════ */}
      <SectionHeader title="المظهر" icon="🎨" />
      <Card>
        {/* Theme picker */}
        <div className="px-5 py-4">
          <div className="flex items-center gap-3 mb-4">
            <div className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0"
              style={{ background: `${currentTheme.dot}22`, border: "1px solid rgba(255,255,255,0.08)" }}>
              <Palette className="w-4 h-4" style={{ color: currentTheme.dot }} />
            </div>
            <div className="flex-1 text-right">
              <p className="text-[13.5px] font-bold text-white/85">ثيم التطبيق</p>
              <p className="text-[10px] text-white/30 mt-0.5">الثيم الحالي: {currentTheme.label} · {currentTheme.desc}</p>
            </div>
          </div>
          <div className="grid grid-cols-5 gap-2">
            {THEMES.map(t => {
              const active = theme === t.id;
              return (
                <motion.button key={t.id} whileTap={{ scale: 0.88 }} onClick={() => setT(t.id)}
                  className="flex flex-col items-center gap-1.5 py-3 rounded-2xl transition-all border"
                  style={{
                    background: active ? `${t.dot}18` : "rgba(255,255,255,0.03)",
                    borderColor: active ? `${t.dot}60` : "rgba(255,255,255,0.06)",
                  }}>
                  <div className="relative rounded-full"
                    style={{ width: 28, height: 28, background: t.dot, boxShadow: active ? `0 0 12px ${t.dot}80` : "none" }}>
                    {active && (
                      <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }}
                        className="absolute inset-0 flex items-center justify-center rounded-full"
                        style={{ background: "rgba(0,0,0,0.35)" }}>
                        <Check className="w-3 h-3 text-white" strokeWidth={3} />
                      </motion.div>
                    )}
                  </div>
                  <span className="text-[9px] font-black leading-tight text-center"
                    style={{ color: active ? t.dot : "rgba(255,255,255,0.30)" }}>
                    {t.label}
                  </span>
                </motion.button>
              );
            })}
          </div>
        </div>

        {/* View mode */}
        <DropdownSelect
          icon={viewMode === "grid" ? LayoutGrid : List}
          iconColor="text-indigo-400" iconBg="bg-indigo-500/10"
          label="وضع عرض القوائم" sub="طريقة عرض قوائم الأنمي"
          value={viewMode} onChange={setVM}
          options={[
            { id: "grid", label: "شبكة (Grid)", icon: "⊞" },
            { id: "list", label: "قائمة (List)", icon: "☰" },
          ]}
        />
      </Card>

      {/* ══════ التشغيل ══════ */}
      <SectionHeader title="التشغيل" icon="▶️" />
      <Card>
        {/* Quality preference */}
        <DropdownSelect
          icon={Award} iconColor="text-amber-400" iconBg="bg-amber-500/10"
          label="الجودة المفضّلة" sub="أولوية الجودة عند بدء التشغيل"
          value={quality} onChange={setQ}
          options={[
            { id: "auto",  label: "تلقائي (الأفضل المتاح)", icon: "✨" },
            { id: "fhd",   label: "FHD 1080 أولاً",         icon: "🏆" },
            { id: "hd",    label: "HD 720 أولاً",            icon: "⭐" },
            { id: "sd",    label: "SD 360 (توفير البيانات)", icon: "💾" },
          ]}
        />

        {/* Autoplay toggle */}
        <ToggleRow
          icon={PlayCircle}
          iconColor={autoplay ? "text-emerald-400" : "text-white/30"}
          iconBg={autoplay ? "bg-emerald-500/10" : "bg-white/5"}
          label="تشغيل تلقائي"
          sub="ابدأ التشغيل فور وصول أول مصدر"
          on={autoplay} onChange={setAP}
        />

        {/* Auto-mark watched */}
        <ToggleRow
          icon={Check}
          iconColor="text-violet-400" iconBg="bg-violet-500/10"
          label="تأشير تلقائي للمشاهدة"
          sub="تحديد الحلقات كمشاهَدة تلقائياً"
          on={autoMark} onChange={setAM}
        />
      </Card>

      {/* ══════ الترجمة ══════ */}
      <SectionHeader title="الترجمة" icon="💬" />
      <Card>
        {/* Auto subtitle */}
        <ToggleRow
          icon={Subtitles}
          iconColor={autoSub ? "text-blue-400" : "text-white/30"}
          iconBg={autoSub ? "bg-blue-500/10" : "bg-white/5"}
          label="ترجمة تلقائية"
          sub="تحميل الترجمة العربية تلقائياً"
          on={autoSub} onChange={setAS}
        />

        {/* Subtitle size */}
        <DropdownSelect
          icon={Monitor} iconColor="text-cyan-400" iconBg="bg-cyan-500/10"
          label="حجم خط الترجمة" sub="حجم نص الترجمة أثناء التشغيل"
          value={subSize} onChange={setSS}
          options={[
            { id: "small",  label: "صغير",  icon: "🔡" },
            { id: "medium", label: "متوسط", icon: "🔠" },
            { id: "large",  label: "كبير",  icon: "🅰️" },
          ]}
        />
      </Card>

      {/* ══════ عام ══════ */}
      <SectionHeader title="عام" icon="⚙️" />
      <Card>
        {/* Start page */}
        <DropdownSelect
          icon={Home} iconColor="text-blue-400" iconBg="bg-blue-500/10"
          label="صفحة البداية" sub="الصفحة التي تظهر عند فتح التطبيق"
          value={startPage} onChange={setSP}
          options={[
            { id: "home",   label: "الرئيسية", icon: "🏠" },
            { id: "browse", label: "تصفح",     icon: "🔍" },
          ]}
        />

        {/* Notifications */}
        <ToggleRow
          icon={notifs ? Bell : BellOff}
          iconColor={notifs ? "text-amber-400" : "text-white/30"}
          iconBg={notifs ? "bg-amber-500/10" : "bg-white/5"}
          label="الإشعارات"
          sub="تفعيل إشعارات الحلقات الجديدة"
          on={notifs} onChange={setN}
        />
      </Card>

      {/* ══════ عن التطبيق ══════ */}
      <SectionHeader title="عن التطبيق" icon="ℹ️" />
      <Card>
        <InfoRow
          icon={Shield} iconColor="text-teal-400" iconBg="bg-teal-500/10"
          label="الخصوصية والبيانات"
          sub="لا نجمع أي بيانات شخصية · مجاني للجميع"
        />
        <InfoRow
          icon={Zap} iconColor="text-amber-400" iconBg="bg-amber-500/10"
          label="مصادر الأنمي النشطة"
          sub="شاهيد · أنميليك · أنيمي دار · كاواي · أنيكوتو · أنيميكو"
        />
        <InfoRow
          icon={BarChart3} iconColor="text-violet-400" iconBg="bg-violet-500/10"
          label="مصادر الرسوم المتحركة"
          sub="StarCima · Wecima · StarDima · MovizTime · TopCinema"
        />
        <InfoRow
          icon={Smartphone} iconColor="text-indigo-400" iconBg="bg-indigo-500/10"
          label="إصدار التطبيق"
          sub="Nova Anime · Arabic Streaming App"
          value="v2.3.0"
        />
      </Card>

      {/* ══════ البيانات ══════ */}
      <SectionHeader title="البيانات والكاش" icon="🗑️" />
      <Card>
        <DangerRow
          label="مسح سجل المشاهدة"
          sub={`${histCount} حلقة مشاهَدة · لا يمكن التراجع`}
          onClick={() => {
            if (confirm("هل تريد مسح سجل المشاهدة كاملاً؟")) {
              localStorage.removeItem("watch-history");
              localStorage.removeItem("anim-watch-history");
              window.location.reload();
            }
          }}
        />
        <DangerRow
          label="مسح قائمة المحفوظات"
          sub={`${savedCount} أنمي محفوظ · لا يمكن التراجع`}
          onClick={() => {
            if (confirm("هل تريد مسح جميع المحفوظات؟")) {
              localStorage.removeItem("savedAnime");
              window.location.reload();
            }
          }}
        />
        <DangerRow
          label="مسح الكاش والإعدادات"
          sub={`${cacheKb}KB مُخزَّن · يعيد التطبيق للحالة الأولية`}
          onClick={() => {
            if (confirm("سيتم مسح جميع البيانات والإعدادات. تأكد؟")) {
              localStorage.clear();
              window.location.reload();
            }
          }}
        />
      </Card>

      {/* Footer */}
      <div className="text-center pt-10 pb-4 px-6">
        <div className="inline-flex items-center gap-1.5 mb-2">
          <span className="text-[15px] font-black text-white/60">ANIME</span>
          <span className="text-[15px] font-black"
            style={{ background: "linear-gradient(135deg,#A78BFA,#7C3AED)", WebkitBackgroundClip: "text", WebkitTextFillColor: "transparent" }}>
            NOVA
          </span>
        </div>
        <p className="text-[9px] text-white/18">جميع الحقوق محفوظة · 2025 · مجاني للجميع</p>
      </div>

      <AnimatePresence>
        {showAuth && <AuthModal onClose={() => setShowAuth(false)} />}
      </AnimatePresence>
    </main>
  );
}
