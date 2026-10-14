/**
 * DubbedCombinedLibrary — يدمج "أنيميشن مدبلج" و"كرتون مدبلج" في صفحة واحدة
 * بتبويبات داخلية مثل الموبايل.
 */
import { API_BASE } from "@/lib/apiBase";
import { useState, useEffect, useRef, useCallback } from "react";
import { useLocation } from "wouter";
import { Search, X, ChevronDown, Loader2 } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";
import {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
  type StardimaCatalogTitle,
} from "@/lib/dubbedCatalogUtils.mjs";
import { useStardimaCatalogFeed } from "@/hooks/useStardimaCatalogFeed";

// ── Types ─────────────────────────────────────────────────────────────────

interface AwSeason  { label: string; animeId: string; }
interface AwSeries  {
  key: string; title: string; titleAr?: string; poster?: string;
  story?: string; year?: string; rating?: number; seasons: AwSeason[];
}

interface AtSeason { label: string; arabicToonsId: string; }
interface AtSeries {
  key: string; title: string; image?: string; poster?: string;
  seasons: AtSeason[]; tmdbId?: number; tmdbType?: string; slug?: string;
}

type Tab = "animation" | "cartoon";

// ── Cards ─────────────────────────────────────────────────────────────────

const AT_IMG = "/api/dubbed/img?f=";

function AwCard({ s, onClick }: { s: AwSeries; onClick: () => void }) {
  return (
    <motion.div whileTap={{ scale: 0.96 }} onClick={onClick} className="cursor-pointer group">
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8 shadow-lg">
        {s.poster ? (
          <img src={s.poster} alt={s.title}
            className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
            loading="lazy" onError={e => { (e.target as HTMLImageElement).style.display = "none"; }} />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-emerald-900/40 to-teal-900/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/85 via-black/10 to-transparent" />
        <div className="absolute bottom-0 inset-x-0 p-2">
          <p className="text-white text-xs font-bold font-['Cairo'] line-clamp-2 leading-tight">{s.titleAr || s.title}</p>
          {s.seasons.length > 1 && <span className="text-white/55 text-[10px] font-['Cairo']">{s.seasons.length} مواسم</span>}
        </div>
      </div>
    </motion.div>
  );
}

function AtCard({ s, onClick }: { s: AtSeries; onClick: () => void }) {
  const img = s.poster || s.image;
  const imgSrc = img
    ? (img.startsWith("/api/dubbed/img") ? img : img.startsWith("http") ? img : `${AT_IMG}${img}`)
    : null;
  return (
    <motion.div whileTap={{ scale: 0.96 }} onClick={onClick} data-testid={`card-dubbed-cartoon-${s.key || s.title}`} className="cursor-pointer group">
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8 shadow-lg">
        {imgSrc ? (
          <img src={imgSrc} alt={s.title}
            className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105" loading="lazy" />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-[#7C3AED]/30 to-[#4C1D95]/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/10 to-transparent" />
        <span className="absolute top-2 right-2 rounded-md border border-emerald-400/25 bg-emerald-500/85 px-2 py-0.5 text-[9px] font-bold text-white font-['Cairo']">
          مدبلج
        </span>
        <div className="absolute bottom-0 inset-x-0 p-2">
          <p className="text-white text-xs font-bold font-['Cairo'] line-clamp-2 leading-tight">{s.title}</p>
          {s.seasons.length > 1 && <span className="text-white/60 text-[10px] font-['Cairo']">{s.seasons.length} مواسم</span>}
        </div>
      </div>
    </motion.div>
  );
}

function StardimaCard({ title, onClick }: { title: StardimaCatalogTitle; onClick: () => void }) {
  const image = title.poster_url || title.backdrop_url || "";
  const badge = catalogBadge(title);
  const titleText = title.title_ar || title.title || title.title_en || "عنوان";
  return (
    <motion.div
      whileTap={{ scale: 0.96 }}
      onClick={onClick}
      role="button"
      tabIndex={0}
      onKeyDown={(event) => {
        if (event.key === "Enter" || event.key === " ") {
          event.preventDefault();
          onClick();
        }
      }}
      data-testid={`card-stardima-${title.provider_title_id}`}
      aria-label={`فتح ${titleText}`}
      className="cursor-pointer group"
    >
      <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-white/5 border border-white/8 shadow-lg">
        {image ? (
          <img src={image} alt={titleText}
            className="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105"
            loading="lazy" onError={event => { (event.target as HTMLImageElement).style.display = "none"; }} />
        ) : (
          <div className="w-full h-full flex items-center justify-center bg-gradient-to-br from-emerald-900/40 to-teal-900/30">
            <span className="text-2xl">📺</span>
          </div>
        )}
        <div className="absolute inset-0 bg-gradient-to-t from-black/85 via-black/10 to-transparent" />
        <span className="absolute top-2 left-2 rounded-md border border-white/15 bg-black/70 px-2 py-0.5 text-[8px] font-bold text-white/85 font-['Cairo']">
          StarDima
        </span>
        {badge ? (
          <span className={`absolute top-2 right-2 rounded-md border px-2 py-0.5 text-[9px] font-bold font-['Cairo'] ${
            badge.includes("مترجم")
              ? "border-red-400/30 bg-red-600/85 text-white"
              : "border-emerald-400/25 bg-emerald-500/85 text-white"
          }`}>
            {badge}
          </span>
        ) : null}
        <div className="absolute bottom-0 inset-x-0 p-2">
          <p className="text-white text-xs font-bold font-['Cairo'] line-clamp-2 leading-tight">{titleText}</p>
          <span className="text-white/55 text-[9px] font-['Cairo']">
            {title.media_type === "movie" ? "فيلم" : "مسلسل"}
            {title.episode_count ? ` · ${title.episode_count} حلقة` : ""}
            {title.release_year ? ` · ${title.release_year}` : ""}
          </span>
        </div>
      </div>
    </motion.div>
  );
}

// ── Animation tab content ─────────────────────────────────────────────────

function AnimationList({
  searchQ,
  onNavigate,
  onCatalogNavigate,
}: {
  searchQ: string;
  onNavigate: (s: AwSeries) => void;
  onCatalogNavigate: (title: StardimaCatalogTitle) => void;
}) {
  const catalog = useStardimaCatalogFeed("animation", searchQ);
  const [series,      setSeries]      = useState<AwSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchResults, setSearchResults] = useState<AwSeries[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loaderRef   = useRef<HTMLDivElement | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${API_BASE}/api/aw-dubbed/catalog?page=${p}`);
      const d = await r.json();
      setTotalPages(d.totalPages || 1);
      setSeries(prev => reset ? (d.results || []) : [...prev, ...(d.results || [])]);
      setPage(p);
    } catch {}
    setLoading(false); setLoadingMore(false);
  }, []);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    if (!loaderRef.current) return;
    const obs = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting && !loadingMore && !loading && page < totalPages)
        loadPage(page + 1);
      if (entries[0].isIntersecting && catalog.hasMore) void catalog.loadMore();
    }, { threshold: 0.1 });
    obs.observe(loaderRef.current);
    return () => obs.disconnect();
  }, [page, totalPages, loadingMore, loading, loadPage, catalog.hasMore, catalog.loadMore]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchResults([]); setSearchLoading(false); return; }
    setSearchLoading(true);
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${API_BASE}/api/aw-dubbed/catalog?q=${encodeURIComponent(q)}&page=1`);
        const d = await r.json();
        setSearchResults(d.results || []);
      } catch { setSearchResults([]); }
      setSearchLoading(false);
    }, 350);
    return () => { if (searchTimer.current) clearTimeout(searchTimer.current); };
  }, [searchQ]);

  const displayList = searchQ.trim().length >= 2 ? searchResults : series;
  const rows = mergeCatalogRows(
    displayList.map((item) => ({ kind: "legacy", item })),
    catalog.items.map((item) => ({ kind: "catalog", item })),
  );

  if (loading && series.length === 0 && catalog.loading && catalog.items.length === 0) return (
    <div className="flex items-center justify-center py-20">
      <Loader2 className="w-8 h-8 animate-spin text-emerald-500" />
    </div>
  );

  return (
    <>
      {searchQ.trim().length >= 2 && (
        <p className="text-xs text-white/40 font-['Cairo'] mb-4">
          {searchLoading ? "جاري البحث..." : `${searchResults.length} نتيجة`}
        </p>
      )}
      <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-3">
        <AnimatePresence mode="popLayout">
          {rows.map((row) => row.kind === "catalog" ? (
            <StardimaCard
              key={`stardima:${(row.item as StardimaCatalogTitle).provider_title_id}`}
              title={row.item as StardimaCatalogTitle}
              onClick={() => onCatalogNavigate(row.item as StardimaCatalogTitle)}
            />
          ) : (
            <AwCard key={`aw:${(row.item as AwSeries).key}`} s={row.item as AwSeries}
              onClick={() => onNavigate(row.item as AwSeries)} />
          ))}
        </AnimatePresence>
      </div>
      {!searchQ.trim() && (
        <div ref={loaderRef} className="flex items-center justify-center py-8">
          {loadingMore && <Loader2 className="w-6 h-6 animate-spin text-emerald-500" />}
          {catalog.loadingMore && <Loader2 className="w-6 h-6 animate-spin text-emerald-500" />}
          {!loadingMore && !catalog.loadingMore && page >= totalPages && !catalog.hasMore && series.length + catalog.items.length > 0 && (
            <p className="text-xs text-white/30 font-['Cairo']">تم تحميل جميع المسلسلات ({series.length})</p>
          )}
          {catalog.error ? (
            <button onClick={catalog.retry} data-testid="button-retry-stardima-animation"
              className="text-xs text-emerald-300 font-['Cairo'] px-3 py-2">
              تعذر تحميل StarDima — أعد المحاولة
            </button>
          ) : null}
        </div>
      )}
      {searchQ.trim().length >= 2 && (
        <p className="text-xs text-white/35 font-['Cairo'] text-center mt-3">
          {catalog.loading ? "جارٍ تحميل نتائج StarDima..." : ""}
        </p>
      )}
    </>
  );
}

// ── Cartoon tab content ───────────────────────────────────────────────────

function CartoonList({
  searchQ,
  onNavigate,
  onCatalogNavigate,
}: {
  searchQ: string;
  onNavigate: (s: AtSeries) => void;
  onCatalogNavigate: (title: StardimaCatalogTitle) => void;
}) {
  const catalog = useStardimaCatalogFeed("cartoon", searchQ);
  const [series,      setSeries]      = useState<AtSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchResults, setSearchResults] = useState<AtSeries[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const loaderRef   = useRef<HTMLDivElement | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${API_BASE}/api/dubbed/catalog?page=${p}`);
      const d = await r.json();
      setTotalPages(d.totalPages || 1);
      const eligible = Array.isArray(d.results) ? d.results.filter(isLegacyCartoonEntry) : [];
      setSeries(prev => reset ? eligible : [...prev, ...eligible]);
      setPage(p);
    } catch {}
    setLoading(false); setLoadingMore(false);
  }, []);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    if (!loaderRef.current) return;
    const obs = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting && !loadingMore && !loading && page < totalPages)
        loadPage(page + 1);
      if (entries[0].isIntersecting && catalog.hasMore) void catalog.loadMore();
    }, { threshold: 0.1 });
    obs.observe(loaderRef.current);
    return () => obs.disconnect();
  }, [page, totalPages, loadingMore, loading, loadPage, catalog.hasMore, catalog.loadMore]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchResults([]); setSearchLoading(false); return; }
    setSearchLoading(true);
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${API_BASE}/api/dubbed/search?q=${encodeURIComponent(q)}`);
        const d = await r.json();
        setSearchResults(Array.isArray(d.results) ? d.results.filter(isLegacyCartoonEntry) : []);
      } catch { setSearchResults([]); }
      setSearchLoading(false);
    }, 350);
    return () => { if (searchTimer.current) clearTimeout(searchTimer.current); };
  }, [searchQ]);

  const displayList = searchQ.trim().length >= 2 ? searchResults : series;
  const rows = mergeCatalogRows(
    displayList.map((item) => ({ kind: "legacy", item })),
    catalog.items.map((item) => ({ kind: "catalog", item })),
  );

  if (loading && series.length === 0 && catalog.loading && catalog.items.length === 0) return (
    <div className="flex items-center justify-center py-20">
      <Loader2 className="w-8 h-8 animate-spin text-[#7C3AED]" />
    </div>
  );

  return (
    <>
      {searchQ.trim().length >= 2 && (
        <p className="text-xs text-white/40 font-['Cairo'] mb-4">
          {searchLoading ? "جاري البحث..." : `${searchResults.length} نتيجة`}
        </p>
      )}
      <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 lg:grid-cols-6 gap-3">
        <AnimatePresence mode="popLayout">
          {rows.map((row) => row.kind === "catalog" ? (
            <StardimaCard
              key={`stardima:${(row.item as StardimaCatalogTitle).provider_title_id}`}
              title={row.item as StardimaCatalogTitle}
              onClick={() => onCatalogNavigate(row.item as StardimaCatalogTitle)}
            />
          ) : (
            <AtCard key={`arabic-toons:${(row.item as AtSeries).key || (row.item as AtSeries).title}`}
              s={row.item as AtSeries}
              onClick={() => onNavigate(row.item as AtSeries)} />
          ))}
        </AnimatePresence>
      </div>
      {!searchQ.trim() && (
        <div ref={loaderRef} className="flex items-center justify-center py-8">
          {loadingMore && <Loader2 className="w-6 h-6 animate-spin text-[#7C3AED]" />}
          {catalog.loadingMore && <Loader2 className="w-6 h-6 animate-spin text-emerald-500" />}
          {!loadingMore && !catalog.loadingMore && page >= totalPages && !catalog.hasMore && series.length + catalog.items.length > 0 && (
            <p className="text-xs text-white/30 font-['Cairo']">تم تحميل جميع الكرتون ({series.length})</p>
          )}
          {catalog.error ? (
            <button onClick={catalog.retry} data-testid="button-retry-stardima-cartoon"
              className="text-xs text-emerald-300 font-['Cairo'] px-3 py-2">
              تعذر تحميل StarDima — أعد المحاولة
            </button>
          ) : null}
        </div>
      )}
      {searchQ.trim().length >= 2 && (
        <p className="text-xs text-white/35 font-['Cairo'] text-center mt-3">
          {catalog.loading ? "جارٍ تحميل نتائج StarDima..." : ""}
        </p>
      )}
    </>
  );
}

// ── Main Combined Page ────────────────────────────────────────────────────

const TABS: { id: Tab; label: string; color: string }[] = [
  { id: "animation", label: "أنيميشن مدبلج ومترجم", color: "emerald" },
  { id: "cartoon",   label: "كرتون مدبلج ومترجم",   color: "violet"  },
];

export default function DubbedCombinedLibrary() {
  const [, navigate]   = useLocation();
  const [tab, setTab]  = useState<Tab>("animation");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQ,    setSearchQ]    = useState("");

  // إعادة تعيين البحث عند تبديل التبويب
  const switchTab = (t: Tab) => { setTab(t); setSearchQ(""); setSearchOpen(false); };

  const activeColor = tab === "animation" ? "emerald" : "violet";
  const accentCls   = tab === "animation"
    ? "border-emerald-500 text-emerald-400"
    : "border-[#7C3AED] text-[#a78bfa]";
  const spinnerCls  = tab === "animation" ? "text-emerald-500" : "text-[#7C3AED]";

  const openAwDetail = (s: AwSeries) => {
    const key     = encodeURIComponent(s.key || s.title);
    const seasons = encodeURIComponent(JSON.stringify(s.seasons));
    const img     = encodeURIComponent(s.poster || "");
    navigate(`/aw-dubbed/${key}?seasons=${seasons}&title=${encodeURIComponent(s.title)}&titleAr=${encodeURIComponent(s.titleAr || "")}&img=${img}`);
  };

  const openAtDetail = (s: AtSeries) => {
    const key     = encodeURIComponent(s.key || s.title);
    const seasons = encodeURIComponent(JSON.stringify(s.seasons));
    const img     = encodeURIComponent(s.poster || s.image || "");
    navigate(`/dubbed/${key}?seasons=${seasons}&title=${encodeURIComponent(s.title)}&img=${img}`);
  };

  const openCatalogDetail = (title: StardimaCatalogTitle) => {
    navigate(`/stardima/title/${encodeURIComponent(title.provider_title_id)}`);
  };

  const placeholder = tab === "animation"
    ? "ابحث في الأنيميشن المدبلج والمترجم..."
    : "ابحث في الكرتون المدبلج والمترجم...";
  const searchId    = `dubbed-combined-search-${tab}`;

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-20 bg-[#09090B]/97 backdrop-blur-xl border-b border-white/5">
        <div className="px-4 pt-4 pb-3 flex items-center gap-3">
          <button onClick={() => navigate("/")}
            className="w-9 h-9 shrink-0 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            <ChevronDown className="w-4 h-4 text-white/70 rotate-90" />
          </button>
          <div className="flex-1">
            <h1 className="text-lg font-black font-['Cairo'] text-white">مدبلج بالعربية</h1>
            <p className="text-xs text-white/40 font-['Cairo']">كرتون وأنيميشن مدبلج ومترجم للعربية</p>
          </div>
          <button
            onClick={() => { setSearchOpen(o => !o); if (!searchOpen) setTimeout(() => document.getElementById(searchId)?.focus(), 50); }}
            className="w-9 h-9 flex items-center justify-center rounded-xl bg-white/5 border border-white/8 active:scale-90 transition-transform">
            {searchOpen ? <X className="w-4 h-4 text-white/70" /> : <Search className="w-4 h-4 text-white/70" />}
          </button>
        </div>

        {/* ── Tabs ── */}
        <div className="flex px-4 gap-1 pb-1">
          {TABS.map(t => (
            <button
              key={t.id}
              onClick={() => switchTab(t.id)}
              className={`flex-1 py-2 rounded-xl text-sm font-bold font-['Cairo'] border transition-all duration-200
                ${tab === t.id
                  ? `${accentCls} bg-white/[0.06]`
                  : "border-transparent text-white/40 hover:text-white/65 hover:bg-white/[0.03]"
                }`}
            >
              {t.label}
            </button>
          ))}
        </div>

        {/* ── Search bar ── */}
        <AnimatePresence>
          {searchOpen && (
            <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: "auto", opacity: 1 }}
              exit={{ height: 0, opacity: 0 }} className="overflow-hidden px-4 pb-3">
              <input
                id={searchId}
                key={searchId}
                value={searchQ}
                onChange={e => setSearchQ(e.target.value)}
                placeholder={placeholder}
                className={`w-full bg-white/5 border border-white/10 rounded-xl py-2.5 px-4 text-sm text-white
                  placeholder:text-white/30 font-['Cairo'] focus:outline-none
                  ${tab === "animation" ? "focus:border-emerald-500/40" : "focus:border-[#7C3AED]/50"}`}
              />
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      {/* ── Content ── */}
      <div className="px-4 pt-5">
        <AnimatePresence mode="wait">
          <motion.div key={tab} initial={{ opacity: 0 }} animate={{ opacity: 1 }}
            exit={{ opacity: 0 }} transition={{ duration: 0.1 }}>
            {tab === "animation"
              ? <AnimationList searchQ={searchQ} onNavigate={openAwDetail} onCatalogNavigate={openCatalogDetail} />
              : <CartoonList   searchQ={searchQ} onNavigate={openAtDetail} onCatalogNavigate={openCatalogDetail} />
            }
          </motion.div>
        </AnimatePresence>
      </div>

    </main>
  );
}
