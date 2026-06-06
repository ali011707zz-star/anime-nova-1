import { useEffect, useState, useCallback, useRef } from "react";
import { Link } from "wouter";
import { Play, Loader2, ChevronDown, Clock, Star, ChevronLeft, ChevronRight, Info, Flame, Radio, Film, RotateCw, Clapperboard } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

/* ── Module-level cache — survives component unmount/remount so categories
      don't disappear when navigating Home → AnimeDetail → Home ── */
interface HomeCache {
  popular: any[]; recent: any[]; trending: any[]; movies: any[];
  topRated: any[]; seasonal: any[]; newSeason: any[];
  hero: any; hasMore: boolean;
}
let _homeCache: HomeCache | null = null;

/* ── Continue Watching helpers ── */
interface WatchHistoryItem {
  id: number;
  title: string;
  cover: string;
  ep: number;
  totalEps: number;
  date: string;
}
interface ContinueItem extends WatchHistoryItem {
  watchTimeSec: number;
}
interface AnimContinueItem {
  id: string;
  type: "movie" | "tv";
  title: string;
  poster: string;
  ep: number;
  season: number;
  date: string;
  watchTimeSec: number;
}
function fmtMinute(sec: number) {
  const m = Math.floor(sec / 60);
  const s = Math.floor(sec % 60);
  return `${m}:${String(s).padStart(2, "0")}`;
}
function loadContinueWatching(): ContinueItem[] {
  try {
    const h: WatchHistoryItem[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    return h
      .map(item => {
        const t = parseFloat(localStorage.getItem(`wp-${item.id}-${item.ep}`) || "0") || 0;
        return { ...item, watchTimeSec: t };
      })
      .filter(item => item.watchTimeSec > 30)
      .slice(0, 8);
  } catch { return []; }
}
function loadAnimContinueWatching(): AnimContinueItem[] {
  try {
    const h = JSON.parse(localStorage.getItem("anim-watch-history") || "[]") as AnimContinueItem[];
    return h
      .map(item => {
        const key = `anim-wp-${item.id}-${item.type}-${item.season}-${item.ep}`;
        const t = parseFloat(localStorage.getItem(key) || "0") || 0;
        return { ...item, watchTimeSec: t };
      })
      .filter(item => item.watchTimeSec > 30)
      .slice(0, 6);
  } catch { return []; }
}

const GENRES_AR: { ar: string; en: string; color: string; animeId: number }[] = [
  { ar: "الكل",       en: "",              color: "#8B5CF6", animeId: 0      },
  { ar: "أكشن",       en: "Action",        color: "#EF4444", animeId: 21459  },
  { ar: "مغامرة",     en: "Adventure",     color: "#F97316", animeId: 113415 },
  { ar: "كوميدي",     en: "Comedy",        color: "#EAB308", animeId: 21202  },
  { ar: "دراما",      en: "Drama",         color: "#8B5CF6", animeId: 9253   },
  { ar: "فانتازيا",   en: "Fantasy",       color: "#06B6D4", animeId: 101922 },
  { ar: "خيال علمي",  en: "Sci-Fi",        color: "#3B82F6", animeId: 5114   },
  { ar: "رياضة",      en: "Sports",        color: "#10B981", animeId: 124194 },
  { ar: "رومانسي",    en: "Romance",       color: "#EC4899", animeId: 101921 },
  { ar: "إيسيكاي",    en: "Isekai",        color: "#059669", animeId: 108632 },
  { ar: "نفسي",       en: "Psychological", color: "#7C3AED", animeId: 31646  },
  { ar: "رعب",        en: "Horror",        color: "#6B7280", animeId: 98478  },
  { ar: "غموض",       en: "Mystery",       color: "#64748B", animeId: 100388 },
];

function genreImg(animeId: number) {
  return animeId ? `https://img.anili.st/media/${animeId}` : "";
}

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
  Page(perPage: 16) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", status: RELEASING) {
      id title { romaji } coverImage { large } averageScore episodes nextAiringEpisode { episode }
    }
  }
}`;

const MOVIES_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, sort: POPULARITY_DESC, format: MOVIE, countryOfOrigin: "JP") {
      id title { romaji } coverImage { large } averageScore
    }
  }
}`;

const TOP_RATED_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, sort: SCORE_DESC, countryOfOrigin: "JP", format_in: [TV, MOVIE], averageScore_greater: 75) {
      id title { romaji } coverImage { large } averageScore episodes format
    }
  }
}`;

const SEASON_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, season: SPRING, seasonYear: 2026, sort: POPULARITY_DESC, format_in: [TV, ONA], countryOfOrigin: "JP") {
      id title { romaji } coverImage { large } averageScore nextAiringEpisode { episode }
    }
  }
}`;

const NEW_SEASON_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, sort: START_DATE_DESC, countryOfOrigin: "JP", format_in: [TV, ONA], status_in: [RELEASING, NOT_YET_RELEASED]) {
      id title { romaji } coverImage { large } averageScore nextAiringEpisode { episode } startDate { year month }
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
  const [popular, setPopular]     = useState<any[]>(_homeCache?.popular || []);
  const [recent, setRecent]       = useState<any[]>(_homeCache?.recent || []);
  const [trending, setTrending]   = useState<any[]>(_homeCache?.trending || []);
  const [movies, setMovies]       = useState<any[]>(_homeCache?.movies || []);
  const [topRated, setTopRated]   = useState<any[]>(_homeCache?.topRated || []);
  const [seasonal, setSeasonal]   = useState<any[]>(_homeCache?.seasonal || []);
  const [newSeason, setNewSeason] = useState<any[]>(_homeCache?.newSeason || []);
  const [loading, setLoading]     = useState(!_homeCache);
  const [genreLoading, setGenreLoading] = useState(false);
  const [page, setPage]           = useState(1);
  const [hasMore, setHasMore]     = useState(_homeCache?.hasMore ?? true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hero, setHero]           = useState<any>(_homeCache?.hero || null);
  const [heroIdx, setHeroIdx]     = useState(0);
  const [heroDir, setHeroDir]     = useState(1);
  const [selectedGenre, setSelectedGenre] = useState("");
  const touchStartX = useRef<number>(0);
  const heroList = popular.filter(a => a.bannerImage).slice(0, 8);
  const heroContainerRef = useRef<HTMLDivElement>(null);
  const [heroMouse, setHeroMouse] = useState({ x: 0, y: 0 });
  const [posterTilt, setPosterTilt] = useState({ rx: 0, ry: 0 });

  const handleHeroMouseMove = useCallback((e: React.MouseEvent<HTMLDivElement>) => {
    if (!heroContainerRef.current) return;
    const rect = heroContainerRef.current.getBoundingClientRect();
    const nx = ((e.clientX - rect.left) / rect.width - 0.5) * 2;
    const ny = ((e.clientY - rect.top) / rect.height - 0.5) * 2;
    setHeroMouse({ x: nx, y: ny });
    setPosterTilt({ rx: ny * -12, ry: nx * 15 });
  }, []);

  const handleHeroMouseLeave = useCallback(() => {
    setHeroMouse({ x: 0, y: 0 });
    setPosterTilt({ rx: 0, ry: 0 });
  }, []);

  const fetch$ = async (query: string, variables?: any) => {
    const r = await fetch("https://graphql.anilist.co", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query, variables }),
    });
    return (await r.json()).data?.Page;
  };

  const [continueWatching, setContinueWatching] = useState<ContinueItem[]>([]);
  const [animContinue, setAnimContinue] = useState<AnimContinueItem[]>([]);
  const [animationMovies, setAnimationMovies] = useState<any[]>([]);

  /* Load continue-watching from localStorage (fast, synchronous) */
  useEffect(() => {
    setContinueWatching(loadContinueWatching());
    setAnimContinue(loadAnimContinueWatching());
  }, []);

  /* Load popular animation movies from TMDB */
  useEffect(() => {
    const key = "8265bd1679663a7ea12ac168da84d2e8";
    fetch(`https://api.themoviedb.org/3/discover/movie?api_key=${key}&language=ar&with_genres=16&sort_by=popularity.desc&page=1`)
      .then(r => r.json())
      .then(d => setAnimationMovies((d.results || []).slice(0, 10)))
      .catch(() => {});
  }, []);

  useEffect(() => {
    /* If cache exists → skip fetch entirely, data is already in state */
    if (_homeCache) return;

    async function load() {
      setLoading(true);
      try {
        /* ── Step 1: load popular first — shows hero + grid immediately ── */
        const pop = await fetch$(buildPopularQuery(""), { page: 1, perPage: 12 });
        const popMedia = pop?.media || [];
        const hasMorePop = pop?.pageInfo?.hasNextPage ?? false;
        const heroes = popMedia.filter((a: any) => a.bannerImage);
        const heroItem = heroes[0] || popMedia[0];
        setPopular(popMedia);
        setHasMore(hasMorePop);
        setHero(heroItem);
        setLoading(false); /* ← hero + popular visible now, rest loads below */

        /* ── Step 2: remaining 6 queries fire in parallel (non-blocking) ── */
        const [rec, trend, mov, top, seas, newS] = await Promise.all([
          fetch$(RECENT_QUERY, { page: 1, perPage: 16 }),
          fetch$(TRENDING_QUERY),
          fetch$(MOVIES_QUERY),
          fetch$(TOP_RATED_QUERY),
          fetch$(SEASON_QUERY),
          fetch$(NEW_SEASON_QUERY),
        ]);
        const recMedia   = rec?.media   || [];
        const trendMedia = trend?.media || [];
        const movMedia   = mov?.media   || [];
        const topMedia   = top?.media   || [];
        const seasMedia  = seas?.media  || [];
        const newSMedia  = newS?.media  || [];
        setRecent(recMedia);
        setTrending(trendMedia);
        setMovies(movMedia);
        setTopRated(topMedia);
        setSeasonal(seasMedia);
        setNewSeason(newSMedia);

        /* ── Persist to module-level cache ── */
        _homeCache = {
          popular: popMedia, recent: recMedia, trending: trendMedia,
          movies: movMedia, topRated: topMedia, seasonal: seasMedia,
          newSeason: newSMedia, hero: heroItem, hasMore: hasMorePop,
        };
      } catch {
        setLoading(false);
      }
    }
    load();
  }, []);

  useEffect(() => {
    if (!popular.length || selectedGenre) return;
    const heroes = popular.filter(a => a.bannerImage);
    if (heroes.length <= 1) return;
    const t = setInterval(() => {
      setHeroDir(1);
      setHeroIdx(i => {
        const next = (i + 1) % heroes.length;
        setHero(heroes[next]);
        return next;
      });
    }, 7000);
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

      {/* Hero Banner — Modern Cinematic */}
      {hero && !selectedGenre && (
        <div
          ref={heroContainerRef}
          className="relative w-full overflow-hidden select-none"
          style={{ height: 560 }}
          onMouseMove={handleHeroMouseMove}
          onMouseLeave={handleHeroMouseLeave}
          onTouchStart={e => { touchStartX.current = e.touches[0].clientX; }}
          onTouchEnd={e => {
            const dx = e.changedTouches[0].clientX - touchStartX.current;
            if (Math.abs(dx) < 40) return;
            if (heroList.length <= 1) return;
            const dir = dx < 0 ? 1 : -1;
            const next = (heroIdx + dir + heroList.length) % heroList.length;
            setHeroDir(dir);
            setHeroIdx(next);
            setHero(heroList[next]);
          }}
        >
          {/* Parallax background — moves with mouse */}
          <AnimatePresence mode="sync">
            <motion.div
              key={hero.id + "-bg"}
              className="absolute inset-0"
              style={{ inset: "-30px" }}
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.9, ease: "easeInOut" }}
            >
              <motion.img
                src={hero.bannerImage || hero.coverImage?.extraLarge || hero.coverImage?.large}
                alt=""
                className="w-full h-full object-cover"
                draggable={false}
                initial={{ scale: 1.12 }}
                animate={{
                  scale: 1.06,
                  x: heroMouse.x * 18,
                  y: heroMouse.y * 10,
                }}
                transition={{
                  scale: { duration: 9, ease: "linear" },
                  x: { duration: 0.8, ease: "easeOut" },
                  y: { duration: 0.8, ease: "easeOut" },
                }}
              />
            </motion.div>
          </AnimatePresence>

          {/* Cinematic overlays */}
          <div className="absolute inset-0" style={{ background: "linear-gradient(to top, #09090B 0%, #09090B 5%, rgba(9,9,11,0.88) 40%, rgba(9,9,11,0.3) 75%, rgba(9,9,11,0.1) 100%)" }} />
          <div className="absolute inset-0" style={{ background: "linear-gradient(to right, rgba(9,9,11,0.92) 0%, rgba(9,9,11,0.5) 45%, transparent 70%)" }} />
          <div className="absolute inset-0" style={{ background: "radial-gradient(ellipse at 65% 40%, rgba(139,92,246,0.07) 0%, transparent 55%)" }} />

          {/* Purple accent glow at bottom */}
          <div className="absolute bottom-0 left-0 right-0 h-32" style={{ background: "linear-gradient(to top, rgba(109,40,217,0.12), transparent)" }} />

          {/* ── Content Row ── */}
          <div className="absolute inset-0 flex items-end pb-10 px-5">
            <div className="flex items-end justify-between w-full gap-4">

              {/* Left: Text + Buttons */}
              <AnimatePresence mode="wait">
                <motion.div
                  key={hero.id + "-text"}
                  className="flex-1 min-w-0"
                  initial={{ opacity: 0, x: 20 }}
                  animate={{ opacity: 1, x: 0 }}
                  exit={{ opacity: 0, x: -10, transition: { duration: 0.18 } }}
                  transition={{ duration: 0.5, ease: [0.22, 1, 0.36, 1], delay: 0.1 }}
                >
                  {/* Badges row */}
                  <motion.div
                    className="flex items-center gap-1.5 mb-3 flex-wrap"
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.4, delay: 0.2 }}
                  >
                    {hero.genres?.slice(0, 3).map((g: string) => (
                      <span key={g} className="text-[9px] font-black bg-white/10 backdrop-blur-md text-white/75 px-2.5 py-0.5 rounded-full border border-white/10 tracking-wide">
                        {GENRES_AR.find(x => x.en === g)?.ar || g}
                      </span>
                    ))}
                    {hero.averageScore && (
                      <span className="text-[9px] font-black bg-yellow-500/20 border border-yellow-500/30 text-yellow-300 px-2 py-0.5 rounded-full flex items-center gap-0.5">
                        <Star className="w-2.5 h-2.5 fill-current" /> {(hero.averageScore / 10).toFixed(1)}
                      </span>
                    )}
                    {hero.status === "RELEASING" && (
                      <span className="text-[9px] font-black bg-red-500/15 border border-red-500/25 text-red-400 px-2 py-0.5 rounded-full flex items-center gap-1">
                        <span className="w-1.5 h-1.5 rounded-full bg-red-400 animate-pulse inline-block" /> يُبث الآن
                      </span>
                    )}
                  </motion.div>

                  {/* Title — big & bold */}
                  <motion.h1
                    className="font-black text-white mb-1.5 tracking-tight leading-none"
                    style={{ fontSize: "clamp(28px, 6vw, 42px)", textShadow: "0 4px 30px rgba(0,0,0,0.9)" }}
                    initial={{ opacity: 0, y: 12 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.45, delay: 0.25 }}
                  >
                    {hero.title?.romaji}
                  </motion.h1>

                  {/* Subtitle */}
                  <motion.p
                    className="text-white/45 text-xs font-bold mb-5"
                    initial={{ opacity: 0, y: 6 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.4, delay: 0.3 }}
                  >
                    {hero.episodes ? `${hero.episodes} حلقة` : ""}
                    {hero.episodes && hero.format ? " · " : ""}
                    {hero.format === "MOVIE" ? "فيلم" : hero.format === "ONA" ? "أونا" : hero.format === "OVA" ? "أوفا" : ""}
                  </motion.p>

                  {/* CTA Buttons */}
                  <motion.div
                    className="flex gap-2.5 items-center"
                    initial={{ opacity: 0, y: 8 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.4, delay: 0.35 }}
                  >
                    <Link href={`/episodes/${hero.id}`}>
                      <motion.button
                        whileTap={{ scale: 0.93 }}
                        whileHover={{ scale: 1.03 }}
                        className="relative overflow-hidden text-white text-sm font-black px-7 py-3.5 rounded-2xl flex items-center gap-2 shadow-2xl"
                        style={{ background: "linear-gradient(135deg, #8B5CF6 0%, #6D28D9 100%)", boxShadow: "0 8px 28px rgba(109,40,217,0.5)" }}
                      >
                        <motion.span
                          className="absolute inset-0 bg-gradient-to-r from-transparent via-white/25 to-transparent -skew-x-12"
                          initial={{ x: "-120%" }}
                          animate={{ x: "220%" }}
                          transition={{ duration: 1.8, repeat: Infinity, repeatDelay: 3, ease: "easeInOut" }}
                        />
                        <Play className="w-4 h-4 fill-current relative z-10" />
                        <span className="relative z-10">مشاهدة الآن</span>
                      </motion.button>
                    </Link>
                    <Link href={`/anime/${hero.id}`}>
                      <motion.button
                        whileTap={{ scale: 0.93 }}
                        whileHover={{ scale: 1.03, backgroundColor: "rgba(255,255,255,0.15)" }}
                        className="bg-white/8 backdrop-blur-xl text-white text-sm font-black px-5 py-3.5 rounded-2xl border border-white/15 flex items-center gap-1.5 transition-colors"
                      >
                        <Info className="w-4 h-4" /> التفاصيل
                      </motion.button>
                    </Link>
                  </motion.div>
                </motion.div>
              </AnimatePresence>

              {/* Right: 3D Poster Card — visible on all screens */}
              <AnimatePresence mode="wait">
                <motion.div
                  key={hero.id + "-poster"}
                  className="flex-shrink-0"
                  initial={{ opacity: 0, scale: 0.85, y: 20 }}
                  animate={{ opacity: 1, scale: 1, y: 0 }}
                  exit={{ opacity: 0, scale: 0.9, transition: { duration: 0.2 } }}
                  transition={{ duration: 0.6, ease: [0.22, 1, 0.36, 1], delay: 0.2 }}
                  style={{ perspective: "600px" }}
                >
                  <motion.div
                    className="relative overflow-hidden shadow-2xl bg-[#111]"
                    style={{
                      width: "clamp(82px, 22vw, 120px)",
                      height: "clamp(118px, 31vw, 172px)",
                      borderRadius: 14,
                      transformStyle: "preserve-3d",
                      transform: `rotateX(${posterTilt.rx}deg) rotateY(${posterTilt.ry}deg)`,
                      transition: "transform 0.6s cubic-bezier(0.22, 1, 0.36, 1)",
                      boxShadow: "0 20px 60px rgba(0,0,0,0.8), 0 0 0 1px rgba(255,255,255,0.1)",
                    }}
                  >
                    <img
                      src={hero.coverImage?.extraLarge || hero.coverImage?.large}
                      alt={hero.title?.romaji}
                      className="w-full h-full object-cover"
                      draggable={false}
                    />
                    {/* Poster shimmer */}
                    <motion.div
                      className="absolute inset-0 bg-gradient-to-br from-white/15 via-transparent to-transparent"
                      animate={{ opacity: [0.3, 0.6, 0.3] }}
                      transition={{ duration: 3, repeat: Infinity, ease: "easeInOut" }}
                    />
                  </motion.div>
                </motion.div>
              </AnimatePresence>
            </div>
          </div>

          {/* Left / Right navigation arrows */}
          {heroList.length > 1 && (
            <>
              {/* Left arrow = next (RTL) */}
              <motion.button
                whileTap={{ scale: 0.88 }}
                onClick={() => {
                  const next = (heroIdx + 1) % heroList.length;
                  setHeroDir(1); setHeroIdx(next); setHero(heroList[next]);
                }}
                className="absolute left-3 top-1/2 -translate-y-1/2 z-20 w-9 h-9 rounded-full flex items-center justify-center"
                style={{ background: "rgba(0,0,0,0.55)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.15)" }}
              >
                <ChevronLeft className="w-5 h-5 text-white" />
              </motion.button>

              {/* Right arrow = previous (RTL) */}
              <motion.button
                whileTap={{ scale: 0.88 }}
                onClick={() => {
                  const prev = (heroIdx - 1 + heroList.length) % heroList.length;
                  setHeroDir(-1); setHeroIdx(prev); setHero(heroList[prev]);
                }}
                className="absolute right-3 top-1/2 -translate-y-1/2 z-20 w-9 h-9 rounded-full flex items-center justify-center"
                style={{ background: "rgba(0,0,0,0.55)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.15)" }}
              >
                <ChevronRight className="w-5 h-5 text-white" />
              </motion.button>
            </>
          )}

          {/* Hero indicator dots — centered at bottom */}
          {heroList.length > 1 && (
            <div className="absolute bottom-4 left-0 right-0 flex justify-center gap-1.5 items-center">
              {heroList.map((_, i) => (
                <motion.button
                  key={i}
                  onClick={() => {
                    const d = i > heroIdx ? 1 : -1;
                    setHeroDir(d);
                    setHeroIdx(i);
                    setHero(heroList[i]);
                  }}
                  animate={{
                    width: i === heroIdx ? 24 : 5,
                    opacity: i === heroIdx ? 1 : 0.28,
                    backgroundColor: i === heroIdx ? "#8B5CF6" : "#ffffff",
                  }}
                  transition={{ duration: 0.3, ease: [0.22, 1, 0.36, 1] }}
                  className="h-1.5 rounded-full"
                  style={{ width: 5 }}
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
              {g.animeId > 0 && (
                <img
                  src={genreImg(g.animeId)}
                  alt=""
                  className="absolute inset-0 w-full h-full object-cover"
                  onError={e => { (e.target as HTMLImageElement).style.display = "none"; }}
                />
              )}
              <div
                className="absolute inset-0"
                style={{
                  background: selectedGenre === g.en
                    ? `linear-gradient(135deg, ${g.color}EE, ${g.color}99)`
                    : g.animeId > 0
                      ? "linear-gradient(135deg, rgba(0,0,0,0.7), rgba(0,0,0,0.5))"
                      : `linear-gradient(135deg, ${g.color}33, ${g.color}11)`,
                }}
              />
              <span className={`relative z-10 font-black text-[11px] font-['Cairo'] px-3 flex items-center justify-center h-full
                ${selectedGenre === g.en ? "text-white" : g.animeId > 0 ? "text-white/85" : `text-white/55`}`}>
                {g.ar}
              </span>
            </motion.button>
          ))}
        </div>
      </div>

      {/* ── تابع المشاهدة (Continue Watching) ── */}
      {(continueWatching.length > 0 || animContinue.length > 0) && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                <RotateCw className="w-3.5 h-3.5 text-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">تابع المشاهدة</h2>
            </div>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {/* Anime history items */}
            {continueWatching.map(item => {
              const progressPct = Math.min(100, Math.round((item.watchTimeSec / (24 * 60)) * 100));
              return (
                <Link key={`anime-${item.id}-${item.ep}`} href={`/watch?anime=${item.id}&ep=${item.ep}&title=${encodeURIComponent(item.title)}&cover=${encodeURIComponent(item.cover || "")}`}>
                  <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                    <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                      {item.cover
                        ? <img src={item.cover} alt="" className="w-full h-full object-cover" loading="lazy" />
                        : <div className="w-full h-full bg-violet-900/20" />}
                      <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/20 to-transparent" />
                      <div className="absolute top-2 right-2 bg-violet-600 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                        ح {item.ep}
                      </div>
                      <div className="absolute top-2 left-2 flex items-center gap-0.5 bg-black/65 backdrop-blur-md text-white/70 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-white/10">
                        {fmtMinute(item.watchTimeSec)}
                      </div>
                      <div className="absolute bottom-10 left-2 right-2 h-0.5 rounded-full bg-white/15 overflow-hidden">
                        <div className="h-full rounded-full bg-violet-500" style={{ width: `${progressPct}%` }} />
                      </div>
                      <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                        <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{item.title}</p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
            {/* Animation history items */}
            {animContinue.map(item => {
              const estDur = item.type === "movie" ? 90 * 60 : 24 * 60;
              const progressPct = Math.min(100, Math.round((item.watchTimeSec / estDur) * 100));
              const href = (() => {
                const t = encodeURIComponent(item.title);
                const p = encodeURIComponent(item.poster || "");
                if (item.type === "tv") return `/animation/watch?title=${t}&type=tv&id=${item.id}&ep=${item.ep}&season=${item.season}&poster=${p}`;
                return `/animation/watch?title=${t}&type=movie&id=${item.id}&ep=1&season=1&poster=${p}`;
              })();
              return (
                <Link key={`anim-${item.id}-${item.type}-${item.ep}`} href={href}>
                  <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                    <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-primary/15 shadow-lg shadow-black/50">
                      {item.poster
                        ? <img src={item.poster} alt="" className="w-full h-full object-cover" loading="lazy" />
                        : <div className="w-full h-full bg-violet-900/20" />}
                      <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/20 to-transparent" />
                      {/* Anim badge */}
                      <div className="absolute top-2 right-2 bg-primary/80 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                        {item.type === "tv" ? `ح ${item.ep}` : "فيلم"}
                      </div>
                      <div className="absolute top-2 left-2 flex items-center gap-0.5 bg-black/65 backdrop-blur-md text-white/70 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-white/10">
                        {fmtMinute(item.watchTimeSec)}
                      </div>
                      <div className="absolute bottom-10 left-2 right-2 h-0.5 rounded-full bg-white/15 overflow-hidden">
                        <div className="h-full rounded-full bg-primary" style={{ width: `${progressPct}%` }} />
                      </div>
                      <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                        <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{item.title}</p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* ── موسم الربيع 2026 ── */}
      {seasonal.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#06B6D4,#0284C7)" }}>
                <Star className="w-3.5 h-3.5 text-white fill-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">موسم الربيع 2026</h2>
            </div>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {seasonal.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/88 via-black/10 to-transparent" />
                    {anime.averageScore && (
                      <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/65 backdrop-blur-md text-yellow-400 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                        <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    {anime.nextAiringEpisode && (
                      <div className="absolute top-2 left-2 bg-emerald-500 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── قسم الأنيميشن ── */}
      {!selectedGenre && (
        <div className="mt-5 px-4">
          {/* Banner */}
          <Link href="/animations">
            <motion.div
              whileTap={{ scale: 0.97 }}
              className="relative w-full h-[110px] rounded-3xl overflow-hidden cursor-pointer mb-3 shadow-2xl shadow-black/60"
              style={{ background: "linear-gradient(135deg,#1a1040 0%,#2d1b69 40%,#0f3460 100%)" }}
            >
              {/* Decorative circles */}
              <div className="absolute -top-8 -left-8 w-40 h-40 rounded-full opacity-20" style={{ background: "radial-gradient(circle,#7c3aed,transparent)" }} />
              <div className="absolute -bottom-6 -right-4 w-32 h-32 rounded-full opacity-15" style={{ background: "radial-gradient(circle,#06b6d4,transparent)" }} />
              {/* Stars */}
              {[{top:"18%",left:"12%",size:2},{top:"60%",left:"25%",size:1.5},{top:"30%",left:"75%",size:2.5},{top:"70%",left:"85%",size:1.5},{top:"15%",left:"55%",size:1}].map((s,i) => (
                <div key={i} className="absolute rounded-full bg-white/60 animate-pulse" style={{ top:s.top,left:s.left,width:s.size,height:s.size }} />
              ))}
              <div className="absolute inset-0 flex items-center justify-between px-5">
                <div className="space-y-1.5">
                  <div className="flex items-center gap-2">
                    <div className="w-7 h-7 rounded-xl flex items-center justify-center shadow-lg" style={{ background: "linear-gradient(135deg,#7c3aed,#06b6d4)" }}>
                      <Clapperboard className="w-3.5 h-3.5 text-white" />
                    </div>
                    <span className="text-[10px] text-white/40 font-['Cairo'] tracking-wider uppercase">Animation</span>
                  </div>
                  <h3 className="text-[20px] font-black text-white font-['Cairo'] leading-tight">عالم الأنيميشن</h3>
                  <p className="text-[10px] text-white/45 font-['Cairo']">أفلام ومسلسلات كرتون عالمية</p>
                </div>
                <div className="flex items-center gap-1.5 border border-white/20 px-3.5 py-2 rounded-2xl" style={{ background: "rgba(255,255,255,0.07)", backdropFilter: "blur(12px)" }}>
                  <span className="text-[11px] font-black text-white font-['Cairo']">اكتشف</span>
                  <ChevronLeft className="w-3.5 h-3.5 text-white" />
                </div>
              </div>
            </motion.div>
          </Link>

          {/* Popular animation movies row */}
          {animationMovies.length > 0 && (
            <>
              <div className="flex items-center justify-between mb-2.5">
                <div className="flex items-center gap-2">
                  <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#7c3aed,#4f46e5)" }}>
                    <Film className="w-3.5 h-3.5 text-white" />
                  </div>
                  <h2 className="text-[13px] font-black font-['Cairo'] text-white">أفلام أنيميشن مميزة</h2>
                </div>
                <Link href="/animations">
                  <button className="text-[10px] text-violet-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-violet-500/8 px-2.5 py-1 rounded-xl border border-violet-500/15">
                    عرض الكل <ChevronLeft className="w-3 h-3" />
                  </button>
                </Link>
              </div>
              <div className="flex gap-3 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
                {animationMovies.map(m => (
                  <Link key={m.id} href={`/animation/movie/${m.id}`}>
                    <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[120px] cursor-pointer">
                      <div className="relative w-[120px] h-[170px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                        {m.poster_path
                          ? <img src={`https://image.tmdb.org/t/p/w300${m.poster_path}`} alt="" className="w-full h-full object-cover" loading="lazy" />
                          : <div className="w-full h-full bg-violet-900/20 flex items-center justify-center"><Film className="w-8 h-8 text-violet-600/30" /></div>
                        }
                        <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                        {m.vote_average > 0 && (
                          <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                            <Star className="w-1.5 h-1.5 fill-current" /> {m.vote_average.toFixed(1)}
                          </div>
                        )}
                        <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                          <p className="text-[9px] text-white/90 font-bold line-clamp-2 leading-tight">{m.title}</p>
                        </div>
                      </div>
                    </motion.div>
                  </Link>
                ))}
              </div>
            </>
          )}
        </div>
      )}

      {/* ── Trending — يُبث الآن ── */}
      {trending.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>
                <Radio className="w-3.5 h-3.5 text-white" />
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
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/15 to-transparent" />
                    <div className="absolute top-2 right-2 w-6 h-6 rounded-xl flex items-center justify-center text-[9px] font-black text-white shadow-lg" style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)" }}>{i + 1}</div>
                    {anime.nextAiringEpisode && (
                      <div className="absolute top-2 left-2 bg-emerald-500 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── آخر الإصدارات (Recent) ── */}
      {recent.length > 0 && !selectedGenre && (
        <div className="mt-6">
          <div className="flex items-center justify-between px-4 mb-3">
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
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {recent.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                    {anime.nextAiringEpisode && (
                      <div className="absolute top-2 left-2 bg-emerald-500 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black shadow-md shadow-emerald-500/40">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    {anime.averageScore && (
                      <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/65 backdrop-blur-md text-yellow-400 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                        <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── رائج الآن (New Season Upcoming) ── */}
      {newSeason.length > 0 && !selectedGenre && (
        <div className="mt-6">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#F97316,#EA580C)" }}>
                <Flame className="w-3.5 h-3.5 text-white fill-orange-200" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">رائج الآن</h2>
            </div>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {newSeason.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                    {anime.nextAiringEpisode && (
                      <div className="absolute top-2 left-2 bg-orange-500 text-white text-[7px] px-1.5 py-0.5 rounded-lg font-black">
                        حلقة {anime.nextAiringEpisode.episode}
                      </div>
                    )}
                    {anime.averageScore && (
                      <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/65 backdrop-blur-md text-yellow-400 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                        <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}


      {/* ── Top Rated ── */}
      {topRated.length > 0 && !selectedGenre && (
        <div className="mt-6">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#EAB308,#CA8A04)" }}>
                <Star className="w-3.5 h-3.5 text-white fill-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">أعلى تقييماً</h2>
            </div>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {topRated.map((anime, i) => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                    <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                      <Star className="w-1.5 h-1.5 fill-current" /> {anime.averageScore ? (anime.averageScore / 10).toFixed(1) : "—"}
                    </div>
                    {anime.format === "MOVIE" && (
                      <div className="absolute top-2 left-2 bg-primary text-white text-[7px] px-1.5 py-0.5 rounded-md font-black shadow-md shadow-primary/50">فيلم</div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                      <div className="text-[7.5px] text-yellow-400/60 font-black font-mono mb-0.5">#{i + 1}</div>
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── Movies ── */}
      {movies.length > 0 && !selectedGenre && (
        <div className="mt-6">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#3B82F6,#1D4ED8)" }}>
                <Film className="w-3.5 h-3.5 text-white" />
              </div>
              <h2 className="text-[13px] font-black font-['Cairo'] text-white">أفلام أنمي</h2>
            </div>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-1" style={{ scrollbarWidth: "none" }}>
            {movies.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[136px] cursor-pointer">
                  <div className="relative w-[136px] h-[192px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                    <div className="absolute top-2 left-2 bg-blue-500 text-white text-[7px] px-1.5 py-0.5 rounded-md font-black shadow-md shadow-blue-500/50">فيلم</div>
                    {anime.averageScore && (
                      <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7.5px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                        <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-2 pb-2.5">
                      <p className="text-[9.5px] text-white/90 font-bold truncate leading-tight">{anime.title?.romaji}</p>
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
            <Flame className="w-3.5 h-3.5 text-white fill-red-200" />
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
