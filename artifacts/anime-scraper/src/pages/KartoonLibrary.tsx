import { useState, useEffect, useCallback, useRef } from "react";
import { useLocation } from "wouter";
import { Search, Tv, X, Loader2, ChevronRight, Clapperboard } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

type CatTab = "all" | "zamaan";
const CATS: { id: CatTab; label: string; catId: number }[] = [
  { id: "all",    label: "كل المسلسلات", catId: 2496   },
  { id: "zamaan", label: "كرتون زمان",   catId: 230926 },
];

interface SeriesItem {
  slug: string;
  title: string;
  thumbnail: string;
  epCount: number;
  latestEp: number;
  cat: number;
}

export default function KartoonLibrary() {
  const [, navigate] = useLocation();
  const [tab,        setTab]        = useState<CatTab>("all");
  const [items,      setItems]      = useState<SeriesItem[]>([]);
  const [page,       setPage]       = useState(1);
  const [hasMore,    setHasMore]    = useState(true);
  const [loading,    setLoading]    = useState(false);
  const [searchQ,    setSearchQ]    = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchRes,  setSearchRes]  = useState<SeriesItem[]>([]);

  const searchRef   = useRef<HTMLInputElement>(null);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const genRef      = useRef(0);
  const abortRef    = useRef<AbortController | null>(null);

  const currentCat = CATS.find(c => c.id === tab)!;

  const load = useCallback(async (catId: number, p: number, gen: number) => {
    setLoading(true);
    try {
      abortRef.current?.abort();
      const ctrl = new AbortController();
      abortRef.current = ctrl;
      const r = await fetch(`/api/kartoon/browse?cat=${catId}&page=${p}`, { signal: ctrl.signal });
      if (genRef.current !== gen) return;
      const data = await r.json();
      if (genRef.current !== gen) return;
      const results: SeriesItem[] = data.series || [];
      if (p === 1) setItems(results);
      else setItems(prev => {
        const ids = new Set(prev.map(i => i.slug));
        return [...prev, ...results.filter(i => !ids.has(i.slug))];
      });
      setHasMore(results.length >= 20);
      setPage(p);
    } catch (e: any) {
      if (e?.name === "AbortError") return;
    }
    if (genRef.current === gen) setLoading(false);
  }, []);

  useEffect(() => {
    const gen = ++genRef.current;
    setItems([]); setPage(1); setHasMore(true);
    load(currentCat.catId, 1, gen);
  }, [tab]);

  useEffect(() => {
    if (!searchQ.trim()) { setSearchRes([]); return; }
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`/api/kartoon/browse?search=${encodeURIComponent(searchQ)}&cat=${currentCat.catId}`);
        const d = await r.json();
        setSearchRes((d.series || []).slice(0, 12));
      } catch { setSearchRes([]); }
    }, 400);
  }, [searchQ, tab]);

  const goSeries = (item: SeriesItem) => {
    navigate(`/kartoon/series?q=${encodeURIComponent(item.title)}&thumb=${encodeURIComponent(item.thumbnail)}&cat=${currentCat.catId}`);
  };

  const displayItems = searchQ.trim() ? searchRes : items;

  return (
    <div className="min-h-screen bg-[var(--bg-base)] pb-28" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-30 bg-[var(--bg-base)]/95 backdrop-blur-2xl border-b border-white/[0.06]">
        <div className="px-4 pt-12 pb-3">

          <div className="flex items-center justify-between mb-4">
            <div>
              <h1 className="text-[22px] font-black text-white font-['Cairo'] leading-none">مسلسلات كرتون</h1>
              <p className="text-[11px] text-white/30 font-['Cairo'] mt-0.5">أنمي ومسلسلات كرتون مدبلجة · عرب سيد</p>
            </div>
            <button
              onClick={() => { setSearchOpen(o => !o); setTimeout(() => searchRef.current?.focus(), 100); }}
              className="w-9 h-9 rounded-2xl flex items-center justify-center active:scale-90 transition-transform"
              style={{ background: searchOpen ? "rgba(249,115,22,0.22)" : "rgba(255,255,255,0.06)", border: `1px solid ${searchOpen ? "rgba(249,115,22,0.4)" : "rgba(255,255,255,0.10)"}` }}
            >
              <Search className="w-4 h-4" style={{ color: searchOpen ? "#fb923c" : "rgba(255,255,255,0.55)" }} />
            </button>
          </div>

          {/* Category tabs */}
          <div className="flex gap-2 mb-3">
            {CATS.map(c => (
              <button key={c.id} onClick={() => { setTab(c.id); setSearchQ(""); }}
                className="flex items-center gap-1.5 px-4 py-2 rounded-2xl text-xs font-black font-['Cairo'] transition-all duration-200"
                style={tab === c.id
                  ? { background: "linear-gradient(135deg,#F97316,#EA580C)", color: "#fff", boxShadow: "0 4px 16px rgba(249,115,22,0.35)" }
                  : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                <Tv className="w-3.5 h-3.5" />
                {c.label}
              </button>
            ))}
          </div>

          {/* Search bar */}
          <AnimatePresence>
            {searchOpen && (
              <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }}
                exit={{ opacity: 0, height: 0 }} className="overflow-hidden mb-3">
                <div className="relative">
                  <Search className="absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30" />
                  <input ref={searchRef} type="text"
                    placeholder="ابحث عن مسلسل كرتون…"
                    value={searchQ} onChange={e => setSearchQ(e.target.value)}
                    className="w-full py-2.5 pr-9 pl-10 text-sm text-white placeholder-white/25 font-['Cairo'] outline-none"
                    style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(249,115,22,0.25)", borderRadius: 14 }} />
                  {searchQ && (
                    <button onClick={() => setSearchQ("")}
                      className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 rounded-full flex items-center justify-center"
                      style={{ background: "rgba(255,255,255,0.12)" }}>
                      <X className="w-3 h-3 text-white/60" />
                    </button>
                  )}
                </div>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      </div>

      {/* ── Grid ── */}
      <div className="px-4 pt-4">
        {loading && displayItems.length === 0 ? (
          <div className="flex items-center justify-center py-20">
            <Loader2 className="w-7 h-7 text-orange-400 animate-spin" />
          </div>
        ) : displayItems.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-20 gap-3">
            <Clapperboard className="w-12 h-12 text-white/15" />
            <p className="text-white/35 text-sm font-['Cairo']">
              {searchQ ? "لا نتائج للبحث" : "جاري التحميل…"}
            </p>
          </div>
        ) : (
          <div className="grid grid-cols-3 gap-3">
            {displayItems.map((item, i) => (
              <motion.div
                key={item.slug + i}
                initial={{ opacity: 0, y: 10 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: Math.min(i * 0.03, 0.3) }}
                whileTap={{ scale: 0.93 }}
                onClick={() => goSeries(item)}
                className="cursor-pointer"
              >
                <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-xl shadow-black/60">
                  {item.thumbnail ? (
                    <img src={item.thumbnail} alt={item.title} className="w-full h-full object-cover" loading="lazy" />
                  ) : (
                    <div className="w-full h-full flex items-center justify-center" style={{ background: "rgba(249,115,22,0.08)" }}>
                      <Tv className="w-8 h-8 text-orange-500/30" />
                    </div>
                  )}
                  <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/20 to-transparent" />
                  {item.latestEp > 0 && (
                    <div className="absolute top-2 right-2 text-[7px] font-black text-white px-1.5 py-0.5 rounded-lg"
                      style={{ background: "rgba(249,115,22,0.85)", backdropFilter: "blur(6px)" }}>
                      ح {item.latestEp}
                    </div>
                  )}
                  <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                    <p className="text-[9px] text-white/90 font-bold line-clamp-2 leading-tight font-['Cairo']">{item.title}</p>
                  </div>
                </div>
              </motion.div>
            ))}
          </div>
        )}

        {/* Load more */}
        {!searchQ && hasMore && !loading && items.length > 0 && (
          <button
            onClick={() => load(currentCat.catId, page + 1, genRef.current)}
            className="w-full mt-5 py-3.5 rounded-2xl text-sm font-black flex items-center justify-center gap-2 font-['Cairo'] transition-all active:scale-[0.98]"
            style={{ background: "rgba(255,255,255,0.04)", border: "1px solid rgba(255,255,255,0.08)", color: "rgba(255,255,255,0.45)" }}
          >
            <ChevronRight className="w-4 h-4" /> عرض المزيد
          </button>
        )}
        {loading && items.length > 0 && (
          <div className="flex justify-center py-4">
            <Loader2 className="w-5 h-5 text-orange-400 animate-spin" />
          </div>
        )}
      </div>
    </div>
  );
}
