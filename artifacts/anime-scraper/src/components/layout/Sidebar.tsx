import { motion, AnimatePresence } from 'framer-motion';
import { Link, useLocation } from 'wouter';
import {
  X, Home, Search, Heart, History,
  Library, Film, Settings, Info, Moon, Zap, Palette,
  ChevronLeft, Star, Trash2, Globe, Bell, BellOff,
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
  { id: 'dark',   label: 'داكن',   icon: Moon,    color: '#94a3b8' },
  { id: 'amoled', label: 'AMOLED', icon: Zap,     color: '#ffffff' },
  { id: 'violet', label: 'بنفسجي', icon: Palette, color: '#a78bfa' },
];

export function Sidebar({ open, onClose }: SidebarProps) {
  const [location, navigate] = useLocation();
  const [notifs,  setNotifs]  = useState(() => localStorage.getItem('pref-notifs') !== 'false');
  const [theme,   setTheme]   = useState(() => localStorage.getItem('pref-theme')   || 'dark');
  const [lang,    setLang]    = useState(() => localStorage.getItem('pref-lang')    || 'ar');
  const [section, setSection] = useState<string | null>(null);

  const watchCount = (() => {
    try {
      const a = JSON.parse(localStorage.getItem('watch-history') || '[]').length;
      const b = JSON.parse(localStorage.getItem('anim-watch-history') || '[]').length;
      return a + b;
    } catch { return 0; }
  })();

  const favCount = (() => {
    try { return JSON.parse(localStorage.getItem('favorites') || '[]').length; } catch { return 0; }
  })();

  const setT = (t: string) => { setTheme(t); localStorage.setItem('pref-theme', t); applyTheme(t); };
  const setL = (l: string) => { setLang(l); localStorage.setItem('pref-lang', l); };
  const toggleNotifs = () => { const n = !notifs; setNotifs(n); localStorage.setItem('pref-notifs', String(n)); };
  const toggle = (s: string) => setSection(v => v === s ? null : s);

  const isActive = (href: string) =>
    href === '/' ? (location === '/' || location === '') : location.startsWith(href);

  const go = (href: string) => { onClose(); navigate(href); };

  /* ── Nav items ── */
  const NAV = [
    { icon: Home,    label: 'الرئيسية',     href: '/' },
    { icon: Search,  label: 'البحث',         href: '/search' },
    { icon: Film,    label: 'أنيميشن',       href: '/animations' },
    { icon: Library, label: 'المكتبة',       href: '/library' },
    { icon: Heart,   label: 'المفضلة',       href: '/favorites', badge: favCount > 0 ? favCount : null },
    { icon: History, label: 'سجل المشاهدة', href: '/history',   badge: watchCount > 0 ? watchCount : null },
  ];

  return (
    <AnimatePresence>
      {open && (
        <>
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/75 backdrop-blur-[2px] z-[200]"
          />

          {/* Panel — slides from RIGHT */}
          <motion.aside
            initial={{ x: '100%' }} animate={{ x: 0 }} exit={{ x: '100%' }}
            transition={{ type: 'spring', damping: 30, stiffness: 320 }}
            className="fixed top-0 right-0 bottom-0 w-[78%] max-w-[300px] z-[201] flex flex-col overflow-hidden"
            style={{ background: 'linear-gradient(180deg,#0d0820 0%,#0a0a10 40%,#09090B 100%)' }}
            dir="rtl"
          >
            {/* ── TOP: Logo + Close ── */}
            <div className="flex items-center justify-between px-4 pt-5 pb-4"
              style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
              <div className="flex items-center gap-1.5">
                <div className="w-7 h-7 rounded-lg flex items-center justify-center"
                  style={{ background: 'linear-gradient(135deg,#7C3AED,#4F46E5)' }}>
                  <Star className="w-3.5 h-3.5 text-white" fill="white" />
                </div>
                <div className="flex items-baseline gap-0.5">
                  <span className="text-[15px] font-black tracking-tight"
                    style={{ background: 'linear-gradient(135deg,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                  <span className="text-[15px] font-black text-white/90 tracking-tight">ANIME</span>
                </div>
              </div>
              <button onClick={onClose}
                className="w-7 h-7 bg-white/6 border border-white/8 rounded-lg flex items-center justify-center active:scale-90 transition-transform">
                <X className="w-3 h-3 text-white/55" />
              </button>
            </div>

            {/* ── STATS BAR ── */}
            <div className="px-4 py-2.5 flex gap-2">
              <div className="flex-1 flex items-center gap-1.5 bg-white/[0.04] border border-white/[0.06] rounded-xl px-3 py-2">
                <History className="w-3 h-3 text-violet-400" />
                <span className="text-[10px] font-black text-white/50 font-['Cairo']">{watchCount} مشاهدة</span>
              </div>
              <div className="flex-1 flex items-center gap-1.5 bg-white/[0.04] border border-white/[0.06] rounded-xl px-3 py-2">
                <Heart className="w-3 h-3 text-rose-400" />
                <span className="text-[10px] font-black text-white/50 font-['Cairo']">{favCount} مفضلة</span>
              </div>
            </div>

            {/* ── MAIN NAVIGATION ── */}
            <div className="px-3 pt-2 pb-1">
              <p className="text-[8px] font-black text-white/18 tracking-[0.18em] uppercase mb-2 px-2 font-['Cairo']">التنقل</p>
              <div className="space-y-0.5">
                {NAV.map(item => {
                  const Icon = item.icon;
                  const active = isActive(item.href);
                  return (
                    <button key={item.href} onClick={() => go(item.href)}
                      className={`w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl cursor-pointer transition-all text-right
                        ${active
                          ? 'text-white'
                          : 'text-white/45 hover:text-white/75 hover:bg-white/[0.04]'}`}
                      style={active ? {
                        background: 'linear-gradient(135deg,rgba(124,58,237,0.18),rgba(79,70,229,0.10))',
                        border: '1px solid rgba(139,92,246,0.22)',
                      } : { border: '1px solid transparent' }}>
                      <Icon className={`w-[15px] h-[15px] shrink-0 ${active ? 'text-violet-400' : ''}`} strokeWidth={active ? 2.5 : 1.8} />
                      <span className="flex-1 text-[13px] font-bold font-['Cairo']">{item.label}</span>
                      {item.badge && (
                        <span className="text-[9px] font-black px-1.5 py-0.5 rounded-full font-['Cairo']"
                          style={{
                            background: active ? 'rgba(139,92,246,0.25)' : 'rgba(255,255,255,0.08)',
                            color: active ? '#c4b5fd' : 'rgba(255,255,255,0.35)',
                          }}>
                          {item.badge}
                        </span>
                      )}
                      {active && <div className="w-1 h-1 rounded-full bg-violet-400 animate-pulse shrink-0" />}
                    </button>
                  );
                })}
              </div>
            </div>

            {/* ── SETTINGS SECTION ── */}
            <div className="px-3 pt-3 mt-auto" style={{ borderTop: '1px solid rgba(255,255,255,0.05)' }}>
              <p className="text-[8px] font-black text-white/18 tracking-[0.18em] uppercase mb-2 px-2 font-['Cairo']">الإعدادات</p>

              {/* Notifications toggle */}
              <button onClick={toggleNotifs}
                className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-white/[0.04] border border-transparent transition-all text-right">
                {notifs
                  ? <Bell className="w-[15px] h-[15px] text-violet-400 shrink-0" strokeWidth={2} />
                  : <BellOff className="w-[15px] h-[15px] text-white/35 shrink-0" strokeWidth={1.8} />}
                <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/55">الإشعارات</span>
                <div className={`w-8 h-4.5 rounded-full relative transition-all shrink-0 ${notifs ? 'bg-violet-600' : 'bg-white/10'}`}
                  style={{ height: 18, width: 32 }}>
                  <motion.div
                    animate={{ x: notifs ? 15 : 2 }}
                    className="absolute top-[2px] w-3.5 h-3.5 bg-white rounded-full shadow"
                    transition={{ type: 'spring', stiffness: 500, damping: 30 }}
                  />
                </div>
              </button>

              {/* Theme */}
              <button onClick={() => toggle('theme')}
                className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-white/[0.04] border border-transparent transition-all text-right">
                <Palette className="w-[15px] h-[15px] text-violet-400 shrink-0" strokeWidth={1.8} />
                <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/55">السمة</span>
                <span className="text-[9px] font-black text-white/25 font-['Cairo']">
                  {THEMES.find(t => t.id === theme)?.label}
                </span>
                <ChevronLeft className={`w-3 h-3 text-white/20 shrink-0 transition-transform ${section === 'theme' ? '-rotate-90' : ''}`} />
              </button>

              <AnimatePresence>
                {section === 'theme' && (
                  <motion.div
                    initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                    exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.18 }}
                    className="overflow-hidden px-2 pb-2">
                    <div className="grid grid-cols-3 gap-1.5 mt-1">
                      {THEMES.map(t => {
                        const TIcon = t.icon;
                        const active = theme === t.id;
                        return (
                          <button key={t.id} onClick={() => setT(t.id)}
                            className={`flex flex-col items-center gap-1 py-2 rounded-xl border transition-all active:scale-95 ${active ? 'border-violet-500/40' : 'border-white/6'}`}
                            style={{ background: active ? 'rgba(124,58,237,0.18)' : 'rgba(255,255,255,0.03)' }}>
                            <TIcon className="w-3.5 h-3.5" style={{ color: active ? '#a78bfa' : t.color + '80' }} />
                            <span className="text-[8.5px] font-black font-['Cairo']"
                              style={{ color: active ? '#c4b5fd' : 'rgba(255,255,255,0.30)' }}>{t.label}</span>
                          </button>
                        );
                      })}
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>

              {/* Language */}
              <button onClick={() => toggle('lang')}
                className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-white/[0.04] border border-transparent transition-all text-right">
                <Globe className="w-[15px] h-[15px] text-cyan-400 shrink-0" strokeWidth={1.8} />
                <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/55">اللغة</span>
                <span className="text-[9px] font-black text-white/25 font-['Cairo']">
                  {lang === 'ar' ? 'العربية' : 'English'}
                </span>
                <ChevronLeft className={`w-3 h-3 text-white/20 shrink-0 transition-transform ${section === 'lang' ? '-rotate-90' : ''}`} />
              </button>
              <AnimatePresence>
                {section === 'lang' && (
                  <motion.div
                    initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                    exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.18 }}
                    className="overflow-hidden px-2 pb-2">
                    <div className="grid grid-cols-2 gap-1.5 mt-1">
                      {[{ id: 'ar', label: 'العربية', flag: '🇸🇦' }, { id: 'en', label: 'English', flag: '🇺🇸' }].map(l => (
                        <button key={l.id} onClick={() => setL(l.id)}
                          className={`flex items-center justify-center gap-1.5 py-2 rounded-xl border text-[10px] font-black transition-all active:scale-95
                            ${lang === l.id ? 'border-violet-500/40' : 'border-white/6'}`}
                          style={{ background: lang === l.id ? 'rgba(124,58,237,0.18)' : 'rgba(255,255,255,0.03)', color: lang === l.id ? '#c4b5fd' : 'rgba(255,255,255,0.40)' }}>
                          <span>{l.flag}</span><span className="font-['Cairo']">{l.label}</span>
                        </button>
                      ))}
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>

              {/* Clear cache */}
              <button onClick={() => { localStorage.clear(); window.location.reload(); }}
                className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-red-500/5 border border-transparent transition-all text-right mt-0.5">
                <Trash2 className="w-[14px] h-[14px] text-red-400/60 shrink-0" strokeWidth={1.8} />
                <span className="text-[13px] font-bold font-['Cairo'] text-red-400/55">مسح الكاش</span>
              </button>

              {/* About */}
              <button onClick={() => toggle('about')}
                className="w-full flex items-center gap-3 px-3.5 py-2.5 rounded-xl hover:bg-white/[0.04] border border-transparent transition-all text-right">
                <Info className="w-[15px] h-[15px] text-white/30 shrink-0" strokeWidth={1.8} />
                <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/40">حول التطبيق</span>
                <span className="text-[9px] text-white/18 font-bold">v2.0</span>
              </button>

              <AnimatePresence>
                {section === 'about' && (
                  <motion.div
                    initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                    exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.18 }}
                    className="overflow-hidden px-2 pb-2">
                    <div className="bg-white/[0.03] border border-white/5 rounded-2xl p-3 mt-1 text-center">
                      <div className="flex items-center justify-center gap-1 mb-1">
                        <span className="text-[16px] font-black text-white/80">ANIME</span>
                        <span className="text-[16px] font-black"
                          style={{ background: 'linear-gradient(135deg,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                      </div>
                      <p className="text-[8.5px] text-white/25 font-['Cairo'] mb-2">منصة أنمي عربية</p>
                      <div className="flex items-center justify-center gap-1">
                        {[...Array(5)].map((_, i) => <Star key={i} className="w-2.5 h-2.5 text-amber-400" fill="currentColor" />)}
                      </div>
                      <p className="text-[7.5px] text-white/12 font-['Cairo'] mt-2">الإصدار 2.0 · 10+ مصادر · HLS/MP4</p>
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>
            </div>

            {/* ── FOOTER ── */}
            <div className="px-5 py-4" style={{ borderTop: '1px solid rgba(255,255,255,0.04)' }}>
              <div className="flex items-center justify-between">
                <p className="text-[7.5px] text-white/12 font-bold">Anime Nova © 2025</p>
                <div className="flex items-center gap-1">
                  <div className="w-1.5 h-1.5 bg-emerald-400 rounded-full animate-pulse" />
                  <span className="text-[7.5px] text-emerald-400/55 font-bold">متصل</span>
                </div>
              </div>
            </div>

          </motion.aside>
        </>
      )}
    </AnimatePresence>
  );
}
