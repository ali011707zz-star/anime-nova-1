import { useEffect, useState, useCallback, useRef } from "react";
import { Link } from "wouter";
import { Play, Loader2, ChevronDown, Star, ChevronLeft, ChevronRight, Info, Flame, Film, RotateCw, Clapperboard, Tv2 } from "lucide-react";
import { motion, AnimatePresence } from "framer-motion";

/* ── Module-level cache — survives component unmount/remount so categories
      don't disappear when navigating Home → AnimeDetail → Home ── */
interface HomeCache {
  popular: any[]; movies: any[];
  hero: any; hasMore: boolean;
}
let _homeCache: HomeCache | null = null;
// Separate cache for today's airing episodes (independent fetch, persists between navigations)
let _cachedTodayEps: any[] | null = null;

/* ── Continue Watching helpers ── */
interface MergedContinueItem {
  key: string;
  kind: "anime" | "animation";
  id: string | number;
  title: string;
  cover: string;      // poster/cover url
  ep: number;
  season?: number;
  animType?: "movie" | "tv";
  date: string;
  watchTimeSec: number;
  durationSec: number; // estimated
  href: string;
}
function fmtMinute(sec: number) {
  const m = Math.floor(sec / 60);
  const s = Math.floor(sec % 60);
  return `${m}:${String(s).padStart(2, "0")}`;
}
function loadMergedContinue(): MergedContinueItem[] {
  const out: MergedContinueItem[] = [];
  // Anime history
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    for (const item of h) {
      const t = parseFloat(localStorage.getItem(`wp-${item.id}-${item.ep}`) || "0") || 0;
      const href = `/watch?anime=${item.id}&ep=${item.ep}&title=${encodeURIComponent(item.title)}&cover=${encodeURIComponent(item.cover || "")}`;
      out.push({ key: `anime-${item.id}-${item.ep}`, kind: "anime", id: item.id, title: item.title, cover: item.cover || "", ep: item.ep, date: item.date || "", watchTimeSec: t, durationSec: 24 * 60, href });
    }
  } catch { /* skip */ }
  // Animation history
  try {
    const h: any[] = JSON.parse(localStorage.getItem("anim-watch-history") || "[]");
    for (const item of h) {
      const t = parseFloat(localStorage.getItem(`anim-wp-${item.id}-${item.type}-${item.season}-${item.ep}`) || "0") || 0;
      if (t < 30) continue;
      const p = encodeURIComponent(item.poster || "");
      const ti = encodeURIComponent(item.title);
      const href = item.type === "tv"
        ? `/animation/watch?title=${ti}&type=tv&id=${item.id}&ep=${item.ep}&season=${item.season}&poster=${p}`
        : `/animation/watch?title=${ti}&type=movie&id=${item.id}&ep=1&season=1&poster=${p}`;
      out.push({ key: `anim-${item.id}-${item.type}-${item.ep}`, kind: "animation", id: item.id, title: item.title, cover: item.poster || "", ep: item.ep, season: item.season, animType: item.type, date: item.date || "", watchTimeSec: t, durationSec: item.type === "movie" ? 90 * 60 : 24 * 60, href });
    }
  } catch { /* skip */ }
  // Sort by date (most recent first)
  out.sort((a, b) => (b.date > a.date ? 1 : -1));
  return out.slice(0, 10);
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
    media(type: ANIME, sort: POPULARITY_DESC, countryOfOrigin: "JP", format_in: [TV, MOVIE, OVA, ONA], isAdult: false, genre_not_in: ["Hentai"]${gf}) {
      id title { romaji english } coverImage { large extraLarge }
      bannerImage averageScore episodes genres status format
    }
  }
}`;
}

const SPRING_2026_QUERY = `query {
  Page(perPage: 20) {
    media(type: ANIME, season: SPRING, seasonYear: 2026, sort: POPULARITY_DESC, format_in: [TV, ONA], isAdult: false, genre_not_in: ["Hentai"]) {
      id title { romaji english } coverImage { large } averageScore episodes nextAiringEpisode { episode } status
    }
  }
}`;

const MOVIES_QUERY = `query {
  Page(perPage: 12) {
    media(type: ANIME, sort: POPULARITY_DESC, format: MOVIE, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"]) {
      id title { romaji } coverImage { large } averageScore
    }
  }
}`;

const TOP_RATED_QUERY = `query {
  Page(perPage: 14) {
    media(type: ANIME, sort: SCORE_DESC, countryOfOrigin: "JP", format_in: [TV, MOVIE], isAdult: false, genre_not_in: ["Hentai"], averageScore_greater: 75) {
      id title { romaji } coverImage { large } averageScore format status
    }
  }
}`;

const FALL_2025_QUERY = `query {
  Page(perPage: 14) {
    media(type: ANIME, season: FALL, seasonYear: 2025, sort: POPULARITY_DESC, format_in: [TV, ONA], isAdult: false, genre_not_in: ["Hentai"]) {
      id title { romaji } coverImage { large } averageScore episodes nextAiringEpisode { episode } status
    }
  }
}`;

const ISEKAI_QUERY = `query {
  Page(perPage: 14) {
    media(type: ANIME, sort: POPULARITY_DESC, genre_in: ["Isekai"], countryOfOrigin: "JP", format_in: [TV, ONA, MOVIE], isAdult: false) {
      id title { romaji } coverImage { large } averageScore format status
    }
  }
}`;

const TODAY_EPISODES_QUERY = `query($gt:Int,$lt:Int){
  Page(page:1,perPage:25){
    airingSchedules(airingAt_greater:$gt,airingAt_lesser:$lt,sort:[TIME_DESC]){
      episode airingAt
      media{id title{romaji english}coverImage{large}averageScore popularity format isAdult countryOfOrigin}
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
  const [movies, setMovies]       = useState<any[]>(_homeCache?.movies || []);
  const [loading, setLoading]     = useState(!_homeCache);
  const [genreLoading, setGenreLoading] = useState(false);
  const [page, setPage]           = useState(1);
  const [hasMore, setHasMore]     = useState(_homeCache?.hasMore ?? true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [topRated, setTopRated]   = useState<any[]>([]);
  const [fall2025, setFall2025]   = useState<any[]>([]);
  const [isekaiList, setIsekaiList] = useState<any[]>([]);
  const [hero, setHero]           = useState<any>(() => {
    if (!_homeCache) return null;
    const heroes = _homeCache.popular.filter((a: any) => a.bannerImage);
    if (!heroes.length) return _homeCache.hero;
    return heroes[Math.floor(Math.random() * heroes.length)];
  });
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

  const [mergedContinue, setMergedContinue] = useState<MergedContinueItem[]>([]);
  const [animationMovies, setAnimationMovies] = useState<any[]>([]);
  const [animationTv, setAnimationTv] = useState<any[]>([]);
  const [spring2026, setSpring2026] = useState<any[]>([]);
  const [todayEps, setTodayEps] = useState<any[]>(_cachedTodayEps || []);
  const [todayChecking, setTodayChecking] = useState(false);

  /* Load continue-watching from localStorage (fast, synchronous) */
  useEffect(() => {
    setMergedContinue(loadMergedContinue());
  }, []);

  /* Load popular animation movies + TV from TMDB, and trending news from AniList */
  useEffect(() => {
    const key = "8265bd1679663a7ea12ac168da84d2e8";
    fetch(`https://api.themoviedb.org/3/discover/movie?api_key=${key}&language=ar&with_genres=16&with_original_language=ja&with_origin_country=JP&sort_by=popularity.desc&page=1`)
      .then(r => r.json())
      .then(d => setAnimationMovies((d.results || []).filter((m: any) => m.original_language === 'ja').slice(0, 10)))
      .catch(() => {});
    fetch(`https://api.themoviedb.org/3/discover/tv?api_key=${key}&language=ar&with_genres=16&with_original_language=ja&with_origin_country=JP&sort_by=popularity.desc&page=1`)
      .then(r => r.json())
      .then(d => setAnimationTv((d.results || []).filter((m: any) => m.original_language === 'ja').slice(0, 10)))
      .catch(() => {});
  }, []);

  /* Load Spring 2026 seasonal anime */
  useEffect(() => {
    fetch("https://graphql.anilist.co", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: SPRING_2026_QUERY }),
    })
      .then(r => r.json())
      .then(d => setSpring2026(d.data?.Page?.media || []))
      .catch(() => {});
  }, []);

  /* Load extra sections — Top Rated, Fall 2025, Isekai */
  useEffect(() => {
    const post = (q: string) => fetch("https://graphql.anilist.co", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: q }),
    }).then(r => r.json());
    post(TOP_RATED_QUERY).then(d => setTopRated(d.data?.Page?.media || [])).catch(() => {});
    post(FALL_2025_QUERY).then(d => setFall2025(d.data?.Page?.media || [])).catch(() => {});
    post(ISEKAI_QUERY).then(d => setIsekaiList(d.data?.Page?.media || [])).catch(() => {});
  }, []);

  /* Load today's airing episodes (last 72h → next 12h) + verify Arabic availability */
  useEffect(() => {
    if (_cachedTodayEps) return; // already cached — no re-fetch needed
    const now = Math.floor(Date.now() / 1000);
    const gt  = now - 72 * 3600;   // آخر 3 أيام
    const lt  = now + 12 * 3600;   // 12 ساعة قادمة
    setTodayChecking(true);
    fetch("https://graphql.anilist.co", {
      method: "POST", headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: TODAY_EPISODES_QUERY, variables: { gt, lt } }),
    })
      .then(r => r.json())
      .then(async d => {
        const ECCHI_BLOCKED = new Set(["Hentai"]);
        const now = Math.floor(Date.now() / 1000);
        // فقط الحلقات التي بثّت فعلاً (ليس المستقبلية) وأنمي ياباني فقط
        const arr = (d.data?.Page?.airingSchedules || [])
          .filter((s: any) => {
            if (!s.media?.id || s.media?.isAdult) return false;
            if (s.airingAt > now) return false; // استثنِ الحلقات المستقبلية
            if (s.media?.countryOfOrigin && s.media.countryOfOrigin !== "JP") return false; // أنمي ياباني فقط
            const genres: string[] = s.media?.genres || [];
            return !genres.some((g: string) => ECCHI_BLOCKED.has(g));
          });
        if (!arr.length) { setTodayEps([]); setTodayChecking(false); return; }
        // فحص حقيقي لتوفر المصادر العربية عبر animelek
        const titles = arr.map((s: any) => s.media?.title?.romaji || s.media?.title?.english || "").filter(Boolean);
        try {
          const params = new URLSearchParams();
          titles.forEach((t: string) => params.append("t", t));
          const checkRes = await fetch(`/api/anime/check-arabic?${params}`, { signal: AbortSignal.timeout(20_000) });
          const { available } = await checkRes.json() as { available: string[] };
          const availSet = new Set(available.map((t: string) => t.toLowerCase().trim()));
          // صارم: فقط الحلقات المتوفرة في المصادر العربية — بدون fallback
          const filtered = arr.filter((s: any) => {
            const romaji  = (s.media?.title?.romaji  || "").toLowerCase().trim();
            const english = (s.media?.title?.english || "").toLowerCase().trim();
            return availSet.has(romaji) || availSet.has(english);
          });
          _cachedTodayEps = filtered;
          setTodayEps(filtered);
        } catch {
          // عند فشل الفحص: لا تعرض شيئاً (أفضل من عرض حلقات بدون مصادر عربية)
          _cachedTodayEps = [];
          setTodayEps([]);
        }
        setTodayChecking(false);
      })
      .catch(() => { setTodayChecking(false); });
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
        const heroItem = heroes[Math.floor(Math.random() * Math.max(1, heroes.length))] || popMedia[0];
        setPopular(popMedia);
        setHasMore(hasMorePop);
        setHero(heroItem);
        setLoading(false); /* ← hero + popular visible now, rest loads below */

        /* ── Step 2: load movies (non-blocking) ── */
        const mov = await fetch$(MOVIES_QUERY);
        const movMedia = mov?.media || [];
        setMovies(movMedia);

        /* ── Persist to module-level cache ── */
        _homeCache = {
          popular: popMedia, movies: movMedia,
          hero: heroItem, hasMore: hasMorePop,
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
          style={{ height: "clamp(310px, 50dvh, 390px)" }}
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
              transition={{ duration: 0.35, ease: "easeInOut" }}
            >
              <img
                src={hero.bannerImage || hero.coverImage?.extraLarge || hero.coverImage?.large}
                alt=""
                className="w-full h-full object-cover"
                draggable={false}
                style={{ transform: "scale(1.06)" }}
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
          <div className="absolute inset-0 flex items-end pb-7 px-4">
            <div className="flex items-end justify-between w-full gap-4">

              {/* Left: Text + Buttons */}
              <AnimatePresence mode="wait">
                <motion.div
                  key={hero.id + "-text"}
                  className="flex-1 min-w-0"
                  initial={{ opacity: 0, x: 20 }}
                  animate={{ opacity: 1, x: 0 }}
                  exit={{ opacity: 0, x: -10, transition: { duration: 0.18 } }}
                  transition={{ duration: 0.2, ease: [0.22, 1, 0.36, 1], delay: 0.04 }}
                >
                  {/* Badges row */}
                  <motion.div
                    className="flex items-center gap-1.5 mb-3 flex-wrap"
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.18, delay: 0.07 }}
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
                    style={{ fontSize: "clamp(21px, 6.5vw, 42px)", textShadow: "0 4px 30px rgba(0,0,0,0.9)" }}
                    initial={{ opacity: 0, y: 12 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.18, delay: 0.09 }}
                  >
                    {hero.title?.romaji}
                  </motion.h1>

                  {/* Subtitle */}
                  <motion.p
                    className="text-white/45 text-xs font-bold mb-3"
                    initial={{ opacity: 0, y: 6 }}
                    animate={{ opacity: 1, y: 0 }}
                    transition={{ duration: 0.18, delay: 0.11 }}
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
                    transition={{ duration: 0.18, delay: 0.13 }}
                  >
                    <Link href={`/episodes/${hero.id}`}>
                      <motion.button
                        whileTap={{ scale: 0.93 }}
                        whileHover={{ scale: 1.03 }}
                        className="relative overflow-hidden text-white text-sm font-black px-5 py-3 rounded-2xl flex items-center gap-2 shadow-2xl"
                        style={{ background: "linear-gradient(135deg, #8B5CF6 0%, #6D28D9 100%)", boxShadow: "0 8px 28px rgba(109,40,217,0.5)" }}
                      >
                        <Play className="w-4 h-4 fill-current relative z-10" />
                        <span className="relative z-10">مشاهدة الآن</span>
                      </motion.button>
                    </Link>
                    <Link href={`/anime/${hero.id}`}>
                      <motion.button
                        whileTap={{ scale: 0.93 }}
                        whileHover={{ scale: 1.03, backgroundColor: "rgba(255,255,255,0.15)" }}
                        className="bg-white/8 backdrop-blur-xl text-white text-sm font-black px-3.5 py-3 rounded-2xl border border-white/15 flex items-center gap-1.5 transition-colors"
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
                  transition={{ duration: 0.22, ease: [0.22, 1, 0.36, 1], delay: 0.08 }}
                  style={{ perspective: "600px" }}
                >
                  <div
                    className="relative overflow-hidden shadow-2xl bg-[#111]"
                    style={{
                      width: "clamp(82px, 22vw, 120px)",
                      height: "clamp(118px, 31vw, 172px)",
                      borderRadius: 14,
                      transform: `rotateX(${posterTilt.rx}deg) rotateY(${posterTilt.ry}deg)`,
                      transition: "transform 0.3s cubic-bezier(0.22, 1, 0.36, 1)",
                      boxShadow: "0 20px 60px rgba(0,0,0,0.8), 0 0 0 1px rgba(255,255,255,0.1)",
                    }}
                  >
                    <img
                      src={hero.coverImage?.extraLarge || hero.coverImage?.large}
                      alt={hero.title?.romaji}
                      className="w-full h-full object-cover"
                      draggable={false}
                    />
                  </div>
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
                  transition={{ duration: 0.15, ease: [0.22, 1, 0.36, 1] }}
                  className="h-1.5 rounded-full"
                  style={{ width: 5 }}
                />
              ))}
            </div>
          )}
        </div>
      )}

      {/* ── تابع المشاهدة (Continue Watching — merged anime + animation) ── */}
      {mergedContinue.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center"
                style={{ background: "linear-gradient(135deg,#8B5CF6,#6D28D9)", boxShadow: "0 4px 12px rgba(109,40,217,0.4)" }}>
                <RotateCw className="w-3.5 h-3.5 text-white" />
              </div>
              <div>
                <h2 className="text-[13px] font-black font-['Cairo'] text-white leading-none">تابع المشاهدة</h2>
                <p className="text-[9px] text-white/25 font-['Cairo'] mt-0.5">{mergedContinue.length} عنوان</p>
              </div>
            </div>
            <Link href="/history">
              <motion.button
                whileTap={{ scale: 0.92 }}
                className="flex items-center gap-1 px-3 py-1.5 rounded-xl text-[11px] font-black font-['Cairo'] transition-colors active:bg-white/10"
                style={{ background: "rgba(139,92,246,0.12)", border: "1px solid rgba(139,92,246,0.22)", color: "rgba(196,181,253,0.85)" }}>
                عرض الكل
              </motion.button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {mergedContinue.map(item => {
              const pct = Math.min(100, Math.round((item.watchTimeSec / item.durationSec) * 100));
              const isAnime = item.kind === "anime";
              const accentColor = isAnime ? "#8B5CF6" : "#06B6D4";
              const accentBg    = isAnime ? "rgba(139,92,246,0.85)" : "rgba(6,182,212,0.85)";
              const badgeLabel  = isAnime
                ? `ح ${item.ep}`
                : (item.animType === "movie" ? "فيلم" : `ح ${item.ep}`);
              return (
                <Link key={item.key} href={item.href}>
                  <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 110 }}>
                    {/* Card */}
                    <div className="relative rounded-[18px] overflow-hidden bg-[#111] shadow-xl"
                      style={{ width: 110, height: 156, border: `1px solid ${accentColor}22` }}>
                      {/* Poster */}
                      {item.cover
                        ? <img src={item.cover} alt="" className="w-full h-full object-cover" loading="lazy" />
                        : <div className="w-full h-full flex items-center justify-center" style={{ background: `${accentColor}18` }}>
                            <Play className="w-8 h-8" style={{ color: `${accentColor}50` }} />
                          </div>
                      }

                      {/* Dark gradient */}
                      <div className="absolute inset-0"
                        style={{ background: "linear-gradient(to top, rgba(0,0,0,0.96) 0%, rgba(0,0,0,0.0) 55%)" }} />

                      {/* Top row: episode badge + time */}
                      <div className="absolute top-2 inset-x-2 flex items-center justify-between">
                        <span className="text-[7px] font-black text-white px-1.5 py-0.5 rounded-lg"
                          style={{ background: accentBg, backdropFilter: "blur(8px)" }}>
                          {badgeLabel}
                        </span>
                        <span className="text-[7px] font-black text-white/75 px-1.5 py-0.5 rounded-lg font-mono"
                          style={{ background: "rgba(0,0,0,0.60)", backdropFilter: "blur(8px)", border: "1px solid rgba(255,255,255,0.10)" }}>
                          {fmtMinute(item.watchTimeSec)}
                        </span>
                      </div>

                      {/* Kind indicator */}
                      <div className="absolute top-8 right-2">
                        <span className="text-[6.5px] font-black px-1.5 py-[3px] rounded-md"
                          style={{ background: isAnime ? "rgba(139,92,246,0.22)" : "rgba(6,182,212,0.22)", color: isAnime ? "#c4b5fd" : "#67e8f9", border: `1px solid ${accentColor}33` }}>
                          {isAnime ? "أنمي" : "أنيميشن"}
                        </span>
                      </div>

                      {/* Progress bar + title */}
                      <div className="absolute bottom-0 inset-x-0 px-2 pb-2.5">
                        <div className="w-full h-[3px] rounded-full mb-2 overflow-hidden"
                          style={{ background: "rgba(255,255,255,0.12)" }}>
                          <motion.div className="h-full rounded-full"
                            initial={{ width: 0 }}
                            animate={{ width: `${pct}%` }}
                            transition={{ duration: 0.25, ease: [0.22, 1, 0.36, 1] }}
                            style={{ background: `linear-gradient(90deg, ${accentColor}, ${accentColor}CC)` }} />
                        </div>
                        <p className="text-[9px] text-white/90 font-black truncate leading-tight font-['Cairo']">
                          {item.title}
                        </p>
                      </div>

                      {/* Play overlay */}
                      <div className="absolute inset-0 flex items-center justify-center opacity-0 hover:opacity-100 transition-opacity"
                        style={{ background: "rgba(0,0,0,0.35)" }}>
                        <div className="w-10 h-10 rounded-full flex items-center justify-center"
                          style={{ background: accentBg, backdropFilter: "blur(8px)" }}>
                          <Play className="w-4 h-4 text-white fill-white mr-[-2px]" />
                        </div>
                      </div>
                    </div>
                    {/* Progress % below card */}
                    <div className="flex items-center justify-between mt-1.5 px-0.5">
                      <span className="text-[8.5px] font-black font-['Cairo']" style={{ color: `${accentColor}AA` }}>{pct}%</span>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* ── حلقات اليوم ── */}
      {todayEps.length > 0 && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "linear-gradient(135deg,#f97316,#ef4444)" }}>
                <span className="text-white text-[14px] leading-none">📺</span>
              </div>
              <div>
                <h2 className="text-[13px] font-black text-white font-['Cairo'] leading-none">أحدث الحلقات</h2>
                <p className="text-[9px] text-white/35 font-['Cairo'] mt-0.5">يتجدد يومياً</p>
              </div>
            </div>
            {/* Live dot */}
            <div className="flex items-center gap-1.5">
              <span className="w-2 h-2 rounded-full bg-red-500 animate-pulse" />
              <span className="text-[9px] font-black text-red-400 font-['Cairo']">LIVE</span>
            </div>
          </div>

          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {todayEps.map((s: any, i: number) => {
              const m = s.media;
              const aired = s.airingAt * 1000 < Date.now();
              const accentColor = aired ? "#ef4444" : "#f97316";
              const accentBg    = aired ? "rgba(239,68,68,0.88)" : "rgba(249,115,22,0.88)";
              return (
                <Link href={`/watch?anime=${m.id}&ep=${s.episode}&title=${encodeURIComponent(m.title?.romaji || "")}&english=${encodeURIComponent(m.title?.english || "")}&cover=${encodeURIComponent(m.coverImage?.large || m.coverImage?.medium || "")}`} key={`${m.id}-${s.episode}-${i}`}>
                  <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 110 }}>
                    {/* البطاقة */}
                    <div className="relative rounded-[18px] overflow-hidden shadow-xl"
                      style={{ width: 110, height: 156, border: `1px solid ${accentColor}22`, background: "#111" }}>
                      {/* البوستر */}
                      {m.coverImage?.large
                        ? <img src={m.coverImage.large} alt={m.title?.romaji || ""} className="w-full h-full object-cover" loading="lazy" />
                        : <div className="w-full h-full flex items-center justify-center" style={{ background: `${accentColor}18` }}>
                            <span className="text-3xl">📺</span>
                          </div>
                      }
                      {/* تدرج داكن من الأسفل */}
                      <div className="absolute inset-0"
                        style={{ background: "linear-gradient(to top, rgba(0,0,0,0.95) 0%, rgba(0,0,0,0.0) 55%)" }} />
                      {/* شارة الحلقة — أعلى اليسار */}
                      <div className="absolute top-2 right-2">
                        <span className="text-[7px] font-black text-white px-1.5 py-0.5 rounded-lg"
                          style={{ background: accentBg, backdropFilter: "blur(8px)" }}>
                          ح {s.episode}
                        </span>
                      </div>
                      {/* حالة البث */}
                      <div className="absolute top-8 right-2">
                        <span className="text-[6.5px] font-black px-1.5 py-[3px] rounded-md"
                          style={{ background: aired ? "rgba(239,68,68,0.18)" : "rgba(249,115,22,0.18)",
                                   color: aired ? "#fca5a5" : "#fdba74",
                                   border: `1px solid ${accentColor}33` }}>
                          {aired ? "✓ نزلت" : "قريباً"}
                        </span>
                      </div>
                      {/* العنوان أسفل البطاقة */}
                      <div className="absolute bottom-0 inset-x-0 px-2 pb-2.5">
                        <p className="text-[9px] text-white/90 font-black truncate leading-tight font-['Cairo']">
                          {m.title?.romaji || m.title?.english}
                        </p>
                        {m.title?.english && m.title.english !== m.title?.romaji && (
                          <p className="text-[7.5px] text-white/40 truncate leading-tight font-['Cairo'] mt-0.5">
                            {m.title.english}
                          </p>
                        )}
                      </div>
                      {/* Play overlay عند الضغط */}
                      <div className="absolute inset-0 flex items-center justify-center opacity-0 hover:opacity-100 transition-opacity"
                        style={{ background: "rgba(0,0,0,0.32)" }}>
                        <div className="w-10 h-10 rounded-full flex items-center justify-center"
                          style={{ background: accentBg, backdropFilter: "blur(8px)" }}>
                          <Play className="w-4 h-4 text-white fill-white mr-[-2px]" />
                        </div>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
          </div>
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
              <div className="absolute -top-8 -left-8 w-40 h-40 rounded-full opacity-20" style={{ background: "radial-gradient(circle,#7c3aed,transparent)" }} />
              <div className="absolute -bottom-6 -right-4 w-32 h-32 rounded-full opacity-15" style={{ background: "radial-gradient(circle,#06b6d4,transparent)" }} />
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

          {/* أفلام الأنيميشن */}
          {animationMovies.length > 0 && (
            <>
              <div className="flex items-center justify-between mb-2.5">
                <div className="flex items-center gap-2">
                  <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#7c3aed,#4f46e5)" }}>
                    <Film className="w-3.5 h-3.5 text-white" />
                  </div>
                  <h2 className="text-[13px] font-black font-['Cairo'] text-white">أفلام أنيميشن</h2>
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
                    <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[110px] cursor-pointer">
                      <div className="relative w-[110px] h-[158px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
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

          {/* مسلسلات الأنيميشن */}
          {animationTv.length > 0 && (
            <>
              <div className="flex items-center justify-between mt-4 mb-2.5">
                <div className="flex items-center gap-2">
                  <div className="w-7 h-7 rounded-xl flex items-center justify-center" style={{ background: "linear-gradient(135deg,#06b6d4,#0891b2)" }}>
                    <Tv2 className="w-3.5 h-3.5 text-white" />
                  </div>
                  <h2 className="text-[13px] font-black font-['Cairo'] text-white">مسلسلات أنيميشن</h2>
                </div>
                <Link href="/animations?type=tv">
                  <button className="text-[10px] text-cyan-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-cyan-500/8 px-2.5 py-1 rounded-xl border border-cyan-500/15">
                    عرض الكل <ChevronLeft className="w-3 h-3" />
                  </button>
                </Link>
              </div>
              <div className="flex gap-3 overflow-x-auto pb-1" style={{ scrollbarWidth: "none" }}>
                {animationTv.map(m => (
                  <Link key={m.id} href={`/animation/tv/${m.id}`}>
                    <motion.div whileTap={{ scale: 0.92 }} className="shrink-0 w-[110px] cursor-pointer">
                      <div className="relative w-[110px] h-[158px] rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50">
                        {m.poster_path
                          ? <img src={`https://image.tmdb.org/t/p/w300${m.poster_path}`} alt="" className="w-full h-full object-cover" loading="lazy" />
                          : <div className="w-full h-full bg-cyan-900/20 flex items-center justify-center"><Tv2 className="w-8 h-8 text-cyan-600/30" /></div>
                        }
                        <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/10 to-transparent" />
                        {m.vote_average > 0 && (
                          <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[7px] px-1.5 py-0.5 rounded-lg font-black border border-yellow-500/20">
                            <Star className="w-1.5 h-1.5 fill-current" /> {m.vote_average.toFixed(1)}
                          </div>
                        )}
                        <div className="absolute top-2 left-2 text-[7px] font-black px-1.5 py-0.5 rounded-md"
                          style={{ background: "rgba(6,182,212,0.88)", color: "#fff" }}>مسلسل</div>
                        <div className="absolute bottom-0 left-0 right-0 px-2 pb-2">
                          <p className="text-[9px] text-white/90 font-bold line-clamp-2 leading-tight">{m.name}</p>
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

      {/* ── موسم الربيع 2026 ── */}
      {spring2026.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "linear-gradient(135deg,#ec4899,#8b5cf6)" }}>
                <Tv2 className="w-3.5 h-3.5 text-white" />
              </div>
              <div>
                <h2 className="text-[13px] font-black font-['Cairo'] text-white leading-none">موسم الربيع 2026 🌸</h2>
                <p className="text-[9px] text-white/25 font-['Cairo'] mt-0.5">{spring2026.length} أنمي يُبث الآن</p>
              </div>
            </div>
            <Link href="/browse?year=2026&season=SPRING&format=TV">
              <button className="text-[10px] text-pink-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-pink-500/8 px-2.5 py-1 rounded-xl border border-pink-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {spring2026.map(anime => {
              const aired = anime.status === "RELEASING" && anime.nextAiringEpisode?.episode
                ? anime.nextAiringEpisode.episode - 1
                : (anime.episodes || 0);
              const total = anime.episodes || 0;
              return (
                <Link key={anime.id} href={`/anime/${anime.id}`}>
                  <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 92 }}>
                    <div className="relative rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg shadow-black/50"
                      style={{ width: 92, height: 132 }}>
                      <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/15 to-transparent" />
                      {anime.averageScore > 0 && (
                        <div className="absolute top-1.5 right-1.5 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[6.5px] px-1 py-0.5 rounded-md font-black">
                          <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                        </div>
                      )}
                      {aired > 0 && (
                        <div className="absolute top-1.5 left-1.5 text-[6.5px] font-black px-1.5 py-0.5 rounded-md"
                          style={{ background: "rgba(236,72,153,0.85)", color: "#fff" }}>
                          {aired}{total && total > aired ? `/${total}` : ""} ح
                        </div>
                      )}
                      {anime.status === "RELEASING" && (
                        <div className="absolute bottom-8 left-1.5 w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse" />
                      )}
                      <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-2">
                        <p className="text-[8.5px] text-white/90 font-black line-clamp-2 leading-tight font-['Cairo']">
                          {anime.title?.romaji}
                        </p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
          </div>
        </div>
      )}

      {/* ── خريف 2025 ── */}
      {fall2025.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "linear-gradient(135deg,#f59e0b,#d97706)" }}>
                <span className="text-white text-[14px] leading-none">🍂</span>
              </div>
              <div>
                <h2 className="text-[13px] font-black font-['Cairo'] text-white leading-none">أنمي خريف 2025</h2>
                <p className="text-[9px] text-white/25 font-['Cairo'] mt-0.5">{fall2025.length} أنمي</p>
              </div>
            </div>
            <Link href="/browse?year=2025&season=FALL&format=TV">
              <button className="text-[10px] text-amber-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-amber-500/8 px-2.5 py-1 rounded-xl border border-amber-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {fall2025.map(anime => {
              const ep = anime.nextAiringEpisode?.episode ? anime.nextAiringEpisode.episode - 1 : (anime.episodes || 0);
              return (
                <Link key={anime.id} href={`/anime/${anime.id}`}>
                  <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 92 }}>
                    <div className="relative rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg" style={{ width: 92, height: 132 }}>
                      <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/15 to-transparent" />
                      {anime.averageScore > 0 && (
                        <div className="absolute top-1.5 right-1.5 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[6.5px] px-1 py-0.5 rounded-md font-black">
                          <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                        </div>
                      )}
                      {ep > 0 && (
                        <div className="absolute top-1.5 left-1.5 text-[6.5px] font-black px-1.5 py-0.5 rounded-md"
                          style={{ background: "rgba(245,158,11,0.88)", color: "#fff" }}>
                          {ep} ح
                        </div>
                      )}
                      <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-2">
                        <p className="text-[8.5px] text-white/90 font-black line-clamp-2 leading-tight font-['Cairo']">{anime.title?.romaji}</p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              );
            })}
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
            <Link href="/browse?format=MOVIE">
              <button className="text-[10px] text-blue-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-blue-500/8 px-2.5 py-1 rounded-xl border border-blue-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
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

      {/* ── الأكثر تقييماً ── */}
      {topRated.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "linear-gradient(135deg,#fbbf24,#f59e0b)" }}>
                <Star className="w-3.5 h-3.5 text-white fill-white" />
              </div>
              <div>
                <h2 className="text-[13px] font-black font-['Cairo'] text-white leading-none">الأكثر تقييماً</h2>
                <p className="text-[9px] text-white/25 font-['Cairo'] mt-0.5">أعلى نقاط على AniList</p>
              </div>
            </div>
            <Link href="/browse?sort=SCORE">
              <button className="text-[10px] text-yellow-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-yellow-500/8 px-2.5 py-1 rounded-xl border border-yellow-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {topRated.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 92 }}>
                  <div className="relative rounded-2xl overflow-hidden bg-[#18181B] border border-yellow-500/10 shadow-lg shadow-yellow-900/20" style={{ width: 92, height: 132 }}>
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/10 to-transparent" />
                    {anime.averageScore > 0 && (
                      <div className="absolute top-1.5 right-1.5 flex items-center gap-0.5 bg-yellow-500/90 text-black text-[6.5px] px-1 py-0.5 rounded-md font-black">
                        ⭐ {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    {anime.format === "MOVIE" && (
                      <div className="absolute top-1.5 left-1.5 text-[6px] font-black px-1 py-0.5 rounded-md"
                        style={{ background: "rgba(59,130,246,0.88)", color: "#fff" }}>فيلم</div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-2">
                      <p className="text-[8.5px] text-white/90 font-black line-clamp-2 leading-tight font-['Cairo']">{anime.title?.romaji}</p>
                    </div>
                  </div>
                </motion.div>
              </Link>
            ))}
          </div>
        </div>
      )}

      {/* ── عالم الإيسيكاي ── */}
      {isekaiList.length > 0 && !selectedGenre && (
        <div className="mt-5">
          <div className="flex items-center justify-between px-4 mb-3">
            <div className="flex items-center gap-2">
              <div className="w-7 h-7 rounded-xl flex items-center justify-center shrink-0"
                style={{ background: "linear-gradient(135deg,#059669,#10b981)" }}>
                <span className="text-white text-[14px] leading-none">⚔️</span>
              </div>
              <div>
                <h2 className="text-[13px] font-black font-['Cairo'] text-white leading-none">عالم الإيسيكاي</h2>
                <p className="text-[9px] text-white/25 font-['Cairo'] mt-0.5">انتقال إلى عوالم أخرى</p>
              </div>
            </div>
            <Link href="/browse?genre=Isekai">
              <button className="text-[10px] text-emerald-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-emerald-500/8 px-2.5 py-1 rounded-xl border border-emerald-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          </div>
          <div className="flex gap-3 overflow-x-auto px-4 pb-2" style={{ scrollbarWidth: "none" }}>
            {isekaiList.map(anime => (
              <Link key={anime.id} href={`/anime/${anime.id}`}>
                <motion.div whileTap={{ scale: 0.91 }} className="shrink-0 cursor-pointer" style={{ width: 92 }}>
                  <div className="relative rounded-2xl overflow-hidden bg-[#18181B] border border-white/[0.08] shadow-lg" style={{ width: 92, height: 132 }}>
                    <img src={anime.coverImage?.large} alt="" className="w-full h-full object-cover" loading="lazy" />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/95 via-black/10 to-transparent" />
                    {anime.averageScore > 0 && (
                      <div className="absolute top-1.5 right-1.5 flex items-center gap-0.5 bg-black/70 backdrop-blur-md text-yellow-400 text-[6.5px] px-1 py-0.5 rounded-md font-black">
                        <Star className="w-1.5 h-1.5 fill-current" /> {(anime.averageScore / 10).toFixed(1)}
                      </div>
                    )}
                    <div className="absolute bottom-0 left-0 right-0 px-1.5 pb-2">
                      <p className="text-[8.5px] text-white/90 font-black line-clamp-2 leading-tight font-['Cairo']">{anime.title?.romaji}</p>
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
        <div className="flex items-center justify-between mb-3">
          <div className="flex items-center gap-2">
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
          {!selectedGenre && (
            <Link href="/browse">
              <button className="text-[10px] text-red-400/80 font-black font-['Cairo'] flex items-center gap-0.5 bg-red-500/8 px-2.5 py-1 rounded-xl border border-red-500/15">
                عرض الكل <ChevronLeft className="w-3 h-3" />
              </button>
            </Link>
          )}
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
          <Link href="/browse">
            <button className="w-full mt-5 py-3.5 bg-[#18181B] border border-white/8 rounded-2xl text-sm font-black flex items-center justify-center gap-2 text-white/50 hover:text-white hover:border-primary/30 transition-all active:scale-[0.98] font-['Cairo']">
              <ChevronDown className="w-4 h-4" /> عرض المزيد
            </button>
          </Link>
        )}
      </div>
    </main>
  );
}
