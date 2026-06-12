import { useState, useEffect, useCallback, useRef } from "react";
import { useSearch, useLocation, Link } from "wouter";
import { ChevronRight, Play, Clock, Loader2, ChevronLeft, Tv } from "lucide-react";
import { motion } from "framer-motion";

interface Episode {
  id: number;
  num: number;
  title: string;
  link: string;
  thumb: string;
}

export default function KartoonEpisodes() {
  const search = useSearch();
  const params = new URLSearchParams(search);
  const q      = params.get("q")    || "";
  const thumb  = params.get("thumb") || "";
  const cat    = parseInt(params.get("cat") || "2496", 10) || 2496;

  const [, navigate] = useLocation();

  const [episodes,    setEpisodes]    = useState<Episode[]>([]);
  const [loading,     setLoading]     = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hasMore,     setHasMore]     = useState(true);
  const [page,        setPage]        = useState(1);
  const [epProgress,  setEpProgress]  = useState<Record<number, number>>({});

  const genRef = useRef(0);

  useEffect(() => {
    if (!q) { navigate("/kartouns"); return; }
    loadPage(1, true);
  }, [q, cat]);

  useEffect(() => {
    if (!episodes.length) return;
    const prog: Record<number, number> = {};
    episodes.forEach(ep => {
      const key = `kartoon-wp-${encodeURIComponent(q)}-${ep.num}`;
      const t = parseFloat(localStorage.getItem(key) || "0");
      if (t > 0) prog[ep.num] = t;
    });
    setEpProgress(prog);
  }, [episodes, q]);

  const loadPage = useCallback(async (p: number, reset = false) => {
    const gen = ++genRef.current;
    if (reset) setLoading(true); else setLoadingMore(true);
    try {
      const r = await fetch(`/api/kartoon/episodes?q=${encodeURIComponent(q)}&cat=${cat}&page=${p}`);
      if (genRef.current !== gen) return;
      const data = await r.json();
      const eps: Episode[] = data.episodes || [];
      if (reset) {
        setEpisodes(eps);
      } else {
        setEpisodes(prev => {
          const nums = new Set(prev.map(e => e.num));
          return [...prev, ...eps.filter(e => !nums.has(e.num))];
        });
      }
      setHasMore(eps.length >= 50);
      setPage(p);
    } catch {}
    if (genRef.current === gen) {
      if (reset) setLoading(false); else setLoadingMore(false);
    }
  }, [q, cat]);

  const watchUrl = (epNum: number) => {
    const thumbEnc = encodeURIComponent(thumb || episodes[0]?.thumb || "");
    return `/kartoon/watch?title=${encodeURIComponent(q)}&ep=${epNum}&thumb=${thumbEnc}&cat=${cat}`;
  };

  const continueEp = (() => {
    try {
      const hist = JSON.parse(localStorage.getItem("kartoon-watch-history") || "[]");
      const item = hist.find((h: any) => h.title === q);
      return item?.ep as number | undefined;
    } catch { return undefined; }
  })();

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button
            onClick={() => navigate(`/kartoon/series?q=${encodeURIComponent(q)}&thumb=${encodeURIComponent(thumb)}&cat=${cat}`)}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform"
          >
            <ChevronRight className="w-4 h-4 text-white/70" />
          </button>

          <div className="flex-1 min-w-0">
            <p className="text-[10px] text-orange-400/70 font-['Cairo']">الحلقات</p>
            <h1 className="text-[14px] font-black text-white font-['Cairo'] truncate leading-tight">{q}</h1>
          </div>

          {!loading && episodes.length > 0 && (
            <div className="shrink-0 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
              style={{ background: "rgba(249,115,22,0.15)", border: "1px solid rgba(249,115,22,0.28)", color: "rgba(253,186,116,0.90)" }}>
              {episodes.length}{hasMore ? "+" : ""} حلقة
            </div>
          )}
        </div>

        {/* Continue-watch bar */}
        {continueEp && !loading && (
          <div className="px-4 pb-3">
            <Link href={watchUrl(continueEp)}>
              <div className="flex items-center gap-2 px-3 py-2 rounded-2xl"
                style={{ background: "rgba(249,115,22,0.10)", border: "1px solid rgba(249,115,22,0.22)" }}>
                <Play className="w-3.5 h-3.5 fill-orange-400 text-orange-400 shrink-0" />
                <span className="text-[11px] font-black text-orange-400 font-['Cairo']">متابعة — الحلقة {continueEp}</span>
              </div>
            </Link>
          </div>
        )}
      </div>

      {/* ── Episodes list ── */}
      <div className="px-4 mt-4 space-y-2">
        {loading ? (
          <div className="flex flex-col items-center justify-center py-20 gap-3">
            <div className="w-7 h-7 border-2 border-orange-400 border-t-transparent rounded-full animate-spin" />
            <p className="text-white/25 text-[11px] font-['Cairo']">جاري تحميل الحلقات…</p>
          </div>
        ) : episodes.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-4">
            <div className="w-14 h-14 rounded-2xl bg-white/4 border border-white/6 flex items-center justify-center">
              <Tv className="w-6 h-6 text-white/15" />
            </div>
            <p className="text-white/25 text-sm font-['Cairo']">لا توجد حلقات</p>
          </div>
        ) : (
          episodes.map((ep, i) => {
            const progressSec = epProgress[ep.num] || 0;
            const estDuration = 24 * 60;
            const progressPct = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
            const watched     = progressPct >= 90;
            const isCurrent   = ep.num === continueEp;

            return (
              <Link key={ep.num} href={watchUrl(ep.num)}>
                <motion.div
                  initial={{ opacity: 0, y: 8 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: Math.min(i * 0.02, 0.3), duration: 0.18 }}
                  whileTap={{ scale: 0.97 }}
                  className={`flex items-center gap-3 p-3 rounded-2xl border transition-colors ${
                    watched
                      ? "bg-white/3 border-white/4 opacity-55"
                      : isCurrent
                        ? "border-orange-500/30"
                        : "bg-[#111116] border-white/6"
                  }`}
                  style={isCurrent && !watched ? { background: "rgba(249,115,22,0.06)" } : {}}
                >
                  {/* Thumbnail */}
                  <div className="w-[88px] h-[52px] rounded-xl overflow-hidden bg-white/6 flex-shrink-0 relative">
                    {ep.thumb ? (
                      <img src={ep.thumb} alt="" className="w-full h-full object-cover" loading="lazy" />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center" style={{ background: "rgba(249,115,22,0.06)" }}>
                        <Tv className="w-4 h-4 text-orange-500/20" />
                      </div>
                    )}
                    <div className="absolute inset-0 bg-gradient-to-t from-black/55 to-transparent" />

                    {/* Episode number badge */}
                    <div className="absolute bottom-1 right-1.5 text-[8px] font-black text-white/75 bg-black/55 px-1.5 py-[2px] rounded-md font-mono backdrop-blur-sm">
                      {ep.num}
                    </div>

                    {/* Progress bar */}
                    {progressPct > 0 && !watched && (
                      <div className="absolute bottom-0 left-0 right-0 h-[3px] bg-white/15">
                        <div className="h-full bg-orange-400 transition-all" style={{ width: `${progressPct}%` }} />
                      </div>
                    )}

                    {/* Watched checkmark */}
                    {watched && (
                      <div className="absolute inset-0 flex items-center justify-center bg-black/45">
                        <div className="w-5 h-5 rounded-full bg-emerald-500/85 flex items-center justify-center">
                          <svg viewBox="0 0 12 12" className="w-3 h-3 text-white">
                            <path d="M2 6l3 3 5-5" stroke="currentColor" strokeWidth="1.8" strokeLinecap="round" strokeLinejoin="round" fill="none" />
                          </svg>
                        </div>
                      </div>
                    )}

                    {/* Play overlay */}
                    {!watched && (
                      <div className="absolute inset-0 flex items-center justify-center opacity-0 active:opacity-100 transition-opacity bg-black/30">
                        <div className="w-7 h-7 rounded-full flex items-center justify-center"
                          style={{ background: "rgba(249,115,22,0.80)" }}>
                          <Play className="w-3.5 h-3.5 text-white fill-white" />
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Info */}
                  <div className="flex-1 min-w-0 text-right">
                    <div className="flex items-center gap-1.5 mb-0.5">
                      <span className="text-[10px] font-black px-1.5 py-0.5 rounded-lg font-['Cairo']"
                        style={{ background: isCurrent ? "rgba(249,115,22,0.22)" : "rgba(249,115,22,0.12)", color: "#fb923c", border: `1px solid ${isCurrent ? "rgba(249,115,22,0.40)" : "rgba(249,115,22,0.20)"}` }}>
                        ح {ep.num}
                      </span>
                      {watched && <span className="text-[8px] font-black text-emerald-400/70 font-['Cairo']">شاهدتها</span>}
                      {isCurrent && !watched && <span className="text-[8px] font-black text-orange-400/80 font-['Cairo']">متابعة</span>}
                    </div>
                    <p className="text-[12px] font-black text-white line-clamp-1 font-['Cairo'] leading-tight">
                      {ep.title || `الحلقة ${ep.num}`}
                    </p>
                    {progressSec > 30 && !watched && (
                      <div className="flex items-center gap-1 mt-1">
                        <Clock className="w-2.5 h-2.5 text-orange-400/50" />
                        <span className="text-[8.5px] text-orange-400/65 font-['Cairo'] font-bold">
                          {Math.floor(progressSec / 60)}:{String(Math.floor(progressSec % 60)).padStart(2, "0")} ▶
                        </span>
                      </div>
                    )}
                  </div>

                  {/* Play icon */}
                  <div className="w-8 h-8 rounded-xl flex items-center justify-center shrink-0"
                    style={{ background: "rgba(249,115,22,0.12)", border: "1px solid rgba(249,115,22,0.22)" }}>
                    <ChevronLeft className="w-4 h-4" style={{ color: "#fb923c" }} />
                  </div>
                </motion.div>
              </Link>
            );
          })
        )}
      </div>

      {/* Load more */}
      {!loading && hasMore && episodes.length > 0 && (
        <div className="px-4 mt-3">
          <button
            onClick={() => loadPage(page + 1)}
            disabled={loadingMore}
            className="w-full py-3.5 rounded-2xl text-sm font-black flex items-center justify-center gap-2 font-['Cairo'] transition-all active:scale-[0.98]"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}
          >
            {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <><ChevronRight className="w-4 h-4" /> تحميل المزيد</>}
          </button>
        </div>
      )}
      {loading && (
        <div className="flex justify-center py-4">
          <Loader2 className="w-5 h-5 text-orange-400 animate-spin" />
        </div>
      )}
    </main>
  );
}
