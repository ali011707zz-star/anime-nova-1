import { motion, AnimatePresence } from 'framer-motion';
import { Link, useLocation } from 'wouter';
import {
  X, Home, Search, Calendar, Library, History,
  Bell, BellOff, Trash2, Play, ChevronRight,
  Moon, Zap, Palette, Globe, Tv, Layers,
  Settings, BookOpen
} from 'lucide-react';
import { useState, useEffect } from 'react';

interface SidebarProps { open: boolean; onClose: () => void; }

const navLinks = [
  { icon: Home,     label: 'الرئيسية',  href: '/' },
  { icon: Search,   label: 'البحث',      href: '/search' },
  { icon: Calendar, label: 'جدول البث', href: '/schedule' },
  { icon: Library,  label: 'مكتبتي',    href: '/library' },
];

/* ─── Apply theme to <html> ─── */
function applyTheme(t: string) {
  const root = document.documentElement;
  root.setAttribute('data-theme', t);
  if (t === 'amoled') {
    root.style.setProperty('--bg-base', '#000000');
    root.style.setProperty('--bg-card', '#0A0A0A');
  } else if (t === 'violet') {
    root.style.setProperty('--bg-base', '#0B0814');
    root.style.setProperty('--bg-card', '#130F1E');
  } else {
    root.style.setProperty('--bg-base', '#09090B');
    root.style.setProperty('--bg-card', '#111116');
  }
}

const THEMES = [
  { id: 'dark',   label: 'داكن',  icon: Moon,    cls: 'text-slate-400' },
  { id: 'amoled', label: 'AMOLED', icon: Zap,     cls: 'text-white' },
  { id: 'violet', label: 'بنفسجي', icon: Palette, cls: 'text-purple-400' },
];
const PLAYERS = [
  { id: 'native', label: 'مشغل داخلي', sub: 'بدون إعلانات', icon: Tv },
  { id: 'iframe', label: 'مشغل خارجي', sub: 'أوسع توافق',   icon: Layers },
];

export function Sidebar({ open, onClose }: SidebarProps) {
  const [location] = useLocation();
  const [notifs,   setNotifs]   = useState(() => localStorage.getItem('pref-notifs') !== 'false');
  const [theme,    setTheme]    = useState(() => localStorage.getItem('pref-theme')   || 'dark');
  const [player,   setPlayer]   = useState(() => localStorage.getItem('pref-player')  || 'native');
  const [lang,     setLang]     = useState(() => localStorage.getItem('pref-lang')    || 'ar');
  const [history,  setHistory]  = useState<any[]>([]);
  const [histOpen, setHistOpen] = useState(false);
  const [settOpen, setSettOpen] = useState(true);

  /* watch count for stats */
  const watchCount = (() => {
    try { return JSON.parse(localStorage.getItem('watch-history') || '[]').length; } catch { return 0; }
  })();

  useEffect(() => {
    if (open) {
      const h = localStorage.getItem('watch-history');
      setHistory(h ? JSON.parse(h).slice(0, 5) : []);
    }
  }, [open]);

  const setT = (t: string) => { setTheme(t); localStorage.setItem('pref-theme', t); applyTheme(t); };
  const setP = (p: string) => { setPlayer(p); localStorage.setItem('pref-player', p); };
  const setL = (l: string) => { setLang(l); localStorage.setItem('pref-lang', l); };
  const toggleNotifs = () => { const n = !notifs; setNotifs(n); localStorage.setItem('pref-notifs', String(n)); };
  const clearHist = () => { localStorage.removeItem('watch-history'); setHistory([]); };

  return (
    <AnimatePresence>
      {open && (
        <>
          {/* Backdrop */}
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/80 backdrop-blur-[3px] z-[200]" />

          {/* Panel */}
          <motion.aside
            initial={{ x: '100%' }} animate={{ x: 0 }} exit={{ x: '100%' }}
            transition={{ type: 'spring', damping: 28, stiffness: 300 }}
            className="fixed top-0 right-0 bottom-0 w-[82%] max-w-[310px] z-[201] flex flex-col overflow-y-auto overscroll-contain"
            style={{ background: 'linear-gradient(185deg, #160D2B 0%, #0F0A1E 30%, #09090B 70%, #09090B 100%)' }}
            dir="rtl"
          >

            {/* ── CLOSE button (top-right) ── */}
            <button onClick={onClose}
              className="absolute top-12 left-4 w-8 h-8 bg-white/8 border border-white/8 rounded-xl flex items-center justify-center z-10 active:scale-90">
              <X className="w-3.5 h-3.5 text-white/60" />
            </button>

            {/* ══ PROFILE SECTION ══ */}
            <div className="pt-14 px-5 pb-5">
              {/* Avatar + info */}
              <div className="flex items-center gap-4 mb-5">
                <div className="relative shrink-0">
                  <div className="w-16 h-16 rounded-2xl flex items-center justify-center text-2xl font-black text-white shadow-lg"
                    style={{ background: 'linear-gradient(135deg, #7C3AED, #4F46E5)' }}>
                    ض
                  </div>
                  <div className="absolute -bottom-1 -right-1 w-5 h-5 bg-emerald-500 rounded-full border-2 border-[#160D2B] flex items-center justify-center">
                    <div className="w-2 h-2 rounded-full bg-white" />
                  </div>
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-white font-black text-base">ضيف</p>
                  <p className="text-white/40 text-[11px] font-['Cairo'] mt-0.5">تصفح بدون حساب</p>
                  <div className="flex items-center gap-2 mt-2">
                    <div className="flex items-center gap-1 bg-white/6 border border-white/8 px-2 py-0.5 rounded-lg">
                      <BookOpen className="w-2.5 h-2.5 text-primary" />
                      <span className="text-[9px] font-black text-white/60">{watchCount} مشاهدة</span>
                    </div>
                  </div>
                </div>
              </div>

              {/* App branding */}
              <div className="flex items-center gap-2 pb-4 border-b border-white/6">
                <div className="flex-1">
                  <div className="flex items-baseline gap-1">
                    <span className="text-xl font-black text-primary tracking-tight">NOVA</span>
                    <span className="text-xl font-black text-white tracking-tight">ANIME</span>
                  </div>
                  <p className="text-white/25 text-[9px] font-bold mt-0.5">استمتع بالأنمي بلا حدود</p>
                </div>
                <div className="w-10 h-10 rounded-xl bg-primary/10 border border-primary/20 flex items-center justify-center">
                  <Play className="w-5 h-5 text-primary fill-primary" />
                </div>
              </div>
            </div>

            {/* ══ NAV LINKS ══ */}
            <div className="px-4 mb-1">
              <p className="text-[9px] font-black text-white/20 tracking-[0.12em] uppercase mb-2 px-1">التنقل</p>
              {navLinks.map(link => {
                const Icon = link.icon;
                const active = link.href === '/'
                  ? (location === '/' || location === '')
                  : location.startsWith(link.href);
                return (
                  <Link key={link.href} href={link.href} onClick={onClose}>
                    <div className={`flex items-center gap-3 px-3.5 py-2.5 rounded-xl mb-0.5 cursor-pointer transition-all
                      ${active ? 'bg-primary/15 text-primary' : 'text-white/55 hover:bg-white/5 hover:text-white/85'}`}>
                      <Icon className="w-4 h-4 shrink-0" />
                      <span className="text-sm font-bold font-['Cairo']">{link.label}</span>
                      {active && <div className="mr-auto w-1.5 h-1.5 bg-primary rounded-full animate-pulse" />}
                    </div>
                  </Link>
                );
              })}
            </div>

            {/* ══ WATCH HISTORY ══ */}
            {history.length > 0 && (
              <div className="px-4 pt-3 border-t border-white/5 mb-1">
                <button onClick={() => setHistOpen(v => !v)}
                  className="flex items-center justify-between w-full px-1 mb-2">
                  <div className="flex items-center gap-2">
                    <History className="w-3.5 h-3.5 text-primary" />
                    <p className="text-[9px] font-black text-white/20 tracking-[0.12em] uppercase">آخر المشاهدات</p>
                  </div>
                  <div className="flex items-center gap-2">
                    <button onClick={e => { e.stopPropagation(); clearHist(); }}
                      className="text-[9px] text-red-400/60 font-bold flex items-center gap-0.5 hover:text-red-400">
                      <Trash2 className="w-2.5 h-2.5" /> مسح
                    </button>
                    <ChevronRight className={`w-3.5 h-3.5 text-white/25 transition-transform ${histOpen ? "rotate-90" : ""}`} />
                  </div>
                </button>

                <AnimatePresence>
                  {histOpen && (
                    <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                      exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }} className="overflow-hidden">
                      {history.map((item, i) => (
                        <Link key={i} href={`/watch?anime=${item.id}&ep=${item.ep}`} onClick={onClose}>
                          <div className="flex items-center gap-2.5 p-2 rounded-xl hover:bg-white/5 cursor-pointer mb-0.5 active:bg-white/8">
                            <img src={item.cover} alt="" className="w-8 h-11 rounded-lg object-cover shrink-0 border border-white/10" />
                            <div className="flex-1 min-w-0">
                              <p className="text-[11px] font-bold text-white/75 line-clamp-1 font-['Cairo']">{item.title}</p>
                              <p className="text-[9px] text-primary font-bold font-['Cairo']">الحلقة {item.ep}</p>
                            </div>
                            <Play className="w-3 h-3 text-primary shrink-0" fill="currentColor" />
                          </div>
                        </Link>
                      ))}
                    </motion.div>
                  )}
                </AnimatePresence>
              </div>
            )}

            {/* ══ SETTINGS ══ */}
            <div className="px-4 pt-3 border-t border-white/5 flex-1">
              <button onClick={() => setSettOpen(v => !v)}
                className="flex items-center justify-between w-full px-1 mb-3">
                <div className="flex items-center gap-2">
                  <Settings className="w-3.5 h-3.5 text-primary" />
                  <p className="text-[9px] font-black text-white/20 tracking-[0.12em] uppercase">الإعدادات</p>
                </div>
                <ChevronRight className={`w-3.5 h-3.5 text-white/25 transition-transform ${settOpen ? "rotate-90" : ""}`} />
              </button>

              <AnimatePresence initial={false}>
                {settOpen && (
                  <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                    exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.22 }} className="overflow-hidden space-y-1">

                    {/* ── Theme ── */}
                    <div className="bg-white/4 border border-white/6 rounded-2xl p-3.5 mb-2">
                      <div className="flex items-center gap-2 mb-3">
                        <Palette className="w-3.5 h-3.5 text-primary" />
                        <span className="text-xs font-black text-white/70 font-['Cairo']">الثيم</span>
                      </div>
                      <div className="grid grid-cols-3 gap-2">
                        {THEMES.map(t => {
                          const Icon = t.icon;
                          return (
                            <button key={t.id} onClick={() => setT(t.id)}
                              className={`flex flex-col items-center gap-1.5 py-2.5 rounded-xl border transition-all active:scale-95
                                ${theme === t.id
                                  ? 'bg-primary/20 border-primary/40 text-primary'
                                  : 'bg-white/4 border-white/8 text-white/35 hover:text-white/65'}`}>
                              <Icon className={`w-4 h-4 ${theme === t.id ? 'text-primary' : t.cls}`} />
                              <span className="text-[9px] font-black font-['Cairo']">{t.label}</span>
                            </button>
                          );
                        })}
                      </div>
                    </div>

                    {/* ── Player Preference ── */}
                    <div className="bg-white/4 border border-white/6 rounded-2xl p-3.5 mb-2">
                      <div className="flex items-center gap-2 mb-3">
                        <Tv className="w-3.5 h-3.5 text-primary" />
                        <span className="text-xs font-black text-white/70 font-['Cairo']">المشغل المفضل</span>
                      </div>
                      <div className="grid grid-cols-2 gap-2">
                        {PLAYERS.map(p => {
                          const Icon = p.icon;
                          return (
                            <button key={p.id} onClick={() => setP(p.id)}
                              className={`flex flex-col items-start gap-1 p-3 rounded-xl border transition-all active:scale-95
                                ${player === p.id
                                  ? 'bg-primary/20 border-primary/40'
                                  : 'bg-white/4 border-white/8'}`}>
                              <Icon className={`w-4 h-4 ${player === p.id ? 'text-primary' : 'text-white/35'}`} />
                              <span className={`text-[10px] font-black font-['Cairo'] ${player === p.id ? 'text-primary' : 'text-white/55'}`}>
                                {p.label}
                              </span>
                              <span className={`text-[8px] font-bold font-['Cairo'] ${player === p.id ? 'text-primary/60' : 'text-white/20'}`}>
                                {p.sub}
                              </span>
                            </button>
                          );
                        })}
                      </div>
                    </div>

                    {/* ── Language ── */}
                    <div className="bg-white/4 border border-white/6 rounded-2xl p-3.5 mb-2">
                      <div className="flex items-center gap-2 mb-3">
                        <Globe className="w-3.5 h-3.5 text-primary" />
                        <span className="text-xs font-black text-white/70 font-['Cairo']">اللغة</span>
                      </div>
                      <div className="grid grid-cols-2 gap-2">
                        {[{ id: 'ar', label: 'العربية', flag: '🇸🇦' }, { id: 'en', label: 'English', flag: '🇺🇸' }].map(l => (
                          <button key={l.id} onClick={() => setL(l.id)}
                            className={`flex items-center justify-center gap-2 py-2.5 rounded-xl border transition-all active:scale-95
                              ${lang === l.id
                                ? 'bg-primary/20 border-primary/40 text-primary'
                                : 'bg-white/4 border-white/8 text-white/40 hover:text-white/65'}`}>
                            <span className="text-sm">{l.flag}</span>
                            <span className={`text-[10px] font-black ${lang === l.id ? 'text-primary' : 'text-white/50'}`}>{l.label}</span>
                          </button>
                        ))}
                      </div>
                    </div>

                    {/* ── Notifications ── */}
                    <div onClick={toggleNotifs}
                      className="flex items-center justify-between px-3.5 py-3 bg-white/4 border border-white/6 rounded-2xl cursor-pointer active:bg-white/8 mb-2">
                      <div className="flex items-center gap-3">
                        {notifs
                          ? <Bell className="w-4 h-4 text-primary" />
                          : <BellOff className="w-4 h-4 text-white/30" />}
                        <div>
                          <p className="text-sm font-bold text-white/80 font-['Cairo']">الإشعارات</p>
                          <p className="text-[9px] text-white/30 font-['Cairo']">إشعارات الحلقات الجديدة</p>
                        </div>
                      </div>
                      <div className={`w-11 h-6 rounded-full relative transition-colors shrink-0 ${notifs ? 'bg-primary' : 'bg-white/10'}`}>
                        <motion.div animate={{ x: notifs ? 20 : 2 }}
                          className="absolute top-0.5 w-5 h-5 bg-white rounded-full shadow"
                          transition={{ type: 'spring', stiffness: 500, damping: 30 }} />
                      </div>
                    </div>

                  </motion.div>
                )}
              </AnimatePresence>
            </div>

            {/* Footer */}
            <div className="px-5 pb-10 pt-4 border-t border-white/5">
              <p className="text-center text-[9px] text-white/12 font-bold">Nova Anime v2.0 • جميع الحقوق محفوظة</p>
            </div>

          </motion.aside>
        </>
      )}
    </AnimatePresence>
  );
}
