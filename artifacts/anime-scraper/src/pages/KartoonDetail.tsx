import { useState, useEffect, useMemo } from "react";
import { useSearch, useLocation, Link } from "wouter";
import {
  ChevronRight, Play, Tv, Heart, Plus, Bookmark,
  Sparkles, List, Star, MessageSquare,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";

interface Reply {
  id: number; text: string; ts: number; author: string; likes: number; likedByMe: boolean;
}
interface Comment {
  id: number; text: string; ts: number; author: string; likes: number; likedByMe: boolean; replies: Reply[];
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

const AVATAR_COLORS = ["#F97316","#EA580C","#C2410C","#FB923C","#FDBA74","#F59E0B","#EF4444"];
function avatarColor(name: string) {
  let h = 0;
  for (let i = 0; i < name.length; i++) h = (h * 31 + name.charCodeAt(i)) % AVATAR_COLORS.length;
  return AVATAR_COLORS[h];
}
function avatarLetter(name: string) { return name?.[0]?.toUpperCase() || "؟"; }

export default function KartoonDetail() {
  const search      = useSearch();
  const params      = new URLSearchParams(search);
  const q           = params.get("q")    || "";
  const thumb       = params.get("thumb") || "";
  const cat         = parseInt(params.get("cat") || "2496", 10) || 2496;
  const [, navigate] = useLocation();
  const { user }    = useAuth();

  const [epCount,  setEpCount]  = useState<number | null>(null);
  const [loading,  setLoading]  = useState(true);
  const [saved,    setSaved]    = useState(false);
  const [myRating, setMyRating] = useState(0);
  const [showRatingPicker, setShowRatingPicker] = useState(false);
  const [showComments, setShowComments] = useState(false);
  const [comments, setComments] = useState<Comment[]>([]);
  const [newComment, setNewComment] = useState("");

  const storageKey = `kartoon-comments-v1-${encodeURIComponent(q)}`;
  const myName = user?.displayName || user?.username || user?.email?.split("@")[0] || "مشاهد";

  useEffect(() => {
    if (!q) { navigate("/kartouns"); return; }
    const sk = `kartoon-saved-${encodeURIComponent(q)}`;
    setSaved(localStorage.getItem(sk) === "1");
    setMyRating(Number(localStorage.getItem(`kartoon-rating-${encodeURIComponent(q)}`) || "0"));
    const savedC = localStorage.getItem(storageKey);
    if (savedC) setComments(JSON.parse(savedC));

    fetch(`/api/kartoon/episodes?q=${encodeURIComponent(q)}&cat=${cat}&page=1`)
      .then(r => r.json())
      .then(d => { setEpCount((d.episodes || []).length); setLoading(false); })
      .catch(() => setLoading(false));
  }, [q, cat]);

  const episodesUrl = `/kartoon/episodes?q=${encodeURIComponent(q)}&thumb=${encodeURIComponent(thumb)}&cat=${cat}`;

  const continueEp = useMemo(() => {
    try {
      const hist = JSON.parse(localStorage.getItem("kartoon-watch-history") || "[]");
      const item = hist.find((h: any) => h.title === q);
      return item?.ep as number | undefined;
    } catch { return undefined; }
  }, [q]);

  const watchUrl = (epNum: number) => {
    const thumbEnc = encodeURIComponent(thumb);
    return `/kartoon/watch?title=${encodeURIComponent(q)}&ep=${epNum}&thumb=${thumbEnc}&cat=${cat}`;
  };

  const toggleSave = () => {
    const sk = `kartoon-saved-${encodeURIComponent(q)}`;
    const next = !saved;
    setSaved(next);
    if (next) localStorage.setItem(sk, "1");
    else localStorage.removeItem(sk);
  };

  const setRating = (r: number) => {
    setMyRating(r);
    localStorage.setItem(`kartoon-rating-${encodeURIComponent(q)}`, String(r));
    setShowRatingPicker(false);
  };

  const saveComments = (upd: Comment[]) => {
    setComments(upd);
    localStorage.setItem(storageKey, JSON.stringify(upd));
  };
  const addComment = () => {
    if (!newComment.trim()) return;
    const c: Comment = { id: Date.now(), text: newComment.trim(), ts: Date.now(), author: myName, likes: 0, likedByMe: false, replies: [] };
    saveComments([c, ...comments]);
    setNewComment("");
  };
  const toggleLike = (id: number) => {
    saveComments(comments.map(c => c.id === id ? { ...c, likes: c.likedByMe ? c.likes - 1 : c.likes + 1, likedByMe: !c.likedByMe } : c));
  };

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex items-center justify-center">
      <motion.div animate={{ rotate: 360 }} transition={{ duration: 1, repeat: Infinity, ease: "linear" }}>
        <Sparkles className="w-8 h-8 text-orange-400" />
      </motion.div>
    </div>
  );

  return (
    <main className="min-h-screen bg-[#09090B] pb-32 text-white" dir="rtl">

      {/* ── Hero Banner ── */}
      <div className="relative w-full overflow-hidden" style={{ height: 250 }}>
        {thumb ? (
          <img src={thumb} alt={q} className="w-full h-full object-cover" />
        ) : (
          <div className="w-full h-full" style={{ background: "linear-gradient(135deg,#1a0f00 0%,#431407 40%,#0f1a20 100%)" }} />
        )}
        <div className="absolute inset-0" style={{
          background: "linear-gradient(to bottom, rgba(9,9,11,0.3) 0%, rgba(9,9,11,0.55) 55%, rgba(9,9,11,1) 100%)"
        }} />
        <button
          onClick={() => navigate("/kartouns")}
          className="absolute top-5 right-4 w-10 h-10 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90 transition-transform"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="absolute top-5 left-4 bg-black/50 backdrop-blur-md border border-orange-500/30 px-2.5 py-1.5 rounded-xl flex items-center gap-1.5 z-10">
          <Tv className="w-3.5 h-3.5 text-orange-400" />
          <span className="text-orange-300 text-sm font-black font-['Cairo']">كرتون</span>
        </div>
        {epCount !== null && epCount > 0 && (
          <div className="absolute bottom-16 right-4 flex items-center gap-1 bg-black/50 backdrop-blur rounded-xl px-2.5 py-1 z-10">
            <span className="text-[10px] font-black text-white/80 font-['Cairo']">{epCount} حلقة</span>
          </div>
        )}
      </div>

      {/* ── Cover + Title Row ── */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-70"
            style={{ background: "linear-gradient(135deg,#F97316,#EA580C)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {thumb
              ? <img src={thumb} alt={q} className="w-full h-full object-cover" />
              : <div className="w-full h-full bg-orange-900/30 flex items-center justify-center"><Tv className="w-8 h-8 text-orange-500/40" /></div>
            }
          </div>
          <div className="absolute -bottom-2 left-1/2 -translate-x-1/2 bg-[#1C1C22] border border-white/12 text-white/60 text-[9px] font-black px-2 py-1 rounded-lg whitespace-nowrap font-['Cairo']">
            كرتون
          </div>
        </div>
        <div className="flex-1 pb-3 min-w-0 space-y-2">
          <h1 className="text-[17px] font-black text-white leading-snug font-['Cairo'] line-clamp-2">{q}</h1>
          <div className="flex flex-wrap gap-1.5">
            {epCount !== null && epCount > 0 && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-orange-500/20 bg-orange-500/10 text-orange-400 font-['Cairo']">
                {epCount}+ حلقة
              </span>
            )}
            <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">كرتون</span>
            <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">مترجم</span>
          </div>
        </div>
      </div>

      {/* ── Watch Button ── */}
      <div className="px-4 mt-6">
        <Link href={episodesUrl}>
          <motion.button
            whileTap={{ scale: 0.97 }}
            className="w-full h-[52px] rounded-2xl font-black flex items-center justify-center gap-3 text-[15px] font-['Cairo'] text-white"
            style={{
              background: "linear-gradient(135deg,#F97316 0%,#EA580C 60%,#C2410C 100%)",
              boxShadow: "0 8px 32px rgba(249,115,22,0.5), inset 0 1px 0 rgba(255,255,255,0.15)"
            }}
          >
            <div className="w-8 h-8 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
              <Play className="w-4 h-4 fill-white text-white" />
            </div>
            {continueEp ? `متابعة — الحلقة ${continueEp}` : "مشاهدة المسلسل"}
          </motion.button>
        </Link>
      </div>

      {/* ── Continue-watch quick link ── */}
      {continueEp && (
        <div className="px-4 mt-2">
          <Link href={watchUrl(continueEp)}>
            <button className="w-full h-10 rounded-xl font-['Cairo'] text-[12px] font-black transition-all active:scale-[0.98] flex items-center justify-center gap-2"
              style={{ background: "rgba(249,115,22,0.10)", border: "1px solid rgba(249,115,22,0.22)", color: "rgba(251,146,60,0.85)" }}>
              <Play className="w-3.5 h-3.5 fill-current" /> تشغيل مباشر — ح{continueEp}
            </button>
          </Link>
        </div>
      )}

      {/* ── Action buttons ── */}
      <div className="px-4 mt-3">
        <div className="grid grid-cols-3 gap-2 mb-2">
          {[
            { icon: Star,     label: "تقييمي",  active: myRating > 0, activeColor: "#EAB308", action: () => setShowRatingPicker(true) },
            { icon: Plus,     label: "قائمتي",  active: saved,        activeColor: "#F97316", action: toggleSave },
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
            <MessageSquare className="w-4 h-4" />
            <span className="text-[11px] font-black">التعليقات</span>
            <span className="text-[9px] text-white/30">{comments.length > 0 ? `${comments.length} تعليق` : "اكتب تعليقاً"}</span>
          </motion.button>
          <Link href={episodesUrl}>
            <motion.button whileTap={{ scale: 0.94 }}
              className="w-full flex flex-col items-center gap-1 py-3 rounded-2xl border font-['Cairo'] transition-all"
              style={{ background: "rgba(249,115,22,0.06)", borderColor: "rgba(249,115,22,0.20)", color: "rgba(251,146,60,0.75)" }}>
              <List className="w-4 h-4" />
              <span className="text-[11px] font-black">الحلقات</span>
              <span className="text-[9px]" style={{ color: "rgba(251,146,60,0.50)" }}>
                {epCount !== null ? `${epCount}+ حلقة` : "عرض الكل"}
              </span>
            </motion.button>
          </Link>
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
                      ? { background: "rgba(249,115,22,0.22)", border: "1.5px solid rgba(249,115,22,0.55)", color: "#F97316" }
                      : { background: "rgba(255,255,255,0.05)", border: "1px solid rgba(255,255,255,0.09)", color: "rgba(255,255,255,0.5)" }}>
                    {n}
                  </motion.button>
                ))}
              </div>
              {myRating > 0 && (
                <button onClick={() => setRating(0)} className="w-full text-[11px] text-white/30 font-['Cairo'] text-center py-1">إزالة التقييم</button>
              )}
            </motion.div>
          </>
        )}
      </AnimatePresence>

      {/* ── Comments Sheet ── */}
      <AnimatePresence>
        {showComments && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="fixed inset-0 bg-black/60 z-[60]" onClick={() => setShowComments(false)} />
            <motion.div initial={{ y: "100%" }} animate={{ y: 0 }} exit={{ y: "100%" }}
              transition={{ type: "spring", damping: 28, stiffness: 300 }}
              className="fixed bottom-0 left-0 right-0 z-[61] rounded-t-3xl overflow-hidden flex flex-col"
              style={{ maxHeight: "80vh", background: "#111116", border: "1px solid rgba(255,255,255,0.08)" }}>
              <div className="flex items-center justify-between px-4 pt-4 pb-3 border-b border-white/[0.06] shrink-0">
                <h3 className="text-[14px] font-black font-['Cairo'] text-white">التعليقات</h3>
                <button onClick={() => setShowComments(false)} className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "rgba(255,255,255,0.07)" }}>
                  <ChevronRight className="w-3.5 h-3.5 text-white/60 -rotate-90" />
                </button>
              </div>
              <div className="flex-1 overflow-y-auto" style={{ scrollbarWidth: "none" }}>
                {comments.length === 0 ? (
                  <div className="flex flex-col items-center justify-center py-12 gap-2 text-white/25">
                    <MessageSquare className="w-8 h-8" />
                    <p className="text-sm font-['Cairo']">لا توجد تعليقات بعد</p>
                  </div>
                ) : (
                  comments.map(c => (
                    <div key={c.id} className="flex gap-3 px-4 py-3.5 border-b border-white/6">
                      <div className="w-8 h-8 rounded-full flex items-center justify-center shrink-0 text-[11px] font-black text-white"
                        style={{ background: avatarColor(c.author) }}>
                        {avatarLetter(c.author)}
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-0.5">
                          <span className="text-[12px] font-black text-white/80 font-['Cairo']">{c.author}</span>
                          <span className="text-[9px] text-white/25 font-['Cairo']">{timeAgo(c.ts)}</span>
                        </div>
                        <p className="text-[12px] text-white/65 leading-relaxed font-['Cairo']">{c.text}</p>
                        <button onClick={() => toggleLike(c.id)}
                          className="flex items-center gap-1 mt-2 active:scale-90 transition-transform"
                          style={{ color: c.likedByMe ? "#EC4899" : "rgba(255,255,255,0.3)" }}>
                          <Heart className={`w-3.5 h-3.5 ${c.likedByMe ? "fill-current" : ""}`} />
                          {c.likes > 0 && <span className="text-[10px] font-black font-['Cairo']">{c.likes}</span>}
                        </button>
                      </div>
                    </div>
                  ))
                )}
              </div>
              <div className="shrink-0 px-4 py-3 border-t border-white/[0.06]" style={{ background: "#0E0E12" }}>
                <div className="flex gap-2 items-center">
                  <input
                    value={newComment} onChange={e => setNewComment(e.target.value)}
                    onKeyDown={e => { if (e.key === "Enter") addComment(); }}
                    placeholder="اكتب تعليقاً…"
                    className="flex-1 px-3 py-2 text-[12px] text-white placeholder-white/25 font-['Cairo'] outline-none rounded-xl"
                    style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.10)" }}
                  />
                  <button onClick={addComment} disabled={!newComment.trim()}
                    className="w-9 h-9 rounded-xl flex items-center justify-center shrink-0 transition-all active:scale-90 disabled:opacity-30"
                    style={{ background: "linear-gradient(135deg,#F97316,#EA580C)" }}>
                    <Play className="w-4 h-4 fill-white text-white" />
                  </button>
                </div>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>

      {/* ── Info Section ── */}
      <div className="mt-7 px-4">
        <div className="flex items-center mb-3">
          <div className="w-1 h-5 bg-orange-500 rounded-full ml-2" />
          <h2 className="text-[15px] font-black font-['Cairo']">معلومات</h2>
        </div>
        <div className="bg-[#111116] border border-white/6 rounded-2xl p-4 space-y-2.5">
          <div className="flex items-center justify-between">
            <span className="text-[11px] text-white/35 font-['Cairo']">المصدر</span>
            <span className="text-[11px] font-black text-white/70 font-['Cairo']">مجمعة</span>
          </div>
          {epCount !== null && (
            <div className="flex items-center justify-between">
              <span className="text-[11px] text-white/35 font-['Cairo']">الحلقات المتاحة</span>
              <span className="text-[11px] font-black text-orange-400 font-['Cairo']">{epCount}+ حلقة</span>
            </div>
          )}
          <div className="flex items-center justify-between">
            <span className="text-[11px] text-white/35 font-['Cairo']">نوع الصوت</span>
            <span className="text-[11px] font-black text-white/70 font-['Cairo']">مترجم / مدبلج</span>
          </div>
          <div className="flex items-center justify-between">
            <span className="text-[11px] text-white/35 font-['Cairo']">الفئة</span>
            <span className="text-[11px] font-black text-white/70 font-['Cairo']">{cat === 230926 ? "كرتون زمان" : "مسلسلات كرتون"}</span>
          </div>
        </div>
      </div>

      {/* ── Episodes preview button ── */}
      <div className="mt-6 px-4">
        <div className="flex items-center mb-3">
          <div className="w-1 h-5 bg-orange-500 rounded-full ml-2" />
          <h2 className="text-[15px] font-black font-['Cairo']">الحلقات</h2>
        </div>
        <Link href={episodesUrl}>
          <motion.div whileTap={{ scale: 0.97 }}
            className="rounded-2xl p-4 flex items-center gap-4 cursor-pointer"
            style={{ background: "rgba(249,115,22,0.07)", border: "1px solid rgba(249,115,22,0.18)" }}>
            <div className="w-12 h-12 rounded-2xl flex items-center justify-center shrink-0"
              style={{ background: "linear-gradient(135deg,#F97316,#EA580C)" }}>
              <List className="w-6 h-6 text-white" />
            </div>
            <div className="flex-1 min-w-0">
              <p className="text-[13px] font-black text-white font-['Cairo']">عرض جميع الحلقات</p>
              <p className="text-[10px] text-white/35 font-['Cairo'] mt-0.5">
                {epCount !== null ? `${epCount}+ حلقة متاحة` : "اضغط لعرض قائمة الحلقات"}
              </p>
            </div>
            <ChevronRight className="w-5 h-5 text-orange-400/60 rotate-180 shrink-0" />
          </motion.div>
        </Link>
      </div>
    </main>
  );
}
