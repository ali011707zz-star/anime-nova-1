import { useState, useEffect, useMemo } from "react";
import { useParams, useLocation, useSearch, Link } from "wouter";
import { ChevronRight, Play, Clock, ChevronDown } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_S = "https://image.tmdb.org/t/p/w185";

interface Episode {
  episode_number: number;
  name: string;
  overview?: string;
  still_path?: string;
  runtime?: number;
}

interface Season { id: number; season_number: number; name: string; episode_count: number }

export default function AnimationEpisodes() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const search = useSearch();
  const [, navigate] = useLocation();

  const initSeason = parseInt(new URLSearchParams(search).get("season") || "1", 10) || 1;

  const [detail, setDetail]       = useState<any>(null);
  const [selSeason, setSelSeason] = useState(initSeason);
  const [episodes, setEpisodes]   = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(true);
  const [seasonOpen, setSeasonOpen] = useState(false);
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});

  useEffect(() => {
    if (!id) return;
    fetch(`/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(d => setDetail(d))
      .catch(() => {});
  }, [type, id]);

  useEffect(() => {
    if (!id) return;
    setEpLoading(true);
    fetch(`/api/animation/season?id=${id}&season=${selSeason}`)
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
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3">
        <div className="flex items-center gap-3">
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

          {/* Season selector */}
          {seasons.length > 1 && (
            <div className="relative shrink-0">
              <button
                onClick={() => setSeasonOpen(o => !o)}
                className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/8 border border-white/10 text-[11px] font-black text-white/70 font-['Cairo'] active:scale-95"
              >
                {currentSeason?.name || `موسم ${selSeason}`}
                <ChevronDown className={`w-3 h-3 transition-transform ${seasonOpen ? "rotate-180" : ""}`} />
              </button>
              <AnimatePresence>
                {seasonOpen && (
                  <motion.div
                    initial={{ opacity: 0, scale: 0.95, y: -5 }}
                    animate={{ opacity: 1, scale: 1, y: 0 }}
                    exit={{ opacity: 0, scale: 0.95, y: -5 }}
                    className="absolute left-0 top-full mt-1 bg-[#111116] border border-white/10 rounded-2xl overflow-hidden shadow-2xl z-30 min-w-[150px] max-h-60 overflow-y-auto"
                  >
                    {seasons.map(s => (
                      <button
                        key={s.id}
                        onClick={() => { setSelSeason(s.season_number); setSeasonOpen(false); }}
                        className={`w-full text-right px-4 py-2.5 text-[11px] font-black font-['Cairo'] border-b border-white/5 last:border-0 transition-colors ${
                          s.season_number === selSeason ? "text-primary bg-primary/10" : "text-white/60 hover:bg-white/5"
                        }`}
                      >
                        {s.name}
                        <span className="block text-[9px] font-normal text-white/25">{s.episode_count} حلقة</span>
                      </button>
                    ))}
                  </motion.div>
                )}
              </AnimatePresence>
            </div>
          )}
        </div>
      </div>

      {/* ── Episode count ── */}
      {!epLoading && episodes.length > 0 && (
        <div className="px-4 py-3 text-[10px] text-white/30 font-['Cairo']">
          {episodes.length} حلقة {currentSeason ? `— ${currentSeason.name}` : ""}
        </div>
      )}

      {/* ── Episodes ── */}
      <div className="px-4 space-y-2">
        {epLoading ? (
          <div className="flex justify-center py-20">
            <div className="w-7 h-7 border-2 border-primary border-t-transparent rounded-full animate-spin" />
          </div>
        ) : episodes.length === 0 ? (
          <p className="text-center text-white/25 text-sm font-['Cairo'] py-16">لا توجد حلقات لهذا الموسم</p>
        ) : (
          episodes.map(epItem => {
            const progressSec  = epProgress[epItem.episode_number] || 0;
            const estDuration  = (epItem.runtime || 24) * 60;
            const progressPct  = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
            const watched      = progressPct >= 90;
            return (
              <Link key={epItem.episode_number} href={watchUrl(epItem.episode_number)}>
                <motion.div
                  whileTap={{ scale: 0.97 }}
                  className={`flex items-center gap-3 p-3 rounded-2xl border active:bg-white/8 transition-colors ${
                    watched ? "bg-white/4 border-white/4 opacity-60" : "bg-[#111116] border-white/6"
                  }`}
                >
                  {/* Thumbnail */}
                  <div className="w-[80px] h-[48px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0 relative">
                    {epItem.still_path
                      ? <img src={`${IMG_S}${epItem.still_path}`} alt="" className="w-full h-full object-cover" />
                      : <div className="w-full h-full flex items-center justify-center"><Play className="w-4 h-4 text-white/20" /></div>
                    }
                    <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent" />
                    <div className="absolute bottom-1 left-1 text-[8px] font-black text-white/70 bg-black/50 px-1 rounded font-mono">
                      {epItem.episode_number}
                    </div>
                    {progressPct > 0 && !watched && (
                      <div className="absolute bottom-0 left-0 right-0 h-[3px] bg-white/20">
                        <div className="h-full bg-primary transition-all" style={{ width: `${progressPct}%` }} />
                      </div>
                    )}
                    {watched && (
                      <div className="absolute inset-0 flex items-center justify-center bg-black/40">
                        <div className="w-4 h-4 rounded-full bg-emerald-500/80 flex items-center justify-center">
                          <svg viewBox="0 0 12 12" className="w-2.5 h-2.5 text-white">
                            <path d="M2 6l3 3 5-5" stroke="currentColor" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" fill="none" />
                          </svg>
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Info */}
                  <div className="flex-1 min-w-0 text-right">
                    <p className="text-[11px] font-black text-white line-clamp-1 font-['Cairo']">{epItem.name}</p>
                    {epItem.overview && (
                      <p className="text-[9.5px] text-white/30 line-clamp-2 font-['Cairo'] mt-0.5 leading-snug">{epItem.overview}</p>
                    )}
                    <div className="flex items-center gap-2 mt-1">
                      {epItem.runtime && (
                        <div className="flex items-center gap-1">
                          <Clock className="w-2.5 h-2.5 text-white/20" />
                          <span className="text-[8.5px] text-white/20 font-['Cairo']">{epItem.runtime} دق</span>
                        </div>
                      )}
                      {progressSec > 30 && !watched && (
                        <span className="text-[8.5px] text-primary/60 font-['Cairo']">
                          {Math.floor(progressSec / 60)}:{String(Math.floor(progressSec % 60)).padStart(2, "0")}
                        </span>
                      )}
                    </div>
                  </div>

                  <Play className="w-4 h-4 text-primary flex-shrink-0" />
                </motion.div>
              </Link>
            );
          })
        )}
      </div>
    </main>
  );
}
