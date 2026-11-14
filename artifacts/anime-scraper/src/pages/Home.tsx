import { API_BASE } from "@/lib/apiBase";
import { animeHref } from "@/lib/animeLink";
import { useEffect, useState, useMemo, useRef } from "react";
import { Link } from "wouter";
import {
  Play,
  Star,
  ChevronLeft,
  Info,
  Tv2,
  BookOpen,
} from "lucide-react";
import { motion } from "framer-motion";
import SEO from "@/components/SEO";

const TODAY_EPS_STORAGE_KEY = "nova-latest-episodes-v4";
const TODAY_EPS_CLIENT_TTL = 2 * 60_000;
let _cachedTodayEps: any[] | null = null;
let _cachedTodayEpsAt = 0;

const GENRE_AR: Record<string, string> = {
  Action: "أكشن",
  Adventure: "مغامرة",
  Comedy: "كوميدي",
  Drama: "دراما",
  Fantasy: "فانتازيا",
  "Sci-Fi": "خيال علمي",
  Sports: "رياضة",
  Romance: "رومانسي",
  Isekai: "إيسيكاي",
  Psychological: "نفسي",
  Horror: "رعب",
  Mystery: "غموض",
  Supernatural: "خارق للطبيعة",
  "Slice of Life": "شريحة من الحياة",
  Thriller: "إثارة",
};

function normalizeLatestEpisodeItem(item: any): any {
  const rawAniListId = Number(item?.anilistId ?? item?.anilist_id ?? 0);
  const rawAnimeSlayerId = Number(
    item?.anslayerId ??
      item?.anime_id ??
      (item?.source === "anslayer" ? item?.animeId : 0) ??
      0,
  );
  const rawAwAnimeId =
    item?.awAnimeId ??
    item?.aw_anime_id ??
    (item?.source === "animewitcher" ? item?.anime_id : "");
  const rawAnifoxId =
    item?.anifoxId ??
    item?.providerTitleId ??
    (item?.source === "anifox" ? item?.content_id : "");
  const anilistId =
    Number.isInteger(rawAniListId) && rawAniListId > 0 ? rawAniListId : null;
  const anslayerId =
    Number.isInteger(rawAnimeSlayerId) && rawAnimeSlayerId > 0
      ? rawAnimeSlayerId
      : null;
  const name = item?.name ?? item?.title ?? "";
  const titleVariants = Array.from(
    new Set(
      [
        ...(Array.isArray(item?.titleVariants) ? item.titleVariants : []),
        item?.romaji,
        item?.english,
        item?.native,
        name,
      ].filter(
        (value): value is string =>
          typeof value === "string" && value.trim().length > 1,
      ),
    ),
  );
  const title_ar =
    typeof item?.title_ar === "string" && /[\u0600-\u06FF]/.test(item.title_ar)
      ? item.title_ar.trim()
      : "";

  return {
    ...item,
    animeId: anilistId,
    anilistId,
    anslayerId,
    awAnimeId: String(rawAwAnimeId || "").trim(),
    anifoxId: String(rawAnifoxId || "").trim(),
    providerTitleId: String(rawAnifoxId || "").trim(),
    source: ["anifox", "animewitcher"].includes(String(item?.source))
      ? item.source
      : "anslayer",
    name,
    titleAr: title_ar,
    titleVariants,
    title_ar,
  };
}

interface MergedContinueItem {
  key: string;
  id: string | number;
  title: string;
  cover: string;
  ep: number;
  date: string;
  watchTimeSec: number;
  durationSec: number;
  href: string;
}

function loadMergedContinue(): MergedContinueItem[] {
  const out: MergedContinueItem[] = [];
  try {
    const h: any[] = JSON.parse(localStorage.getItem("watch-history") || "[]");
    for (const item of h) {
      const t =
        parseFloat(localStorage.getItem(`wp-${item.id}-${item.ep}`) || "0") ||
        0;
      const href = `/watch?anime=${item.id}&ep=${item.ep}&title=${encodeURIComponent(item.title)}&cover=${encodeURIComponent(item.cover || "")}`;
      out.push({
        key: `anime-${item.id}-${item.ep}`,
        id: item.id,
        title: item.title,
        cover: item.cover || "",
        ep: item.ep,
        date: item.date || "",
        watchTimeSec: t,
        durationSec: 24 * 60,
        href,
      });
    }
  } catch {}
  out.sort((a, b) => (b.date > a.date ? 1 : -1));
  return out.slice(0, 12);
}

const POPULAR_QUERY = `query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(type: ANIME, sort: POPULARITY_DESC, countryOfOrigin: "JP", format_in: [TV, ONA], isAdult: false, genre_not_in: ["Hentai", "Music"]) {
      id title { romaji english } coverImage { large extraLarge }
      bannerImage averageScore episodes genres status format seasonYear
    }
  }
}`;

const RELEASING_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, status: RELEASING, sort: POPULARITY_DESC, countryOfOrigin: "JP", format_in: [TV, ONA], isAdult: false, genre_not_in: ["Hentai"]) {
      id title { romaji english } coverImage { large } averageScore episodes status format
    }
  }
}`;

const MOVIES_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, sort: POPULARITY_DESC, format: MOVIE, countryOfOrigin: "JP", isAdult: false, genre_not_in: ["Hentai"]) {
      id title { romaji english } coverImage { large } averageScore format status
    }
  }
}`;

const ISEKAI_QUERY = `query {
  Page(perPage: 16) {
    media(type: ANIME, sort: POPULARITY_DESC, genre_in: ["Isekai"], countryOfOrigin: "JP", format_in: [TV, ONA, MOVIE], isAdult: false) {
      id title { romaji english } coverImage { large } averageScore format status
    }
  }
}`;

/* ── Unified SectionHeader matching /artifacts/nova-mobile/components/SectionHeader.tsx ── */
function SectionHeader({
  title,
  href,
  seeAllLabel = "عرض الكل",
}: {
  title: string;
  href?: string;
  seeAllLabel?: string;
}) {
  return (
    <div
      className="flex items-center justify-between px-3.5 mt-4 mb-2.5"
      dir="ltr"
    >
      {href ? (
        <Link href={href}>
          <button
            className="flex items-center gap-1 px-2.5 py-1.5 rounded-full border transition-transform active:scale-95"
            style={{
              backgroundColor: "rgba(15, 23, 42, 0.92)",
              borderColor: "rgba(148, 163, 184, 0.16)",
            }}
          >
            <ChevronLeft className="w-[15px] h-[15px] text-white" />
            <span className="text-[12px] font-bold text-white font-['Cairo']">
              {seeAllLabel}
            </span>
          </button>
        </Link>
      ) : (
        <div />
      )}

      <div className="flex items-center gap-2">
        <h2
          className="text-[17px] font-bold font-['Cairo'] text-right"
          style={{ color: "var(--text-main, #F3F4F6)" }}
        >
          {title}
        </h2>
        <div
          className="w-1 h-[18px] rounded-sm shrink-0"
          style={{ backgroundColor: "var(--accent-home, #06b6d4)" }}
        />
      </div>
    </div>
  );
}

/* ── Unified AnimeCard matching /artifacts/nova-mobile/components/AnimeCard.tsx ── */
function MobileAnimeCard({ anime }: { anime: any }) {
  const enTitle = anime.title?.english || anime.title?.romaji || "";
  const arTitle = typeof anime.title_ar === "string" && /[\u0600-\u06FF]/.test(anime.title_ar) ? anime.title_ar.trim() : "";
  const title = arTitle || enTitle || "أنمي";
  return (
    <Link href={animeHref(anime)}>
      <motion.div
        whileTap={{ scale: 0.95 }}
        className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
      >
        <div
          className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
          style={{
            backgroundColor: "var(--bg-card, #14171C)",
            borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
          }}
        >
          {anime.coverImage?.large ? (
            <img
              src={anime.coverImage.large}
              alt={title}
              className="w-full h-full object-cover"
              loading="lazy"
              onError={(e) => {
                (e.currentTarget as HTMLImageElement).style.display = "none";
              }}
            />
          ) : (
            <div className="w-full h-full flex items-center justify-center">
              <Tv2 className="w-7 h-7 opacity-20" />
            </div>
          )}

          {anime.averageScore && (
            <div className="absolute top-[7px] right-[7px] flex items-center gap-0.5 bg-black/75 px-1.5 py-0.5 rounded-[10px] text-amber-300 text-[9px] font-bold">
              <Star className="w-2.5 h-2.5 fill-current" />
              <span>{(anime.averageScore / 10).toFixed(1)}</span>
            </div>
          )}

          {anime.format === "MOVIE" && (
            <div className="absolute top-[7px] left-[7px] bg-[#06b6d4] text-white text-[9px] font-bold px-2 py-0.5 rounded-[10px]">
              فيلم
            </div>
          )}

          <div
            className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
            style={{
              background:
                "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
            }}
          >
            <p
              dir={arTitle ? "rtl" : "ltr"}
              className={`text-[11px] font-bold text-white leading-[15px] line-clamp-2 font-['Cairo'] ${arTitle ? "text-right" : "text-left"}`}
            >
              {title}
            </p>
            {arTitle && enTitle && arTitle !== enTitle && (
              <p
                dir="ltr"
                lang="en"
                className="text-[9px] font-semibold text-white/70 leading-[12px] line-clamp-1 text-right mt-0.5 font-['Cairo']"
              >
                {enTitle}
              </p>
            )}
          </div>
        </div>
      </motion.div>
    </Link>
  );
}

export default function Home() {
  const [popular, setPopular] = useState<any[]>([]);
  const [releasing, setReleasing] = useState<any[]>([]);
  const [movies, setMovies] = useState<any[]>([]);
  const [isekaiList, setIsekaiList] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [heroIdx, setHeroIdx] = useState(0);
  const touchStartX = useRef<number>(0);

  const [mergedContinue, setMergedContinue] = useState<MergedContinueItem[]>([]);
  const [todayEps, setTodayEps] = useState<any[]>(() => {
    if (_cachedTodayEps?.length) return _cachedTodayEps;
    try {
      const stored = JSON.parse(localStorage.getItem(TODAY_EPS_STORAGE_KEY) || "[]");
      return Array.isArray(stored) ? stored.map(normalizeLatestEpisodeItem) : [];
    } catch {
      return [];
    }
  });
  const [awCards, setAwCards] = useState<any[]>([]);
  const [stardimaAnim, setStardimaAnim] = useState<any[]>([]);
  const [dubbedCards, setDubbedCards] = useState<any[]>([]);
  const [stardimaCartoon, setStardimaCartoon] = useState<any[]>([]);
  const [spacetoonCards, setSpacetoonCards] = useState<any[]>([]);
  const [manhwaCards, setManhwaCards] = useState<any[]>([]);
  const [mangaCards, setMangaCards] = useState<any[]>([]);

  useEffect(() => {
    setMergedContinue(loadMergedContinue());
  }, []);

  /* Fetch AniList rails */
  useEffect(() => {
    const post = (query: string, variables?: any) =>
      fetch(`${API_BASE}/api/anilist`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ query, variables }),
      })
        .then((r) => r.json())
        .then((d) => d?.data?.Page?.media || []);

    post(POPULAR_QUERY, { page: 1, perPage: 16 })
      .then((list) => {
        setPopular(list);
        setLoading(false);
      })
      .catch(() => setLoading(false));

    post(RELEASING_QUERY).then(setReleasing).catch(() => {});
    post(MOVIES_QUERY).then(setMovies).catch(() => {});
    post(ISEKAI_QUERY).then(setIsekaiList).catch(() => {});
  }, []);

  /* Fetch Latest Episodes */
  useEffect(() => {
    if (
      _cachedTodayEps?.length &&
      Date.now() - _cachedTodayEpsAt < TODAY_EPS_CLIENT_TTL
    ) {
      return;
    }
    fetch(`${API_BASE}/api/anime/anslayer-latest`, { cache: "no-store" })
      .then((r) => r.json())
      .then((payload) => {
        const raw = Array.isArray(payload) ? payload : payload?.items || [];
        const items = raw
          .map((item: any) =>
            normalizeLatestEpisodeItem({ ...item, source: "anslayer" }),
          )
          .map((item: any) => ({
            ...item,
            cover: item.cover ?? item.poster ?? "",
          }))
          .filter(
            (item: any) =>
              (item.animeId || item.anslayerId || item.awAnimeId) &&
              item.name &&
              item.episode,
          );
        _cachedTodayEps = items;
        _cachedTodayEpsAt = Date.now();
        setTodayEps(items);
        try {
          localStorage.setItem(TODAY_EPS_STORAGE_KEY, JSON.stringify(items));
        } catch {}
      })
      .catch(() => {});
  }, []);

  /* Fetch Dubbed Animation, Cartoon, Spacetoon, Manhwa, Manga */
  useEffect(() => {
    fetch(`${API_BASE}/api/aw-dubbed/catalog?page=1`)
      .then((r) => r.json())
      .then((d) => setAwCards((d?.results || []).slice(0, 12)))
      .catch(() => {});

    fetch(`${API_BASE}/api/stardima/catalog?section=animation&page=1`)
      .then((r) => r.json())
      .then((d) => setStardimaAnim((d?.items || d?.results || []).slice(0, 8)))
      .catch(() => {});

    fetch(`${API_BASE}/api/dubbed/catalog?page=1`)
      .then((r) => r.json())
      .then((d) => setDubbedCards((d?.results || d?.items || []).slice(0, 12)))
      .catch(() => {});

    fetch(`${API_BASE}/api/stardima/catalog?section=cartoon&page=1`)
      .then((r) => r.json())
      .then((d) => setStardimaCartoon((d?.items || d?.results || []).slice(0, 8)))
      .catch(() => {});

    fetch(`${API_BASE}/api/dubbed/carateen/catalog?page=1&limit=18&provider=sp`)
      .then((r) => r.json())
      .then((d) => setSpacetoonCards((d?.results || []).slice(0, 18)))
      .catch(() => {});

    fetch(`${API_BASE}/api/manga/catalog?source=manhwa&page=1`)
      .then((r) => r.json())
      .then((d) => setManhwaCards((d?.items || d?.results || []).slice(0, 14)))
      .catch(() => {});

    fetch(`${API_BASE}/api/manga/catalog?source=manga&page=1`)
      .then((r) => r.json())
      .then((d) => setMangaCards((d?.items || d?.results || []).slice(0, 14)))
      .catch(() => {});
  }, []);

  const heroList = useMemo(
    () => popular.filter((a) => a.bannerImage || a.coverImage?.extraLarge).slice(0, 6),
    [popular],
  );
  const currentHero = heroList[heroIdx] || popular[0] || null;

  useEffect(() => {
    if (heroList.length <= 1) return;
    const timer = setInterval(() => {
      setHeroIdx((prev) => (prev + 1) % heroList.length);
    }, 5500);
    return () => clearInterval(timer);
  }, [heroList.length]);

  const animationHomeItems = useMemo(() => {
    const legacy = awCards.map((item: any) => ({
      id: `aw-${item.key || item.title}`,
      title: item.titleAr || item.title,
      cover: item.poster || "",
      badge: "مدبلج",
      isSub: false,
      href: `/aw-dubbed/${encodeURIComponent(item.key || item.title)}?title=${encodeURIComponent(item.title)}&seasons=${encodeURIComponent(JSON.stringify(item.seasons || []))}&img=${encodeURIComponent(item.poster || "")}`,
    }));
    const stardima = stardimaAnim.map((item: any) => ({
      id: `sd-anim-${item.provider_title_id}`,
      title: item.title_ar || item.title || item.title_en,
      cover: item.poster_url || item.backdrop_url || "",
      badge: String(item.language_badge || "").includes("مترجم") ? "مترجم" : "مدبلج",
      isSub: String(item.language_badge || "").includes("مترجم"),
      href: `/stardima/title/${encodeURIComponent(item.provider_title_id)}`,
    }));
    return [...legacy, ...stardima].slice(0, 16);
  }, [awCards, stardimaAnim]);

  const cartoonHomeItems = useMemo(() => {
    const legacy = dubbedCards.map((c: any) => {
      const rawImg = c.image || c.img || c.poster || "";
      const imgSrc = rawImg.startsWith("http")
        ? rawImg
        : rawImg.startsWith("/api/dubbed/img")
          ? rawImg
          : rawImg
            ? `/api/dubbed/img?f=${encodeURIComponent(rawImg.split("?f=")[1] || rawImg.split("/").pop() || rawImg)}`
            : "";
      return {
        id: `at-${c.key || c.title}`,
        title: c.title,
        cover: imgSrc,
        badge: "مدبلج",
        isSub: false,
        href: `/dubbed/${encodeURIComponent(c.key || c.title)}?seasons=${encodeURIComponent(JSON.stringify(c.seasons || [{ label: "الموسم 1", arabicToonsId: c.arabicToonsId }]))}&title=${encodeURIComponent(c.title)}&img=${encodeURIComponent(rawImg)}`,
      };
    });
    const stardima = stardimaCartoon.map((item: any) => ({
      id: `sd-c-${item.provider_title_id}`,
      title: item.title_ar || item.title || item.title_en,
      cover: item.poster_url || item.backdrop_url || "",
      badge: String(item.language_badge || "").includes("مترجم") ? "مترجم" : "مدبلج",
      isSub: String(item.language_badge || "").includes("مترجم"),
      href: `/stardima/title/${encodeURIComponent(item.provider_title_id)}`,
    }));
    return [...legacy, ...stardima].slice(0, 16);
  }, [dubbedCards, stardimaCartoon]);

  return (
    <main
      className="min-h-screen pb-28 font-['Cairo']"
      style={{
        backgroundColor: "var(--bg-base, #090A0C)",
        color: "var(--text-main, #F3F4F6)",
      }}
      dir="rtl"
    >
      <SEO
        title="Anime NOVA | أنمي نوفا - مشاهدة وتحميل الأنمي مترجم ومدبلج"
        description="أنمي نوفا — مشاهدة وتحميل الأنمي المترجم والمدبلج والمانجا مجاناً بجودة عالية."
        path="/"
      />

      <div className="max-w-7xl mx-auto pt-2.5">
        {/* ── 0. HeroSection matching /artifacts/nova-mobile/components/HeroSection.tsx ── */}
        {currentHero && (
          <div className="mb-3 px-3.5">
            <div
              className="relative w-full h-[300px] sm:h-[360px] rounded-[20px] overflow-hidden select-none bg-[#14141f]"
              onTouchStart={(e) => {
                touchStartX.current = e.touches[0].clientX;
              }}
              onTouchEnd={(e) => {
                const dx = e.changedTouches[0].clientX - touchStartX.current;
                if (Math.abs(dx) < 40 || heroList.length <= 1) return;
                const dir = dx < 0 ? 1 : -1;
                setHeroIdx((prev) => (prev + dir + heroList.length) % heroList.length);
              }}
            >
              <img
                src={
                  currentHero.bannerImage ||
                  currentHero.coverImage?.extraLarge ||
                  currentHero.coverImage?.large
                }
                alt={currentHero.title?.romaji || ""}
                className="w-full h-full object-cover"
              />
              <div
                className="absolute inset-0"
                style={{
                  background:
                    "linear-gradient(to bottom, rgba(7,7,14,0.12) 0%, rgba(7,7,14,0.5) 45%, rgba(7,7,14,0.97) 100%)",
                }}
              />

              {/* Top Row: Score Badge (Left) + Season Pick Badge (Right) */}
              <div
                className="absolute top-3.5 left-3.5 right-3.5 flex items-center justify-between"
                dir="ltr"
              >
                {currentHero.averageScore ? (
                  <div className="flex items-center gap-1 bg-black/65 px-2.5 py-1 rounded-[10px]">
                    <Star className="w-3 h-3 text-amber-400 fill-amber-400" />
                    <span className="text-amber-400 text-[12px] font-bold">
                      {(currentHero.averageScore / 10).toFixed(1)}
                    </span>
                  </div>
                ) : (
                  <div />
                )}

                <div
                  className="px-2.5 py-1 rounded-full border"
                  style={{
                    backgroundColor: "rgba(6, 182, 212, 0.25)",
                    borderColor: "rgba(6, 182, 212, 0.5)",
                  }}
                >
                  <span className="text-[11px] font-bold text-cyan-300 font-['Cairo']">
                    مختارات الموسم #{heroIdx + 1}
                  </span>
                </div>
              </div>

              {/* Bottom Content */}
              <div
                className="absolute bottom-0 left-0 right-0 p-4 flex flex-col items-end"
                dir="ltr"
              >
                {/* Genres */}
                <div className="flex items-center gap-1.5 mb-2 flex-wrap justify-end">
                  {currentHero.genres?.slice(0, 3).map((g: string) => (
                    <span
                      key={g}
                      className="bg-white/15 px-2.5 py-0.5 rounded-full text-[10px] font-semibold text-slate-200 font-['Cairo']"
                    >
                      {GENRE_AR[g] || g}
                    </span>
                  ))}
                </div>

                {/* Title */}
                <h1
                  dir="rtl"
                  className="text-[20px] sm:text-[26px] font-bold text-white text-right leading-7 line-clamp-2 mb-1 font-['Cairo']"
                  style={{ textShadow: "0 2px 6px rgba(0,0,0,0.8)" }}
                >
                  {currentHero.title_ar ||
                    currentHero.title?.english ||
                    currentHero.title?.romaji}
                </h1>

                {currentHero.title?.english &&
                  currentHero.title?.romaji &&
                  currentHero.title.english !== currentHero.title.romaji && (
                    <p className="text-[11px] text-white/60 text-right line-clamp-1 mb-1">
                      {currentHero.title.romaji}
                    </p>
                  )}

                {/* Meta Row */}
                <div className="flex items-center gap-1.5 mb-3 text-[11px] font-semibold text-slate-400 font-['Cairo']">
                  {currentHero.episodes && <span>{currentHero.episodes} حلقة</span>}
                  {currentHero.seasonYear && <span>• {currentHero.seasonYear}</span>}
                  {currentHero.format && <span>• {currentHero.format}</span>}
                </div>

                {/* Action Buttons */}
                <div className="flex items-center gap-2.5 w-full" dir="ltr">
                  <Link href={`/anime/${currentHero.id}`}>
                    <button
                      className="flex items-center justify-center gap-1.5 px-4 py-2.5 rounded-[12px] border text-white text-[13px] font-semibold font-['Cairo'] active:scale-95 transition-transform"
                      style={{
                        backgroundColor: "rgba(255,255,255,0.12)",
                        borderColor: "rgba(255,255,255,0.2)",
                      }}
                    >
                      <Info className="w-[17px] h-[17px]" />
                      <span>تفاصيل</span>
                    </button>
                  </Link>

                  <Link href={`/episodes/${currentHero.id}`} className="flex-1">
                    <button
                      className="w-full flex items-center justify-center gap-2 py-2.5 px-5 rounded-[12px] text-white text-[14px] font-bold font-['Cairo'] active:scale-[0.98] transition-transform"
                      style={{ backgroundColor: "#06b6d4" }}
                    >
                      <Play className="w-4 h-4 fill-white" />
                      <span>مشاهدة الآن</span>
                    </button>
                  </Link>
                </div>
              </div>
            </div>

            {/* Dots */}
            {heroList.length > 1 && (
              <div className="flex items-center justify-center gap-1.5 mt-2.5" dir="ltr">
                {heroList.map((_, i) => (
                  <button
                    key={i}
                    onClick={() => setHeroIdx(i)}
                    aria-label={`شريحة ${i + 1}`}
                    className="h-1.5 rounded-full transition-all"
                    style={{
                      width: i === heroIdx ? 20 : 6,
                      backgroundColor:
                        i === heroIdx ? "#06b6d4" : "rgba(255,255,255,0.25)",
                    }}
                  />
                ))}
              </div>
            )}
          </div>
        )}

        {/* ── 1. متابعة المشاهدة (Continue Watching matching mobile landscape cards) ── */}
        {mergedContinue.length > 0 && (
          <div>
            <SectionHeader
              title="متابعة المشاهدة"
              href="/library?tab=continue"
              seeAllLabel="السجل الكامل"
            />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {mergedContinue.map((item) => {
                const progress = Math.min(
                  1,
                  Math.max(0.05, item.watchTimeSec / (item.durationSec || 1440)),
                );
                const remainingMin = Math.max(
                  1,
                  Math.ceil(((1 - progress) * (item.durationSec || 1440)) / 60),
                );
                return (
                  <Link key={item.key} href={item.href}>
                    <motion.div
                      whileTap={{ scale: 0.95 }}
                      className="shrink-0 w-[150px] h-[126px] rounded-[14px] overflow-hidden relative cursor-pointer border"
                      style={{
                        backgroundColor: "var(--bg-card, #14171C)",
                        borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                      }}
                    >
                      {item.cover && (
                        <img
                          src={item.cover}
                          alt={item.title}
                          className="w-full h-full object-cover"
                          loading="lazy"
                        />
                      )}
                      <div
                        className="absolute inset-0"
                        style={{
                          background:
                            "linear-gradient(to top, rgba(3,7,18,0.96) 0%, rgba(3,7,18,0.28) 55%, rgba(3,7,18,0.12) 100%)",
                        }}
                      />

                      <div
                        className="absolute top-2 left-2 right-2 flex items-center justify-between"
                        dir="ltr"
                      >
                        <span className="px-2 py-0.5 rounded-full bg-slate-900/80 text-slate-200 text-[9px] font-bold font-['Cairo']">
                          متبقي {remainingMin} د
                        </span>
                        <span className="px-2 py-0.5 rounded-full bg-cyan-600/90 text-white text-[9px] font-extrabold font-['Cairo']">
                          الحلقة {item.ep}
                        </span>
                      </div>

                      <div className="absolute inset-0 flex items-center justify-center pointer-events-none">
                        <div className="w-[34px] h-[34px] rounded-full bg-cyan-500/90 border border-white/35 flex items-center justify-center">
                          <Play className="w-3.5 h-3.5 text-white fill-white" />
                        </div>
                      </div>

                      <div className="absolute bottom-2 left-2.5 right-2.5 text-right">
                        <p className="text-white text-[11px] font-bold truncate font-['Cairo']">
                          {item.title}
                        </p>
                        <p className="text-cyan-300 text-[9px] font-semibold font-['Cairo'] mt-0.5 mb-1.5">
                          استئناف المشاهدة الآن
                        </p>
                        <div className="h-1 rounded-full bg-white/20 overflow-hidden">
                          <div
                            className="h-full rounded-full bg-[#06b6d4]"
                            style={{ width: `${Math.round(progress * 100)}%` }}
                          />
                        </div>
                      </div>
                    </motion.div>
                  </Link>
                );
              })}
            </div>
          </div>
        )}

        {/* ── 2. أحدث الحلقات 📺 ── */}
        <div>
          <SectionHeader title="أحدث الحلقات 📺" href="/latest" />
          <div
            className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
            style={{ scrollbarWidth: "none" }}
          >
            {todayEps.length === 0
              ? Array.from({ length: 6 }).map((_, idx) => (
                  <div
                    key={idx}
                    className="shrink-0 w-[120px] sm:w-[136px] h-[175px] sm:h-[196px] rounded-[12px] animate-pulse border"
                    style={{
                      backgroundColor: "var(--bg-card, #14171C)",
                      borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                    }}
                  />
                ))
              : todayEps.slice(0, 18).map((it: any, i: number) => {
                  const titleVariants = Array.from(
                    new Set(
                      [
                        ...(Array.isArray(it.titleVariants) ? it.titleVariants : []),
                        it.romaji,
                        it.english,
                        it.native,
                        it.name,
                      ].filter(
                        (value: unknown): value is string =>
                          typeof value === "string" && value.trim().length > 1,
                      ),
                    ),
                  );
                  const canonicalTitle = it.romaji || it.name || "";
                  const canonicalEnglish = it.english || "";
                  const href = `/watch?anime=${encodeURIComponent(String(it.animeId || 0))}&anilistId=${encodeURIComponent(String(it.anilistId || it.animeId || 0))}&anslayerId=${encodeURIComponent(String(it.anslayerId || ""))}&awAnimeId=${encodeURIComponent(String(it.awAnimeId || ""))}&anifoxId=${encodeURIComponent(String(it.anifoxId || ""))}&season=${encodeURIComponent(String(it.season || 1))}&ep=${it.episode}&totalEps=${it.episode}&title=${encodeURIComponent(canonicalTitle)}&english=${encodeURIComponent(canonicalEnglish)}&native=${encodeURIComponent(String(it.native || ""))}&titles=${encodeURIComponent(JSON.stringify(titleVariants))}&cover=${encodeURIComponent(it.cover || "")}&titleAr=${encodeURIComponent(it.titleAr || "")}&site=${encodeURIComponent(it.source || "anslayer")}&fromLatest=1&latestSource=${encodeURIComponent(it.source || "anslayer")}`;
                  return (
                    <Link
                      href={href}
                      key={`${it.source}-${it.anslayerId || it.animeId || i}-${it.episode}`}
                    >
                      <motion.div
                        whileTap={{ scale: 0.95 }}
                        className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                      >
                        <div
                          className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                          style={{
                            backgroundColor: "var(--bg-card, #14171C)",
                            borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                          }}
                        >
                          {it.cover ? (
                            <img
                              src={it.cover}
                              alt={it.name || ""}
                              className="w-full h-full object-cover"
                              loading="lazy"
                              onError={(e) => {
                                const target = e.currentTarget;
                                const fallback = it.animeId
                                  ? `https://img.anili.st/media/${it.animeId}`
                                  : "";
                                if (fallback && target.src !== fallback) {
                                  target.src = fallback;
                                } else {
                                  target.style.display = "none";
                                }
                              }}
                            />
                          ) : (
                            <div className="w-full h-full flex items-center justify-center">
                              <Tv2 className="w-7 h-7 opacity-20" />
                            </div>
                          )}

                          <div
                            className="absolute top-[7px] right-[7px] z-10 px-2 py-0.5 rounded-[12px]"
                            style={{ backgroundColor: "rgba(7,9,13,0.78)" }}
                          >
                            <span className="text-[9px] font-bold text-white font-['Cairo']">
                              الحلقة {it.episode}
                            </span>
                          </div>

                          <div
                            className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                            style={{
                              background:
                                "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                            }}
                          >
                            <p
                              dir="rtl"
                              className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']"
                            >
                              {it.titleAr || it.name}
                            </p>
                          </div>
                        </div>
                      </motion.div>
                    </Link>
                  );
                })}
          </div>
        </div>

        {/* ── 3. انميشن مدبلج ✨ ── */}
        {animationHomeItems.length > 0 && (
          <div>
            <SectionHeader title="انميشن مدبلج ✨" href="/aw-dubbed?tab=animation" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {animationHomeItems.map((item) => (
                <Link key={item.id} href={item.href}>
                  <motion.div
                    whileTap={{ scale: 0.95 }}
                    className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                  >
                    <div
                      className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                      style={{
                        backgroundColor: "var(--bg-card, #14171C)",
                        borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                      }}
                    >
                      {item.cover && (
                        <img
                          src={item.cover}
                          alt={item.title}
                          className="w-full h-full object-cover"
                          loading="lazy"
                        />
                      )}
                      <div
                        className="absolute top-[7px] right-[7px] px-2 py-0.5 rounded-[12px] text-[9px] font-bold text-white"
                        style={{
                          backgroundColor: item.isSub
                            ? "rgba(220,38,38,0.88)"
                            : "rgba(16,185,129,0.86)",
                        }}
                      >
                        {item.badge}
                      </div>
                      <div
                        className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                        style={{
                          background:
                            "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                        }}
                      >
                        <p className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']">
                          {item.title}
                        </p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              ))}
            </div>
          </div>
        )}

        {/* ── 4. كرتون مدبلج ومترجم 🎬 ── */}
        {cartoonHomeItems.length > 0 && (
          <div>
            <SectionHeader title="كرتون مدبلج ومترجم 🎬" href="/aw-dubbed?tab=cartoon" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {cartoonHomeItems.map((item) => (
                <Link key={item.id} href={item.href}>
                  <motion.div
                    whileTap={{ scale: 0.95 }}
                    className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                  >
                    <div
                      className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                      style={{
                        backgroundColor: "var(--bg-card, #14171C)",
                        borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                      }}
                    >
                      {item.cover && (
                        <img
                          src={item.cover}
                          alt={item.title}
                          className="w-full h-full object-cover"
                          loading="lazy"
                        />
                      )}
                      <div
                        className="absolute top-[7px] right-[7px] px-2 py-0.5 rounded-[12px] text-[9px] font-bold text-white"
                        style={{
                          backgroundColor: item.isSub
                            ? "rgba(220,38,38,0.88)"
                            : "rgba(16,185,129,0.86)",
                        }}
                      >
                        {item.badge}
                      </div>
                      <div
                        className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                        style={{
                          background:
                            "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                        }}
                      >
                        <p className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']">
                          {item.title}
                        </p>
                      </div>
                    </div>
                  </motion.div>
                </Link>
              ))}
            </div>
          </div>
        )}

        {/* ── 5. سبيستون مدبلج 🚀 ── */}
        {spacetoonCards.length > 0 && (
          <div>
            <SectionHeader title="سبيستون مدبلج 🚀" href="/aw-dubbed?tab=spacetoon" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {spacetoonCards.map((s: any) => {
                const key = encodeURIComponent(`${s.provider}-${s.id}`);
                const seasons = encodeURIComponent(
                  JSON.stringify([
                    { label: "قائمة الحلقات", arabicToonsId: `${s.provider}:${s.id}` },
                  ]),
                );
                const href = `/dubbed/${key}?provider=${s.provider}&showId=${s.id}&title=${encodeURIComponent(s.title)}&img=${encodeURIComponent(s.image || "")}&seasons=${seasons}&isMovie=${s.isMovie ? "1" : "0"}&tab=spacetoon`;
                return (
                  <Link key={`${s.provider}-${s.id}`} href={href}>
                    <motion.div
                      whileTap={{ scale: 0.95 }}
                      className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                    >
                      <div
                        className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                        style={{
                          backgroundColor: "var(--bg-card, #14171C)",
                          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                        }}
                      >
                        {s.image && (
                          <img
                            src={s.image}
                            alt={s.title}
                            className="w-full h-full object-cover"
                            loading="lazy"
                          />
                        )}
                        <div
                          className="absolute top-[7px] right-[7px] px-2 py-0.5 rounded-[12px] text-[9px] font-bold text-white"
                          style={{ backgroundColor: "rgba(8, 145, 178, 0.9)" }}
                        >
                          سبيستون
                        </div>
                        <div
                          className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                          style={{
                            background:
                              "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                          }}
                        >
                          <p className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']">
                            {s.title}
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

        {/* ── 6. مانهوا 🔥 ── */}
        {manhwaCards.length > 0 && (
          <div>
            <SectionHeader title="مانهوا 🔥" href="/manga?source=manhwa" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {manhwaCards.map((item: any, idx: number) => {
                const id = item.id || item.slug || idx;
                const title =
                  item.title_ar ||
                  item.title?.english ||
                  item.title?.romaji ||
                  item.title ||
                  "مانهوا";
                const cover = item.coverImage?.large || item.cover || item.poster || "";
                const href = `/manga/${encodeURIComponent(String(id))}?source=manhwa&title=${encodeURIComponent(title)}&cover=${encodeURIComponent(cover)}`;
                return (
                  <Link key={`manhwa-${id}-${idx}`} href={href}>
                    <motion.div
                      whileTap={{ scale: 0.95 }}
                      className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                    >
                      <div
                        className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                        style={{
                          backgroundColor: "var(--bg-card, #14171C)",
                          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                        }}
                      >
                        {cover ? (
                          <img
                            src={cover}
                            alt={title}
                            className="w-full h-full object-cover"
                            loading="lazy"
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center">
                            <BookOpen className="w-7 h-7 opacity-20" />
                          </div>
                        )}
                        <div
                          className="absolute top-[7px] right-[7px] px-2 py-0.5 rounded-[12px] text-[9px] font-bold text-white"
                          style={{ backgroundColor: "rgba(245,158,11,0.9)" }}
                        >
                          مانهوا
                        </div>
                        <div
                          className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                          style={{
                            background:
                              "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                          }}
                        >
                          <p className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']">
                            {title}
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

        {/* ── 7. مانجا مترجمة 📚 ── */}
        {mangaCards.length > 0 && (
          <div>
            <SectionHeader title="مانجا مترجمة 📚" href="/manga?source=manga" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {mangaCards.map((item: any, idx: number) => {
                const id = item.id || item.slug || idx;
                const title =
                  item.title_ar ||
                  item.title?.english ||
                  item.title?.romaji ||
                  item.title ||
                  "مانجا";
                const cover = item.coverImage?.large || item.cover || item.poster || "";
                const href = `/manga/${encodeURIComponent(String(id))}?source=manga&title=${encodeURIComponent(title)}&cover=${encodeURIComponent(cover)}`;
                return (
                  <Link key={`manga-${id}-${idx}`} href={href}>
                    <motion.div
                      whileTap={{ scale: 0.95 }}
                      className="shrink-0 w-[120px] sm:w-[136px] cursor-pointer"
                    >
                      <div
                        className="relative w-full h-[175px] sm:h-[196px] rounded-[12px] overflow-hidden border"
                        style={{
                          backgroundColor: "var(--bg-card, #14171C)",
                          borderColor: "var(--border-subtle, rgba(255,255,255,0.08))",
                        }}
                      >
                        {cover ? (
                          <img
                            src={cover}
                            alt={title}
                            className="w-full h-full object-cover"
                            loading="lazy"
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center">
                            <BookOpen className="w-7 h-7 opacity-20" />
                          </div>
                        )}
                        <div
                          className="absolute top-[7px] right-[7px] px-2 py-0.5 rounded-[12px] text-[9px] font-bold text-white"
                          style={{ backgroundColor: "rgba(16,185,129,0.88)" }}
                        >
                          مانجا
                        </div>
                        <div
                          className="absolute bottom-0 inset-x-0 px-2 pb-2 pt-12"
                          style={{
                            background:
                              "linear-gradient(to top, rgba(0,0,0,0.95) 0%, transparent 100%)",
                          }}
                        >
                          <p className="text-[11px] font-semibold text-white leading-[15px] line-clamp-2 text-right font-['Cairo']">
                            {title}
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

        {/* ── 8. يُعرض حالياً ── */}
        {releasing.length > 0 && (
          <div>
            <SectionHeader title="يُعرض حالياً" href="/browse?status=RELEASING" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {releasing.map((anime) => (
                <MobileAnimeCard key={anime.id} anime={anime} />
              ))}
            </div>
          </div>
        )}

        {/* ── 9. ⭐ الأكثر شعبية ── */}
        {popular.length > 0 && (
          <div>
            <SectionHeader title="⭐ الأكثر شعبية" href="/browse" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {popular.map((anime) => (
                <MobileAnimeCard key={anime.id} anime={anime} />
              ))}
            </div>
          </div>
        )}

        {/* ── 10. 🎬 أفلام الأنمي ── */}
        {movies.length > 0 && (
          <div>
            <SectionHeader title="🎬 أفلام الأنمي" href="/browse?format=MOVIE" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {movies.map((anime) => (
                <MobileAnimeCard key={anime.id} anime={anime} />
              ))}
            </div>
          </div>
        )}

        {/* ── 11. إيسيكاي ── */}
        {isekaiList.length > 0 && (
          <div>
            <SectionHeader title="إيسيكاي" href="/browse?genre=Isekai" />
            <div
              className="flex gap-2.5 overflow-x-auto px-3.5 pb-1"
              style={{ scrollbarWidth: "none" }}
            >
              {isekaiList.map((anime) => (
                <MobileAnimeCard key={anime.id} anime={anime} />
              ))}
            </div>
          </div>
        )}

        {loading && popular.length === 0 && (
          <div className="px-3.5 pt-4 grid grid-cols-3 sm:grid-cols-6 gap-2.5">
            {Array.from({ length: 6 }).map((_, i) => (
              <div
                key={i}
                className="h-[175px] rounded-[12px] bg-white/5 animate-pulse"
              />
            ))}
          </div>
        )}
      </div>
    </main>
  );
}
