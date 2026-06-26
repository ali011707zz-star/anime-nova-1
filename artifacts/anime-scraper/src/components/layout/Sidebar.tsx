import { useState } from "react";
import { motion, AnimatePresence } from 'framer-motion';
import { useLocation } from 'wouter';
import {
  X, Home, Search, Heart, History,
  Library, Film, Settings, CalendarDays,
  ChevronLeft, ChevronDown, User, LogIn,
  Tv2, Zap, Bell, Tv,
} from 'lucide-react';
import { useAuth } from '@/lib/auth-context';

interface SidebarProps { open: boolean; onClose: () => void; }

export function Sidebar({ open, onClose }: SidebarProps) {
  const [location, navigate] = useLocation();
  const { user } = useAuth();
  const [libExpanded, setLibExpanded] = useState(false);

  const watchCount = (() => {
    try {
      const a = JSON.parse(localStorage.getItem('watch-history')      || '[]').length;
      const b = JSON.parse(localStorage.getItem('anim-watch-history') || '[]').length;
      return a + b;
    } catch { return 0; }
  })();
  const favCount = (() => {
    try { return JSON.parse(localStorage.getItem('savedAnime') || '[]').length; } catch { return 0; }
  })();

  const hasNewUpdates = (() => {
    try {
      const seen = localStorage.getItem('updates-last-seen');
      if (!seen) return true;
      return false;
    } catch { return false; }
  })();

  const isActive = (href: string) =>
    href === '/' ? (location === '/' || location === '') : location.startsWith(href);

  const go = (href: string) => { onClose(); navigate(href); };

  const NavRow = ({
    icon: Icon, label, href, badge, dot, sub,
  }: { icon: any; label: string; href: string; badge?: number | null; dot?: boolean; sub?: string }) => {
    const active = isActive(href);
    return (
      <button onClick={() => go(href)}
        className={`w-full flex items-center gap-3 px-3 py-2.5 rounded-xl cursor-pointer transition-all text-right
          ${active ? 'text-white' : 'text-white/45 hover:text-white/75 hover:bg-white/[0.04]'}`}
        style={active ? {
          background: 'linear-gradient(135deg,rgba(124,58,237,0.18),rgba(79,70,229,0.10))',
          border: '1px solid rgba(139,92,246,0.22)',
        } : { border: '1px solid transparent' }}>
        <Icon className={`w-[15px] h-[15px] shrink-0 ${active ? 'text-violet-400' : ''}`} strokeWidth={active ? 2.5 : 1.8} />
        <div className="flex-1 min-w-0 text-right">
          <span className="text-[13px] font-bold font-['Cairo']">{label}</span>
          {sub && <p className="text-[9px] text-white/22 font-['Cairo'] mt-0.5">{sub}</p>}
        </div>
        {dot && (
          <span className="w-2 h-2 rounded-full bg-violet-400 animate-pulse shrink-0" />
        )}
        {badge != null && badge > 0 && (
          <span className="text-[9px] font-black px-1.5 py-0.5 rounded-full font-['Cairo']"
            style={{
              background: active ? 'rgba(139,92,246,0.25)' : 'rgba(255,255,255,0.08)',
              color:      active ? '#c4b5fd' : 'rgba(255,255,255,0.35)',
            }}>{badge}</span>
        )}
        {active && !dot && !badge && <div className="w-1 h-1 rounded-full bg-violet-400 animate-pulse shrink-0" />}
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
                <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0 overflow-hidden"
                  style={{ background: 'linear-gradient(135deg,#7C3AED,#4F46E5)', boxShadow: '0 4px 14px rgba(124,58,237,0.45)' }}>
                  <svg viewBox="0 0 32 32" fill="none" className="w-5 h-5">
                    <rect x="4" y="7" width="24" height="16" rx="3" fill="white" fillOpacity="0.15"/>
                    <rect x="4" y="7" width="24" height="16" rx="3" stroke="white" strokeOpacity="0.4" strokeWidth="1"/>
                    <path d="M12 11.5L22 16L12 20.5V11.5Z" fill="white"/>
                    <rect x="11" y="23" width="10" height="1.5" rx="0.75" fill="white" fillOpacity="0.4"/>
                    <rect x="14" y="24.5" width="4" height="1.5" rx="0.75" fill="white" fillOpacity="0.3"/>
                  </svg>
                </div>
                <div className="flex items-baseline gap-[4px]">
                  <span className="text-[16px] font-black tracking-tight" style={{ fontFamily: "'Cairo',sans-serif", background: 'linear-gradient(135deg,#C4B5FD,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                  <span className="text-[16px] font-black tracking-tight text-white/80" style={{ fontFamily: "'Cairo',sans-serif" }}>ANIME</span>
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

              {/* Stats — compact single line */}
              <div className="flex gap-1.5 mt-1.5">
                <div className="flex items-center gap-1 rounded-lg px-2 py-1" style={{ background: 'rgba(255,255,255,0.03)' }}>
                  <History className="w-2.5 h-2.5 shrink-0 text-violet-400" />
                  <span className="text-[9px] font-black text-white/35 font-['Cairo']">{watchCount} مشاهدة</span>
                </div>
                <div className="flex items-center gap-1 rounded-lg px-2 py-1" style={{ background: 'rgba(255,255,255,0.03)' }}>
                  <Heart className="w-2.5 h-2.5 shrink-0 text-rose-400" />
                  <span className="text-[9px] font-black text-white/35 font-['Cairo']">{favCount} مفضلة</span>
                </div>
              </div>
            </div>

            {/* ── SCROLLABLE BODY ── */}
            <div className="flex-1 overflow-y-auto py-3 space-y-4" style={{ scrollbarWidth: 'none' }}>

              {/* الرئيسي */}
              <div className="px-3">
                <SectionLabel>الرئيسية</SectionLabel>
                <div className="space-y-0.5">
                  <NavRow icon={Home}         label="الرئيسية"          href="/" />
                  <NavRow icon={Search}       label="البحث"              href="/search" />
                  <NavRow icon={Tv2}          label="الأنمي"             href="/browse" />
                  <NavRow icon={Film}         label="الأنيميشن والأفلام" href="/animations" />
                  <NavRow icon={Tv}          label="كرتون مدبلج"       href="/dubbed" />
                  <NavRow icon={CalendarDays} label="الجدول الأسبوعي"   href="/schedule" />
                </div>
              </div>

              <Divider />

              {/* المكتبة — قابلة للطيّ */}
              <div className="px-3">
                <SectionLabel>مكتبتي</SectionLabel>
                <button
                  onClick={() => setLibExpanded(v => !v)}
                  className={`w-full flex items-center gap-3 px-3 py-2.5 rounded-xl transition-all text-right
                    ${isActive('/library') || isActive('/history') ? 'text-white' : 'text-white/45 hover:text-white/75 hover:bg-white/[0.04]'}`}
                  style={(isActive('/library') || isActive('/history')) ? {
                    background: 'linear-gradient(135deg,rgba(124,58,237,0.14),rgba(79,70,229,0.08))',
                    border: '1px solid rgba(139,92,246,0.18)',
                  } : { border: '1px solid transparent' }}>
                  <Library className={`w-[15px] h-[15px] shrink-0 ${(isActive('/library') || isActive('/history')) ? 'text-violet-400' : ''}`} strokeWidth={1.8} />
                  <span className="flex-1 text-[13px] font-bold font-['Cairo'] text-right">مكتبتي</span>
                  <motion.div animate={{ rotate: libExpanded ? 180 : 0 }} transition={{ duration: 0.2 }}>
                    <ChevronDown className="w-3.5 h-3.5 text-white/25 shrink-0" />
                  </motion.div>
                </button>

                <AnimatePresence>
                  {libExpanded && (
                    <motion.div
                      initial={{ height: 0, opacity: 0 }}
                      animate={{ height: 'auto', opacity: 1 }}
                      exit={{ height: 0, opacity: 0 }}
                      transition={{ duration: 0.22, ease: 'easeInOut' }}
                      className="overflow-hidden">
                      <div className="pt-0.5 pr-4 space-y-0.5">
                        <NavRow icon={Heart}   label="المفضلة"       href="/library" badge={favCount} />
                        <NavRow icon={History} label="سجل المشاهدة" href="/history" badge={watchCount > 0 ? watchCount : null} />
                      </div>
                    </motion.div>
                  )}
                </AnimatePresence>
              </div>

              <Divider />

              {/* أخرى */}
              <div className="px-3">
                <SectionLabel>أخرى</SectionLabel>
                <div className="space-y-0.5">
                  <NavRow
                    icon={Zap}
                    label="التحديثات"
                    href="/updates"
                    dot={hasNewUpdates}
                    sub="آخر الميزات والإصلاحات"
                  />
                  <NavRow icon={Settings} label="الإعدادات" href="/settings" sub="المظهر · الحساب · المعلومات" />
                </div>
              </div>

              {/* بطاقة تعريفية */}
              <div className="mx-4 rounded-2xl p-3 text-center"
                style={{ background: 'rgba(255,255,255,0.025)', border: '1px solid rgba(255,255,255,0.05)' }}>
                <div className="flex items-center justify-center gap-1 mb-0.5" dir="ltr">
                  <span className="text-[13px] font-black text-white/70">ANIME</span>
                  <span className="text-[13px] font-black"
                    style={{ background: 'linear-gradient(135deg,#A78BFA,#7C3AED)', WebkitBackgroundClip: 'text', WebkitTextFillColor: 'transparent' }}>NOVA</span>
                </div>
                <p className="text-[8px] text-white/20 font-['Cairo']">الإصدار 2.4 · 10+ مصادر · مجاني تماماً</p>
              </div>
            </div>

            {/* ── FOOTER ── */}
            <div className="shrink-0 px-3 pt-2 pb-4" style={{ borderTop: '1px solid rgba(255,255,255,0.05)' }}>
              <div className="flex items-center justify-between px-1">
                <p className="text-[7.5px] text-white/12 font-bold">Anime NOVA © 2025</p>
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
