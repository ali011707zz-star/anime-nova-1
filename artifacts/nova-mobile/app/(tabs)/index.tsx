import { useQuery } from "@tanstack/react-query";
import { useFocusEffect, useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { FlatList, Image, useWindowDimensions } from "react-native";
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
import { getRailCardWidth, getRailSidePadding } from "@/components/AnimeCard";
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
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";
import { getPosterUri, getTvPosterUri } from "@/utils/media";
import {
  catalogBadge,
  isLegacyCartoonEntry,
  mergeCatalogRows,
  useDubbedCatalogFeed,
} from "@/hooks/useDubbedCatalogFeed";
import {
  fetchLatestEpisodes,
  normalizeLatestEpisodeItem,
  type LatestEpisodeItem,
} from "@/utils/latestEpisodes";

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
  const { watchHistory } = useApp();
  const { width, height } = useWindowDimensions();
  const [showDrawer, setShowDrawer] = useState(false);
  const [headerSearch, setHeaderSearch] = useState("");
  const [activeTvSectionIdx, setActiveTvSectionIdx] = useState(-1);
  const isTvLayout = isTvDevice(width, height);
  const { size: scaleSize } = useTvMetrics();
  const { ready } = useTvFocusMemory("home");
  const stardimaAnimation = useDubbedCatalogFeed("animation", "");
  const stardimaCartoon = useDubbedCatalogFeed("cartoon", "");

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

  const { data: isekai, refetch: refetchIsekai } = useQuery({
    queryKey: ["isekai"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(ISEKAI_QUERY),
    staleTime: 5 * 60 * 1000,
  });

  /* أحدث الحلقات — نفس كتالوج AnimeSlayer المستخدم في الويب. */
  type TodayEp = LatestEpisodeItem;
  const [todayEps, setTodayEps] = useState<TodayEp[]>([]);
  const [todayChecking, setTodayChecking] = useState(true);
  useEffect(() => {
    const ctrl = new AbortController();
    AsyncStorage.getItem("nova-latest-episodes").then((stored) => {
      try {
        const parsed = JSON.parse(stored || "[]");
        if (Array.isArray(parsed) && parsed.length) {
          const cachedItems = parsed
            .map((item) => normalizeLatestEpisodeItem(item))
            .filter((item) => item.source === "anslayer");
          if (cachedItems.length) setTodayEps(cachedItems);
        }
      } catch {}
    }).catch(() => {});
    fetchLatestEpisodes(ctrl.signal)
      .then((normalized) => {
        if (ctrl.signal.aborted) return;
        setTodayEps(normalized);
        AsyncStorage.setItem("nova-latest-episodes", JSON.stringify(normalized)).catch(() => {});
      })
      .catch(() => {})
      .finally(() => {
        if (!ctrl.signal.aborted) setTodayChecking(false);
      });
    return () => ctrl.abort();
  }, []);

  const isLoading = loadingT || loadingP || loadingA;

  /* ── Dubbed cartoon catalog ── */
  const [dubbedSeries, setDubbedSeries] = useState<any[]>([]);
  const dubbedRequestRef = useRef<AbortController | null>(null);
  const dubbedLastFetchedRef = useRef(0);
  const refreshDubbed = useCallback(async (forceRefresh = false) => {
    if (!forceRefresh && Date.now() - dubbedLastFetchedRef.current < 5 * 60 * 1000) return;
    dubbedRequestRef.current?.abort();
    const controller = new AbortController();
    dubbedRequestRef.current = controller;
    const refresh = forceRefresh ? "&refresh=1" : "";
    fetch(`${getBaseUrl()}/api/dubbed/catalog?page=1${refresh}`, {
      cache: forceRefresh ? "no-store" : "default",
      signal: controller.signal,
    })
      .then(r => r.json())
      .then(d => {
        if (!controller.signal.aborted) {
          const results = d.results || d.items || d.series || [];
          setDubbedSeries(
            (Array.isArray(results) ? results : [])
              .filter(isLegacyCartoonEntry)
              .slice(0, 14),
          );
          dubbedLastFetchedRef.current = Date.now();
        }
      })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Home] dubbed/catalog fetch error"); });
  }, []);
  useFocusEffect(useCallback(() => {
    void refreshDubbed();
    return () => dubbedRequestRef.current?.abort();
  }, [refreshDubbed]));

  /* ── أنيميشن مدبلج (aw-dubbed) catalog ── */
  const [awDubbedSeries, setAwDubbedSeries] = useState<any[]>([]);
  useEffect(() => {
    const ctrl = new AbortController();
    fetch(`${getBaseUrl()}/api/aw-dubbed/catalog?page=1`, { signal: ctrl.signal })
      .then(r => r.json())
      .then(d => { if (!ctrl.signal.aborted) setAwDubbedSeries(d.results || []); })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Home] aw-dubbed/catalog fetch error"); });
    return () => ctrl.abort();
  }, []);

  /* ── سبيستون مدبلج (spacetoon) catalog ── */
  const [spacetoonHomeItems, setSpacetoonHomeItems] = useState<any[]>([]);
  useEffect(() => {
    const ctrl = new AbortController();
    fetch(`${getBaseUrl()}/api/dubbed/carateen/catalog?page=1&limit=18&provider=sp`, { signal: ctrl.signal })
      .then((r) => r.json())
      .then((d) => {
        if (!ctrl.signal.aborted && Array.isArray(d.results)) {
          setSpacetoonHomeItems(d.results.slice(0, 14));
        }
      })
      .catch((e) => {
        if (e?.name !== "AbortError") console.warn("[Home] spacetoon catalog fetch error");
      });
    return () => ctrl.abort();
  }, []);

  /* ── Manhwa (Azorafly) & Manga (MangaDar) from Backend (Hidden in TV mode) ── */
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
      refetchT(), refetchP(), refetchA(), refetchM(), refetchIsekai(),
      refetchManhwa(), refetchJpManga(),
      refreshDubbed(true),
    ]);
  };

  type HomeSectionItem =
    | { kind: "continue"; key: string }
    | { kind: "todayEps"; key: string }
    | { kind: "animationHome"; key: string }
    | { kind: "dubbedHome"; key: string }
    | { kind: "spacetoonHome"; key: string }
    | { kind: "manhwa"; key: string }
    | { kind: "manga"; key: string }
    | { kind: "anilist"; key: string; title: string; items: AnilistMedia[]; onSeeAll: () => void };

  const homeSections = useMemo<HomeSectionItem[]>(() => {
    const sections: HomeSectionItem[] = [];
    if (recentHistory.length > 0) sections.push({ kind: "continue", key: "continue" });
    if (todayEps.length > 0 || todayChecking) sections.push({ kind: "todayEps", key: "todayEps" });
    if (animationHomeRows.length > 0) sections.push({ kind: "animationHome", key: "animationHome" });
    if (dubbedHomeRows.length > 0) sections.push({ kind: "dubbedHome", key: "dubbedHome" });
    if (spacetoonHomeItems.length > 0) sections.push({ kind: "spacetoonHome", key: "spacetoonHome" });
    if (!isTvLayout && manhwaItems.length > 0) sections.push({ kind: "manhwa", key: "manhwa" });
    if (!isTvLayout && mangaItems.length > 0) sections.push({ kind: "manga", key: "manga" });
    if (!isLoading) {
      sections.push(
        {
          kind: "anilist",
          key: "airing",
          title: "يُعرض حالياً",
          items: airingList,
          onSeeAll: () => router.push({ pathname: "/browse", params: { status: "RELEASING", sort: "POPULARITY_DESC" } } as any),
        },
        {
          kind: "anilist",
          key: "popular",
          title: "⭐ الأكثر شعبية",
          items: popularList,
          onSeeAll: () => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC" } } as any),
        },
        {
          kind: "anilist",
          key: "movies",
          title: "🎬 أفلام الأنمي",
          items: moviesList,
          onSeeAll: () => router.push({ pathname: "/browse", params: { format: "MOVIE", sort: "POPULARITY_DESC" } } as any),
        },
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
    animationHomeRows.length,
    dubbedHomeRows.length,
    spacetoonHomeItems.length,
    isTvLayout,
    manhwaItems.length,
    mangaItems.length,
    isLoading,
    airingList,
    popularList,
    moviesList,
    isekaiList,
    router,
  ]);

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
              data={recentHistory}
              horizontal
               keyExtractor={(h) => `${h.contentKind || "anime"}-${h.contentKey || h.animeId}-${h.season || 1}-${h.ep}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{
                 paddingHorizontal: isTvLayout ? railSidePadding : scaleSize(12, 24),
                 gap: isTvLayout ? railGap : scaleSize(7, 12),
               }}
              renderItem={({ item: h }) => {
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
                    onFocus={handleSectionFocus}
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
                      fadeDuration={isTvLayout ? 0 : 100}
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
                        {h.titleAr || h.english || h.title}
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

        {/* أحدث الحلقات — AnimeSlayer (مطابق للويب) */}
        {section.kind === "todayEps" && (todayEps.length > 0 || todayChecking) && (
          <View style={{ marginTop: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/latest" as any)}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>أحدث الحلقات 📺</Text>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
              </View>
            </SectionHeader>
            {todayChecking && todayEps.length === 0 ? (
               <SkeletonRow />
            ) : (
              <FlatList
                data={todayEps}
                horizontal
                keyExtractor={(ep, idx) => `${ep.source}-${ep.anslayerId || ep.awAnimeId || ep.animeId || ep.name || "ep"}-${ep.episode}-${idx}`}
                showsHorizontalScrollIndicator={false}
                 contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
                renderItem={({ item: ep }) => (
                  /* بطاقة أحدث الحلقات تمرر anslayerId كمرجع احتياطي لـ AS،
                     لكن صفحة المشاهدة تفحص كل المصادر المتاحة مثل الويب. */
                   <Pressable
                      onPress={() => router.push(`/watch?anime=${ep.animeId || 0}&anilistId=${ep.anilistId || ep.animeId || 0}&ep=${ep.episode}&totalEps=${ep.episode}&title=${encodeURIComponent(ep.romaji || ep.name || "")}&english=${encodeURIComponent(ep.english || "")}&native=${encodeURIComponent(ep.native || "")}&titles=${encodeURIComponent(JSON.stringify(ep.titleVariants || []))}&cover=${encodeURIComponent(ep.cover || "")}&titleAr=${encodeURIComponent(ep.titleAr || "")}&anslayerId=${ep.anslayerId}&awAnimeId=${encodeURIComponent(ep.awAnimeId || "")}&site=${encodeURIComponent(ep.source)}&fromLatest=1&latestSource=${encodeURIComponent(ep.source)}` as any)}
                      onFocus={handleSectionFocus}
                     focusable={isTvLayout && sectionFocusable}
                     style={({ focused }) => [todayEpStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                  >
                    {ep.cover ? (
                      <Image
                        source={{ uri: isTvLayout
                          ? getTvPosterUri(ep, ep.animeId ? `https://img.anili.st/media/${ep.animeId}` : "")
                          : getPosterUri(ep, ep.animeId ? `https://img.anili.st/media/${ep.animeId}` : "") }}
                        style={todayEpStyles.img}
                        resizeMode="cover"
                        resizeMethod="resize"
                        fadeDuration={isTvLayout ? 0 : 100}
                      />
                    ) : (
                      <View style={[todayEpStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    <View style={[styles.historyBadge, styles.historyEpisodeBadge]}>
                      <Text style={styles.historyBadgeText}>الحلقة {ep.episode}</Text>
                    </View>
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                      <Text style={todayEpStyles.title} numberOfLines={2}>{ep.titleAr || ep.name}</Text>
                    </LinearGradient>
                  </Pressable>
                )}
                initialNumToRender={isTvLayout ? 5 : 5}
                maxToRenderPerBatch={isTvLayout ? 4 : 5}
                windowSize={isTvLayout ? 5 : 3}
                removeClippedSubviews={false}
              />
            )}
          </View>
        )}

        {/* ── الأقسام المدبلجة — مباشرة بعد أحدث الحلقات ── */}
        {section.kind === "animationHome" && animationHomeRows.length > 0 && (
          <View style={{ marginTop: 24, marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/aw-dubbed" as any)}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>انميشن مدبلج ✨</Text>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
              </View>
            </SectionHeader>
            <FlatList
              data={animationHomeRows}
              horizontal
              keyExtractor={(row, idx) => row.kind === "stardima"
                ? `stardima:${row.item.provider_title_id}`
                : `aw:${row.item.key || idx}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item: row }) => {
                const item = row.item;
                const stardima = row.kind === "stardima";
                const rawImg = stardima
                  ? String(item.poster_url || item.backdrop_url || "").trim()
                  : getPosterUri(item) || "";
                const imgUri = rawImg
                  ? rawImg.startsWith("http") ? rawImg : `${getBaseUrl()}${rawImg}`
                  : null;
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
                      onFocus={handleSectionFocus}
                      focusable={isTvLayout && sectionFocusable}
                      style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                   >
                    {imgUri ? (
                      <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={isTvLayout ? 0 : 100} />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="film-outline" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    <View style={{
                      position: "absolute",
                      top: 8,
                      right: 8,
                      zIndex: 2,
                      paddingHorizontal: 8,
                      paddingVertical: 3,
                      borderRadius: 7,
                      backgroundColor: badgeColor,
                    }}>
                      <Text style={{
                        color: "#fff",
                        fontFamily: "Cairo_700Bold",
                        fontSize: isTvLayout ? 12 : 9,
                      }}>{badgeText || "مدبلج"}</Text>
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
              initialNumToRender={isTvLayout ? 5 : 5}
              maxToRenderPerBatch={isTvLayout ? 4 : 5}
              windowSize={isTvLayout ? 5 : 3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {section.kind === "dubbedHome" && dubbedHomeRows.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push({ pathname: "/aw-dubbed" as any, params: { tab: "cartoon" } })}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>كرتون مدبلج ومترجم 🎬</Text>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
              </View>
            </SectionHeader>
            <FlatList
              data={dubbedHomeRows}
              horizontal
              keyExtractor={(row, idx) => row.kind === "stardima"
                ? `stardima:${row.item.provider_title_id}`
                : `dubbed:${row.item.key || row.item.id || idx}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item: row }) => {
                const item = row.item;
                const stardima = row.kind === "stardima";
                // The dubbed catalog returns its image as a relative API path.
                // Keep that path so it can be resolved against the production API
                // base below instead of falling through to the placeholder.
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
                     onFocus={handleSectionFocus}
                     focusable={isTvLayout && sectionFocusable}
                     style={({ focused }) => [todayStyles.card, { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border }, isTvLayout && tvFocusStyle(focused)]}
                  >
                    {imgUri ? (
                       <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={isTvLayout ? 0 : 100} />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="tv" size={28} color="rgba(255,255,255,0.2)" />
                      </View>
                    )}
                    {badgeText ? (
                      <View style={{
                        position: "absolute",
                        top: 8,
                        right: 8,
                        zIndex: 2,
                        paddingHorizontal: 8,
                        paddingVertical: 3,
                        borderRadius: 7,
                        backgroundColor: badgeColor,
                      }}>
                        <Text style={{
                          color: "#fff",
                          fontFamily: "Cairo_700Bold",
                          fontSize: isTvLayout ? 12 : 9,
                        }}>{badgeText}</Text>
                      </View>
                    ) : null}
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                      <Text style={todayStyles.title} numberOfLines={2}>{titleText}</Text>
                    </LinearGradient>
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

        {/* ── سبيستون مدبلج ── */}
        {section.kind === "spacetoonHome" && spacetoonHomeItems.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push({ pathname: "/aw-dubbed" as any, params: { tab: "spacetoon" } })}
              focusable={isTvLayout && sectionFocusable}
              onFocus={handleSectionFocus}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>سبيستون مدبلج 🚀</Text>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
              </View>
            </SectionHeader>
            <FlatList
              data={spacetoonHomeItems}
              horizontal
              keyExtractor={(item, idx) => `sp-home:${item.id || idx}`}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item }) => {
                const rawImg = String(item.image || "").trim();
                const imgUri = rawImg
                  ? rawImg.startsWith("http") ? rawImg : `${getBaseUrl()}${rawImg}`
                  : null;
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
                    onFocus={handleSectionFocus}
                    focusable={isTvLayout && sectionFocusable}
                    style={({ focused }) => [
                      todayStyles.card,
                      { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    {imgUri ? (
                      <Image source={{ uri: imgUri }} style={todayStyles.img} resizeMode="cover" resizeMethod="resize" fadeDuration={isTvLayout ? 0 : 100} />
                    ) : (
                      <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                        <Ionicons name="planet-outline" size={28} color="rgba(255,255,255,0.2)" />
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
                        backgroundColor: "#06b6d4",
                      }}
                    >
                      <Text style={{ color: "#fff", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                        سبيستون
                      </Text>
                    </View>
                    <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                      <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                    </LinearGradient>
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

        {/* ── Manhwa Section (مانهوا — مخفية في وضع التلفاز) ── */}
        {section.kind === "manhwa" && !isTvLayout && manhwaItems.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push({ pathname: "/manga" as any, params: { tab: "manhwa" } })}
              focusable={isTvLayout}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>مانهوا 🔥</Text>
                <View style={[styles.continueAccent, { backgroundColor: "#f59e0b" }]} />
              </View>
            </SectionHeader>
            <FlatList
              data={manhwaItems}
              horizontal
              keyExtractor={(item, idx) => `manhwa-${item.id}-${idx}`}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item }) => (
                <Pressable
                  onPress={() => router.push({ pathname: "/manga/[id]" as any, params: { id: String(item.id), title: item.title, english: item.subtitle, cover: item.poster, status: item.status, chapters: String(item.chapters || ""), score: String(item.score || ""), source: item.source } })}
                  focusable={isTvLayout}
                  style={({ focused }) => [
                    todayStyles.card,
                    { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                    isTvLayout && tvFocusStyle(focused),
                  ]}
                >
                  {item.poster ? (
                    <Image source={{ uri: item.poster }} style={todayStyles.img} resizeMode="cover" />
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
                      backgroundColor: "rgba(245, 158, 11, 0.9)",
                    }}
                  >
                    <Text style={{ color: "#09090b", fontFamily: "Cairo_700Bold", fontSize: isTvLayout ? 12 : 9 }}>
                      مانهوا
                    </Text>
                  </View>
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                    <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                    <Text style={{ color: "#fbbf24", fontSize: 9, fontFamily: "Cairo_700Bold", textAlign: "right" }}>
                      {item.type}
                    </Text>
                  </LinearGradient>
                </Pressable>
              )}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}

        {/* ── Manga Section (مانجا مترجمة — مخفية في وضع التلفاز) ── */}
        {section.kind === "manga" && !isTvLayout && mangaItems.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/manga" as any)}
              focusable={isTvLayout}
            >
              <View style={styles.sectionRightRow}>
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>مانجا مترجمة 📚</Text>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
              </View>
            </SectionHeader>
            <FlatList
              data={mangaItems}
              horizontal
              keyExtractor={(item, idx) => `manga-${item.id}-${idx}`}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item }) => (
                <Pressable
                  onPress={() => router.push({ pathname: "/manga/[id]" as any, params: { id: String(item.id), title: item.title, english: item.subtitle, cover: item.poster, status: item.status, chapters: String(item.chapters || ""), score: String(item.score || ""), source: item.source } })}
                  focusable={isTvLayout}
                  style={({ focused }) => [
                    todayStyles.card,
                    { width: railCardWidth, height: Math.round(railCardWidth * 1.46), backgroundColor: colors.card, borderColor: colors.border },
                    isTvLayout && tvFocusStyle(focused),
                  ]}
                >
                  {item.poster ? (
                    <Image source={{ uri: item.poster }} style={todayStyles.img} resizeMode="cover" />
                  ) : (
                    <View style={[todayStyles.img, { backgroundColor: colors.card, alignItems: "center", justifyContent: "center" }]}>
                      <Ionicons name="book-outline" size={28} color="rgba(255,255,255,0.2)" />
                    </View>
                  )}
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.92)"]} style={todayStyles.grad}>
                    <Text style={todayStyles.title} numberOfLines={2}>{item.title}</Text>
                    <Text style={{ color: colors.primary, fontSize: 9, fontFamily: "Cairo_700Bold", textAlign: "right" }}>
                      {item.type || "مانجا"}
                    </Text>
                  </LinearGradient>
                </Pressable>
              )}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={false}
            />
          </View>
        )}
      </View>
    );
  };

  const headerTvFocusable = true;
  const heroTvFocusable = true;

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <FlatList
        data={homeSections}
        keyExtractor={(item) => item.key}
        renderItem={renderHomeSection}
        ListHeaderComponent={
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

            {!isTvLayout && <AnnouncementBanner />}

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
        }
        ListFooterComponent={<View style={{ height: 90 }} />}
        showsVerticalScrollIndicator={false}
        refreshControl={isTvLayout ? undefined : <RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
        removeClippedSubviews={false}
        initialNumToRender={isTvLayout ? 3 : 3}
        maxToRenderPerBatch={isTvLayout ? 2 : 2}
        updateCellsBatchingPeriod={50}
        windowSize={isTvLayout ? 7 : 5}
      />
      <DrawerMenu visible={showDrawer} onClose={() => setShowDrawer(false)} />
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
  sectionTitle: { fontSize: 17, fontFamily: "Cairo_700Bold", textAlign: "right" },
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

