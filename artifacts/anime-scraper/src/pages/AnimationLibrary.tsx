import { useState, useEffect, useCallback, useRef } from "react";
import { Link, useLocation } from "wouter";
import { Search, Film, Tv, Star, ChevronDown, Loader2 } from "lucide-react";
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

interface TmdbItem {
  id: number;
  title?: string;
  name?: string;
  poster_path?: string;
  vote_average?: number;
  release_date?: string;
  first_air_date?: string;
  genre_ids?: number[];
  overview?: string;
}

export default function AnimationLibrary() {
  const [, navigate]    = useLocation();
  const [type, setType] = useState<MediaType>("movie");
  const [genre, setGenre]  = useState<number>(0);
  const [items, setItems]  = useState<TmdbItem[]>([]);
  const [page, setPage]    = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchResults, setSearchResults] = useState<TmdbItem[]>([]);
  const searchRef  = useRef<HTMLInputElement>(null);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const genres = type === "movie" ? MOVIE_GENRES : TV_GENRES;

  const load = useCallback(async (t: MediaType, g: number, p: number, reset = false) => {
    if (loading) return;
    setLoading(true);
    try {
      const gParam = g === 0 ? "16" : `${g}`;
      const r = await fetch(`/api/animation/browse?type=${t}&genre=${gParam}&page=${p}`);
      const data = await r.json();
      const results: TmdbItem[] = data.results || [];
      setItems(prev => reset ? results : [...prev, ...results]);
      setHasMore(p < (data.total_pages || 1));
      setPage(p);
    } catch { /* skip */ }
    setLoading(false);
  }, [loading]);

  useEffect(() => {
    setItems([]); setPage(1); setHasMore(true);
    load(type, genre, 1, true);
  }, [type, genre]);

  useEffect(() => {
    if (!searchQ.trim()) { setSearchResults([]); return; }
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`/api/animation/search?q=${encodeURIComponent(searchQ)}&type=${type}`);
        const d = await r.json();
        setSearchResults((d.results || []).slice(0, 8));
      } catch { setSearchResults([]); }
    }, 350);
  }, [searchQ, type]);

  const year = (item: TmdbItem) => {
    const d = item.release_date || item.first_air_date || "";
    return d.slice(0, 4);
  };

  const displayTitle = (item: TmdbItem) => item.title || item.name || "—";

  return (
    <div className="min-h-screen bg-[var(--bg-base)] pb-28" dir="rtl">
      {/* ── Header ── */}
      <div className="sticky top-0 z-30 bg-[var(--bg-base)]/95 backdrop-blur-2xl border-b border-white/[0.06]">
        <div className="px-4 pt-12 pb-3">
          <div className="flex items-center justify-between mb-3">
            <div>
              <h1 className="text-[20px] font-black text-white font-['Cairo']">رسوم متحركة</h1>
              <p className="text-[11px] text-white/35 font-['Cairo']">أفلام ومسلسلات أنيميشن</p>
            </div>
            <button
              onClick={() => { setSearchOpen(o => !o); setTimeout(() => searchRef.current?.focus(), 100); }}
              className="w-9 h-9 rounded-2xl bg-white/6 border border-white/10 flex items-center justify-center active:scale-90 transition-transform"
            >
              <Search className="w-4 h-4 text-white/60" />
            </button>
          </div>

          {/* Search bar */}
          <AnimatePresence>
            {searchOpen && (
              <motion.div
                initial={{ opacity: 0, height: 0 }}
                animate={{ opacity: 1, height: "auto" }}
                exit={{ opacity: 0, height: 0 }}
                className="overflow-hidden mb-3"
              >
                <div className="relative">
                  <Search className="absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30" />
                  <input
                    ref={searchRef}
                    type="text"
                    placeholder={type === "movie" ? "ابحث عن فيلم أنيميشن…" : "ابحث عن مسلسل أنيميشن…"}
                    value={searchQ}
                    onChange={e => setSearchQ(e.target.value)}
                    className="w-full bg-white/6 border border-white/10 rounded-2xl py-2.5 pr-9 pl-4 text-sm text-white placeholder-white/25 font-['Cairo'] outline-none focus:border-primary/40"
                  />
                </div>
                <AnimatePresence>
                  {searchResults.length > 0 && (
                    <motion.div
                      initial={{ opacity: 0 }}
                      animate={{ opacity: 1 }}
                      exit={{ opacity: 0 }}
                      className="mt-2 bg-[var(--bg-card)] border border-white/8 rounded-2xl overflow-hidden"
                    >
                      {searchResults.map(item => (
                        <button
                          key={item.id}
                          onClick={() => {
                            navigate(`/animation/${type}/${item.id}`);
                            setSearchOpen(false); setSearchQ("");
                          }}
                          className="w-full flex items-center gap-3 px-4 py-2.5 border-b border-white/5 last:border-0 active:bg-white/5"
                        >
                          {item.poster_path
                            ? <img src={`${IMG}${item.poster_path}`} alt="" className="w-8 h-11 rounded-lg object-cover" />
                            : <div className="w-8 h-11 rounded-lg bg-white/8 flex items-center justify-center"><Film className="w-3.5 h-3.5 text-white/30" /></div>
                          }
                          <div className="text-right flex-1 min-w-0">
                            <p className="text-sm font-black text-white line-clamp-1 font-['Cairo']">{displayTitle(item)}</p>
                            <p className="text-[10px] text-white/35 font-['Cairo']">{year(item)}</p>
                          </div>
                        </button>
                      ))}
                    </motion.div>
                  )}
                </AnimatePresence>
              </motion.div>
            )}
          </AnimatePresence>

          {/* Type tabs */}
          <div className="flex gap-2 mb-3">
            {(["movie", "tv"] as MediaType[]).map(t => (
              <button
                key={t}
                onClick={() => { setType(t); setGenre(0); }}
                className={`flex items-center gap-1.5 px-3.5 py-1.5 rounded-2xl text-xs font-black font-['Cairo'] transition-all duration-200 ${
                  type === t
                    ? "bg-primary text-white shadow-lg shadow-primary/25"
                    : "bg-white/6 text-white/40 border border-white/8"
                }`}
              >
                {t === "movie" ? <Film className="w-3.5 h-3.5" /> : <Tv className="w-3.5 h-3.5" />}
                {t === "movie" ? "أفلام" : "مسلسلات"}
              </button>
            ))}
          </div>

          {/* Genre filter */}
          <div className="flex gap-2 overflow-x-auto pb-1 scrollbar-hide">
            {genres.map(g => (
              <button
                key={g.id}
                onClick={() => setGenre(g.id)}
                className={`flex-shrink-0 px-3 py-1.5 rounded-2xl text-[11px] font-black font-['Cairo'] transition-all duration-200 ${
                  genre === g.id
                    ? "bg-primary/20 text-primary border border-primary/30"
                    : "bg-white/5 text-white/35 border border-white/8"
                }`}
              >
                {g.ar}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* ── Grid ── */}
      <div className="px-4 pt-5">
        {items.length === 0 && loading ? (
          <div className="flex items-center justify-center py-24">
            <Loader2 className="w-7 h-7 animate-spin text-primary" />
          </div>
        ) : (
          <>
            <div className="grid grid-cols-3 gap-3">
              <AnimatePresence>
                {items.map((item, i) => (
                  <motion.div
                    key={`${item.id}-${i}`}
                    initial={{ opacity: 0, scale: 0.95 }}
                    animate={{ opacity: 1, scale: 1 }}
                    transition={{ delay: Math.min(i % 12, 11) * 0.03 }}
                  >
                    <Link href={`/animation/${type}/${item.id}`} className="block">
                      <div className="relative rounded-2xl overflow-hidden bg-white/5 border border-white/6 aspect-[2/3]">
                        {item.poster_path ? (
                          <img
                            src={`${IMG}${item.poster_path}`}
                            alt={displayTitle(item)}
                            loading="lazy"
                            className="w-full h-full object-cover"
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center">
                            <Film className="w-8 h-8 text-white/15" />
                          </div>
                        )}
                        {/* Score badge */}
                        {(item.vote_average || 0) > 0 && (
                          <div className="absolute top-1.5 left-1.5 flex items-center gap-0.5 bg-black/70 backdrop-blur-sm rounded-lg px-1.5 py-0.5">
                            <Star className="w-2.5 h-2.5 text-amber-400 fill-amber-400" />
                            <span className="text-[9px] font-black text-white">{item.vote_average!.toFixed(1)}</span>
                          </div>
                        )}
                        {/* Year */}
                        {year(item) && (
                          <div className="absolute bottom-0 inset-x-0 bg-gradient-to-t from-black/90 to-transparent px-2 py-2">
                            <p className="text-[9px] text-white/50 font-['Cairo']">{year(item)}</p>
                          </div>
                        )}
                      </div>
                      <p className="mt-1.5 text-[10.5px] font-black text-white/80 line-clamp-2 leading-snug font-['Cairo'] text-right">
                        {displayTitle(item)}
                      </p>
                    </Link>
                  </motion.div>
                ))}
              </AnimatePresence>
            </div>

            {/* Load more */}
            {hasMore && (
              <div className="mt-8 flex justify-center">
                <button
                  onClick={() => load(type, genre, page + 1)}
                  disabled={loading}
                  className="flex items-center gap-2 px-6 py-3 rounded-2xl bg-white/8 border border-white/10 text-sm font-black text-white/60 font-['Cairo'] active:scale-95 transition-transform disabled:opacity-50"
                >
                  {loading ? <Loader2 className="w-4 h-4 animate-spin" /> : <ChevronDown className="w-4 h-4" />}
                  تحميل المزيد
                </button>
              </div>
            )}

            {!hasMore && items.length > 0 && (
              <p className="text-center text-white/20 text-xs font-['Cairo'] mt-8">لا مزيد من النتائج</p>
            )}
          </>
        )}
      </div>
    </div>
  );
}
