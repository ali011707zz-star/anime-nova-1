import { motion, AnimatePresence } from 'framer-motion';
import { Link, useLocation } from 'wouter';
import {
  X, Home, Search, Heart, History,
  Library, Film, Settings, Moon, Palette,
  Trash2, Globe, Bell, BellOff, Compass,
  CalendarDays, ChevronLeft, User, LogIn,
  ChevronDown, Monitor, Zap, Star,
} from 'lucide-react';
import { useState } from 'react';
import { useAuth } from '@/lib/auth-context';

interface SidebarProps { open: boolean; onClose: () => void; }

function applyTheme(t: string) {
  const root = document.documentElement;
  root.setAttribute('data-theme', t);
  const map: Record<string, [string, string]> = {
    amoled:  ['#000000', '#0A0A0A'],
    violet:  ['#0B0814', '#130F1E'],
    blue:    ['#0B1120', '#0F1829'],
    pink:    ['#130811', '#1A0E15'],
  };
  const [base, card] = map[t] ?? ['#09090B', '#111116'];
  root.style.setProperty('--bg-base', base);
  root.style.setProperty('--bg-card', card);
}

const THEMES = [
  { id: 'dark',   label: 'داكن',    dot: '#3F3F46' },
  { id: 'amoled', label: 'AMOLED',  dot: '#ffffff' },
  { id: 'violet', label: 'بنفسجي',  dot: '#a78bfa' },
  { id: 'blue',   label: 'أزرق',    dot: '#3b82f6' },
  { id: 'pink',   label: 'وردي',    dot: '#ec4899' },
];

export function Sidebar({ open, onClose }: SidebarProps) {
  const [location, navigate] = useLocation();
  const { user } = useAuth();

  const [theme,       setTheme]       = useState(() => localStorage.getItem('pref-theme')  || 'dark');
  const [notifs,      setNotifs]      = useState(() => localStorage.getItem('pref-notifs') !== 'false');
  const [showAppear,  setShowAppear]  = useState(false);
  const [showGeneral, setShowGeneral] = useState(false);

  const watchCount = (() => {
    try {
      const a = JSON.parse(localStorage.getItem('watch-history')      || '[]').length;
      const b = JSON.parse(localStorage.getItem('anim-watch-history') || '[]').length;
      return a + b;
    } catch { return 0; }
  })();
  const favCount = (() => {
    try { return JSON.parse(localStorage.getItem('favorites') || '[]').length; } catch { return 0; }
  })();

  const setT = (t: string) => { setTheme(t); localStorage.setItem('pref-theme', t); applyTheme(t); };
  const toggleNotifs = () => {
    const n = !notifs; setNotifs(n); localStorage.setItem('pref-notifs', String(n));
  };

  const isActive = (href: string) =>
    href === '/' ? (location === '/' || location === '') : location.startsWith(href);

  const go = (href: string) => { onClose(); navigate(href); };

  const NAV_MAIN = [
    { icon: Home,         label: 'الرئيسية',        href: '/' },
    { icon: Search,       label: 'البحث',            href: '/search' },
    { icon: Compass,      label: 'تصفح الأنمي',      href: '/browse' },
    { icon: CalendarDays, label: 'الجدول الأسبوعي',  href: '/schedule' },
  ];

  const NAV_CONTENT = [
    { icon: Film,    label: 'الأنيميشن والأفلام', href: '/animations' },
    { icon: Library, label: 'مكتبتي',             href: '/library' },
    { icon: Heart,   label: 'المفضلة',            href: '/library',  badge: favCount > 0 ? favCount : null },
    { icon: History, label: 'سجل المشاهدة',       href: '/history',  badge: watchCount > 0 ? watchCount : null },
  ];

  const NavRow = ({ icon: Icon, label, href, badge }: { icon: any; label: string; href: string; badge?: number | null }) => {
    const active = isActive(href) && !(href === '/library' && label === 'المفضلة');
    return (
      <button onClick={() => go(href)}
        className={`w-full flex items-center gap-3 px-3 py-2.5 rounded-xl cursor-pointer transition-all text-right
          ${active ? 'text-white' : 'text-white/45 hover:text-white/75 hover:bg-white/[0.04]'}`}
        style={active ? {
          background: 'linear-gradient(135deg,rgba(124,58,237,0.18),rgba(79,70,229,0.10))',
          border: '1px solid rgba(139,92,246,0.22)',
        } : { border: '1px solid transparent' }}>
        <Icon className={`w-[15px] h-[15px] shrink-0 ${active ? 'text-violet-400' : ''}`} strokeWidth={active ? 2.5 : 1.8} />
        <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-right">{label}</span>
        {badge != null && (
          <span className="text-[9px] font-black px-1.5 py-0.5 rounded-full font-['Cairo']"
            style={{
              background: active ? 'rgba(139,92,246,0.25)' : 'rgba(255,255,255,0.08)',
              color:      active ? '#c4b5fd' : 'rgba(255,255,255,0.35)',
            }}>{badge}</span>
        )}
        {active && <div className="w-1 h-1 rounded-full bg-violet-400 animate-pulse shrink-0" />}
      </button>
    );
  };

  const SectionLabel = ({ children }: { children: string }) => (
    <p className="text-[8px] font-black text-white/18 tracking-[0.18em] uppercase mb-1 px-2 font-['Cairo']">{children}</p>
  );

  const Divider = () => (
    <div className="h-px mx-2" style={{ background: 'rgba(255,255,255,0.05)' }} />
  );

  return (
    <AnimatePresence>
      {open && (
        <>
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 bg-black/70 backdrop-blur-[2px] z-[200]"
          />

          {/* Panel */}
          <motion.aside
            initial={{ x: '100%' }} animate={{ x: 0 }} exit={{ x: '100%' }}
            transition={{ type: 'spring', damping: 30, stiffness: 320 }}
            className="fixed top-0 right-0 bottom-0 w-[80%] max-w-[310px] z-[201] flex flex-col overflow-hidden"
            style={{ background: 'linear-gradient(180deg,#0d0820 0%,#0a0a10 40%,#09090B 100%)' }}
            dir="rtl"
          >

            {/* ── HEADER ── */}
            <div className="flex items-center justify-between px-4 pt-5 pb-4 shrink-0"
              style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
              <div className="flex items-center gap-2">
                <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                  style={{ background: 'linear-gradient(135deg,#7C3AED,#4F46E5)' }}>
                  <Star className="w-4 h-4 text-white" fill="white" />
                </div>
                <div className="flex items-baseline gap-1">
                  <span className="text-[16px] font-black tracking-tight"
                    style={{ background: 'linear-gradient(135deg,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                  <span className="text-[16px] font-black text-white/90 tracking-tight">ANIME</span>
                </div>
              </div>
              <button onClick={onClose}
                className="w-8 h-8 rounded-xl flex items-center justify-center active:scale-90 transition-transform"
                style={{ background: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.08)' }}>
                <X className="w-3.5 h-3.5 text-white/50" />
              </button>
            </div>

            {/* ── ACCOUNT BAR ── */}
            <div className="px-3 py-3 shrink-0" style={{ borderBottom: '1px solid rgba(255,255,255,0.04)' }}>
              {user ? (
                <button onClick={() => go('/settings')}
                  className="w-full flex items-center gap-2.5 rounded-2xl px-3 py-2.5 active:scale-[0.98] transition-transform"
                  style={{ background: 'rgba(255,255,255,0.04)', border: '1px solid rgba(255,255,255,0.07)' }}>
                  <div className="w-8 h-8 rounded-xl border flex items-center justify-center text-violet-300 font-black text-sm shrink-0"
                    style={{ background: 'rgba(124,58,237,0.25)', borderColor: 'rgba(139,92,246,0.30)' }}>
                    {user.email?.[0]?.toUpperCase() ?? 'U'}
                  </div>
                  <div className="flex-1 text-right min-w-0">
                    <p className="text-[11px] font-black text-white/75 font-['Cairo'] truncate">{user.email}</p>
                    <p className="text-[9px] text-white/30 font-['Cairo']">عرض الحساب</p>
                  </div>
                  <ChevronLeft className="w-3.5 h-3.5 text-white/20 shrink-0" />
                </button>
              ) : (
                <button onClick={() => go('/settings')}
                  className="w-full flex items-center gap-2.5 rounded-2xl px-3 py-2 active:scale-[0.98] transition-transform"
                  style={{ background: 'rgba(255,255,255,0.03)', border: '1px solid rgba(255,255,255,0.06)' }}>
                  <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                    style={{ background: 'rgba(255,255,255,0.05)', border: '1px solid rgba(255,255,255,0.08)' }}>
                    <LogIn className="w-3.5 h-3.5 text-white/35" />
                  </div>
                  <div className="flex-1 text-right">
                    <p className="text-[11px] font-black text-white/50 font-['Cairo']">تسجيل الدخول</p>
                    <p className="text-[9px] text-white/22 font-['Cairo']">احفظ مكتبتك عبر الأجهزة</p>
                  </div>
                </button>
              )}

              {/* Stats */}
              <div className="flex gap-2 mt-2.5">
                {[
                  { icon: History, val: watchCount, label: 'مشاهدة',  color: 'text-violet-400' },
                  { icon: Heart,   val: favCount,   label: 'مفضلة',   color: 'text-rose-400'   },
                ].map(({ icon: Icon, val, label, color }) => (
                  <div key={label} className="flex-1 flex items-center gap-1.5 rounded-xl px-2.5 py-1.5"
                    style={{ background: 'rgba(255,255,255,0.03)' }}>
                    <Icon className={`w-3 h-3 shrink-0 ${color}`} />
                    <span className="text-[9.5px] font-black text-white/40 font-['Cairo']">{val} {label}</span>
                  </div>
                ))}
              </div>
            </div>

            {/* ── SCROLLABLE BODY ── */}
            <div className="flex-1 overflow-y-auto py-3 space-y-4" style={{ scrollbarWidth: 'none' }}>

              {/* القائمة الرئيسية */}
              <div className="px-3">
                <SectionLabel>الرئيسية</SectionLabel>
                <div className="space-y-0.5">
                  {NAV_MAIN.map(item => <NavRow key={item.href + item.label} {...item} />)}
                </div>
              </div>

              <Divider />

              {/* المحتوى */}
              <div className="px-3">
                <SectionLabel>المحتوى</SectionLabel>
                <div className="space-y-0.5">
                  {NAV_CONTENT.map(item => <NavRow key={item.href + item.label} {...item} />)}
                </div>
              </div>

              <Divider />

              {/* الإعدادات */}
              <div className="px-3">
                <SectionLabel>الإعدادات</SectionLabel>

                {/* ── المظهر (dropdown) ── */}
                <button onClick={() => setShowAppear(v => !v)}
                  className="w-full flex items-center gap-3 px-3 py-2.5 rounded-xl hover:bg-white/[0.04] transition-colors text-right"
                  style={{ border: '1px solid transparent' }}>
                  <Palette className="w-[15px] h-[15px] text-violet-400 shrink-0" strokeWidth={1.8} />
                  <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/60">المظهر</span>
                  <div className="flex items-center gap-1.5">
                    <div className="w-2.5 h-2.5 rounded-full border border-white/15"
                      style={{ background: THEMES.find(t => t.id === theme)?.dot ?? '#3F3F46' }} />
                    <span className="text-[9px] text-white/25 font-['Cairo']">{THEMES.find(t => t.id === theme)?.label}</span>
                  </div>
                  <ChevronDown className={`w-3 h-3 text-white/20 shrink-0 transition-transform duration-200 ${showAppear ? 'rotate-180' : ''}`} />
                </button>

                <AnimatePresence>
                  {showAppear && (
                    <motion.div
                      initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                      exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.18 }}
                      className="overflow-hidden">
                      <div className="grid grid-cols-5 gap-1 mx-1 mt-1 mb-2">
                        {THEMES.map(t => {
                          const active = theme === t.id;
                          return (
                            <button key={t.id} onClick={() => { setT(t.id); setShowAppear(false); }}
                              className="flex flex-col items-center gap-1 py-2.5 rounded-xl border transition-all active:scale-90"
                              style={{
                                background: active ? 'rgba(124,58,237,0.18)' : 'rgba(255,255,255,0.03)',
                                borderColor: active ? 'rgba(139,92,246,0.40)' : 'rgba(255,255,255,0.06)',
                              }}>
                              <div className="w-4 h-4 rounded-full border border-white/15"
                                style={{ background: t.dot }} />
                              <span className="text-[8px] font-black font-['Cairo']"
                                style={{ color: active ? '#c4b5fd' : 'rgba(255,255,255,0.28)' }}>{t.label}</span>
                            </button>
                          );
                        })}
                      </div>
                    </motion.div>
                  )}
                </AnimatePresence>

                {/* ── الإعدادات العامة (dropdown) ── */}
                <button onClick={() => setShowGeneral(v => !v)}
                  className="w-full flex items-center gap-3 px-3 py-2.5 rounded-xl hover:bg-white/[0.04] transition-colors text-right"
                  style={{ border: '1px solid transparent' }}>
                  <Settings className="w-[15px] h-[15px] text-cyan-400 shrink-0" strokeWidth={1.8} />
                  <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-white/60">إعدادات عامة</span>
                  <ChevronDown className={`w-3 h-3 text-white/20 shrink-0 transition-transform duration-200 ${showGeneral ? 'rotate-180' : ''}`} />
                </button>

                <AnimatePresence>
                  {showGeneral && (
                    <motion.div
                      initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }}
                      exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.18 }}
                      className="overflow-hidden">
                      <div className="mx-1 mt-1 mb-2 rounded-xl overflow-hidden"
                        style={{ border: '1px solid rgba(255,255,255,0.06)', background: 'rgba(255,255,255,0.02)' }}>

                        {/* الإشعارات */}
                        <button onClick={toggleNotifs}
                          className="w-full flex items-center gap-3 px-3 py-3 hover:bg-white/[0.04] transition-colors text-right"
                          style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
                          {notifs
                            ? <Bell className="w-[14px] h-[14px] text-violet-400 shrink-0" strokeWidth={2} />
                            : <BellOff className="w-[14px] h-[14px] text-white/25 shrink-0" strokeWidth={1.8} />}
                          <span className="flex-1 text-[12px] font-bold font-['Cairo'] text-white/55">الإشعارات</span>
                          <div className={`relative shrink-0 rounded-full transition-colors ${notifs ? 'bg-violet-600' : 'bg-white/10'}`}
                            style={{ width: 32, height: 18 }}>
                            <motion.div
                              animate={{ x: notifs ? 15 : 2 }}
                              className="absolute top-[2px] w-3.5 h-3.5 bg-white rounded-full shadow"
                              transition={{ type: 'spring', stiffness: 500, damping: 30 }}
                            />
                          </div>
                        </button>

                        {/* اللغة */}
                        <button onClick={() => go('/settings')}
                          className="w-full flex items-center gap-3 px-3 py-3 hover:bg-white/[0.04] transition-colors text-right"
                          style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
                          <Globe className="w-[14px] h-[14px] text-cyan-400 shrink-0" strokeWidth={1.8} />
                          <span className="flex-1 text-[12px] font-bold font-['Cairo'] text-white/55">اللغة والمنطقة</span>
                          <span className="text-[9px] text-white/20 font-['Cairo']">العربية</span>
                          <ChevronLeft className="w-3 h-3 text-white/15 shrink-0" />
                        </button>

                        {/* جودة التشغيل */}
                        <button onClick={() => go('/settings')}
                          className="w-full flex items-center gap-3 px-3 py-3 hover:bg-white/[0.04] transition-colors text-right"
                          style={{ borderBottom: '1px solid rgba(255,255,255,0.05)' }}>
                          <Monitor className="w-[14px] h-[14px] text-emerald-400 shrink-0" strokeWidth={1.8} />
                          <span className="flex-1 text-[12px] font-bold font-['Cairo'] text-white/55">جودة التشغيل</span>
                          <span className="text-[9px] text-white/20 font-['Cairo']">تلقائي</span>
                          <ChevronLeft className="w-3 h-3 text-white/15 shrink-0" />
                        </button>

                        {/* مسح الكاش */}
                        <button onClick={() => {
                          if (confirm('مسح الكاش والبيانات المؤقتة؟')) {
                            localStorage.clear(); window.location.reload();
                          }
                        }}
                          className="w-full flex items-center gap-3 px-3 py-3 hover:bg-red-500/5 transition-colors text-right">
                          <Trash2 className="w-[14px] h-[14px] text-red-400/50 shrink-0" strokeWidth={1.8} />
                          <span className="flex-1 text-[12px] font-bold font-['Cairo'] text-red-400/50">مسح الكاش</span>
                          <span className="text-[9px] text-white/15 font-['Cairo']">بيانات مؤقتة</span>
                        </button>
                      </div>
                    </motion.div>
                  )}
                </AnimatePresence>
              </div>

              {/* بطاقة تعريفية */}
              <div className="mx-4 rounded-2xl p-3 text-center"
                style={{ background: 'rgba(255,255,255,0.025)', border: '1px solid rgba(255,255,255,0.05)' }}>
                <div className="flex items-center justify-center gap-1 mb-0.5">
                  <span className="text-[13px] font-black text-white/70">ANIME</span>
                  <span className="text-[13px] font-black"
                    style={{ background: 'linear-gradient(135deg,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                </div>
                <p className="text-[8px] text-white/20 font-['Cairo']">الإصدار 2.2 · 10+ مصادر · مجاني تماماً</p>
              </div>
            </div>

            {/* ── FOOTER ── */}
            <div className="shrink-0 px-3 pt-2 pb-4" style={{ borderTop: '1px solid rgba(255,255,255,0.05)' }}>
              <button onClick={() => go('/settings')}
                className={`w-full flex items-center gap-3 px-3 py-3 rounded-xl transition-all active:scale-[0.98]
                  ${isActive('/settings') ? 'text-white' : 'text-white/50 hover:text-white/80 hover:bg-white/[0.05]'}`}
                style={isActive('/settings') ? {
                  background: 'linear-gradient(135deg,rgba(124,58,237,0.18),rgba(79,70,229,0.10))',
                  border: '1px solid rgba(139,92,246,0.22)',
                } : { border: '1px solid transparent' }}>
                <Zap className={`w-[15px] h-[15px] shrink-0 ${isActive('/settings') ? 'text-violet-400' : 'text-white/30'}`} strokeWidth={1.8} />
                <span className="flex-1 text-[13px] font-bold font-['Cairo']">جميع الإعدادات</span>
                <ChevronLeft className="w-3 h-3 text-white/20 shrink-0" />
              </button>

              <div className="flex items-center justify-between px-1 mt-2">
                <p className="text-[7.5px] text-white/12 font-bold">Anime Nova © 2025</p>
                <div className="flex items-center gap-1">
                  <div className="w-1.5 h-1.5 bg-emerald-400 rounded-full animate-pulse" />
                  <span className="text-[7.5px] text-emerald-400/50 font-bold">متصل</span>
                </div>
              </div>
            </div>

          </motion.aside>
        </>
      )}
    </AnimatePresence>
  );
}
