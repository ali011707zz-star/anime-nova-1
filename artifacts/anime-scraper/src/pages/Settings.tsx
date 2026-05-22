import { useState, useEffect } from "react";
import {
  Palette, Bell, BellOff, Globe, Home, Monitor,
  Moon, Zap, Sun, ChevronRight, Check, Tv, Layers,
  Info, Shield, Star,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { Link } from "wouter";

const THEMES = [
  { id: "dark",    label: "داكن",       sub: "الإعداد الافتراضي", color: "#1C1C22", border: "#3F3F46" },
  { id: "amoled",  label: "AMOLED",     sub: "أسود خالص",        color: "#000000", border: "#27272A" },
  { id: "violet",  label: "بنفسجي",     sub: "لون فاتح للوضع الليلي", color: "#130F1E", border: "#4F46E5" },
  { id: "blue",    label: "أزرق",       sub: "ثيم أزرق بارد",    color: "#0B1120", border: "#3B82F6" },
  { id: "pink",    label: "وردي",       sub: "ثيم وردي دافئ",    color: "#1A0E14", border: "#EC4899" },
];

const ACCENT_COLORS = [
  { id: "violet", label: "بنفسجي",  value: "#8B5CF6" },
  { id: "blue",   label: "أزرق",    value: "#3B82F6" },
  { id: "pink",   label: "وردي",    value: "#EC4899" },
  { id: "emerald",label: "أخضر",    value: "#10B981" },
  { id: "amber",  label: "ذهبي",    value: "#F59E0B" },
  { id: "red",    label: "أحمر",    value: "#EF4444" },
];

function applyTheme(t: string, accent?: string) {
  const root = document.documentElement;
  root.setAttribute("data-theme", t);
  if (t === "amoled") {
    root.style.setProperty("--bg-base", "#000000");
    root.style.setProperty("--bg-card", "#0A0A0A");
  } else if (t === "violet") {
    root.style.setProperty("--bg-base", "#0B0814");
    root.style.setProperty("--bg-card", "#130F1E");
  } else if (t === "blue") {
    root.style.setProperty("--bg-base", "#0B1120");
    root.style.setProperty("--bg-card", "#0F1829");
  } else if (t === "pink") {
    root.style.setProperty("--bg-base", "#130811");
    root.style.setProperty("--bg-card", "#1A0E15");
  } else {
    root.style.setProperty("--bg-base", "#09090B");
    root.style.setProperty("--bg-card", "#111116");
  }
}

function SettingRow({ icon: Icon, label, sub, children, className }: {
  icon: any; label: string; sub?: string; children?: React.ReactNode; className?: string;
}) {
  return (
    <div className={`flex items-center gap-3 p-4 ${className || ""}`}>
      <div className="w-9 h-9 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center shrink-0">
        <Icon className="w-4 h-4 text-primary" />
      </div>
      <div className="flex-1 min-w-0">
        <p className="text-sm font-bold text-white/85 font-['Cairo']">{label}</p>
        {sub && <p className="text-[10px] text-white/35 font-['Cairo'] mt-0.5">{sub}</p>}
      </div>
      {children}
    </div>
  );
}

function Toggle({ on, onChange }: { on: boolean; onChange: (v: boolean) => void }) {
  return (
    <motion.button
      onClick={() => onChange(!on)}
      className={`w-12 h-6 rounded-full relative shrink-0 transition-colors ${on ? "bg-primary" : "bg-white/12"}`}
    >
      <motion.div
        animate={{ x: on ? 22 : 2 }}
        transition={{ type: "spring", stiffness: 500, damping: 30 }}
        className="absolute top-0.5 w-5 h-5 bg-white rounded-full shadow-md"
      />
    </motion.button>
  );
}

export default function Settings() {
  const [theme, setTheme]   = useState(() => localStorage.getItem("pref-theme") || "dark");
  const [notifs, setNotifs] = useState(() => localStorage.getItem("pref-notifs") !== "false");
  const [autoMark, setAutoMark] = useState(() => localStorage.getItem("pref-automark") !== "false");
  const [startPage, setStartPage] = useState(() => localStorage.getItem("pref-startpage") || "home");
  const [lang, setLang]     = useState(() => localStorage.getItem("pref-lang") || "ar");
  const [player, setPlayer] = useState(() => localStorage.getItem("pref-player") || "iframe");

  const setT = (t: string) => { setTheme(t); localStorage.setItem("pref-theme", t); applyTheme(t); };
  const setN = (v: boolean) => { setNotifs(v); localStorage.setItem("pref-notifs", String(v)); };
  const setA = (v: boolean) => { setAutoMark(v); localStorage.setItem("pref-automark", String(v)); };
  const setSP = (v: string) => { setStartPage(v); localStorage.setItem("pref-startpage", v); };
  const setL = (v: string) => { setLang(v); localStorage.setItem("pref-lang", v); };
  const setP = (v: string) => { setPlayer(v); localStorage.setItem("pref-player", v); };

  const histCount = (() => {
    try { return JSON.parse(localStorage.getItem("watch-history") || "[]").length; } catch { return 0; }
  })();
  const savedCount = (() => {
    try { return JSON.parse(localStorage.getItem("savedAnime") || "[]").length; } catch { return 0; }
  })();

  function SectionTitle({ title }: { title: string }) {
    return <p className="text-[10px] font-black text-white/30 tracking-[0.12em] uppercase px-4 pt-5 pb-2 font-['Cairo']">{title}</p>;
  }

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 py-4 flex items-center gap-3">
        <Link href="/">
          <button className="w-9 h-9 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center active:scale-90">
            <ChevronRight className="w-4 h-4 text-white/65" />
          </button>
        </Link>
        <h1 className="text-xl font-black font-['Cairo']">الإعدادات</h1>
      </div>

      {/* Stats banner */}
      <div className="mx-4 mt-4 p-4 rounded-2xl border border-white/8 bg-white/3 flex items-center gap-6">
        <div className="flex-1 text-center">
          <p className="text-2xl font-black text-primary">{histCount}</p>
          <p className="text-[9px] text-white/35 font-['Cairo'] font-bold">مشاهدة</p>
        </div>
        <div className="w-px h-10 bg-white/8" />
        <div className="flex-1 text-center">
          <p className="text-2xl font-black text-primary">{savedCount}</p>
          <p className="text-[9px] text-white/35 font-['Cairo'] font-bold">محفوظة</p>
        </div>
        <div className="w-px h-10 bg-white/8" />
        <div className="flex-1 text-center">
          <p className="text-2xl font-black text-primary">∞</p>
          <p className="text-[9px] text-white/35 font-['Cairo'] font-bold">مجاني</p>
        </div>
      </div>

      {/* Theme */}
      <SectionTitle title="المظهر" />
      <div className="mx-4 bg-[#111116] border border-white/6 rounded-2xl overflow-hidden">
        <div className="p-4 border-b border-white/5">
          <div className="flex items-center gap-3 mb-4">
            <div className="w-9 h-9 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center">
              <Palette className="w-4 h-4 text-primary" />
            </div>
            <div>
              <p className="text-sm font-bold text-white/85 font-['Cairo']">الوضع الليلي</p>
              <p className="text-[10px] text-white/35 font-['Cairo']">اختر ثيم التطبيق</p>
            </div>
          </div>
          <div className="grid grid-cols-5 gap-2">
            {THEMES.map(t => (
              <motion.button key={t.id} whileTap={{ scale: 0.93 }} onClick={() => setT(t.id)}
                className={`flex flex-col items-center gap-1.5 p-2 rounded-xl border transition-all
                  ${theme === t.id ? "border-primary" : "border-white/8"}`}>
                <div className="w-8 h-8 rounded-lg border-2 flex items-center justify-center"
                  style={{ backgroundColor: t.color, borderColor: t.border }}>
                  {theme === t.id && <Check className="w-3 h-3 text-white" />}
                </div>
                <span className={`text-[8px] font-black font-['Cairo'] ${theme === t.id ? "text-primary" : "text-white/35"}`}>
                  {t.label}
                </span>
              </motion.button>
            ))}
          </div>
        </div>
      </div>

      {/* Player */}
      <SectionTitle title="المشغّل" />
      <div className="mx-4 bg-[#111116] border border-white/6 rounded-2xl overflow-hidden">
        <div className="p-4">
          <div className="flex items-center gap-3 mb-3">
            <div className="w-9 h-9 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center">
              <Tv className="w-4 h-4 text-primary" />
            </div>
            <div>
              <p className="text-sm font-bold text-white/85 font-['Cairo']">نوع المشغّل</p>
              <p className="text-[10px] text-white/35 font-['Cairo']">طريقة تشغيل الحلقات</p>
            </div>
          </div>
          <div className="grid grid-cols-2 gap-2">
            {[
              { id: "iframe", label: "مشغّل المواقع", sub: "توافق أعلى", icon: Layers },
              { id: "native", label: "مشغّل داخلي", sub: "تجربة موحّدة", icon: Monitor },
            ].map(p => {
              const Icon = p.icon;
              return (
                <button key={p.id} onClick={() => setP(p.id)}
                  className={`flex flex-col items-start gap-1 p-3.5 rounded-xl border transition-all active:scale-95
                    ${player === p.id ? "bg-primary/15 border-primary/35" : "bg-white/3 border-white/8"}`}>
                  <Icon className={`w-4 h-4 ${player === p.id ? "text-primary" : "text-white/30"}`} />
                  <span className={`text-[11px] font-black font-['Cairo'] ${player === p.id ? "text-primary" : "text-white/55"}`}>{p.label}</span>
                  <span className={`text-[9px] font-['Cairo'] ${player === p.id ? "text-primary/60" : "text-white/20"}`}>{p.sub}</span>
                </button>
              );
            })}
          </div>
        </div>
      </div>

      {/* Notifications & Preferences */}
      <SectionTitle title="التفضيلات" />
      <div className="mx-4 bg-[#111116] border border-white/6 rounded-2xl overflow-hidden divide-y divide-white/5">
        <SettingRow icon={notifs ? Bell : BellOff} label="الإشعارات" sub="إشعارات الحلقات الجديدة">
          <Toggle on={notifs} onChange={setN} />
        </SettingRow>
        <SettingRow icon={Star} label="تأشير تلقائي" sub="تحديد المشاهَدة تلقائياً">
          <Toggle on={autoMark} onChange={setA} />
        </SettingRow>
        <div className="p-4">
          <div className="flex items-center gap-3 mb-3">
            <div className="w-9 h-9 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center shrink-0">
              <Home className="w-4 h-4 text-primary" />
            </div>
            <div>
              <p className="text-sm font-bold text-white/85 font-['Cairo']">صفحة البداية</p>
              <p className="text-[10px] text-white/35 font-['Cairo']">الصفحة عند فتح التطبيق</p>
            </div>
          </div>
          <div className="grid grid-cols-2 gap-2">
            {[{ id: "home", label: "الرئيسية" }, { id: "browse", label: "تصفح" }].map(s => (
              <button key={s.id} onClick={() => setSP(s.id)}
                className={`py-2.5 rounded-xl text-[11px] font-black font-['Cairo'] border transition-all active:scale-95
                  ${startPage === s.id ? "bg-primary/15 border-primary/35 text-primary" : "bg-white/3 border-white/8 text-white/40"}`}>
                {s.label}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* Language */}
      <SectionTitle title="اللغة" />
      <div className="mx-4 bg-[#111116] border border-white/6 rounded-2xl overflow-hidden">
        <div className="p-4">
          <div className="flex items-center gap-3 mb-3">
            <div className="w-9 h-9 rounded-xl bg-primary/10 border border-primary/15 flex items-center justify-center">
              <Globe className="w-4 h-4 text-primary" />
            </div>
            <p className="text-sm font-bold text-white/85 font-['Cairo']">لغة التطبيق</p>
          </div>
          <div className="grid grid-cols-2 gap-2">
            {[{ id: "ar", label: "العربية", flag: "🇸🇦" }, { id: "en", label: "English", flag: "🇺🇸" }].map(l => (
              <button key={l.id} onClick={() => setL(l.id)}
                className={`flex items-center justify-center gap-2 py-2.5 rounded-xl border transition-all active:scale-95
                  ${lang === l.id ? "bg-primary/15 border-primary/35 text-primary" : "bg-white/3 border-white/8 text-white/40"}`}>
                <span className="text-lg">{l.flag}</span>
                <span className={`text-[11px] font-black font-['Cairo'] ${lang === l.id ? "text-primary" : "text-white/50"}`}>{l.label}</span>
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* About */}
      <SectionTitle title="عن التطبيق" />
      <div className="mx-4 bg-[#111116] border border-white/6 rounded-2xl overflow-hidden divide-y divide-white/5">
        <SettingRow icon={Shield} label="الخصوصية" sub="لا نجمع أي بيانات شخصية" />
        <SettingRow icon={Info} label="الإصدار" sub="Nova Anime v2.1">
          <span className="text-[10px] text-white/25 font-['Cairo']">مجاني</span>
        </SettingRow>
      </div>

      {/* Clear data */}
      <div className="mx-4 mt-4 mb-4">
        <button
          onClick={() => {
            if (confirm("هل تريد مسح سجل المشاهدة؟")) {
              localStorage.removeItem("watch-history");
              window.location.reload();
            }
          }}
          className="w-full py-3.5 rounded-2xl border border-red-500/20 bg-red-500/6 text-red-400 text-sm font-black font-['Cairo'] active:scale-[0.98]"
        >
          مسح سجل المشاهدة
        </button>
      </div>
    </main>
  );
}
