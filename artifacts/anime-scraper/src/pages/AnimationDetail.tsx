import { useState, useEffect, useRef, useMemo } from "react";
import { useParams, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Star, Calendar, Clock,
  Tv, Film, ChevronDown, Sparkles, Users,
  Bookmark, MessageSquare, Heart, Plus,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";
import CommentsSheet from "@/components/CommentsSheet";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_O = "https://image.tmdb.org/t/p/original";
const IMG_S = "https://image.tmdb.org/t/p/w185";

const formatRuntime = (mins: number) => {
  if (!mins || mins <= 0) return "";
  if (mins < 60) return `${mins} دقيقة`;
  const h = Math.floor(mins / 60);
  const m = mins % 60;
  return m > 0 ? `${h} ساعة ${m} دقيقة` : `${h} ساعة`;
};

const GENRE_AR: Record<number, string> = {
  16: "رسوم متحركة", 28: "أكشن", 12: "مغامرة", 35: "كوميدي",
  80: "جريمة", 99: "وثائقي", 18: "دراما", 10751: "عائلي",
  14: "فانتازيا", 36: "تاريخي", 27: "رعب", 10402: "موسيقى",
  9648: "غموض", 10749: "رومانسي", 878: "خيال علمي", 10770: "تلفزيوني",
  53: "إثارة", 10752: "حرب", 37: "غرب",
};

function loadCommentsCount(key: string): number {
  try { return JSON.parse(localStorage.getItem(key) || "[]").length; } catch { return 0; }
}

export default function AnimationDetail() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const [, navigate] = useLocation();
  const { user } = useAuth();

  const [detail,   setDetail]   = useState<any>(null);
  const [loading,  setLoading]  = useState(true);
  const [showFull, setShowFull] = useState(false);
  const [saved,      setSaved]      = useState(false);
  const [favorited,  setFavorited]  = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [showRatingPicker, setShowRatingPicker] = useState(false);
  const [showComments, setShowComments] = useState(false);
  const [commentsCount, setCommentsCount] = useState(0);
  const [descAr, setDescAr] = useState<string | null>(null);

  const storageKey = `anim-comments-v2-${type}-${id}`;

  useEffect(() => {
    if (!id) return;
    setLoading(true); setDetail(null); setDescAr(null);
    const key = `anim-${type}-${id}`;
    const savedList: string[] = JSON.parse(localStorage.getItem("savedAnimations") || "[]");
    setSaved(savedList.includes(key));
    const favList: string[] = JSON.parse(localStorage.getItem("savedAnimFavorites") || "[]");
    setFavorited(favList.includes(key));
    setMyRating(Number(localStorage.getItem(`anim-rating-${type}-${id}`) || "0"));
    setCommentsCount(loadCommentsCount(storageKey));

    fetch(`/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(async d => {
        setDetail(d);
        setLoading(false);
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

  const toggleSave = () => {
    const key = `anim-${type}-${id}`;
    const list: string[] = JSON.parse(localStorage.getItem("savedAnimations") || "[]");
    const upd = saved ? list.filter(i => i !== key) : [...list, key];
    localStorage.setItem("savedAnimations", JSON.stringify(upd));
    setSaved(!saved);
  };

  const toggleFavorite = () => {
    const key = `anim-${type}-${id}`;
    const list: string[] = JSON.parse(localStorage.getItem("savedAnimFavorites") || "[]");
    const upd = favorited ? list.filter(i => i !== key) : [...list, key];
    localStorage.setItem("savedAnimFavorites", JSON.stringify(upd));
    setFavorited(!favorited);
  };

  const setRating = (r: number) => {
    setMyRating(r);
    localStorage.setItem(`anim-rating-${type}-${id}`, String(r));
    setShowRatingPicker(false);
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
      <button onClick={() => navigate("/animations")} className="text-primary text-sm font-['Cairo'] font-black">العودة</button>
    </div>
  );

  const title    = detail.original_title || detail.original_name || detail.title || detail.name || "—";
  const year     = (detail.release_date || detail.first_air_date || "").slice(0, 4);
  const runtime  = detail.runtime || (detail.episode_run_time?.[0]) || 0;
  const score    = detail.vote_average || 0;
  const genres: { id: number; name: string }[] = detail.genres || [];
  const overview = descAr || detail.overview || "";
  const cast     = (detail.credits?.cast || detail.aggregate_credits?.cast || []).slice(0, 14);
  const recs: any[] = (detail.recommendations?.results || []).slice(0, 10);
  const studios  = (detail.production_companies || []).slice(0, 2).map((c: any) => c.name).join(" · ");

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
        <button
          onClick={() => navigate("/animations")}
          className="absolute top-5 right-4 w-10 h-10 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        {score > 0 && (
          <div className="absolute top-5 left-4 bg-black/50 backdrop-blur-md border border-yellow-500/30 px-2.5 py-1.5 rounded-xl flex items-center gap-1.5 z-10">
            <Star className="w-3.5 h-3.5 text-yellow-400 fill-yellow-400" />
            <span className="text-yellow-300 text-sm font-black">{score.toFixed(1)}</span>
          </div>
        )}
        <div className="absolute bottom-16 right-4 flex items-center gap-1 bg-black/50 backdrop-blur rounded-xl px-2.5 py-1 z-10">
          {type === "movie" ? <Film className="w-3 h-3 text-primary" /> : <Tv className="w-3 h-3 text-primary" />}
          <span className="text-[10px] font-black text-white/80 font-['Cairo']">{type === "movie" ? "فيلم" : "مسلسل"}</span>
        </div>
      </div>

      {/* ── Cover + Title Row ── */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-70"
            style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {detail.poster_path
              ? <img src={`${IMG_W}${detail.poster_path}`} alt={title} className="w-full h-full object-cover" />
              : <div className="w-full h-full bg-white/8 flex items-center justify-center"><Film className="w-8 h-8 text-white/20" /></div>
            }
          </div>
          <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
            {type === "movie" ? "فيلم" : "مسلسل"}
          </div>
        </div>
        <div className="flex-1 pb-3 min-w-0 space-y-2">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">{title}</h1>
          <div className="flex flex-wrap gap-1.5">
            {year && <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">{year}</span>}
            {runtime > 0 && (
              <span className="flex items-center gap-1 text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">
                <Clock className="w-2.5 h-2.5" />{formatRuntime(runtime)}
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
              <Tv className="w-3 h-3" /><span className="font-['Cairo']">{studios}</span>
            </div>
          )}
          {year && (
            <div className="flex items-center gap-1.5 text-white/35 text-[10px]">
              <Calendar className="w-3 h-3" /><span className="font-['Cairo']">{year}</span>
            </div>
          )}
        </div>
      )}

      {/* ── Score row ── */}
      {score > 0 && (
        <div className="mx-4 mt-4 rounded-2xl px-4 py-3 flex items-center gap-3"
          style={{ background: "rgba(251,191,36,0.07)", border: "1px solid rgba(251,191,36,0.18)" }}>
          <div className="flex items-center gap-1">
            {[1,2,3,4,5].map(i => {
              const filled = score / 2 >= i;
              const half   = !filled && score / 2 >= i - 0.5;
              return <Star key={i} className={`w-4 h-4 ${filled || half ? "text-amber-400 fill-amber-400" : "text-white/15"}`} />;
            })}
          </div>
          <span className="text-amber-300 text-[15px] font-black">{score.toFixed(1)}</span>
          <span className="text-white/30 text-[10px] font-['Cairo']">/ 10</span>
          {detail.vote_count > 0 && (
            <span className="text-white/25 text-[9px] font-['Cairo'] mr-auto">{detail.vote_count.toLocaleString()} تقييم</span>
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

      {/* ── Watch Button ── */}
      <div className="px-4 mt-5">
        <Link href={type === "tv" ? episodesUrl() : watchUrl()}>
          <motion.button
            whileTap={{ scale: 0.97 }}
            className="w-full h-[52px] rounded-2xl font-black flex items-center justify-center gap-3 text-[15px] font-['Cairo'] text-white"
            style={{
              background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)",
              boxShadow: "0 8px 32px rgba(109,40,217,0.5), inset 0 1px 0 rgba(255,255,255,0.15)"
            }}
          >
            <div className="w-8 h-8 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
              <Play className="w-4 h-4 fill-white text-white" />
            </div>
            {type === "tv" ? "مشاهدة المسلسل" : "مشاهدة الفيلم"}
          </motion.button>
        </Link>
      </div>

      {/* ── Action buttons ── */}
      <div className="px-4 mt-3">
        <div className="grid grid-cols-3 gap-2 mb-2">
          {[
            { icon: Star,     label: "تقييمي",   active: myRating > 0, activeColor: "#EAB308", action: () => setShowRatingPicker(true) },
            { icon: Plus,     label: "قائمتي",   active: saved,        activeColor: "#8B5CF6", action: toggleSave },
            { icon: Bookmark, label: "المفضلة",  active: favorited,    activeColor: "#EC4899", action: toggleFavorite },
          ].map(({ icon: Icon, label, active, activeColor, action }) => (
            <motion.button key={label} whileTap={{ scale: 0.94 }} onClick={action}
              className="flex flex-col items-center gap-1.5 py-3 rounded-2xl border transition-all font-['Cairo']"
              style={active
                ? { background: `${activeColor}18`, borderColor: `${activeColor}40`, color: activeColor }
                : { background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}>
              <Icon className="w-4 h-4" style={active ? { fill: activeColor, color: activeColor } : {}} />
              <span className="text-[9px] font-black">{label}</span>
              {label === "تقييمي" && myRating > 0 && (
                <span className="text-[9px] font-black" style={{ color: activeColor }}>{myRating}/10</span>
              )}
            </motion.button>
          ))}
        </div>
        <div className="grid grid-cols-2 gap-2">
          <motion.button whileTap={{ scale: 0.94 }} onClick={() => setShowComments(true)}
            className="flex flex-col items-center gap-1 py-3 rounded-2xl border font-['Cairo'] transition-all"
            style={commentsCount > 0
              ? { background: "rgba(139,92,246,0.10)", borderColor: "rgba(139,92,246,0.25)", color: "#A78BFA" }
              : { background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.55)" }}>
            <MessageSquare className="w-4 h-4 mb-0.5" />
            <span className="text-[11px] font-black">التعليقات</span>
            <span className="text-[9px] opacity-60">{commentsCount > 0 ? `${commentsCount} تعليق` : "اكتب تعليقاً"}</span>
          </motion.button>
          <motion.button whileTap={{ scale: 0.94 }}
            onClick={() => detail.vote_average && window.open(`https://www.themoviedb.org/${type}/${id}`, "_blank")}
            className="flex flex-col items-center gap-1 py-3 rounded-2xl border font-['Cairo'] transition-all"
            style={{ background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.55)" }}>
            <Star className="w-4 h-4 mb-0.5" />
            <span className="text-[11px] font-black">TMDB</span>
            <span className="text-[9px] text-white/30">{score > 0 ? `${score.toFixed(1)} / 10` : "قاعدة البيانات"}</span>
          </motion.button>
        </div>
      </div>

      {/* ── Rating Picker ── */}
      <AnimatePresence>
        {showRatingPicker && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="fixed inset-0 bg-black/60 z-[60]" onClick={() => setShowRatingPicker(false)} />
            <motion.div initial={{ opacity: 0, y: 30 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: 30 }}
              className="fixed bottom-0 left-0 right-0 z-[61] rounded-t-3xl p-6 pb-10"
              style={{ background: "#111116", border: "1px solid rgba(255,255,255,0.08)" }}>
              <p className="text-center text-[13px] font-black font-['Cairo'] mb-4">أضف تقييمك</p>
              <div className="flex gap-2 justify-center flex-wrap mb-4">
                {[1,2,3,4,5,6,7,8,9,10].map(n => (
                  <motion.button key={n} whileTap={{ scale: 0.92 }} onClick={() => setRating(n)}
                    className="w-11 h-11 rounded-xl text-sm font-black font-['Cairo'] transition-all"
                    style={myRating === n
                      ? { background: "rgba(234,179,8,0.22)", border: "1.5px solid rgba(234,179,8,0.55)", color: "#EAB308" }
                      : { background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)", color: "rgba(255,255,255,0.5)" }}>
                    {n}
                  </motion.button>
                ))}
              </div>
              {myRating > 0 && (
                <button onClick={() => setRating(0)} className="w-full text-[11px] text-white/30 font-['Cairo'] text-center py-1">
                  إزالة التقييم
                </button>
              )}
            </motion.div>
          </>
        )}
      </AnimatePresence>

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
              <button onClick={() => setShowFull(f => !f)}
                className="mt-3 flex items-center gap-1 text-primary text-xs font-black font-['Cairo']">
                {showFull ? "عرض أقل" : "عرض المزيد"}
                <ChevronDown className={`w-3.5 h-3.5 transition-transform ${showFull ? "rotate-180" : ""}`} />
              </button>
            )}
          </div>
        </div>
      )}

      {/* ── Comments preview ── */}
      <div className="mt-7 px-4">
        <div className="flex items-center justify-between mb-3">
          <div className="flex items-center gap-2">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">التعليقات{commentsCount > 0 ? ` (${commentsCount})` : ""}</h2>
          </div>
          <button onClick={() => setShowComments(true)} className="text-[10px] text-primary font-black font-['Cairo']">عرض الكل</button>
        </div>
        <motion.button whileTap={{ scale: 0.97 }} onClick={() => setShowComments(true)}
          className="w-full py-4 rounded-2xl border border-white/8 flex items-center justify-center gap-2.5 transition-colors"
          style={{ background: commentsCount > 0 ? "rgba(139,92,246,0.06)" : "rgba(255,255,255,0.025)", borderStyle: commentsCount === 0 ? "dashed" : "solid", borderColor: commentsCount > 0 ? "rgba(139,92,246,0.20)" : "rgba(255,255,255,0.10)" }}>
          <MessageSquare className="w-4 h-4" style={{ color: commentsCount > 0 ? "#A78BFA" : "rgba(255,255,255,0.25)" }} />
          <span className="text-xs font-['Cairo']" style={{ color: commentsCount > 0 ? "#A78BFA" : "rgba(255,255,255,0.25)" }}>
            {commentsCount > 0 ? `${commentsCount} تعليق — اضغط لعرضها` : "كن أول من يعلّق!"}
          </span>
        </motion.button>
      </div>

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
                {c.profile_path
                  ? <img src={`${IMG_S}${c.profile_path}`} alt={c.name}
                      className="w-[44px] h-[44px] rounded-xl object-cover border border-white/8 mb-1 bg-white/6"
                      onError={e => { (e.target as HTMLImageElement).style.display = "none"; }} />
                  : <div className="w-[44px] h-[44px] rounded-xl border border-white/8 mb-1 bg-white/6 flex items-center justify-center">
                      <Users className="w-4 h-4 text-white/20" />
                    </div>
                }
                <p className="text-[8px] text-white/45 font-bold truncate leading-tight">{c.name}</p>
                {c.character && <p className="text-[7px] text-white/20 truncate leading-tight">{c.character}</p>}
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

      <CommentsSheet
        commKey={storageKey}
        open={showComments}
        onClose={() => { setShowComments(false); setCommentsCount(loadCommentsCount(storageKey)); }}
        title={detail?.title || detail?.name || ""}
      />
    </main>
  );
}
