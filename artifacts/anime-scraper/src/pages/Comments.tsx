import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { motion, AnimatePresence } from "framer-motion";
import {
  ChevronRight, MessageCircle, Send, Heart, Trash2,
  Loader2, RefreshCw, MessageSquare, Film, Tv,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";

/* ─── types ─────────────────────────────────────────── */
interface Comment {
  id: string;
  userId: string;
  username: string;
  avatarUrl?: string | null;
  animeId?: number | null;
  episodeNumber?: number | null;
  text: string;
  likes: number;
  liked: boolean;
  createdAt: string;
}

/* ─── helpers ──────────────────────────────────────── */
function timeAgo(iso: string) {
  const m = Math.floor((Date.now() - new Date(iso).getTime()) / 60000);
  if (m < 1) return "الآن";
  if (m < 60) return `منذ ${m} دقيقة`;
  const h = Math.floor(m / 60);
  if (h < 24) return `منذ ${h} ساعة`;
  const d = Math.floor(h / 24);
  if (d < 7) return `منذ ${d} يوم`;
  return `منذ ${Math.floor(d / 7)} أسبوع`;
}

function avatarColor(name: string) {
  const colors = ["#EF4444","#F97316","#EAB308","#22C55E","#14B8A6","#3B82F6","#8B5CF6","#EC4899"];
  return colors[(name || " ").charCodeAt(0) % colors.length];
}

/* ─── CommentCard ───────────────────────────────────── */
function CommentCard({
  c, isMe, onLike, onDelete,
}: {
  c: Comment; isMe: boolean;
  onLike: (id: string) => void;
  onDelete: (id: string) => void;
}) {
  const [delConfirm, setDelConfirm] = useState(false);

  return (
    <motion.div
      initial={{ opacity: 0, y: 8 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, scale: 0.96 }}
      className="bg-[#111116] border border-white/6 rounded-2xl p-4"
    >
      <div className="flex items-start gap-3" dir="rtl">
        {c.avatarUrl ? (
          <img src={c.avatarUrl} alt="" className="w-9 h-9 rounded-full object-cover shrink-0 border border-white/10" />
        ) : (
          <div
            className="w-9 h-9 rounded-full flex items-center justify-center text-sm font-black text-white shrink-0"
            style={{ background: avatarColor(c.username) }}
          >
            {(c.username || "م").charAt(0).toUpperCase()}
          </div>
        )}
        <div className="flex-1 min-w-0">
          <div className="flex items-center justify-between mb-1 gap-2">
            <div className="flex items-center gap-2 min-w-0">
              <span className="text-[12px] font-black font-['Cairo'] truncate">{c.username}</span>
              {isMe && (
                <span className="text-[8px] bg-primary/15 text-primary px-1.5 py-0.5 rounded-full font-black shrink-0">أنت</span>
              )}
            </div>
            <span className="text-[9px] text-white/25 shrink-0">{timeAgo(c.createdAt)}</span>
          </div>
          {c.episodeNumber !== null && c.episodeNumber !== undefined && (
            <span className="inline-flex items-center gap-1 text-[9px] bg-primary/10 text-primary/70 px-2 py-0.5 rounded-full mb-2 font-['Cairo']">
              <Tv className="w-2.5 h-2.5" />
              الحلقة {c.episodeNumber}
            </span>
          )}
          <p className="text-[13px] text-white/80 font-['Cairo'] leading-relaxed break-words">{c.text}</p>

          <div className="flex items-center gap-4 mt-3">
            <motion.button
              whileTap={{ scale: 0.85 }}
              onClick={() => onLike(c.id)}
              className="flex items-center gap-1.5 text-[11px] transition-colors"
              style={{ color: c.liked ? "#EC4899" : "rgba(255,255,255,0.3)" }}
            >
              <Heart className={`w-3.5 h-3.5 ${c.liked ? "fill-current" : ""}`} />
              <span>{c.likes || 0}</span>
            </motion.button>

            {isMe && (
              delConfirm ? (
                <div className="flex items-center gap-2">
                  <button onClick={() => onDelete(c.id)}
                    className="text-[10px] text-red-400 font-black font-['Cairo']">تأكيد الحذف</button>
                  <button onClick={() => setDelConfirm(false)}
                    className="text-[10px] text-white/30 font-['Cairo']">إلغاء</button>
                </div>
              ) : (
                <motion.button whileTap={{ scale: 0.85 }} onClick={() => setDelConfirm(true)}
                  className="flex items-center gap-1 text-[11px] text-white/20 hover:text-red-400/60 transition-colors">
                  <Trash2 className="w-3 h-3" />
                </motion.button>
              )
            )}
          </div>
        </div>
      </div>
    </motion.div>
  );
}

/* ═══════════════════════════════════════════════════════
   MAIN COMPONENT
═══════════════════════════════════════════════════════ */
export default function CommentsPage() {
  const [, navigate] = useLocation();
  const search = useSearch();
  const params = new URLSearchParams(search);
  const animeId = params.get("animeId") ? Number(params.get("animeId")) : null;
  const tmdbId  = params.get("tmdbId")  || null;
  const mediaType = params.get("type") || "movie";
  const ep = params.get("ep") !== null ? Number(params.get("ep")) : null;
  const animeTitle = params.get("title") || "";
  const isEpMode = ep !== null && !isNaN(ep);
  const isAnimation = !!tmdbId && !animeId;

  const { user } = useAuth();
  const userId = (user as any)?.id || (user as any)?.userId || null;

  const [comments, setComments] = useState<Comment[]>([]);
  const [loading, setLoading] = useState(true);
  const [sending, setSending] = useState(false);
  const [text, setText] = useState("");
  const [error, setError] = useState<string | null>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);
  const bottomRef = useRef<HTMLDivElement>(null);

  const username = user?.displayName || user?.username || "مستخدم";
  const avatarUrl = (user as any)?.avatarUrl || null;

  const loadComments = useCallback(async () => {
    if (!animeId && !tmdbId) return;
    setLoading(true);
    setError(null);
    try {
      let url: string;
      if (tmdbId) {
        url = isEpMode
          ? `/api/comments?tmdbId=${tmdbId}&ep=${ep}`
          : `/api/comments?tmdbId=${tmdbId}`;
      } else {
        url = isEpMode
          ? `/api/comments?animeId=${animeId}&ep=${ep}`
          : `/api/comments?animeId=${animeId}`;
      }
      const res = await fetch(url, { credentials: "include" });
      const data = await res.json();
      if (data.comments) setComments(data.comments);
      else setError("تعذّر تحميل التعليقات");
    } catch {
      setError("خطأ في الاتصال");
    } finally {
      setLoading(false);
    }
  }, [animeId, tmdbId, ep, isEpMode]);

  useEffect(() => { loadComments(); }, [loadComments]);

  const sendComment = async () => {
    const txt = text.trim();
    if (!txt || (!animeId && !tmdbId)) return;
    if (!user) { setError("يجب تسجيل الدخول للتعليق"); return; }
    setSending(true);
    setError(null);
    try {
      const res = await fetch("/api/comments", {
        method: "POST",
        credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          ...(animeId  ? { animeId }  : {}),
          ...(tmdbId   ? { tmdbId, animeType: mediaType } : {}),
          episodeNumber: isEpMode ? ep : undefined,
          text: txt,
          username,
          avatarUrl,
        }),
      });
      const data = await res.json();
      if (!res.ok) { setError(data.error || "فشل الإرسال"); return; }
      setComments(prev => [data.comment, ...prev]);
      setText("");
      setTimeout(() => inputRef.current?.focus(), 100);
    } catch {
      setError("خطأ في الاتصال");
    } finally {
      setSending(false);
    }
  };

  const toggleLike = async (id: string) => {
    if (!user) { setError("يجب تسجيل الدخول"); return; }
    setComments(prev => prev.map(c =>
      c.id === id ? { ...c, liked: !c.liked, likes: c.liked ? c.likes - 1 : c.likes + 1 } : c
    ));
    try {
      await fetch(`/api/comments/${id}/like`, { method: "POST", credentials: "include" });
    } catch {
      setComments(prev => prev.map(c =>
        c.id === id ? { ...c, liked: !c.liked, likes: c.liked ? c.likes - 1 : c.likes + 1 } : c
      ));
    }
  };

  const deleteComment = async (id: string) => {
    setComments(prev => prev.filter(c => c.id !== id));
    try {
      await fetch(`/api/comments/${id}`, { method: "DELETE", credentials: "include" });
    } catch {}
  };

  return (
    <div className="bg-[#09090B] min-h-screen text-white flex flex-col" dir="rtl">

      {/* ── HEADER ── */}
      <div className="sticky top-0 z-50 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/6">
        <div className="flex items-center gap-3 px-4 py-4">
          <button
            onClick={() => {
              if (animeId) navigate(`/anime/${animeId}`);
              else if (tmdbId) navigate(`/animation/${mediaType}/${tmdbId}`);
              else navigate("/");
            }}
            className="w-9 h-9 bg-white/6 border border-white/8 rounded-2xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          >
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2">
              <MessageCircle className="w-4 h-4 text-primary shrink-0" />
              <h1 className="text-[15px] font-black font-['Cairo'] truncate">
                {isEpMode
                  ? `تعليقات الحلقة ${ep}`
                  : isAnimation
                    ? (mediaType === "tv" ? "تعليقات المسلسل" : "تعليقات الفيلم")
                    : "تعليقات الأنمي"}
              </h1>
            </div>
            {animeTitle && (
              <p className="text-[10px] text-white/30 font-['Cairo'] mt-0.5 truncate">{decodeURIComponent(animeTitle)}</p>
            )}
          </div>
          <div className="flex items-center gap-1.5">
            {comments.length > 0 && (
              <span className="text-[10px] bg-primary/15 text-primary px-2 py-1 rounded-full font-black">
                {comments.length}
              </span>
            )}
            <motion.button
              whileTap={{ scale: 0.88 }}
              onClick={loadComments}
              disabled={loading}
              className="w-8 h-8 bg-white/6 border border-white/8 rounded-xl flex items-center justify-center"
            >
              <RefreshCw className={`w-3.5 h-3.5 text-white/50 ${loading ? "animate-spin" : ""}`} />
            </motion.button>
          </div>
        </div>

        {/* tab if no ep — show tabs for anime/ep */}
        {!isEpMode && (animeId || tmdbId) && (
          <div className="px-4 pb-3 flex gap-2">
            <div className="flex items-center gap-1.5 text-[10px] bg-primary/10 text-primary px-3 py-1.5 rounded-xl border border-primary/20">
              {isAnimation
                ? (mediaType === "tv" ? <Tv className="w-3 h-3" /> : <Film className="w-3 h-3" />)
                : <Film className="w-3 h-3" />}
              {isAnimation
                ? (mediaType === "tv" ? "تعليقات على المسلسل كله" : "تعليقات على الفيلم")
                : "تعليقات على الأنمي كله"}
            </div>
          </div>
        )}
      </div>

      {/* ── CONTENT ── */}
      <div className="flex-1 overflow-y-auto px-4 py-4 space-y-3 pb-52">
        {loading ? (
          <div className="flex flex-col items-center justify-center py-20 gap-3">
            <Loader2 className="w-8 h-8 text-primary animate-spin" />
            <p className="text-white/30 text-sm font-['Cairo']">جاري التحميل...</p>
          </div>
        ) : error ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4">
            <div className="w-14 h-14 bg-red-500/10 border border-red-500/20 rounded-2xl flex items-center justify-center">
              <MessageSquare className="w-6 h-6 text-red-400/60" />
            </div>
            <p className="text-white/40 text-sm font-['Cairo']">{error}</p>
            <button onClick={loadComments}
              className="px-4 py-2 bg-primary/15 border border-primary/25 text-primary text-sm font-black rounded-xl font-['Cairo']">
              إعادة المحاولة
            </button>
          </div>
        ) : comments.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4 opacity-40">
            <div className="w-16 h-16 bg-primary/10 border border-primary/20 rounded-2xl flex items-center justify-center">
              <MessageCircle className="w-7 h-7 text-primary" />
            </div>
            <p className="text-sm font-black font-['Cairo']">
              {isEpMode ? "لا تعليقات على هذه الحلقة بعد" : "لا تعليقات على هذا الأنمي بعد"}
            </p>
            <p className="text-xs text-white/30 font-['Cairo']">كن أول من يعلّق!</p>
          </div>
        ) : (
          <AnimatePresence initial={false}>
            {comments.map(c => (
              <CommentCard
                key={c.id}
                c={c}
                isMe={!!userId && c.userId === userId}
                onLike={toggleLike}
                onDelete={deleteComment}
              />
            ))}
          </AnimatePresence>
        )}
        <div ref={bottomRef} />
      </div>

      {/* ── INPUT BAR ── */}
      <div className="fixed bottom-0 left-0 right-0 bg-[#09090B]/98 backdrop-blur-xl border-t border-white/6 px-4 py-3 pb-safe"
        style={{ paddingBottom: "max(12px, env(safe-area-inset-bottom))" }}>
        {error && !loading && (
          <p className="text-[10px] text-red-400 font-['Cairo'] mb-2 text-center">{error}</p>
        )}
        {!user ? (
          <button
            onClick={() => navigate("/auth")}
            className="w-full py-3.5 rounded-2xl font-black font-['Cairo'] text-sm text-white"
            style={{
              background: "linear-gradient(135deg,#8B5CF6,#6D28D9)",
              boxShadow: "0 4px 20px rgba(109,40,217,0.4)",
            }}
          >
            سجّل الدخول للتعليق
          </button>
        ) : (
          <div className="flex items-end gap-2">
            {avatarUrl ? (
              <img src={avatarUrl} alt="" className="w-8 h-8 rounded-full object-cover shrink-0 border border-white/10 mb-1" />
            ) : (
              <div
                className="w-8 h-8 rounded-full flex items-center justify-center text-xs font-black text-white shrink-0 mb-1"
                style={{ background: avatarColor(username) }}
              >
                {username.charAt(0).toUpperCase()}
              </div>
            )}
            <div className="flex-1 bg-[#111116] border border-white/8 rounded-2xl px-4 py-2.5 flex items-end gap-2">
              <textarea
                ref={inputRef}
                value={text}
                onChange={e => setText(e.target.value)}
                onKeyDown={e => { if (e.key === "Enter" && !e.shiftKey) { e.preventDefault(); sendComment(); } }}
                placeholder={isEpMode ? `علّق على الحلقة ${ep}...` : "اكتب تعليقك..."}
                rows={1}
                maxLength={1000}
                className="flex-1 bg-transparent text-white text-[13px] outline-none font-['Cairo'] placeholder:text-white/25 resize-none leading-relaxed"
                style={{ maxHeight: 100 }}
                onInput={e => {
                  const t = e.target as HTMLTextAreaElement;
                  t.style.height = "auto";
                  t.style.height = Math.min(t.scrollHeight, 100) + "px";
                }}
              />
              <motion.button
                whileTap={{ scale: 0.88 }}
                onClick={sendComment}
                disabled={!text.trim() || sending}
                className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0 transition-all disabled:opacity-40"
                style={{ background: text.trim() ? "linear-gradient(135deg,#8B5CF6,#6D28D9)" : "rgba(255,255,255,0.06)" }}
              >
                {sending
                  ? <Loader2 className="w-3.5 h-3.5 text-white animate-spin" />
                  : <Send className="w-3.5 h-3.5 text-white" />
                }
              </motion.button>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
