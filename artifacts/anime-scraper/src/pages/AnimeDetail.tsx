import { useParams, useLocation } from "wouter";
import { useState, useEffect, useRef, useCallback } from "react";
import { Link } from "wouter";
import {
  ChevronRight, Play, Star, Heart, MessageSquare,
  Send, Sparkles, ChevronDown, Flag, Plus, X,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";
import { motion, AnimatePresence } from "framer-motion";
import CommentsSheet from "@/components/CommentsSheet";

const ADULT_WARN = "قد يحتوي هذا الأنمي على مشاهد جنسية أو عنف أو مشاهد للبالغين فقط وغير مناسبة للأطفال أو المشاهدة العائلية.\n\nينصح بمراعاة المشاهدين";

// ── Age rating helper ─────────────────────────────────────────────
function getAgeRating(genres: string[], isAdult: boolean) {
  if (isAdult) return { label: "+18", color: "#ef4444", bg: "rgba(239,68,68,0.14)", warn: ADULT_WARN };
  const g = (genres || []).map(x => x.toLowerCase());
  if (g.some(x => ["ecchi"].includes(x)))
    return { label: "+17", color: "#ef4444", bg: "rgba(239,68,68,0.10)", warn: ADULT_WARN };
  if (g.some(x => ["horror", "psychological", "thriller"].includes(x)))
    return { label: "+17", color: "#ef4444", bg: "rgba(239,68,68,0.10)", warn: ADULT_WARN };
  if (g.some(x => ["kids"].includes(x)))
    return { label: "+7", color: "#22c55e", bg: "rgba(34,197,94,0.13)", warn: null };
  return { label: "+13", color: "#a78bfa", bg: "rgba(167,139,250,0.11)", warn: null };
}

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

function timeAgo(ts: number | string): string {
  const m = Math.floor((Date.now() - new Date(ts).getTime()) / 60000);
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
interface Comment {
  id: string;
  userId: string;
  username: string;
  avatarUrl?: string | null;
  text: string;
  likes: number;
  liked: boolean;
  createdAt: string;
}
function getFavChars(): any[] {
  try { return JSON.parse(localStorage.getItem("fav-characters") || "[]"); } catch { return []; }
}
function saveFavChars(chars: any[]) {
  localStorage.setItem("fav-characters", JSON.stringify(chars));
}

// ── Countdown hook (updates every minute, no seconds) ─────────────
function useCountdown(targetTs?: number, animeId?: string | number) {
  const cacheKey = animeId ? `airing-ts-${animeId}` : null;
  const [secs, setSecs] = useState(() => {
    const ts = targetTs ?? (cacheKey ? Number(localStorage.getItem(cacheKey) || 0) : 0);
    return ts ? Math.max(0, ts - Math.floor(Date.now() / 1000)) : 0;
  });
  useEffect(() => {
    if (!targetTs) return;
    if (cacheKey) localStorage.setItem(cacheKey, String(targetTs));
    setSecs(Math.max(0, targetTs - Math.floor(Date.now() / 1000)));
    const id = setInterval(() => setSecs(Math.max(0, targetTs - Math.floor(Date.now() / 1000))), 60_000);
    return () => clearInterval(id);
  }, [targetTs, cacheKey]);
  if (secs <= 0) return null;
  const d = Math.floor(secs / 86400);
  const h = Math.floor((secs % 86400) / 3600);
  const m = Math.floor((secs % 3600) / 60);
  return { d, h, m };
}

// ════════════════════════════════════════════════════════════════
//  MAIN COMPONENT
// ════════════════════════════════════════════════════════════════
export default function AnimeDetail() {
  const params = useParams<{ id: string }>();
  const [, navigate] = useLocation();
  const { user } = useAuth();

  const getMyName = useCallback(() =>
    user?.displayName || user?.username || localStorage.getItem("nova-username") || "مستخدم"
  , [user]);

  const [anime, setAnime]           = useState<any>(null);
  const [loading, setLoading]       = useState(true);
  const [descAr, setDescAr]         = useState<string | null>(null);
  const [showFull, setShowFull]     = useState(false);
  const [saved, setSaved]           = useState(false);
  const [myRating, setMyRating]     = useState(0);
  const [hoverRating, setHoverRating] = useState(0);
  const [tab, setTab]               = useState<"chars"|"related"|"similar">("chars");
  const [showComments, setShowComments]   = useState(false);
  const [showRatingPicker, setShowRatingPicker] = useState(false);
  const [showTrailer, setShowTrailer]     = useState(false);
  const [comments, setComments]     = useState<Comment[]>([]);
  const [newComment, setNewComment] = useState("");
  const [sendingComment, setSendingComment] = useState(false);
  const [favChars, setFavChars]     = useState<any[]>(() => getFavChars());
  const [warnDismissed, setWarnDismissed] = useState(() =>
    !!localStorage.getItem(`adult-warn-${params.id}`)
  );
  const inputRef = useRef<HTMLInputElement>(null);
  const countdown = useCountdown(anime?.nextAiringEpisode?.airingAt, params.id);

  // ── Load anime data ──
  useEffect(() => {
    // إذا لم يوجد id صالح → العودة للرئيسية فوراً
    if (!params.id || isNaN(parseInt(params.id))) {
      navigate("/");
      return;
    }
    let cancelled = false;
    const ctrl = new AbortController();
    setLoading(true); setAnime(null); setDescAr(null); setShowFull(false);

    const savedList: number[] = JSON.parse(localStorage.getItem("savedAnime") || "[]");
    setSaved(savedList.includes(parseInt(params.id)));
    setMyRating(parseInt(localStorage.getItem(`nova-rating-${params.id}`) || "0"));
    setComments([]);
    fetch(`/api/comments?animeId=${params.id}`, { credentials: "include" })
      .then(r => r.json()).then(d => { if (!cancelled && d.comments) setComments(d.comments); })
      .catch(() => {});

    const doFetch = (useProxy: boolean) => {
      const p: Promise<any> = useProxy
        ? fetch("/api/anime/anilist", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id!) } }),
            signal: ctrl.signal,
          }).then(r => r.json())
        : fetch("https://graphql.anilist.co", {
            method: "POST",
            headers: { "Content-Type": "application/json", "Accept": "application/json" },
            body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id!) } }),
            signal: ctrl.signal,
          }).then(r => r.json());

      p.then(d => {
        if (cancelled) return;
        const a = d.data?.Media;
        if (!a) {
          // بروكسي فشل → جرّب مباشرة
          if (useProxy) { doFetch(false); return; }
          setLoading(false);
          return;
        }
        setAnime(a);
        setLoading(false);
        if (!a.description) return;
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
      }).catch(() => {
        if (!cancelled) {
          if (useProxy) { doFetch(false); return; }
          setLoading(false);
        }
      });
    };

    doFetch(true);
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

  const addComment = async () => {
    const txt = newComment.trim();
    if (!txt || !user || sendingComment) return;
    const myUsername = getMyName();
    const myAvatar = user?.profileImageUrl || (user as any)?.avatarUrl || null;
    setSendingComment(true);
    try {
      const res = await fetch("/api/comments", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ animeId: Number(params.id), text: txt, username: myUsername, avatarUrl: myAvatar }),
      });
      const data = await res.json();
      if (data.comment) { setComments(prev => [data.comment, ...prev]); setNewComment(""); }
    } catch {} finally { setSendingComment(false); }
  };

  const toggleLike = async (id: string) => {
    if (!user) return;
    setComments(prev => prev.map(c =>
      c.id === id ? { ...c, liked: !c.liked, likes: c.liked ? c.likes - 1 : c.likes + 1 } : c
    ));
    await fetch(`/api/comments/${id}/like`, { method: "POST", credentials: "include" }).catch(() => {});
  };

  const deleteComment = async (id: string) => {
    setComments(prev => prev.filter(c => c.id !== id));
    await fetch(`/api/comments/${id}`, { method: "DELETE", credentials: "include" }).catch(() => {});
  };

  const toggleCharFav = (charNode: any) => {
    const existing = getFavChars();
    const animeName = anime?.title?.arabic || anime?.title?.english || anime?.title?.romaji || "";
    const animeId = params.id || "";
    const already = existing.some((c: any) => c.id === charNode.id);
    const upd = already
      ? existing.filter((c: any) => c.id !== charNode.id)
      : [...existing, { id: charNode.id, name: charNode.name?.full, image: charNode.image?.large, animeName, animeId }];
    saveFavChars(upd);
    setFavChars(upd);
  };


  // ── Loading / Error ──
  // Get cover from watch history for a better loading screen
  const historyCover = (() => {
    if (!params.id) return "";
    try {
      const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
      const id = parseInt(params.id);
      return h.find((e: any) => e.id === id)?.cover || "";
    } catch { return ""; }
  })();

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex flex-col items-center justify-center relative overflow-hidden" dir="rtl">
      {historyCover && (
        <div className="absolute inset-0">
          <img src={historyCover} alt="" className="w-full h-full object-cover scale-125 blur-3xl opacity-[0.12] saturate-150" />
          <div className="absolute inset-0 bg-gradient-to-b from-[#09090B]/90 via-[#09090B]/60 to-[#09090B]" />
        </div>
      )}
      <button onClick={() => { if (window.history.length > 1) { window.history.back(); } else { navigate("/"); } }}
        className="absolute top-4 right-4 z-20 w-10 h-10 rounded-full flex items-center justify-center active:scale-90 transition-transform"
        style={{ background: "rgba(0,0,0,0.45)", border: "1px solid rgba(255,255,255,0.12)", backdropFilter: "blur(12px)" }}>
        <ChevronRight className="w-5 h-5 text-white/60" />
      </button>
      <div className="relative flex flex-col items-center justify-center">
        <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} transition={{ delay: 0.1 }}>
          <div className="relative w-10 h-10">
            <div className="absolute inset-0 rounded-full border-2 border-violet-500/15" />
            <motion.div className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-500/40"
              animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
          </div>
        </motion.div>
      </div>
    </div>
  );
  if (!loading && !anime) return (
    <div className="bg-[#09090B] min-h-screen flex flex-col items-center justify-center" dir="rtl">
      {/* خلفية */}
      <div className="absolute inset-0 opacity-[0.03]"
        style={{ backgroundImage: "radial-gradient(circle at 50% 40%, #8B5CF6 0%, transparent 70%)" }} />
      <div className="relative text-center space-y-5 px-8 max-w-xs">
        <div className="w-16 h-16 rounded-2xl mx-auto flex items-center justify-center"
          style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.22)" }}>
          <span className="text-3xl">📡</span>
        </div>
        <div className="space-y-2">
          <p className="text-white/70 font-bold text-base font-['Cairo']">تعذّر تحميل بيانات الأنمي</p>
          <p className="text-white/30 text-xs font-['Cairo'] leading-relaxed">قد يكون هناك مشكلة في الاتصال أو تأخر في الشبكة، حاول مرة أخرى</p>
        </div>
        <div className="flex gap-3 justify-center">
          <button
            onClick={() => {
              if (!params.id) { navigate("/"); return; }
              setLoading(true); setAnime(null);
              fetch("https://graphql.anilist.co", {
                method: "POST",
                headers: { "Content-Type": "application/json", "Accept": "application/json" },
                body: JSON.stringify({ query: DETAIL_Q, variables: { id: parseInt(params.id) } }),
              }).then(r => r.json()).then(d => {
                const a = d.data?.Media;
                if (a) setAnime(a);
                setLoading(false);
              }).catch(() => setLoading(false));
            }}
            className="px-5 py-2.5 rounded-2xl text-sm font-bold font-['Cairo']"
            style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.25)", color: "#c4b5fd" }}>
            حاول مجدداً
          </button>
          <button onClick={() => navigate("/")}
            className="px-5 py-2.5 rounded-2xl text-sm font-bold font-['Cairo']"
            style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)", color: "rgba(255,255,255,0.45)" }}>
            الرئيسية
          </button>
        </div>
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
        <button onClick={() => { if (window.history.length > 1) { window.history.back(); } else { navigate("/"); } }}
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
            {(() => {
              const r = getAgeRating(anime.genres || [], anime.isAdult);
              return (
                <span className="text-[9px] font-black px-2 py-1 rounded-lg border font-['Cairo']"
                  style={{ color: r.color, background: r.bg, borderColor: `${r.color}33` }}>
                  {r.label}
                </span>
              );
            })()}
          </div>
        </div>
      </div>

      {/* ══ NEXT EPISODE COUNTDOWN ═══════════════════════════════ */}
      {countdown && (
        <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
          className="mx-4 mt-5 rounded-2xl px-4 py-3"
          style={{ background: "rgba(234,179,8,0.08)", border: "1px solid rgba(234,179,8,0.22)" }}>
          <p className="text-amber-400 text-[11px] font-black font-['Cairo'] mb-2">
            ◉ حلقة جديدة بعد: {countdown.d > 0 ? `${countdown.d} يوم ` : ""}{countdown.h} ساعة {countdown.m} دقيقة
          </p>
          <p className="text-amber-300/50 text-[10px] font-['Cairo']">
            الحلقة {anime.nextAiringEpisode.episode} (وقت تقريبي)
          </p>
        </motion.div>
      )}

      {/* ══ PRIMARY WATCH BUTTON ════════════════════════════════ */}
      <div className="px-4 mt-5">
        <motion.button
          whileTap={{ scale: 0.97 }}
          onClick={() => navigate(`/episodes/${params.id}`)}
          className="w-full h-[52px] rounded-2xl font-black flex items-center justify-center gap-3 text-[15px] font-['Cairo'] text-white"
          style={{
            background: "linear-gradient(135deg,#8B5CF6 0%,#6D28D9 60%,#5B21B6 100%)",
            boxShadow: "0 8px 32px rgba(109,40,217,0.5), inset 0 1px 0 rgba(255,255,255,0.15)"
          }}
        >
          <div className="w-8 h-8 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
            <Play className="w-4 h-4 fill-white text-white" />
          </div>
          مشاهدة الأنمي
        </motion.button>
      </div>

      {/* ══ +17/+18 WARNING ═══════════════════════════════════════ */}
      {(() => {
        const r = getAgeRating(anime.genres || [], anime.isAdult);
        if (!r.warn || warnDismissed) return null;
        return (
          <div className="mx-4 mt-2.5 rounded-2xl overflow-hidden"
            style={{ background: "rgba(239,68,68,0.10)", border: "1.5px solid rgba(239,68,68,0.38)" }}>
            <div className="flex items-start gap-2.5 px-3.5 pt-3 pb-2.5">
              <span className="text-[18px] shrink-0 mt-0.5">🔞</span>
              <p className="text-[11.5px] font-bold font-['Cairo'] leading-relaxed flex-1 whitespace-pre-line"
                style={{ color: "#fca5a5" }}>
                {r.warn}
              </p>
            </div>
            <button
              onClick={() => {
                localStorage.setItem(`adult-warn-${params.id}`, "1");
                setWarnDismissed(true);
              }}
              className="w-full py-2 text-[11px] font-black font-['Cairo'] border-t active:opacity-70 transition-opacity"
              style={{ color: "rgba(252,165,165,0.70)", borderColor: "rgba(239,68,68,0.25)", background: "rgba(239,68,68,0.07)" }}>
              فهمتُ، لا تُظهر هذا مجدداً
            </button>
          </div>
        );
      })()}

      {/* ══ SCORE + ACTIONS GRID ═════════════════════════════════ */}
      <div className="px-4 mt-3">
        {/* 3-button action row */}
        <div className="grid grid-cols-3 gap-2 mb-3">
          {[
            { icon: MessageSquare, label: "التعليقات", active: comments.length > 0, activeColor: "#8B5CF6", action: () => navigate(`/comments?animeId=${params.id}&title=${encodeURIComponent(anime?.title?.romaji || anime?.title?.english || "")}`), sub: comments.length > 0 ? `${comments.length}` : null },
            { icon: Plus,          label: "قائمتي",    active: saved,        activeColor: "#8B5CF6", action: toggleSave,                         sub: saved ? "مضاف" : null },
            { icon: Star,          label: "تقييمي",    active: myRating > 0, activeColor: "#EAB308", action: () => setShowRatingPicker(true),    sub: myRating > 0 ? `${myRating}/10` : null },
          ].map(({ icon: Icon, label, active, activeColor, action, sub }) => (
            <motion.button key={label} whileTap={{ scale: 0.94 }} onClick={action}
              className="flex flex-col items-center gap-1.5 py-3 rounded-2xl border transition-all font-['Cairo']"
              style={active
                ? { background: `${activeColor}18`, borderColor: `${activeColor}40`, color: activeColor }
                : { background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}>
              <Icon className="w-4 h-4" style={active ? { fill: activeColor, color: activeColor } : {}} />
              <span className="text-[9px] font-black">{label}</span>
              {sub && <span className="text-[9px] opacity-70">{sub}</span>}
            </motion.button>
          ))}
        </div>
      </div>

      {/* ══ MAL STATS BOX ════════════════════════════════════════ */}
      {(score || allTimeRank || anime.idMal) && (
        <div className="mx-4 rounded-2xl overflow-hidden"
          style={{ background: "linear-gradient(135deg,#1e3a5f,#1a2d4a)", border: "1px solid rgba(59,130,246,0.25)" }}>
          <motion.button whileTap={{ scale: 0.98 }}
            onClick={() => anime.idMal && window.open(`https://myanimelist.net/anime/${anime.idMal}`, "_blank")}
            className="w-full px-4 py-2 border-b border-white/10 flex items-center justify-center gap-2">
            <p className="text-[11px] font-black text-blue-300/80 font-['Cairo']">MyAnimeList</p>
            {anime.idMal && <span className="text-blue-300/40 text-[9px] font-['Cairo']">#{anime.idMal}</span>}
          </motion.button>
          <div className="flex divide-x divide-x-reverse divide-white/8">
            {score && (
              <div className="flex-1 flex flex-col items-center py-3 px-2">
                <div className="flex items-center gap-1">
                  <Star className="w-3.5 h-3.5 text-amber-400 fill-amber-400" />
                  <span className="text-white font-black text-base">{score}</span>
                </div>
                {anime.popularity && (
                  <span className="text-[9px] text-white/35 font-['Cairo']">{anime.popularity.toLocaleString()} مستخدم</span>
                )}
              </div>
            )}
            {allTimeRank && (
              <div className="flex-1 flex flex-col items-center py-3 px-2">
                <span className="text-white font-black text-base">#{allTimeRank}</span>
                <span className="text-[9px] text-white/35 font-['Cairo']">الترتيب</span>
              </div>
            )}
            {anime.favourites > 0 && (
              <div className="flex-1 flex flex-col items-center py-3 px-2">
                <span className="text-white font-black text-base">{anime.favourites?.toLocaleString()}</span>
                <span className="text-[9px] text-white/35 font-['Cairo']">المفضلة</span>
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
          <SectionHeader title="الإعلان الدعائي" />
          <motion.button
            whileTap={{ scale: 0.97 }}
            onClick={() => setShowTrailer(true)}
            className="w-full rounded-2xl overflow-hidden border border-white/8 relative block"
            style={{ aspectRatio: "16/9", background: "#0d0d10" }}>
            <img
              src={anime.trailer?.thumbnail || `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg`}
              alt="trailer"
              className="w-full h-full object-cover"
              onError={e => {
                const el = e.target as HTMLImageElement;
                if (!el.dataset.fb) { el.dataset.fb = "1"; el.src = `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg`; }
                else if (el.dataset.fb === "1") { el.dataset.fb = "2"; el.src = `https://img.youtube.com/vi/${trailerYT}/sddefault.jpg`; }
              }} />
            <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/20 to-black/10" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-16 h-16 bg-red-600 rounded-full flex items-center justify-center shadow-2xl"
                style={{ boxShadow: "0 0 0 8px rgba(220,38,38,0.2), 0 8px 32px rgba(220,38,38,0.5)" }}>
                <Play className="w-7 h-7 text-white fill-white mr-[-2px]" />
              </div>
            </div>
            <div className="absolute bottom-0 right-0 left-0 px-4 pb-3">
              <p className="text-white font-black text-[13px] font-['Cairo']">العرض الدعائي</p>
              <p className="text-white/45 text-[10px] font-['Cairo']">انقر للمشاهدة بملء الشاشة</p>
            </div>
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
                  {mainChars.map((e: any) => <CharCard key={e.node.id} e={e} main
                    isFav={favChars.some((f: any) => f.id === e.node.id)}
                    onToggleFav={() => toggleCharFav(e.node)} />)}
                </div>
              </div>
            )}
            {suppChars.length > 0 && (
              <div>
                <p className="text-[12px] font-black text-white/60 font-['Cairo'] mb-3 text-center">الشخصيات المساعدة</p>
                <div className="grid grid-cols-4 gap-2.5">
                  {suppChars.slice(0, 8).map((e: any) => <CharCard key={e.node.id} e={e}
                    isFav={favChars.some((f: any) => f.id === e.node.id)}
                    onToggleFav={() => toggleCharFav(e.node)} />)}
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


      {/* ══ TRAILER MODAL (fullscreen) ═══════════════════════════ */}
      <AnimatePresence>
        {showTrailer && trailerYT && (
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-[110] bg-black flex flex-col">
            {/* Close button */}
            <div className="absolute top-0 left-0 right-0 z-10 flex items-center justify-between px-4 pt-safe pt-4 pb-3"
              style={{ background: "linear-gradient(to bottom, rgba(0,0,0,0.7), transparent)" }}>
              <button onClick={() => setShowTrailer(false)}
                className="w-9 h-9 bg-black/60 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 active:scale-90">
                <X className="w-4 h-4 text-white" />
              </button>
              <p className="text-white text-[13px] font-black font-['Cairo'] opacity-80">الإعلان الدعائي</p>
              <div className="w-9" />
            </div>
            {/* YouTube iframe fills full screen */}
            <iframe
              src={`https://www.youtube.com/embed/${trailerYT}?autoplay=1&rel=0&fs=1&playsinline=0`}
              className="w-full flex-1"
              allow="autoplay; fullscreen; picture-in-picture"
              allowFullScreen
              style={{ border: "none" }}
            />
          </motion.div>
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

function CharCard({ e, main, isFav, onToggleFav }: { e: any; main?: boolean; isFav?: boolean; onToggleFav?: () => void }) {
  const n = e.node;
  return (
    <motion.div whileTap={{ scale: 0.93 }} className="flex flex-col items-center gap-1.5">
      <div className="relative w-full aspect-[3/4] rounded-xl overflow-hidden border border-white/8"
        style={main ? { boxShadow: "0 0 0 1.5px rgba(139,92,246,0.5)" } : {}}>
        <img src={n.image?.large} alt={n.name?.full}
          className="w-full h-full object-cover object-top" loading="lazy" />
        {/* Heart fav button */}
        <button
          onClick={e => { e.stopPropagation(); onToggleFav?.(); }}
          className="absolute top-1 right-1 w-6 h-6 rounded-full flex items-center justify-center transition-all active:scale-90"
          style={{ background: isFav ? "rgba(236,72,153,0.85)" : "rgba(0,0,0,0.55)", backdropFilter: "blur(4px)" }}>
          <Heart className={`w-3 h-3 ${isFav ? "fill-white text-white" : "text-white/60"}`} />
        </button>
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

function avatarColor(name: string) {
  const colors = ["#EF4444","#F97316","#EAB308","#22C55E","#14B8A6","#3B82F6","#8B5CF6","#EC4899"];
  return colors[(name || " ").charCodeAt(0) % colors.length];
}
