import { useQuery } from "@tanstack/react-query";
import { useFocusEffect, useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { ActivityIndicator, FlatList, Image, Linking, Modal, ScrollView, useWindowDimensions } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  I18nManager, Platform, RefreshControl, TextInput,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { AnnouncementBanner } from "@/components/AnnouncementBanner";
import { DrawerMenu } from "@/components/DrawerMenu";
import { HeroSection } from "@/components/HeroSection";
import { SectionHeader } from "@/components/SectionHeader";
import { SectionRow, SkeletonRow } from "@/components/SectionRow";
import { AnimeCard, getRailCardWidth, getRailSidePadding } from "@/components/AnimeCard";
import { useColors } from "@/hooks/useColors";
import {
  AIRING_QUERY, AnilistMedia, anilistQuery,
  POPULAR_QUERY, TRENDING_QUERY,
  TOP_RATED_QUERY, MOVIES_QUERY, ISEKAI_QUERY,
  UPCOMING_QUERY, SEASONAL_QUERY, getCurrentSeason,
} from "@/utils/anilist";

const SEASON_AR: Record<string, string> = {
  WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف",
};

import { historyRoute, useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvListFocusScroll, useTvMetrics , TvFocusGuideView } from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";
import { getPosterUri, getTvPosterUri, proxyPosterUrl } from "@/utils/media";
import { getKnownArabicAnimeTitle } from "@/utils/arabicAnimeTitles";
import {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
  useDubbedCatalogFeed,
} from "@/hooks/useDubbedCatalogFeed";
import {
  fetchLatestEpisodes,
  fetchMangaLatestUpdates,
  getLatestEpisodeRoute,
  normalizeLatestEpisodeItem,
  type LatestEpisodeItem,
  type MangaLatestItem,
} from "@/utils/latestEpisodes";

interface HomeNewsArticle {
  id: string;
  title: string;
  originalTitle?: string;
  description: string;
  url: string;
  thumbnail: string | null;
  publishedAt: string;
  category: string;
}

function formatNewsTimeAgo(iso: string): string {
  const ms = new Date(iso).getTime();
  if (!Number.isFinite(ms)) return "حديثاً";
  const diff = Math.max(0, Date.now() - ms);
  const mins = Math.floor(diff / 60_000);
  if (mins < 1) return "الآن";
  if (mins < 60) return `منذ ${mins} دقيقة`;
  const hrs = Math.floor(mins / 60);
  if (hrs < 24) return hrs === 1 ? "منذ ساعة" : hrs === 2 ? "منذ ساعتين" : `منذ ${hrs} ساعات`;
  const days = Math.floor(hrs / 24);
  if (days < 7) return days === 1 ? "منذ يوم" : days === 2 ? "منذ يومين" : `منذ ${days} أيام`;
  return `منذ ${Math.floor(days / 7)} أسبوع`;
}

function randomSample<T>(items: T[], limit = items.length): T[] {
  const shuffled = [...items];
  for (let i = shuffled.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]];
  }
  return shuffled.slice(0, limit);
}

export default function HomeScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory, syncAccountNow } = useApp();
  useFocusEffect(useCallback(() => {
    void syncAccountNow(false);
  }, [syncAccountNow]));
  const { width, height } = useWindowDimensions();
  const [showDrawer, setShowDrawer] = useState(false);
  const [headerSearch, setHeaderSearch] = useState("");
  const [activeTvSectionIdx, setActiveTvSectionIdx] = useState(-1);
  const { tv: isTvLayout, size: scaleSize } = useTvMetrics();
  const { ready } = useTvFocusMemory("home");
  const homeListRef = useRef<FlatList<any> | null>(null);
  const continueListRef = useRef<FlatList<any> | null>(null);
  const todayEpsListRef = useRef<FlatList<any> | null>(null);
  const dubbedRailListRef = useRef<FlatList<any> | null>(null);
  const mangaRailListRef = useRef<FlatList<any> | null>(null);
  const animeUnifiedListRef = useRef<FlatList<any> | null>(null);
  const newsRailListRef = useRef<FlatList<any> | null>(null);
  const continueFocusScroll = useTvListFocusScroll(continueListRef, 0.35);
  const todayEpsFocusScroll = useTvListFocusScroll(todayEpsListRef, 0.35);
  const dubbedFocusScroll = useTvListFocusScroll(dubbedRailListRef, 0.35);
  const mangaFocusScroll = useTvListFocusScroll(mangaRailListRef, 0.35);
  const animeUnifiedFocusScroll = useTvListFocusScroll(animeUnifiedListRef, 0.35);
  const newsFocusScroll = useTvListFocusScroll(newsRailListRef, 0.35);
  const scrollContinueIntoView = continueFocusScroll.scrollToFocusedIndex;
  const scrollTodayEpsIntoView = todayEpsFocusScroll.scrollToFocusedIndex;
  const scrollDubbedRailIntoView = dubbedFocusScroll.scrollToFocusedIndex;
  const scrollMangaRailIntoView = mangaFocusScroll.scrollToFocusedIndex;
  type LatestHomeTab = "episodes" | "manga";
  const [activeLatestTab, setActiveLatestTab] = useState<LatestHomeTab>("episodes");
  type AnimeUnifiedHomeTab = "airing" | "popular" | "movies";
  const [activeAnimeTab, setActiveAnimeTab] = useState<AnimeUnifiedHomeTab>("airing");
  type DubbedHomeTab = "anime" | "animation" | "spacetoon" | "cartoon" | "cartoon2";
  const [activeDubbedTab, setActiveDubbedTab] = useState<DubbedHomeTab>("anime");
  type MangaHomeTab = "manhwa" | "manga";
  const [activeMangaTab, setActiveMangaTab] = useState<MangaHomeTab>("manhwa");
  const stardimaAnimation = useDubbedCatalogFeed("animation", "", activeDubbedTab === "animation");
  const stardimaCartoon = useDubbedCatalogFeed("cartoon", "", activeDubbedTab === "cartoon");

  const { season, year } = getCurrentSeason();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { data: trending, isLoading: loadingT, refetch: refetchT } = useQuery({
    queryKey: ["trending"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(TRENDING_QUERY, { page: 1 }),
    staleTime: 5 * 60 * 1000,
  });

  const { data: popular, isLoading: loadingP, refetch: refetchP } = useQuery({
    queryKey: ["popular"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(POPULAR_QUERY, { page: 1 }),
    staleTime: 5 * 60 * 1000,
  });

  const { data: airing, isLoading: loadingA, refetch: refetchA } = useQuery({
    queryKey: ["airing"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(AIRING_QUERY),
    staleTime: 5 * 60 * 1000,
  });

  const { data: movies, refetch: refetchM } = useQuery({
    queryKey: ["animeMovies"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(MOVIES_QUERY),
    staleTime: 5 * 60 * 1000,
  });

  const {
    data: homeNewsData,
    isLoading: homeNewsLoading,
    isError: homeNewsError,
    refetch: refetchHomeNews,
  } = useQuery<HomeNewsArticle[]>({
    queryKey: ["homeLatestNews"],
    queryFn: async () => {
      const res = await fetch(`${getBaseUrl()}/api/news?limit=12&hasImage=1`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const json = await res.json();
      const articles = Array.isArray(json?.articles) ? json.articles : [];
      if (articles.length === 0) throw new Error("Empty news feed");
      return articles;
    },
    retry: 4,
    retryDelay: (attempt) => Math.min(2000 * (attempt + 1), 8000),
    staleTime: 1000 * 60 * 10,
  });
  const homeNewsList = homeNewsData || [];
  const [selectedNewsArticle, setSelectedNewsArticle] = useState<HomeNewsArticle | null>(null);

  const { data: isekai, refetch: refetchIsekai } = useQuery({
    queryKey: ["isekai"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ISEKAI_QUERY),
    staleTime: 5 * 60 * 1000,
  });

  /* أحدث الحلقات — أنمي مترجم + الأقسام المدبلجة (أنمي مدبلج، أنيميشن مدبلج، كرتون مدبلج 2) */
  type TodayEp = LatestEpisodeItem;
  const [todayEps, setTodayEps] = useState<TodayEp[]>([]);
  const [todayChecking, setTodayChecking] = useState(true);
  const [latestManga, setLatestManga] = useState<MangaLatestItem[]>([]);
  const [latestMangaChecking, setLatestMangaChecking] = useState(true);

  const loadLatestFeeds = useCallback((signal?: AbortSignal) => {
    fetchLatestEpisodes(signal)
      .then((normalized) => {
        if (signal?.aborted) return;
        setTodayEps(normalized);
        AsyncStorage.setItem("nova-latest-episodes", JSON.stringify(normalized)).catch(() => {});
      })
      .catch(() => {})
      .finally(() => {
        if (!signal?.aborted) setTodayChecking(false);
      });

    fetchMangaLatestUpdates(signal)
      .then((mangaLatest) => {
        if (signal?.aborted) return;
        if (mangaLatest.length > 0) {
          setLatestManga(mangaLatest);
          AsyncStorage.setItem("nova-latest-manga-updates", JSON.stringify(mangaLatest)).catch(() => {});
        }
      })
      .catch(() => {})
      .finally(() => {
        if (!signal?.aborted) setLatestMangaChecking(false);
      });
  }, []);

  useEffect(() => {
    const ctrl = new AbortController();
    AsyncStorage.getItem("nova-latest-episodes").then((stored) => {
      try {
        const parsed = JSON.parse(stored || "[]");
        if (Array.isArray(parsed) && parsed.length) {
          const cachedItems = parsed
            .map((item) => normalizeLatestEpisodeItem(item))
            .filter((item) => item.source === "anslayer" || Boolean(item.dubbedKind));
          if (cachedItems.length) setTodayEps(cachedItems);
        }
      } catch {}
    }).catch(() => {});

    AsyncStorage.getItem("nova-latest-manga-updates").then((stored) => {
      try {
        const parsed = JSON.parse(stored || "[]");
        if (Array.isArray(parsed) && parsed.length) {
          setLatestManga(parsed);
        }
      } catch {}
    }).catch(() => {});

    loadLatestFeeds(ctrl.signal);
    return () => ctrl.abort();
  }, [loadLatestFeeds]);

  const isLoading = loadingT || loadingP || loadingA;

  /* ── القسم الموحد للأعمال المدبلجة (تحميل كسول حسب التبويب المختار) ── */
  const [animezidHomeItems, setAnimezidHomeItems] = useState<any[]>([]);
  const [dubbedSeries, setDubbedSeries] = useState<any[]>([]);
  const [awDubbedSeries, setAwDubbedSeries] = useState<any[]>([]);
  const [cartoon2HomeItems, setCartoon2HomeItems] = useState<any[]>([]);
  const [spacetoonHomeItems, setSpacetoonHomeItems] = useState<any[]>([]);
  const [dubbedTabLoading, setDubbedTabLoading] = useState(false);
  const dubbedFetchedAtRef = useRef<Record<DubbedHomeTab, number>>({
    anime: 0,
    animation: 0,
    spacetoon: 0,
    cartoon: 0,
    cartoon2: 0,
  });
  const dubbedReqRef = useRef<AbortController | null>(null);

  const fetchActiveDubbedTab = useCallback(async (tab: DubbedHomeTab, forceRefresh = false) => {
    const lastFetched = dubbedFetchedAtRef.current[tab] || 0;
    if (!forceRefresh && lastFetched > 0 && Date.now() - lastFetched < 5 * 60 * 1000) return;

    dubbedReqRef.current?.abort();
    const controller = new AbortController();
    dubbedReqRef.current = controller;
    const base = getBaseUrl();

    const hasCached = lastFetched > 0;
    if (!hasCached) setDubbedTabLoading(true);

    try {
      if (tab === "anime") {
        const res = await fetch(`${base}/api/dubbed/animezid/catalog?page=1&sort=newest`, {
          cache: forceRefresh ? "no-store" : "default",
          signal: controller.signal,
        });
        const data = await res.json();
        if (!controller.signal.aborted && Array.isArray(data?.results)) {
          setAnimezidHomeItems(data.results.slice(0, 14));
          dubbedFetchedAtRef.current.anime = Date.now();
        }
      } else if (tab === "animation") {
        const res = await fetch(`${base}/api/aw-dubbed/catalog?page=1`, { signal: controller.signal });
        const data = await res.json();
        if (!controller.signal.aborted && Array.isArray(data?.results)) {
          setAwDubbedSeries(data.results);
          dubbedFetchedAtRef.current.animation = Date.now();
        }
      } else if (tab === "spacetoon") {
        const res = await fetch(`${base}/api/dubbed/carateen/catalog?page=1&limit=18&provider=sp`, {
          signal: controller.signal,
        });
        const data = await res.json();
        if (!controller.signal.aborted && Array.isArray(data?.results)) {
          setSpacetoonHomeItems(data.results.slice(0, 14));
          dubbedFetchedAtRef.current.spacetoon = Date.now();
        }
      } else if (tab === "cartoon") {
        const refresh = forceRefresh ? "&refresh=1" : "";
        const res = await fetch(`${base}/api/dubbed/catalog?page=1${refresh}`, {
          cache: forceRefresh ? "no-store" : "default",
          signal: controller.signal,
        });
        const data = await res.json();
        if (!controller.signal.aborted) {
          const results = data.results || data.items || data.series || [];
          setDubbedSeries(
            (Array.isArray(results) ? results : [])
              .filter(isLegacyCartoonEntry)
              .slice(0, 14),
          );
          dubbedFetchedAtRef.current.cartoon = Date.now();
        }
      } else if (tab === "cartoon2") {
        const res = await fetch(`${base}/api/dubbed/sd2/catalog?page=1&limit=14`, {
          signal: controller.signal,
        });
        const data = await res.json();
        if (!controller.signal.aborted && Array.isArray(data?.results)) {
          setCartoon2HomeItems(data.results.slice(0, 14));
          dubbedFetchedAtRef.current.cartoon2 = Date.now();
        }
      }
    } catch (e: any) {
      if (e?.name !== "AbortError") console.warn(`[Home] dubbed(${tab}) fetch error`);
    } finally {
      if (!controller.signal.aborted) setDubbedTabLoading(false);
    }
  }, []);

  useEffect(() => {
    void fetchActiveDubbedTab(activeDubbedTab);
    return () => dubbedReqRef.current?.abort();
  }, [activeDubbedTab, fetchActiveDubbedTab]);

  /* ── Manhwa (Azorafly) & Manga (MangaDar) from Backend (Phone/Tablet only — hidden in TV mode) ── */
  const { data: manhwaData, refetch: refetchManhwa } = useQuery({
    queryKey: ["homeManhwa"],
    queryFn: async () => {
      const res = await fetch(`${getBaseUrl()}/api/manga/catalog?source=manhwa&page=1`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return res.json();
    },
    enabled: !isTvLayout,
    staleTime: 10 * 60 * 1000,
  });

  const { data: jpMangaData, refetch: refetchJpManga } = useQuery({
    queryKey: ["homeJpManga"],
    queryFn: async () => {
      const res = await fetch(`${getBaseUrl()}/api/manga/catalog?source=manga&page=1`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      return res.json();
    },
    enabled: !isTvLayout,
    staleTime: 10 * 60 * 1000,
  });

  const manhwaItems = useMemo(() => {
    const list = manhwaData?.items || [];
    return list.slice(0, 16).map((m: any) => ({
      id: String(m.id),
      title: m.arTitle || m.arabicTitle || (typeof m.title === "string" ? m.title : m.title?.native || m.title?.english || m.title?.romaji) || "مانهوا",
      subtitle: m.enTitle || m.englishTitle || (typeof m.title === "object" ? m.title?.english : "") || "",
      poster: m.poster || m.coverImage?.extraLarge || m.coverImage?.large || m.cover || "",
      status: m.status || "RELEASING",
      chapters: m.chapters || 0,
      score: m.averageScore || 86,
      source: "manhwa",
      type: "مانهوا ملونة",
    }));
  }, [manhwaData]);

  const mangaItems = useMemo(() => {
    const list = jpMangaData?.items || [];
    return list.slice(0, 16).map((m: any) => ({
      id: String(m.id),
      title: m.arTitle || m.arabicTitle || (typeof m.title === "string" ? m.title : m.title?.native || m.title?.english || m.title?.romaji) || "مانجا",
      subtitle: m.enTitle || m.englishTitle || (typeof m.title === "object" ? m.title?.english : "") || "",
      poster: m.poster || m.coverImage?.extraLarge || m.coverImage?.large || m.cover || "",
      status: m.status || "RELEASING",
      chapters: m.chapters || 0,
      score: m.averageScore || 85,
      source: "manga",
      type: "مانجا مترجمة",
    }));
  }, [jpMangaData]);

  const trendingList = trending?.Page?.media || [];
  const popularList = popular?.Page?.media || [];
  const dubbedHomeRows = useMemo(() => mergeCatalogRows(
    dubbedSeries.slice(0, 7).map((item) => ({ kind: "legacy" as const, item })),
    stardimaCartoon.items.slice(0, 7).map((item) => ({ kind: "stardima" as const, item })),
  ), [dubbedSeries, stardimaCartoon.items]);
  const animationHomeRows = useMemo(() => mergeCatalogRows(
    awDubbedSeries.slice(0, 7).map((item) => ({ kind: "legacy" as const, item })),
    stardimaAnimation.items.slice(0, 7).map((item) => ({ kind: "stardima" as const, item })),
  ), [awDubbedSeries, stardimaAnimation.items]);
  const airingList = airing?.Page?.media || [];
  const moviesList = movies?.Page?.media || [];
  const isekaiList = isekai?.Page?.media || [];

  /* الويب يبني الـHero من الأكثر شعبية ذات الـbanner، وليس من TRENDING. */
  /* Randomize from the full popular catalog so the hero is not fixed to the
     same first four titles on every client. */
  const heroSampleRef = useRef<AnilistMedia[]>([]);
  const heroItems = useMemo(() => {
    const candidates = popularList.filter((m) => m.bannerImage);
    if (!candidates.length) return [];
    const targetCount = isTvLayout ? 4 : 8;
    if (heroSampleRef.current.length > 0 && heroSampleRef.current.length <= targetCount) {
      return heroSampleRef.current;
    }
    const sampled = randomSample(candidates, targetCount);
    heroSampleRef.current = sampled;
    return sampled;
  }, [popularList, isTvLayout]);
  const recentHistory = watchHistory.slice(0, 10);
  const railCardWidth = getRailCardWidth(width, isTvLayout ? 5 : 3);
  const railSidePadding = getRailSidePadding(width);
  const railGap = 10;
  const historyCardWidth = isTvLayout
    ? railCardWidth
    : Math.floor((width - 34) / 3);

  const refresh = async () => {
    heroSampleRef.current = [];
    await Promise.all([
      refetchT(), refetchP(), refetchA(), refetchM(), refetchIsekai(), refetchHomeNews(),
      ...(isTvLayout ? [] : [refetchManhwa(), refetchJpManga()]),
      fetchActiveDubbedTab(activeDubbedTab, true),
    ]);
    loadLatestFeeds();
  };

  type HomeSectionItem =
    | { kind: "continue"; key: string }
    | { kind: "todayEps"; key: string }
    | { kind: "dubbedUnified"; key: string }
    | { kind: "mangaUnified"; key: string }
    | { kind: "animeUnified"; key: string }
    | { kind: "latestNews"; key: string }
    | { kind: "anilist"; key: string; title: string; items: AnilistMedia[]; onSeeAll: () => void };

  const homeSections = useMemo<HomeSectionItem[]>(() => {
    const sections: HomeSectionItem[] = [];
    if (recentHistory.length > 0) sections.push({ kind: "continue", key: "continue" });
    if (todayEps.length > 0 || todayChecking || latestManga.length > 0 || latestMangaChecking) {
      sections.push({ kind: "todayEps", key: "todayEps" });
    }
    sections.push({ kind: "dubbedUnified", key: "dubbedUnified" });
    if (!isTvLayout && (manhwaItems.length > 0 || mangaItems.length > 0)) {
      sections.push({ kind: "mangaUnified", key: "mangaUnified" });
    }
    if (!isLoading) {
      sections.push(
        { kind: "animeUnified", key: "animeUnified" },
        { kind: "latestNews" as const, key: "latestNews" },
        {
          kind: "anilist",
          key: "isekai",
          title: "إيسيكاي",
          items: isekaiList,
          onSeeAll: () => router.push({ pathname: "/browse", params: { genre: "Isekai", genreAr: "إيسيكاي", sort: "POPULARITY_DESC" } } as any),
        },
      );
    }
    return sections;
  }, [
    recentHistory.length,
    todayEps.length,
    todayChecking,
    latestManga.length,
    latestMangaChecking,
    isTvLayout,
    manhwaItems.length,
    mangaItems.length,
    isLoading,
    airingList,
    popularList,
    moviesList,
    homeNewsList.length,
    isekaiList,
    router,
  ]);

  const railStride = railCardWidth + railGap;
  const getRailItemLayout = useCallback(
    (_data: ArrayLike<any> | null | undefined, index: number) => ({
      length: railStride,
      offset: railStride * index,
      index,
    }),
    [railStride],
  );

  const renderHomeSection = ({ item: section }: { item: HomeSectionItem; index: number }) => {
    const sectionFocusable = true;
    const handleSectionFocus = undefined;
    if (section.kind === "anilist") {
      return (
        <SectionRow
          title={section.title}
          items={section.items}
          size="md"
          onSeeAll={section.onSeeAll}
          tvFocusable={sectionFocusable}
          onSectionFocus={handleSectionFocus}
        />
      );
    }
    return (
      <View>
        {/* Continue Watching */}
        {section.kind === "continue" && recentHistory.length > 0 && (
          <View style={{ marginTop: scaleSize(18, 28) }}>
            <SectionHeader
              onSeeAll={() => router.push("/(tabs)/library")}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
              seeAllLabel="السجل الكامل"
            >
              <View style={styles.continueHeading}>
                <View style={[styles.continueAccent, { height: scaleSize(20, 28), backgroundColor: "#06b6d4" }]} />
                <View style={styles.continueTitleWrap}>
                  <Text style={[styles.sectionTitle, { fontSize: scaleSize(16, 25), color: colors.text }]}>متابعة المشاهدة</Text>
                  <Text style={[styles.continueSubtitle, { fontSize: scaleSize(10.5, 14), color: colors.mutedForeground }]} numberOfLines={1}>
                    أكمل حلقاتك من حيث توقفت
                  </Text>
                </View>
              </View>
            </SectionHeader>
            <FlatList
              ref={continueListRef}
                onViewableItemsChanged={continueFocusScroll.onViewableItemsChanged}
                viewabilityConfig={continueFocusScroll.viewabilityConfig}
              data={recentHistory}
              horizontal
               keyExtractor={(h) => `${h.contentKind || "anime"}-${h.contentKey || h.animeId}-${h.season || 1}-${h.ep}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{
                 paddingHorizontal: isTvLayout ? railSidePadding : scaleSize(12, 24),
                 gap: isTvLayout ? railGap : scaleSize(7, 12),
               }}
              renderItem={({ item: h, index: hIdx }) => {
                const hasPlaybackPosition =
                  typeof h.position === "number" &&
                  typeof h.duration === "number" &&
                  h.duration > 0;
                const completionPercent = hasPlaybackPosition
                  ? Math.max(0, Math.min(100, Math.round((h.position! / h.duration!) * 100)))
                  : null;
                const remainingMinutes = hasPlaybackPosition
                  ? Math.max(1, Math.ceil((h.duration! - h.position!) / 60))
                  : null;
                const remainingEpisodes =
                  typeof h.totalEps === "number" && h.totalEps > h.ep
                    ? h.totalEps - h.ep
                    : null;
                const hScale = Math.max(0.72, Math.min(1.18, historyCardWidth / 155));
                const compactCard = historyCardWidth < 138;
                const leftBadgeText = remainingMinutes !== null
                  ? (compactCard ? `${remainingMinutes} د` : `متبقي ${remainingMinutes} د`)
                  : remainingEpisodes !== null
                    ? (compactCard ? `متبقي ${remainingEpisodes}` : `متبقي ${remainingEpisodes} حلقة`)
                    : "متابعة";
                const rightBadgeText = compactCard ? `ح ${h.ep}` : `الحلقة ${h.ep}`;
                const resumeLabel = compactCard ? "استئناف المشاهدة" : "استئناف المشاهدة الآن";
                return (
                  <Pressable
                    onPress={() => router.push(historyRoute(h) as any)}
                    onFocus={() => {
                      handleSectionFocus?.();
                      if (isTvLayout) scrollContinueIntoView(hIdx);
                    }}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ focused }) => [
                      styles.historyCard,
                      {
                        width: historyCardWidth,
                        height: Math.round(historyCardWidth * 0.84),
                        backgroundColor: colors.card,
                        borderColor: colors.border,
                        borderRadius: Math.round(14 * hScale),
                      },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    <Image
                      source={{ uri: h.thumbnail || `https://img.anili.st/media/${h.animeId}` }}
                      style={styles.historyImg}
                      resizeMode="cover"
                      resizeMethod="resize"
                      fadeDuration={0}
                    />
                    <View
                      style={[
                        styles.historyBadge,
                        styles.historyRemainingBadge,
                        {
                          top: Math.round(5.5 * hScale),
                          left: Math.round(5.5 * hScale),
                          paddingHorizontal: Math.round(5.5 * hScale),
                          paddingVertical: Math.max(1.5, Math.round(2 * hScale)),
                          borderRadius: Math.round(9 * hScale),
                        },
                      ]}
                    >
                      <Text style={[styles.historyBadgeText, { fontSize: Math.max(7, Math.round(7.8 * hScale)) }]} numberOfLines={1}>
                        {leftBadgeText}
                      </Text>
                    </View>
                    <View
                      style={[
                        styles.historyBadge,
                        styles.historyEpisodeBadge,
                        {
                          top: Math.round(5.5 * hScale),
                          right: Math.round(5.5 * hScale),
                          paddingHorizontal: Math.round(5.5 * hScale),
                          paddingVertical: Math.max(1.5, Math.round(2 * hScale)),
                          borderRadius: Math.round(9 * hScale),
                        },
                      ]}
                    >
                      <Text style={[styles.historyBadgeText, { fontSize: Math.max(7, Math.round(7.8 * hScale)) }]} numberOfLines={1}>
                        {rightBadgeText}
                      </Text>
                    </View>
                    <LinearGradient
                      colors={["transparent", "rgba(0,0,0,0.94)"]}
                      style={[
                        styles.historyGrad,
                        {
                          paddingHorizontal: Math.round(6.5 * hScale),
                          paddingBottom: Math.round(5.5 * hScale),
                          paddingTop: Math.round(22 * hScale),
                        },
                      ]}
                    >
                      <Text
                        style={[
                          styles.historyTitle,
                          { fontSize: Math.max(8.5, Math.round(9.8 * hScale)) },
                        ]}
                        numberOfLines={1}
                      >
                        {h.titleAr || getKnownArabicAnimeTitle(h.animeId, h.english, h.title) || h.english || h.title}
                      </Text>
                      <View style={styles.historyResumeRow}>
                        <Text style={[styles.historyPercent, { fontSize: Math.max(7.5, Math.round(8.5 * hScale)) }]}>
                          {completionPercent !== null ? `${completionPercent}%` : `ح ${h.ep}`}
                        </Text>
                        <Text style={[styles.historyResumeText, { fontSize: Math.max(7, Math.round(7.8 * hScale)) }]} numberOfLines={1}>
                          {resumeLabel}
                        </Text>
                      </View>
                      <View style={styles.historyProgress}>
                        <View
                          style={[
                            styles.historyProgressFill,
                            {
                              width: `${completionPercent ?? 0}%`,
                              backgroundColor: colors.homeAccent,
                            },
                          ]}
                        />
                      </View>
                    </LinearGradient>
                    {isTvLayout && (
                      <View pointerEvents="none" style={styles.tvCardFocusHidden} />
                    )}
                  </Pressable>
                );
              }}
              initialNumToRender={isTvLayout ? 5 : 5}
              maxToRenderPerBatch={isTvLayout ? 4 : 5}
              windowSize={isTvLayout ? 5 : 3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {/* أحدث الحلقات وفصول المانجا والمانهوا — قسم مدمج بنظام التبويبات مثل المدبلج */}
        {section.kind === "todayEps" && (todayEps.length > 0 || todayChecking || latestManga.length > 0 || latestMangaChecking) && (
          <View style={{ marginTop: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push((activeLatestTab === "manga" ? "/manga" : "/latest") as any)}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={{ fontSize: isTvLayout ? 22 : 15 }}>{activeLatestTab === "manga" ? "📖" : "📺"}</Text>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>
                  {activeLatestTab === "manga" ? "أحدث الفصول" : "أحدث الحلقات"}
                </Text>
                <View style={[styles.continueAccent, { backgroundColor: activeLatestTab === "manga" ? "#F59E0B" : (colors.homeAccent || "#06b6d4") }]} />
              </View>
            </SectionHeader>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              style={{ marginBottom: 12 }}
              contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: 8, flexDirection: "row", alignItems: "center" }}
            >
              {([
                { key: "episodes" as const, label: "أحدث الحلقات", color: "#06b6d4" },
                { key: "manga" as const, label: "المانجا والمانهوا", color: "#F59E0B" },
              ]).map((tabOpt) => {
                const isActive = activeLatestTab === tabOpt.key;
                return (
                  <Pressable
                    key={tabOpt.key}
                    onPress={() => {
                      setActiveLatestTab(tabOpt.key);
                      todayEpsListRef.current?.scrollToOffset({ offset: 0, animated: false });
                    }}
                    onFocus={handleSectionFocus}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ focused }) => [
                      {
                        paddingHorizontal: isTvLayout ? 20 : 16,
                        paddingVertical: isTvLayout ? 9 : 7,
                        borderRadius: 12,
                        borderWidth: 1,
                        flexShrink: 0,
                        alignItems: "center",
                        justifyContent: "center",
                        backgroundColor: isActive ? `${tabOpt.color}22` : colors.card,
                        borderColor: isActive ? `${tabOpt.color}88` : colors.border,
                      },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    <Text
                      style={{
                        fontSize: isTvLayout ? 15 : 12.5,
                        lineHeight: isTvLayout ? 22 : 19,
                        fontFamily: "Cairo_700Bold",
                        color: isActive ? tabOpt.color : colors.mutedForeground,
                        includeFontPadding: false,
                        textAlign: "center",
                        paddingHorizontal: 3,
                        flexShrink: 0,
                      }}
                    >
                      {` ${tabOpt.label} `}
                    </Text>
                  </Pressable>
                );
              })}
            </ScrollView>
            {activeLatestTab === "episodes" ? (
              todayChecking && todayEps.length === 0 ? (
                <SkeletonRow />
              ) : (
                <FlatList
                  ref={todayEpsListRef}
                  data={todayEps}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  onViewableItemsChanged={todayEpsFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={todayEpsFocusScroll.viewabilityConfig}
                  keyExtractor={(ep, idx) => `${ep.source}-${ep.anslayerId || ep.awAnimeId || ep.animeId || ep.name || "ep"}-${ep.episode}-${idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item: ep, index: epIdx }) => (
                    <Pressable
                      onPress={() => {
                        const target = getLatestEpisodeRoute(ep);
                        if (target.params) {
                          router.push({ pathname: target.pathname as any, params: target.params });
                        } else {
                          router.push(target.pathname as any);
                        }
                      }}
                      onFocus={() => {
                        handleSectionFocus?.();
                        if (isTvLayout) scrollTodayEpsIntoView(epIdx);
                      }}
                      focusable={isTvLayout && sectionFocusable}
                      style={({ focused }) => [todayEpStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                    >
                      {ep.cover ? (
                        <Image
                          source={{ uri: isTvLayout
                            ? getTvPosterUri(ep, !ep.dubbedKind && ep.animeId ? `https://img.anili.st/media/${ep.animeId}` : "")
                            : getPosterUri(ep, !ep.dubbedKind && ep.animeId ? `https://img.anili.st/media/${ep.animeId}` : "") }}
                          style={todayEpStyles.img}
                          resizeMode="cover"
                          resizeMethod="resize"
                          fadeDuration={0}
                        />
                      ) : (
                        <View style={[todayEpStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                          <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                        </View>
                      )}
                      <View style={[styles.historyBadge, styles.historyEpisodeBadge]}>
                        <Text style={styles.historyBadgeText}>
                          {ep.isMovie ? "فيلم" : `الحلقة ${ep.episode}`}
                        </Text>
                      </View>
                      {ep.dubbedKind && ep.sectionLabel ? (
                        <View
                          style={{
                            position: "absolute",
                            top: 6,
                            left: 6,
                            paddingHorizontal: 6,
                            paddingVertical: 2,
                            borderRadius: 6,
                            backgroundColor:
                              ep.dubbedKind === "dubbed-anime"
                                ? "rgba(16, 185, 129, 0.92)"
                                : ep.dubbedKind === "aw-dubbed"
                                  ? "rgba(139, 92, 246, 0.92)"
                                  : "rgba(245, 158, 11, 0.92)",
                          }}
                        >
                          <Text style={{ color: "#fff", fontSize: 8.5, fontFamily: "Cairo_700Bold" }} numberOfLines={1}>
                            {ep.sectionLabel}
                          </Text>
                        </View>
                      ) : null}
                      {(() => {
                        const epArRaw = ep.titleAr || ep.title_ar || (!ep.dubbedKind ? getKnownArabicAnimeTitle(ep.animeId || ep.anilistId, ep.english || ep.name, ep.romaji || ep.name) : ep.name);
                        const epAr = typeof epArRaw === "string" ? epArRaw : "";
                        const epEn = String(ep.english || ep.romaji || ep.name || "");
                        return (
                          <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                            <Text style={todayEpStyles.title} numberOfLines={2}>{epAr || ep.name}</Text>
                            {epAr && epEn && epAr.trim() !== epEn.trim() ? (
                              <Text
                                style={{
                                  color: "rgba(255,255,255,0.72)",
                                  fontSize: isTvLayout ? 11 : 8.5,
                                  lineHeight: isTvLayout ? 15 : 12,
                                  fontFamily: "Cairo_600SemiBold",
                                  textAlign: "right",
                                  writingDirection: "ltr",
                                  marginTop: 1,
                                }}
                                numberOfLines={1}
                              >
                                {epEn}
                              </Text>
                            ) : null}
                          </LinearGradient>
                        );
                      })()}
                    </Pressable>
                  )}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={isTvLayout ? 5 : 3}
                  removeClippedSubviews={false}
                />
              )
            ) : latestMangaChecking && latestManga.length === 0 ? (
              <SkeletonRow />
            ) : (
              <FlatList
                ref={todayEpsListRef}
                data={latestManga}
                horizontal
                getItemLayout={getRailItemLayout}
                onViewableItemsChanged={todayEpsFocusScroll.onViewableItemsChanged}
                viewabilityConfig={todayEpsFocusScroll.viewabilityConfig}
                keyExtractor={(item, idx) => `latest-manga-${item.id}-${idx}`}
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                renderItem={({ item, index: mIdx }) => {
                  const posterUri = proxyPosterUrl(item.poster) || item.poster || "";
                  const isManhwa = item.source === "manhwa" || item.typeLabel === "مانهوا";
                  return (
                    <Pressable
                      onPress={() =>
                        router.push({
                          pathname: "/manga/[id]" as any,
                          params: {
                            id: item.id,
                            title: item.arabicTitle || item.title,
                            english: item.englishTitle || item.title,
                            cover: posterUri,
                            source: item.source,
                          },
                        })
                      }
                      onFocus={() => {
                        handleSectionFocus?.();
                        if (isTvLayout) scrollTodayEpsIntoView(mIdx);
                      }}
                      focusable={isTvLayout && sectionFocusable}
                      style={({ focused }) => [
                        todayEpStyles.card,
                        {
                          width: railCardWidth,
                          height: Math.round(railCardWidth * 1.46),
                          backgroundColor: colors.card,
                          borderColor: colors.border,
                        },
                        isTvLayout && tvFocusStyle(focused),
                      ]}
                    >
                      {posterUri ? (
                        <Image
                          source={{ uri: posterUri }}
                          style={todayEpStyles.img}
                          resizeMode="cover"
                          resizeMethod="resize"
                          fadeDuration={0}
                        />
                      ) : (
                        <View style={[todayEpStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                          <Ionicons name="book-outline" size={28} color="rgba(255,255,255,0.25)" />
                        </View>
                      )}
                      <View style={[styles.historyBadge, { backgroundColor: "rgba(245, 158, 11, 0.94)" }]}>
                        <Text style={[styles.historyBadgeText, { color: "#09090B" }]}>
                          {item.latestChapter ? `الفصل ${item.latestChapter}` : "جديد"}
                        </Text>
                      </View>
                      <View
                        style={{
                          position: "absolute",
                          top: 6,
                          left: 6,
                          paddingHorizontal: 6,
                          paddingVertical: 2,
                          borderRadius: 6,
                          backgroundColor: isManhwa ? "rgba(14, 165, 233, 0.92)" : "rgba(236, 72, 153, 0.92)",
                        }}
                      >
                        <Text style={{ color: "#fff", fontSize: 8.5, fontFamily: "Cairo_700Bold" }}>
                          {isManhwa ? "مانهوا" : "مانجا"}
                        </Text>
                      </View>
                      <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                        <Text style={todayEpStyles.title} numberOfLines={2}>
                          {item.arabicTitle || item.title}
                        </Text>
                        {item.englishTitle && item.englishTitle.trim() !== (item.arabicTitle || item.title).trim() ? (
                          <Text
                            style={{
                              color: "rgba(255,255,255,0.72)",
                              fontSize: isTvLayout ? 11 : 8.5,
                              lineHeight: isTvLayout ? 15 : 12,
                              fontFamily: "Cairo_600SemiBold",
                              textAlign: "right",
                              writingDirection: "ltr",
                              marginTop: 1,
                            }}
                            numberOfLines={1}
                          >
                            {item.englishTitle}
                          </Text>
                        ) : null}
                      </LinearGradient>
                    </Pressable>
                  );
                }}
                initialNumToRender={5}
                maxToRenderPerBatch={5}
                windowSize={isTvLayout ? 5 : 3}
                removeClippedSubviews={false}
              />
            )}
          </View>
        )}

        {/* ── الأنمي والأفلام (دمج يُعرض حالياً + الأكثر شعبية + أفلام الأنمي بنظام التبويبات مثل المدبلج) ── */}
        {section.kind === "animeUnified" && (() => {
          const animeTabs = [
            {
              key: "airing" as const,
              label: "يُعرض حالياً",
              icon: "🔥",
              color: "#06b6d4",
              items: airingList,
              onSeeAll: () => router.push({ pathname: "/browse", params: { status: "RELEASING", sort: "POPULARITY_DESC" } } as any),
            },
            {
              key: "popular" as const,
              label: "الأكثر شعبية",
              icon: "⭐",
              color: "#F59E0B",
              items: popularList,
              onSeeAll: () => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC" } } as any),
            },
            {
              key: "movies" as const,
              label: "أفلام الأنمي",
              icon: "🎬",
              color: "#a855f7",
              items: moviesList,
              onSeeAll: () => router.push({ pathname: "/browse", params: { format: "MOVIE", sort: "POPULARITY_DESC" } } as any),
            },
          ];
          const currentTab = animeTabs.find((t) => t.key === activeAnimeTab) || animeTabs[0];
          const activeItems = currentTab.items || [];
          return (
            <View style={{ marginTop: 24 }}>
              <SectionHeader
                onSeeAll={currentTab.onSeeAll}
                focusable={isTvLayout && sectionFocusable}
                onFocus={handleSectionFocus}
              >
                <View style={styles.sectionRightRow}>
                  <Text style={{ fontSize: isTvLayout ? 22 : 16 }}>{currentTab.icon}</Text>
                  <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>
                    {currentTab.label}
                  </Text>
                  <View style={[styles.continueAccent, { backgroundColor: currentTab.color }]} />
                </View>
              </SectionHeader>
              <ScrollView
                horizontal
                showsHorizontalScrollIndicator={false}
                style={{ marginBottom: 12 }}
                contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: 8, flexDirection: "row", alignItems: "center" }}
              >
                {animeTabs.map((tabOpt) => {
                  const isActive = activeAnimeTab === tabOpt.key;
                  return (
                    <Pressable
                      key={tabOpt.key}
                      onPress={() => {
                        setActiveAnimeTab(tabOpt.key);
                        animeUnifiedListRef.current?.scrollToOffset({ offset: 0, animated: false });
                      }}
                      onFocus={handleSectionFocus}
                      focusable={isTvLayout && sectionFocusable}
                      style={({ focused }) => [
                        {
                          paddingHorizontal: isTvLayout ? 20 : 16,
                          paddingVertical: isTvLayout ? 9 : 7,
                          borderRadius: 12,
                          borderWidth: 1,
                          flexShrink: 0,
                          alignItems: "center",
                          justifyContent: "center",
                          backgroundColor: isActive ? `${tabOpt.color}22` : colors.card,
                          borderColor: isActive ? `${tabOpt.color}88` : colors.border,
                        },
                        isTvLayout && tvFocusStyle(focused),
                      ]}
                    >
                      <Text
                        style={{
                          fontSize: isTvLayout ? 15 : 12.5,
                          lineHeight: isTvLayout ? 22 : 19,
                          fontFamily: "Cairo_700Bold",
                          color: isActive ? tabOpt.color : colors.mutedForeground,
                          includeFontPadding: false,
                          textAlign: "center",
                          paddingHorizontal: 3,
                          flexShrink: 0,
                        }}
                      >
                        {` ${tabOpt.label} `}
                      </Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
              {activeItems.length === 0 ? (
                <SkeletonRow />
              ) : (
                <FlatList
                  ref={animeUnifiedListRef}
                  data={isTvLayout ? activeItems.slice(0, 14) : activeItems}
                  horizontal
                  onViewableItemsChanged={animeUnifiedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={animeUnifiedFocusScroll.viewabilityConfig}
                  keyExtractor={(item) => `unified-${activeAnimeTab}-${item.id}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: 14 }}
                  getItemLayout={(_, index) => ({
                    length: railCardWidth + 14,
                    offset: (railCardWidth + 14) * index,
                    index,
                  })}
                  renderItem={({ item, index }) => (
                    <AnimeCard
                      anime={item}
                      size="md"
                      cardWidth={railCardWidth}
                      tvFocusable={sectionFocusable}
                      hasTVPreferredFocus={false}
                      onFocus={() => {
                        handleSectionFocus?.();
                        if (isTvLayout) animeUnifiedFocusScroll.scrollToFocusedIndex(index);
                      }}
                    />
                  )}
                  initialNumToRender={isTvLayout ? 5 : 4}
                  maxToRenderPerBatch={isTvLayout ? 4 : 3}
                  windowSize={isTvLayout ? 5 : 3}
                  removeClippedSubviews={false}
                />
              )}
            </View>
          );
        })()}

        {/* ── آخر الأخبار (أسفل أفلام الأنمي مباشرة) ── */}
        {section.kind === "latestNews" && (
          <View style={{ marginTop: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/(tabs)/news" as any)}
              seeAllLabel="عرض المزيد"
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>آخر الأخبار</Text>
                <View style={[styles.continueAccent, { backgroundColor: "#06b6d4" }]} />
              </View>
            </SectionHeader>
            {homeNewsLoading && homeNewsList.length === 0 ? (
              <SkeletonRow />
            ) : homeNewsList.length === 0 ? (
              <Pressable
                onPress={() => void refetchHomeNews()}
                style={{
                  marginHorizontal: railSidePadding,
                  paddingVertical: 18,
                  paddingHorizontal: 16,
                  borderRadius: 14,
                  borderWidth: 1,
                  borderColor: colors.border,
                  backgroundColor: colors.card,
                  flexDirection: "row",
                  alignItems: "center",
                  justifyContent: "center",
                  gap: 8,
                }}
              >
                <Ionicons name="refresh" size={16} color="#06b6d4" />
                <Text style={{ color: colors.text, fontFamily: "Cairo_700Bold", fontSize: 12 }}>
                  {homeNewsError ? "تعذّر تحميل الأخبار · اضغط لإعادة المحاولة" : "جاري تحميل آخر الأخبار..."}
                </Text>
              </Pressable>
            ) : (
            <FlatList
              ref={newsRailListRef}
              data={homeNewsList}
              horizontal
              onViewableItemsChanged={newsFocusScroll.onViewableItemsChanged}
              viewabilityConfig={newsFocusScroll.viewabilityConfig}
              keyExtractor={(art) => `home-news-${art.id}`}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: isTvLayout ? 16 : 12 }}
              renderItem={({ item: art, index: newsIdx }) => {
                const cardW = isTvLayout ? 340 : 276;
                const imgH = isTvLayout ? 172 : 148;
                return (
                  <Pressable
                    onPress={() => setSelectedNewsArticle(art)}
                    onFocus={() => {
                      handleSectionFocus?.();
                      if (isTvLayout) newsFocusScroll.scrollToFocusedIndex(newsIdx);
                    }}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ pressed, focused }) => [
                      homeNewsStyles.card,
                      {
                        width: cardW,
                        backgroundColor: colors.card,
                        borderColor: colors.border,
                      },
                      pressed && { opacity: 0.85 },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={[homeNewsStyles.thumbWrap, { height: imgH }]}>
                      {art.thumbnail ? (
                        <Image
                          source={{ uri: art.thumbnail }}
                          style={homeNewsStyles.thumbImg}
                          resizeMode="cover"
                          resizeMethod="resize"
                          fadeDuration={0}
                        />
                      ) : (
                        <View style={[homeNewsStyles.thumbImg, { backgroundColor: colors.surface, alignItems: "center", justifyContent: "center" }]}>
                          <Ionicons name="newspaper-outline" size={30} color="rgba(6,182,212,0.5)" />
                        </View>
                      )}
                      <LinearGradient
                        colors={["rgba(0,0,0,0.05)", "rgba(0,0,0,0.55)"]}
                        style={homeNewsStyles.thumbGrad}
                      />
                      {/* تصنيف الخبر أعلى اليمين */}
                      <View style={homeNewsStyles.catBadge}>
                        <Text style={homeNewsStyles.catBadgeText}>{art.category || "أخبار الأنمي"}</Text>
                      </View>
                      {/* أزرار سريعة دائرية أسفل يسار الصورة (مطابق للصورة المرفقة) */}
                      <View style={homeNewsStyles.floatingActions}>
                        <Pressable
                          onPress={(e) => {
                            e.stopPropagation();
                            router.push({
                              pathname: "/comments" as any,
                              params: {
                                tmdbId: `news-${art.id}`,
                                title: art.title,
                                type: "news",
                              },
                            });
                          }}
                          hitSlop={6}
                          style={({ pressed }) => [homeNewsStyles.circleBtn, pressed && { opacity: 0.75 }]}
                        >
                          <Ionicons name="chatbox-ellipses" size={16} color="#18181B" />
                        </Pressable>
                        <Pressable
                          onPress={(e) => {
                            e.stopPropagation();
                            Linking.openURL(art.url).catch(() => {});
                          }}
                          hitSlop={6}
                          style={({ pressed }) => [homeNewsStyles.circleBtn, pressed && { opacity: 0.75 }]}
                        >
                          <Ionicons name="link" size={16} color="#18181B" />
                        </Pressable>
                      </View>
                    </View>
                    <View style={homeNewsStyles.body}>
                      <Text
                        style={[homeNewsStyles.title, { color: colors.text, fontSize: isTvLayout ? 15 : 13.5 }]}
                        numberOfLines={2}
                      >
                        {art.title}
                      </Text>
                      {!!art.description && (
                        <Text
                          style={[homeNewsStyles.desc, { color: colors.mutedForeground, fontSize: isTvLayout ? 12.5 : 11 }]}
                          numberOfLines={3}
                        >
                          {art.description}
                        </Text>
                      )}
                      <View style={homeNewsStyles.footerRow}>
                        <View style={{ flexDirection: "row", alignItems: "center", gap: 2 }}>
                          <Ionicons name="chevron-back" size={13} color={colors.homeAccent || "#06b6d4"} />
                          <Text style={[homeNewsStyles.readMore, { color: colors.homeAccent || "#06b6d4" }]}>
                            التفاصيل
                          </Text>
                        </View>
                        <Text style={[homeNewsStyles.time, { color: colors.mutedForeground }]}>
                          {formatNewsTimeAgo(art.publishedAt)}
                        </Text>
                      </View>
                    </View>
                  </Pressable>
                );
              }}
              initialNumToRender={4}
              maxToRenderPerBatch={4}
              windowSize={3}
              removeClippedSubviews={false}
            />
            )}
          </View>
        )}

        {/* ── القسم الموحد للأعمال المدبلجة ── */}
        {section.kind === "dubbedUnified" && (
          <View style={{ marginTop: 22, marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push({ pathname: "/aw-dubbed" as any, params: { tab: activeDubbedTab } })}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={{ fontSize: isTvLayout ? 22 : 15 }}>✨</Text>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>
                  الأنمي والكرتون المدبلج
                </Text>
                <View style={[styles.continueAccent, { backgroundColor: "#06b6d4" }]} />
              </View>
            </SectionHeader>

            <ScrollView
              horizontal
              focusable={false}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{
                flexDirection: "row-reverse",
                alignItems: "center",
                gap: 8,
                paddingHorizontal: railSidePadding,
                marginBottom: 12,
              }}
            >
              {(
                [
                  { key: "anime" as const, label: "أنمي مدبلج", color: "#06b6d4" },
                  { key: "animation" as const, label: "أنيميشن مدبلج", color: "#10B981" },
                  { key: "spacetoon" as const, label: "سبيستون", color: "#38BDF8" },
                  { key: "cartoon" as const, label: "كرتون مدبلج", color: "#7C3AED" },
                  { key: "cartoon2" as const, label: "كرتون مدبلج 2", color: "#F59E0B" },
                ]
              ).map((tabOpt) => {
                const isActive = activeDubbedTab === tabOpt.key;
                return (
                  <Pressable
                    key={tabOpt.key}
                    onPress={() => {
                      setActiveDubbedTab(tabOpt.key);
                      dubbedRailListRef.current?.scrollToOffset({ offset: 0, animated: false });
                    }}
                    onFocus={handleSectionFocus}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ focused }) => [
                      {
                        paddingHorizontal: isTvLayout ? 20 : 16,
                        paddingVertical: isTvLayout ? 9 : 7,
                        borderRadius: 12,
                        borderWidth: 1,
                        flexShrink: 0,
                        alignItems: "center",
                        justifyContent: "center",
                        backgroundColor: isActive ? `${tabOpt.color}22` : colors.card,
                        borderColor: isActive ? `${tabOpt.color}88` : colors.border,
                      },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    <Text
                      style={{
                        fontSize: isTvLayout ? 15 : 12.5,
                        lineHeight: isTvLayout ? 22 : 19,
                        fontFamily: "Cairo_700Bold",
                        color: isActive ? tabOpt.color : colors.mutedForeground,
                        includeFontPadding: false,
                        textAlign: "center",
                        paddingHorizontal: 3,
                        flexShrink: 0,
                      }}
                    >
                      {` ${tabOpt.label} `}
                    </Text>
                  </Pressable>
                );
              })}
            </ScrollView>

            {activeDubbedTab === "anime" ? (
              animezidHomeItems.length > 0 ? (
                <FlatList
                  ref={dubbedRailListRef}
                  onViewableItemsChanged={dubbedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={dubbedFocusScroll.viewabilityConfig}
                  data={animezidHomeItems}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  keyExtractor={(item, idx) => `az-home:${item.slug || idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item, index: itemIdx }) => {
                    const imgUri = proxyPosterUrl(item.poster) || null;
                    return (
                      <Pressable
                        onPress={() =>
                          router.push({
                            pathname: "/dubbed-anime/[slug]" as any,
                            params: {
                              slug: item.slug,
                              title: item.title,
                              poster: item.poster || "",
                            },
                          })
                        }
                        onFocus={() => {
                          handleSectionFocus?.();
                          if (isTvLayout) scrollDubbedRailIntoView(itemIdx);
                        }}
                        focusable={isTvLayout && sectionFocusable}
                        style={({ focused }) => [
                          todayStyles.card,
                          { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                          isTvLayout && tvFocusStyle(focused),
                        ]}
                      >
                        {imgUri ? (
                          <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="film-outline" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        <View style={{
                          position: "absolute", top: 8, right: 8, zIndex: 2,
                          paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, backgroundColor: "#10B981",
                        }}>
                          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                            {item.badge || "مدبلج"}
                          </Text>
                        </View>
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                        </LinearGradient>
                      </Pressable>
                    );
                  }}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={3}
                  removeClippedSubviews={false}
                />
              ) : dubbedTabLoading ? (
                <View style={{ height: Math.round(railCardWidth * 1.46), alignItems: "center", justifyContent: "center" }}>
                  <ActivityIndicator color="#06b6d4" />
                </View>
              ) : null
            ) : activeDubbedTab === "animation" ? (
              animationHomeRows.length > 0 ? (
                <FlatList
                  ref={dubbedRailListRef}
                  onViewableItemsChanged={dubbedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={dubbedFocusScroll.viewabilityConfig}
                  data={animationHomeRows}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  keyExtractor={(row, idx) => row.kind === "stardima"
                    ? `stardima:${row.item.provider_title_id}`
                    : `aw:${row.item.key || idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item: row, index: rowIdx }) => {
                    const item = row.item;
                    const stardima = row.kind === "stardima";
                    const rawImg = stardima
                      ? String(item.poster_url || item.backdrop_url || "").trim()
                      : getPosterUri(item) || "";
                    const imgUri = proxyPosterUrl(rawImg) || null;
                    const titleText = stardima
                      ? item.title_ar || item.title || item.title_en || "عنوان"
                      : item.english || item.title;
                    const badgeText = stardima ? catalogBadge(item, "animation") : "مدبلج";
                    const badgeColor = badgeText?.includes("مترجم") ? "#D94141" : "#35B955";
                    return (
                      <Pressable
                        onPress={() => {
                          if (stardima) {
                            router.push({
                              pathname: "/stardima-title" as any,
                              params: { providerTitleId: item.provider_title_id },
                            });
                            return;
                          }
                          const key = String(item.key || "").trim();
                          if (!key) return;
                          const seasons = JSON.stringify(
                            Array.isArray(item.seasons) && item.seasons.length
                              ? item.seasons
                              : [{ label: "الحلقات", animeId: key }],
                          );
                          router.push({
                            pathname: "/aw-dubbed/[key]" as any,
                            params: {
                              key: encodeURIComponent(key),
                              title: item.title || "",
                              titleAr: item.titleAr || "",
                              seasons: encodeURIComponent(seasons),
                              poster: encodeURIComponent(imgUri || ""),
                            },
                          });
                        }}
                        onFocus={() => {
                          handleSectionFocus?.();
                          if (isTvLayout) scrollDubbedRailIntoView(rowIdx);
                        }}
                        focusable={isTvLayout && sectionFocusable}
                        style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                      >
                        {imgUri ? (
                          <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="film-outline" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        <View style={{
                          position: "absolute", top: 8, right: 8, zIndex: 2,
                          paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, backgroundColor: badgeColor,
                        }}>
                          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                            {badgeText || "مدبلج"}
                          </Text>
                        </View>
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{titleText}</Text>
                          {(item.title_ar && !stardima) ? (
                            <Text style={{ color: "rgba(255,255,255,0.75)", fontSize: isTvLayout ? 14 : 9, lineHeight: isTvLayout ? 20 : 13, fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl", marginTop: 2 }} numberOfLines={1}>
                              {item.title_ar}
                            </Text>
                          ) : null}
                        </LinearGradient>
                      </Pressable>
                    );
                  }}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={3}
                  removeClippedSubviews={false}
                />
              ) : (dubbedTabLoading || stardimaAnimation.loading) ? (
                <View style={{ height: Math.round(railCardWidth * 1.46), alignItems: "center", justifyContent: "center" }}>
                  <ActivityIndicator color="#10B981" />
                </View>
              ) : null
            ) : activeDubbedTab === "spacetoon" ? (
              spacetoonHomeItems.length > 0 ? (
                <FlatList
                  ref={dubbedRailListRef}
                  onViewableItemsChanged={dubbedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={dubbedFocusScroll.viewabilityConfig}
                  data={spacetoonHomeItems}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  keyExtractor={(item, idx) => `sp-home:${item.id || idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item, index: spIdx }) => {
                    const imgUri = proxyPosterUrl(item.image) || null;
                    return (
                      <Pressable
                        onPress={() =>
                          router.push({
                            pathname: "/dubbed/[id]" as any,
                            params: {
                              id: `sp-${item.id}`,
                              provider: "sp",
                              showId: String(item.id),
                              isMovie: item.isMovie ? "1" : "0",
                              title: item.title,
                              img: item.image || "",
                            },
                          })
                        }
                        onFocus={() => {
                          handleSectionFocus?.();
                          if (isTvLayout) scrollDubbedRailIntoView(spIdx);
                        }}
                        focusable={isTvLayout && sectionFocusable}
                        style={({ focused }) => [
                          todayStyles.card,
                          { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                          isTvLayout && tvFocusStyle(focused),
                        ]}
                      >
                        {imgUri ? (
                          <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="planet-outline" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        <View style={{
                          position: "absolute", top: 8, right: 8, zIndex: 2,
                          paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, backgroundColor: "#06b6d4",
                        }}>
                          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>سبيستون</Text>
                        </View>
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                        </LinearGradient>
                      </Pressable>
                    );
                  }}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={3}
                  removeClippedSubviews={false}
                />
              ) : dubbedTabLoading ? (
                <View style={{ height: Math.round(railCardWidth * 1.46), alignItems: "center", justifyContent: "center" }}>
                  <ActivityIndicator color="#38BDF8" />
                </View>
              ) : null
            ) : activeDubbedTab === "cartoon" ? (
              dubbedHomeRows.length > 0 ? (
                <FlatList
                  ref={dubbedRailListRef}
                  onViewableItemsChanged={dubbedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={dubbedFocusScroll.viewabilityConfig}
                  data={dubbedHomeRows}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  keyExtractor={(row, idx) => row.kind === "stardima"
                    ? `stardima:${row.item.provider_title_id}`
                    : `dubbed:${row.item.key || row.item.id || idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item: row, index: c1Idx }) => {
                    const item = row.item;
                    const stardima = row.kind === "stardima";
                    const rawImg = stardima
                      ? String(item.poster_url || item.backdrop_url || "").trim()
                      : typeof item.image === "string" && item.image.trim()
                        ? item.image.trim()
                        : getPosterUri(item);
                    const imgUri = rawImg
                      ? rawImg.startsWith("http") ? rawImg : `${getBaseUrl()}${rawImg}`
                      : null;
                    const titleText = stardima
                      ? item.title_ar || item.title || item.title_en || "عنوان"
                      : item.title;
                    const badgeText = stardima ? catalogBadge(item, "cartoon") : "مدبلج";
                    const badgeColor = badgeText?.includes("مترجم") ? "#D94141" : "#35B955";
                    return (
                      <Pressable
                        onPress={() => {
                          if (stardima) {
                            router.push({
                              pathname: "/stardima-title" as any,
                              params: { providerTitleId: item.provider_title_id },
                            });
                            return;
                          }
                          const seasons = JSON.stringify(item.seasons || [{ label: "الحلقات", arabicToonsId: item.arabicToonsId }]);
                          router.push({ pathname: "/dubbed/[id]" as any, params: { id: item.key || item.id || item.title, title: item.title, seasons, img: rawImg } });
                        }}
                        onFocus={() => {
                          handleSectionFocus?.();
                          if (isTvLayout) scrollDubbedRailIntoView(c1Idx);
                        }}
                        focusable={isTvLayout && sectionFocusable}
                        style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                      >
                        {imgUri ? (
                          <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        {badgeText ? (
                          <View style={{
                            position: "absolute", top: 8, right: 8, zIndex: 2,
                            paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7, backgroundColor: badgeColor,
                          }}>
                            <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>{badgeText}</Text>
                          </View>
                        ) : null}
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{titleText}</Text>
                        </LinearGradient>
                      </Pressable>
                    );
                  }}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={3}
                  removeClippedSubviews={false}
                />
              ) : (dubbedTabLoading || stardimaCartoon.loading) ? (
                <View style={{ height: Math.round(railCardWidth * 1.46), alignItems: "center", justifyContent: "center" }}>
                  <ActivityIndicator color="#7C3AED" />
                </View>
              ) : null
            ) : (
              cartoon2HomeItems.length > 0 ? (
                <FlatList
                  ref={dubbedRailListRef}
                  onViewableItemsChanged={dubbedFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={dubbedFocusScroll.viewabilityConfig}
                  data={cartoon2HomeItems}
                  horizontal
                  getItemLayout={getRailItemLayout}
                  keyExtractor={(item, idx) => `sd2-home:${item.slug || idx}`}
                  showsHorizontalScrollIndicator={false}
                  contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                  renderItem={({ item, index: c2Idx }) => {
                    const imgUri = proxyPosterUrl(item.image) || null;
                    return (
                      <Pressable
                        onPress={() =>
                          router.push({
                            pathname: "/dubbed/[id]" as any,
                            params: {
                              id: `sd2-${item.slug}`,
                              provider: "sd2",
                              showId: item.slug,
                              slug: item.slug,
                              isMovie: item.isMovie ? "1" : "0",
                              title: item.title,
                              img: item.image || "",
                              languageLabel: item.languageLabel || "",
                            },
                          })
                        }
                        onFocus={() => {
                          handleSectionFocus?.();
                          if (isTvLayout) scrollDubbedRailIntoView(c2Idx);
                        }}
                        focusable={isTvLayout && sectionFocusable}
                        style={({ focused }) => [
                          todayStyles.card,
                          { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                          isTvLayout && tvFocusStyle(focused),
                        ]}
                      >
                        {imgUri ? (
                          <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                        ) : (
                          <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                            <Ionicons name="film-outline" size={28} color="rgba(255,255,255,0.2)" />
                          </View>
                        )}
                        <View style={{
                          position: "absolute", top: 8, right: 8, zIndex: 2,
                          paddingHorizontal: 8, paddingVertical: 3, borderRadius: 7,
                          backgroundColor: item.isSubbed ? "#D94141" : "#F59E0B",
                        }}>
                          <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                            {item.languageLabel || "مدبلج"}
                          </Text>
                        </View>
                        <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                          <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                        </LinearGradient>
                      </Pressable>
                    );
                  }}
                  initialNumToRender={5}
                  maxToRenderPerBatch={5}
                  windowSize={3}
                  removeClippedSubviews={false}
                />
              ) : dubbedTabLoading ? (
                <View style={{ height: Math.round(railCardWidth * 1.46), alignItems: "center", justifyContent: "center" }}>
                  <ActivityIndicator color="#F59E0B" />
                </View>
              ) : null
            )}
          </View>
        )}

        {/* ── القسم المدمج للمانجا والمانهوا (الهاتف فقط — مخفي في وضع التلفاز) ── */}
        {section.kind === "mangaUnified" && !isTvLayout && (manhwaItems.length > 0 || mangaItems.length > 0) && (() => {
          const activeList = activeMangaTab === "manhwa"
            ? (manhwaItems.length > 0 ? manhwaItems : mangaItems)
            : (mangaItems.length > 0 ? mangaItems : manhwaItems);
          const isManhwaView = activeMangaTab === "manhwa" ? manhwaItems.length > 0 : mangaItems.length === 0;
          return (
            <View style={{ marginBottom: 24 }}>
              <SectionHeader
                onSeeAll={() => router.push({ pathname: "/manga" as any, params: { tab: isManhwaView ? "manhwa" : "all" } })}
                focusable={isTvLayout && sectionFocusable}
                onFocus={handleSectionFocus}
              >
                <View style={styles.sectionRightRow}>
                  <Text style={{ fontSize: isTvLayout ? 22 : 15 }}>{isManhwaView ? "🔥" : "📚"}</Text>
                  <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>
                    المانجا والمانهوا
                  </Text>
                  <View style={[styles.continueAccent, { backgroundColor: isManhwaView ? "#f59e0b" : "#10B981" }]} />
                </View>
              </SectionHeader>

              <ScrollView
                horizontal
                focusable={false}
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={{
                  flexDirection: "row-reverse",
                  alignItems: "center",
                  gap: 8,
                  paddingHorizontal: railSidePadding,
                  marginBottom: 12,
                }}
              >
                {([
                  { key: "manhwa" as const, label: "مانهوا ملونة", color: "#f59e0b" },
                  { key: "manga" as const, label: "مانجا مترجمة", color: "#10B981" },
                ]).map((tabOpt) => {
                  const isActive = activeMangaTab === tabOpt.key;
                  return (
                    <Pressable
                      key={tabOpt.key}
                      onPress={() => {
                        setActiveMangaTab(tabOpt.key);
                        mangaRailListRef.current?.scrollToOffset({ offset: 0, animated: false });
                      }}
                      onFocus={handleSectionFocus}
                      focusable={isTvLayout && sectionFocusable}
                      style={({ focused }) => [
                        {
                          paddingHorizontal: isTvLayout ? 20 : 16,
                          paddingVertical: isTvLayout ? 9 : 7,
                          borderRadius: 12,
                          borderWidth: 1,
                          flexShrink: 0,
                          alignItems: "center",
                          justifyContent: "center",
                          backgroundColor: isActive ? `${tabOpt.color}22` : colors.card,
                          borderColor: isActive ? `${tabOpt.color}88` : colors.border,
                        },
                        isTvLayout && tvFocusStyle(focused),
                      ]}
                    >
                      <Text
                        style={{
                          fontSize: isTvLayout ? 15 : 12.5,
                          lineHeight: isTvLayout ? 22 : 19,
                          fontFamily: "Cairo_700Bold",
                          color: isActive ? tabOpt.color : colors.mutedForeground,
                          includeFontPadding: false,
                          textAlign: "center",
                          paddingHorizontal: 3,
                          flexShrink: 0,
                        }}
                      >
                        {` ${tabOpt.label} `}
                      </Text>
                    </Pressable>
                  );
                })}
              </ScrollView>

              <TvFocusGuideView autoFocus={false} style={isTvLayout ? { minHeight: 1 } : undefined}>
              <FlatList
                ref={mangaRailListRef}
                  onViewableItemsChanged={mangaFocusScroll.onViewableItemsChanged}
                  viewabilityConfig={mangaFocusScroll.viewabilityConfig}
                data={activeList}
                horizontal
                getItemLayout={getRailItemLayout}
                keyExtractor={(item, idx) => `manga-unified-${activeMangaTab}-${item.id}-${idx}`}
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                onScrollToIndexFailed={({ index }) => {
                  mangaRailListRef.current?.scrollToOffset({
                    offset: Math.max(0, index * railStride),
                    animated: true,
                  });
                }}
                renderItem={({ item, index: mIdx }) => (
                  <Pressable
                    onPress={() =>
                      router.push({
                        pathname: "/manga/[id]" as any,
                        params: {
                          id: String(item.id),
                          title: item.title,
                          english: item.subtitle,
                          cover: item.poster,
                          status: item.status,
                          chapters: String(item.chapters || ""),
                          score: String(item.score || ""),
                          source: item.source,
                        },
                      })
                    }
                    onFocus={() => {
                      handleSectionFocus?.();
                      if (isTvLayout) scrollMangaRailIntoView(mIdx);
                    }}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ focused }) => [
                      todayStyles.card,
                      { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    {item.poster ? (
                      <Image source={{ uri: item.poster }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={0} />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="book-outline" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    <View
                      style={{
                        position: "absolute",
                        top: 8,
                        right: 8,
                        zIndex: 2,
                        paddingHorizontal: 8,
                        paddingVertical: 3,
                        borderRadius: 7,
                        backgroundColor: item.source === "manhwa" ? "rgba(245, 158, 11, 0.92)" : "rgba(16, 185, 129, 0.92)",
                      }}
                    >
                      <Text style={{ color: item.source === "manhwa" ? "#09090b" : "#ffffff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                        {item.source === "manhwa" ? "مانهوا" : "مانجا"}
                      </Text>
                    </View>
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                      <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                      <Text style={{ color: item.source === "manhwa" ? "#fbbf24" : "#34d399", fontSize: isTvLayout ? 11 : 9, fontFamily: "Cairo_700Bold", textAlign: "right" }}>
                        {item.type}
                      </Text>
                    </LinearGradient>
                  </Pressable>
                )}
                initialNumToRender={8}
                maxToRenderPerBatch={6}
                windowSize={5}
                removeClippedSubviews={false}
              />
              </TvFocusGuideView>
            </View>
          );
        })()}
      </View>
    );
  };

  const headerTvFocusable = true;
  const heroTvFocusable = true;

  const listHeaderElement = useMemo(
    () => (
      <View>
        {/* Header */}
        <View style={[styles.header, { paddingTop: topPad + 6, paddingHorizontal: scaleSize(14, 40), flexDirection: I18nManager.isRTL ? "row-reverse" : "row" }]}>
          <Pressable
            accessibilityLabel="فتح القائمة"
            testID="nova-tv-header-action"
            onPress={() => setShowDrawer(true)}
            focusable={isTvLayout && headerTvFocusable}
            hitSlop={isTvLayout ? 10 : 6}
            style={({ focused }) => [
              styles.iconBtn,
              {
                width: scaleSize(42, 54),
                height: scaleSize(42, 54),
                borderRadius: scaleSize(13, 16),
                backgroundColor: colors.surface,
                borderColor: colors.border,
              },
              isTvLayout && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="menu" size={scaleSize(21, 28)} color={colors.text} />
          </Pressable>
          <View style={styles.headerSpacer} />
          <View style={styles.headerBrandGroup}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="البحث عن أنمي"
              testID="nova-tv-header-action"
              onPress={() => router.push("/(tabs)/search" as any)}
              focusable={isTvLayout && headerTvFocusable}
              style={({ focused }) => [
                styles.headerSearch,
                {
                  height: scaleSize(38, 48),
                  width: scaleSize(116, 180),
                  borderRadius: scaleSize(13, 16),
                  backgroundColor: colors.input,
                  borderColor: colors.border,
                },
                isTvLayout && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="search" size={scaleSize(14, 18)} color={colors.textMuted} />
              <Text style={[styles.headerSearchInput, { fontSize: scaleSize(12, 16), color: colors.textMuted }]} numberOfLines={1}>
                ...بحث
              </Text>
            </Pressable>
            <View style={styles.logoRow}>
              <View style={[styles.logoAccent, { height: scaleSize(22, 30), backgroundColor: "#06b6d4" }]} />
              <Text style={[styles.logoText, { fontSize: scaleSize(15, 22), color: colors.text }]}>
                ANIME <Text style={{ color: "#06b6d4" }}>NOVA</Text>
              </Text>
            </View>
          </View>
        </View>

        <AnnouncementBanner />

        {isLoading ? (
          <View style={{ height: 420, backgroundColor: colors.card }} />
        ) : (
          <HeroSection
            items={heroItems}
            initialTVFocus={isTvLayout && ready}
            tvFocusable={heroTvFocusable}
          />
        )}

        {isLoading && (
          <View style={{ marginTop: 24 }}>
            <SkeletonRow />
            <SkeletonRow />
            <SkeletonRow />
          </View>
        )}
      </View>
    ),
    [colors.card, colors.border, colors.input, colors.surface, colors.text, colors.textMuted, headerTvFocusable, heroItems, heroTvFocusable, isLoading, isTvLayout, ready, router, scaleSize, topPad],
  );

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <FlatList
        ref={homeListRef}
        data={homeSections}
        extraData={{ activeLatestTab, activeAnimeTab, activeDubbedTab, activeMangaTab, newsLen: homeNewsList.length, newsLoading: homeNewsLoading, newsErr: homeNewsError }}
        keyExtractor={(item) => item.key}
        renderItem={renderHomeSection}
        ListHeaderComponent={listHeaderElement}
        ListFooterComponent={<View style={{ height: 90 }} />}
        keyboardShouldPersistTaps="handled"
        showsVerticalScrollIndicator={false}
        refreshControl={isTvLayout ? undefined : <RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
        removeClippedSubviews={false}
        initialNumToRender={isTvLayout ? 6 : 6}
        maxToRenderPerBatch={isTvLayout ? 4 : 4}
        updateCellsBatchingPeriod={40}
        windowSize={isTvLayout ? 11 : 11}
      />
      <DrawerMenu visible={showDrawer} onClose={() => setShowDrawer(false)} />

      {/* نافذة تفاصيل الخبر */}
      <Modal
        visible={Boolean(selectedNewsArticle)}
        transparent
        animationType="slide"
        onRequestClose={() => setSelectedNewsArticle(null)}
      >
        <View style={homeNewsStyles.modalBackdrop}>
          <Pressable style={StyleSheet.absoluteFill} onPress={() => setSelectedNewsArticle(null)} />
          {selectedNewsArticle && (
            <View style={[homeNewsStyles.modalCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
              <ScrollView showsVerticalScrollIndicator={false}>
                <View style={homeNewsStyles.modalImgWrap}>
                  {selectedNewsArticle.thumbnail ? (
                    <Image source={{ uri: selectedNewsArticle.thumbnail }} style={homeNewsStyles.modalImg} resizeMode="cover" />
                  ) : (
                    <View style={[homeNewsStyles.modalImg, { backgroundColor: colors.surface, alignItems: "center", justifyContent: "center" }]}>
                      <Ionicons name="newspaper-outline" size={40} color="#06b6d4" />
                    </View>
                  )}
                  <Pressable
                    onPress={() => setSelectedNewsArticle(null)}
                    focusable={isTvLayout}
                    style={({ focused }) => [homeNewsStyles.modalCloseBtn, isTvLayout && tvFocusStyle(focused)]}
                  >
                    <Ionicons name="close" size={20} color="#fff" />
                  </Pressable>
                </View>
                <View style={homeNewsStyles.modalBody}>
                  <View style={homeNewsStyles.modalMetaRow}>
                    <Text style={[homeNewsStyles.time, { color: colors.mutedForeground }]}>
                      {formatNewsTimeAgo(selectedNewsArticle.publishedAt)}
                    </Text>
                    <View style={homeNewsStyles.modalCatPill}>
                      <Text style={homeNewsStyles.modalCatText}>{selectedNewsArticle.category || "أخبار الأنمي"}</Text>
                    </View>
                  </View>
                  <Text style={[homeNewsStyles.modalTitle, { color: colors.text }]}>
                    {selectedNewsArticle.title}
                  </Text>
                  {selectedNewsArticle.originalTitle && selectedNewsArticle.originalTitle !== selectedNewsArticle.title ? (
                    <Text style={[homeNewsStyles.modalOrigTitle, { color: colors.mutedForeground }]}>
                      {selectedNewsArticle.originalTitle}
                    </Text>
                  ) : null}
                  {!!selectedNewsArticle.description && (
                    <Text style={[homeNewsStyles.modalDesc, { color: colors.text }]}>
                      {selectedNewsArticle.description}
                    </Text>
                  )}
                  <View style={homeNewsStyles.modalActions}>
                    <Pressable
                      onPress={() => {
                        const target = selectedNewsArticle;
                        setSelectedNewsArticle(null);
                        router.push({
                          pathname: "/comments" as any,
                          params: {
                            tmdbId: `news-${target.id}`,
                            title: target.title,
                            type: "news",
                          },
                        });
                      }}
                      focusable={isTvLayout}
                      hasTVPreferredFocus={isTvLayout}
                      style={({ focused }) => [homeNewsStyles.modalActionPrimary, { backgroundColor: colors.primary }, isTvLayout && tvFocusStyle(focused)]}
                    >
                      <Ionicons name="chatbubble-ellipses-outline" size={16} color="#fff" />
                      <Text style={homeNewsStyles.modalActionPrimaryText}>التعليقات</Text>
                    </Pressable>
                    <Pressable
                      onPress={() => Linking.openURL(selectedNewsArticle.url).catch(() => {})}
                      focusable={isTvLayout}
                      style={({ focused }) => [homeNewsStyles.modalActionSecondary, { backgroundColor: colors.surface, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                    >
                      <Ionicons name="open-outline" size={16} color={colors.text} />
                      <Text style={[homeNewsStyles.modalActionSecondaryText, { color: colors.text }]}>المصدر</Text>
                    </Pressable>
                  </View>
                </View>
              </ScrollView>
            </View>
          )}
        </View>
      </Modal>


    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    alignItems: "center",
    gap: 10, paddingHorizontal: 16, paddingBottom: 8,
  },
  headerSpacer: { flex: 1, minWidth: 0 },
  headerBrandGroup: { flexDirection: I18nManager.isRTL ? "row-reverse" : "row", alignItems: "center", gap: 10, flexShrink: 1, minWidth: 0 },
  logoRow: { flexDirection: I18nManager.isRTL ? "row-reverse" : "row", alignItems: "center", gap: 7, flexShrink: 0 },
  logoAccent: { width: 3, height: 26, borderRadius: 2 },
  logoText: { fontSize: 16, letterSpacing: 0.7, fontFamily: "Cairo_800ExtraBold" },
  iconBtn: {
    width: 48, height: 48, borderRadius: 14, borderWidth: 1,
    alignItems: "center", justifyContent: "center", flexShrink: 0,
  },
  headerSearch: {
    height: 44, width: 128, minWidth: 88, maxWidth: 160, flexShrink: 1,
    flexDirection: "row", direction: "rtl", alignItems: "center", gap: 8,
    borderWidth: 1, borderRadius: 15, paddingHorizontal: 12,
  },
  headerSearchInput: {
    flex: 1, minWidth: 0, paddingVertical: 0,
    fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right",
  },
  sectionLeft: { flexDirection: "row", direction: "ltr", alignItems: "center", gap: 8 },
  sectionRightRow: { flexDirection: "row", direction: "ltr", alignItems: "center", justifyContent: "flex-end", gap: 9 },
  sectionDot: { width: 8, height: 8, borderRadius: 4 },
  sectionTitle: { fontSize: 17, fontFamily: "Cairo_700Bold", textAlign: "right", includeFontPadding: false, paddingHorizontal: 2, flexShrink: 0 },
  tvCardFocusHidden: { display: "none" },
  tvSectionTitle: { fontSize: 25, lineHeight: 34 },
  continueHeading: { flex: 1, flexDirection: "row", direction: "ltr", alignItems: "center", justifyContent: "flex-end", gap: 9 },
  continueAccent: { width: 3.5, height: 22, borderRadius: 2 },
  continueTitleWrap: { alignItems: "flex-end", gap: 1 },
  continueSubtitle: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  historyCard: {
    width: 150, height: 105, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  historyImg: { width: "100%", height: "100%" },
  historyGrad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingHorizontal: 8, paddingTop: 28, paddingBottom: 7, gap: 2,
  },
  historyGradTv: { padding: 8 },
  historyEp: { color: "#fff", fontSize: 10, fontFamily: "Cairo_700Bold" },
  historyTitle: { color: "#fff", fontSize: 10, fontFamily: "Cairo_700Bold", textAlign: "right" },
  historyTitleTv: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  historyBadge: {
    position: "absolute", top: 7, zIndex: 2,
    paddingHorizontal: 7, paddingVertical: 3, borderRadius: 12,
    backgroundColor: "rgba(7,9,13,0.78)",
  },
  historyRemainingBadge: { left: 7 },
  historyEpisodeBadge: { right: 7 },
  historyBadgeText: { color: "#fff", fontSize: 8, fontFamily: "Cairo_700Bold" },
  historyResumeRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", gap: 4 },
  historyPercent: { color: "#F3F4F6", fontSize: 9, fontWeight: "700" },
  historyResumeText: { flex: 1, color: "#F3F4F6", fontSize: 8, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  historyProgress: {
    height: 3, backgroundColor: "rgba(255,255,255,0.2)",
    borderRadius: 2, marginTop: 2, overflow: "hidden",
  },
  historyProgressFill: { height: 3, borderRadius: 2 },
  playOverlay: { position: "absolute", top: 8, right: 8 },
  statsBanner: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-around",
    paddingVertical: 14,
    borderRadius: 18,
    borderWidth: 1,
  },
  statItem: {
    alignItems: "center",
    flex: 1,
  },
  statValue: {
    fontSize: 16,
    fontFamily: "Cairo_700Bold",
  },
  statLabel: {
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
    marginTop: -2,
  },
  statDivider: {
    width: 1,
    height: 24,
    backgroundColor: "rgba(255,255,255,0.1)",
  },
});

const todayStyles = StyleSheet.create({
  card: {
    width: 130, height: 190, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  img: { width: "100%", height: "100%" },
  grad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingHorizontal: 8, paddingBottom: 8, paddingTop: 40,
  },
  title: {
    color: "#fff", fontSize: 11, fontFamily: "Cairo_600SemiBold", lineHeight: 15,
  },
});

const todayEpStyles = StyleSheet.create({
  card: {
    width: 120, height: 175, borderRadius: 12,
    overflow: "hidden", borderWidth: 1, position: "relative",
  },
  img: { width: "100%", height: "100%" },
  grad: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    paddingHorizontal: 8, paddingBottom: 8, paddingTop: 50,
  },
  ep: { color: "#f43f5e", fontSize: 10, fontFamily: "Cairo_700Bold" },
  title: {
    color: "#fff", fontSize: 10, fontFamily: "Cairo_600SemiBold", lineHeight: 14, marginTop: 2,
  },
  time: { color: "rgba(255,255,255,0.5)", fontSize: 9, fontFamily: "Cairo_400Regular", marginTop: 3 },
});



const homeNewsStyles = StyleSheet.create({
  card: {
    borderRadius: 16,
    overflow: "hidden",
    borderWidth: 1,
  },
  thumbWrap: {
    width: "100%",
    position: "relative",
    overflow: "hidden",
  },
  thumbImg: {
    width: "100%",
    height: "100%",
  },
  thumbGrad: {
    position: "absolute",
    left: 0,
    right: 0,
    bottom: 0,
    height: 64,
  },
  catBadge: {
    position: "absolute",
    top: 10,
    right: 10,
    backgroundColor: "rgba(6,182,212,0.88)",
    paddingHorizontal: 9,
    paddingVertical: 3,
    borderRadius: 10,
  },
  catBadgeText: {
    color: "#fff",
    fontSize: 9.5,
    fontFamily: "Cairo_700Bold",
  },
  floatingActions: {
    position: "absolute",
    bottom: 10,
    left: 10,
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  circleBtn: {
    width: 34,
    height: 34,
    borderRadius: 17,
    backgroundColor: "rgba(255,255,255,0.92)",
    alignItems: "center",
    justifyContent: "center",
    elevation: 3,
  },
  body: {
    paddingHorizontal: 12,
    paddingTop: 10,
    paddingBottom: 12,
    gap: 6,
  },
  title: {
    fontFamily: "Cairo_700Bold",
    lineHeight: 20,
    textAlign: "right",
    writingDirection: "rtl",
  },
  desc: {
    fontFamily: "Cairo_400Regular",
    lineHeight: 17,
    textAlign: "right",
    writingDirection: "rtl",
  },
  footerRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginTop: 4,
  },
  time: {
    fontSize: 10.5,
    fontFamily: "Cairo_600SemiBold",
  },
  readMore: {
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
  },
  modalBackdrop: {
    flex: 1,
    backgroundColor: "rgba(0,0,0,0.72)",
    justifyContent: "flex-end",
  },
  modalCard: {
    maxHeight: "82%",
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    borderWidth: 1,
    overflow: "hidden",
  },
  modalImgWrap: {
    width: "100%",
    height: 210,
    position: "relative",
  },
  modalImg: {
    width: "100%",
    height: "100%",
  },
  modalCloseBtn: {
    position: "absolute",
    top: 12,
    left: 12,
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: "rgba(0,0,0,0.6)",
    alignItems: "center",
    justifyContent: "center",
  },
  modalBody: {
    padding: 16,
    paddingBottom: 28,
    gap: 10,
  },
  modalMetaRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  modalCatPill: {
    backgroundColor: "rgba(6,182,212,0.16)",
    borderColor: "rgba(6,182,212,0.35)",
    borderWidth: 1,
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 12,
  },
  modalCatText: {
    color: "#06b6d4",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  modalTitle: {
    fontSize: 16,
    fontFamily: "Cairo_800ExtraBold",
    lineHeight: 24,
    textAlign: "right",
    writingDirection: "rtl",
  },
  modalOrigTitle: {
    fontSize: 11,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    writingDirection: "ltr",
  },
  modalDesc: {
    fontSize: 13.5,
    fontFamily: "Cairo_400Regular",
    lineHeight: 22,
    textAlign: "right",
    writingDirection: "rtl",
    opacity: 0.9,
  },
  modalActions: {
    flexDirection: "row",
    gap: 10,
    marginTop: 8,
  },
  modalActionPrimary: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
    paddingVertical: 12,
    borderRadius: 14,
  },
  modalActionPrimaryText: {
    color: "#fff",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  modalActionSecondary: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
    paddingVertical: 12,
    borderRadius: 14,
    borderWidth: 1,
  },
  modalActionSecondaryText: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
});