import { useParams, useLocation } from "wouter";
import { useState, useEffect, useRef, useCallback } from "react";
import { Link } from "wouter";
import {
  ChevronRight, Play, Star, Bookmark, Heart, MessageSquare,
  Send, Sparkles, ChevronDown, Flag, MoreVertical, Plus,
  ArrowRight, X, ExternalLink,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

// ── AniList GraphQL ──────────────────────────────────────────────
const DETAIL_Q = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english native }
    description bannerImage isAdult
    coverImage { large extraLarge }
    averageScore popularity favourites
    status episodes duration seasonYear season format source
    startDate { year month day }
    endDate   { year month day }
    genres
    studios(isMain: true) { nodes { name } }
    trailer { id site thumbnail }
    nextAiringEpisode { airingAt episode timeUntilAiring }
    rankings { rank type allTime context }
    characters(perPage: 24, sort: [ROLE, RELEVANCE]) {
      edges {
        role
        node { id name { full } image { large } favourites }
      }
    }
    relations {
      edges {
        relationType
        node { id title { romaji } coverImage { large } format averageScore type }
      }
    }
    recommendations(perPage: 9, sort: [RATING_DESC]) {
      nodes {
        mediaRecommendation {
          id title { romaji } coverImage { large } averageScore
        }
      }
    }
  }
}`;

// ── Lookups ──────────────────────────────────────────────────────
const STATUS_MAP: Record<string, { label: string; color: string }> = {
  RELEASING        : { label: "يُبث الآن", color: "text-emerald-400 bg-emerald-500/15 border-emerald-500/30" },
  FINISHED         : { label: "مكتمل",     color: "text-blue-400   bg-blue-500/15    border-blue-500/30"    },
  NOT_YET_RELEASED : { label: "قريباً",    color: "text-amber-400  bg-amber-500/15   border-amber-500/30"   },
  CANCELLED        : { label: "ملغى",      color: "text-red-400    bg-red-500/15     border-red-500/30"     },
  HIATUS           : { label: "متوقف",     color: "text-orange-400 bg-orange-500/15  border-orange-500/30"  },
};
const FORMAT_MAP: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA",
  SPECIAL: "خاص", MUSIC: "موسيقي", TV_SHORT: "قصير",
};
const SEASON_MAP: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};
const SOURCE_MAP: Record<string, string> = {
  MANGA: "مانجا", LIGHT_NOVEL: "رواية خفيفة", ORIGINAL: "أصلي",
  VISUAL_NOVEL: "رواية مرئية", VIDEO_GAME: "لعبة فيديو",
  WEB_NOVEL: "رواية ويب", NOVEL: "رواية", FOUR_KOMA_MANGA: "4-كوما",
};
const GENRE_MAP: Record<string, string> = {
  "Action": "أكشن", "Adventure": "مغامرة", "Comedy": "كوميدي",
  "Drama": "دراما", "Fantasy": "فانتازيا", "Horror": "رعب",
  "Mecha": "ميكا", "Music": "موسيقى", "Mystery": "غموض",
  "Psychological": "نفسي", "Romance": "رومانسي", "Sci-Fi": "خيال علمي",
  "Slice of Life": "حياة يومية", "Sports": "رياضي", "Supernatural": "خوارق",
  "Thriller": "إثارة", "Ecchi": "إيتشي", "Isekai": "إيسيكاي",
  "Military": "عسكري", "School": "مدرسي", "Magic": "سحر",
  "Historical": "تاريخي", "Shounen": "شونين", "Seinen": "سيينين",
  "Shoujo": "شوجو", "Kids": "أطفال", "Game": "ألعاب",
};
const REL_TYPE: Record<string, string> = {
  SEQUEL: "تكملة", PREQUEL: "مقدمة", SIDE_STORY: "قصة جانبية",
  PARENT: "أصل", SPIN_OFF: "فرع", ALTERNATIVE: "بديل",
};
const REL_SHOW = new Set(["SEQUEL","PREQUEL","SIDE_STORY","SPIN_OFF","PARENT","ALTERNATIVE"]);

function timeAgo(ts: number): string {
  const m = Math.floor((Date.now() - ts) / 60000);
  if (m < 1)  return "الآن";
  if (m < 60) return `منذ ${m} دقيقة`;
  const h = Math.floor(m / 60);
  if (h < 24) return `منذ ${h} ساعة`;
  const d = Math.floor(h / 24);
  if (d < 7)  return `منذ ${d} يوم`;
  return `منذ ${Math.floor(d / 7)} أسبوع`;
}
function fmtDate(d?: { year?: number; month?: number; day?: number }) {
  if (!d?.year) return null;
  return `${d.year}-${String(d.month ?? 1).padStart(2,"0")}-${String(d.day ?? 1).padStart(2,"0")}`;
}
function fmtRuntime(mins: number) {
  if (!mins) return "";
  if (mins < 60) return `${mins} دقيقة`;
  const h = Math.floor(mins / 60), m = mins % 60;
  return m > 0 ? `${h}س ${m}د` : `${h} ساعة`;
}

// ── Types ─────────────────────────────────────────────────────────
interface Reply   { id: number; text: string; user: string; ts: number; likes: number; liked: boolean }
interface Comment { id: number; text: string; user: string; ts: number; likes: number; liked: boolean; replies: Reply[] }

function loadComments(animeId: string): Comment[] {
  try { return JSON.parse(localStorage.getItem(`nova-comments-${animeId}`) || "[]"); } catch { return []; }
}
function saveComments(animeId: string, c: Comment[]) {
  localStorage.setItem(`nova-comments-${animeId}`, JSON.stringify(c));
}
function getMyName() {
  return localStorage.getItem("nova-username") || "مستخدم";
}

// ── Countdown hook ────────────────────────────────────────────────
function useCountdown(targetTs?: number) {
  const [secs, setSecs] = useState(targetTs ? Math.max(0, targetTs - Math.floor(Date.now() / 1000)) : 0);
  useEffect(() => {
    if (!targetTs) return;
    const id = setInterval(() => setSecs(Math.max(0, targetTs - Math.floor(Date.now() / 1000))), 1000);
    return () => clearInterval(id);
  }, [targetTs]);
  if (!targetTs || secs <= 0) return null;
  const d = Math.floor(secs / 86400);
  const h = Math.floor((secs % 86400) / 3600);
  const m = Math.floor((secs % 3600) / 60);
  const s = secs % 60;
  return { d, h, m, s };
}

// ════════════════════════════════════════════════════════════════
//  MAIN COMPONENT
// ════════════════════════════════════════════════════════════════
export default function AnimeDetail() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();

  const [anime, setAnime]           = useState<any>(null);
  const [loading, setLoading]       = useState(true);
  const [descAr, setDescAr]         = useState<string | null>(null);
  const [showFull, setShowFull]     = useState(false);
  const [saved, setSaved]           = useState(false);
  const [myRating, setMyRating]     = useState(0);
  const [hoverRating, setHoverRating] = useState(0);
  const [tab, setTab]               = useState<"chars"|"related"|"similar">("chars");
  const [showComments, setShowComments]   = useState(false);
  const [showReplies, setShowReplies]     = useState<number | null>(null);
  const [showRatingPicker, setShowRatingPicker] = useState(false);
  const [showTrailer, setShowTrailer]     = useState(false);
  const [comments, setComments]     = useState<Comment[]>([]);
  const [newComment, setNewComment] = useState("");
  const [newReply, setNewReply]     = useState("");
  const inputRef = useRef<HTMLInputElement>(null);
  const replyRef = useRef<HTMLInputElement>(null);
  const countdown = useCountdown(anime?.nextAiringEpisode?.airingAt);

  // ── Load anime data ──
  useEffect(() => {
    if (!params.id) return;
    let cancelled = false;
    const ctrl = new AbortController();
    setLoading(true); setAnime(null); setDescAr(null); setShowFull(false);

    const savedList: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    setSaved(savedList.includes(parseInt(params.id)));
    setMyRating(parseInt(localStorage.getItem(`nova-rating-${params.id}`) || "0"));
    setComments(loadComments(params.id));

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id) } }),
      signal: ctrl.signal,
    }).then(r => r.json()).then(d => {
      if (cancelled) return;
      const a = d.data?.Media;
      setAnime(a);
      if (!a?.description) return;
      const cached = localStorage.getItem(`desc-ar-${params.id}`);
      if (cached) { setDescAr(cached); return; }
      const stripped = a.description
        .replace(/<br\s*\/?>/gi, " ").replace(/<[^>]*>/gm, "")
        .replace(/&amp;/g,"&").replace(/&lt;/g,"<").replace(/&gt;/g,">")
        .replace(/&quot;/g,'"').replace(/&#039;/g,"'").replace(/&nbsp;/g," ")
        .replace(/\s+/g," ").trim().substring(0, 500);
      fetch(`/api/anime/translate?text=${encodeURIComponent(stripped)}`, { signal: ctrl.signal })
        .then(r2 => r2.json()).then(d2 => {
          if (cancelled) return;
          const t = d2.translated;
          if (t && t !== stripped && t.length > 10) {
            setDescAr(t); localStorage.setItem(`desc-ar-${params.id}`, t);
          } else setDescAr(stripped);
        }).catch(() => { if (!cancelled) setDescAr(stripped); });
    }).catch(() => {}).finally(() => { if (!cancelled) setLoading(false); });
    return () => { cancelled = true; ctrl.abort(); };
  }, [params.id]);

  // ── Actions ──
  const toggleSave = () => {
    const list: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    const id = parseInt(params.id!);
    const upd = saved ? list.filter(i => i !== id) : [...list, id];
    localStorage.setItem("savedAnime", JSON.stringify(upd));
    setSaved(!saved);
  };

  const submitRating = (r: number) => {
    setMyRating(r);
    localStorage.setItem(`nova-rating-${params.id}`, String(r));
    setShowRatingPicker(false);
  };

  const addComment = () => {
    const txt = newComment.trim();
    if (!txt) return;
    const c: Comment = { id: Date.now(), text: txt, user: getMyName(), ts: Date.now(), likes: 0, liked: false, replies: [] };
    const upd = [c, ...comments];
    setComments(upd); saveComments(params.id!, upd); setNewComment("");
  };

  const toggleLike = (id: number) => {
    const upd = comments.map(c => c.id === id
      ? { ...c, likes: c.liked ? c.likes - 1 : c.likes + 1, liked: !c.liked }
      : c);
    setComments(upd); saveComments(params.id!, upd);
  };

  const addReply = (commentId: number) => {
    const txt = newReply.trim();
    if (!txt) return;
    const reply: Reply = { id: Date.now(), text: txt, user: getMyName(), ts: Date.now(), likes: 0, liked: false };
    const upd = comments.map(c => c.id === commentId
      ? { ...c, replies: [...c.replies, reply] }
      : c);
    setComments(upd); saveComments(params.id!, upd); setNewReply("");
  };

  const toggleReplyLike = (commentId: number, replyId: number) => {
    const upd = comments.map(c => c.id === commentId
      ? { ...c, replies: c.replies.map(r => r.id === replyId
          ? { ...r, likes: r.liked ? r.likes - 1 : r.likes + 1, liked: !r.liked }
          : r) }
      : c);
    setComments(upd); saveComments(params.id!, upd);
  };

  // ── Loading / Error ──
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

  const score      = anime.averageScore ? (anime.averageScore / 10).toFixed(2) : null;
  const descText   = descAr || anime.description?.replace(/<[^>]*>/gm,"") || "";
  const statusInfo = STATUS_MAP[anime.status] || { label: anime.status, color: "text-white/50 bg-white/8 border-white/10" };
  const allTimeRank = anime.rankings?.find((r: any) => r.allTime && r.type === "RATED")?.rank;
  const mainChars  = anime.characters?.edges?.filter((e: any) => e.role === "MAIN") || [];
  const suppChars  = anime.characters?.edges?.filter((e: any) => e.role !== "MAIN")  || [];
  const related    = anime.relations?.edges?.filter((e: any) => REL_SHOW.has(e.relationType) && e.node?.type === "ANIME") || [];
  const recs       = anime.recommendations?.nodes?.filter((n: any) => n.mediaRecommendation) || [];
  const trailerYT  = anime.trailer?.site === "youtube" ? anime.trailer.id : null;
  const startD     = fmtDate(anime.startDate);
  const endD       = fmtDate(anime.endDate);

  return (
    <main className="bg-[#09090B] min-h-screen pb-32 text-white" dir="rtl">

      {/* ══ HERO BANNER ══════════════════════════════════════════ */}
      <div className="relative w-full overflow-hidden" style={{ height: 240 }}>
        <img src={anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large}
          alt="" className="w-full h-full object-cover" />
        <div className="absolute inset-0" style={{
          background: "linear-gradient(to bottom,rgba(9,9,11,.3) 0%,rgba(9,9,11,.55) 50%,rgba(9,9,11,1) 100%)"
        }} />
        <button onClick={() => navigate(-1 as any)}
          className="absolute top-5 right-4 w-9 h-9 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90">
          <ChevronRight className="w-4 h-4 text-white" />
        </button>
      </div>

      {/* ══ COVER + TITLE ════════════════════════════════════════ */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-60"
            style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" />
          </div>
          {anime.format && FORMAT_MAP[anime.format] && (
            <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
              {FORMAT_MAP[anime.format]}
            </div>
          )}
        </div>
        <div className="flex-1 pb-3 min-w-0 space-y-1.5">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">
            {anime.title.arabic || anime.title.english || anime.title.romaji}
          </h1>
          <p className="text-[10px] text-white/35 line-clamp-1">{anime.title.romaji}</p>
          <div className="flex flex-wrap gap-1.5">
            <span className={`text-[9px] font-black px-2 py-1 rounded-lg border font-['Cairo'] ${statusInfo.color}`}>
              {statusInfo.label}
            </span>
            {anime.episodes && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-primary/20 bg-primary/10 text-primary font-['Cairo']">
                {anime.episodes} حلقة
              </span>
            )}
          </div>
        </div>
      </div>

      {/* ══ NEXT EPISODE COUNTDOWN ═══════════════════════════════ */}
      {countdown && (
        <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
          className="mx-4 mt-5 rounded-2xl px-4 py-3"
          style={{ background: "rgba(234,179,8,0.08)", border: "1px solid rgba(234,179,8,0.22)" }}>
          <p className="text-amber-400 text-[11px] font-black font-['Cairo'] mb-2">
            ◉ حلقة جديدة بعد: {countdown.d} يوم {countdown.h} ساعة {countdown.m} دقيقة {countdown.s} ثانية
          </p>
          <p className="text-amber-300/50 text-[10px] font-['Cairo']">
            الحلقة {anime.nextAiringEpisode.episode} (وقت تقريبي)
          </p>
        </motion.div>
      )}

      {/* ══ SCORE + ACTIONS GRID ═════════════════════════════════ */}
      <div className="px-4 mt-5">
        {/* Score bar */}
        {score && (
          <div className="flex items-center gap-2 mb-4">
            <Star className="w-5 h-5 text-amber-400 fill-amber-400" />
            <span className="text-2xl font-black text-white">{score}</span>
            <span className="text-white/30 text-xs font-['Cairo']">/ 10</span>
            {anime.popularity && (
              <span className="mr-2 text-[10px] text-white/25 font-['Cairo']">
                {anime.popularity.toLocaleString()} مستخدم
              </span>
            )}
          </div>
        )}

        {/* 3-col action buttons */}
        <div className="grid grid-cols-3 gap-2 mb-2">
          {[
            { icon: Star,          label: "اضف تقييمك",   active: myRating > 0, activeColor: "#EAB308", action: () => setShowRatingPicker(true) },
            { icon: Plus,          label: "قائمتي",        active: saved,        activeColor: "#8B5CF6", action: toggleSave },
            { icon: Heart,         label: "المفضلة",       active: saved,        activeColor: "#EC4899", action: toggleSave },
          ].map(({ icon: Icon, label, active, activeColor, action }) => (
            <motion.button key={label} whileTap={{ scale: 0.94 }} onClick={action}
              className="flex flex-col items-center gap-1.5 py-3 rounded-2xl border transition-all font-['Cairo']"
              style={active
                ? { background: `${activeColor}18`, borderColor: `${activeColor}40`, color: activeColor }
                : { background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}>
              <Icon className="w-4 h-4" style={active ? { fill: activeColor, color: activeColor } : {}} />
              <span className="text-[9px] font-black">{label}</span>
              {label === "اضف تقييمك" && myRating > 0 && (
                <span className="text-[9px] font-black" style={{ color: activeColor }}>{myRating}/10</span>
              )}
            </motion.button>
          ))}
        </div>
        <div className="grid grid-cols-3 gap-2">
          {[
            { label: "تعليقات", sub: comments.length > 0 ? String(comments.length) : "", action: () => setShowComments(true) },
            { label: "مشاهدة", sub: "",  action: () => navigate(`/episodes/${params.id}`) },
            { label: "MAL",    sub: anime.idMal ? `#${anime.idMal}` : "", action: () => anime.idMal && window.open(`https://myanimelist.net/anime/${anime.idMal}`, "_blank") },
          ].map(({ label, sub, action }) => (
            <motion.button key={label} whileTap={{ scale: 0.94 }} onClick={action}
              className="flex flex-col items-center gap-1 py-3 rounded-2xl border font-['Cairo'] transition-all"
              style={{ background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.55)" }}>
              <span className="text-[11px] font-black">{label}</span>
              {sub && <span className="text-[9px] text-white/30">{sub}</span>}
            </motion.button>
          ))}
        </div>
      </div>

      {/* ══ MAL STATS BOX ════════════════════════════════════════ */}
      {(score || allTimeRank || anime.popularity) && (
        <div className="mx-4 mt-5 rounded-2xl overflow-hidden"
          style={{ background: "linear-gradient(135deg,#1e3a5f,#1a2d4a)", border: "1px solid rgba(59,130,246,0.25)" }}>
          <div className="px-4 py-2 border-b border-white/10">
            <p className="text-[11px] font-black text-blue-300/80 font-['Cairo'] text-center">MyAnimeList</p>
          </div>
          <div className="flex divide-x divide-x-reverse divide-white/8">
            {score && (
              <div className="flex-1 flex flex-col items-center py-3 px-2">
                <div className="flex items-center gap-1">
                  <Star className="w-3.5 h-3.5 text-amber-400 fill-amber-400" />
                  <span className="text-white font-black text-base">{score}</span>
                </div>
                {anime.popularity && (
                  <span className="text-[9px] text-white/35 font-['Cairo']">({anime.popularity.toLocaleString()})</span>
                )}
              </div>
            )}
            {allTimeRank && (
              <div className="flex-1 flex flex-col items-center py-3 px-2">
                <span className="text-white font-black text-base">#{allTimeRank}</span>
                <span className="text-[9px] text-white/35 font-['Cairo']">الترتيب</span>
              </div>
            )}
            {anime.idMal && (
              <div className="flex-1 flex flex-col items-center justify-center py-3 px-2">
                <button onClick={() => window.open(`https://myanimelist.net/anime/${anime.idMal}`, "_blank")}
                  className="flex items-center gap-1 text-blue-300 text-[10px] font-black font-['Cairo']">
                  المزيد <ArrowRight className="w-3 h-3" />
                </button>
              </div>
            )}
          </div>
        </div>
      )}

      {/* ══ SYNOPSIS ═════════════════════════════════════════════ */}
      {descText && (
        <div className="mt-5 px-4">
          <SectionHeader title="القصة" />
          <div className="bg-[#111116] border border-white/6 rounded-2xl p-4">
            <p className={`text-[#B4B4B8] leading-loose text-[13px] font-['Cairo'] ${!showFull ? "line-clamp-4" : ""}`}>
              {descText}
            </p>
            {descText.length > 200 && (
              <button onClick={() => setShowFull(p => !p)}
                className="mt-3 flex items-center gap-1 text-primary text-xs font-black font-['Cairo']">
                {showFull ? "عرض أقل" : "عرض المزيد"}
                <ChevronDown className={`w-3.5 h-3.5 transition-transform ${showFull ? "rotate-180" : ""}`} />
              </button>
            )}
          </div>
        </div>
      )}

      {/* ══ GENRES ═══════════════════════════════════════════════ */}
      {anime.genres?.length > 0 && (
        <div className="mt-4 px-4 flex gap-2 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
          {anime.genres.slice(0, 10).map((g: string) => (
            <span key={g}
              className="shrink-0 text-[10px] font-bold bg-[#18181B] text-white/55 px-3 py-1.5 rounded-xl border border-white/6 font-['Cairo'] whitespace-nowrap">
              {GENRE_MAP[g] || g}
            </span>
          ))}
        </div>
      )}

      {/* ══ METADATA ═════════════════════════════════════════════ */}
      <div className="mt-5 px-4">
        <div className="rounded-2xl border border-white/6 overflow-hidden divide-y divide-white/5"
          style={{ background: "rgba(255,255,255,0.025)" }}>
          {anime.source && (
            <MetaRow label="المصدر" value={SOURCE_MAP[anime.source] || anime.source} />
          )}
          {anime.duration && (
            <MetaRow label="مدة الحلقة" value={`${fmtRuntime(anime.duration)}`} />
          )}
          {(startD || endD) && (
            <MetaRow label="عرض من : الى" value={`${startD || "؟"} : ${endD || "مستمر"}`} />
          )}
          {anime.studios?.nodes?.[0] && (
            <MetaRow label="الاستوديو" value={anime.studios.nodes[0].name} badge />
          )}
          {anime.title.english && (
            <MetaRow label="العنوان الانجليزي" value={anime.title.english} english />
          )}
        </div>
      </div>

      {/* ══ TRAILER ══════════════════════════════════════════════ */}
      {trailerYT && (
        <div className="mt-5 px-4">
          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={() => setShowTrailer(true)}
            className="w-full flex items-center gap-4 rounded-2xl overflow-hidden border border-white/8"
            style={{ background: "rgba(255,255,255,0.035)" }}>
            <div className="relative w-28 h-16 shrink-0">
              <img
                src={anime.trailer?.thumbnail || `https://img.youtube.com/vi/${trailerYT}/mqdefault.jpg`}
                alt="trailer" className="w-full h-full object-cover" />
              <div className="absolute inset-0 flex items-center justify-center bg-black/40">
                <div className="w-8 h-8 bg-red-600 rounded-full flex items-center justify-center shadow-lg">
                  <Play className="w-4 h-4 text-white fill-white" />
                </div>
              </div>
            </div>
            <div className="flex-1 py-3 pr-1 text-right">
              <p className="text-white font-black text-sm font-['Cairo']">العرض الدعائي</p>
              <p className="text-white/35 text-[10px] font-['Cairo'] mt-0.5">YouTube PV</p>
            </div>
            <ExternalLink className="w-4 h-4 text-white/25 ml-4 shrink-0" />
          </motion.button>
        </div>
      )}

      {/* ══ TABS: CHARS | RELATED | SIMILAR ══════════════════════ */}
      <div className="mt-6 px-4">
        <div className="flex border-b border-white/8 mb-4 gap-1">
          {[
            { key: "chars",   label: "الشخصيات" },
            { key: "related", label: "ذات صلة" },
            { key: "similar", label: "أنميات مشابهة" },
          ].map(t => (
            <button key={t.key} onClick={() => setTab(t.key as any)}
              className="px-4 py-2.5 text-[12px] font-black font-['Cairo'] transition-all relative"
              style={{ color: tab === t.key ? "#c4b5fd" : "rgba(255,255,255,0.3)" }}>
              {t.label}
              {tab === t.key && (
                <motion.div layoutId="tab-line"
                  className="absolute bottom-0 left-0 right-0 h-[2px] rounded-full"
                  style={{ background: "#8B5CF6" }} />
              )}
            </button>
          ))}
        </div>

        {/* Characters tab */}
        {tab === "chars" && (
          <div className="space-y-5">
            {mainChars.length > 0 && (
              <div>
                <p className="text-[12px] font-black text-white/60 font-['Cairo'] mb-3 text-center">الشخصيات الرئيسية</p>
                <div className="grid grid-cols-4 gap-2.5">
                  {mainChars.map((e: any) => <CharCard key={e.node.id} e={e} main />)}
                </div>
              </div>
            )}
            {suppChars.length > 0 && (
              <div>
                <p className="text-[12px] font-black text-white/60 font-['Cairo'] mb-3 text-center">الشخصيات المساعدة</p>
                <div className="grid grid-cols-4 gap-2.5">
                  {suppChars.slice(0, 8).map((e: any) => <CharCard key={e.node.id} e={e} />)}
                </div>
              </div>
            )}
            {mainChars.length === 0 && suppChars.length === 0 && (
              <p className="text-center text-white/20 text-sm font-['Cairo'] py-8">لا توجد بيانات</p>
            )}
          </div>
        )}

        {/* Related tab */}
        {tab === "related" && (
          <div>
            {related.length === 0
              ? <p className="text-center text-white/20 text-sm font-['Cairo'] py-8">لا توجد أعمال ذات صلة</p>
              : <div className="flex gap-3 overflow-x-auto pb-2" style={{ scrollbarWidth: "none" }}>
                  {related.map((e: any) => {
                    const n = e.node;
                    return (
                      <Link key={n.id} href={`/anime/${n.id}`}>
                        <motion.div whileTap={{ scale: 0.95 }} className="shrink-0 w-[110px] cursor-pointer">
                          <div className="relative w-[110px] h-[155px] rounded-2xl overflow-hidden border border-white/6 bg-[#1C1C22]">
                            <img src={n.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                            <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                            <span className="absolute top-2 right-2 text-[7px] font-black px-1.5 py-0.5 rounded-lg bg-primary/90 text-white">
                              {REL_TYPE[e.relationType] || e.relationType}
                            </span>
                            {n.averageScore && (
                              <div className="absolute top-2 left-2 flex items-center gap-0.5 bg-black/70 text-amber-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                                <Star className="w-1.5 h-1.5 fill-current" /> {(n.averageScore / 10).toFixed(1)}
                              </div>
                            )}
                            <p className="absolute bottom-0 inset-x-0 px-2 pb-2 text-[9px] text-white/90 font-bold line-clamp-2 leading-tight">
                              {n.title?.romaji}
                            </p>
                          </div>
                        </motion.div>
                      </Link>
                    );
                  })}
                </div>
            }
          </div>
        )}

        {/* Similar tab */}
        {tab === "similar" && (
          <div>
            {recs.length === 0
              ? <p className="text-center text-white/20 text-sm font-['Cairo'] py-8">لا توجد توصيات</p>
              : <div className="grid grid-cols-3 gap-3">
                  {recs.map((n: any) => {
                    const rec = n.mediaRecommendation;
                    return (
                      <Link key={rec.id} href={`/anime/${rec.id}`}>
                        <motion.div whileTap={{ scale: 0.96 }} className="cursor-pointer">
                          <div className="relative aspect-[2/3] rounded-2xl overflow-hidden border border-white/6 bg-[#1C1C22]">
                            <img src={rec.coverImage.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                            {rec.averageScore && (
                              <div className="absolute top-1.5 right-1.5 bg-black/70 text-amber-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
                                <Star className="w-2 h-2 fill-current" /> {(rec.averageScore / 10).toFixed(1)}
                              </div>
                            )}
                          </div>
                          <p className="mt-1.5 text-[10px] text-white/50 font-bold line-clamp-2 leading-tight font-['Cairo'] text-right">
                            {rec.title.romaji}
                          </p>
                        </motion.div>
                      </Link>
                    );
                  })}
                </div>
            }
          </div>
        )}
      </div>

      {/* ══ COMMENTS INLINE PREVIEW ══════════════════════════════ */}
      <div className="mt-6 px-4">
        <div className="flex items-center justify-between mb-3">
          <SectionHeader title={`التعليقات${comments.length ? ` (${comments.length})` : ""}`} />
          <button onClick={() => setShowComments(true)}
            className="text-[10px] text-primary font-black font-['Cairo']">
            عرض الكل
          </button>
        </div>
        {comments.length === 0 ? (
          <motion.button whileTap={{ scale: 0.97 }} onClick={() => setShowComments(true)}
            className="w-full py-4 rounded-2xl border border-dashed border-white/10 text-white/25 text-xs font-['Cairo'] flex items-center justify-center gap-2">
            <MessageSquare className="w-4 h-4" />
            كن أول من يعلّق!
          </motion.button>
        ) : (
          <div className="space-y-0 divide-y divide-white/5 rounded-2xl overflow-hidden border border-white/6"
            style={{ background: "rgba(255,255,255,0.025)" }}>
            {comments.slice(0, 3).map(c => (
              <CommentRow key={c.id} c={c}
                onLike={() => toggleLike(c.id)}
                onReply={() => { setShowReplies(c.id); setShowComments(true); }}
              />
            ))}
            {comments.length > 3 && (
              <button onClick={() => setShowComments(true)}
                className="w-full py-3 text-[11px] text-primary font-black font-['Cairo']">
                + {comments.length - 3} تعليقات أخرى
              </button>
            )}
          </div>
        )}
      </div>

      {/* ══ TRAILER MODAL ════════════════════════════════════════ */}
      <AnimatePresence>
        {showTrailer && trailerYT && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              onClick={() => setShowTrailer(false)}
              className="fixed inset-0 bg-black/90 backdrop-blur-sm z-[110]" />
            <motion.div
              initial={{ opacity: 0, scale: 0.92 }} animate={{ opacity: 1, scale: 1 }}
              exit={{ opacity: 0, scale: 0.92 }}
              className="fixed inset-x-4 top-1/2 -translate-y-1/2 z-[111] rounded-2xl overflow-hidden shadow-2xl"
              style={{ maxHeight: "60vw", aspectRatio: "16/9" }}>
              <iframe
                src={`https://www.youtube.com/embed/${trailerYT}?autoplay=1&rel=0`}
                className="w-full h-full"
                allow="autoplay; fullscreen"
                allowFullScreen />
            </motion.div>
            <button onClick={() => setShowTrailer(false)}
              className="fixed top-6 left-4 z-[112] w-9 h-9 bg-black/60 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15">
              <X className="w-4 h-4 text-white" />
            </button>
          </>
        )}
      </AnimatePresence>

      {/* ══ COMMENTS FULL SCREEN ═════════════════════════════════ */}
      <AnimatePresence>
        {showComments && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="fixed inset-0 bg-[#0d0d10] z-[100]" />
            <motion.div
              initial={{ x: "-100%" }} animate={{ x: 0 }} exit={{ x: "-100%" }}
              transition={{ type: "spring", damping: 30, stiffness: 300 }}
              className="fixed inset-0 bg-[#0d0d10] z-[101] flex flex-col" dir="rtl">

              {/* Header */}
              <div className="flex items-center justify-between px-4 pt-12 pb-3 border-b border-white/6 shrink-0">
                <div className="flex items-center gap-2">
                  <button onClick={() => { setShowComments(false); setShowReplies(null); }}
                    className="w-8 h-8 flex items-center justify-center active:scale-90">
                    <ChevronRight className="w-5 h-5 text-white/70" />
                  </button>
                  <h2 className="text-base font-black font-['Cairo']">
                    {showReplies != null ? "الردود" : "التعليقات"}
                  </h2>
                </div>
                {showReplies == null && (
                  <button onClick={() => { setShowReplies(null); setTimeout(() => inputRef.current?.focus(), 100); }}
                    className="w-8 h-8 rounded-full bg-white/6 flex items-center justify-center">
                    <Plus className="w-4 h-4 text-white/60" />
                  </button>
                )}
                {showReplies != null && (
                  <button onClick={() => setShowReplies(null)}
                    className="text-[10px] text-primary font-black font-['Cairo']">
                    كل التعليقات
                  </button>
                )}
              </div>

              {/* Comments / Replies list */}
              <div className="flex-1 overflow-y-auto" dir="rtl">
                {showReplies == null ? (
                  /* Comments list */
                  <div className="divide-y divide-white/5">
                    {comments.length === 0 && (
                      <div className="flex flex-col items-center justify-center py-24 gap-3 opacity-30">
                        <MessageSquare className="w-12 h-12" />
                        <p className="text-sm font-bold font-['Cairo']">كن أول من يعلّق!</p>
                      </div>
                    )}
                    {comments.map(c => (
                      <CommentRow key={c.id} c={c} full
                        onLike={() => toggleLike(c.id)}
                        onReply={() => { setShowReplies(c.id); setTimeout(() => replyRef.current?.focus(), 100); }}
                      />
                    ))}
                  </div>
                ) : (
                  /* Replies for a specific comment */
                  (() => {
                    const parent = comments.find(c => c.id === showReplies);
                    if (!parent) return null;
                    return (
                      <div className="divide-y divide-white/5">
                        {/* Parent comment */}
                        <CommentRow c={parent} full
                          onLike={() => toggleLike(parent.id)}
                          onReply={() => {}} isParent />
                        <div className="px-4 py-2">
                          <p className="text-[9px] text-white/25 font-['Cairo']">{parent.replies.length} رد</p>
                        </div>
                        {/* Replies */}
                        {parent.replies.map(r => (
                          <div key={r.id} className="px-4 py-3 flex gap-3">
                            <div className="w-8 h-8 rounded-full flex items-center justify-center text-xs font-black text-white shrink-0"
                              style={{ background: avatarColor(r.user) }}>
                              {r.user.charAt(0).toUpperCase()}
                            </div>
                            <div className="flex-1 min-w-0">
                              <div className="flex items-center gap-2 mb-1">
                                <span className="text-[11px] font-black font-['Cairo']">{r.user}</span>
                                <span className="text-[9px] text-white/25 font-['Cairo']">{timeAgo(r.ts)}</span>
                              </div>
                              <div className="bg-[#1a1a1f] rounded-2xl rounded-tr-sm px-3 py-2.5 border border-white/6">
                                <p className="text-[12px] text-white/80 font-['Cairo'] leading-relaxed">{r.text}</p>
                              </div>
                              <div className="flex items-center gap-4 mt-1.5 px-1">
                                <button onClick={() => toggleReplyLike(parent.id, r.id)}
                                  className="flex items-center gap-1 text-[10px]"
                                  style={{ color: r.liked ? "#EC4899" : "rgba(255,255,255,0.3)" }}>
                                  <Heart className={`w-3 h-3 ${r.liked ? "fill-current" : ""}`} />
                                  {r.likes > 0 && <span>{r.likes}</span>}
                                </button>
                                <MoreVertical className="w-3.5 h-3.5 text-white/20" />
                              </div>
                            </div>
                          </div>
                        ))}
                      </div>
                    );
                  })()
                )}
              </div>

              {/* Input */}
              <div className="px-4 py-3 border-t border-white/6 shrink-0" dir="rtl">
                <div className="flex items-center gap-2 bg-[#111116] rounded-2xl px-4 py-2.5 border border-white/8">
                  <input
                    ref={showReplies != null ? replyRef : inputRef}
                    value={showReplies != null ? newReply : newComment}
                    onChange={e => showReplies != null ? setNewReply(e.target.value) : setNewComment(e.target.value)}
                    onKeyDown={e => e.key === "Enter" && (showReplies != null ? addReply(showReplies) : addComment())}
                    placeholder={showReplies != null ? "اضافة رد..." : "اكتب تعليقك..."}
                    className="flex-1 bg-transparent text-white text-sm outline-none font-['Cairo'] placeholder:text-white/25"
                  />
                  <motion.button whileTap={{ scale: 0.9 }}
                    onClick={() => showReplies != null ? addReply(showReplies) : addComment()}
                    disabled={!(showReplies != null ? newReply : newComment).trim()}
                    className="w-8 h-8 bg-primary rounded-xl flex items-center justify-center shrink-0 disabled:opacity-40">
                    <Send className="w-3.5 h-3.5 text-white" />
                  </motion.button>
                </div>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>

      {/* ══ RATING PICKER ════════════════════════════════════════ */}
      <AnimatePresence>
        {showRatingPicker && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              onClick={() => setShowRatingPicker(false)}
              className="fixed inset-0 bg-black/75 backdrop-blur-sm z-[100]" />
            <motion.div
              initial={{ y: "100%", opacity: 0 }} animate={{ y: 0, opacity: 1 }}
              exit={{ y: "100%", opacity: 0 }}
              transition={{ type: "spring", damping: 30, stiffness: 300 }}
              className="fixed bottom-0 left-0 right-0 rounded-t-[28px] z-[101] p-6 pb-10"
              style={{ background: "#111116", border: "1px solid rgba(255,255,255,0.08)" }}
              dir="rtl">
              <p className="text-center text-base font-black font-['Cairo'] mb-1">أضف تقييمك</p>
              <p className="text-center text-white/30 text-[11px] font-['Cairo'] mb-6">اختر تقييمك من 1 إلى 10</p>
              <div className="flex justify-center gap-1.5 mb-6">
                {Array.from({ length: 10 }, (_, i) => i + 1).map(n => (
                  <motion.button key={n} whileTap={{ scale: 0.85 }}
                    onMouseEnter={() => setHoverRating(n)}
                    onMouseLeave={() => setHoverRating(0)}
                    onClick={() => submitRating(n)}
                    className="w-9 h-9 rounded-xl flex items-center justify-center text-sm font-black transition-all"
                    style={n <= (hoverRating || myRating)
                      ? { background: "rgba(234,179,8,0.2)", color: "#EAB308", border: "1px solid rgba(234,179,8,0.4)" }
                      : { background: "rgba(255,255,255,0.05)", color: "rgba(255,255,255,0.25)", border: "1px solid rgba(255,255,255,0.06)" }}>
                    {n}
                  </motion.button>
                ))}
              </div>
              {myRating > 0 && (
                <button onClick={() => submitRating(0)}
                  className="w-full py-2 text-[11px] text-red-400/60 font-['Cairo']">
                  حذف التقييم
                </button>
              )}
            </motion.div>
          </>
        )}
      </AnimatePresence>

    </main>
  );
}

// ── Sub-components ───────────────────────────────────────────────
function SectionHeader({ title }: { title: string }) {
  return (
    <div className="flex items-center mb-3">
      <div className="w-1 h-5 bg-primary rounded-full ml-2 shrink-0" />
      <h2 className="text-[15px] font-black font-['Cairo']">{title}</h2>
    </div>
  );
}

function MetaRow({ label, value, badge, english }: { label: string; value: string; badge?: boolean; english?: boolean }) {
  return (
    <div className="flex items-center justify-between px-4 py-3 gap-4">
      <span className="text-[11px] text-white/35 font-['Cairo'] shrink-0">{label}</span>
      {badge ? (
        <span className="text-[11px] font-black font-['Cairo'] px-3 py-1 rounded-xl"
          style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.3)", color: "#c4b5fd" }}>
          {value}
        </span>
      ) : (
        <span className={`text-[11px] font-black font-['Cairo'] text-right ${english ? "" : "text-white/80"}`}
          dir={english ? "ltr" : "rtl"}>
          {value}
        </span>
      )}
    </div>
  );
}

function CharCard({ e, main }: { e: any; main?: boolean }) {
  const n = e.node;
  return (
    <motion.div whileTap={{ scale: 0.93 }} className="flex flex-col items-center gap-1.5">
      <div className="relative w-full aspect-[3/4] rounded-xl overflow-hidden border border-white/8"
        style={main ? { boxShadow: "0 0 0 1.5px rgba(139,92,246,0.5)" } : {}}>
        <img src={n.image?.large} alt={n.name?.full}
          className="w-full h-full object-cover object-top" loading="lazy" />
        {n.favourites > 0 && (
          <div className="absolute bottom-1 left-1 flex items-center gap-0.5 bg-black/70 backdrop-blur-sm px-1.5 py-0.5 rounded-lg">
            <Heart className="w-2 h-2 text-pink-400 fill-pink-400" />
            <span className="text-[7px] text-white font-black">{n.favourites}</span>
          </div>
        )}
      </div>
      <p className="text-[8px] text-white/50 font-bold text-center line-clamp-2 leading-tight px-0.5">
        {n.name?.full}
      </p>
    </motion.div>
  );
}

function CommentRow({ c, onLike, onReply, full, isParent }: {
  c: any; onLike: () => void; onReply: () => void; full?: boolean; isParent?: boolean;
}) {
  return (
    <div className="px-4 py-3.5 flex gap-3">
      <div className="w-9 h-9 rounded-full flex items-center justify-center text-sm font-black text-white shrink-0"
        style={{ background: avatarColor(c.user) }}>
        {c.user.charAt(0).toUpperCase()}
      </div>
      <div className="flex-1 min-w-0">
        <div className="flex items-start justify-between mb-1">
          <div>
            <span className="text-[12px] font-black font-['Cairo']">{c.user}</span>
            <span className="mr-2 text-[9px] text-white/25 font-['Cairo']">{timeAgo(c.ts)}</span>
          </div>
          {!isParent && <Flag className="w-3.5 h-3.5 text-white/15 shrink-0" />}
        </div>
        <p className={`text-[13px] text-white/80 font-['Cairo'] leading-relaxed ${!full ? "line-clamp-2" : ""}`}>
          {c.text}
        </p>
        <div className="flex items-center gap-5 mt-2">
          <button onClick={onLike}
            className="flex items-center gap-1.5 text-[11px] transition-colors"
            style={{ color: c.liked ? "#EC4899" : "rgba(255,255,255,0.3)" }}>
            <Heart className={`w-3.5 h-3.5 ${c.liked ? "fill-current" : ""}`} />
            <span>{c.likes || 0}</span>
          </button>
          <button onClick={onReply}
            className="flex items-center gap-1.5 text-[11px] text-white/30">
            <MessageSquare className="w-3.5 h-3.5" />
            <span>{c.replies?.length || 0}</span>
          </button>
        </div>
      </div>
    </div>
  );
}

function avatarColor(name: string) {
  const colors = ["#EF4444","#F97316","#EAB308","#22C55E","#14B8A6","#3B82F6","#8B5CF6","#EC4899"];
  return colors[name.charCodeAt(0) % colors.length];
}
