import { useState, useEffect } from "react";
import { useParams, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Star, Calendar, Clock,
  Tv, Film, ChevronDown, Sparkles, List,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_O = "https://image.tmdb.org/t/p/original";
const IMG_S = "https://image.tmdb.org/t/p/w185";

interface Episode {
  episode_number: number;
  name: string;
  overview?: string;
  still_path?: string;
  air_date?: string;
  runtime?: number;
}

interface Season { id: number; season_number: number; name: string; episode_count: number; poster_path?: string }

export default function AnimationDetail() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const [, navigate] = useLocation();

  const [detail,   setDetail]   = useState<any>(null);
  const [loading,  setLoading]  = useState(true);
  const [showFull, setShowFull] = useState(false);
  const [selSeason, setSelSeason] = useState(1);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [seasonOpen, setSeasonOpen] = useState(false);

  // Fetch detail
  useEffect(() => {
    setLoading(true); setDetail(null);
    fetch(`/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(d => { setDetail(d); setLoading(false); })
      .catch(() => setLoading(false));
  }, [type, id]);

  // Fetch episodes when season changes
  useEffect(() => {
    if (type !== "tv" || !detail) return;
    setEpLoading(true);
    fetch(`/api/animation/season?id=${id}&season=${selSeason}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [type, id, selSeason, detail]);

  const watchUrl = (ep?: number) => {
    const title = encodeURIComponent(detail?.title || detail?.name || "");
    const poster = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    const epStr  = ep != null ? `&ep=${ep}&season=${selSeason}` : "";
    return `/animation/watch?title=${title}&type=${type}&id=${id}${epStr}&poster=${poster}`;
  };

  if (loading) return (
    <div className="bg-[var(--bg-base)] min-h-screen flex items-center justify-center">
      <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}>
        <Sparkles className="w-8 h-8 text-primary" />
      </motion.div>
    </div>
  );

  if (!detail) return (
    <div className="bg-[var(--bg-base)] min-h-screen flex flex-col items-center justify-center gap-4" dir="rtl">
      <p className="text-white/40 font-['Cairo']">لم يتم العثور على البيانات</p>
      <button onClick={() => navigate("/animations")} className="text-primary text-sm font-['Cairo'] font-black">العودة للمكتبة</button>
    </div>
  );

  const title   = detail.title || detail.name || "—";
  const year    = (detail.release_date || detail.first_air_date || "").slice(0, 4);
  const runtime = detail.runtime || (detail.episode_run_time?.[0]) || 0;
  const score   = detail.vote_average || 0;
  const genres: { id: number; name: string }[] = detail.genres || [];
  const overview = detail.overview || "";
  const seasons: Season[] = (detail.seasons || []).filter((s: Season) => s.season_number > 0);
  const currentSeason = seasons.find(s => s.season_number === selSeason);
  const cast = (detail.credits?.cast || detail.aggregate_credits?.cast || []).slice(0, 8);
  const recs: any[] = (detail.recommendations?.results || []).slice(0, 8);
  const studios = (detail.production_companies || []).slice(0, 2).map((c: any) => c.name).join(" · ");

  return (
    <div className="min-h-screen bg-[var(--bg-base)]" dir="rtl">
      {/* ── Banner ── */}
      <div className="relative w-full h-[260px]">
        {detail.backdrop_path ? (
          <img src={`${IMG_O}${detail.backdrop_path}`} alt="" className="w-full h-full object-cover" />
        ) : (
          <div className="w-full h-full bg-gradient-to-br from-primary/20 to-purple-900/30" />
        )}
        <div className="absolute inset-0 bg-gradient-to-b from-black/30 via-black/20 to-[var(--bg-base)]" />
        <button
          onClick={() => navigate("/animations")}
          className="absolute top-12 right-4 w-9 h-9 rounded-2xl bg-black/50 backdrop-blur flex items-center justify-center"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        {/* Type badge */}
        <div className="absolute top-12 left-4 flex items-center gap-1 bg-black/50 backdrop-blur rounded-xl px-2.5 py-1">
          {type === "movie" ? <Film className="w-3 h-3 text-primary" /> : <Tv className="w-3 h-3 text-primary" />}
          <span className="text-[10px] font-black text-white/80 font-['Cairo']">{type === "movie" ? "فيلم" : "مسلسل"}</span>
        </div>
      </div>

      {/* ── Cover + info ── */}
      <div className="px-4 -mt-16 flex gap-3 relative z-10">
        <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl flex-shrink-0">
          {detail.poster_path
            ? <img src={`${IMG_W}${detail.poster_path}`} alt={title} className="w-full h-full object-cover" />
            : <div className="w-full h-full bg-white/8 flex items-center justify-center"><Film className="w-8 h-8 text-white/20" /></div>
          }
        </div>
        <div className="flex-1 pb-3 min-w-0 pt-16 space-y-2">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">{title}</h1>
          {year && <p className="text-[10px] text-white/35">{year}</p>}
          <div className="flex flex-wrap gap-1.5">
            {score > 0 && (
              <span className="flex items-center gap-1 text-[9px] font-black px-2 py-1 rounded-lg border border-amber-500/25 bg-amber-500/10 text-amber-400">
                <Star className="w-2.5 h-2.5 fill-amber-400" />{score.toFixed(1)}
              </span>
            )}
            {runtime > 0 && (
              <span className="flex items-center gap-1 text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">
                <Clock className="w-2.5 h-2.5" />{runtime} دق
              </span>
            )}
            {type === "tv" && detail.number_of_seasons && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-primary/20 bg-primary/10 text-primary font-['Cairo']">
                {detail.number_of_seasons} موسم
              </span>
            )}
          </div>
        </div>
      </div>

      <div className="px-4 mt-4 space-y-5 pb-28">
        {/* Studios */}
        {studios && (
          <div className="flex items-center gap-1.5 text-white/35 text-[10px]">
            <Tv className="w-3 h-3" />
            <span className="font-['Cairo']">{studios}</span>
          </div>
        )}

        {/* Genres */}
        {genres.length > 0 && (
          <div className="flex flex-wrap gap-2">
            {genres.map(g => (
              <span key={g.id} className="text-[11px] px-3 py-1 rounded-full border border-primary/20 bg-primary/8 text-primary font-black font-['Cairo']">
                {g.name}
              </span>
            ))}
          </div>
        )}

        {/* ── MOVIE Watch button ── */}
        {type === "movie" && (
          <Link href={watchUrl()}>
            <motion.div
              whileTap={{ scale: 0.95 }}
              className="flex items-center justify-center gap-2 w-full py-3.5 rounded-2xl bg-primary text-white font-black text-sm font-['Cairo'] shadow-lg shadow-primary/30"
            >
              <Play className="w-4 h-4 fill-white" />
              مشاهدة الفيلم
            </motion.div>
          </Link>
        )}

        {/* Description */}
        {overview && (
          <div>
            <h2 className="text-[13px] font-black text-white mb-2 font-['Cairo']">القصة</h2>
            <p className={`text-[12px] text-white/55 leading-[1.7] font-['Cairo'] ${showFull ? "" : "line-clamp-4"}`}>
              {overview}
            </p>
            {overview.length > 200 && (
              <button
                onClick={() => setShowFull(f => !f)}
                className="mt-1 text-[11px] text-primary font-black font-['Cairo'] flex items-center gap-1"
              >
                {showFull ? "عرض أقل" : "عرض المزيد"}
                <ChevronDown className={`w-3 h-3 transition-transform ${showFull ? "rotate-180" : ""}`} />
              </button>
            )}
          </div>
        )}

        {/* ── TV Seasons & Episodes ── */}
        {type === "tv" && seasons.length > 0 && (
          <div>
            {/* Season selector */}
            <div className="flex items-center justify-between mb-3">
              <h2 className="text-[13px] font-black text-white font-['Cairo']">الحلقات</h2>
              <div className="relative">
                <button
                  onClick={() => setSeasonOpen(o => !o)}
                  className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/8 border border-white/10 text-[11px] font-black text-white/70 font-['Cairo']"
                >
                  {currentSeason?.name || `الموسم ${selSeason}`}
                  <ChevronDown className={`w-3 h-3 transition-transform ${seasonOpen ? "rotate-180" : ""}`} />
                </button>
                <AnimatePresence>
                  {seasonOpen && (
                    <motion.div
                      initial={{ opacity: 0, scale: 0.95, y: -5 }}
                      animate={{ opacity: 1, scale: 1, y: 0 }}
                      exit={{ opacity: 0, scale: 0.95, y: -5 }}
                      className="absolute left-0 top-full mt-1 bg-[var(--bg-card)] border border-white/10 rounded-2xl overflow-hidden shadow-2xl z-20 min-w-[140px]"
                    >
                      {seasons.map(s => (
                        <button
                          key={s.id}
                          onClick={() => { setSelSeason(s.season_number); setSeasonOpen(false); }}
                          className={`w-full text-right px-4 py-2.5 text-[11px] font-black font-['Cairo'] border-b border-white/5 last:border-0 ${
                            s.season_number === selSeason ? "text-primary bg-primary/10" : "text-white/60"
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
            </div>

            {/* Episode list */}
            {epLoading ? (
              <div className="flex justify-center py-8">
                <div className="w-6 h-6 border-2 border-primary border-t-transparent rounded-full animate-spin" />
              </div>
            ) : (
              <div className="space-y-2">
                {episodes.map(ep => (
                  <Link key={ep.episode_number} href={watchUrl(ep.episode_number)}>
                    <motion.div
                      whileTap={{ scale: 0.97 }}
                      className="flex items-center gap-3 p-3 rounded-2xl bg-white/4 border border-white/6 active:bg-white/8"
                    >
                      {/* Thumbnail */}
                      <div className="w-[70px] h-[42px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0">
                        {ep.still_path
                          ? <img src={`${IMG_S}${ep.still_path}`} alt="" className="w-full h-full object-cover" />
                          : <div className="w-full h-full flex items-center justify-center"><Play className="w-4 h-4 text-white/20" /></div>
                        }
                      </div>
                      <div className="flex-1 min-w-0 text-right">
                        <p className="text-[11px] font-black text-white line-clamp-1 font-['Cairo']">
                          {ep.episode_number}. {ep.name}
                        </p>
                        {ep.overview && (
                          <p className="text-[9.5px] text-white/30 line-clamp-1 font-['Cairo'] mt-0.5">{ep.overview}</p>
                        )}
                        {ep.runtime && (
                          <p className="text-[9px] text-white/20 font-['Cairo'] mt-0.5">{ep.runtime} دق</p>
                        )}
                      </div>
                      <Play className="w-4 h-4 text-primary flex-shrink-0" />
                    </motion.div>
                  </Link>
                ))}
                {episodes.length === 0 && (
                  <p className="text-center text-white/25 text-sm font-['Cairo'] py-6">لا توجد حلقات لهذا الموسم</p>
                )}
              </div>
            )}
          </div>
        )}

        {/* Cast */}
        {cast.length > 0 && (
          <div>
            <h2 className="text-[13px] font-black text-white mb-3 font-['Cairo']">الممثلون</h2>
            <div className="flex gap-3 overflow-x-auto pb-1 scrollbar-hide">
              {cast.map((c: any) => (
                <div key={c.id} className="flex-shrink-0 w-16 text-center">
                  <div className="w-14 h-14 rounded-full overflow-hidden bg-white/6 mx-auto mb-1">
                    {c.profile_path
                      ? <img src={`${IMG_S}${c.profile_path}`} alt={c.name} className="w-full h-full object-cover" />
                      : <div className="w-full h-full flex items-center justify-center text-xl">👤</div>
                    }
                  </div>
                  <p className="text-[8.5px] text-white/50 font-['Cairo'] line-clamp-2 leading-tight">{c.name}</p>
                </div>
              ))}
            </div>
          </div>
        )}

        {/* Recommendations */}
        {recs.length > 0 && (
          <div>
            <h2 className="text-[13px] font-black text-white mb-3 font-['Cairo']">مقترحات مشابهة</h2>
            <div className="flex gap-3 overflow-x-auto pb-1 scrollbar-hide">
              {recs.map((r: any) => (
                <Link key={r.id} href={`/animation/${type}/${r.id}`} className="flex-shrink-0 w-24">
                  <div className="rounded-xl overflow-hidden bg-white/5 aspect-[2/3] mb-1">
                    {r.poster_path
                      ? <img src={`${IMG_W}${r.poster_path}`} alt="" loading="lazy" className="w-full h-full object-cover" />
                      : <div className="w-full h-full flex items-center justify-center"><Film className="w-5 h-5 text-white/15" /></div>
                    }
                  </div>
                  <p className="text-[9px] font-black text-white/60 line-clamp-2 font-['Cairo']">{r.title || r.name}</p>
                </Link>
              ))}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
