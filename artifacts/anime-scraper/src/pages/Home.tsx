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
      <motion.div whileTap={{ scale: 0.91 }} className="cursor-pointer">
        <div className="relative aspect-[2/3] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.09] shadow-xl shadow-black/60">
          <img
            src={anime.coverImage?.large}
            alt={anime.title?.romaji}
            className="w-full h-full object-cover"
            loading="lazy"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-black via-black/20 to-transparent" />
          {anime.averageScore && (
            <div className="absolute top-1.5 right-1.5 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/25">
              <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
            </div>
          )}
          {anime.format === "MOVIE" && (
            <div className="absolute top-1.5 left-1.5 bg-primary text-white text-[7px] px-1.5 py-0.5 rounded-md font-black shadow-md shadow-primary/50">فيلم</div>
          )}
          <div className="absolute bottom-0 left-0 right-0 px-2 pb-2 pt-4">
            <h3 className="text-[9.5px] text-white/90 font-bold truncate leading-tight drop-shadow">{anime.title?.romaji}</h3>
          </div>
        </div>
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
          style={{ height: 390 }}
          onTouchStart={e => { touchStartX.current = e.touches[0].clientX; }}
          onTouchEnd={e => {
            const dx = e.changedTouches[0].clientX - touchStartX.current;
            if (Math.abs(dx) < 40) return;
            const heroes = popular.filter(a => a.bannerImage).slice(0, 8);
            if (heroes.length <= 1) return;
            const dir = dx < 0 ? 1 : -1;
            const next = (heroIdx + dir + heroes.length) % heroes.length;
            setHeroIdx(next);
            setHero(heroes[next]);
          }}
        >
          <AnimatePresence mode="wait">
            <motion.img
              key={hero.id}
              initial={{ opacity: 0, scale: 1.04 }}
              animate={{ opacity: 1, scale: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.7 }}
              src={hero.bannerImage || hero.coverImage?.extraLarge || hero.coverImage?.large}
              alt=""
              className="w-full h-full object-cover"
              draggable={false}
            />
          </AnimatePresence>
          <div className="absolute inset-0" style={{ background: "linear-gradient(to top, #09090B 0%, #09090B 8%, rgba(9,9,11,0.7) 45%, rgba(9,9,11,0.1) 100%)" }} />
          <div className="absolute inset-0 bg-gradient-to-r from-[#09090B]/50 to-transparent" />

          <div className="absolute bottom-0 right-0 left-0 p-5 pb-6">
            <div className="flex items-center gap-1.5 mb-2.5 flex-wrap">
              {hero.genres?.slice(0, 3).map((g: string) => (
                <span key={g} className="text-[8px] font-black bg-white/12 backdrop-blur-md text-white/80 px-2.5 py-0.5 rounded-full border border-white/12">{GENRES_AR.find(x => x.en === g)?.ar || g}</span>
              ))}
              {hero.averageScore && (
                <span className="text-[8px] font-black bg-yellow-500/20 border border-yellow-500/25 text-yellow-400 px-2 py-0.5 rounded-full flex items-center gap-0.5">
                  <Star className="w-2 h-2 fill-current" /> {(hero.averageScore / 10).toFixed(1)}
                </span>
              )}
            </div>
            <h1 className="text-[28px] font-black text-white line-clamp-1 mb-1.5 drop-shadow-lg tracking-tight">{hero.title?.romaji}</h1>
            <p className="text-white/45 text-[11px] font-bold mb-4 font-['Cairo']">
              {hero.episodes ? `${hero.episodes} حلقة · ` : ""}
              {hero.status === "RELEASING" ? "يُبث حالياً 🔴" : "مكتمل"}
            </p>
            <div className="flex gap-2.5">
              <Link href={`/episodes/${hero.id}`}>
                <motion.button
                  whileTap={{ scale: 0.94 }}
                  className="relative overflow-hidden bg-primary text-white text-xs font-black px-6 py-3 rounded-2xl flex items-center gap-2 shadow-xl shadow-primary/40 active:scale-95"
                  style={{ background: "linear-gradient(135deg, #8B5CF6, #7C3AED)" }}
                >
                  <Play className="w-3.5 h-3.5 fill-current" /> مشاهدة الآن
                </motion.button>
              </Link>
              <Link href={`/anime/${hero.id}`}>
                <motion.button
                  whileTap={{ scale: 0.94 }}
                  className="bg-white/10 backdrop-blur-xl text-white text-xs font-black px-5 py-3 rounded-2xl border border-white/15 active:scale-95 font-['Cairo']"
                >
                  التفاصيل
                </motion.button>
              </Link>
            </div>
          </div>

          {/* Hero dots */}
          {heroList.length > 1 && (
            <div className="absolute bottom-5 left-5 flex gap-1.5 items-center">
              {heroList.map((_, i) => (
                <button
                  key={i}
                  onClick={() => { setHeroIdx(i); setHero(heroList[i]); }}
                  className={`rounded-full transition-all duration-300 ${i === heroIdx ? "w-6 h-1.5 bg-primary shadow-lg shadow-primary/50" : "w-1.5 h-1.5 bg-white/25"}`}
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
                <img
                  src={g.img}
                  alt=""
                  className="absolute inset-0 w-full h-full object-cover"
                  crossOrigin="anonymous"
                  onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
                />
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
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                <Zap className="w-3.5 h-3.5 text-white fill-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">يُبث الآن</h2>
            </div>
            <Link href="/news">
              <button className="text-[10px] text-primary/80 font-black font-['Cairo'] flex items-center gap-0.5 active:opacity-70 bg-primary/8 px-2.5 py-1 rounded-xl border border-primary/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {trending.map((anime, i) => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[120px] cursor-pointer">
                  <div className="relative w-[120px] h-[168px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/15 to-transparent" />
                    <div className="absolute top-2 right-2 w-6 h-6 rounded-xl flex items-center justify-center text-[9px] font-black text-white shadow-lg" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>{i + 1}</div>
                    {anime.nextAiringEpisode && (
                      <div className="absolute bottom-8 left-2 bg-emerald-500 text-white text-[7px] px-2 py-0.5 rounded-full font-black shadow-md shadow-emerald-500/40">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                      <p className="text-[9px] text-white/85 font-bold truncate">{anime.title?.romaji}</p>
                    </div>
                  </div>
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
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#10B981,#059669)" }}>
                <Clock className="w-3.5 h-3.5 text-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">آخر الإصدارات</h2>
            </div>
            <Link href="/news">
              <button className="text-[10px] text-emerald-400/80 font-black font-['Cairo'] flex items-center gap-0.5 active:opacity-70 bg-emerald-500/8 px-2.5 py-1 rounded-xl border border-emerald-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="grid grid-cols-4 gap-2">
            {recent.slice(0, 8).map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.91 }} className="cursor-pointer">
                  <div className="relative aspect-[2/3] rounded-xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-md shadow-black/40">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/20 to-transparent" />
                    {anime.nextAiringEpisode && (
                      <div className="absolute bottom-1 left-1 right-1 bg-emerald-500 text-white text-[6.5px] text-center py-0.5 rounded-md font-black shadow-sm">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-1" style={{ display: anime.nextAiringEpisode ? 'none' : 'block' }}>
                      <p className="text-[8px] text-white/80 truncate font-bold">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}


      {/* ── Popular grid ── */}
      <div className="mt-6 px-4">
        <div className="flex items-center gap-2 mb-3">
          <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0" style={{ background: "linear-gradient(135deg,#EF4444,#DC2626)" }}>
            <TrendingUp className="w-3.5 h-3.5 text-white" />
          </div>
          <h2 className="text-[13px] font-black font-['Cairo'] text-white">
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
