import { useEffect, useState, useRef } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { Loader2, Clock, Tv2, Star, ChevronLeft, ChevronRight, CalendarDays } from 'lucide-react';
import { Link } from 'wouter';

const SCHEDULE_QUERY = `
query ($page: Int, $perPage: Int, $weekStart: Int, $weekEnd: Int) {
  Page(page: $page, perPage: $perPage) {
    airingSchedules(airingAt_greater: $weekStart, airingAt_lesser: $weekEnd, sort: TIME) {
      airingAt
      episode
      media {
        id
        title { romaji english }
        coverImage { large extraLarge }
        bannerImage
        averageScore
        popularity
        genres
        episodes
        status
        format
      }
    }
  }
}`;

const DAYS_AR = ['الأحد', 'الاثنين', 'الثلاثاء', 'الأربعاء', 'الخميس', 'الجمعة', 'السبت'];
const DAY_ICONS = ['☀️', '🌙', '🔥', '⭐', '💎', '🌟', '🎯'];
const FORMAT_AR: Record<string, string> = {
  TV: 'مسلسل', MOVIE: 'فيلم', OVA: 'OVA', ONA: 'ONA', SPECIAL: 'خاص', MUSIC: 'موسيقى',
};

function useCountdown(airingAt: number) {
  const [diff, setDiff] = useState(() => airingAt - Math.floor(Date.now() / 1000));
  useEffect(() => {
    const t = setInterval(() => setDiff(airingAt - Math.floor(Date.now() / 1000)), 30000);
    return () => clearInterval(t);
  }, [airingAt]);
  return diff;
}

function Countdown({ airingAt }: { airingAt: number }) {
  const diff = useCountdown(airingAt);
  if (diff <= 0) return <span className="text-[10px] font-bold" style={{ color: "#22c55e" }}>بث الآن ✓</span>;
  const h = Math.floor(diff / 3600);
  const m = Math.floor((diff % 3600) / 60);
  if (diff < 3600) return <span className="text-[10px] font-bold" style={{ color: "#f97316" }}>بعد {m}د</span>;
  if (diff < 86400) return <span className="text-[10px] font-bold" style={{ color: "#a78bfa" }}>بعد {h}س {m}د</span>;
  const d = Math.floor(diff / 86400);
  return <span className="text-[10px] font-bold text-white/40">بعد {d} يوم</span>;
}

function ScoreBadge({ score }: { score: number }) {
  if (!score) return null;
  const pct = score / 10;
  const color = pct >= 8 ? "#22c55e" : pct >= 7 ? "#a78bfa" : pct >= 6 ? "#f59e0b" : "#ef4444";
  return (
    <div className="flex items-center gap-0.5 px-1.5 py-0.5 rounded-lg"
      style={{ background: `${color}18`, border: `1px solid ${color}35` }}>
      <Star className="w-2.5 h-2.5" style={{ color, fill: color }} />
      <span className="text-[10px] font-black font-mono" style={{ color }}>{pct.toFixed(1)}</span>
    </div>
  );
}

function AnimeCard({ item, isToday }: { item: any; isToday: boolean }) {
  const media = item.media;
  const airTime = new Date(item.airingAt * 1000).toLocaleTimeString('ar-SA', { hour: '2-digit', minute: '2-digit', hour12: true });
  const genres = (media?.genres || []).slice(0, 2);
  const isPast = item.airingAt < Math.floor(Date.now() / 1000);

  return (
    <Link href={`/anime/${media?.id}`}>
      <motion.div
        initial={{ opacity: 0, y: 10 }}
        animate={{ opacity: 1, y: 0 }}
        whileTap={{ scale: 0.975 }}
        className="relative flex items-center gap-3 rounded-2xl overflow-hidden cursor-pointer transition-all"
        style={{
          background: isToday
            ? "linear-gradient(135deg, rgba(139,92,246,0.12) 0%, rgba(30,30,50,0.95) 100%)"
            : "rgba(18,18,26,0.95)",
          border: isToday ? "1px solid rgba(139,92,246,0.30)" : "1px solid rgba(255,255,255,0.05)",
          padding: "10px 12px 10px 10px",
          opacity: isPast ? 0.55 : 1,
        }}
      >
        {/* Glow for today */}
        {isToday && !isPast && (
          <div className="absolute inset-0 pointer-events-none rounded-2xl"
            style={{ boxShadow: "inset 0 0 20px rgba(139,92,246,0.06)" }} />
        )}

        {/* Cover */}
        <div className="relative shrink-0 rounded-xl overflow-hidden" style={{ width: 48, height: 66 }}>
          <img
            src={media?.coverImage?.extraLarge || media?.coverImage?.large}
            alt=""
            className="w-full h-full object-cover"
            loading="lazy"
          />
          {isPast && (
            <div className="absolute inset-0 bg-black/50 flex items-center justify-center">
              <span className="text-[8px] font-black text-white/70">بُثّ</span>
            </div>
          )}
        </div>

        {/* Info */}
        <div className="flex-1 min-w-0 text-right">
          <h3 className="text-[13px] font-black text-white leading-snug line-clamp-1 font-['Cairo']">
            {media?.title?.romaji}
          </h3>
          {media?.title?.english && media.title.english !== media.title.romaji && (
            <p className="text-[9.5px] text-white/35 font-['Cairo'] line-clamp-1 mt-0.5">
              {media.title.english}
            </p>
          )}

          {/* Tags row */}
          <div className="flex items-center gap-1.5 mt-1.5 flex-wrap justify-end">
            {genres.map((g: string) => (
              <span key={g} className="text-[8.5px] font-bold px-1.5 py-0.5 rounded-lg"
                style={{ background: "rgba(139,92,246,0.14)", color: "#a78bfa", border: "1px solid rgba(139,92,246,0.20)" }}>
                {g}
              </span>
            ))}
            {media?.format && (
              <span className="text-[8.5px] font-bold px-1.5 py-0.5 rounded-lg"
                style={{ background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                {FORMAT_AR[media.format] || media.format}
              </span>
            )}
          </div>

          {/* Bottom row: ep + time + score */}
          <div className="flex items-center gap-2 mt-2 justify-between">
            <div className="flex items-center gap-1.5">
              <ScoreBadge score={media?.averageScore} />
              <Countdown airingAt={item.airingAt} />
            </div>
            <div className="flex items-center gap-1.5">
              <span className="text-[11px] font-black font-['Cairo']"
                style={{ color: isToday && !isPast ? "#c4b5fd" : "rgba(255,255,255,0.55)" }}>
                ح {item.episode}
              </span>
              <div className="flex items-center gap-0.5 text-[10px]" style={{ color: "rgba(255,255,255,0.28)" }}>
                <Clock className="w-2.5 h-2.5" />
                <span className="font-mono font-bold">{airTime}</span>
              </div>
            </div>
          </div>
        </div>

        {/* Active dot for today + future */}
        {isToday && !isPast && (
          <div className="absolute top-3 left-3 w-1.5 h-1.5 rounded-full"
            style={{ background: "#a78bfa", boxShadow: "0 0 8px rgba(167,139,250,0.80)" }} />
        )}
      </motion.div>
    </Link>
  );
}

export default function Schedule() {
  const [schedule, setSchedule] = useState<Record<string, any[]>>({});
  const [orderedDays, setOrderedDays] = useState<string[]>([]);
  const [activeDay, setActiveDay] = useState<string>('');
  const [loading, setLoading] = useState(true);
  const [todayName, setTodayName] = useState('');
  const dayRefs = useRef<Record<string, HTMLDivElement | null>>({});
  const tabsRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const now = Math.floor(Date.now() / 1000);
    const today = DAYS_AR[new Date().getDay()];
    setTodayName(today);

    // Start from beginning of today (midnight local)
    const todayMidnight = new Date();
    todayMidnight.setHours(0, 0, 0, 0);
    const weekStart = Math.floor(todayMidnight.getTime() / 1000);
    const weekEnd = weekStart + 7 * 86400;

    fetch('https://graphql.anilist.co', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ query: SCHEDULE_QUERY, variables: { page: 1, perPage: 100, weekStart, weekEnd } }),
    })
      .then(r => r.json())
      .then(d => {
        const items: any[] = d.data?.Page?.airingSchedules || [];
        const grouped: Record<string, any[]> = {};
        const dayOrder: string[] = [];

        items.forEach((item: any) => {
          const date = new Date(item.airingAt * 1000);
          const dayIdx = date.getDay();
          const day = DAYS_AR[dayIdx];
          if (!grouped[day]) {
            grouped[day] = [];
            dayOrder.push(day);
          }
          grouped[day].push(item);
        });

        // Sort each day's items by airing time
        Object.values(grouped).forEach(arr => arr.sort((a, b) => a.airingAt - b.airingAt));

        setSchedule(grouped);
        setOrderedDays(dayOrder);
        setActiveDay(grouped[today] ? today : dayOrder[0] || '');
      })
      .finally(() => setLoading(false));
  }, []);

  const scrollToDay = (day: string) => {
    setActiveDay(day);
    dayRefs.current[day]?.scrollIntoView({ behavior: 'smooth', block: 'start' });
  };

  // Intersection observer to update active tab on scroll
  useEffect(() => {
    if (!orderedDays.length) return;
    const observer = new IntersectionObserver(
      entries => {
        for (const entry of entries) {
          if (entry.isIntersecting) {
            const day = entry.target.getAttribute('data-day');
            if (day) setActiveDay(day);
          }
        }
      },
      { threshold: 0.3, rootMargin: '-60px 0px -60% 0px' }
    );
    orderedDays.forEach(day => {
      const el = dayRefs.current[day];
      if (el) observer.observe(el);
    });
    return () => observer.disconnect();
  }, [orderedDays]);

  if (loading) return (
    <div className="bg-[#08080F] min-h-screen flex flex-col items-center justify-center gap-4 font-['Cairo']">
      <div className="relative">
        <div className="w-16 h-16 rounded-full"
          style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.25)" }} />
        <CalendarDays className="absolute inset-0 m-auto w-7 h-7 text-violet-400" />
      </div>
      <div className="text-center">
        <p className="text-white/60 text-sm font-bold">جاري تحميل الجدول</p>
        <Loader2 className="w-4 h-4 text-violet-400 animate-spin mx-auto mt-2" />
      </div>
    </div>
  );

  const totalItems = Object.values(schedule).reduce((s, a) => s + a.length, 0);

  return (
    <div className="bg-[#08080F] min-h-screen text-white font-['Cairo']" dir="rtl">

      {/* ── Header ── */}
      <div className="px-4 pt-5 pb-3">
        <div className="flex items-end justify-between mb-1">
          <div>
            <h1 className="text-[22px] font-black leading-tight tracking-tight">جدول البث</h1>
            <p className="text-white/35 text-[12px] mt-0.5">
              {totalItems} حلقة هذا الأسبوع
            </p>
          </div>
          <div className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl"
            style={{ background: "rgba(139,92,246,0.14)", border: "1px solid rgba(139,92,246,0.25)" }}>
            <CalendarDays className="w-3.5 h-3.5 text-violet-400" />
            <span className="text-[11px] font-black text-violet-300">اليوم: {todayName}</span>
          </div>
        </div>
      </div>

      {/* ── Day Tabs (sticky) ── */}
      <div
        ref={tabsRef}
        className="sticky top-0 z-30 overflow-x-auto scrollbar-hide px-4 py-2 flex items-center gap-2"
        style={{
          background: "rgba(8,8,15,0.92)",
          backdropFilter: "blur(20px)",
          borderBottom: "1px solid rgba(255,255,255,0.05)",
        }}
      >
        {orderedDays.map((day, i) => {
          const isActive = activeDay === day;
          const isToday = day === todayName;
          const count = schedule[day]?.length || 0;
          const dayIdx = DAYS_AR.indexOf(day);
          return (
            <motion.button
              key={day}
              onClick={() => scrollToDay(day)}
              whileTap={{ scale: 0.93 }}
              className="flex flex-col items-center gap-0.5 shrink-0 px-3 py-1.5 rounded-2xl transition-all"
              style={{
                background: isActive
                  ? "linear-gradient(135deg, rgba(139,92,246,0.35), rgba(109,40,217,0.25))"
                  : isToday
                  ? "rgba(139,92,246,0.10)"
                  : "rgba(255,255,255,0.04)",
                border: isActive
                  ? "1px solid rgba(139,92,246,0.55)"
                  : isToday
                  ? "1px solid rgba(139,92,246,0.22)"
                  : "1px solid rgba(255,255,255,0.06)",
                minWidth: 52,
              }}
            >
              <span className="text-base leading-none">{DAY_ICONS[dayIdx]}</span>
              <span className="text-[10px] font-black leading-tight"
                style={{ color: isActive ? "#e2d9fc" : isToday ? "#a78bfa" : "rgba(255,255,255,0.50)" }}>
                {day}
              </span>
              <span className="text-[8px] font-bold font-mono"
                style={{ color: isActive ? "#c4b5fd" : "rgba(255,255,255,0.25)" }}>
                {count}
              </span>
            </motion.button>
          );
        })}
      </div>

      {/* ── Content ── */}
      <div className="pb-28">
        {orderedDays.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 gap-4">
            <CalendarDays className="w-12 h-12 text-white/15" />
            <p className="text-white/35 text-sm font-bold">لا توجد بيانات للجدول</p>
          </div>
        ) : orderedDays.map((day, di) => {
          const items: any[] = schedule[day] || [];
          const isToday = day === todayName;
          const dayIdx = DAYS_AR.indexOf(day);
          const pastCount = items.filter(i => i.airingAt < Math.floor(Date.now() / 1000)).length;
          const upcomingCount = items.length - pastCount;

          return (
            <div
              key={day}
              data-day={day}
              ref={el => { dayRefs.current[day] = el; }}
              className="pt-5 px-4"
            >
              {/* Day Header */}
              <div className="flex items-center justify-between mb-3">
                <div className="flex items-center gap-2.5">
                  {/* Accent bar */}
                  <div className="w-1 rounded-full"
                    style={{
                      height: 28,
                      background: isToday
                        ? "linear-gradient(180deg, #8b5cf6, #6d28d9)"
                        : "linear-gradient(180deg, rgba(255,255,255,0.20), rgba(255,255,255,0.06))",
                      boxShadow: isToday ? "0 0 10px rgba(139,92,246,0.60)" : "none",
                    }} />
                  <div>
                    <div className="flex items-center gap-1.5">
                      <span className="text-xl leading-none">{DAY_ICONS[dayIdx]}</span>
                      <h2 className="text-[16px] font-black leading-tight"
                        style={{ color: isToday ? "#e2d9fc" : "rgba(255,255,255,0.88)" }}>
                        {day}
                      </h2>
                      {isToday && (
                        <motion.span
                          initial={{ scale: 0.8, opacity: 0 }}
                          animate={{ scale: 1, opacity: 1 }}
                          className="text-[9px] font-black px-2 py-0.5 rounded-full"
                          style={{
                            background: "linear-gradient(135deg, rgba(139,92,246,0.40), rgba(109,40,217,0.30))",
                            border: "1px solid rgba(139,92,246,0.55)",
                            color: "#c4b5fd",
                          }}>
                          اليوم
                        </motion.span>
                      )}
                    </div>
                  </div>
                </div>
                {/* Stats */}
                <div className="flex items-center gap-2 text-[10px]">
                  {upcomingCount > 0 && (
                    <div className="flex items-center gap-1 px-2 py-1 rounded-xl"
                      style={{ background: "rgba(167,139,250,0.10)", border: "1px solid rgba(167,139,250,0.18)" }}>
                      <Tv2 className="w-2.5 h-2.5 text-violet-400" />
                      <span className="font-bold text-violet-300">{upcomingCount}</span>
                    </div>
                  )}
                  {pastCount > 0 && (
                    <span className="text-white/25 font-bold">{pastCount} بُثّ</span>
                  )}
                </div>
              </div>

              {/* Cards */}
              <div className="space-y-2">
                <AnimatePresence>
                  {items.map((item, ii) => (
                    <motion.div
                      key={item.media?.id || ii}
                      initial={{ opacity: 0, x: -8 }}
                      animate={{ opacity: 1, x: 0 }}
                      transition={{ delay: Math.min(ii * 0.04, 0.3), duration: 0.24 }}
                    >
                      <AnimeCard item={item} isToday={isToday} />
                    </motion.div>
                  ))}
                </AnimatePresence>
              </div>

              {/* Separator */}
              {di < orderedDays.length - 1 && (
                <div className="mt-5 h-px"
                  style={{ background: "linear-gradient(90deg, transparent, rgba(255,255,255,0.06) 30%, rgba(255,255,255,0.06) 70%, transparent)" }} />
              )}
            </div>
          );
        })}
      </div>
    </div>
  );
}
