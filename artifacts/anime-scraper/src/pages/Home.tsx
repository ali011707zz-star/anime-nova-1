import { useEffect, useState, useCallback, useRef } from "react";
import { Link } from "wouter";
import { Play, Loader2, ChevronDown, TrendingUp, Clock, Star, Zap, ChevronLeft } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

const GENRES_AR: { ar: string; en: string; color: string; img: string }[] = [
  { ar: "الكل",       en: "",              color: "#8B5CF6", img: "" },
  { ar: "أكشن",       en: "Action",        color: "#EF4444", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21459-D0xCKHUZEyb7.jpg" },
  { ar: "مغامرة",     en: "Adventure",     color: "#F97316", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20958-HuFJyr54Mmir.jpg" },
  { ar: "كوميدي",     en: "Comedy",        color: "#EAB308", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21202-ikxsGi8iT7nT.jpg" },
  { ar: "دراما",      en: "Drama",         color: "#8B5CF6", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx9253-p1zPHMVEpIPK.jpg" },
  { ar: "فانتازيا",   en: "Fantasy",       color: "#06B6D4", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx101922-PEn1CTc93blC.jpg" },
  { ar: "خيال علمي",  en: "Sci-Fi",        color: "#3B82F6", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx5114-KJTQz9AIjCPt.jpg" },
  { ar: "رياضة",      en: "Sports",        color: "#10B981", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx124194-cPPdxkFEeWC7.jpg" },
  { ar: "رومانسي",    en: "Romance",       color: "#EC4899", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx108465-RFpDKe2CyAqF.jpg" },
  { ar: "إيسيكاي",    en: "Isekai",        color: "#059669", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx108632-rvzNqs1QMgPE.jpg" },
  { ar: "نفسي",       en: "Psychological", color: "#7C3AED", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx31646-OFBpV5ftOkL3.jpg" },
  { ar: "رعب",        en: "Horror",        color: "#6B7280", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx98478-m14Pk2KuLIeR.jpg" },
  { ar: "غموض",       en: "Mystery",       color: "#64748B", img: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx100388-JVD9ATSnHHWg.jpg" },
];

function buildPopularQuery(genre: string) {
  const gf = genre ? `, genre: "${genre}"` : "";
  return `query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    pageInfo { hasNextPage }
    media(type: ANIME, sort: POPULARITY_DESC, countryOfOrigin: "JP", format_in: [TV, MOVIE, OVA, ONA]${gf}) {
      id title { romaji english } coverImage { large extraLarge }
      bannerImage averageScore episodes genres status format
    }
  }
}`;
}

const RECENT_QUERY = `query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", format_in: [TV, ONA], status: RELEASING) {
      id title { romaji } coverImage { large } averageScore episodes
      nextAiringEpisode { episode }
    }
  }
}`;

const TRENDING_QUERY = `query {
  Page(perPage: 12) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", status: RELEASING) {
      id title { romaji } coverImage { large } averageScore episodes nextAiringEpisode { episode }
    }
  }
}`;

function AnimeCard({ anime }: { anime: any }) {
  return (
    <Link href={`/anime/${anime.id}`}>
      <motion.div whileTap={{ scale: 0.93 }} className="group cursor-pointer">
        <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
          <img
            src={anime.coverImage?.large}
            alt={anime.title?.romaji}
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
            loading="lazy"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-black/65 via-transparent to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-2 right-2 bg-black/70 backdrop-blur-sm text-yellow-400 text-[8px] px-1.5 py-0.5 rounded-lg font-black flex items-center gap-0.5">
              <Star className="w-2 h-2 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
          {anime.format === "MOVIE" && (
            <div className="absolute bottom-1.5 left-1.5 bg-primary/80 text-white text-[7px] px-1.5 py-0.5 rounded-md font-black">فيلم</div>
          )}
        </div>
        <h3 className="mt-1.5 text-[11px] text-white/70 truncate font-bold group-hover:text-primary transition-colors">{anime.title?.romaji}</h3>
      </motion.div>
    </Link>
  );
}

export default function Home() {
  const [popular, setPopular]     = useState<any[]>([]);
  const [recent, setRecent]       = useState<any[]>([]);
  const [trending, setTrending]   = useState<any[]>([]);
  const [loading, setLoading]     = useState(true);
  const [genreLoading, setGenreLoading] = useState(false);
  const [page, setPage]           = useState(1);
  const [hasMore, setHasMore]     = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hero, setHero]           = useState<any>(null);
  const [heroIdx, setHeroIdx]     = useState(0);
  const [selectedGenre, setSelectedGenre] = useState("");
  const touchStartX = useRef<number>(0);
  const heroList = popular.filter(a => a.bannerImage).slice(0, 8);

  const fetch$ = async (query: string, variables?: any) => {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query, variables }),
    });
    return (await r.json()).data?.Page;
  };

  useEffect(() => {
    async function load() {
      setLoading(true);
      const [pop, rec, trend] = await Promise.all([
        fetch$(buildPopularQuery(""), { page: 1, perPage: 12 }),
        fetch$(RECENT_QUERY, { page: 1, perPage: 8 }),
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
        setHero(heroes[0] || data?.media?.[0]); setHeroIdx(0);
      }
    } finally { setGenreLoading(false); }
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

      {/* Hero Banner */}
      {hero && !selectedGenre && (
        <div
          className="relative w-full overflow-hidden select-none"
          style={{ height: 310 }}
          onTouchStart={e => { touchStartX.current = e.touches[0].clientX; }}
          onTouchEnd={e => {
            const dx = e.changedTouches[0].clientX - touchStartX.current;
            if (Math.abs(dx) < 40) return;
            const heroes = popular.filter(a => a.bannerImage).slice(0, 8);
            if (heroes.length <= 1) return;
            const dir = dx < 0 ? 1 : -1; // swipe left → next, right → prev
            const next = (heroIdx + dir + heroes.length) % heroes.length;
            setHeroIdx(next);
            setHero(heroes[next]);
          }}
        >
          <AnimatePresence mode="wait">
            <motion.img
              key={hero.id}
              initial={{ opacity: 0, scale: 1.05 }}
              animate={{ opacity: 1, scale: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.6 }}
              src={hero.bannerImage || hero.coverImage?.extraLarge || hero.coverImage?.large}
              alt=""
              className="w-full h-full object-cover"
              draggable={false}
            />
          </AnimatePresence>
          <div className="absolute inset-0 bg-gradient-to-t from-[#09090B] via-[#09090B]/50 to-transparent" />
          <div className="absolute inset-0 bg-gradient-to-r from-[#09090B]/30 to-transparent" />

          <div className="absolute bottom-0 right-0 left-0 p-5">
            <div className="flex items-center gap-1.5 mb-2 flex-wrap">
              {hero.genres?.slice(0, 3).map((g: string) => (
                <span key={g} className="text-[8px] font-black bg-white/10 backdrop-blur-sm text-white/75 px-2 py-0.5 rounded-full border border-white/10">{g}</span>
              ))}
              {hero.averageScore && (
                <span className="text-[8px] font-black bg-yellow-500/20 text-yellow-400 px-2 py-0.5 rounded-full flex items-center gap-0.5">
                  <Star className="w-2 h-2 fill-current" /> {(hero.averageScore / 10).toFixed(1)}
                </span>
              )}
            </div>
            <h1 className="text-2xl font-black text-white line-clamp-1 mb-1 drop-shadow-lg">{hero.title?.romaji}</h1>
            {hero.episodes && (
              <p className="text-white/50 text-[11px] font-bold mb-3 font-['Cairo']">
                {hero.episodes} حلقة
                {hero.status === "RELEASING" ? " • يُبث حالياً" : " • مكتمل"}
              </p>
            )}
            <div className="flex gap-2">
              <Link href={`/episodes/${hero.id}`}>
                <button className="bg-primary text-white text-xs font-black px-5 py-2.5 rounded-xl flex items-center gap-2 shadow-lg shadow-primary/30 active:scale-95 transition-all">
                  <Play className="w-3.5 h-3.5 fill-current" /> مشاهدة
                </button>
              </Link>
              <Link href={`/anime/${hero.id}`}>
                <button className="bg-white/12 backdrop-blur-sm text-white text-xs font-black px-5 py-2.5 rounded-xl border border-white/10 active:scale-95 transition-all font-['Cairo']">
                  التفاصيل
                </button>
              </Link>
            </div>
          </div>

          {/* Hero dots */}
          {heroList.length > 1 && (
            <div className="absolute bottom-3 left-4 flex gap-1">
              {heroList.map((_, i) => (
                <button
                  key={i}
                  onClick={() => { setHeroIdx(i); setHero(heroList[i]); }}
                  className={`h-1 rounded-full transition-all ${i === heroIdx ? "w-5 bg-primary" : "w-1.5 bg-white/30"}`}
                />
              ))}
            </div>
          )}
        </div>
      )}

      {/* ── Genre Filters with images ── */}
      <div className="pt-4 pb-2">
        <div className="flex gap-2 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
          {GENRES_AR.map((g) => (
            <motion.button
              key={g.en}
              whileTap={{ scale: 0.92 }}
              onClick={() => handleGenreSelect(g.en)}
              className={`shrink-0 relative overflow-hidden rounded-2xl transition-all border
                ${selectedGenre === g.en
                  ? "border-primary shadow-lg shadow-primary/20"
                  : "border-white/8"
                }`}
              style={{ minWidth: g.en ? 80 : 58, height: 56 }}
            >
              {g.img && (
                <img src={g.img} alt="" className="absolute inset-0 w-full h-full object-cover" />
              )}
              <div
                className="absolute inset-0"
                style={{
                  background: selectedGenre === g.en
                    ? `linear-gradient(135deg, ${g.color}EE, ${g.color}99)`
                    : g.img
                      ? "linear-gradient(135deg, rgba(0,0,0,0.7), rgba(0,0,0,0.5))"
                      : `linear-gradient(135deg, ${g.color}33, ${g.color}11)`,
                }}
              />
              <span className={`relative z-10 font-black text-[11px] font-['Cairo'] px-3 flex items-center justify-center h-full
                ${selectedGenre === g.en ? "text-white" : g.img ? "text-white/85" : `text-white/55`}`}>
                {g.ar}
              </span>
            </motion.button>
          ))}
        </div>
      </div>

      {/* ── Trending — Now Airing ── */}
      {trending.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <Zap className="w-4 h-4 text-primary" />
              <h2 className="text-sm font-black font-['Cairo']">يُبث الآن</h2>
            </div>
            <Link href="/news">
              <button className="text-[10px] text-primary font-black font-['Cairo'] flex items-center gap-0.5 active:opacity-70">
                المزيد <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {trending.map((anime, i) => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.94 }} className="shrink-0 w-28 cursor-pointer group">
                  <div className="relative w-28 h-40 rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent" />
                    <div className="absolute top-2 right-2 w-6 h-6 bg-primary/90 rounded-full flex items-center justify-center text-[9px] font-black text-white shadow-lg">{i + 1}</div>
                    {anime.nextAiringEpisode && (
                      <div className="absolute bottom-1.5 right-1.5 bg-emerald-500/80 text-white text-[7px] px-1.5 py-0.5 rounded-full font-black">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                  </div>
                  <p className="mt-1.5 text-[10px] text-white/60 truncate font-bold">{anime.title?.romaji}</p>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── Latest Releases ── */}
      {recent.length > 0 && !selectedGenre && (
        <div className="mt-6 px-4">
          <div className="flex items-center justify-between mb-3">
            <div className="flex items-center gap-2">
              <Clock className="w-4 h-4 text-primary" />
              <h2 className="text-sm font-black font-['Cairo']">آخر الإصدارات</h2>
            </div>
            <Link href="/news">
              <button className="text-[10px] text-primary font-black font-['Cairo'] flex items-center gap-0.5 active:opacity-70">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="grid grid-cols-4 gap-2.5">
            {recent.slice(0, 8).map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.93 }} className="cursor-pointer">
                  <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-[#18181B] border border-white/[0.07]">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent" />
                    {anime.nextAiringEpisode && (
                      <div className="absolute bottom-1 left-1 right-1 bg-emerald-500/80 text-white text-[7px] text-center py-0.5 rounded-md font-black">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                  </div>
                  <p className="mt-1 text-[9px] text-white/55 truncate font-bold">{anime.title?.romaji}</p>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}


      {/* ── Popular grid ── */}
      <div className="mt-6 px-4">
        <div className="flex items-center gap-2 mb-3">
          <TrendingUp className="w-4 h-4 text-primary" />
          <h2 className="text-sm font-black font-['Cairo']">
            {selectedGenre
              ? GENRES_AR.find(g => g.en === selectedGenre)?.ar || selectedGenre
              : "الأكثر شعبية"}
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
            className="w-full mt-5 py-3.5 bg-[#18181B] border border-white/8 rounded-2xl text-sm font-black flex items-center justify-center gap-2 text-white/50 hover:text-white hover:border-primary/30 transition-all active:scale-98 font-['Cairo'] disabled:opacity-40">
            {loadingMore ? <Loader2 className="w-4 h-4 animate-spin" /> : <><ChevronDown className="w-4 h-4" /> تحميل المزيد</>}
          </button>
        )}
      </div>
    </main>
  );
}
