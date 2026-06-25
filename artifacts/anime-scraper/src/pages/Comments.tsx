import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation, useSearch } from "wouter";
import { motion, AnimatePresence } from "framer-motion";
import {
  ChevronLeft, ChevronRight, MessageCircle, Send, Heart, Trash2,
  Loader2, RefreshCw, MessageSquare, Film, Tv, CornerDownLeft, X,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";

/* ─── types ─────────────────────────────────────────── */
interface Comment {
  id: string;
  userId: string;
  username: string;
  avatarUrl?: string | null;
  animeId?: number | null;
  tmdbId?: string | null;
  episodeNumber?: number | null;
  text: string;
  likes: number;
  liked: boolean;
  createdAt: string;
  parentId?: string | null;
  replyToUsername?: string | null;
}

/* ─── helpers ──────────────────────────────────────── */
function timeAgo(iso: string) {
  const m = Math.floor((Date.now() - new Date(iso).getTime()) / 60000);
  if (m < 1) return "الآن";
  if (m < 60) return `${m} د`;
  const h = Math.floor(m / 60);
  if (h < 24) return `${h} س`;
  const d = Math.floor(h / 24);
  if (d < 7) return `${d} ي`;
  return `${Math.floor(d / 7)} أسبوع`;
}

const AVATAR_COLORS = [
  "#EF4444","#F97316","#EAB308","#22C55E",
  "#14B8A6","#3B82F6","#8B5CF6","#EC4899",
];
function avatarColor(name: string) {
  return AVATAR_COLORS[(name || " ").charCodeAt(0) % AVATAR_COLORS.length];
}

/* ─── Avatar ─────────────────────────────────────────── */
function Avatar({ url, name, size = 36 }: { url?: string | null; name: string; size?: number }) {
  const [err, setErr] = useState(false);
  const sz = `${size}px`;
  if (url && !err) {
    return (
      <img
        src={url} alt="" onError={() => setErr(true)}
        className="rounded-full object-cover shrink-0 border border-white/10"
        style={{ width: sz, height: sz }}
      />
    );
  }
  return (
    <div
      className="rounded-full flex items-center justify-center font-black text-white shrink-0"
      style={{ width: sz, height: sz, background: avatarColor(name), fontSize: size * 0.38 }}
    >
      {(name || "م").charAt(0).toUpperCase()}
    </div>
  );
}

/* ─── CommentCard ─────────────────────────────────────── */
function CommentCard({
  c, isMe, onLike, onDelete, onReply, isReply,
}: {
  c: Comment;
  isMe: boolean;
  isReply?: boolean;
  onLike: (id: string) => void;
  onDelete: (id: string) => void;
  onReply: (id: string, username: string) => void;
}) {
  const [delConfirm, setDelConfirm] = useState(false);

  return (
    <motion.div
      initial={{ opacity: 0, y: 6 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, scale: 0.96 }}
      className={`rounded-2xl ${isReply ? "bg-white/[0.03]" : "bg-[#111116]"} border border-white/6`}
      style={isReply ? { borderRight: "2px solid rgba(139,92,246,0.4)" } : {}}
    >
      <div className="flex items-start gap-3 p-3.5" dir="rtl">
        <Avatar url={c.avatarUrl} name={c.username} size={isReply ? 30 : 36} />
        <div className="flex-1 min-w-0">
          {/* header */}
          <div className="flex items-center justify-between mb-1 gap-2">
            <div className="flex items-center gap-1.5 min-w-0 flex-wrap">
              <span className="text-[12px] font-black font-['Cairo'] truncate max-w-[120px]">{c.username}</span>
              {isMe && (
                <span className="text-[8px] bg-primary/15 text-primary px-1.5 py-0.5 rounded-full font-black shrink-0">أنت</span>
              )}
              {c.replyToUsername && (
                <span className="text-[9px] text-primary/50 font-['Cairo'] shrink-0">
                  ← {c.replyToUsername}
                </span>
              )}
            </div>
            <span className="text-[9px] text-white/20 shrink-0">{timeAgo(c.createdAt)}</span>
          </div>

          {/* ep badge */}
          {c.episodeNumber !== null && c.episodeNumber !== undefined && !isReply && (
            <span className="inline-flex items-center gap-1 text-[9px] bg-primary/10 text-primary/60 px-2 py-0.5 rounded-full mb-1.5 font-['Cairo']">
              <Tv className="w-2.5 h-2.5" />
              ح {c.episodeNumber}
            </span>
          )}

          {/* text */}
          <p className="text-[13px] text-white/80 font-['Cairo'] leading-relaxed break-words">{c.text}</p>

          {/* actions */}
          <div className="flex items-center gap-4 mt-2.5">
            <motion.button
              whileTap={{ scale: 0.82 }}
              onClick={() => onLike(c.id)}
              className="flex items-center gap-1.5 text-[11px] transition-colors"
              style={{ color: c.liked ? "#EC4899" : "rgba(255,255,255,0.25)" }}
            >
              <Heart className={`w-3.5 h-3.5 ${c.liked ? "fill-current" : ""}`} />
              {c.likes > 0 && <span>{c.likes}</span>}
            </motion.button>

            <motion.button
              whileTap={{ scale: 0.82 }}
              onClick={() => onReply(c.id, c.username)}
              className="flex items-center gap-1 text-[11px] text-white/25 hover:text-primary/60 transition-colors"
            >
              <CornerDownLeft className="w-3 h-3" />
              <span className="font-['Cairo']">رد</span>
            </motion.button>

            {isMe && (
              delConfirm ? (
                <div className="flex items-center gap-2 mr-auto">
                  <button onClick={() => onDelete(c.id)}
                    className="text-[10px] text-red-400 font-black font-['Cairo']">حذف</button>
                  <button onClick={() => setDelConfirm(false)}
                    className="text-[10px] text-white/25 font-['Cairo']">إلغاء</button>
                </div>
              ) : (
                <motion.button whileTap={{ scale: 0.82 }} onClick={() => setDelConfirm(true)}
                  className="mr-auto flex items-center gap-1 text-[11px] text-white/15 hover:text-red-400/50 transition-colors">
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
  const animeId   = params.get("animeId") ? Number(params.get("animeId")) : null;
  const tmdbId    = params.get("tmdbId")  || null;
  const mediaType = params.get("type")    || "movie";
  const ep        = params.get("ep") !== null ? Number(params.get("ep")) : null;
  const animeTitle = params.get("title")  || "";
  const isEpMode   = ep !== null && !isNaN(ep);
  const isAnimation = !!tmdbId && !animeId;

  const { user } = useAuth();
  const userId  = (user as any)?.id || (user as any)?.userId || null;
  const username = user?.displayName || user?.username || "مستخدم";
  const avatarUrl = user?.profileImageUrl || (user as any)?.avatarUrl || null;

  const [comments,  setComments]  = useState<Comment[]>([]);
  const [loading,   setLoading]   = useState(true);
  const [sending,   setSending]   = useState(false);
  const [text,      setText]      = useState("");
  const [error,     setError]     = useState<string | null>(null);
  const [replyingTo, setReplyingTo] = useState<{ id: string; username: string } | null>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  /* ── Thread builder: group replies under parents ── */
  const threads = useCallback((flat: Comment[]) => {
    const top = flat.filter(c => !c.parentId);
    const byParent = new Map<string, Comment[]>();
    flat.filter(c => c.parentId).forEach(c => {
      const arr = byParent.get(c.parentId!) || [];
      arr.push(c);
      byParent.set(c.parentId!, arr);
    });
    const result: { comment: Comment; replies: Comment[] }[] = top.map(c => ({
      comment: c,
      replies: byParent.get(c.id) || [],
    }));
    // orphan replies (parent deleted): show as top-level
    byParent.forEach((reps, pid) => {
      if (!top.find(c => c.id === pid)) {
        reps.forEach(r => result.push({ comment: r, replies: [] }));
      }
    });
    return result;
  }, []);

  const loadComments = useCallback(async () => {
    if (!animeId && !tmdbId) return;
    setLoading(true); setError(null);
    try {
      let url: string;
      if (tmdbId) {
        url = isEpMode ? `/api/comments?tmdbId=${tmdbId}&ep=${ep}` : `/api/comments?tmdbId=${tmdbId}`;
      } else {
        url = isEpMode ? `/api/comments?animeId=${animeId}&ep=${ep}` : `/api/comments?animeId=${animeId}`;
      }
      const res  = await fetch(url, { credentials: "include" });
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

  /* focus input when reply is set */
  useEffect(() => {
    if (replyingTo) setTimeout(() => inputRef.current?.focus(), 80);
  }, [replyingTo]);

  const sendComment = async () => {
    const txt = text.trim();
    if (!txt || (!animeId && !tmdbId)) return;
    if (!user) { setError("يجب تسجيل الدخول للتعليق"); return; }
    setSending(true); setError(null);
    try {
      const body: Record<string, any> = {
        ...(animeId ? { animeId } : {}),
        ...(tmdbId  ? { tmdbId, animeType: mediaType } : {}),
        episodeNumber: isEpMode ? ep : undefined,
        text: txt, username, avatarUrl,
      };
      if (replyingTo) {
        body.parentId = replyingTo.id;
        body.replyToUsername = replyingTo.username;
      }
      const res  = await fetch("/api/comments", {
        method: "POST", credentials: "include",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      const data = await res.json();
      if (!res.ok) { setError(data.error || "فشل الإرسال"); return; }
      setComments(prev => [...prev, data.comment]);
      setText(""); setReplyingTo(null);
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
    setComments(prev => prev.filter(c => c.id !== id && c.parentId !== id));
    try { await fetch(`/api/comments/${id}`, { method: "DELETE", credentials: "include" }); } catch {}
  };

  const threaded = threads(comments);
  const totalCount = comments.length;

  return (
    <div className="bg-[#09090B] min-h-screen text-white flex flex-col" dir="rtl">

      {/* ── HEADER ── */}
      <div className="sticky top-0 z-50 bg-[#09090B]/98 backdrop-blur-xl border-b border-white/6">
        <div className="flex items-center gap-3 px-4 py-4">
          <button
            onClick={() => {
              if (animeId) navigate(`/anime/${animeId}`);
              else if (tmdbId) navigate(`/animation/${mediaType}/${tmdbId}`);
              else navigate("/");
            }}
            className="w-9 h-9 bg-white/6 border border-white/8 rounded-2xl flex items-center justify-center active:scale-90 transition-transform shrink-0"
          >
            <ChevronLeft className="w-4 h-4 text-white/70 -scale-x-100" />
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
          <div className="flex items-center gap-2">
            {totalCount > 0 && (
              <span className="text-[10px] bg-primary/15 text-primary px-2.5 py-1 rounded-full font-black">
                {totalCount}
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

        {!isEpMode && (animeId || tmdbId) && (
          <div className="px-4 pb-3">
            <div className="inline-flex items-center gap-1.5 text-[10px] bg-primary/10 text-primary px-3 py-1.5 rounded-xl border border-primary/20">
              {isAnimation
                ? (mediaType === "tv" ? <Tv className="w-3 h-3" /> : <Film className="w-3 h-3" />)
                : <Film className="w-3 h-3" />}
              <span className="font-['Cairo']">
                {isAnimation
                  ? (mediaType === "tv" ? "تعليقات على المسلسل كله" : "تعليقات على الفيلم")
                  : "تعليقات على الأنمي كله"}
              </span>
            </div>
          </div>
        )}
      </div>

      {/* ── CONTENT ── */}
      <div className="flex-1 overflow-y-auto px-4 py-4 pb-52">
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
        ) : threaded.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4 opacity-40">
            <div className="w-16 h-16 bg-primary/10 border border-primary/20 rounded-2xl flex items-center justify-center">
              <MessageCircle className="w-7 h-7 text-primary" />
            </div>
            <p className="text-sm font-black font-['Cairo']">
              {isEpMode ? "لا تعليقات على هذه الحلقة بعد" : "لا تعليقات بعد"}
            </p>
            <p className="text-xs text-white/30 font-['Cairo']">كن أول من يعلّق!</p>
          </div>
        ) : (
          <AnimatePresence initial={false}>
            <div className="space-y-3">
              {threaded.map(({ comment: c, replies }) => (
                <div key={c.id}>
                  <CommentCard
                    c={c}
                    isMe={!!userId && c.userId === userId}
                    onLike={toggleLike}
                    onDelete={deleteComment}
                    onReply={(id, un) => setReplyingTo({ id, username: un })}
                  />
                  {/* replies */}
                  {replies.length > 0 && (
                    <div className="mt-1.5 mr-8 space-y-1.5">
                      {replies.map(r => (
                        <CommentCard
                          key={r.id}
                          c={r}
                          isMe={!!userId && r.userId === userId}
                          isReply
                          onLike={toggleLike}
                          onDelete={deleteComment}
                          onReply={(id, un) => setReplyingTo({ id, username: un })}
                        />
                      ))}
                    </div>
                  )}
                </div>
              ))}
            </div>
          </AnimatePresence>
        )}
      </div>

      {/* ── INPUT BAR ── */}
      <div className="fixed bottom-0 left-0 right-0 bg-[#09090B]/98 backdrop-blur-2xl border-t border-white/6 px-4 pt-3 pb-safe"
        style={{ paddingBottom: "max(12px, env(safe-area-inset-bottom))" }}>

        {/* reply banner */}
        <AnimatePresence>
          {replyingTo && (
            <motion.div
              initial={{ opacity: 0, y: 6, height: 0 }}
              animate={{ opacity: 1, y: 0, height: "auto" }}
              exit={{ opacity: 0, y: 4, height: 0 }}
              className="flex items-center justify-between bg-primary/10 border border-primary/20 rounded-xl px-3 py-2 mb-2"
            >
              <div className="flex items-center gap-2">
                <CornerDownLeft className="w-3.5 h-3.5 text-primary/70 shrink-0" />
                <span className="text-[12px] font-['Cairo'] text-white/60">
                  رداً على <span className="text-primary font-black">@{replyingTo.username}</span>
                </span>
              </div>
              <button
                onClick={() => setReplyingTo(null)}
                className="w-5 h-5 rounded-full bg-white/8 flex items-center justify-center active:scale-90"
              >
                <X className="w-2.5 h-2.5 text-white/50" />
              </button>
            </motion.div>
          )}
        </AnimatePresence>

        {error && !loading && (
          <p className="text-[10px] text-red-400 font-['Cairo'] mb-2 text-center">{error}</p>
        )}

        {!user ? (
          <button
            onClick={() => navigate("/auth")}
            className="w-full py-3.5 rounded-2xl font-black font-['Cairo'] text-sm text-white mb-1"
            style={{
              background: "linear-gradient(135deg,#8B5CF6,#6D28D9)",
              boxShadow: "0 4px 20px rgba(109,40,217,0.4)",
            }}
          >
            سجّل الدخول للتعليق
          </button>
        ) : (
          <div className="flex items-end gap-2 mb-1">
            <Avatar url={avatarUrl} name={username} size={32} />
            <div className="flex-1 bg-[#111116] border border-white/8 rounded-2xl px-4 py-2.5 flex items-end gap-2">
              <textarea
                ref={inputRef}
                value={text}
                onChange={e => setText(e.target.value)}
                onKeyDown={e => { if (e.key === "Enter" && !e.shiftKey) { e.preventDefault(); sendComment(); } }}
                placeholder={
                  replyingTo
                    ? `رد على ${replyingTo.username}...`
                    : isEpMode ? `علّق على الحلقة ${ep}...` : "اكتب تعليقك..."
                }
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
                whileTap={{ scale: 0.85 }}
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
