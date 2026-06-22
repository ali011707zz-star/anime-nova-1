import { useState, useRef } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { Heart, MessageSquare, Send, Trash2, Flag } from "lucide-react";
import { useAuth } from "@/lib/auth-context";

interface EpComment {
  id: number; text: string; author: string;
  ts: number; likes: number; liked: boolean;
}

function load(k: string): EpComment[] {
  try { return JSON.parse(localStorage.getItem(k) || "[]"); } catch { return []; }
}
function persist(k: string, c: EpComment[]) { localStorage.setItem(k, JSON.stringify(c)); }

const GRAD = ["#7C3AED","#6D28D9","#EC4899","#0EA5E9","#10B981","#F59E0B","#EF4444"];
function aColor(name: string) {
  let h = 0;
  for (let i = 0; i < name.length; i++) h = (h * 31 + name.charCodeAt(i)) % GRAD.length;
  return GRAD[h];
}
function ago(ts: number) {
  const m = Math.floor((Date.now() - ts) / 60000);
  if (m < 1) return "الآن";
  if (m < 60) return `${m}د`;
  const h = Math.floor(m / 60);
  if (h < 24) return `${h}س`;
  return `${Math.floor(h / 24)}ي`;
}

export default function EpComments({ commKey }: { commKey: string }) {
  const { user } = useAuth();
  const myName = user?.displayName || user?.username || user?.email?.split("@")[0] || "مشاهد";
  const myImg  = user?.profileImageUrl;

  const [comments, setComments] = useState<EpComment[]>(() => load(commKey));
  const [text, setText]         = useState("");
  const [open, setOpen]         = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  const commit = (upd: EpComment[]) => { setComments(upd); persist(commKey, upd); };

  const submit = () => {
    const t = text.trim();
    if (!t || !user) return;
    commit([{ id: Date.now(), text: t, author: myName, ts: Date.now(), likes: 0, liked: false }, ...comments]);
    setText("");
  };

  const toggleLike = (id: number) =>
    commit(comments.map(c => c.id === id ? { ...c, liked: !c.liked, likes: c.liked ? c.likes - 1 : c.likes + 1 } : c));

  const del = (id: number) => commit(comments.filter(c => c.id !== id));

  return (
    <div className="mt-2" dir="rtl">
      {/* Toggle button */}
      <button onClick={() => { setOpen(p => !p); setTimeout(() => open || inputRef.current?.focus(), 180); }}
        className="w-full flex items-center gap-3 px-4 py-3.5 transition-colors"
        style={{ borderTop: "1px solid rgba(255,255,255,0.04)" }}>
        <div className="w-7 h-7 rounded-xl flex items-center justify-center"
          style={{ background: "rgba(139,92,246,0.10)", border: "1px solid rgba(139,92,246,0.16)" }}>
          <MessageSquare className="w-3.5 h-3.5 text-violet-400/70" />
        </div>
        <span className="text-[12.5px] font-black font-['Cairo'] text-white/55 flex-1 text-right">
          تعليقات الحلقة
        </span>
        {comments.length > 0 && (
          <span className="text-[10px] font-black text-violet-400/60 bg-violet-500/10 px-2 py-0.5 rounded-lg font-['Cairo']">
            {comments.length}
          </span>
        )}
        <motion.div animate={{ rotate: open ? 180 : 0 }} transition={{ duration: 0.2 }}>
          <svg className="w-3.5 h-3.5 text-white/20" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7" />
          </svg>
        </motion.div>
      </button>

      <AnimatePresence>
        {open && (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }}
            exit={{ opacity: 0, height: 0 }} className="overflow-hidden">
            <div className="px-4 pb-4">

              {/* Input */}
              <div className="flex items-center gap-2.5 mb-4">
                {myImg ? (
                  <img src={myImg} alt="" className="w-8 h-8 rounded-full object-cover shrink-0 border border-white/10" />
                ) : (
                  <div className="w-8 h-8 rounded-full flex items-center justify-center font-black text-white text-[12px] shrink-0"
                    style={{ background: aColor(myName) }}>
                    {myName.charAt(0).toUpperCase()}
                  </div>
                )}
                <div className="flex-1 flex items-center gap-2 rounded-2xl px-3.5 py-2.5"
                  style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)" }}>
                  <input ref={inputRef} value={text} onChange={e => setText(e.target.value)}
                    onKeyDown={e => e.key === "Enter" && submit()}
                    placeholder={user ? "اكتب تعليقاً على هذه الحلقة…" : "سجّل دخولك للتعليق"}
                    readOnly={!user}
                    className="flex-1 bg-transparent text-white text-[12.5px] outline-none font-['Cairo'] placeholder:text-white/20" />
                </div>
                <motion.button whileTap={{ scale: 0.88 }} onClick={submit}
                  disabled={!text.trim() || !user}
                  className="w-9 h-9 rounded-2xl flex items-center justify-center shrink-0 disabled:opacity-30 transition-opacity"
                  style={{ background: "linear-gradient(135deg,#7C3AED,#4F46E5)", boxShadow: "0 4px 14px rgba(124,58,237,0.35)" }}>
                  <Send className="w-3.5 h-3.5 text-white" />
                </motion.button>
              </div>

              {/* Comments */}
              <div className="space-y-2.5">
                {comments.length === 0 && (
                  <p className="text-[11.5px] text-white/20 font-['Cairo'] text-center py-4">
                    لا تعليقات بعد — كن أول من يعلّق!
                  </p>
                )}
                {comments.map(c => {
                  const isMe = c.author === myName;
                  return (
                    <motion.div key={c.id} initial={{ opacity: 0, y: -6 }} animate={{ opacity: 1, y: 0 }}
                      className="flex gap-2.5">
                      {(isMe && myImg) ? (
                        <img src={myImg} alt="" className="w-8 h-8 rounded-full object-cover shrink-0 border border-white/10" />
                      ) : (
                        <div className="w-8 h-8 rounded-full flex items-center justify-center font-black text-white text-[12px] shrink-0"
                          style={{ background: aColor(c.author) }}>
                          {c.author.charAt(0).toUpperCase()}
                        </div>
                      )}
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5 mb-1">
                          <span className="text-[12px] font-black font-['Cairo'] text-white/80">{c.author}</span>
                          <span className="text-[9px] text-white/20 font-['Cairo']">{ago(c.ts)}</span>
                        </div>
                        <div className="rounded-2xl rounded-tr-sm px-3.5 py-2.5 mb-1.5"
                          style={{ background: isMe ? "rgba(124,58,237,0.10)" : "rgba(255,255,255,0.04)", border: isMe ? "1px solid rgba(124,58,237,0.16)" : "1px solid rgba(255,255,255,0.06)" }}>
                          <p className="text-[12.5px] text-white/80 font-['Cairo'] leading-relaxed">{c.text}</p>
                        </div>
                        <div className="flex items-center gap-4 pr-1">
                          <motion.button whileTap={{ scale: 0.85 }} onClick={() => toggleLike(c.id)}
                            className="flex items-center gap-1 text-[10.5px] font-bold transition-colors"
                            style={{ color: c.liked ? "#EC4899" : "rgba(255,255,255,0.22)" }}>
                            <Heart className={`w-3 h-3 ${c.liked ? "fill-current" : ""}`} />
                            {c.likes > 0 && c.likes}
                          </motion.button>
                          {isMe ? (
                            <button onClick={() => del(c.id)} className="active:scale-90 transition-transform">
                              <Trash2 className="w-3 h-3 text-white/15 hover:text-red-400/50 transition-colors" />
                            </button>
                          ) : (
                            <button className="opacity-30">
                              <Flag className="w-3 h-3 text-white/20" />
                            </button>
                          )}
                        </div>
                      </div>
                    </motion.div>
                  );
                })}
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  );
}
