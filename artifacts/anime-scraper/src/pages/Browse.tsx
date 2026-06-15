import { useState, useEffect, useCallback, useRef } from "react";
import { Link } from "wouter";
import { Search, Star, Loader2, ChevronDown } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

/* AniList cover IDs that reliably have banner images */
const GENRES: { ar: string; en: string; color: string; animeId: number }[] = [
  { ar: "أكشن",        en: "Action",        color: "#EF4444", animeId: 21459  },
  { ar: "مغامرة",      en: "Adventure",     color: "#F97316", animeId: 113415 },
  { ar: "كوميدي",      en: "Comedy",        color: "#EAB308", animeId: 21202  },
  { ar: "دراما",       en: "Drama",         color: "#8B5CF6", animeId: 9253   },
  { ar: "فانتازيا",    en: "Fantasy",       color: "#06B6D4", animeId: 101922 },
  { ar: "خيال علمي",   en: "Sci-Fi",        color: "#3B82F6", animeId: 5114   },
  { ar: "رياضة",       en: "Sports",        color: "#10B981", animeId: 124194 },
  { ar: "رومانسي",     en: "Romance",       color: "#EC4899", animeId: 101921 },
  { ar: "رعب",         en: "Horror",        color: "#6B7280", animeId: 98478  },
  { ar: "نفسي",        en: "Psychological", color: "#7C3AED", animeId: 31646  },
  { ar: "إيسيكاي",     en: "Isekai",        color: "#059669", animeId: 108632 },
  { ar: "حياة يومية",  en: "Slice of Life", color: "#F59E0B", animeId: 9756   },
  { ar: "غموض",        en: "Mystery",       color: "#64748B", animeId: 100388 },
  { ar: "ميكا",        en: "Mecha",         color: "#94A3B8", animeId: 30     },
  { ar: "موسيقى",      en: "Music",         color: "#A78BFA", animeId: 100916 },
  { ar: "إثارة",       en: "Thriller",      color: "#DC2626", animeId: 30002  },
];

/* Stable AniList cover URLs — large format, always available */
function coverUrl(id: number) {
  return `https://img.anili.st/media/${id}`;
}

const FORMAT_TABS = [
  { id: "",      ar: "الكل" },
  { id: "TV",    ar: "مسلسلات" },
  { id: "MOVIE", ar: "أفلام" },
  { id: "OVA",   ar: "OVA" },
];

const SEASONS_BROWSE = [
  { id: "",       label: "كل المواسم", emoji: "🌟" },
  { id: "WINTER", label: "شتاء",   emoji: "❄️" },
  { id: "SPRING", label: "ربيع",   emoji: "🌸" },
  { id: "SUMMER", label: "صيف",    emoji: "☀️" },
  { id: "FALL",   label: "خريف",   emoji: "🍂" },
];

const CUR_YEAR = new Date().getFullYear();
const YEARS = Array.from({ length: CUR_YEAR - 1989 }, (_, i) => CUR_YEAR - i);

function buildQuery(genre: string, format: string, year: number | "", page: number, season = "") {
  const gf = genre  ? `, genre: "${genre}"` : "";
  const ff = format ? `, format: ${format}` : `, format_in: [TV, MOVIE, OVA, ONA]`;
  const yf = year   ? `, seasonYear: ${year}` : "";
  const sf = season && year ? `, season: ${season}` : "";
  return `query {
  Page(page: ${page}, perPage: 24) {
    pageInfo { hasNextPage }
    media(type: ANIME, sort: POPULARITY_DESC, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Ecchi", "Hentai"]${gf}${ff}${yf}${sf}) {
      id title { romaji } coverImage { large } averageScore episodes format status
    }
  }
}`;
}

function AnimeCard({ anime }: { anime: any }) {
  return (
    <Link href={`/anime/${anime.id}`}>
      <motion.div whileTap={{ scale: 0.93 }} className="cursor-pointer group">
        <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
          <img
            src={anime.coverImage?.large} alt={anime.title?.romaji}
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
            loading="lazy"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-transparent to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-2 right-2 bg-black/75 backdrop-blur-sm text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
              <Star className="w-2 h-2 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
          {anime.format === "MOVIE" && (
            <div className="absolute top-2 left-2 bg-primary/80 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">فيلم</div>
          )}
          {anime.status === "FINISHED" && (
            <div className="absolute bottom-1.5 right-1.5 bg-red-500/80 text-white text-[7px] px-1.5 py-0.5 rounded-md font-black">مكتملة</div>
          )}
          {anime.status === "RELEASING" && (
            <div className="absolute bottom-1.5 right-1.5 bg-emerald-500/80 text-white text-[7px] px-1.5 py-0.5 rounded-md font-black">يُبث</div>
          )}
        </div>
        <p className="mt-1.5 text-[10px] text-white/70 truncate font-bold group-hover:text-primary transition-colors">{anime.title?.romaji}</p>
      </motion.div>
    </Link>
  );
}

export default function Browse() {
  const _sp = new URLSearchParams(window.location.search);
  const [selectedGenre, setSelectedGenre] = useState(_sp.get("genre") || "");
  const [selectedFormat, setSelectedFormat] = useState(_sp.get("format") || "");
  const [selectedYear, setSelectedYear] = useState<number | "">(_sp.get("year") ? Number(_sp.get("year")) : "");
  const [selectedSeason, setSelectedSeason] = useState(_sp.get("season") || "");
  const [showGenreGrid, setShowGenreGrid] = useState(!_sp.get("genre") && !_sp.get("format") && !_sp.get("year"));
  const [animeList, setAnimeList] = useState<any[]>([]);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [page, setPage] = useState(1);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchResults, setSearchResults] = useState<any[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const fetch$ = async (query: string) => {
    const r = await fetch("/api/anime/anilist", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query }),
    });
    return (await r.json()).data?.Page;
  };

  const loadAnime = useCallback(async (genre: string, format: string, year: number | "", p: number, append: boolean, season = "") => {
    if (!append) setLoading(true); else setLoadingMore(true);
    try {
      const data = await fetch$(buildQuery(genre, format, year, p, season));
      const list = data?.media || [];
      setAnimeList(prev => append ? [...prev, ...list] : list);
      setHasMore(data?.pageInfo?.hasNextPage ?? false);
    } finally { setLoading(false); setLoadingMore(false); }
  }, []);

  useEffect(() => {
    setPage(1); setAnimeList([]);
    loadAnime(selectedGenre, selectedFormat, selectedYear, 1, false, selectedSeason);
    setShowGenreGrid(!selectedGenre && !selectedFormat && !selectedYear && !selectedSeason);
  }, [selectedGenre, selectedFormat, selectedYear, selectedSeason]);

  useEffect(() => {
    if (!searchQ.trim()) { setSearchResults([]); return; }
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      setSearchLoading(true);
      const q = `query { Page(perPage: 24) { media(type: ANIME, search: "${searchQ.replace(/"/g, "")}", sort: POPULARITY_DESC) { id title { romaji } coverImage { large } averageScore format status } } }`;
      const data = await fetch$(q);
      setSearchResults(data?.media || []);
      setSearchLoading(false);
    }, 450);
  }, [searchQ]);

  const loadMore = () => {
    const next = page + 1;
    setPage(next);
    loadAnime(selectedGenre, selectedFormat, selectedYear, next, true, selectedSeason);
  };

  const displayList = searchQ.trim() ? searchResults : animeList;
  const currentGenreLabel = GENRES.find(g => g.en === selectedGenre)?.ar || "";
  const seasonLabel: Record<string, string> = { SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف", WINTER: "شتاء" };
  const hasFilter = !!(selectedGenre || selectedFormat || selectedYear || selectedSeason);

  return (
    <main className="bg-[#09090B] min-h-screen text-white pb-28" dir="rtl">

      {/* Sticky header */}
      <div className="sticky top-0 z-20 bg-[#09090B]/95 backdrop-blur-xl border-b border-white/5 px-4 pt-4 pb-3">
        <div className="flex items-center gap-2 mb-3">
          <h1 className="text-xl font-black font-['Cairo'] flex-1">
            {selectedGenre ? currentGenreLabel
              : selectedSeason && selectedYear ? `موسم ${seasonLabel[selectedSeason] || selectedSeason} ${selectedYear}`
              : selectedYear ? `أنمي ${selectedYear}`
              : "مكتبة الأنمي"}
          </h1>
          {hasFilter && (
            <button onClick={() => { setSelectedGenre(""); setSelectedFormat(""); setSelectedYear(""); setSelectedSeason(""); setShowGenreGrid(true); }}
              className="text-[10px] text-white/40 bg-white/6 border border-white/8 px-2.5 py-1.5 rounded-lg font-['Cairo'] active:scale-95">
              × مسح
            </button>
          )}
        </div>

        {/* Search bar */}
        <div className="relative mb-3">
          <Search className="absolute right-3 top-1/2 -translate-y-1/2 w-4 h-4 text-white/30" />
          <input
            value={searchQ} onChange={e => setSearchQ(e.target.value)}
            placeholder="ابحث عن أنمي..."
            className="w-full bg-[#18181B] border border-white/8 rounded-xl px-4 py-2.5 pr-9 text-sm text-white placeholder:text-white/25 font-['Cairo'] focus:outline-none focus:border-primary/40"
          />
          {searchLoading && <Loader2 className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-primary animate-spin" />}
        </div>

        {/* Format tabs */}
        {!searchQ.trim() && (
          <div className="flex gap-1.5 overflow-x-auto pb-1.5" style={{ scrollbarWidth: "none" }}>
            {FORMAT_TABS.map(f => (
              <button key={f.id} onClick={() => setSelectedFormat(f.id)}
                className={`shrink-0 py-1.5 px-3 rounded-xl text-[11px] font-black font-['Cairo'] transition-all
                  ${selectedFormat === f.id ? "bg-primary text-white shadow-lg shadow-primary/20" : "bg-[#18181B] text-white/40 border border-white/6"}`}>
                {f.ar}
              </button>
            ))}
          </div>
        )}

        {/* Season filter */}
        {!searchQ.trim() && (
          <div className="flex gap-1.5 overflow-x-auto pt-1.5 pb-0.5" style={{ scrollbarWidth: "none" }}>
            {SEASONS_BROWSE.map(s => (
              <button key={s.id} onClick={() => setSelectedSeason(s.id)}
                className={`shrink-0 flex items-center gap-1 py-1.5 px-3 rounded-xl text-[11px] font-black font-['Cairo'] transition-all
                  ${selectedSeason === s.id ? "bg-primary text-white shadow-lg shadow-primary/20" : "bg-[#18181B] text-white/35 border border-white/6"}`}>
                <span className="text-[12px]">{s.emoji}</span>
                {s.label}
              </button>
            ))}
          </div>
        )}

        {/* Year filter */}
        {!searchQ.trim() && (
          <div className="flex gap-1.5 overflow-x-auto pt-0.5" style={{ scrollbarWidth: "none" }}>
            <button
              onClick={() => setSelectedYear("")}
              className={`shrink-0 py-1.5 px-3 rounded-xl text-[11px] font-black font-['Cairo'] transition-all
                ${selectedYear === "" ? "bg-white/12 text-white border border-white/20" : "bg-[#18181B] text-white/30 border border-white/6"}`}>
              كل الأعوام
            </button>
            {YEARS.map(y => (
              <button key={y} onClick={() => setSelectedYear(y)}
                className={`shrink-0 py-1.5 px-3 rounded-xl text-[11px] font-black font-mono transition-all
                  ${selectedYear === y ? "bg-primary text-white shadow-lg shadow-primary/20" : "bg-[#18181B] text-white/30 border border-white/6"}`}>
                {y}
              </button>
            ))}
          </div>
        )}
      </div>

      {/* Genre grid — shown when no genre/format selected */}
      <AnimatePresence>
        {showGenreGrid && !searchQ.trim() && (
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="px-4 pt-5">
            <p className="text-[10px] font-black text-white/30 mb-3 font-['Cairo'] tracking-[0.1em] uppercase">التصنيفات</p>
            <div className="grid grid-cols-2 gap-2.5 mb-6">
              {GENRES.map((g, i) => (
                <motion.button
                  key={g.en}
                  initial={{ opacity: 0, scale: 0.9 }}
                  animate={{ opacity: 1, scale: 1 }}
                  transition={{ delay: i * 0.03 }}
                  whileTap={{ scale: 0.95 }}
                  onClick={() => { setSelectedGenre(g.en); setShowGenreGrid(false); }}
                  className="relative h-[80px] rounded-2xl overflow-hidden border border-white/8 active:border-white/20"
                >
                  {/* Cover image */}
                  <img
                    src={coverUrl(g.animeId)}
                    alt=""
                    className="absolute inset-0 w-full h-full object-cover"
                    loading="lazy"
                    onError={(e) => {
                      (e.target as HTMLImageElement).style.display = "none";
                    }}
                  />
                  {/* Color gradient overlay */}
                  <div
                    className="absolute inset-0"
                    style={{
                      background: `linear-gradient(135deg, ${g.color}CC 0%, ${g.color}88 40%, ${g.color}44 100%)`,
                    }}
                  />
                  {/* Frosted glass label */}
                  <div className="absolute inset-0 flex items-center justify-center">
                    <span className="text-white font-black text-[17px] font-['Cairo'] drop-shadow-[0_2px_8px_rgba(0,0,0,0.9)]">
                      {g.ar}
                    </span>
                  </div>
                </motion.button>
              ))}
            </div>
            <div className="h-px bg-white/5 mb-4" />
            <p className="text-[10px] font-black text-white/30 mb-3 font-['Cairo'] tracking-[0.1em] uppercase">الأكثر شعبية</p>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Anime grid */}
      <div className="px-4 pt-2">
        {loading ? (
          <div className="grid grid-cols-3 gap-3">
            {Array.from({ length: 12 }).map((_, i) => (
              <div key={i} className="aspect-[2/3] rounded-2xl bg-white/5 animate-pulse" style={{ animationDelay: `${i * 50}ms` }} />
            ))}
          </div>
        ) : (
          <AnimatePresence mode="wait">
            <motion.div key={`${selectedGenre}-${selectedFormat}-${searchQ}`}
              initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              transition={{ duration: 0.2 }} className="grid grid-cols-3 gap-3">
              {displayList.map(a => <AnimeCard key={a.id} anime={a} />)}
            </motion.div>
          </AnimatePresence>
        )}
        {hasMore && !searchQ.trim() && !loading && (
          <button onClick={loadMore} disabled={loadingMore}
            className="w-full mt-5 py-3.5 bg-[#18181B] border border-white/8 rounded-2xl text-sm font-black flex items-center justify-center gap-2 text-white/50 font-['Cairo'] active:scale-98 disabled:opacity-40">
            {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <><ChevronDown className="w-4 h-4" /> تحميل المزيد</>}
          </button>
        )}
      </div>
    </main>
  );
}
