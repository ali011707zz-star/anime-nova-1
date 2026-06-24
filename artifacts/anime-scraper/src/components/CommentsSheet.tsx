/**
 * CommentsSheet — مكوّن تعليقات عصري مشترك
 * يُستخدم في AnimeDetail + AnimationDetail
 * Props: commKey (مفتاح localStorage), open, onClose, title
 */
import { useState, useRef, useEffect, useCallback } from "react";
import { motion, AnimatePresence } from "framer-motion";
import {
  X, Heart, MessageSquare, Send, ChevronDown,
  Flag, Smile, Trash2,
} from "lucide-react";
import { useAuth } from "@/lib/auth-context";

/* ── types ─────────────────────────────────────────────── */
interface Reply {
  id: number; text: string; author: string; authorImg?: string | null;
  ts: number; likes: number; likedByMe: boolean;
}
interface Comment {
  id: number; text: string; author: string; authorImg?: string | null;
  ts: number; likes: number; likedByMe: boolean;
  replies: Reply[];
}

/* ── helpers ────────────────────────────────────────────── */
const GRAD = ["#7C3AED","#6D28D9","#EC4899","#0EA5E9","#10B981","#F59E0B","#EF4444","#8B5CF6"];
function aColor(name: string) {
  let h = 0;
  for (let i = 0; i < name.length; i++) h = (h * 31 + name.charCodeAt(i)) % GRAD.length;
  return GRAD[h];
}
function timeAgo(ts: number) {
  const m = Math.floor((Date.now() - ts) / 60000);
  if (m < 1) return "الآن";
  if (m < 60) return `${m}د`;
  const h = Math.floor(m / 60);
  if (h < 24) return `${h}س`;
  const d = Math.floor(h / 24);
  if (d < 7) return `${d}ي`;
  return `${Math.floor(d / 7)}أ`;
}
function load(key: string): Comment[] {
  try { return JSON.parse(localStorage.getItem(key) || "[]"); } catch { return []; }
}
function save(key: string, c: Comment[]) {
  localStorage.setItem(key, JSON.stringify(c));
}

/* ── Avatar ─────────────────────────────────────────────── */
function Av({ name, img, size = 36 }: { name: string; img?: string | null; size?: number }) {
  return img ? (
    <img src={img} alt="" className="rounded-full object-cover shrink-0"
      style={{ width: size, height: size, border: "1.5px solid rgba(255,255,255,0.10)" }} />
  ) : (
    <div className="rounded-full flex items-center justify-center font-black text-white shrink-0"
      style={{ width: size, height: size, fontSize: size * 0.38, background: aColor(name), border: "1.5px solid rgba(255,255,255,0.08)" }}>
      {name.charAt(0).toUpperCase()}
    </div>
  );
}

/* ══════════════════════════════════════════════════════════
   MAIN COMPONENT
══════════════════════════════════════════════════════════ */
export default function CommentsSheet({
  commKey, open, onClose, title = "",
}: {
  commKey: string; open: boolean; onClose: () => void; title?: string;
}) {
  const { user } = useAuth();
  const myName = user?.displayName || user?.username || user?.email?.split("@")[0] || "مشاهد";
  const myImg  = user?.profileImageUrl;

  const [comments,   setComments]   = useState<Comment[]>(() => load(commKey));
  const [text,       setText]       = useState("");
  const [replyTo,    setReplyTo]    = useState<number | null>(null);
  const [replyText,  setReplyText]  = useState("");
  const [expanded,   setExpanded]   = useState<Set<number>>(new Set());
  const inputRef = useRef<HTMLInputElement>(null);
  const replyRef = useRef<HTMLInputElement>(null);

  /* reload when key changes */
  useEffect(() => { setComments(load(commKey)); }, [commKey]);

  const commit = useCallback((upd: Comment[]) => {
    setComments(upd); save(commKey, upd);
  }, [commKey]);

  /* ── add comment ── */
  const addComment = () => {
    const t = text.trim();
    if (!t) return;
    const c: Comment = { id: Date.now(), text: t, author: myName, authorImg: myImg ?? null, ts: Date.now(), likes: 0, likedByMe: false, replies: [] };
    commit([c, ...comments]);
    setText("");
  };

  /* ── add reply ── */
  const addReply = (cid: number) => {
    const t = replyText.trim();
    if (!t) return;
    const r: Reply = { id: Date.now(), text: t, author: myName, authorImg: myImg ?? null, ts: Date.now(), likes: 0, likedByMe: false };
    commit(comments.map(c => c.id === cid ? { ...c, replies: [...c.replies, r] } : c));
    setReplyText(""); setReplyTo(null);
    setExpanded(prev => new Set([...prev, cid]));
  };

  /* ── toggle like ── */
  const likeComment = (cid: number) => {
    commit(comments.map(c => c.id === cid
      ? { ...c, likes: c.likedByMe ? c.likes - 1 : c.likes + 1, likedByMe: !c.likedByMe }
      : c));
  };
  const likeReply = (cid: number, rid: number) => {
    commit(comments.map(c => c.id === cid
      ? { ...c, replies: c.replies.map(r => r.id === rid
          ? { ...r, likes: r.likedByMe ? r.likes - 1 : r.likes + 1, likedByMe: !r.likedByMe }
          : r) }
      : c));
  };

  /* ── delete ── */
  const delComment = (cid: number) => commit(comments.filter(c => c.id !== cid));
  const delReply   = (cid: number, rid: number) =>
    commit(comments.map(c => c.id === cid ? { ...c, replies: c.replies.filter(r => r.id !== rid) } : c));

  /* ── toggle expanded replies ── */
  const toggleExp = (cid: number) =>
    setExpanded(prev => { const n = new Set(prev); n.has(cid) ? n.delete(cid) : n.add(cid); return n; });

  return (
    <AnimatePresence>
      {open && (
        <div className="fixed inset-0 z-[200]" dir="rtl">
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="absolute inset-0 bg-black/75 backdrop-blur-md"
            onClick={onClose}
          />

          {/* Sheet */}
          <motion.div
            initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
            transition={{ type: "spring", stiffness: 380, damping: 36 }}
            className="absolute inset-x-0 bottom-0 flex flex-col"
            style={{
              maxHeight: "88dvh",
              background: "linear-gradient(180deg,#0F0D1B 0%,#09090B 100%)",
              borderRadius: "1.75rem 1.75rem 0 0",
              border: "1.5px solid rgba(139,92,246,0.18)",
              borderBottom: "none",
              boxShadow: "0 -40px 100px rgba(0,0,0,0.8), 0 0 0 1px rgba(255,255,255,0.03)",
            }}
            onClick={e => e.stopPropagation()}
          >
            {/* Top gradient line */}
            <div className="h-[2.5px] rounded-full shrink-0"
              style={{ background: "linear-gradient(90deg,transparent,#7C3AED 30%,#A78BFA 50%,#EC4899 70%,transparent)" }} />

            {/* Drag handle */}
            <div className="flex justify-center pt-2.5 pb-1 shrink-0">
              <div className="w-9 h-[3px] rounded-full bg-white/10" />
            </div>

            {/* Header */}
            <div className="flex items-center justify-between px-5 pb-3.5 pt-1 shrink-0"
              style={{ borderBottom: "1px solid rgba(255,255,255,0.05)" }}>
              <div className="flex items-center gap-2.5">
                <div className="w-8 h-8 rounded-2xl flex items-center justify-center"
                  style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.22)" }}>
                  <MessageSquare className="w-3.5 h-3.5 text-violet-400" />
                </div>
                <div>
                  <p className="text-[14.5px] font-black font-['Cairo'] text-white leading-tight">
                    التعليقات
                    {comments.length > 0 && (
                      <span className="mr-1.5 text-[10px] text-violet-400/80 font-black bg-violet-500/10 px-1.5 py-0.5 rounded-lg">
                        {comments.length}
                      </span>
                    )}
                  </p>
                  {title && <p className="text-[9.5px] text-white/25 font-['Cairo'] truncate max-w-[180px]">{title}</p>}
                </div>
              </div>
              <button onClick={onClose}
                className="w-8 h-8 rounded-2xl flex items-center justify-center active:scale-90 transition-transform"
                style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.08)" }}>
                <X className="w-4 h-4 text-white/40" />
              </button>
            </div>

            {/* Comments list */}
            <div className="flex-1 overflow-y-auto">
              {comments.length === 0 ? (
                <div className="flex flex-col items-center justify-center py-20 gap-4">
                  <div className="w-16 h-16 rounded-3xl flex items-center justify-center"
                    style={{ background: "rgba(139,92,246,0.07)", border: "1px solid rgba(139,92,246,0.12)" }}>
                    <MessageSquare className="w-7 h-7 text-violet-400/30" />
                  </div>
                  <div className="text-center">
                    <p className="text-[14px] font-black font-['Cairo'] text-white/40">لا تعليقات بعد</p>
                    <p className="text-[11px] text-white/20 font-['Cairo'] mt-1">كن أول من يشارك رأيه!</p>
                  </div>
                </div>
              ) : (
                <div className="py-2">
                  {comments.map(c => {
                    const isExp = expanded.has(c.id);
                    const isRep = replyTo === c.id;
                    const isMe  = c.author === myName;
                    return (
                      <div key={c.id}>
                        {/* ── Comment row ── */}
                        <div className="flex gap-3 px-4 py-3.5">
                          <Av name={c.author} img={c.authorImg ?? (isMe ? myImg : null)} size={36} />
                          <div className="flex-1 min-w-0">
                            {/* Name + time + delete */}
                            <div className="flex items-center justify-between mb-1">
                              <div className="flex items-center gap-1.5">
                                <span className="text-[12.5px] font-black font-['Cairo'] text-white/90">{c.author}</span>
                                <span className="text-[9.5px] text-white/20 font-['Cairo']">{timeAgo(c.ts)}</span>
                              </div>
                              {isMe ? (
                                <button onClick={() => delComment(c.id)}
                                  className="w-6 h-6 flex items-center justify-center active:scale-90 transition-transform">
                                  <Trash2 className="w-3.5 h-3.5 text-white/15 hover:text-red-400/60 transition-colors" />
                                </button>
                              ) : (
                                <button className="w-6 h-6 flex items-center justify-center">
                                  <Flag className="w-3 h-3 text-white/10" />
                                </button>
                              )}
                            </div>
                            {/* Bubble */}
                            <div className="rounded-2xl rounded-tr-sm px-3.5 py-2.5 mb-2.5"
                              style={{ background: isMe ? "rgba(124,58,237,0.12)" : "rgba(255,255,255,0.04)", border: isMe ? "1px solid rgba(124,58,237,0.18)" : "1px solid rgba(255,255,255,0.06)" }}>
                              <p className="text-[13px] text-white/85 font-['Cairo'] leading-relaxed">{c.text}</p>
                            </div>
                            {/* Actions */}
                            <div className="flex items-center gap-4">
                              <motion.button whileTap={{ scale: 0.85 }} onClick={() => likeComment(c.id)}
                                className="flex items-center gap-1.5 text-[11px] font-bold transition-colors"
                                style={{ color: c.likedByMe ? "#EC4899" : "rgba(255,255,255,0.25)" }}>
                                <Heart className={`w-3.5 h-3.5 transition-all ${c.likedByMe ? "fill-current scale-110" : ""}`} />
                                {c.likes > 0 && <span>{c.likes}</span>}
                              </motion.button>
                              <button onClick={() => {
                                setReplyTo(isRep ? null : c.id);
                                if (!isRep) { setExpanded(p => new Set([...p, c.id])); setTimeout(() => replyRef.current?.focus(), 120); }
                              }}
                                className="flex items-center gap-1.5 text-[11px] font-bold font-['Cairo'] transition-colors"
                                style={{ color: isRep ? "#8B5CF6" : "rgba(255,255,255,0.25)" }}>
                                <MessageSquare className="w-3.5 h-3.5" />
                                رد
                              </button>
                              {c.replies.length > 0 && (
                                <button onClick={() => toggleExp(c.id)}
                                  className="flex items-center gap-1 text-[10.5px] font-black font-['Cairo'] transition-colors"
                                  style={{ color: isExp ? "#A78BFA" : "rgba(255,255,255,0.20)" }}>
                                  <ChevronDown className={`w-3 h-3 transition-transform ${isExp ? "rotate-180" : ""}`} />
                                  {c.replies.length} ردود
                                </button>
                              )}
                            </div>
                          </div>
                        </div>

                        {/* ── Replies ── */}
                        <AnimatePresence>
                          {isExp && (
                            <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }}
                              exit={{ opacity: 0, height: 0 }} className="overflow-hidden">
                              <div className="pr-16 pl-4 pb-2 space-y-2.5">
                                {c.replies.map(r => {
                                  const rMe = r.author === myName;
                                  return (
                                    <div key={r.id} className="flex gap-2.5">
                                      <Av name={r.author} img={r.authorImg ?? (rMe ? myImg : null)} size={28} />
                                      <div className="flex-1 min-w-0">
                                        <div className="flex items-center gap-1.5 mb-1">
                                          <span className="text-[11px] font-black font-['Cairo'] text-white/80">{r.author}</span>
                                          <span className="text-[9px] text-white/20 font-['Cairo']">{timeAgo(r.ts)}</span>
                                          {rMe && (
                                            <button onClick={() => delReply(c.id, r.id)} className="mr-auto active:scale-90">
                                              <Trash2 className="w-3 h-3 text-white/10 hover:text-red-400/50 transition-colors" />
                                            </button>
                                          )}
                                        </div>
                                        <div className="rounded-2xl rounded-tr-sm px-3 py-2 mb-1.5"
                                          style={{ background: rMe ? "rgba(124,58,237,0.10)" : "rgba(255,255,255,0.035)", border: rMe ? "1px solid rgba(124,58,237,0.15)" : "1px solid rgba(255,255,255,0.05)" }}>
                                          <p className="text-[12px] text-white/80 font-['Cairo'] leading-relaxed">{r.text}</p>
                                        </div>
                                        <motion.button whileTap={{ scale: 0.85 }} onClick={() => likeReply(c.id, r.id)}
                                          className="flex items-center gap-1 text-[10px] font-bold transition-colors pr-1"
                                          style={{ color: r.likedByMe ? "#EC4899" : "rgba(255,255,255,0.20)" }}>
                                          <Heart className={`w-3 h-3 ${r.likedByMe ? "fill-current" : ""}`} />
                                          {r.likes > 0 && <span>{r.likes}</span>}
                                        </motion.button>
                                      </div>
                                    </div>
                                  );
                                })}
                              </div>
                            </motion.div>
                          )}
                        </AnimatePresence>

                        {/* ── Reply input ── */}
                        <AnimatePresence>
                          {isRep && (
                            <motion.div initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -8 }}
                              className="flex gap-2.5 items-center pr-16 pl-4 pb-3">
                              <Av name={myName} img={myImg} size={26} />
                              <div className="flex-1 flex items-center gap-2 rounded-2xl px-3.5 py-2"
                                style={{ background: "rgba(124,58,237,0.08)", border: "1px solid rgba(124,58,237,0.20)" }}>
                                <input ref={replyRef} value={replyText} onChange={e => setReplyText(e.target.value)}
                                  onKeyDown={e => e.key === "Enter" && addReply(c.id)}
                                  placeholder={`ردّ على ${c.author}...`}
                                  className="flex-1 bg-transparent text-white text-[12px] outline-none font-['Cairo'] placeholder:text-white/25" />
                                <motion.button whileTap={{ scale: 0.9 }} onClick={() => addReply(c.id)}
                                  disabled={!replyText.trim()}
                                  className="w-6 h-6 rounded-lg flex items-center justify-center disabled:opacity-30 transition-opacity shrink-0"
                                  style={{ background: "rgba(124,58,237,0.4)" }}>
                                  <Send className="w-3 h-3 text-violet-200" />
                                </motion.button>
                              </div>
                            </motion.div>
                          )}
                        </AnimatePresence>

                        {/* Divider */}
                        <div className="h-px mx-4" style={{ background: "rgba(255,255,255,0.04)" }} />
                      </div>
                    );
                  })}
                </div>
              )}
            </div>

            {/* ── Input bar ── */}
            <div className="shrink-0 px-4 py-3"
              style={{ borderTop: "1px solid rgba(255,255,255,0.05)", background: "rgba(9,9,11,0.95)", backdropFilter: "blur(20px)" }}>
              <div className="flex items-center gap-3">
                <Av name={myName} img={myImg} size={34} />
                <div className="flex-1 flex items-center gap-2 rounded-2xl px-4 py-2.5"
                  style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                  <input ref={inputRef} value={text} onChange={e => setText(e.target.value)}
                    onKeyDown={e => e.key === "Enter" && addComment()}
                    placeholder={user ? "شارك رأيك..." : "سجّل دخولك للتعليق"}
                    readOnly={!user}
                    className="flex-1 bg-transparent text-white text-[13px] outline-none font-['Cairo'] placeholder:text-white/20" />
                  <button className="text-white/15 active:scale-90 transition-transform">
                    <Smile className="w-4 h-4" />
                  </button>
                </div>
                <motion.button whileTap={{ scale: 0.9 }} onClick={addComment}
                  disabled={!text.trim() || !user}
                  className="w-10 h-10 rounded-2xl flex items-center justify-center shrink-0 disabled:opacity-30 transition-all"
                  style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: text.trim() ? "0 4px 16px rgba(124,58,237,0.40)" : "none" }}>
                  <Send className="w-4 h-4 text-white" />
                </motion.button>
              </div>
            </div>
          </motion.div>
        </div>
      )}
    </AnimatePresence>
  );
}
