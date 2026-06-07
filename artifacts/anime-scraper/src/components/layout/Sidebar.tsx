import { motion, AnimatePresence } from 'framer-motion';
import { Link, useLocation } from 'wouter';
import {
  X, Home, Search, Compass, Heart, PlayCircle, Library,
  Download, Bell, BellOff, Moon, Zap, Palette, Info,
  Settings, BookOpen, History, Trash2, Play, ChevronRight,
  Globe, Tv, Layers, Star,
} from 'lucide-react';
import { useState, useEffect } from 'react';

interface SidebarProps { open: boolean; onClose: () => void; }

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
  { id: 'dark',   label: 'داكن',   icon: Moon,    cls: 'text-slate-400' },
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
  const [settOpen, setSettOpen] = useState(false);
  const [histOpen, setHistOpen] = useState(false);
  const [activeSection, setActiveSection] = useState<string | null>(null);

  const watchCount = (() => {
    try {
      const anime = JSON.parse(localStorage.getItem('watch-history') || '[]').length;
      const anim  = JSON.parse(localStorage.getItem('anim-watch-history') || '[]').length;
      return anime + anim;
    } catch { return 0; }
  })();

  const favCount = (() => {
    try { return JSON.parse(localStorage.getItem('favorites') || '[]').length; } catch { return 0; }
  })();

  useEffect(() => {
    if (open) {
      const h = localStorage.getItem('watch-history');
      setHistory(h ? JSON.parse(h).slice(0, 6) : []);
    }
  }, [open]);

  const setT = (t: string) => { setTheme(t); localStorage.setItem('pref-theme', t); applyTheme(t); };
  const setP = (p: string) => { setPlayer(p); localStorage.setItem('pref-player', p); };
  const setL = (l: string) => { setLang(l); localStorage.setItem('pref-lang', l); };
  const toggleNotifs = () => { const n = !notifs; setNotifs(n); localStorage.setItem('pref-notifs', String(n)); };
  const clearHist = () => { localStorage.removeItem('watch-history'); setHistory([]); };
  const toggle = (s: string) => setActiveSection(v => v === s ? null : s);

  const isActive = (href: string) =>
    href === '/' ? (location === '/' || location === '') : location.startsWith(href);

  /* ── Main nav items ── */
  const navItems = [
    { icon: Home,        label: 'الرئيسية',          href: '/',         badge: null },
    { icon: Compass,     label: 'استكشاف',            href: '/search',   badge: null },
    { icon: Heart,       label: 'المفضلة',            href: '/favorites', badge: favCount > 0 ? String(favCount) : null },
    { icon: PlayCircle,  label: 'متابعة المشاهدة',   href: '/history',  badge: watchCount > 0 ? String(watchCount) : null },
    { icon: Library,     label: 'مكتبتي',             href: '/library',  badge: null },
    { icon: Download,    label: 'التنزيلات',          href: '/downloads', badge: null },
  ];

  /* ── Action items ── */
  const actionItems = [
    {
      icon: Bell, label: 'الإشعارات',
      sub: notifs ? 'مفعّلة' : 'متوقفة',
      active: notifs,
      color: notifs ? 'text-primary' : 'text-white/35',
      onClick: toggleNotifs,
    },
    {
      icon: Moon, label: 'السمة',
      sub: THEMES.find(t => t.id === theme)?.label || 'داكن',
      active: false,
      color: 'text-violet-400',
      onClick: () => toggle('theme'),
    },
    {
      icon: Settings, label: 'الإعدادات',
      sub: null,
      active: false,
      color: 'text-white/50',
      onClick: () => toggle('settings'),
    },
    {
      icon: Info, label: 'حول التطبيق',
      sub: 'v2.0',
      active: false,
      color: 'text-cyan-400',
      onClick: () => toggle('about'),
    },
  ];

  return (
    <AnimatePresence>
      {open && (
        <>
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/80 backdrop-blur-[3px] z-[200]"
          />

          {/* Panel */}
          <motion.aside
            initial={{ x: '100%' }} animate={{ x: 0 }} exit={{ x: '100%' }}
            transition={{ type: 'spring', damping: 28, stiffness: 300 }}
            className="fixed top-0 right-0 bottom-0 w-[82%] max-w-[320px] z-[201] flex flex-col overflow-y-auto overscroll-contain"
            style={{ background: 'linear-gradient(185deg, #13092C 0%, #0F0A1E 25%, #09090B 65%, #09090B 100%)' }}
            dir="rtl"
          >

            {/* ── Close button ── */}
            <button onClick={onClose}
              className="absolute top-4 left-4 w-8 h-8 bg-white/8 border border-white/8 rounded-xl flex items-center justify-center z-10 active:scale-90">
              <X className="w-3.5 h-3.5 text-white/60" />
            </button>

            {/* ══ PROFILE HEADER ══ */}
            <div className="pt-12 px-5 pb-4">
              <div className="flex items-center gap-4 mb-4">
                <div className="relative shrink-0">
                  <div className="w-14 h-14 rounded-2xl flex items-center justify-center text-2xl font-black text-white shadow-lg"
                    style={{ background: 'linear-gradient(135deg, #7C3AED, #4F46E5)' }}>
                    ض
                  </div>
                  <div className="absolute -bottom-1 -right-1 w-4 h-4 bg-emerald-500 rounded-full border-2 border-[#13092C] flex items-center justify-center">
                    <div className="w-1.5 h-1.5 rounded-full bg-white" />
                  </div>
                </div>
                <div className="flex-1 min-w-0">
                  <div className="flex items-baseline gap-1.5">
                    <span className="text-lg font-black text-primary tracking-tight">NOVA</span>
                    <span className="text-lg font-black text-white tracking-tight">ANIME</span>
                  </div>
                  <p className="text-white/35 text-[10px] font-['Cairo'] font-bold">تصفح بدون حساب</p>
                  <div className="flex items-center gap-2 mt-1.5">
                    <div className="flex items-center gap-1 bg-white/6 border border-white/8 px-2 py-0.5 rounded-lg">
                      <BookOpen className="w-2.5 h-2.5 text-primary" />
                      <span className="text-[8px] font-black text-white/55">{watchCount} مشاهدة</span>
                    </div>
                    {favCount > 0 && (
                      <div className="flex items-center gap-1 bg-rose-500/10 border border-rose-500/20 px-2 py-0.5 rounded-lg">
                        <Heart className="w-2.5 h-2.5 text-rose-400" />
                        <span className="text-[8px] font-black text-rose-400/80">{favCount} مفضلة</span>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </div>

            {/* ══ MAIN NAV ══ */}
            <div className="px-3 mb-2">
              <p className="text-[9px] font-black text-white/18 tracking-[0.15em] uppercase mb-1.5 px-2">التنقل</p>
              <div className="space-y-0.5">
                {navItems.map(item => {
                  const Icon = item.icon;
                  const active = isActive(item.href);
                  return (
                    <Link key={item.href} href={item.href} onClick={onClose}>
                      <div className={`flex items-center gap-3 px-3.5 py-2.5 rounded-xl cursor-pointer transition-all
                        ${active
                          ? 'bg-primary/15 border border-primary/20 text-primary'
                          : 'text-white/50 hover:bg-white/5 hover:text-white/80 border border-transparent'}`}>
                        <Icon className="w-4 h-4 shrink-0" />
                        <span className="flex-1 text-sm font-bold font-['Cairo']">{item.label}</span>
                        {item.badge && (
                          <span className={`text-[8px] font-black px-1.5 py-0.5 rounded-full
                            ${active ? 'bg-primary/25 text-primary' : 'bg-white/10 text-white/40'}`}>
                            {item.badge}
                          </span>
                        )}
                        {active && <div className="w-1.5 h-1.5 bg-primary rounded-full animate-pulse shrink-0" />}
                      </div>
                    </Link>
                  );
                })}
              </div>
            </div>

            {/* ══ WATCH HISTORY ══ */}
            {history.length > 0 && (
              <div className="px-3 py-2 border-t border-white/5">
                <button onClick={() => toggle('history')}
                  className="flex items-center justify-between w-full px-2 py-1.5 mb-1 hover:bg-white/3 rounded-lg">
                  <div className="flex items-center gap-2">
                    <History className="w-3.5 h-3.5 text-amber-400" />
                    <span className="text-[9px] font-black text-white/20 tracking-[0.12em] uppercase">آخر المشاهدات</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <button onClick={e => { e.stopPropagation(); clearHist(); }}
                      className="text-[9px] text-red-400/50 font-bold flex items-center gap-0.5 hover:text-red-400 active:scale-95">
                      <Trash2 className="w-2.5 h-2.5" /> مسح
                    </button>
                    <ChevronRight className={`w-3.5 h-3.5 text-white/20 transition-transform ${activeSection === 'history' ? 'rotate-90' : ''}`} />
                  </div>
                </button>

                <AnimatePresence>
                  {activeSection === 'history' && (
                    <motion.div
                      initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                      exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}
                      className="overflow-hidden"
                    >
                      {history.map((item, i) => (
                        <Link key={i} href={`/watch?anime=${item.id}&ep=${item.ep}`} onClick={onClose}>
                          <div className="flex items-center gap-2.5 p-2 rounded-xl hover:bg-white/5 cursor-pointer mb-0.5 active:bg-white/8">
                            <img src={item.cover} alt="" className="w-8 h-11 rounded-lg object-cover shrink-0 border border-white/10" />
                            <div className="flex-1 min-w-0">
                              <p className="text-[11px] font-bold text-white/75 line-clamp-1 font-['Cairo']">{item.title}</p>
                              <p className="text-[9px] text-primary font-bold font-['Cairo']">ح {item.ep}</p>
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

            {/* ══ ACTION ITEMS ══ */}
            <div className="px-3 py-2 border-t border-white/5">
              <p className="text-[9px] font-black text-white/18 tracking-[0.15em] uppercase mb-1.5 px-2">أدوات</p>
              <div className="space-y-0.5">
                {actionItems.map((item) => {
                  const Icon = item.icon;
                  const isOpen = activeSection === 'theme' && item.label === 'السمة'
                    || activeSection === 'settings' && item.label === 'الإعدادات'
                    || activeSection === 'about' && item.label === 'حول التطبيق';
                  return (
                    <div key={item.label}>
                      <button onClick={item.onClick}
                        className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl cursor-pointer transition-all text-white/50 hover:bg-white/5 hover:text-white/80 border border-transparent active:bg-white/8">
                        <Icon className={`w-4 h-4 shrink-0 ${item.color}`} />
                        <div className="flex-1 text-right">
                          <span className="text-sm font-bold font-['Cairo'] block">{item.label}</span>
                          {item.sub && <span className="text-[8px] text-white/30 font-['Cairo']">{item.sub}</span>}
                        </div>
                        {item.label === 'الإشعارات' ? (
                          <div className={`w-9 h-5 rounded-full relative transition-colors shrink-0 ${notifs ? 'bg-primary' : 'bg-white/10'}`}>
                            <motion.div
                              animate={{ x: notifs ? 16 : 2 }}
                              className="absolute top-0.5 w-4 h-4 bg-white rounded-full shadow"
                              transition={{ type: 'spring', stiffness: 500, damping: 30 }}
                            />
                          </div>
                        ) : (
                          <ChevronRight className={`w-3.5 h-3.5 text-white/20 transition-transform shrink-0 ${isOpen ? 'rotate-90' : ''}`} />
                        )}
                      </button>

                      {/* ── Theme Panel ── */}
                      <AnimatePresence>
                        {activeSection === 'theme' && item.label === 'السمة' && (
                          <motion.div
                            initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                            exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}
                            className="overflow-hidden px-2 pb-2"
                          >
                            <div className="bg-white/4 border border-white/6 rounded-2xl p-3 mt-1">
                              <div className="grid grid-cols-3 gap-2 mb-3">
                                {THEMES.map(t => {
                                  const TIcon = t.icon;
                                  return (
                                    <button key={t.id} onClick={() => setT(t.id)}
                                      className={`flex flex-col items-center gap-1.5 py-2.5 rounded-xl border transition-all active:scale-95
                                        ${theme === t.id ? 'bg-primary/20 border-primary/40 text-primary' : 'bg-white/4 border-white/8 text-white/35'}`}>
                                      <TIcon className={`w-4 h-4 ${theme === t.id ? 'text-primary' : t.cls}`} />
                                      <span className="text-[9px] font-black font-['Cairo']">{t.label}</span>
                                    </button>
                                  );
                                })}
                              </div>
                              <p className="text-[9px] font-black text-white/20 tracking-widest uppercase mb-2">المشغل</p>
                              <div className="grid grid-cols-2 gap-2">
                                {PLAYERS.map(p => {
                                  const PIcon = p.icon;
                                  return (
                                    <button key={p.id} onClick={() => setP(p.id)}
                                      className={`flex flex-col items-start gap-1 p-2.5 rounded-xl border transition-all active:scale-95
                                        ${player === p.id ? 'bg-primary/20 border-primary/40' : 'bg-white/4 border-white/8'}`}>
                                      <PIcon className={`w-4 h-4 ${player === p.id ? 'text-primary' : 'text-white/35'}`} />
                                      <span className={`text-[9px] font-black font-['Cairo'] ${player === p.id ? 'text-primary' : 'text-white/55'}`}>{p.label}</span>
                                      <span className={`text-[7px] font-bold font-['Cairo'] ${player === p.id ? 'text-primary/60' : 'text-white/20'}`}>{p.sub}</span>
                                    </button>
                                  );
                                })}
                              </div>
                            </div>
                          </motion.div>
                        )}
                      </AnimatePresence>

                      {/* ── Settings Panel ── */}
                      <AnimatePresence>
                        {activeSection === 'settings' && item.label === 'الإعدادات' && (
                          <motion.div
                            initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                            exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}
                            className="overflow-hidden px-2 pb-2"
                          >
                            <div className="bg-white/4 border border-white/6 rounded-2xl p-3 mt-1 space-y-3">
                              {/* Language */}
                              <div>
                                <div className="flex items-center gap-1.5 mb-2">
                                  <Globe className="w-3 h-3 text-primary" />
                                  <span className="text-[9px] font-black text-white/50 uppercase tracking-widest">اللغة</span>
                                </div>
                                <div className="grid grid-cols-2 gap-2">
                                  {[{ id: 'ar', label: 'العربية', flag: '🇸🇦' }, { id: 'en', label: 'English', flag: '🇺🇸' }].map(l => (
                                    <button key={l.id} onClick={() => setL(l.id)}
                                      className={`flex items-center justify-center gap-1.5 py-2 rounded-xl border text-[10px] font-black transition-all active:scale-95
                                        ${lang === l.id ? 'bg-primary/20 border-primary/40 text-primary' : 'bg-white/4 border-white/8 text-white/40'}`}>
                                      <span>{l.flag}</span><span>{l.label}</span>
                                    </button>
                                  ))}
                                </div>
                              </div>
                              {/* Cache */}
                              <button onClick={() => { localStorage.clear(); window.location.reload(); }}
                                className="w-full flex items-center justify-center gap-2 py-2 rounded-xl bg-red-500/8 border border-red-500/15 text-red-400 text-[10px] font-black font-['Cairo'] active:scale-95">
                                <Trash2 className="w-3 h-3" /> مسح الكاش كاملاً
                              </button>
                            </div>
                          </motion.div>
                        )}
                      </AnimatePresence>

                      {/* ── About Panel ── */}
                      <AnimatePresence>
                        {activeSection === 'about' && item.label === 'حول التطبيق' && (
                          <motion.div
                            initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                            exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}
                            className="overflow-hidden px-2 pb-2"
                          >
                            <div className="bg-white/4 border border-white/6 rounded-2xl p-4 mt-1 text-center space-y-2">
                              <div className="flex items-center justify-center gap-1.5 mb-1">
                                <span className="text-2xl font-black text-primary">NOVA</span>
                                <span className="text-2xl font-black text-white">ANIME</span>
                              </div>
                              <p className="text-[9px] text-white/30 font-['Cairo']">منصة مشاهدة الأنمي العربي</p>
                              <div className="flex items-center justify-center gap-3 text-[8px] text-white/25 font-bold">
                                <span>الإصدار 2.0</span>
                                <span>·</span>
                                <span>10+ مصادر</span>
                                <span>·</span>
                                <span>HLS/MP4</span>
                              </div>
                              <div className="flex items-center justify-center gap-1 mt-1">
                                {[...Array(5)].map((_, i) => (
                                  <Star key={i} className="w-3 h-3 text-amber-400 fill-amber-400" />
                                ))}
                              </div>
                              <p className="text-[8px] text-white/15 font-['Cairo'] pt-1">جميع الحقوق محفوظة © 2025</p>
                            </div>
                          </motion.div>
                        )}
                      </AnimatePresence>
                    </div>
                  );
                })}
              </div>
            </div>

            {/* Footer */}
            <div className="px-5 pt-4 pb-10 mt-auto border-t border-white/5">
              <div className="flex items-center justify-between">
                <p className="text-[8px] text-white/12 font-bold">Nova Anime v2.0</p>
                <div className="flex items-center gap-1">
                  <div className="w-1.5 h-1.5 bg-emerald-400 rounded-full animate-pulse" />
                  <span className="text-[8px] text-emerald-400/60 font-bold">متصل</span>
                </div>
              </div>
            </div>

          </motion.aside>
        </>
      )}
    </AnimatePresence>
  );
}
