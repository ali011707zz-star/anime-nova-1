import { useState, useEffect, useRef, useCallback } from "react";
import { Link, useLocation } from "wouter";
import { Search, X, ChevronDown, Loader2 } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const AT_IMG = "/api/dubbed/img?f=";

interface Season { label: string; arabicToonsId: string; }
interface Series {
  key: string;
  title: string;
  image?: string;
  poster?: string;
  seasons: Season[];
  tmdbId?: number;
  tmdbType?: string;
  slug?: string;
}

function SeriesCard({ s, onClick }: { s: Series; onClick: () => void }) {
  const img = s.poster || s.image;
  const imgSrc = img
    ? (img.startsWith("/api/dubbed/img") ? img : img.startsWith("http") ? img : `${AT_IMG}${img}`)
    : null;

  return (
    <motion.div
      whileTap={{ scale: 0.96 }}
      onClick={onClick}
      className="cursor-pointer group"
    >
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8 shadow-lg">
        {imgSrc ? (
          <img src={imgSrc} alt={s.title} className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105" loading="lazy" />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/10 to-transparent" />
        <div className="absolute bottom-0 inset-x-0 p-2">
          <p className="text-white text-xs font-bold font-['Cairo'] line-clamp-2 leading-tight">{s.title}</p>
          {s.seasons.length > 1 && (
            <span className="text-white/60 text-[10px] font-['Cairo']">{s.seasons.length} مواسم</span>
          )}
        </div>
      </div>
    </motion.div>
  );
}

export default function DubbedLibrary() {
  const [, navigate] = useLocation();
  const [series, setSeries] = useState<Series[]>([]);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchResults, setSearchResults] = useState<Series[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);

  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loaderRef = useRef<HTMLDivElement | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) { setLoading(true); } else { setLoadingMore(true); }
    try {
      const r = await fetch(`/api/dubbed/catalog?page=${p}`);
      const d = await r.json();
      const results: Series[] = d.results || [];
      setTotalPages(d.totalPages || 1);
      setSeries(prev => reset ? results : [...prev, ...results]);
      setPage(p);
    } catch {}
    setLoading(false);
    setLoadingMore(false);
  }, []);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  // Infinite scroll
  useEffect(() => {
    if (!loaderRef.current) return;
    const obs = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting && !loadingMore && !loading && page < totalPages) {
        loadPage(page + 1);
      }
    }, { threshold: 0.1 });
    obs.observe(loaderRef.current);
    return () => obs.disconnect();
  }, [page, totalPages, loadingMore, loading, loadPage]);

  // Search
  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchResults([]); setSearchLoading(false); return; }
    setSearchLoading(true);
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`/api/dubbed/search?q=${encodeURIComponent(q)}`);
        const d = await r.json();
        setSearchResults(d.results || []);
      } catch { setSearchResults([]); }
      setSearchLoading(false);
    }, 350);
    return () => { if (searchTimer.current) clearTimeout(searchTimer.current); };
  }, [searchQ]);

  const openDetail = (s: Series) => {
    const key = encodeURIComponent(s.key || s.title);
    const seasons = encodeURIComponent(JSON.stringify(s.seasons));
    const img = encodeURIComponent(s.poster || s.image || "");
    navigate(`/dubbed/${key}?seasons=${seasons}&title=${encodeURIComponent(s.title)}&img=${img}`);
  };

  const displayList = searchQ.trim().length >= 2 ? searchResults : series;

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">
      {/* Header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={() => navigate("/")} className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronDown className="w-4 h-4 text-white/70 rotate-90" />
          </button>
          <div className="flex-1">
            <h1 className="text-lg font-black font-['Cairo'] text-white">كرتون مدبلج</h1>
            <p className="text-xs text-white/40 font-['Cairo']">كرتون وأنمي مدبلج للعربية</p>
          </div>
          <button
            onClick={() => { setSearchOpen(o => !o); if (!searchOpen) setTimeout(() => document.getElementById("dubbed-search")?.focus(), 50); }}
            className="w-9 h-9 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform"
          >
            {searchOpen ? <X className="w-4 h-4 text-white/70" /> : <Search className="w-4 h-4 text-white/70" />}
          </button>
        </div>

        <AnimatePresence>
          {searchOpen && (
            <motion.div
              initial={{ height: 0, opacity: 0 }}
              animate={{ height: "auto", opacity: 1 }}
              exit={{ height: 0, opacity: 0 }}
              className="overflow-hidden px-4 pb-3"
            >
              <input
                id="dubbed-search"
                value={searchQ}
                onChange={e => setSearchQ(e.target.value)}
                placeholder="ابحث في الكرتون المدبلج..."
                className="w-full bg-white/5 border border-white/10 rounded-xl py-2.5 px-4 text-sm text-white placeholder:text-white/30 font-['Cairo'] focus:outline-none focus:border-[#7C3AED]/50"
              />
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      {/* Content */}
      <div className="px-4 pt-5">
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
                {displayList.map((s, i) => (
                  <motion.div
                    key={s.key || s.title}
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ delay: Math.min(i * 0.03, 0.4) }}
                  >
                    <SeriesCard s={s} onClick={() => openDetail(s)} />
                  </motion.div>
                ))}
              </AnimatePresence>
            </div>

            {!searchQ && (
              <div ref={loaderRef} className="flex items-center justify-center py-8">
                {loadingMore && <Loader2 className="w-6 h-6 animate-spin text-[#7C3AED]" />}
                {!loadingMore && page >= totalPages && series.length > 0 && (
                  <p className="text-xs text-white/30 font-['Cairo']">تم تحميل جميع المسلسلات ({series.length})</p>
                )}
              </div>
            )}
          </>
        )}
      </div>
    </main>
  );
}
