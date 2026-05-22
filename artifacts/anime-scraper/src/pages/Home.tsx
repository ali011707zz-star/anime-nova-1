import { useEffect, useState, useCallback } from 'react';
import { Link } from 'wouter';
import { Play, Loader2, ChevronDown, TrendingUp, Clock, Star, Film } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';

const GENRES_AR: { ar: string; en: string }[] = [
  { ar: "الكل", en: "" },
  { ar: "أكشن", en: "Action" },
  { ar: "رومانسي", en: "Romance" },
  { ar: "كوميدي", en: "Comedy" },
  { ar: "دراما", en: "Drama" },
  { ar: "مغامرة", en: "Adventure" },
  { ar: "خيال علمي", en: "Sci-Fi" },
  { ar: "فانتازيا", en: "Fantasy" },
  { ar: "غموض", en: "Mystery" },
  { ar: "رياضة", en: "Sports" },
  { ar: "رعب", en: "Horror" },
  { ar: "نفسي", en: "Psychological" },
  { ar: "إيسيكاي", en: "Isekai" },
  { ar: "شريحة حياة", en: "Slice of Life" },
  { ar: "موسيقى", en: "Music" },
];

function buildPopularQuery(genre: string) {
  const genreFilter = genre ? `, genre: "${genre}"` : "";
  return `
query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    pageInfo { hasNextPage }
    media(type: ANIME, sort: POPULARITY_DESC, countryOfOrigin: "JP", format_in: [TV, MOVIE, OVA, ONA]${genreFilter}) {
      id title { romaji english } coverImage { large extraLarge }
      bannerImage averageScore episodes genres status
    }
  }
}`;
}

const RECENT_QUERY = `
query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(type: ANIME, sort: START_DATE_DESC, countryOfOrigin: "JP", format_in: [TV, ONA], status: RELEASING) {
      id title { romaji } coverImage { large } averageScore episodes
    }
  }
}`;

const TRENDING_QUERY = `
query {
  Page(perPage: 10) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP") {
      id title { romaji } coverImage { large } averageScore episodes
    }
  }
}`;

function AnimeCard({ anime }: { anime: any }) {
  return (
    <Link href={`/anime/${anime.id}`}>
      <motion.div whileTap={{ scale: 0.93 }} className="group cursor-pointer">
        <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
          {anime.coverImage?.large ? (
            <img src={anime.coverImage.large} alt={anime.title.romaji} className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" loading="lazy" />
          ) : (
            <div className="w-full h-full flex items-center justify-center"><p className="text-white/20 text-[9px] text-center p-2">{anime.title.romaji}</p></div>
          )}
          <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-2 right-2 bg-black/70 backdrop-blur-sm text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
              <Star className="w-2 h-2 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
        </div>
        <h3 className="mt-1.5 text-[11px] text-white/70 truncate font-bold group-hover:text-primary transition-colors">{anime.title.romaji}</h3>
      </motion.div>
    </Link>
  );
}

export default function Home() {
  const [popular, setPopular] = useState<any[]>([]);
  const [recent, setRecent] = useState<any[]>([]);
  const [trending, setTrending] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [genreLoading, setGenreLoading] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hero, setHero] = useState<any>(null);
  const [heroIdx, setHeroIdx] = useState(0);
  const [selectedGenre, setSelectedGenre] = useState("");

  const fetch$ = async (query: string, variables?: any) => {
    const r = await fetch('https://graphql.anilist.co', {
      method: 'POST', headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ query, variables }),
    });
    return (await r.json()).data?.Page;
  };

  useEffect(() => {
    async function load() {
      setLoading(true);
      const [pop, rec, trend] = await Promise.all([
        fetch$(buildPopularQuery(""), { page: 1, perPage: 12 }),
        fetch$(RECENT_QUERY, { page: 1, perPage: 6 }),
        fetch$(TRENDING_QUERY),
      ]);
      setPopular(pop?.media || []);
      setHasMore(pop?.pageInfo?.hasNextPage ?? false);
      setRecent(rec?.media || []);
      setTrending(trend?.media || []);
      const heroes = (pop?.media || []).filter((a: any) => a.bannerImage);
      setHero(heroes[0] || pop?.media?.[0]);
      setLoading(false);
    }
    load();
  }, []);

  // Rotate hero every 6s
  useEffect(() => {
    if (!popular.length || selectedGenre) return;
    const heroes = popular.filter(a => a.bannerImage);
    if (heroes.length <= 1) return;
    const t = setInterval(() => {
      setHeroIdx(i => {
        const next = (i + 1) % heroes.length;
        setHero(heroes[next]);
        return next;
      });
    }, 6000);
    return () => clearInterval(t);
  }, [popular, selectedGenre]);

  const handleGenreSelect = useCallback(async (genre: string) => {
    setSelectedGenre(genre);
    setPage(1);
    setGenreLoading(true);
    try {
      const data = await fetch$(buildPopularQuery(genre), { page: 1, perPage: 12 });
      setPopular(data?.media || []);
      setHasMore(data?.pageInfo?.hasNextPage ?? false);
      if (!genre) {
        const heroes = (data?.media || []).filter((a: any) => a.bannerImage);
        setHero(heroes[0] || data?.media?.[0]);
        setHeroIdx(0);
      }
    } finally {
      setGenreLoading(false);
    }
  }, []);

  const loadMore = useCallback(async () => {
    if (loadingMore || !hasMore) return;
    setLoadingMore(true);
    const next = page + 1;
    const data = await fetch$(buildPopularQuery(selectedGenre), { page: next, perPage: 12 });
    setPopular(prev => [...prev, ...(data?.media || [])]);
    setHasMore(data?.pageInfo?.hasNextPage ?? false);
    setPage(next);
    setLoadingMore(false);
  }, [loadingMore, hasMore, page, selectedGenre]);

  if (loading) return (
    <div className="bg-[#09090B] min-h-screen flex flex-col items-center justify-center gap-3">
      <div className="relative">
        <div className="w-12 h-12 border-2 border-primary/30 rounded-full" />
        <div className="w-12 h-12 border-2 border-primary border-t-transparent rounded-full animate-spin absolute inset-0" />
      </div>
      <p className="text-white/40 text-xs font-bold font-['Cairo']">جارٍ التحميل...</p>
    </div>
  );

  return (
    <main className="bg-[#09090B] min-h-screen pb-28 text-white" dir="rtl">
      {/* Hero */}
      {hero && (
        <div className="relative w-full overflow-hidden" style={{ height: 320 }}>
          <motion.img
            key={hero.id}
            initial={{ opacity: 0, scale: 1.05 }}
            animate={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.6 }}
            src={hero.bannerImage || hero.coverImage?.extraLarge || hero.coverImage?.large}
            alt=""
            className="w-full h-full object-cover"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-[#09090B] via-[#09090B]/55 to-transparent" />
          <div className="absolute inset-0 bg-gradient-to-r from-[#09090B]/40 to-transparent" />

          <div className="absolute bottom-0 right-0 left-0 p-5">
            <div className="flex items-center gap-2 mb-2">
              {hero.genres?.slice(0, 3).map((g: string) => (
                <span key={g} className="text-[8px] font-black bg-white/10 backdrop-blur-sm text-white/70 px-2 py-0.5 rounded-full border border-white/10">{g}</span>
              ))}
              {hero.averageScore && (
                <span className="text-[8px] font-black bg-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-full flex items-center gap-0.5">
                  <Star className="w-2 h-2 fill-current" /> {(hero.averageScore / 10).toFixed(1)}
                </span>
              )}
            </div>
            <h1 className="text-2xl font-black text-white line-clamp-1 mb-1 drop-shadow-lg">{hero.title?.romaji}</h1>
            {hero.episodes && (
              <p className="text-white/50 text-[11px] font-bold mb-3 font-['Cairo']">{hero.episodes} حلقة • {hero.status === 'RELEASING' ? 'يُبث حالياً' : 'مكتمل'}</p>
            )}
            <div className="flex gap-2">
              <Link href={`/episodes/${hero.id}`}>
                <button className="bg-primary text-white text-xs font-black px-5 py-2.5 rounded-xl flex items-center gap-2 shadow-lg shadow-primary/30 active:scale-95 transition-all">
                  <Play className="w-3.5 h-3.5 fill-current" /> مشاهدة
                </button>
              </Link>
              <Link href={`/anime/${hero.id}`}>
                <button className="bg-white/10 backdrop-blur-sm text-white text-xs font-black px-5 py-2.5 rounded-xl border border-white/10 active:scale-95 transition-all font-['Cairo']">
                  التفاصيل
                </button>
              </Link>
            </div>
          </div>

          {/* Hero dots */}
          {!selectedGenre && popular.filter(a => a.bannerImage).length > 1 && (
            <div className="absolute bottom-3 left-4 flex gap-1">
              {popular.filter(a => a.bannerImage).slice(0, 5).map((_, i) => (
                <div key={i} className={`h-1 rounded-full transition-all ${i === heroIdx ? 'w-5 bg-primary' : 'w-1.5 bg-white/30'}`} />
              ))}
            </div>
          )}
        </div>
      )}

      {/* ── Genre Filters ── */}
      <div className="pt-4 pb-1">
        <div className="flex gap-2 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: 'none' }}>
          {GENRES_AR.map((g) => (
            <motion.button
              key={g.en}
              whileTap={{ scale: 0.93 }}
              onClick={() => handleGenreSelect(g.en)}
              className={`shrink-0 px-4 py-2 rounded-2xl text-xs font-black font-['Cairo'] transition-all border
                ${selectedGenre === g.en
                  ? 'bg-primary text-white border-primary shadow-lg shadow-primary/30'
                  : 'bg-[#18181B] text-white/50 border-white/8 hover:border-primary/30 hover:text-white/80'
                }`}
            >
              {g.ar}
            </motion.button>
          ))}
        </div>
      </div>

      {/* Trending horizontal scroll */}
      {trending.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center gap-2 mb-3 px-4">
            <TrendingUp className="w-4 h-4 text-primary" />
            <h2 className="text-sm font-black font-['Cairo']">الأكثر رواجاً</h2>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: 'none' }}>
            {trending.map((anime, i) => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.94 }} className="shrink-0 w-28 cursor-pointer group">
                  <div className="relative w-28 h-40 rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
                    <img src={anime.coverImage.large} alt="" className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" loading="lazy" />
                    <div className="absolute top-2 right-2 w-5 h-5 bg-primary/90 rounded-full flex items-center justify-center text-[8px] font-black text-white">{i + 1}</div>
                    <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent" />
                  </div>
                  <p className="mt-1.5 text-[10px] text-white/60 truncate font-bold">{anime.title.romaji}</p>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* Recent */}
      {recent.length > 0 && !selectedGenre && (
        <div className="mt-7 px-4">
          <div className="flex items-center gap-2 mb-3">
            <Clock className="w-4 h-4 text-primary" />
            <h2 className="text-sm font-black font-['Cairo']">آخر الإضافات</h2>
          </div>
          <div className="grid grid-cols-3 gap-3">
            {recent.map(anime => <AnimeCard key={anime.id} anime={anime} />)}
          </div>
        </div>
      )}

      {/* Popular */}
      <div className="mt-7 px-4">
        <div className="flex items-center gap-2 mb-3">
          <Film className="w-4 h-4 text-primary" />
          <h2 className="text-sm font-black font-['Cairo']">
            {selectedGenre
              ? GENRES_AR.find(g => g.en === selectedGenre)?.ar || selectedGenre
              : 'الأكثر شعبية'}
          </h2>
          {genreLoading && <Loader2 className="w-3.5 h-3.5 text-primary animate-spin" />}
        </div>
        <AnimatePresence mode="wait">
          <motion.div
            key={selectedGenre}
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0 }}
            transition={{ duration: 0.25 }}
            className="grid grid-cols-3 gap-3"
          >
            {popular.map(anime => <AnimeCard key={anime.id} anime={anime} />)}
          </motion.div>
        </AnimatePresence>
        {hasMore && (
          <button onClick={loadMore} disabled={loadingMore}
            className="w-full mt-5 py-3.5 bg-[#18181B] border border-white/8 rounded-2xl text-sm font-black flex items-center justify-center gap-2 text-white/50 hover:text-white hover:border-primary/30 transition-all active:scale-98 font-['Cairo']">
            {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <><ChevronDown className="w-4 h-4" /> تحميل المزيد</>}
          </button>
        )}
      </div>
    </main>
  );
}
