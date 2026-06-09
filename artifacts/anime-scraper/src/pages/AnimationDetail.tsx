import { useState, useEffect, useRef, useMemo } from "react";
import { useParams, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Star, Calendar, Clock,
  Tv, Film, ChevronDown, Sparkles, Users,
  Bookmark, MessageSquare, Send, X, Heart,
  Plus, MoreVertical, Flag,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";

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

interface Reply {
  id: number;
  text: string;
  ts: number;
  author: string;
  likes: number;
  likedByMe: boolean;
}
interface Comment {
  id: number;
  text: string;
  ts: number;
  author: string;
  likes: number;
  likedByMe: boolean;
  replies: Reply[];
}

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

function avatarLetter(name: string) {
  return name?.[0]?.toUpperCase() || "؟";
}
const AVATAR_COLORS = ["#7C3AED","#6D28D9","#EC4899","#0EA5E9","#10B981","#F59E0B","#EF4444"];
function avatarColor(name: string) {
  let h = 0;
  for (let i = 0; i < name.length; i++) h = (h * 31 + name.charCodeAt(i)) % AVATAR_COLORS.length;
  return AVATAR_COLORS[h];
}

interface CommentRowProps {
  c: Comment;
  full?: boolean;
  isParent?: boolean;
  onLike: () => void;
  onReply: () => void;
}
function CommentRow({ c, full, isParent, onLike, onReply }: CommentRowProps) {
  const [expanded, setExpanded] = useState(false);
  const textLong = c.text.length > 120;
  return (
    <div className={`px-4 py-3.5 ${isParent ? "border-b border-white/6 bg-white/[0.015]" : ""}`}>
      <div className="flex gap-3">
        <div className="w-8 h-8 rounded-full flex items-center justify-center shrink-0 text-[11px] font-black text-white mt-0.5"
          style={{ background: avatarColor(c.author) }}>
          {avatarLetter(c.author)}
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center gap-2 mb-0.5">
            <span className="text-[12px] font-black text-white/80 font-['Cairo']">{c.author}</span>
            <span className="text-[9px] text-white/25 font-['Cairo']">{timeAgo(c.ts)}</span>
          </div>
          <p className={`text-[12px] text-white/65 leading-relaxed font-['Cairo'] ${!expanded && textLong && !full ? "line-clamp-3" : ""}`}>
            {c.text}
          </p>
          {textLong && !full && (
            <button onClick={() => setExpanded(p => !p)} className="text-[10px] text-primary font-bold font-['Cairo'] mt-0.5">
              {expanded ? "عرض أقل" : "عرض المزيد"}
            </button>
          )}
          <div className="flex items-center gap-3 mt-2">
            <button onClick={onLike}
              className="flex items-center gap-1 transition-all active:scale-90"
              style={{ color: c.likedByMe ? "#EC4899" : "rgba(255,255,255,0.3)" }}>
              <Heart className={`w-3.5 h-3.5 transition-all ${c.likedByMe ? "fill-current" : ""}`} />
              {c.likes > 0 && <span className="text-[10px] font-black font-['Cairo']">{c.likes}</span>}
            </button>
            {!isParent && (
              <button onClick={onReply}
                className="flex items-center gap-1 text-[10px] text-white/30 font-bold font-['Cairo'] active:scale-90">
                <MessageSquare className="w-3 h-3" />
                رد
                {c.replies.length > 0 && (
                  <span className="text-[9px] bg-white/8 px-1.5 py-0.5 rounded-full">{c.replies.length}</span>
                )}
              </button>
            )}
          </div>
        </div>
        <button className="text-white/15 shrink-0 active:scale-90">
          <MoreVertical className="w-3.5 h-3.5" />
        </button>
      </div>
    </div>
  );
}

export default function AnimationDetail() {
  const { type, id } = useParams<{ type: string; id: string }>();
  const [, navigate] = useLocation();
  const { user } = useAuth();

  const [detail,   setDetail]   = useState<any>(null);
  const [loading,  setLoading]  = useState(true);
  const [showFull, setShowFull] = useState(false);
  const [saved, setSaved] = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [showRatingPicker, setShowRatingPicker] = useState(false);

  /* ── Comments state ── */
  const [showComments, setShowComments] = useState(false);
  const [showReplies, setShowReplies] = useState<number | null>(null);
  const [comments, setComments] = useState<Comment[]>([]);
  const [newComment, setNewComment] = useState("");
  const [newReply, setNewReply] = useState("");
  const inputRef  = useRef<HTMLInputElement>(null);
  const replyRef  = useRef<HTMLInputElement>(null);

  const [descAr, setDescAr] = useState<string | null>(null);

  /* My display name */
  const myName = user?.displayName || user?.username || user?.email?.split("@")[0] || "مشاهد";
  const storageKey = `anim-comments-v2-${type}-${id}`;

  useEffect(() => {
    if (!id) return;
    setLoading(true); setDetail(null); setDescAr(null);
    const key = `anim-${type}-${id}`;
    const savedList: string[] = JSON.parse(localStorage.getItem("savedAnimations") || "[]");
    setSaved(savedList.includes(key));
    setMyRating(Number(localStorage.getItem(`anim-rating-${type}-${id}`) || "0"));
    const savedC = localStorage.getItem(storageKey);
    if (savedC) setComments(JSON.parse(savedC));

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

  const saveComments = (upd: Comment[]) => {
    setComments(upd);
    localStorage.setItem(storageKey, JSON.stringify(upd));
  };

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

  const setRating = (r: number) => {
    setMyRating(r);
    localStorage.setItem(`anim-rating-${type}-${id}`, String(r));
    setShowRatingPicker(false);
  };

  /* ── Add comment ── */
  const addComment = () => {
    if (!newComment.trim()) return;
    const c: Comment = { id: Date.now(), text: newComment.trim(), ts: Date.now(), author: myName, likes: 0, likedByMe: false, replies: [] };
    saveComments([c, ...comments]);
    setNewComment("");
  };

  /* ── Add reply ── */
  const addReply = (commentId: number) => {
    if (!newReply.trim()) return;
    const r: Reply = { id: Date.now(), text: newReply.trim(), ts: Date.now(), author: myName, likes: 0, likedByMe: false };
    const upd = comments.map(c => c.id === commentId ? { ...c, replies: [...c.replies, r] } : c);
    saveComments(upd);
    setNewReply("");
  };

  /* ── Toggle like ── */
  const toggleLike = (commentId: number) => {
    const upd = comments.map(c => c.id === commentId
      ? { ...c, likes: c.likedByMe ? c.likes - 1 : c.likes + 1, likedByMe: !c.likedByMe }
      : c);
    saveComments(upd);
  };

  const toggleReplyLike = (commentId: number, replyId: number) => {
    const upd = comments.map(c => c.id === commentId
      ? { ...c, replies: c.replies.map(r => r.id === replyId
          ? { ...r, likes: r.likedByMe ? r.likes - 1 : r.likes + 1, likedByMe: !r.likedByMe }
          : r) }
      : c);
    saveComments(upd);
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
            { icon: Star,     label: "تقييمي",  active: myRating > 0, activeColor: "#EAB308", action: () => setShowRatingPicker(true) },
            { icon: Plus,     label: "قائمتي",  active: saved,        activeColor: "#8B5CF6", action: toggleSave },
            { icon: Bookmark, label: "حفظ",     active: saved,        activeColor: "#10B981", action: toggleSave },
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
            style={{ background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.55)" }}>
            <span className="text-[11px] font-black">التعليقات</span>
            <span className="text-[9px] text-white/30">{comments.length > 0 ? `${comments.length} تعليق` : "اكتب تعليقاً"}</span>
          </motion.button>
          <motion.button whileTap={{ scale: 0.94 }}
            onClick={() => detail.vote_average && window.open(`https://www.themoviedb.org/${type}/${id}`, "_blank")}
            className="flex flex-col items-center gap-1 py-3 rounded-2xl border font-['Cairo'] transition-all"
            style={{ background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.55)" }}>
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
            <h2 className="text-[15px] font-black font-['Cairo']">التعليقات{comments.length > 0 ? ` (${comments.length})` : ""}</h2>
          </div>
          <button onClick={() => setShowComments(true)} className="text-[10px] text-primary font-black font-['Cairo']">عرض الكل</button>
        </div>
        {comments.length === 0 ? (
          <motion.button whileTap={{ scale: 0.97 }} onClick={() => setShowComments(true)}
            className="w-full py-4 rounded-2xl border border-dashed border-white/10 text-white/25 text-xs font-['Cairo'] flex items-center justify-center gap-2">
            <MessageSquare className="w-4 h-4" />كن أول من يعلّق!
          </motion.button>
        ) : (
          <div className="space-y-0 divide-y divide-white/5 rounded-2xl overflow-hidden border border-white/6"
            style={{ background: "rgba(255,255,255,0.025)" }}>
            {comments.slice(0, 3).map(c => (
              <CommentRow key={c.id} c={c}
                onLike={() => toggleLike(c.id)}
                onReply={() => { setShowReplies(c.id); setShowComments(true); }} />
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

      {/* ════════ FULL COMMENTS SCREEN ════════ */}
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
                    {showReplies != null ? "الردود" : `التعليقات${comments.length > 0 ? ` (${comments.length})` : ""}`}
                  </h2>
                </div>
                {showReplies == null && (
                  <button onClick={() => setTimeout(() => inputRef.current?.focus(), 100)}
                    className="w-8 h-8 rounded-full bg-white/6 flex items-center justify-center">
                    <Plus className="w-4 h-4 text-white/60" />
                  </button>
                )}
                {showReplies != null && (
                  <button onClick={() => setShowReplies(null)} className="text-[10px] text-primary font-black font-['Cairo']">
                    كل التعليقات
                  </button>
                )}
              </div>

              {/* List */}
              <div className="flex-1 overflow-y-auto" dir="rtl">
                {showReplies == null ? (
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
                        onReply={() => { setShowReplies(c.id); setTimeout(() => replyRef.current?.focus(), 100); }} />
                    ))}
                  </div>
                ) : (() => {
                  const parent = comments.find(c => c.id === showReplies);
                  if (!parent) return null;
                  return (
                    <div className="divide-y divide-white/5">
                      <CommentRow c={parent} full onLike={() => toggleLike(parent.id)} onReply={() => {}} isParent />
                      <div className="px-4 py-2">
                        <p className="text-[9px] text-white/25 font-['Cairo']">{parent.replies.length} رد</p>
                      </div>
                      {parent.replies.map((r: Reply) => (
                        <div key={r.id} className="px-4 py-3.5 mr-6 border-r-2 border-primary/20">
                          <div className="flex gap-3">
                            <div className="w-7 h-7 rounded-full flex items-center justify-center shrink-0 text-[10px] font-black text-white"
                              style={{ background: avatarColor(r.author) }}>
                              {avatarLetter(r.author)}
                            </div>
                            <div className="flex-1 min-w-0">
                              <div className="flex items-center gap-2 mb-0.5">
                                <span className="text-[11px] font-black text-white/80 font-['Cairo']">{r.author}</span>
                                <span className="text-[9px] text-white/25 font-['Cairo']">{timeAgo(r.ts)}</span>
                              </div>
                              <p className="text-[12px] text-white/65 leading-relaxed font-['Cairo']">{r.text}</p>
                              <button onClick={() => toggleReplyLike(parent.id, r.id)}
                                className="flex items-center gap-1 mt-2 active:scale-90"
                                style={{ color: r.likedByMe ? "#EC4899" : "rgba(255,255,255,0.3)" }}>
                                <Heart className={`w-3 h-3 ${r.likedByMe ? "fill-current" : ""}`} />
                                {r.likes > 0 && <span className="text-[10px] font-black">{r.likes}</span>}
                              </button>
                            </div>
                          </div>
                        </div>
                      ))}
                    </div>
                  );
                })()}
              </div>

              {/* Input */}
              <div className="px-4 py-3 border-t border-white/8 flex gap-2 shrink-0">
                {showReplies == null ? (
                  <>
                    <input ref={inputRef} value={newComment} onChange={e => setNewComment(e.target.value)}
                      onKeyDown={e => e.key === "Enter" && addComment()}
                      placeholder="أضف تعليقاً…"
                      className="flex-1 bg-white/6 border border-white/10 rounded-2xl px-4 py-2.5 text-[12px] text-white placeholder-white/20 font-['Cairo'] outline-none focus:border-primary/40" dir="rtl" />
                    <button onClick={addComment} disabled={!newComment.trim()}
                      className="w-10 h-10 rounded-2xl flex items-center justify-center active:scale-90 disabled:opacity-30 transition-all"
                      style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                      <Send className="w-4 h-4 text-white" />
                    </button>
                  </>
                ) : (
                  <>
                    <input ref={replyRef} value={newReply} onChange={e => setNewReply(e.target.value)}
                      onKeyDown={e => e.key === "Enter" && showReplies != null && addReply(showReplies)}
                      placeholder="اكتب رداً…"
                      className="flex-1 bg-white/6 border border-white/10 rounded-2xl px-4 py-2.5 text-[12px] text-white placeholder-white/20 font-['Cairo'] outline-none focus:border-primary/40" dir="rtl" />
                    <button onClick={() => showReplies != null && addReply(showReplies)} disabled={!newReply.trim()}
                      className="w-10 h-10 rounded-2xl flex items-center justify-center active:scale-90 disabled:opacity-30 transition-all"
                      style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                      <Send className="w-4 h-4 text-white" />
                    </button>
                  </>
                )}
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>
    </main>
  );
}
