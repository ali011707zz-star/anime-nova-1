import { useState, useEffect, useRef } from "react";
import { useSearch, useLocation } from "wouter";
import {
  ChevronRight, Play, Tv, Heart, Plus, Bookmark,
  Sparkles, ChevronLeft, Loader2,
} from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import { useAuth } from "@/lib/auth-context";

interface Episode { id: number; num: number; title: string; link: string; thumb: string; }

export default function KartoonDetail() {
  const search      = useSearch();
  const params      = new URLSearchParams(search);
  const q           = params.get("q")    || "";
  const thumb       = params.get("thumb") || "";
  const cat         = parseInt(params.get("cat") || "2496", 10) || 2496;
  const [, navigate] = useLocation();
  const { user }    = useAuth();

  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [loading,  setLoading]  = useState(true);
  const [saved,    setSaved]    = useState(false);
  const [page,     setPage]     = useState(1);
  const [hasMore,  setHasMore]  = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);

  const epProgress = useRef<Record<number, number>>({});

  const storageKey = `kartoon-saved-${encodeURIComponent(q)}`;
  const myName = user?.displayName || user?.username || user?.email?.split("@")[0] || "مشاهد";

  useEffect(() => {
    if (!q) { navigate("/kartouns"); return; }
    setSaved(localStorage.getItem(storageKey) === "1");
    loadEpisodes(1, true);
  }, [q]);

  useEffect(() => {
    if (!episodes.length) return;
    const prog: Record<number, number> = {};
    episodes.forEach(ep => {
      const key = `kartoon-wp-${encodeURIComponent(q)}-${ep.num}`;
      const t = parseFloat(localStorage.getItem(key) || "0");
      if (t > 0) prog[ep.num] = t;
    });
    epProgress.current = prog;
  }, [episodes, q]);

  async function loadEpisodes(p: number, reset = false) {
    if (reset) setLoading(true); else setLoadingMore(true);
    try {
      const r = await fetch(`/api/kartoon/episodes?q=${encodeURIComponent(q)}&cat=${cat}&page=${p}`);
      const data = await r.json();
      const eps: Episode[] = data.episodes || [];
      if (reset) setEpisodes(eps);
      else setEpisodes(prev => {
        const nums = new Set(prev.map(e => e.num));
        return [...prev, ...eps.filter(e => !nums.has(e.num))];
      });
      setHasMore(eps.length >= 50);
      setPage(p);
    } catch {}
    if (reset) setLoading(false); else setLoadingMore(false);
  }

  const watchUrl = (epNum: number) => {
    const thumbEnc = encodeURIComponent(thumb || episodes[0]?.thumb || "");
    return `/kartoon/watch?title=${encodeURIComponent(q)}&ep=${epNum}&thumb=${thumbEnc}&cat=${cat}`;
  };

  const toggleSave = () => {
    const next = !saved;
    setSaved(next);
    if (next) localStorage.setItem(storageKey, "1");
    else localStorage.removeItem(storageKey);
  };

  const continueEp = (() => {
    try {
      const hist = JSON.parse(localStorage.getItem("kartoon-watch-history") || "[]");
      const item = hist.find((h: any) => h.title === q);
      return item?.ep as number | undefined;
    } catch { return undefined; }
  })();

  const posterUrl = thumb || (episodes[0]?.thumb ?? "");

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
        {posterUrl ? (
          <img src={posterUrl} alt={q} className="w-full h-full object-cover" />
        ) : (
          <div className="w-full h-full" style={{ background: "linear-gradient(135deg,#1a0f00 0%,#431407 40%,#0f1a20 100%)" }} />
        )}
        <div className="absolute inset-0" style={{
          background: "linear-gradient(to bottom, rgba(9,9,11,0.3) 0%, rgba(9,9,11,0.55) 55%, rgba(9,9,11,1) 100%)"
        }} />
        <button
          onClick={() => navigate("/kartouns")}
          className="absolute top-5 right-4 w-10 h-10 bg-black/40 backdrop-blur-md rounded-full flex items-center justify-center border border-white/15 z-10 active:scale-90"
        >
          <ChevronRight className="w-5 h-5 text-white" />
        </button>
        <div className="absolute top-5 left-4 bg-black/50 backdrop-blur-md border border-orange-500/30 px-2.5 py-1.5 rounded-xl flex items-center gap-1.5 z-10">
          <Tv className="w-3.5 h-3.5 text-orange-400" />
          <span className="text-orange-300 text-sm font-black">مسلسل</span>
        </div>
        <div className="absolute bottom-16 right-4 flex items-center gap-1 bg-black/50 backdrop-blur rounded-xl px-2.5 py-1 z-10">
          <span className="text-[10px] font-black text-white/80 font-['Cairo']">{episodes.length} حلقة</span>
        </div>
      </div>

      {/* ── Cover + Title Row ── */}
      <div className="px-4 -mt-20 relative z-10 flex gap-4 items-end">
        <div className="relative shrink-0">
          <div className="absolute inset-0 rounded-2xl blur-xl scale-95 translate-y-2 opacity-70"
            style={{ background: "linear-gradient(135deg,#F97316,#EA580C)" }} />
          <div className="relative w-[90px] h-[130px] rounded-2xl overflow-hidden border border-white/15 shadow-2xl shadow-black/80">
            {posterUrl
              ? <img src={posterUrl} alt={q} className="w-full h-full object-cover" />
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
            {episodes.length > 0 && (
              <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-orange-500/20 bg-orange-500/10 text-orange-400 font-['Cairo']">
                {episodes.length} حلقة
              </span>
            )}
            <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">عرب سيد</span>
            <span className="text-[9px] font-black px-2 py-1 rounded-lg border border-white/8 bg-white/5 text-white/40 font-['Cairo']">مترجم</span>
          </div>
        </div>
      </div>

      {/* ── Watch Button ── */}
      <div className="px-4 mt-6">
        <motion.button
          whileTap={{ scale: 0.97 }}
          onClick={() => navigate(watchUrl(continueEp ?? (episodes[0]?.num || 1)))}
          className="w-full h-[52px] rounded-2xl font-black flex items-center justify-center gap-3 text-[15px] font-['Cairo'] text-white"
          style={{
            background: "linear-gradient(135deg,#F97316 0%,#EA580C 60%,#C2410C 100%)",
            boxShadow: "0 8px 32px rgba(249,115,22,0.5), inset 0 1px 0 rgba(255,255,255,0.15)"
          }}
        >
          <div className="w-8 h-8 bg-white/20 rounded-xl flex items-center justify-center backdrop-blur-sm">
            <Play className="w-4 h-4 fill-white text-white" />
          </div>
          {continueEp ? `متابعة الحلقة ${continueEp}` : "مشاهدة الحلقة 1"}
        </motion.button>
      </div>

      {/* ── Action buttons ── */}
      <div className="px-4 mt-3">
        <div className="grid grid-cols-2 gap-2">
          {[
            { icon: Plus,     label: "قائمتي",  active: saved,  activeColor: "#F97316", action: toggleSave },
            { icon: Bookmark, label: "حفظ",     active: saved,  activeColor: "#10B981", action: toggleSave },
          ].map(({ icon: Icon, label, active, activeColor, action }) => (
            <motion.button key={label} whileTap={{ scale: 0.94 }} onClick={action}
              className="flex flex-col items-center gap-1.5 py-3 rounded-2xl border transition-all font-['Cairo']"
              style={active
                ? { background: `${activeColor}18`, borderColor: `${activeColor}40`, color: activeColor }
                : { background: "rgba(255,255,255,0.04)", borderColor: "rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}>
              <Icon className="w-4 h-4" style={active ? { fill: activeColor, color: activeColor } : {}} />
              <span className="text-[9px] font-black">{label}</span>
            </motion.button>
          ))}
        </div>
      </div>

      {/* ── Episodes List ── */}
      <div className="mt-6 px-4">
        <div className="flex items-center mb-3">
          <div className="w-1 h-5 bg-orange-500 rounded-full ml-2" />
          <h2 className="text-[15px] font-black font-['Cairo']">الحلقات</h2>
          <span className="mr-2 text-[10px] text-white/30 font-['Cairo']">({episodes.length})</span>
        </div>

        <div className="space-y-2">
          {episodes.map(ep => {
            const prog = epProgress.current[ep.num];
            const hasProg = prog && prog > 30;
            return (
              <motion.button
                key={ep.num}
                whileTap={{ scale: 0.98 }}
                onClick={() => navigate(watchUrl(ep.num))}
                className="w-full flex items-center gap-3 rounded-2xl border text-right transition-all active:scale-[0.98]"
                style={{ background: "rgba(255,255,255,0.03)", borderColor: "rgba(255,255,255,0.07)", padding: "10px 12px" }}
              >
                {ep.thumb && (
                  <div className="relative w-[72px] h-[50px] rounded-xl overflow-hidden shrink-0 border border-white/8">
                    <img src={ep.thumb} alt="" className="w-full h-full object-cover" />
                    <div className="absolute inset-0 flex items-center justify-center bg-black/30">
                      <Play className="w-4 h-4 fill-white text-white" />
                    </div>
                    {hasProg && (
                      <div className="absolute bottom-0 left-0 right-0 h-[3px] bg-white/15 rounded-full overflow-hidden">
                        <div className="h-full bg-orange-400 rounded-full" style={{ width: `${Math.min((prog / (24 * 60)) * 100, 100)}%` }} />
                      </div>
                    )}
                  </div>
                )}
                <div className="flex-1 min-w-0">
                  <div className="flex items-center gap-1.5 mb-0.5">
                    <span className="text-[10px] font-black px-1.5 py-0.5 rounded-lg font-['Cairo']"
                      style={{ background: "rgba(249,115,22,0.18)", color: "#fb923c", border: "1px solid rgba(249,115,22,0.25)" }}>
                      ح {ep.num}
                    </span>
                    {hasProg && (
                      <span className="text-[8px] font-black text-orange-400/70 font-['Cairo']">شاهدتها</span>
                    )}
                  </div>
                  <p className="text-[11px] text-white/70 font-['Cairo'] truncate leading-tight">{ep.title}</p>
                </div>
                <ChevronLeft className="w-4 h-4 text-white/20 shrink-0" />
              </motion.button>
            );
          })}
        </div>

        {hasMore && (
          <button
            onClick={() => loadEpisodes(page + 1)}
            disabled={loadingMore}
            className="w-full mt-4 py-3 rounded-2xl font-['Cairo'] text-sm font-black transition-all active:scale-95 flex items-center justify-center gap-2"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}
          >
            {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : "تحميل المزيد"}
          </button>
        )}
      </div>
    </main>
  );
}
