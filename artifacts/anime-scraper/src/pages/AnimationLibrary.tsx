import { useState, useEffect, useCallback, useRef } from "react";
import { Link, useLocation } from "wouter";
import { Search, Film, Tv, Star, ChevronDown, Loader2, SlidersHorizontal, X, Calendar, Flame, Award } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const IMG = "https://image.tmdb.org/t/p/w342";

type MediaType = "movie" | "tv";

interface Genre { id: number; ar: string }

const MOVIE_GENRES: Genre[] = [
  { id: 0,     ar: "الكل" },
  { id: 10751, ar: "عائلي" },
  { id: 35,    ar: "كوميدي" },
  { id: 12,    ar: "مغامرة" },
  { id: 28,    ar: "أكشن" },
  { id: 14,    ar: "فانتازيا" },
  { id: 878,   ar: "خيال علمي" },
  { id: 18,    ar: "دراما" },
];

const TV_GENRES: Genre[] = [
  { id: 0,     ar: "الكل" },
  { id: 10751, ar: "عائلي" },
  { id: 35,    ar: "كوميدي" },
  { id: 10759, ar: "أكشن ومغامرة" },
  { id: 10765, ar: "خيال علمي" },
  { id: 10762, ar: "أطفال" },
  { id: 18,    ar: "دراما" },
];

const SORT_OPTIONS = [
  { value: "popularity.desc",          label: "الأكثر مشاهدة",  icon: Flame },
  { value: "vote_average.desc",        label: "الأعلى تقييماً", icon: Award },
  { value: "primary_release_date.desc",label: "الأحدث",         icon: Calendar },
  { value: "primary_release_date.asc", label: "الأقدم",         icon: Calendar },
] as const;

const SORT_OPTIONS_TV = [
  { value: "popularity.desc",     label: "الأكثر مشاهدة",  icon: Flame },
  { value: "vote_average.desc",   label: "الأعلى تقييماً", icon: Award },
  { value: "first_air_date.desc", label: "الأحدث",         icon: Calendar },
  { value: "first_air_date.asc",  label: "الأقدم",         icon: Calendar },
] as const;

const YEARS = ["الكل", ...Array.from({ length: 14 }, (_, i) => String(2025 - i))];

interface TmdbItem {
  id: number;
  title?: string;
  name?: string;
  original_title?: string;
  original_name?: string;
  poster_path?: string;
  vote_average?: number;
  release_date?: string;
  first_air_date?: string;
  genre_ids?: number[];
}

export default function AnimationLibrary() {
  const [, navigate]    = useLocation();
  const [type, setType] = useState<MediaType>("movie");
  const [genre, setGenre]  = useState<number>(0);
  const [sort, setSort]    = useState("popularity.desc");
  const [year, setYear]    = useState("");
  const [items, setItems]  = useState<TmdbItem[]>([]);
  const [page, setPage]    = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchResults, setSearchResults] = useState<TmdbItem[]>([]);
  const [showFilters, setShowFilters] = useState(false);
  const [noticeDismissed, setNoticeDismissed] = useState(() =>
    localStorage.getItem("animation-notice-dismissed") === "1"
  );

  const searchRef   = useRef<HTMLInputElement>(null);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const genres = type === "movie" ? MOVIE_GENRES : TV_GENRES;
  const sortOptions = type === "movie" ? SORT_OPTIONS : SORT_OPTIONS_TV;

  const loadingRef = useRef(false);
  const load = useCallback(async (t: MediaType, g: number, s: string, y: string, p: number, reset = false) => {
    if (loadingRef.current) return;
    loadingRef.current = true;
    setLoading(true);
    try {
      const gParam = g === 0 ? "16" : `${g}`;
      const r = await fetch(`/api/animation/browse?type=${t}&genre=${gParam}&sort=${encodeURIComponent(s)}&year=${y}&page=${p}`);
      const data = await r.json();
      const hasCjk = (s: string) => /[\u3000-\u9fff\uac00-\ud7af\uf900-\ufaff]/u.test(s);
      const results: TmdbItem[] = (data.results || []).filter((item: TmdbItem) => {
        const orig = item.original_title || item.original_name || "";
        const disp = item.title || item.name || "";
        return !hasCjk(orig) || !hasCjk(disp);
      });
      if (reset) {
        setItems(results);
      } else {
        setItems(prev => [...prev, ...results]);
      }
      setHasMore(p < (data.total_pages || 1));
      setPage(p);
    } catch { /* skip */ }
    loadingRef.current = false;
    setLoading(false);
  }, []);

  useEffect(() => {
    setItems([]); setPage(1); setHasMore(true);
    load(type, genre, sort, year, 1, true);
  }, [type, genre, sort, year]);

  useEffect(() => {
    if (!searchQ.trim()) { setSearchResults([]); return; }
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`/api/animation/search?q=${encodeURIComponent(searchQ)}&type=${type}`);
        const d = await r.json();
        const hasCjk = (s: string) => /[\u3000-\u9fff\uac00-\ud7af\uf900-\ufaff]/u.test(s);
        const filtered = (d.results || []).filter((item: TmdbItem) => {
          const orig = item.original_title || item.original_name || "";
          const disp = item.title || item.name || "";
          return !hasCjk(orig) || !hasCjk(disp);
        });
        setSearchResults(filtered.slice(0, 8));
      } catch { setSearchResults([]); }
    }, 350);
  }, [searchQ, type]);

  const yearLabel = (item: TmdbItem) => {
    const d = item.release_date || item.first_air_date || "";
    return d.slice(0, 4);
  };

  const displayTitle = (item: TmdbItem) =>
    item.title || item.name || item.original_title || item.original_name || "—";

  const activeFilterCount = (genre !== 0 ? 1 : 0) + (sort !== "popularity.desc" ? 1 : 0) + (year ? 1 : 0);

  const dismissNotice = () => {
    setNoticeDismissed(true);
    localStorage.setItem("animation-notice-dismissed", "1");
  };

  return (
    <div className="min-h-screen bg-[var(--bg-base)] pb-28" dir="rtl">

      {/* ── Header ── */}
      <div className="sticky top-0 z-30 bg-[var(--bg-base)]/95 backdrop-blur-2xl border-b border-white/[0.06]">
        <div className="px-4 pt-12 pb-3">

          {/* Title row */}
          <div className="flex items-center justify-between mb-4">
            <div>
              <h1 className="text-[22px] font-black text-white font-['Cairo'] leading-none">رسوم متحركة</h1>
              <p className="text-[11px] text-white/30 font-['Cairo'] mt-0.5">أفلام ومسلسلات أنيميشن عالمية</p>
            </div>
            <div className="flex items-center gap-2">
              <button
                onClick={() => setShowFilters(o => !o)}
                className="relative w-9 h-9 rounded-2xl flex items-center justify-center active:scale-90 transition-transform"
                style={{ background: showFilters ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.06)", border: `1px solid ${showFilters ? "rgba(139,92,246,0.4)" : "rgba(255,255,255,0.10)"}` }}
              >
                <SlidersHorizontal className="w-4 h-4" style={{ color: showFilters ? "#c4b5fd" : "rgba(255,255,255,0.55)" }} />
                {activeFilterCount > 0 && (
                  <span className="absolute -top-1 -left-1 w-4 h-4 rounded-full text-[8px] font-black flex items-center justify-center text-white"
                    style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                    {activeFilterCount}
                  </span>
                )}
              </button>
              <button
                onClick={() => { setSearchOpen(o => !o); setTimeout(() => searchRef.current?.focus(), 100); }}
                className="w-9 h-9 rounded-2xl flex items-center justify-center active:scale-90 transition-transform"
                style={{ background: searchOpen ? "rgba(139,92,246,0.22)" : "rgba(255,255,255,0.06)", border: `1px solid ${searchOpen ? "rgba(139,92,246,0.4)" : "rgba(255,255,255,0.10)"}` }}
              >
                <Search className="w-4 h-4" style={{ color: searchOpen ? "#c4b5fd" : "rgba(255,255,255,0.55)" }} />
              </button>
            </div>
          </div>

          {/* Type tabs */}
          <div className="flex gap-2 mb-3">
            {(["movie", "tv"] as MediaType[]).map(t => (
              <button key={t} onClick={() => { setType(t); setGenre(0); setSort("popularity.desc"); }}
                className="flex items-center gap-1.5 px-4 py-2 rounded-2xl text-xs font-black font-['Cairo'] transition-all duration-200"
                style={type === t
                  ? { background: "linear-gradient(135deg,#8B5CF6,#6D28D9)", color: "#fff", boxShadow: "0 4px 16px rgba(109,40,217,0.35)" }
                  : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                {t === "movie" ? <Film className="w-3.5 h-3.5" /> : <Tv className="w-3.5 h-3.5" />}
                {t === "movie" ? "أفلام" : "مسلسلات"}
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
                    placeholder={type === "movie" ? "ابحث عن فيلم أنيميشن…" : "ابحث عن مسلسل أنيميشن…"}
                    value={searchQ} onChange={e => setSearchQ(e.target.value)}
                    className="w-full py-2.5 pr-9 pl-10 text-sm text-white placeholder-white/25 font-['Cairo'] outline-none"
                    style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(139,92,246,0.25)", borderRadius: 14 }} />
                  {searchQ && (
                    <button onClick={() => setSearchQ("")}
                      className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 rounded-full flex items-center justify-center"
                      style={{ background: "rgba(255,255,255,0.12)" }}>
                      <X className="w-3 h-3 text-white/60" />
                    </button>
                  )}
                </div>
                <AnimatePresence>
                  {searchResults.length > 0 && (
                    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
                      className="mt-2 overflow-hidden"
                      style={{ background: "rgba(15,12,30,0.95)", border: "1px solid rgba(255,255,255,0.08)", borderRadius: 16, backdropFilter: "blur(20px)" }}>
                      {searchResults.map(item => (
                        <button key={item.id}
                          onClick={() => { navigate(`/animation/${type}/${item.id}`); setSearchOpen(false); setSearchQ(""); }}
                          className="w-full flex items-center gap-3 px-4 py-2.5 border-b border-white/5 last:border-0 active:bg-white/5">
                          {item.poster_path
                            ? <img src={`${IMG}${item.poster_path}`} alt="" className="w-8 h-11 rounded-lg object-cover" />
                            : <div className="w-8 h-11 rounded-lg bg-white/8 flex items-center justify-center"><Film className="w-3.5 h-3.5 text-white/30" /></div>
                          }
                          <div className="text-right flex-1 min-w-0">
                            <p className="text-sm font-black text-white line-clamp-1 font-['Cairo']">{displayTitle(item)}</p>
                            <p className="text-[10px] text-white/35 font-['Cairo']">{yearLabel(item)}</p>
                          </div>
                        </button>
                      ))}
                    </motion.div>
                  )}
                </AnimatePresence>
              </motion.div>
            )}
          </AnimatePresence>

          {/* Filter panel */}
          <AnimatePresence>
            {showFilters && (
              <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: "auto" }}
                exit={{ opacity: 0, height: 0 }} className="overflow-hidden">
                <div className="rounded-2xl mb-3 p-3 space-y-3"
                  style={{ background: "rgba(139,92,246,0.07)", border: "1px solid rgba(139,92,246,0.18)" }}>

                  {/* Sort */}
                  <div>
                    <p className="text-[9px] font-black text-white/30 font-['Cairo'] tracking-widest mb-1.5 px-0.5">ترتيب حسب</p>
                    <div className="flex flex-wrap gap-1.5">
                      {sortOptions.map(opt => {
                        const Icon = opt.icon;
                        const active = sort === opt.value;
                        return (
                          <button key={opt.value} onClick={() => setSort(opt.value)}
                            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] transition-all"
                            style={active
                              ? { background: "linear-gradient(135deg,#8B5CF6,#6D28D9)", color: "#fff", boxShadow: "0 3px 12px rgba(109,40,217,0.35)" }
                              : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                            <Icon className="w-3 h-3" />
                            {opt.label}
                          </button>
                        );
                      })}
                    </div>
                  </div>

                  {/* Year */}
                  <div>
                    <p className="text-[9px] font-black text-white/30 font-['Cairo'] tracking-widest mb-1.5 px-0.5">السنة</p>
                    <div className="flex gap-1.5 overflow-x-auto pb-0.5" style={{ scrollbarWidth: "none" }}>
                      {YEARS.map(y => {
                        const val = y === "الكل" ? "" : y;
                        const active = year === val;
                        return (
                          <button key={y} onClick={() => setYear(val)}
                            className="shrink-0 px-3 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] transition-all"
                            style={active
                              ? { background: "linear-gradient(135deg,#8B5CF6,#6D28D9)", color: "#fff" }
                              : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                            {y}
                          </button>
                        );
                      })}
                    </div>
                  </div>

                  {/* Genre */}
                  <div>
                    <p className="text-[9px] font-black text-white/30 font-['Cairo'] tracking-widest mb-1.5 px-0.5">النوع</p>
                    <div className="flex flex-wrap gap-1.5">
                      {genres.map(g => {
                        const active = genre === g.id;
                        return (
                          <button key={g.id} onClick={() => setGenre(g.id)}
                            className="px-3 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] transition-all"
                            style={active
                              ? { background: "linear-gradient(135deg,#8B5CF6,#6D28D9)", color: "#fff" }
                              : { background: "rgba(255,255,255,0.06)", color: "rgba(255,255,255,0.40)", border: "1px solid rgba(255,255,255,0.08)" }}>
                            {g.ar}
                          </button>
                        );
                      })}
                    </div>
                  </div>

                  {/* Reset */}
                  {activeFilterCount > 0 && (
                    <button onClick={() => { setGenre(0); setSort("popularity.desc"); setYear(""); }}
                      className="flex items-center gap-1.5 text-[10px] font-black font-['Cairo'] px-3 py-1.5 rounded-xl"
                      style={{ color: "rgba(252,165,165,0.8)", background: "rgba(239,68,68,0.08)", border: "1px solid rgba(239,68,68,0.16)" }}>
                      <X className="w-3 h-3" /> مسح الفلاتر ({activeFilterCount})
                    </button>
                  )}
                </div>
              </motion.div>
            )}
          </AnimatePresence>

          {/* Active filters summary bar (when panel is closed) */}
          {!showFilters && activeFilterCount > 0 && (
            <div className="flex gap-1.5 overflow-x-auto pb-0.5 mb-1" style={{ scrollbarWidth: "none" }}>
              {sort !== "popularity.desc" && (
                <span className="shrink-0 flex items-center gap-1 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
                  style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "#c4b5fd" }}>
                  {sortOptions.find(o => o.value === sort)?.label}
                  <button onClick={() => setSort("popularity.desc")}><X className="w-2.5 h-2.5" /></button>
                </span>
              )}
              {year && (
                <span className="shrink-0 flex items-center gap-1 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
                  style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "#c4b5fd" }}>
                  {year}
                  <button onClick={() => setYear("")}><X className="w-2.5 h-2.5" /></button>
                </span>
              )}
              {genre !== 0 && (
                <span className="shrink-0 flex items-center gap-1 px-2.5 py-1 rounded-xl text-[10px] font-black font-['Cairo']"
                  style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "#c4b5fd" }}>
                  {genres.find(g => g.id === genre)?.ar}
                  <button onClick={() => setGenre(0)}><X className="w-2.5 h-2.5" /></button>
                </span>
              )}
            </div>
          )}
        </div>
      </div>

      {/* ── Notice Banner ── */}
      <AnimatePresence>
        {!noticeDismissed && (
          <motion.div
            initial={{ opacity: 0, y: -8 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, height: 0, marginTop: 0, marginBottom: 0, paddingTop: 0, paddingBottom: 0 }}
            transition={{ duration: 0.25 }}
            className="mx-4 mt-4 rounded-2xl px-4 py-3 flex items-start gap-3"
            style={{
              background: "rgba(251,191,36,0.08)",
              border: "1px solid rgba(251,191,36,0.20)",
            }}
          >
            <span className="text-lg shrink-0 mt-0.5">🙏🏽</span>
            <div className="flex-1 min-w-0">
              <p className="text-[12px] font-black text-amber-300/90 font-['Cairo'] leading-snug mb-0.5">
                تنبيه للمستخدمين
              </p>
              <p className="text-[11px] text-amber-200/50 font-['Cairo'] leading-relaxed">
                قد لا تتوفر بعض أعمال الأنيميشن القديمة أو النادرة حالياً بسبب محدودية المصادر. نعمل باستمرار على تحسين التغطية وإضافة المزيد من الأعمال 🥺
              </p>
            </div>
            <button onClick={dismissNotice}
              className="shrink-0 w-6 h-6 rounded-lg flex items-center justify-center mt-0.5 active:scale-90 transition-transform"
              style={{ background: "rgba(251,191,36,0.12)", border: "1px solid rgba(251,191,36,0.16)" }}>
              <X className="w-3 h-3 text-amber-400/60" />
            </button>
          </motion.div>
        )}
      </AnimatePresence>

      {/* ── Grid ── */}
      <div className="px-4 pt-4">
        {items.length === 0 && loading ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <div className="relative w-10 h-10">
              <div className="absolute inset-0 rounded-full border-2 border-violet-500/20" />
              <motion.div className="absolute inset-0 rounded-full border-2 border-transparent border-t-violet-500 border-r-violet-400/40"
                animate={{ rotate: 360 }} transition={{ duration: 0.9, repeat: Infinity, ease: "linear" }} />
            </div>
            <p className="text-white/25 text-xs font-['Cairo']">جارٍ التحميل…</p>
          </div>
        ) : items.length === 0 && !loading ? (
          <div className="flex flex-col items-center justify-center py-24 gap-3">
            <div className="w-16 h-16 rounded-3xl flex items-center justify-center"
              style={{ background: "rgba(139,92,246,0.08)", border: "1px solid rgba(139,92,246,0.18)" }}>
              <Film className="w-7 h-7 text-violet-400/50" />
            </div>
            <p className="text-white/40 text-sm font-black font-['Cairo']">لا توجد نتائج</p>
            <button onClick={() => { setGenre(0); setSort("popularity.desc"); setYear(""); }}
              className="text-[11px] font-black font-['Cairo'] px-4 py-2 rounded-xl"
              style={{ background: "rgba(139,92,246,0.15)", border: "1px solid rgba(139,92,246,0.28)", color: "#c4b5fd" }}>
              مسح الفلاتر
            </button>
          </div>
        ) : (
          <>
            <div className="grid grid-cols-3 gap-3">
              {items.map((item, i) => (
                <motion.div key={`${item.id}-${i}`}
                  initial={{ opacity: 0, scale: 0.93 }}
                  animate={{ opacity: 1, scale: 1 }}
                  transition={{ delay: Math.min(i % 12, 11) * 0.03, duration: 0.25 }}>
                  <Link href={`/animation/${type}/${item.id}`} className="block">
                    <div className="relative rounded-2xl overflow-hidden bg-white/5 border border-white/6 aspect-[2/3]"
                      style={{ boxShadow: "0 4px 20px rgba(0,0,0,0.4)" }}>
                      {item.poster_path ? (
                        <img src={`${IMG}${item.poster_path}`} alt={displayTitle(item)}
                          loading="lazy" className="w-full h-full object-cover" />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center bg-violet-900/10">
                          <Film className="w-8 h-8 text-white/15" />
                        </div>
                      )}
                      <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/5 to-transparent" />
                      {(item.vote_average || 0) > 0 && (
                        <div className="absolute top-1.5 left-1.5 flex items-center gap-0.5 rounded-lg px-1.5 py-0.5"
                          style={{ background: "rgba(0,0,0,0.72)", backdropFilter: "blur(8px)", border: "1px solid rgba(251,191,36,0.18)" }}>
                          <Star className="w-2.5 h-2.5 text-amber-400 fill-amber-400" />
                          <span className="text-[9px] font-black text-white">{item.vote_average!.toFixed(1)}</span>
                        </div>
                      )}
                      <div className="absolute bottom-0 inset-x-0 px-2 pb-2">
                        {yearLabel(item) && (
                          <p className="text-[8px] text-white/35 font-['Cairo'] mb-0.5">{yearLabel(item)}</p>
                        )}
                      </div>
                    </div>
                    <p className="mt-1.5 text-[10.5px] font-black text-white/80 line-clamp-2 leading-snug font-['Cairo'] text-right">
                      {displayTitle(item)}
                    </p>
                  </Link>
                </motion.div>
              ))}
            </div>

            {hasMore && (
              <div className="mt-8 flex justify-center">
                <button onClick={() => load(type, genre, sort, year, page + 1)} disabled={loading}
                  className="flex items-center gap-2 px-6 py-3 rounded-2xl text-sm font-black text-white/60 font-['Cairo'] active:scale-95 transition-transform disabled:opacity-50"
                  style={{ background: "rgba(255,255,255,0.06)", border: "1px solid rgba(255,255,255,0.10)" }}>
                  {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <ChevronDown className="w-4 h-4" />}
                  تحميل المزيد
                </button>
              </div>
            )}
            {!hasMore && items.length > 0 && (
              <p className="text-center text-white/15 text-xs font-['Cairo'] mt-8 pb-4">لا مزيد من النتائج</p>
            )}
          </>
        )}
      </div>
    </div>
  );
}
