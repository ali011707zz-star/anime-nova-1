import { useState, useEffect, useRef } from 'react';
import { Search as SearchIcon, X, Loader2, SlidersHorizontal, ChevronDown } from 'lucide-react';
import { Link } from 'wouter';
import { motion, AnimatePresence } from 'framer-motion';
import { Star } from 'lucide-react';

/* ── Types ── */
interface AnimeResult {
  id: number;
  title: { romaji: string; english?: string; native?: string };
  coverImage: { large: string };
  averageScore?: number;
  episodes?: number;
  format?: string;
  status?: string;
  startDate?: { year?: number };
  genres?: string[];
}

/* ── Filters ── */
const FORMAT_OPTIONS = [
  { label: "الكل",    value: "" },
  { label: "مسلسل",  value: "TV" },
  { label: "فيلم",   value: "MOVIE" },
  { label: "OVA",    value: "OVA" },
  { label: "ONA",    value: "ONA" },
  { label: "خاص",    value: "SPECIAL" },
];
const STATUS_OPTIONS = [
  { label: "الكل",       value: "" },
  { label: "يُبث حالياً", value: "RELEASING" },
  { label: "مكتملة",    value: "FINISHED" },
  { label: "قريباً",    value: "NOT_YET_RELEASED" },
];
const SEASON_OPTIONS = [
  { label: "الكل",  value: "",       emoji: "🌟" },
  { label: "شتاء",  value: "WINTER", emoji: "❄️" },
  { label: "ربيع",  value: "SPRING", emoji: "🌸" },
  { label: "صيف",   value: "SUMMER", emoji: "☀️" },
  { label: "خريف",  value: "FALL",   emoji: "🍂" },
];
const SORT_OPTIONS = [
  { label: "الأشهر",        value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "الأحدث",       value: "START_DATE_DESC" },
  { label: "الأقدم",       value: "START_DATE" },
];
const BLOCKED_GENRES = new Set(["Hentai", "Ecchi"]);

const GENRES = [
  "Action", "Adventure", "Comedy", "Drama", "Fantasy",
  "Horror", "Mystery", "Romance", "Sci-Fi", "Slice of Life",
  "Sports", "Supernatural", "Thriller", "Mecha", "Music",
  "Psychological", "Harem", "School", "Isekai",
];
const GENRES_AR: Record<string, string> = {
  "Action": "أكشن", "Adventure": "مغامرة", "Comedy": "كوميدي", "Drama": "دراما",
  "Fantasy": "خيال", "Horror": "رعب", "Mystery": "غموض", "Romance": "رومانسي",
  "Sci-Fi": "خيال علمي", "Slice of Life": "حياة يومية", "Sports": "رياضة",
  "Supernatural": "خوارق", "Thriller": "إثارة", "Mecha": "ميكا", "Music": "موسيقى",
  "Psychological": "نفسي", "Harem": "حريم",
  "School": "مدرسي", "Isekai": "إيسيكاي",
};

function filterSafe(list: any[]): any[] {
  return list.filter(a => {
    const genres: string[] = a.genres || [];
    return !genres.some(g => BLOCKED_GENRES.has(g));
  });
}
const FORMAT_AR: Record<string, string> = {
  TV: "مسلسل", MOVIE: "فيلم", OVA: "OVA", ONA: "ONA", SPECIAL: "خاص", MUSIC: "موسيقى",
};

/* ── Arabic transliteration ── */
const AR_TO_EN: Record<string, string> = {
  "ناروتو": "Naruto", "هانتر": "Hunter", "ون بيس": "One Piece",
  "ون بيسي": "One Piece", "دراغون بول": "Dragon Ball", "دراجون بول": "Dragon Ball",
  "ديمون سلاير": "Demon Slayer", "كيميتسو": "Kimetsu", "هجوم العمالقة": "Shingeki no Kyojin",
  "بوكو نو هيرو": "Boku no Hero", "بلاتش": "Bleach", "بليتش": "Bleach",
  "فيري تيل": "Fairy Tail", "الكيميائي": "Fullmetal Alchemist",
  "سوورد ارت": "Sword Art Online", "توكيو غول": "Tokyo Ghoul",
  "ريزيرو": "Re:Zero", "تيتان": "Titan", "ابطال": "Hero Academia",
};
function translateQuery(q: string): string {
  const trimmed = q.trim();
  if (AR_TO_EN[trimmed]) return AR_TO_EN[trimmed];
  if (/[\u0600-\u06FF]/.test(trimmed)) {
    for (const [ar, en] of Object.entries(AR_TO_EN)) {
      if (trimmed.includes(ar)) return trimmed.replace(ar, en);
    }
  }
  return trimmed;
}

/* ── GraphQL query builders ── */
function buildQuery(sort: string, format: string, status: string, genre: string, season: string) {
  const sortArr = sort ? `[SEARCH_MATCH, ${sort}]` : "[SEARCH_MATCH, POPULARITY_DESC]";
  const formatFilter = format ? `, format: ${format}` : "";
  const statusFilter = status ? `, status: ${status}` : "";
  const genreFilter  = genre  ? `, genre: "${genre}"` : "";
  const seasonFilter = season ? `, season: ${season}` : "";
  return `
query ($search: String, $page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(search: $search, type: ANIME, sort: ${sortArr}${formatFilter}${statusFilter}${genreFilter}${seasonFilter}, isAdult: false) {
      id title { romaji english native } coverImage { large }
      averageScore episodes format status startDate { year } genres
    }
  }
}`;
}

function buildBrowseQuery(sort: string, format: string, status: string, genre: string, season: string) {
  const formatFilter = format ? `, format: ${format}` : "";
  const statusFilter = status ? `, status: ${status}` : "";
  const genreFilter  = genre  ? `, genre: "${genre}"` : "";
  const seasonFilter = season ? `, season: ${season}` : "";
  return `
query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(type: ANIME, sort: [${sort || "POPULARITY_DESC"}]${formatFilter}${statusFilter}${genreFilter}${seasonFilter}, isAdult: false) {
      id title { romaji english native } coverImage { large }
      averageScore episodes format status startDate { year } genres
    }
  }
}`;
}

/* ── Small anime card ── */
function AnimeCardSmall({ anime }: { anime: AnimeResult }) {
  const fmt    = anime.format ? FORMAT_AR[anime.format] || anime.format : null;
  const isFilm = anime.format === "MOVIE";
  return (
    <Link href={`/anime/${anime.id}`}>
      <motion.div whileTap={{ scale: 0.93 }} className="cursor-pointer">
        <div className="relative w-full aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07] shadow-lg shadow-black/50">
          {anime.coverImage?.large
            ? <img src={anime.coverImage.large} alt="" className="w-full h-full object-cover" loading="lazy" />
            : <div className="w-full h-full bg-violet-900/20 flex items-center justify-center"><div className="w-8 h-8 rounded-full bg-violet-600/20" /></div>
          }
          <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/10 to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
              <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
          {fmt && (
            <div className={`absolute top-2 left-2 text-white text-[7px] px-1.5 py-0.5 rounded-md font-black shadow-md ${isFilm ? "bg-blue-500 shadow-blue-500/40" : "bg-violet-600 shadow-violet-500/30"}`}>
              {fmt}
            </div>
          )}
          <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
            <p className="text-[9.5px] text-white/90 font-bold line-clamp-2 leading-tight font-['Cairo']">
              {anime.title?.romaji}
            </p>
            {anime.startDate?.year && (
              <p className="text-[8px] text-white/35 mt-0.5 font-['Cairo']">{anime.startDate.year}</p>
            )}
          </div>
        </div>
      </motion.div>
    </Link>
  );
}

/* ── Genre pill ── */
function GenreChip({ genre, selected, onToggle }: { genre: string; selected: boolean; onToggle: () => void }) {
  return (
    <button onClick={onToggle}
      className={`shrink-0 text-[11px] font-black font-['Cairo'] px-3 py-1.5 rounded-xl border transition-all active:scale-95 ${
        selected
          ? "bg-violet-500/20 text-violet-300 border-violet-500/40 shadow-sm shadow-violet-500/20"
          : "bg-[#18181B] text-white/45 border-white/5 hover:border-white/12"
      }`}>
      {GENRES_AR[genre] || genre}
    </button>
  );
}

/* ── Filter pill ── */
function FilterPill({ label, active, onClick }: { label: string; active: boolean; onClick: () => void }) {
  return (
    <button onClick={onClick}
      className={`shrink-0 text-[11px] font-black font-['Cairo'] px-3.5 py-1.5 rounded-xl border transition-all active:scale-95 ${
        active
          ? "bg-primary text-white border-primary shadow-md shadow-primary/25"
          : "bg-[#18181B] text-white/45 border-white/5 hover:border-white/12"
      }`}>
      {label}
    </button>
  );
}

export default function Search() {
  const [query,       setQuery]      = useState('');
  const [results,     setResults]    = useState<AnimeResult[]>([]);
  const [loading,     setLoading]    = useState(false);
  const [sort,        setSort]       = useState('POPULARITY_DESC');
  const [format,      setFormat]     = useState('');
  const [status,      setStatus]     = useState('');
  const [genre,       setGenre]      = useState('');
  const [season,      setSeason]     = useState('');
  const [showFilters, setShowFilters] = useState(false);
  const [showGenres,  setShowGenres]  = useState(false);
  const [history,     setHistory]    = useState<string[]>(
    () => JSON.parse(localStorage.getItem('searchHistory') || '[]')
  );
  const inputRef = useRef<HTMLInputElement>(null);

  const activeFilterCount = [format, status, genre, season].filter(Boolean).length;

  useEffect(() => {
    const timer = setTimeout(async () => {
      setLoading(true);
      try {
        let q: object;
        if (query.trim()) {
          const searchTerm = translateQuery(query);
          q = { query: buildQuery(sort, format, status, genre, season), variables: { search: searchTerm, page: 1, perPage: 30 } };
          const updated = [query, ...history.filter(h => h !== query)].slice(0, 8);
          setHistory(updated);
          localStorage.setItem('searchHistory', JSON.stringify(updated));
        } else {
          q = { query: buildBrowseQuery(sort, format, status, genre, season), variables: { page: 1, perPage: 30 } };
        }
        const res  = await fetch('https://graphql.anilist.co', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(q),
        });
        const json = await res.json();
        setResults(filterSafe(json.data?.Page?.media || []));
      } finally {
        setLoading(false);
      }
    }, query.trim() ? 400 : 100);
    return () => clearTimeout(timer);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [query, sort, format, status, genre, season]);

  function clearFilters() {
    setFormat('');
    setStatus('');
    setGenre('');
    setSeason('');
  }

  const activeSeason = SEASON_OPTIONS.find(s => s.value === season);

  return (
    <main className="bg-[#0A0A0F] min-h-screen text-white pb-24" dir="rtl">

      {/* ── Sticky header ── */}
      <div className="sticky top-0 z-20 bg-[#0A0A0F]/95 backdrop-blur-xl border-b border-white/5">

        {/* Search bar */}
        <div className="px-4 pt-4 pb-2">
          <div className="flex items-center gap-3 bg-[#18181B] rounded-2xl px-4 border border-white/[0.07] shadow-inner">
            <SearchIcon className="w-4.5 h-4.5 text-white/30 shrink-0" />
            <input
              ref={inputRef}
              type="text"
              value={query}
              onChange={e => setQuery(e.target.value)}
              placeholder="ابحث عن أنمي..."
              className="flex-1 bg-transparent text-white py-3.5 outline-none text-[14px] font-bold font-['Cairo'] placeholder:text-white/25"
              autoFocus
            />
            {query && (
              <button onClick={() => { setQuery(''); inputRef.current?.focus(); }}
                className="text-white/30 hover:text-white/70 transition-colors active:scale-90">
                <X className="w-4 h-4" />
              </button>
            )}
          </div>
        </div>

        {/* Filter toggle row */}
        <div className="flex items-center gap-2 px-4 pb-2.5">
          <button onClick={() => setShowFilters(f => !f)}
            className={`flex items-center gap-1.5 text-[11px] font-black font-['Cairo'] px-3 py-1.5 rounded-xl border transition-all active:scale-95 ${
              showFilters || activeFilterCount > 0
                ? "bg-violet-500/15 text-violet-300 border-violet-500/30"
                : "bg-[#18181B] text-white/45 border-white/5"
            }`}>
            <SlidersHorizontal className="w-3 h-3" />
            فلاتر
            {activeFilterCount > 0 && (
              <span className="bg-violet-500 text-white text-[9px] w-4 h-4 rounded-full flex items-center justify-center font-black">
                {activeFilterCount}
              </span>
            )}
          </button>

          {/* Sort horizontal scroll */}
          <div className="flex gap-1.5 overflow-x-auto flex-1" style={{ scrollbarWidth: "none" }}>
            {SORT_OPTIONS.map(opt => (
              <FilterPill key={opt.value} label={opt.label} active={sort === opt.value} onClick={() => setSort(opt.value)} />
            ))}
          </div>

          {activeFilterCount > 0 && (
            <button onClick={clearFilters}
              className="shrink-0 text-[10px] text-red-400/70 font-black font-['Cairo'] px-2 py-1 active:scale-90">
              مسح
            </button>
          )}
        </div>

        {/* Season quick-filter row */}
        <div className="flex items-center gap-1.5 px-4 pb-2.5 overflow-x-auto" style={{ scrollbarWidth: "none" }}>
          {SEASON_OPTIONS.map(opt => (
            <button key={opt.value} onClick={() => setSeason(opt.value)}
              className={`shrink-0 flex items-center gap-1.5 text-[11px] font-black font-['Cairo'] px-3 py-1.5 rounded-xl border transition-all active:scale-95 ${
                season === opt.value
                  ? "bg-primary/20 text-primary border-primary/40 shadow-sm shadow-primary/20"
                  : "bg-[#18181B] text-white/40 border-white/5"
              }`}>
              <span>{opt.emoji}</span>
              {opt.label}
            </button>
          ))}
        </div>

        {/* Expandable filter panel */}
        <AnimatePresence>
          {showFilters && (
            <motion.div
              initial={{ height: 0, opacity: 0 }} animate={{ height: "auto", opacity: 1 }}
              exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}
              className="overflow-hidden border-t border-white/5 bg-[#0A0A0F]">
              <div className="px-4 py-3 space-y-3">

                {/* Format */}
                <div>
                  <p className="text-[10px] text-white/25 font-['Cairo'] font-bold mb-1.5">النوع</p>
                  <div className="flex gap-1.5 flex-wrap">
                    {FORMAT_OPTIONS.map(opt => (
                      <FilterPill key={opt.value} label={opt.label} active={format === opt.value} onClick={() => setFormat(opt.value)} />
                    ))}
                  </div>
                </div>

                {/* Status */}
                <div>
                  <p className="text-[10px] text-white/25 font-['Cairo'] font-bold mb-1.5">الحالة</p>
                  <div className="flex gap-1.5 flex-wrap">
                    {STATUS_OPTIONS.map(opt => (
                      <FilterPill key={opt.value} label={opt.label} active={status === opt.value} onClick={() => setStatus(opt.value)} />
                    ))}
                  </div>
                </div>

                {/* Genre */}
                <div>
                  <button onClick={() => setShowGenres(g => !g)}
                    className="flex items-center gap-1 text-[10px] text-white/25 font-['Cairo'] font-bold mb-1.5">
                    التصنيف
                    {genre && <span className="text-violet-400 font-black">· {GENRES_AR[genre] || genre}</span>}
                    <ChevronDown className={`w-3 h-3 transition-transform ${showGenres ? "rotate-180" : ""}`} />
                  </button>
                  <AnimatePresence>
                    {showGenres && (
                      <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: "auto", opacity: 1 }}
                        exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.15 }} className="overflow-hidden">
                        <div className="flex gap-1.5 flex-wrap pb-1">
                          <GenreChip genre="الكل" selected={!genre} onToggle={() => setGenre('')} />
                          {GENRES.map(g => (
                            <GenreChip key={g} genre={g} selected={genre === g} onToggle={() => setGenre(genre === g ? '' : g)} />
                          ))}
                        </div>
                      </motion.div>
                    )}
                  </AnimatePresence>
                </div>

              </div>
            </motion.div>
          )}
        </AnimatePresence>
      </div>

      {/* ── Search history ── */}
      {!query && !format && !status && !genre && !season && history.length > 0 && (
        <div className="px-4 mt-4 mb-2">
          <div className="flex items-center justify-between mb-2.5">
            <h2 className="text-[11px] font-black text-white/30 font-['Cairo'] tracking-wider">البحث الأخير</h2>
            <button onClick={() => { setHistory([]); localStorage.removeItem('searchHistory'); }}
              className="text-[10px] text-primary/70 font-bold font-['Cairo'] active:scale-90">
              مسح
            </button>
          </div>
          <div className="flex flex-wrap gap-2">
            {history.map((h, i) => (
              <button key={i} onClick={() => setQuery(h)}
                className="flex items-center gap-1.5 text-[11px] font-bold bg-[#18181B] text-white/55 px-3 py-1.5 rounded-xl border border-white/5 hover:border-primary/30 transition-all active:scale-95 font-['Cairo']">
                <SearchIcon className="w-3 h-3 opacity-50" />
                {h}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Active season badge */}
      {activeSeason && activeSeason.value && (
        <div className="flex items-center gap-2 px-4 mt-3">
          <span className="text-[10px] text-white/25 font-['Cairo']">موسم:</span>
          <span className="text-[11px] font-black text-primary font-['Cairo'] flex items-center gap-1">
            {activeSeason.emoji} {activeSeason.label}
          </span>
        </div>
      )}

      {/* ── Loading ── */}
      {loading && (
        <div className="flex items-center justify-center py-10">
          <motion.div animate={{ rotate: 360 }} transition={{ duration: 0.8, repeat: Infinity, ease: "linear" }}
            className="w-7 h-7 rounded-full border-2 border-primary/20 border-t-primary" />
        </div>
      )}

      {/* ── Results ── */}
      {!loading && results.length > 0 && (
        <div className="px-4 mt-4">
          <p className="text-[10px] text-white/20 font-['Cairo'] mb-3 font-bold">
            {results.length} نتيجة {query ? `لـ "${query}"` : ""}
          </p>
          <motion.div className="grid grid-cols-3 gap-3" layout>
            <AnimatePresence mode="popLayout">
              {results.map((anime, i) => (
                <motion.div key={anime.id}
                  initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: Math.min(i * 0.025, 0.4), duration: 0.2 }}>
                  <AnimeCardSmall anime={anime} />
                </motion.div>
              ))}
            </AnimatePresence>
          </motion.div>
        </div>
      )}

      {/* ── Empty state ── */}
      {!loading && results.length === 0 && (query || format || status || genre || season) && (
        <div className="text-center py-20 px-6">
          <div className="w-16 h-16 rounded-3xl bg-white/4 border border-white/8 flex items-center justify-center mx-auto mb-4">
            <SearchIcon className="w-7 h-7 text-white/15" />
          </div>
          <p className="font-bold text-sm font-['Cairo'] text-white/40">
            {query ? `لا توجد نتائج لـ "${query}"` : "لا توجد نتائج بهذه الفلاتر"}
          </p>
          {(format || status || genre || season) && (
            <button onClick={clearFilters}
              className="mt-4 text-[12px] text-primary font-black font-['Cairo'] px-4 py-2 rounded-xl bg-primary/10 border border-primary/20 active:scale-95">
              إزالة الفلاتر
            </button>
          )}
        </div>
      )}

    </main>
  );
}
