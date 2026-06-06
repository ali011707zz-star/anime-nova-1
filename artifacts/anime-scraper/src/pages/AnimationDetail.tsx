import { useState, useEffect, useRef } from "react";
import { useParams, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Star, Calendar, Clock,
  Tv, Film, ChevronDown, Sparkles, Users,
  Bookmark, MessageCircle, Send, X,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_O = "https://image.tmdb.org/t/p/original";
const IMG_S = "https://image.tmdb.org/t/p/w185";

const GENRE_AR: Record<number, string> = {
  16: "رسوم متحركة", 28: "أكشن", 12: "مغامرة", 35: "كوميدي",
  80: "جريمة", 99: "وثائقي", 18: "دراما", 10751: "عائلي",
  14: "فانتازيا", 36: "تاريخي", 27: "رعب", 10402: "موسيقى",
  9648: "غموض", 10749: "رومانسي", 878: "خيال علمي", 10770: "تلفزيوني",
  53: "إثارة", 10752: "حرب", 37: "غرب",
};

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
  const [saved, setSaved] = useState(false);
  const [showComments, setShowComments] = useState(false);
  const [comments, setComments] = useState<any[]>([]);
  const [newComment, setNewComment] = useState("");
  const [descAr, setDescAr] = useState<string | null>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (!id) return;
    setLoading(true); setDetail(null); setDescAr(null);
    const key = `anim-${type}-${id}`;
    const savedList: string[] = JSON.parse(localStorage.getItem("savedAnimations") || "[]");
    setSaved(savedList.includes(key));
    const savedC = localStorage.getItem(`anim-comments-${type}-${id}`);
    if (savedC) setComments(JSON.parse(savedC));

    fetch(`/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(async d => {
        setDetail(d);
        setLoading(false);
        // Keep title in original language — no translation for animation titles
        // Translate overview only
        const overview = d.overview || "";
        if (!overview) return;
        const cachedDesc = localStorage.getItem(`anim-desc-ar-${type}-${id}`);
        if (cachedDesc) { setDescAr(cachedDesc); return; }
        try {
          const r2 = await fetch(`/api/anime/translate?text=${encodeURIComponent(overview.slice(0, 480))}`);
          const d2 = await r2.json();
          if (d2.translated && d2.translated !== overview && d2.translated.length > 10) {
            setDescAr(d2.translated);
            localStorage.setItem(`anim-desc-ar-${type}-${id}`, d2.translated);
          } else { setDescAr(overview); }
        } catch { setDescAr(overview); }
      })
      .catch(() => setLoading(false));
  }, [type, id]);

  useEffect(() => {
    if (type !== "tv" || !detail) return;
    setEpLoading(true);
    fetch(`/api/animation/season?id=${id}&season=${selSeason}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [type, id, selSeason, detail]);

  const watchUrl = (ep?: number) => {
    const t = encodeURIComponent(detail?.title || detail?.name || "");
    const poster = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    const epStr  = ep != null ? `&ep=${ep}&season=${selSeason}` : "";
    return `/animation/watch?title=${t}&type=${type}&id=${id}${epStr}&poster=${poster}`;
  };

  const toggleSave = () => {
    const key = `anim-${type}-${id}`;
    const list: string[] = JSON.parse(localStorage.getItem("savedAnimations") || "[]");
    const upd = saved ? list.filter(i => i !== key) : [...list, key];
    localStorage.setItem("savedAnimations", JSON.stringify(upd));
    setSaved(!saved);
  };

  const addComment = () => {
    if (!newComment.trim()) return;
    const c = { id: Date.now(), text: newComment.trim(), time: new Date().toLocaleDateString("ar-SA") };
    const upd = [c, ...comments];
    setComments(upd);
    localStorage.setItem(`anim-comments-${type}-${id}`, JSON.stringify(upd));
    setNewComment("");
  };

  const goBack = () => {
    if (window.history.length > 1) window.history.back();
    else navigate("/animations");
  };

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}>
        <Sparkles className="w-8 h-8 text-primary" />
      </motion.div>
    </div>
  );

  if (!detail) return (
    <div className="bg-[#09090B] min-h-screen flex flex-col items-center justify-center gap-4" dir="rtl">
      <p className="text-white/40 font-['Cairo']">لم يتم العثور على البيانات</p>
      <button onClick={goBack} className="text-primary text-sm font-['Cairo'] font-black">العودة</button>
    </div>
  );

  const title     = detail.title || detail.name || "—";
  const rawTitle  = title;
  const year      = (detail.release_date || detail.first_air_date || "").slice(0, 4);
  const runtime   = detail.runtime || (detail.episode_run_time?.[0]) || 0;
  const score     = detail.vote_average || 0;
  const genres: { id: number; name: string }[] = detail.genres || [];
  const overview  = descAr || detail.overview || "";
  const seasons: Season[] = (detail.seasons || []).filter((s: Season) => s.season_number > 0);
  const currentSeason = seasons.find(s => s.season_number === selSeason);
  const cast = (detail.credits?.cast || detail.aggregate_credits?.cast || []).slice(0, 12);
  const recs: any[] = (detail.recommendations?.results || []).slice(0, 10);
  const studios = (detail.production_companies || []).slice(0, 2).map((c: any) => c.name).join(" · ");

  return (
    <main className="min-h-screen bg-[#09090B] pb-32 text-white" dir="rtl">

      {/* ── Hero Banner ── */}
      <div className="relative w-full overflow-hidden" style={{ height: 250 }}>
        {detail.backdrop_path ? (
          <img src={`${IMG_O}${detail.backdrop_path}`} alt="" className="w-full h-full object-cover" />
        ) : (
          <div className="w-full h-full bg-gradient-to-br from-primary/20 to-purple-900/30" />
        )}
        <div className="absolute inset-0" style={{
          background: "linear-gradient(to bottom, rgba(9,9,11,0.3) 0%, rgba(9,9,11,0.5) 55%, rgba(9,9,11,1) 100%)"
        }} />
        {/* Back button */}
        <button
          onClick={goBack}
          className="absolute top-5 right-4 w-10 h-10 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        {/* Score badge */}
        {score > 0 && (
          <div className="absolute top-5 left-4 bg-black/50 backdrop-blur-md border border-yellow-500/30 px-2.5 py-1.5 rounded-xl flex items-center gap-1.5 z-10">
            <Star className="w-3.5 h-3.5 text-yellow-400 fill-yellow-400" />
            <span className="text-yellow-300 text-sm font-black">{score.toFixed(1)}</span>
          </div>
        )}
        {/* Type badge */}
        <div className="absolute bottom-16 right-4 flex items-center gap-1 bg-black/50 backdrop-blur rounded-xl px-2.5 py-1 z-10">
          {type === "movie" ? <Film className="w-3 h-3 text-primary" /> : <Tv className="w-3 h-3 text-primary" />}
          <span className="text-[10px] font-black text-white/80 font-['Cairo']">{type === "movie" ? "فيلم" : "مسلسل"}</span>
        </div>
      </div>

      {/* ── Cover + Title Row ── */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        {/* Cover with glow */}
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-70"
            style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {detail.poster_path
              ? <img src={`${IMG_W}${detail.poster_path}`} alt={rawTitle} className="w-full h-full object-cover" />
              : <div className="w-full h-full bg-white/8 flex items-center justify-center"><Film className="w-8 h-8 text-white/20" /></div>
            }
          </div>
          {/* Format pill */}
          <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
            {type === "movie" ? "فيلم" : "مسلسل"}
          </div>
        </div>

        {/* Title + badges */}
        <div className="flex-1 pb-3 min-w-0 space-y-2">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">
            {title}
          </h1>
          <div className="flex flex-wrap gap-1.5">
            {year && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">
                {year}
              </span>
            )}
            {runtime > 0 && (
              <span className="flex items-center gap-1 text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">
                <Clock className="w-2.5 h-2.5" />{runtime} دق
              </span>
            )}
            {type === "tv" && detail.number_of_seasons > 0 && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-primary/20 bg-primary/10 text-primary font-['Cairo']">
                {detail.number_of_seasons} موسم
              </span>
            )}
          </div>
        </div>
      </div>

      {/* ── Quick stats ── */}
      {(studios || year) && (
        <div className="px-4 mt-4 flex gap-3 flex-wrap">
          {studios && (
            <div className="flex items-center gap-1.5 text-white/35 text-[10px]">
              <Tv className="w-3 h-3" />
              <span className="font-['Cairo']">{studios}</span>
            </div>
          )}
          {year && (
            <div className="flex items-center gap-1.5 text-white/35 text-[10px]">
              <Calendar className="w-3 h-3" />
              <span className="font-['Cairo']">{year}</span>
            </div>
          )}
        </div>
      )}

      {/* ── Genres ── */}
      {genres.length > 0 && (
        <div className="mt-4 px-4 flex gap-2 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
          {genres.map(g => (
            <span key={g.id} className="shrink-0 text-[10px] font-bold bg-[#18181B] text-white/55 px-3 py-1.5 rounded-xl border border-white/6 font-['Cairo'] whitespace-nowrap">
              {GENRE_AR[g.id] || g.name}
            </span>
          ))}
        </div>
      )}

      <div className="px-4 mt-5 space-y-2.5">
        {/* Watch button */}
        <Link href={watchUrl(type === "tv" ? undefined : undefined)}>
          <motion.button
            whileTap={{ scale: 0.97 }}
            className="w-full h-12 rounded-2xl font-black flex items-center justify-center gap-2.5 shadow-2xl text-sm font-['Cairo'] text-white"
            style={{ background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)", boxShadow: "0 8px 32px rgba(109,40,217,0.45)" }}
          >
            <div className="w-7 h-7 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
              <Play className="w-3.5 h-3.5 fill-white text-white" />
            </div>
            {type === "movie" ? "مشاهدة الفيلم" : "مشاهدة المسلسل"}
          </motion.button>
        </Link>

        <div className="flex gap-2.5">
          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={toggleSave}
            className={`w-12 h-11 rounded-2xl flex flex-col items-center justify-center gap-0.5 border transition-all font-['Cairo'] shrink-0 ${
              saved ? "bg-primary/15 border-primary/30 text-primary" : "bg-[#18181B] border-white/7 text-white/50"
            }`}
          >
            <Bookmark className={`w-3.5 h-3.5 transition-all ${saved ? "fill-current" : ""}`} />
            <span className="text-[8px] font-black">{saved ? "محفوظ" : "حفظ"}</span>
          </motion.button>
          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={() => setShowComments(true)}
            className="flex-1 h-11 bg-[#18181B] border border-white/7 rounded-2xl flex items-center justify-center gap-2 text-xs font-bold font-['Cairo'] text-white/70"
          >
            <MessageCircle className="w-3.5 h-3.5 text-primary" />
            التعليقات
            {comments.length > 0 && (
              <span className="bg-primary/20 text-primary text-[9px] font-black px-1.5 py-0.5 rounded-full">{comments.length}</span>
            )}
          </motion.button>
        </div>
      </div>

      {/* ── Synopsis ── */}
      {overview && (
        <div className="mt-7 px-4">
          <div className="flex items-center mb-3">
            <div className="w-1 h-5 bg-primary rounded-full ml-2" />
            <h2 className="text-[15px] font-black font-['Cairo']">القصة</h2>
          </div>
          <div className="bg-[#111116] border border-white/6 rounded-2xl p-4 relative overflow-hidden">
            <div className="absolute top-0 right-0 w-32 h-32 bg-primary/3 rounded-full blur-3xl pointer-events-none" />
            <p className={`text-[#B4B4B8] leading-relaxed text-[13px] font-['Cairo'] relative z-10 ${!showFull ? "line-clamp-4" : ""}`}>
              {overview}
            </p>
            {overview.length > 200 && (
              <button
                onClick={() => setShowFull(f => !f)}
                className="mt-3 flex items-center gap-1 text-primary text-xs font-black font-['Cairo']"
              >
                {showFull ? "عرض أقل" : "عرض المزيد"}
                <ChevronDown className={`w-3.5 h-3.5 transition-transform ${showFull ? "rotate-180" : ""}`} />
              </button>
            )}
          </div>
        </div>
      )}

      {/* ── TV Seasons & Episodes ── */}
      {type === "tv" && seasons.length > 0 && (
        <div className="mt-7 px-4">
          <div className="flex items-center gap-2 mb-3">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo'] flex-1">الحلقات</h2>
            {/* Season selector */}
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
                    className="absolute left-0 top-full mt-1 bg-[#111116] border border-white/10 rounded-2xl overflow-hidden shadow-2xl z-20 min-w-[140px]"
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
                    className="flex items-center gap-3 p-3 rounded-2xl bg-[#111116] border border-white/6 active:bg-white/8"
                  >
                    <div className="w-[80px] h-[48px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0 relative">
                      {ep.still_path
                        ? <img src={`${IMG_S}${ep.still_path}`} alt="" className="w-full h-full object-cover" />
                        : <div className="w-full h-full flex items-center justify-center"><Play className="w-4 h-4 text-white/20" /></div>
                      }
                      <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent" />
                      <div className="absolute bottom-1 left-1 text-[8px] font-black text-white/70 bg-black/50 px-1 rounded font-mono">
                        {ep.episode_number}
                      </div>
                    </div>
                    <div className="flex-1 min-w-0 text-right">
                      <p className="text-[11px] font-black text-white line-clamp-1 font-['Cairo']">
                        {ep.name}
                      </p>
                      {ep.overview && (
                        <p className="text-[9.5px] text-white/30 line-clamp-2 font-['Cairo'] mt-0.5 leading-snug">{ep.overview}</p>
                      )}
                      {ep.runtime && (
                        <div className="flex items-center gap-1 mt-1">
                          <Clock className="w-2.5 h-2.5 text-white/20" />
                          <span className="text-[8.5px] text-white/20 font-['Cairo']">{ep.runtime} دق</span>
                        </div>
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

      {/* ── Cast ── */}
      {cast.length > 0 && (
        <div className="mt-7">
          <div className="flex items-center gap-2 mb-3 px-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">الممثلون</h2>
            <span className="text-[9px] text-white/30 bg-white/5 px-2 py-1 rounded-lg font-['Cairo']">
              <Users className="w-2.5 h-2.5 inline ml-1" />{cast.length}
            </span>
          </div>
          <div className="flex gap-2.5 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {cast.map((c: any) => (
              <motion.div key={c.id} whileTap={{ scale: 0.95 }} className="shrink-0 w-[44px] text-center">
                <div className="relative">
                  <img
                    src={c.profile_path ? `${IMG_S}${c.profile_path}` : ""}
                    alt={c.name}
                    className="w-[44px] h-[44px] rounded-xl object-cover border border-white/8 mb-1 bg-white/6"
                    onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
                  />
                </div>
                <p className="text-[8px] text-white/45 font-bold truncate leading-tight">{c.name}</p>
                {c.character && (
                  <p className="text-[7px] text-white/20 truncate leading-tight">{c.character}</p>
                )}
              </motion.div>
            ))}
          </div>
        </div>
      )}

      {/* ── Recommendations ── */}
      {recs.length > 0 && (
        <div className="mt-7">
          <div className="flex items-center gap-2 mb-3 px-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">مقترحات مشابهة</h2>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {recs.map((r: any) => {
              const recType = r.media_type || type;
              return (
                <Link key={r.id} href={`/animation/${recType}/${r.id}`}>
                  <motion.div whileTap={{ scale: 0.94 }} className="shrink-0 w-[120px] cursor-pointer">
                    <div className="relative w-[120px] h-[168px] rounded-2xl overflow-hidden bg-[#1C1C22] border border-white/6">
                      {r.poster_path
                        ? <img src={`${IMG_W}${r.poster_path}`} alt="" loading="lazy" className="w-full h-full object-cover" />
                        : <div className="w-full h-full flex items-center justify-center"><Film className="w-5 h-5 text-white/15" /></div>
                      }
                      <div className="absolute inset-0 bg-gradient-to-t from-black/85 via-black/10 to-transparent" />
                      {r.vote_average > 0 && (
                        <div className="absolute top-2 left-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-sm text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                          <Star className="w-1.5 h-1.5 fill-current" /> {r.vote_average.toFixed(1)}
                        </div>
                      )}
                      <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                        <p className="text-[9px] text-white/90 font-bold truncate leading-tight font-['Cairo']">{r.title || r.name}</p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* ════════ COMMENTS SHEET ════════ */}
      <AnimatePresence>
        {showComments && (
          <>
            <motion.div
              key="overlay"
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              className="fixed inset-0 bg-black/60 backdrop-blur-sm z-40"
              onClick={() => setShowComments(false)}
            />
            <motion.div
              key="sheet"
              initial={{ y: "100%" }}
              animate={{ y: 0 }}
              exit={{ y: "100%" }}
              transition={{ type: "spring", damping: 28, stiffness: 300 }}
              className="fixed bottom-0 left-0 right-0 z-50 rounded-t-3xl overflow-hidden"
              style={{ background: "#111116", border: "1px solid rgba(255,255,255,0.08)", maxHeight: "80vh" }}
            >
              <div className="flex items-center justify-between px-4 py-4 border-b border-white/8">
                <div className="flex items-center gap-2">
                  <MessageCircle className="w-4 h-4 text-primary" />
                  <span className="font-black text-[14px] font-['Cairo']">التعليقات</span>
                  {comments.length > 0 && (
                    <span className="bg-primary/20 text-primary text-[9px] font-black px-1.5 py-0.5 rounded-full">{comments.length}</span>
                  )}
                </div>
                <button onClick={() => setShowComments(false)} className="w-8 h-8 rounded-full bg-white/8 flex items-center justify-center active:scale-90">
                  <X className="w-4 h-4 text-white/60" />
                </button>
              </div>
              <div className="overflow-y-auto" style={{ maxHeight: "calc(80vh - 130px)" }}>
                {comments.length === 0 ? (
                  <div className="flex flex-col items-center gap-3 py-12 text-white/20">
                    <MessageCircle className="w-10 h-10" />
                    <p className="text-sm font-['Cairo']">لا توجد تعليقات بعد</p>
                  </div>
                ) : (
                  <div className="p-4 space-y-3">
                    {comments.map((c: any) => (
                      <div key={c.id} className="bg-white/5 rounded-2xl p-3 border border-white/6">
                        <p className="text-[12px] text-white/85 font-['Cairo'] leading-relaxed">{c.text}</p>
                        <p className="text-[9px] text-white/25 mt-1 font-['Cairo']">{c.time}</p>
                      </div>
                    ))}
                  </div>
                )}
              </div>
              <div className="px-4 py-3 border-t border-white/8 flex gap-2">
                <input
                  ref={inputRef}
                  value={newComment}
                  onChange={e => setNewComment(e.target.value)}
                  onKeyDown={e => e.key === "Enter" && addComment()}
                  placeholder="أضف تعليقاً…"
                  className="flex-1 bg-white/6 border border-white/10 rounded-2xl px-4 py-2.5 text-[12px] text-white placeholder-white/20 font-['Cairo'] outline-none focus:border-primary/40"
                  dir="rtl"
                />
                <button
                  onClick={addComment}
                  disabled={!newComment.trim()}
                  className="w-10 h-10 rounded-2xl flex items-center justify-center active:scale-90 disabled:opacity-30 transition-all"
                  style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}
                >
                  <Send className="w-4 h-4 text-white" />
                </button>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </main>
  );
}
