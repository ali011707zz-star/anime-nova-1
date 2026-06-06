import { useParams, useLocation } from "wouter";
import { useState, useEffect, useRef } from "react";
import { Link } from "wouter";
import {
  ChevronRight, Play, Star, Bookmark, X,
  Calendar, Tv, Clock, Users, ChevronDown,
  MessageCircle, Send, Sparkles,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const DETAIL_Q = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english native }
    description bannerImage
    coverImage { large extraLarge }
    averageScore status episodes duration seasonYear season format
    genres
    studios(isMain: true) { nodes { name } }
    characters(perPage: 8, sort: [ROLE, RELEVANCE]) {
      edges { node { id name { full } image { large } } }
    }
    relations {
      edges {
        relationType
        node { id title { romaji } coverImage { large } format averageScore type }
      }
    }
    recommendations(perPage: 6, sort: [RATING_DESC]) {
      nodes {
        mediaRecommendation {
          id title { romaji } coverImage { large } averageScore
        }
      }
    }
  }
}`;

const REL_TYPE: Record<string, string> = {
  SEQUEL: "تكملة", PREQUEL: "مقدمة", SIDE_STORY: "قصة جانبية",
  PARENT: "أصل", SPIN_OFF: "فرع", ALTERNATIVE: "بديل",
  ADAPTATION: "تكيّف", SUMMARY: "ملخص",
};
const REL_SHOW = new Set(["SEQUEL", "PREQUEL", "SIDE_STORY", "SPIN_OFF", "PARENT", "ALTERNATIVE"]);

const STATUS: Record<string, { label: string; color: string }> = {
  RELEASING:        { label: "يُبث الآن",  color: "text-emerald-400 bg-emerald-500/15 border-emerald-500/25" },
  FINISHED:         { label: "مكتمل",      color: "text-blue-400   bg-blue-500/15    border-blue-500/25"    },
  NOT_YET_RELEASED: { label: "قريباً",     color: "text-amber-400  bg-amber-500/15   border-amber-500/25"   },
  CANCELLED:        { label: "ملغى",       color: "text-red-400    bg-red-500/15     border-red-500/25"     },
  HIATUS:           { label: "متوقف",      color: "text-orange-400 bg-orange-500/15  border-orange-500/25"  },
};
const SEASON: Record<string, string> = { WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف" };
const FORMAT: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA", SPECIAL: "خاص", MUSIC: "موسيقي", TV_SHORT: "قصير",
};
const GENRE: Record<string, string> = {
  "Action": "أكشن", "Adventure": "مغامرة", "Comedy": "كوميدي", "Drama": "دراما",
  "Fantasy": "فانتازيا", "Horror": "رعب", "Mecha": "ميكا", "Music": "موسيقى",
  "Mystery": "غموض", "Psychological": "نفسي", "Romance": "رومانسي", "Sci-Fi": "خيال علمي",
  "Slice of Life": "حياة يومية", "Sports": "رياضي", "Supernatural": "خوارق",
  "Thriller": "إثارة", "Ecchi": "إيتشي", "Harem": "حريم", "Isekai": "إيسيكاي",
  "Military": "عسكري", "School": "مدرسي", "Magic": "سحر", "Historical": "تاريخي",
  "Demons": "شياطين", "Samurai": "ساموراي", "Space": "فضاء", "Super Power": "قوى خارقة",
  "Vampire": "مصاصي دماء", "Game": "ألعاب", "Shounen": "شونين", "Seinen": "سيينين",
  "Shoujo": "شوجو", "Kids": "أطفال",
};

export default function AnimeDetail() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const [anime, setAnime]             = useState<any>(null);
  const [loading, setLoading]         = useState(true);
  const [showFull, setShowFull]       = useState(false);
  const [showComments, setShowComments] = useState(false);
  const [comments, setComments]       = useState<any[]>([]);
  const [newComment, setNewComment]   = useState("");
  const [saved, setSaved]             = useState(false);
  const [descAr, setDescAr]           = useState<string | null>(null);
  const [titleAr, setTitleAr]         = useState<string | null>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (!params.id) return;
    let cancelled = false;
    const ctrl = new AbortController();
    setLoading(true); setAnime(null); setDescAr(null); setTitleAr(null); setShowFull(false);
    const savedList: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    setSaved(savedList.includes(parseInt(params.id)));
    const savedC = localStorage.getItem(`comments-${params.id}`);
    if (savedC) setComments(JSON.parse(savedC));

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id) } }),
      signal: ctrl.signal,
    }).then(r => r.json()).then(d => {
      if (cancelled) return;
      const a = d.data?.Media;
      setAnime(a);

      // ── Title translation (English → Arabic) ──
      const cachedTitle = localStorage.getItem(`title-ar-${params.id}`);
      if (cachedTitle) {
        setTitleAr(cachedTitle);
      } else if (a?.title?.english || a?.title?.romaji) {
        const srcTitle = a.title.english || a.title.romaji;
        (async () => {
          try {
            const rt = await fetch(`/api/anime/translate?text=${encodeURIComponent(srcTitle)}&from=en&to=ar`, { signal: ctrl.signal });
            const dt = await rt.json();
            if (cancelled) return;
            if (dt.translated && dt.translated !== srcTitle && dt.translated.length > 2) {
              setTitleAr(dt.translated);
              localStorage.setItem(`title-ar-${params.id}`, dt.translated);
            }
          } catch { /* keep romaji */ }
        })();
      }

      // ── Description translation ──
      if (!a?.description) return;
      const cached = localStorage.getItem(`desc-ar-${params.id}`);
      if (cached) { setDescAr(cached); return; }
      const stripped = a.description
        .replace(/<br\s*\/?>/gi, " ").replace(/<[^>]*>/gm, "")
        .replace(/&amp;/g,"&").replace(/&lt;/g,"<").replace(/&gt;/g,">")
        .replace(/&quot;/g,'"').replace(/&#039;/g,"'").replace(/&nbsp;/g," ")
        .replace(/\s+/g," ").trim();
      const raw = stripped.substring(0, 480);
      (async () => {
        try {
          const r2 = await fetch(`/api/anime/translate?text=${encodeURIComponent(raw)}`, { signal: ctrl.signal });
          const d2 = await r2.json();
          if (cancelled) return;
          if (d2.translated && d2.translated !== raw && d2.translated.length > 10) {
            setDescAr(d2.translated);
            localStorage.setItem(`desc-ar-${params.id}`, d2.translated);
          } else { setDescAr(stripped); }
        } catch { if (!cancelled) setDescAr(stripped); }
      })();
    }).catch(() => {}).finally(() => { if (!cancelled) setLoading(false); });

    return () => { cancelled = true; ctrl.abort(); };
  }, [params.id]);

  const toggleSave = () => {
    const list: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    const id = parseInt(params.id!);
    const upd = saved ? list.filter(i => i !== id) : [...list, id];
    localStorage.setItem("savedAnime", JSON.stringify(upd));
    setSaved(!saved);
  };

  const addComment = () => {
    if (!newComment.trim()) return;
    const c = { id: Date.now(), text: newComment, time: new Date().toLocaleDateString("ar-SA") };
    const upd = [c, ...comments];
    setComments(upd);
    localStorage.setItem(`comments-${params.id}`, JSON.stringify(upd));
    setNewComment("");
  };

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}>
        <Sparkles className="w-8 h-8 text-primary" />
      </motion.div>
    </div>
  );

  if (!anime) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center" dir="rtl">
      <div className="text-center space-y-4 px-6">
        <p className="text-white/40 font-bold font-['Cairo']">الأنمي غير موجود</p>
        <button onClick={() => navigate("/")}
          className="px-6 py-2.5 bg-primary/15 border border-primary/25 text-primary rounded-2xl text-sm font-bold font-['Cairo']">
          العودة للرئيسية
        </button>
      </div>
    </div>
  );

  const descText = descAr || anime.description?.replace(/<[^>]*>/gm, "") || "لا توجد قصة متاحة";
  const statusInfo = STATUS[anime.status] || { label: anime.status, color: "text-white/50 bg-white/8 border-white/10" };
  const score = anime.averageScore ? (anime.averageScore / 10).toFixed(1) : null;

  return (
    <main className="bg-[#09090B] min-h-screen pb-32 text-white" dir="rtl">

      {/* ── Hero Banner ── */}
      <div className="relative w-full overflow-hidden" style={{ height: 240 }}>
        <img
          src={anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large}
          alt="" className="w-full h-full object-cover"
        />
        <div className="absolute inset-0" style={{
          background: "linear-gradient(to bottom, rgba(9,9,11,0.3) 0%, rgba(9,9,11,0.5) 50%, rgba(9,9,11,1) 100%)"
        }} />
        {/* Back button */}
        <button
          onClick={() => { if (window.history.length > 1) { window.history.back(); } else { navigate("/"); } }}
          className="absolute top-5 right-4 w-9 h-9 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90"
        >
          <ChevronRight className="w-4 h-4 text-white" />
        </button>
        {/* Score badge */}
        {score && (
          <div className="absolute top-5 left-4 bg-black/50 backdrop-blur-md border border-yellow-500/30 px-2.5 py-1.5 rounded-xl flex items-center gap-1.5 z-10">
            <Star className="w-3.5 h-3.5 text-yellow-400 fill-yellow-400" />
            <span className="text-yellow-300 text-sm font-black">{score}</span>
          </div>
        )}
      </div>

      {/* ── Cover + Title Row ── */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        {/* Cover */}
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-60" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" />
          </div>
          {/* Format pill */}
          {anime.format && FORMAT[anime.format] && (
            <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
              {FORMAT[anime.format]}
            </div>
          )}
        </div>

        {/* Title + badges */}
        <div className="flex-1 pb-3 min-w-0 space-y-2">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">
            {titleAr || anime.title.romaji}
          </h1>
          <p className="text-[10px] text-white/35 line-clamp-1">
            {titleAr ? anime.title.romaji : (anime.title.english || "")}
          </p>
          <div className="flex flex-wrap gap-1.5">
            <span className={`text-[9px] font-black px-2 py-1 rounded-lg border font-['Cairo'] ${statusInfo.color}`}>
              {statusInfo.label}
            </span>
            {anime.episodes && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-primary/20 bg-primary/10 text-primary font-['Cairo']">
                {anime.episodes} حلقة
              </span>
            )}
            {anime.seasonYear && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">
                {SEASON[anime.season] || ""} {anime.seasonYear}
              </span>
            )}
          </div>
        </div>
      </div>

      {/* ── Quick stats row ── */}
      {(anime.duration || anime.studios?.nodes?.length) && (
        <div className="px-4 mt-5 flex gap-3">
          {anime.duration && (
            <div className="flex items-center gap-1.5 text-white/40 text-[10px]">
              <Clock className="w-3 h-3" />
              <span className="font-['Cairo']">{anime.duration} دقيقة</span>
            </div>
          )}
          {anime.studios?.nodes?.[0] && (
            <div className="flex items-center gap-1.5 text-white/40 text-[10px]">
              <Tv className="w-3 h-3" />
              <span className="font-['Cairo']">{anime.studios.nodes[0].name}</span>
            </div>
          )}
          {anime.seasonYear && (
            <div className="flex items-center gap-1.5 text-white/40 text-[10px]">
              <Calendar className="w-3 h-3" />
              <span className="font-['Cairo']">{anime.seasonYear}</span>
            </div>
          )}
        </div>
      )}

      {/* ── Genres ── */}
      <div className="mt-4 px-4 flex gap-2 overflow-x-auto no-scrollbar pb-1">
        {anime.genres?.slice(0, 8).map((g: string) => (
          <span key={g}
            className="shrink-0 text-[10px] font-bold bg-[#18181B] text-white/55 px-3 py-1.5 rounded-xl border border-white/6 font-['Cairo'] whitespace-nowrap">
            {GENRE[g] || g}
          </span>
        ))}
      </div>

      {/* ── CTA Buttons ── */}
      <div className="px-4 mt-5 space-y-2.5">
        <Link href={`/episodes/${params.id}`}>
          <motion.button
            whileTap={{ scale: 0.97 }}
            className="w-full h-12 rounded-2xl font-black flex items-center justify-center gap-2.5 shadow-2xl text-sm font-['Cairo'] text-white"
            style={{ background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)", boxShadow: "0 8px 32px rgba(109,40,217,0.45)" }}
          >
            <div className="w-7 h-7 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
              <Play className="w-3.5 h-3.5 fill-white text-white" />
            </div>
            مشاهدة الأنمي
          </motion.button>
        </Link>

        <div className="flex gap-2.5">
          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={toggleSave}
            className={`w-12 h-11 rounded-2xl flex flex-col items-center justify-center gap-0.5 border transition-all font-['Cairo'] shrink-0
              ${saved
                ? "bg-primary/15 border-primary/30 text-primary"
                : "bg-[#18181B] border-white/7 text-white/50"}`}
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
      <div className="mt-7 px-4">
        <div className="flex items-center mb-3">
          <div className="w-1 h-5 bg-primary rounded-full ml-2" />
          <h2 className="text-[15px] font-black font-['Cairo']">القصة</h2>
        </div>
        <div className="bg-[#111116] border border-white/6 rounded-2xl p-4 relative overflow-hidden">
          <div className="absolute top-0 right-0 w-32 h-32 bg-primary/3 rounded-full blur-3xl pointer-events-none" />
          <p className={`text-[#B4B4B8] leading-relaxed text-[13px] font-['Cairo'] relative z-10 ${!showFull ? "line-clamp-4" : ""}`}>
            {descText}
          </p>
          {descText.length > 200 && (
            <button
              onClick={() => setShowFull(p => !p)}
              className="mt-3 flex items-center gap-1 text-primary text-xs font-black font-['Cairo']"
            >
              {showFull ? "عرض أقل" : "عرض المزيد"}
              <ChevronDown className={`w-3.5 h-3.5 transition-transform ${showFull ? "rotate-180" : ""}`} />
            </button>
          )}
        </div>
      </div>

      {/* ── Characters ── */}
      {anime.characters?.edges?.length > 0 && (
        <div className="mt-7">
          <div className="flex items-center gap-2 mb-3 px-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">الشخصيات</h2>
            <span className="text-[9px] text-white/30 bg-white/5 px-2 py-1 rounded-lg font-['Cairo']">
              <Users className="w-2.5 h-2.5 inline ml-1" />
              {anime.characters.edges.length}
            </span>
          </div>
          <div className="flex gap-2.5 overflow-x-auto px-4 pb-2 no-scrollbar">
            {anime.characters.edges.map((e: any) => (
              <motion.div
                key={e.node.id}
                whileTap={{ scale: 0.95 }}
                className="shrink-0 w-[44px] text-center"
              >
                <div className="relative">
                  <img
                    src={e.node.image.large} alt=""
                    className="w-[44px] h-[44px] rounded-xl object-cover border border-white/8 mb-1"
                  />
                </div>
                <p className="text-[8px] text-white/45 font-bold truncate leading-tight">{e.node.name.full}</p>
              </motion.div>
            ))}
          </div>
        </div>
      )}

      {/* ── Related Anime ── */}
      {(() => {
        const related = (anime.relations?.edges ?? []).filter(
          (e: any) => REL_SHOW.has(e.relationType) && e.node?.type === "ANIME"
        );
        if (!related.length) return null;
        return (
          <div className="mt-7">
            <div className="flex items-center gap-2 mb-3 px-4">
              <div className="w-1 h-5 bg-primary rounded-full" />
              <h2 className="text-[15px] font-black font-['Cairo']">ذات صلة</h2>
            </div>
            <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
              {related.map((e: any) => {
                const node = e.node;
                const relLabel = REL_TYPE[e.relationType] || e.relationType;
                return (
                  <Link key={node.id} href={`/anime/${node.id}`}>
                    <motion.div whileTap={{ scale: 0.94 }} className="shrink-0 w-[120px] cursor-pointer">
                      <div className="relative w-[120px] h-[168px] rounded-2xl overflow-hidden bg-[#1C1C22] border border-white/6">
                        <img src={node.coverImage?.large} alt=""
                          className="w-full h-full object-cover" loading="lazy" />
                        <div className="absolute inset-0 bg-gradient-to-t from-black/85 via-black/10 to-transparent" />
                        <div className="absolute top-2 right-2">
                          <span className="text-[7px] font-black px-1.5 py-0.5 rounded-lg bg-primary/90 text-white">
                            {relLabel}
                          </span>
                        </div>
                        {node.averageScore && (
                          <div className="absolute top-2 left-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-sm text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                            <Star className="w-1.5 h-1.5 fill-current" /> {(node.averageScore / 10).toFixed(1)}
                          </div>
                        )}
                        <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                          {node.format && (
                            <p className="text-[7px] text-white/40 font-bold mb-0.5 uppercase">{node.format}</p>
                          )}
                          <p className="text-[9px] text-white/90 font-bold truncate leading-tight">{node.title?.romaji}</p>
                        </div>
                      </div>
                    </motion.div>
                  </Link>
                );
              })}
            </div>
          </div>
        );
      })()}

      {/* ── Recommendations ── */}
      {anime.recommendations?.nodes?.filter((n: any) => n.mediaRecommendation).length > 0 && (
        <div className="mt-7 px-4">
          <div className="flex items-center gap-2 mb-4">
            <div className="w-1 h-5 bg-primary rounded-full" />
            <h2 className="text-[15px] font-black font-['Cairo']">أنمي مشابه</h2>
          </div>
          <div className="grid grid-cols-3 gap-3">
            {anime.recommendations.nodes.filter((n: any) => n.mediaRecommendation).map((n: any) => {
              const rec = n.mediaRecommendation;
              return (
                <Link key={rec.id} href={`/anime/${rec.id}`}>
                  <motion.div whileTap={{ scale: 0.96 }} className="cursor-pointer">
                    <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#1C1C22] border border-white/6">
                      <img
                        src={rec.coverImage.large} alt=""
                        className="w-full h-full object-cover transition-transform duration-500"
                      />
                      {rec.averageScore && (
                        <div className="absolute top-1.5 right-1.5 bg-black/65 backdrop-blur-sm text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
                          <Star className="w-2 h-2 fill-current" />
                          {(rec.averageScore / 10).toFixed(1)}
                        </div>
                      )}
                    </div>
                    <p className="mt-2 text-[10px] text-white/50 font-bold truncate leading-tight">{rec.title.romaji}</p>
                  </motion.div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* ── Comments Sheet ── */}
      <AnimatePresence>
        {showComments && (
          <>
            <motion.div
              initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              onClick={() => setShowComments(false)}
              className="fixed inset-0 bg-black/75 backdrop-blur-sm z-[100]"
            />
            <motion.div
              initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
              transition={{ type: "spring", damping: 30, stiffness: 300 }}
              className="fixed bottom-0 left-0 right-0 h-[80vh] bg-[#0d0d10] rounded-t-[28px] z-[101] flex flex-col border-t border-white/8"
            >
              {/* Sheet header */}
              <div className="flex items-center justify-between px-5 py-4 border-b border-white/6 shrink-0">
                <div className="flex items-center gap-2" dir="rtl">
                  <MessageCircle className="w-4 h-4 text-primary" />
                  <h2 className="text-sm font-black font-['Cairo']">التعليقات</h2>
                  {comments.length > 0 && (
                    <span className="text-[9px] bg-primary/15 text-primary px-2 py-0.5 rounded-full font-black">{comments.length}</span>
                  )}
                </div>
                <button onClick={() => setShowComments(false)}
                  className="w-8 h-8 bg-white/6 rounded-full flex items-center justify-center active:scale-90">
                  <X className="w-4 h-4 text-white/50" />
                </button>
              </div>

              {/* Comments list */}
              <div className="flex-1 overflow-y-auto p-4 space-y-3" dir="rtl">
                {comments.length === 0 ? (
                  <div className="flex flex-col items-center justify-center h-full gap-3 opacity-30">
                    <MessageCircle className="w-12 h-12" />
                    <p className="text-sm font-bold font-['Cairo']">كن أول من يعلّق!</p>
                  </div>
                ) : (
                  comments.map(c => (
                    <motion.div
                      key={c.id}
                      initial={{ opacity: 0, y: 8 }}
                      animate={{ opacity: 1, y: 0 }}
                      className="flex gap-3"
                    >
                      <div className="w-9 h-9 rounded-xl bg-gradient-to-br from-primary/40 to-primary/20 flex items-center justify-center text-primary font-black text-sm shrink-0 border border-primary/20">
                        م
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-1">
                          <span className="text-xs font-black font-['Cairo']">مستخدم نوفا</span>
                          <span className="text-[9px] text-white/25">{c.time}</span>
                        </div>
                        <p className="text-xs text-white/65 bg-white/5 px-3 py-2.5 rounded-2xl border border-white/5 font-['Cairo'] leading-relaxed">
                          {c.text}
                        </p>
                      </div>
                    </motion.div>
                  ))
                )}
              </div>

              {/* Input */}
              <div className="px-4 py-3 border-t border-white/6 shrink-0" dir="rtl">
                <div className="flex items-center gap-2 bg-[#111116] rounded-2xl px-4 py-2.5 border border-white/8">
                  <input
                    ref={inputRef}
                    value={newComment}
                    onChange={e => setNewComment(e.target.value)}
                    onKeyDown={e => e.key === "Enter" && addComment()}
                    placeholder="اكتب تعليقك..."
                    className="flex-1 bg-transparent text-white text-sm outline-none font-['Cairo'] placeholder:text-white/25"
                  />
                  <motion.button
                    whileTap={{ scale: 0.9 }}
                    onClick={addComment}
                    disabled={!newComment.trim()}
                    className="w-8 h-8 bg-primary rounded-xl flex items-center justify-center shrink-0 disabled:opacity-40"
                  >
                    <Send className="w-3.5 h-3.5 text-white" />
                  </motion.button>
                </div>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </main>
  );
}
