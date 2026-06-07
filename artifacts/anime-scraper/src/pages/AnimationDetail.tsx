import { useState, useEffect, useRef, useMemo } from "react";
import { useParams, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Star, Calendar, Clock,
  Tv, Film, ChevronDown, Sparkles, Users,
  Bookmark, MessageCircle, Send, X, List,
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

export default function AnimationDetail() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const [, navigate] = useLocation();

  const [detail,   setDetail]   = useState<any>(null);
  const [loading,  setLoading]  = useState(true);
  const [showFull, setShowFull] = useState(false);
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

  // Find last watched episode from history (for TV main watch button)
  const continueEp = useMemo(() => {
    if (type !== "tv") return undefined;
    try {
      const hist = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
      const item = hist.find((h: any) => h.id === id && h.type === "tv");
      if (item) return item.ep as number;
    } catch {}
    return 1;
  }, [type, id]);

  const watchUrl = () => {
    const t = encodeURIComponent(detail?.original_title || detail?.original_name || detail?.title || detail?.name || "");
    const posterPath = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    const startEp = continueEp ?? 1;
    return `/animation/watch?title=${t}&type=${type}&id=${id}&ep=${startEp}&season=1&poster=${posterPath}`;
  };

  const episodesUrl = () => `/animation/${type}/${id}/episodes`;

  const goBack = () => navigate("/animations");

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

  const title     = detail.original_title || detail.original_name || detail.title || detail.name || "—";
  const rawTitle  = title;
  const year      = (detail.release_date || detail.first_air_date || "").slice(0, 4);
  const runtime   = detail.runtime || (detail.episode_run_time?.[0]) || 0;
  const score     = detail.vote_average || 0;
  const genres: { id: number; name: string }[] = detail.genres || [];
  const overview  = descAr || detail.overview || "";
  const cast = (detail.credits?.cast || detail.aggregate_credits?.cast || []).slice(0, 12);
  const recs: any[] = (detail.recommendations?.results || []).slice(0, 10);
  const studios = (detail.production_companies || []).slice(0, 2).map((c: any) => c.name).join(" · ");
  const seasons: any[] = (detail.seasons || []).filter((s: any) => s.season_number > 0);

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
        {/* Primary CTA: Episodes page for TV, Watch for movies */}
        {type === "tv" ? (
          <Link href={episodesUrl()}>
            <motion.button
              whileTap={{ scale: 0.97 }}
              className="w-full h-12 rounded-2xl font-black flex items-center justify-center gap-2.5 shadow-2xl text-sm font-['Cairo'] text-white"
              style={{ background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)", boxShadow: "0 8px 32px rgba(109,40,217,0.45)" }}
            >
              <div className="w-7 h-7 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
                <List className="w-3.5 h-3.5 text-white" />
              </div>
              الحلقات
              {detail?.number_of_episodes > 0 && (
                <span className="text-white/60 text-xs font-bold">({detail.number_of_episodes})</span>
              )}
            </motion.button>
          </Link>
        ) : (
          <Link href={watchUrl()}>
            <motion.button
              whileTap={{ scale: 0.97 }}
              className="w-full h-12 rounded-2xl font-black flex items-center justify-center gap-2.5 shadow-2xl text-sm font-['Cairo'] text-white"
              style={{ background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)", boxShadow: "0 8px 32px rgba(109,40,217,0.45)" }}
            >
              <div className="w-7 h-7 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
                <Play className="w-3.5 h-3.5 fill-white text-white" />
              </div>
              مشاهدة الفيلم
            </motion.button>
          </Link>
        )}

        <div className="flex gap-2.5">
          {/* For TV: watch/continue button as secondary */}
          {type === "tv" && (
            <Link href={watchUrl()} className="flex-1">
              <motion.button
                whileTap={{ scale: 0.97 }}
                className="w-full h-11 bg-[#18181B] border border-white/7 rounded-2xl flex items-center justify-center gap-1.5 text-xs font-bold font-['Cairo'] text-white/70"
              >
                <Play className="w-3.5 h-3.5 text-primary fill-primary" />
                {continueEp && continueEp > 1 ? `تابع ح ${continueEp}` : "شاهد"}
              </motion.button>
            </Link>
          )}

          {/* Save */}
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

          {/* Comments */}
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


      {/* ── Seasons (TV only) ── */}
      {type === "tv" && seasons.length > 0 && (
        <div className="mt-7">
          <div className="flex items-center gap-2 mb-3 px-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">المواسم</h2>
            <span className="text-[9px] text-white/30 bg-white/5 px-2 py-1 rounded-lg font-['Cairo']">
              {seasons.length} موسم
            </span>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {seasons.map((s: any, idx: number) => (
              <Link key={s.id || s.season_number} href={`/animation/${type}/${id}/episodes?season=${s.season_number}`}>
                <motion.div whileTap={{ scale: 0.94 }} className="shrink-0 w-[130px] cursor-pointer">
                  <div className="relative h-[78px] rounded-2xl overflow-hidden border border-white/6 mb-2">
                    {s.poster_path
                      ? <img src={`${IMG_W}${s.poster_path}`} alt="" loading="lazy" className="w-full h-full object-cover" />
                      : <div className="w-full h-full flex items-center justify-center"
                          style={{ background: `linear-gradient(135deg, rgba(109,40,217,${Math.min(0.45, 0.18 + idx * 0.07)}), rgba(139,92,246,${Math.min(0.35, 0.10 + idx * 0.05)}))` }}>
                          <span className="text-3xl font-black font-['Cairo']" style={{ color: `rgba(255,255,255,${0.08 + idx * 0.02})` }}>
                            {s.season_number}
                          </span>
                        </div>
                    }
                    <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/5 to-transparent" />
                    <div className="absolute bottom-1.5 right-2 left-2 flex items-center justify-between">
                      <span className="text-[8px] font-black text-white/60 bg-black/40 px-1.5 py-0.5 rounded-md font-['Cairo']">
                        {s.episode_count} ح
                      </span>
                      {s.air_date && (
                        <span className="text-[8px] text-white/40 font-['Cairo']">{s.air_date.slice(0, 4)}</span>
                      )}
                    </div>
                  </div>
                  <p className="text-[11px] font-black text-white/75 font-['Cairo'] truncate leading-tight">
                    {s.name || `الموسم ${s.season_number}`}
                  </p>
                  <p className="text-[9px] text-white/28 font-['Cairo'] mt-0.5">{s.episode_count} حلقة</p>
                </motion.div>
              </Link>
            ))}
          </div>
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
                  {c.profile_path
                    ? <img
                        src={`${IMG_S}${c.profile_path}`}
                        alt={c.name}
                        className="w-[44px] h-[44px] rounded-xl object-cover border border-white/8 mb-1 bg-white/6"
                        onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
                      />
                    : <div className="w-[44px] h-[44px] rounded-xl border border-white/8 mb-1 bg-white/6 flex items-center justify-center">
                        <Users className="w-4 h-4 text-white/20" />
                      </div>
                  }
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
