import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useMemo, useRef } from "react";
import { AnimeMascot } from "@/components/AnimeMascot";
import { useParams, useLocation, useSearch, Link } from "wouter";
import { ChevronRight, Play, Clock } from "lucide-react";
import { motion } from "framer-motion";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_S = "https://image.tmdb.org/t/p/w185";

interface Episode {
  episode_number: number;
  name: string;
  overview?: string;
  still_path?: string;
  runtime?: number;
}

interface Season { id: number; season_number: number; name: string; episode_count: number; poster_path?: string; air_date?: string; }

export default function AnimationEpisodes() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const search = useSearch();
  const [, navigate] = useLocation();

  const initSeason = parseInt(new URLSearchParams(search).get("season") || "1", 10) || 1;

  const [detail, setDetail]       = useState<any>(null);
  const [selSeason, setSelSeason] = useState(initSeason);
  const [episodes, setEpisodes]   = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(true);
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});

  const tabsRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    if (!id) return;
    fetch(`${API_BASE}/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(d => setDetail(d))
      .catch(() => {});
  }, [type, id]);

  useEffect(() => {
    if (!id) return;
    setEpLoading(true);
    fetch(`${API_BASE}/api/animation/season?id=${id}&season=${selSeason}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [id, selSeason]);

  useEffect(() => {
    if (!episodes.length) return;
    const prog: Record<number, number> = {};
    episodes.forEach(ep => {
      const key = `anim-wp-${id}-tv-${selSeason}-${ep.episode_number}`;
      const t = parseFloat(localStorage.getItem(key) || "0");
      if (t > 0) prog[ep.episode_number] = t;
    });
    setEpProgress(prog);
  }, [episodes, id, selSeason]);

  /* Scroll active season tab into view */
  useEffect(() => {
    if (!tabsRef.current) return;
    const active = tabsRef.current.querySelector("[data-active='true']") as HTMLElement | null;
    if (active) active.scrollIntoView({ inline: "center", block: "nearest", behavior: "smooth" });
  }, [selSeason, detail]);

  const seasons: Season[] = useMemo(
    () => (detail?.seasons || []).filter((s: Season) => s.season_number > 0),
    [detail]
  );
  const currentSeason = seasons.find(s => s.season_number === selSeason);

  const title = detail
    ? (detail.original_title || detail.original_name || detail.title || detail.name || "الحلقات")
    : "الحلقات";

  const watchUrl = (ep: number) => {
    const t = encodeURIComponent(title);
    const poster = encodeURIComponent(
      detail?.poster_path ? `${IMG_W}${detail.poster_path}` : ""
    );
    return `/animation/watch?title=${t}&type=${type}&id=${id}&ep=${ep}&season=${selSeason}&poster=${poster}`;
  };

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button
            onClick={() => navigate(`/animation/${type}/${id}`)}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform"
          >
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>

          <div className="flex-1 min-w-0">
            <p className="text-[10px] text-white/30 font-['Cairo']">الحلقات</p>
            <h1 className="text-[14px] font-black text-white font-['Cairo'] truncate leading-tight">{title}</h1>
          </div>

          {currentSeason && (
            <div className="shrink-0 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
              style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "rgba(196,181,253,0.90)" }}>
              {episodes.length > 0 ? `${episodes.length} حلقة` : currentSeason.name}
            </div>
          )}
        </div>

        {/* Season tabs — visual cards */}
        {seasons.length > 1 && (
          <div ref={tabsRef} className="flex gap-2.5 px-4 pb-3.5 overflow-x-auto" style={{ scrollbarWidth: "none" }}>
            {seasons.map(s => {
              const isActive = s.season_number === selSeason;
              return (
                <button
                  key={s.id}
                  data-active={isActive}
                  onClick={() => setSelSeason(s.season_number)}
                  className="shrink-0 relative overflow-hidden transition-all active:scale-95"
                  style={{
                    borderRadius: 14,
                    width: 80,
                    height: 108,
                    border: isActive ? "1.5px solid rgba(167,139,250,0.55)" : "1px solid rgba(255,255,255,0.08)",
                    boxShadow: isActive ? "0 0 22px rgba(139,92,246,0.22), 0 4px 16px rgba(0,0,0,0.45)" : "0 2px 8px rgba(0,0,0,0.30)",
                    transform: isActive ? "scale(1.04)" : "scale(1)",
                  }}
                >
                  {/* Poster background */}
                  {s.poster_path ? (
                    <img
                      src={`https://image.tmdb.org/t/p/w185${s.poster_path}`}
                      alt=""
                      className="absolute inset-0 w-full h-full object-cover"
                    />
                  ) : (
                    <div className="absolute inset-0" style={{
                      background: isActive
                        ? "linear-gradient(145deg, rgba(109,40,217,0.80), rgba(139,92,246,0.40))"
                        : "linear-gradient(145deg, rgba(30,20,55,0.90), rgba(15,10,30,0.95))",
                    }} />
                  )}

                  {/* Overlay gradient */}
                  <div className="absolute inset-0"
                    style={{ background: "linear-gradient(to top, rgba(0,0,0,0.88) 0%, rgba(0,0,0,0.40) 55%, rgba(0,0,0,0.15) 100%)" }} />

                  {/* Active indicator glow */}
                  {isActive && (
                    <div className="absolute inset-0" style={{ background: "rgba(139,92,246,0.18)" }} />
                  )}

                  {/* Content */}
                  <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-1.5 text-center">
                    <p className="text-[8px] font-black font-['Cairo'] leading-tight"
                      style={{ color: isActive ? "#c4b5fd" : "rgba(255,255,255,0.70)" }}>
                      {s.name || `الموسم ${s.season_number}`}
                    </p>
                    <p className="text-[7px] font-mono mt-[2px]"
                      style={{ color: isActive ? "rgba(196,181,253,0.65)" : "rgba(255,255,255,0.28)" }}>
                      {s.episode_count} حلقة
                    </p>
                  </div>

                  {/* Active dot */}
                  {isActive && (
                    <div className="absolute top-1.5 right-1.5 w-1.5 h-1.5 rounded-full bg-violet-400"
                      style={{ boxShadow: "0 0 6px rgba(167,139,250,0.80)" }} />
                  )}
                </button>
              );
            })}
          </div>
        )}
      </div>

      {/* ── Episodes ── */}
      <div className="px-4 mt-4 space-y-2">
        {epLoading ? (
          <div className="flex flex-col items-center justify-center py-12 gap-2">
            <AnimeMascot mood="loading" />
            <p className="text-white/30 text-[11px] font-['Cairo']">جاري تحميل الحلقات…</p>
          </div>
        ) : episodes.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4">
            <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/6 flex items-center justify-center">
              <Play className="w-6 h-6 text-white/15" />
            </div>
            <p className="text-white/25 text-sm font-['Cairo']">لا توجد حلقات لهذا الموسم</p>
          </div>
        ) : (
          episodes.map((epItem, i) => {
            const progressSec  = epProgress[epItem.episode_number] || 0;
            const estDuration  = (epItem.runtime || 24) * 60;
            const progressPct  = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
            const watched      = progressPct >= 90;
            return (
              <Link key={epItem.episode_number} href={watchUrl(epItem.episode_number)}>
                <motion.div
                  initial={{ opacity: 0, y: 8 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: Math.min(i * 0.025, 0.3), duration: 0.2 }}
                  whileTap={{ scale: 0.97 }}
                  className={`flex items-center gap-3 p-3 rounded-2xl border active:bg-white/8 transition-colors ${
                    watched ? "bg-white/3 border-white/4 opacity-55" : "bg-[#111116] border-white/6"
                  }`}
                >
                  {/* Thumbnail */}
                  <div className="w-[88px] h-[52px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0 relative">
                    {epItem.still_path
                      ? <img src={`${IMG_S}${epItem.still_path}`} alt="" className="w-full h-full object-cover" />
                      : <div className="w-full h-full flex items-center justify-center">
                          <Play className="w-4 h-4 text-white/15" />
                        </div>
                    }
                    <div className="absolute inset-0 bg-gradient-to-t from-black/55 to-transparent" />
                    {/* Episode number badge */}
                    <div className="absolute bottom-1 right-1.5 text-[8px] font-black text-white/75 bg-black/55 px-1.5 py-[2px] rounded-md font-mono backdrop-blur-sm">
                      {epItem.episode_number}
                    </div>
                    {/* Progress bar */}
                    {progressPct > 0 && !watched && (
                      <div className="absolute bottom-0 left-0 right-0 h-[3px] bg-white/15">
                        <div className="h-full bg-primary transition-all" style={{ width: `${progressPct}%` }} />
                      </div>
                    )}
                    {/* Watched checkmark */}
                    {watched && (
                      <div className="absolute inset-0 flex items-center justify-center bg-black/45">
                        <div className="w-5 h-5 rounded-full bg-emerald-500/85 flex items-center justify-center">
                          <svg viewBox="0 0 12 12" className="w-3 h-3 text-white">
                            <path d="M2 6l3 3 5-5" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" fill="none" />
                          </svg>
                        </div>
                      </div>
                    )}
                    {/* Play overlay on hover/tap */}
                    {!watched && (
                      <div className="absolute inset-0 flex items-center justify-center opacity-0 active:opacity-100 transition-opacity bg-black/30">
                        <div className="w-7 h-7 rounded-full bg-primary/80 flex items-center justify-center">
                          <Play className="w-3.5 h-3.5 text-white fill-white" />
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Info */}
                  <div className="flex-1 min-w-0 text-right">
                    <p className="text-[12px] font-black text-white line-clamp-1 font-['Cairo'] leading-tight">{epItem.name}</p>
                    {epItem.overview && (
                      <p className="text-[9.5px] text-white/28 line-clamp-2 font-['Cairo'] mt-0.5 leading-snug">{epItem.overview}</p>
                    )}
                    <div className="flex items-center gap-2 mt-1 flex-wrap">
                      {epItem.runtime && (
                        <div className="flex items-center gap-1">
                          <Clock className="w-2.5 h-2.5 text-white/20" />
                          <span className="text-[8.5px] text-white/22 font-['Cairo']">{epItem.runtime < 60 ? `${epItem.runtime} دقيقة` : `${Math.floor(epItem.runtime/60)} ساعة${epItem.runtime%60>0?` ${epItem.runtime%60} دقيقة`:""}`}</span>
                        </div>
                      )}
                      {progressSec > 30 && !watched && (
                        <span className="text-[8.5px] text-primary/65 font-['Cairo'] font-bold">
                          {Math.floor(progressSec / 60)}:{String(Math.floor(progressSec % 60)).padStart(2, "0")} ▶
                        </span>
                      )}
                    </div>
                  </div>

                  {/* Play icon */}
                  <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                    style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.22)" }}>
                    <Play className="w-3.5 h-3.5 text-primary fill-primary" />
                  </div>
                </motion.div>
              </Link>
            );
          })
        )}
      </div>
    </main>
  );
}
