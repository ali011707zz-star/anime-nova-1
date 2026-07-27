import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import { Search, X, Loader2, ChevronDown, Zap } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import SEO from "@/components/SEO";

interface SAAnime {
  id: string;
  name: string;
  status: string;
  image: string;
}

interface LatestItem extends SAAnime {
  epName?: string;
  date?: string;
}

function AnimeCard({ a, onClick }: { a: SAAnime; onClick: () => void }) {
  const [imgOk, setImgOk] = useState(true);

  return (
    <motion.div
      whileTap={{ scale: 0.96 }}
      onClick={onClick}
      className="cursor-pointer group"
    >
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8 shadow-lg">
        {imgOk ? (
          <img
            src={a.image}
            alt={a.name}
            className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
            loading="lazy"
            onError={() => setImgOk(false)}
          />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/10 to-transparent" />
        <div className="absolute bottom-0 inset-x-0 p-2">
          <p className="text-white text-[11px] font-bold font-['Cairo'] line-clamp-2 leading-tight">{a.name}</p>
          <span className={`text-[9px] font-['Cairo'] ${a.status === "مستمر" ? "text-green-400/80" : "text-white/40"}`}>
            {a.status}
          </span>
        </div>
      </div>
    </motion.div>
  );
}

function LatestCard({ a, onClick }: { a: LatestItem; onClick: () => void }) {
  const [imgOk, setImgOk] = useState(true);

  return (
    <motion.div whileTap={{ scale: 0.96 }} onClick={onClick} className="cursor-pointer shrink-0 w-28">
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8">
        {imgOk ? (
          <img
            src={a.image}
            alt={a.name}
            className="w-full h-full object-cover"
            loading="lazy"
            onError={() => setImgOk(false)}
          />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/20 to-transparent" />
        <div className="absolute bottom-0 inset-x-0 p-1.5">
          <p className="text-white text-[10px] font-bold font-['Cairo'] line-clamp-2 leading-tight">{a.name}</p>
          {a.epName && <span className="text-[9px] text-[#a78bfa] font-['Cairo']">{a.epName}</span>}
        </div>
      </div>
    </motion.div>
  );
}

export default function SALibrary() {
  const [, navigate] = useLocation();
  const [animes, setAnimes]     = useState<SAAnime[]>([]);
  const [latest, setLatest]     = useState<LatestItem[]>([]);
  const [page, setPage]         = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [total, setTotal]       = useState(0);
  const [loading, setLoading]   = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchQ, setSearchQ]   = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchResults, setSearchResults] = useState<SAAnime[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);
  const [tab, setTab]           = useState<"all" | "latest">("latest");

  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loaderRef   = useRef<HTMLDivElement | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) setLoading(true); else setLoadingMore(true);
    try {
      const r = await fetch(`${API_BASE}/api/sanime/catalog?page=${p}`);
      const d = await r.json();
      const results: SAAnime[] = d.results || [];
      setTotalPages(d.totalPages || 1);
      setTotal(d.total || 0);
      setAnimes(prev => reset ? results : [...prev, ...results]);
      setPage(p);
    } catch {}
    setLoading(false);
    setLoadingMore(false);
  }, []);

  const loadLatest = useCallback(async () => {
    try {
      const r = await fetch(`${API_BASE}/api/sanime/latest`);
      const d = await r.json();
      setLatest(d.results || []);
    } catch {}
  }, []);

  useEffect(() => { loadPage(1, true); loadLatest(); }, [loadPage, loadLatest]);

  // Infinite scroll (all tab only)
  useEffect(() => {
    if (tab !== "all" || !loaderRef.current) return;
    const obs = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting && !loadingMore && !loading && page < totalPages) {
        loadPage(page + 1);
      }
    }, { threshold: 0.1 });
    obs.observe(loaderRef.current);
    return () => obs.disconnect();
  }, [tab, page, totalPages, loadingMore, loading, loadPage]);

  // Search
  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchResults([]); setSearchLoading(false); return; }
    setSearchLoading(true);
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${API_BASE}/api/sanime/catalog?q=${encodeURIComponent(q)}&page=1`);
        const d = await r.json();
        setSearchResults(d.results || []);
      } catch { setSearchResults([]); }
      setSearchLoading(false);
    }, 350);
    return () => { if (searchTimer.current) clearTimeout(searchTimer.current); };
  }, [searchQ]);

  const openDetail = (a: SAAnime | LatestItem) => {
    navigate(`/sanime/${a.id}?name=${encodeURIComponent(a.name)}&img=${encodeURIComponent(a.image)}`);
  };

  const displayList = searchQ.trim().length >= 2 ? searchResults : animes;

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      <SEO
        title="أنمي سـAnime — مكتبة كاملة"
        description="تصفح أكثر من 1300 أنمي بروابط MP4 مباشرة دائمة بدون انتهاء صلاحية."
        path="/sanime"
      />

      {/* ── Sticky Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={() => navigate("/")}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronDown className="w-4 h-4 text-white/70 rotate-90" />
          </button>
          <div className="flex-1">
            <div className="flex items-center gap-1.5">
              <h1 className="text-lg font-black font-['Cairo'] text-white">سـAnime</h1>
              <span className="flex items-center gap-0.5 px-1.5 py-0.5 rounded-md text-[9px] font-bold font-['Cairo']"
                style={{ background: "rgba(16,185,129,0.15)", border: "1px solid rgba(16,185,129,0.25)", color: "#6ee7b7" }}>
                <Zap className="w-2.5 h-2.5" />
                روابط دائمة
              </span>
            </div>
            <p className="text-xs text-white/40 font-['Cairo']">{total > 0 ? `${total.toLocaleString("ar")} أنمي` : "أنمي مترجم عربي"}</p>
          </div>
          <button
            onClick={() => { setSearchOpen(o => !o); if (!searchOpen) setTimeout(() => document.getElementById("sa-search")?.focus(), 50); }}
            className="w-9 h-9 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform"
          >
            {searchOpen ? <X className="w-4 h-4 text-white/70" /> : <Search className="w-4 h-4 text-white/70" />}
          </button>
        </div>

        <AnimatePresence>
          {searchOpen && (
            <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: "auto", opacity: 1 }} exit={{ height: 0, opacity: 0 }}
              className="overflow-hidden px-4 pb-3">
              <input
                id="sa-search"
                value={searchQ}
                onChange={e => setSearchQ(e.target.value)}
                placeholder="ابحث باسم الأنمي..."
                className="w-full bg-white/5 border border-white/10 rounded-xl py-2.5 px-4 text-sm text-white placeholder:text-white/30 font-['Cairo'] focus:outline-none focus:border-[#7C3AED]/50"
              />
            </motion.div>
          )}
        </AnimatePresence>

        {/* Tabs */}
        {!searchOpen && (
          <div className="flex gap-2 px-4 pb-3">
            {(["latest", "all"] as const).map(t => (
              <button key={t} onClick={() => setTab(t)}
                className={`px-4 py-1.5 rounded-xl text-xs font-bold font-['Cairo'] transition-all ${tab === t
                  ? "text-white"
                  : "text-white/40 bg-white/[0.04] border border-white/8"
                }`}
                style={tab === t ? { background: "linear-gradient(135deg,rgba(124,58,237,0.30),rgba(79,70,229,0.18))", border: "1px solid rgba(139,92,246,0.35)" } : {}}>
                {t === "latest" ? "🔥 الأحدث" : "📚 الكل"}
              </button>
            ))}
          </div>
        )}
      </div>

      <div className="px-4 pt-4">
        {/* Latest tab */}
        {tab === "latest" && !searchOpen && (
          <>
            {latest.length > 0 ? (
              <>
                <p className="text-xs text-white/40 font-['Cairo'] mb-3">آخر تحديث</p>
                <div className="flex gap-3 overflow-x-auto pb-4" style={{ scrollbarWidth: "none" }}>
                  {latest.slice(0, 20).map(a => (
                    <LatestCard key={`${a.id}-${a.epName}`} a={a} onClick={() => openDetail(a)} />
                  ))}
                </div>
                <div className="mt-4">
                  <p className="text-xs text-white/40 font-['Cairo'] mb-3">قائمة محدّثة</p>
                  <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-3">
                    {latest.slice(0, 30).map((a, i) => (
                      <motion.div key={`grid-${a.id}`} initial={{ opacity: 0, y: 16 }} animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: Math.min(i * 0.02, 0.2) }}>
                        <AnimeCard a={a} onClick={() => openDetail(a)} />
                      </motion.div>
                    ))}
                  </div>
                </div>
              </>
            ) : (
              <div className="flex items-center justify-center py-20">
                <Loader2 className="w-8 h-8 animate-spin text-[#7C3AED]" />
              </div>
            )}
          </>
        )}

        {/* All tab */}
        {(tab === "all" || searchOpen) && (
          <>
            {loading ? (
              <div className="flex items-center justify-center py-20">
                <Loader2 className="w-8 h-8 animate-spin text-[#7C3AED]" />
              </div>
            ) : (
              <>
                {searchQ.trim().length >= 2 && (
                  <p className="text-xs text-white/40 font-['Cairo'] mb-4">
                    {searchLoading ? "جاري البحث..." : `${searchResults.length} نتيجة`}
                  </p>
                )}
                <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-3">
                  <AnimatePresence mode="popLayout">
                    {displayList.map((a, i) => (
                      <motion.div key={a.id} initial={{ opacity: 0, y: 16 }} animate={{ opacity: 1, y: 0 }}
                        transition={{ delay: Math.min(i * 0.012, 0.15) }}>
                        <AnimeCard a={a} onClick={() => openDetail(a)} />
                      </motion.div>
                    ))}
                  </AnimatePresence>
                </div>
                {!searchQ && (
                  <div ref={loaderRef} className="flex items-center justify-center py-8">
                    {loadingMore && <Loader2 className="w-6 h-6 animate-spin text-[#7C3AED]" />}
                    {!loadingMore && page >= totalPages && animes.length > 0 && (
                      <p className="text-xs text-white/30 font-['Cairo']">تم تحميل جميع الأنمي ({animes.length})</p>
                    )}
                  </div>
                )}
              </>
            )}
          </>
        )}
      </div>
    </main>
  );
}
