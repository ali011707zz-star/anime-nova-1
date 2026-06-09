import { useState, useRef } from "react";
import { Heart, MessageSquare, Send } from "lucide-react";

interface EpComment { id: number; text: string; user: string; ts: number; likes: number; liked: boolean }

function loadCmts(k: string): EpComment[] { try { return JSON.parse(localStorage.getItem(k)||"[]"); } catch { return []; } }
function saveCmts(k: string, c: EpComment[]) { localStorage.setItem(k, JSON.stringify(c)); }

function fmt(ts: number) {
  const d = Math.floor((Date.now() - ts) / 1000);
  if (d < 60)    return "الآن";
  if (d < 3600)  return `منذ ${Math.floor(d/60)} د`;
  if (d < 86400) return `منذ ${Math.floor(d/3600)} س`;
  return `منذ ${Math.floor(d/86400)} ي`;
}

export default function EpComments({ commKey }: { commKey: string }) {
  const [comments, setComments] = useState<EpComment[]>(() => loadCmts(commKey));
  const [text, setText] = useState("");
  const inputRef = useRef<HTMLInputElement>(null);
  const myName = localStorage.getItem("nova-username") || "مستخدم";

  const submit = () => {
    const t = text.trim();
    if (!t) return;
    const c: EpComment = { id: Date.now(), text: t, user: myName, ts: Date.now(), likes: 0, liked: false };
    const upd = [...comments, c];
    setComments(upd); saveCmts(commKey, upd); setText("");
  };

  const toggleLike = (id: number) => {
    const upd = comments.map(c => c.id === id
      ? { ...c, liked: !c.liked, likes: c.liked ? c.likes - 1 : c.likes + 1 }
      : c);
    setComments(upd); saveCmts(commKey, upd);
  };

  const del = (id: number) => {
    const upd = comments.filter(c => c.id !== id);
    setComments(upd); saveCmts(commKey, upd);
  };

  return (
    <div className="px-4 py-4 border-t border-white/5 mt-2" dir="rtl">
      <div className="flex items-center gap-2 mb-4">
        <MessageSquare className="w-4 h-4 text-violet-400/60" />
        <span className="text-[13px] font-black text-white/70 font-['Cairo']">تعليقات الحلقة</span>
        {comments.length > 0 && (
          <span className="text-[10px] text-white/25 bg-white/5 px-2 py-0.5 rounded-lg font-['Cairo']">
            {comments.length}
          </span>
        )}
      </div>

      <div className="flex gap-2 mb-4">
        <input
          ref={inputRef}
          value={text}
          onChange={e => setText(e.target.value)}
          onKeyDown={e => e.key === "Enter" && submit()}
          placeholder="اكتب تعليقاً على هذه الحلقة…"
          className="flex-1 rounded-xl px-3 py-2.5 text-[13px] text-white placeholder-white/25 font-['Cairo'] focus:outline-none"
          style={{ background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.10)" }}
        />
        <button onClick={submit}
          className="w-10 h-10 flex items-center justify-center rounded-xl active:scale-90 transition-transform shrink-0"
          style={{ background: "rgba(124,58,237,0.22)", border: "1px solid rgba(124,58,237,0.38)" }}>
          <Send className="w-4 h-4 text-violet-300/80" />
        </button>
      </div>

      <div className="space-y-3">
        {comments.slice().reverse().map(c => (
          <div key={c.id} className="rounded-xl p-3"
            style={{ background: "rgba(255,255,255,0.035)", border: "1px solid rgba(255,255,255,0.07)" }}>
            <div className="flex items-center justify-between mb-1.5">
              <div className="flex items-center gap-2">
                <div className="w-6 h-6 rounded-full flex items-center justify-center text-[10px] font-black shrink-0"
                  style={{ background: "rgba(124,58,237,0.25)", color: "rgba(196,181,253,0.9)" }}>
                  {c.user.charAt(0)}
                </div>
                <span className="text-white/70 text-[12px] font-black font-['Cairo']">{c.user}</span>
                <span className="text-white/25 text-[10px] font-['Cairo']">{fmt(c.ts)}</span>
              </div>
              <div className="flex items-center gap-2.5">
                <button onClick={() => toggleLike(c.id)} className="flex items-center gap-1 active:scale-90 transition-transform">
                  <Heart className={`w-3.5 h-3.5 transition-colors ${c.liked ? "text-rose-400 fill-rose-400" : "text-white/25"}`} />
                  {c.likes > 0 && <span className="text-[10px] text-white/30 font-['Cairo']">{c.likes}</span>}
                </button>
                {c.user === myName && (
                  <button onClick={() => del(c.id)}
                    className="text-white/20 hover:text-red-400/60 text-[10px] font-['Cairo'] transition-colors active:scale-90">
                    حذف
                  </button>
                )}
              </div>
            </div>
            <p className="text-white/80 text-[13px] font-['Cairo'] leading-relaxed">{c.text}</p>
          </div>
        ))}
        {comments.length === 0 && (
          <p className="text-white/20 text-[12px] font-['Cairo'] text-center py-4">
            لا تعليقات بعد — كن أول من يعلّق!
          </p>
        )}
      </div>
    </div>
  );
}
