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
} from "@/utils/anilist";
import { historyRoute, useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
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
  const isTvLayout = isTvDevice(width, height);
  const { ready } = useTvFocusMemory("home");
  const stardimaAnimation = useDubbedCatalogFeed("animation", "");
  const stardimaCartoon = useDubbedCatalogFeed("cartoon", "");

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

  const { data: topRated, refetch: refetchR } = useQuery({
    queryKey: ["topRated"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(TOP_RATED_QUERY),
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
          setTodayEps(parsed.map((item) => normalizeLatestEpisodeItem(item)));
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
  const topRatedList = topRated?.Page?.media || [];
  const moviesList = movies?.Page?.media || [];
  const isekaiList = isekai?.Page?.media || [];

  /* الويب يبني الـHero من الأكثر شعبية ذات الـbanner، وليس من TRENDING. */
  /* Randomize from the full popular catalog so the hero is not fixed to the
     same first four titles on every client. */
  const heroItems = useMemo(
    () => randomSample(popularList.filter((m) => m.bannerImage), isTvLayout ? 4 : 8),
    [popularList, isTvLayout],
  );
  const recentHistory = watchHistory.slice(0, 10);
  const railCardWidth = getRailCardWidth(width, isTvLayout ? 5 : 3);
  const railSidePadding = getRailSidePadding(width);
  const railGap = 10;
  const historyCardWidth = isTvLayout
    ? railCardWidth
    : Math.floor((width - 34) / 3);

  const refresh = async () => {
    await Promise.all([
      refetchT(), refetchP(), refetchA(), refetchR(), refetchM(), refetchIsekai(),
      refreshDubbed(true),
    ]);
  };

  type HomeRow = {
    key: string;
    title: string;
    items: AnilistMedia[];
    onSeeAll: () => void;
  };
  const homeRows = useMemo<HomeRow[]>(
    () => [
      {
        key: "trending",
        title: "رائج الآن",
        items: trendingList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { sort: "TRENDING_DESC" } } as any),
      },
      {
        key: "airing",
        title: "يُعرض حالياً",
        items: airingList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { status: "RELEASING", sort: "POPULARITY_DESC" } } as any),
      },
      {
        key: "top-rated",
        title: "الأعلى تقييماً على الإطلاق",
        items: topRatedList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { sort: "SCORE_DESC" } } as any),
      },
      {
        key: "popular",
        title: "الأكثر شعبية",
        items: popularList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { sort: "POPULARITY_DESC" } } as any),
      },
      {
        key: "movies",
        title: "أفلام الأنمي",
        items: moviesList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { format: "MOVIE", sort: "POPULARITY_DESC" } } as any),
      },
      {
        key: "isekai",
        title: "إيسيكاي",
        items: isekaiList,
        onSeeAll: () => router.push({ pathname: "/browse", params: { genre: "Isekai", genreAr: "إيسيكاي", sort: "POPULARITY_DESC" } } as any),
      },
    ],
    [airingList, isekaiList, moviesList, popularList, router, topRatedList, trendingList],
  );

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <FlatList
        data={isLoading ? [] : homeRows}
        keyExtractor={(item) => item.key}
        renderItem={({ item }) => (
          <SectionRow title={item.title} items={item.items} size="md" onSeeAll={item.onSeeAll} />
        )}
        ListHeaderComponent={
          <View>
        {/* Header */}
        <View style={[styles.header, { paddingTop: topPad + 6, flexDirection: I18nManager.isRTL ? "row-reverse" : "row" }]}>
          <Pressable
            accessibilityLabel="فتح القائمة"
            onPress={() => setShowDrawer(true)}
            focusable={isTvLayout}
            hitSlop={isTvLayout ? 10 : 6}
            style={({ focused }) => [
              styles.iconBtn,
              { backgroundColor: colors.surface, borderColor: colors.border },
              isTvLayout && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="menu" size={24} color={colors.text} />
          </Pressable>
          <View style={styles.headerSpacer} />
          <View style={styles.headerBrandGroup}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="البحث عن أنمي"
              onPress={() => router.push("/(tabs)/search" as any)}
              focusable={isTvLayout}
              style={({ focused }) => [
                styles.headerSearch,
                { backgroundColor: colors.input, borderColor: colors.border },
                isTvLayout && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="search" size={15} color={colors.textMuted} />
              <Text style={[styles.headerSearchInput, { color: colors.textMuted }]} numberOfLines={1}>
                بحث...
              </Text>
            </Pressable>
            <View style={styles.logoRow}>
              <View style={[styles.logoAccent, { backgroundColor: colors.primary }]} />
              <Text style={[styles.logoText, { color: colors.text }]}>
                ANIME <Text style={{ color: colors.primary }}>NOVA</Text>
              </Text>
            </View>
          </View>
        </View>

        {!isTvLayout && <AnnouncementBanner />}

        {isLoading ? (
          <View style={{ height: 420, backgroundColor: colors.card }} />
        ) : (
          <HeroSection items={heroItems} initialTVFocus={isTvLayout && ready} />
        )}

        {/* Continue Watching */}
        {recentHistory.length > 0 && (
          <View style={{ marginTop: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/(tabs)/library")}
              focusable={isTvLayout}
              seeAllLabel="عرض الكل"
            >
              <View style={styles.continueHeading}>
                <View style={[styles.continueAccent, { backgroundColor: colors.homeAccent }]} />
                <View style={styles.continueTitleWrap}>
                  <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>متابعة المشاهدة</Text>
                  <Text style={[styles.continueSubtitle, { color: colors.mutedForeground }]}>
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
                 paddingHorizontal: isTvLayout ? railSidePadding : 10,
                 gap: isTvLayout ? railGap : 6,
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
                return (
                  <Pressable
                    onPress={() => router.push(historyRoute(h) as any)}
                    focusable={isTvLayout}
                    style={({ focused }) => [
                      styles.historyCard,
                      {
                        width: historyCardWidth,
                        height: isTvLayout ? Math.round(historyCardWidth * 0.7) : Math.round(historyCardWidth * 0.82),
                        backgroundColor: colors.card,
                        borderColor: colors.border,
                        borderRadius: isTvLayout ? 12 : 15,
                      },
                      isTvLayout && tvFocusStyle(focused),
                    ]}
                  >
                    <Image
                      source={{ uri: h.thumbnail || `https://img.anili.st/media/${h.animeId}` }}
                      style={styles.historyImg}
                      resizeMode="cover"
                      resizeMethod="resize"
                      fadeDuration={100}
                    />
                    {!isTvLayout && (
                      <>
                        <View style={[styles.historyBadge, styles.historyRemainingBadge]}>
                          <Text style={styles.historyBadgeText}>
                            {remainingMinutes !== null
                              ? `متبقي ${remainingMinutes} د`
                              : remainingEpisodes !== null
                                ? `متبقي ${remainingEpisodes} حلقة`
                                : "متابعة"}
                          </Text>
                        </View>
                        <View style={[styles.historyBadge, styles.historyEpisodeBadge]}>
                          <Text style={styles.historyBadgeText}>الحلقة {h.ep}</Text>
                        </View>
                      </>
                    )}
                    <LinearGradient
                      colors={["transparent", "rgba(0,0,0,0.94)"]}
                      style={[styles.historyGrad, isTvLayout && styles.historyGradTv]}
                    >
                      {isTvLayout && <Text style={styles.historyEp}>حلقة {h.ep}</Text>}
                      <Text
                        style={[styles.historyTitle, isTvLayout && styles.historyTitleTv]}
                        numberOfLines={1}
                      >
                        {h.titleAr || h.english || h.title}
                      </Text>
                      {!isTvLayout && (
                        <>
                          <View style={styles.historyResumeRow}>
                            <Text style={styles.historyPercent}>
                              {completionPercent !== null ? `${completionPercent}%` : `الحلقة ${h.ep}`}
                            </Text>
                            <Text style={styles.historyResumeText} numberOfLines={1}>
                              استئناف المشاهدة الآن
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
                        </>
                      )}
                    </LinearGradient>
                    {isTvLayout && (
                      <View style={styles.playOverlay}>
                        <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.85)" />
                      </View>
                    )}
                  </Pressable>
                );
              }}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={Platform.OS === "android" && !isTvLayout}
            />
          </View>
        )}

        {/* أحدث الحلقات — AnimeSlayer (مطابق للويب) */}
        {(todayEps.length > 0 || todayChecking) && (
          <View style={{ marginTop: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/latest" as any)}
              focusable={isTvLayout}
            >
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#f43f5e" }]} />
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>📺 أحدث الحلقات</Text>
              </View>
            </SectionHeader>
              <FlatList
              data={todayEps}
              horizontal
              keyExtractor={(ep) => `${ep.source}-${ep.animeId || ep.anslayerId || ep.awAnimeId}-${ep.episode}`}
              showsHorizontalScrollIndicator={false}
               contentContainerStyle={{ paddingHorizontal: railSidePadding, gap: railGap }}
              renderItem={({ item: ep }) => (
                /* بطاقة أحدث الحلقات تمرر anslayerId كمرجع احتياطي لـ AS،
                   لكن صفحة المشاهدة تفحص كل المصادر المتاحة مثل الويب. */
                 <Pressable
                    onPress={() => router.push(`/watch?anime=${ep.animeId || 0}&anilistId=${ep.anilistId || ep.animeId || 0}&ep=${ep.episode}&totalEps=${ep.episode}&title=${encodeURIComponent(ep.romaji || ep.name || "")}&english=${encodeURIComponent(ep.english || "")}&native=${encodeURIComponent(ep.native || "")}&titles=${encodeURIComponent(JSON.stringify(ep.titleVariants || []))}&cover=${encodeURIComponent(ep.cover || "")}&titleAr=${encodeURIComponent(ep.titleAr || "")}&anslayerId=${ep.anslayerId}&awAnimeId=${encodeURIComponent(ep.awAnimeId || "")}&site=${encodeURIComponent(ep.source)}&fromLatest=1&latestSource=${encodeURIComponent(ep.source)}` as any)}
                   focusable={isTvLayout}
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
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.95)"]} style={todayEpStyles.grad}>
                    <Text style={todayEpStyles.ep}>حلقة {ep.episode}</Text>
                    <Text style={todayEpStyles.title} numberOfLines={2}>{ep.name}</Text>
                  </LinearGradient>
                </Pressable>
              )}
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={Platform.OS === "android" && !isTvLayout}
            />
          </View>
        )}

        {/* ── الأقسام المدبلجة — مباشرة بعد أحدث الحلقات ── */}
        {animationHomeRows.length > 0 && (
          <View style={{ marginTop: 24, marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push("/aw-dubbed" as any)}
              focusable={isTvLayout}
            >
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#06b6d4" }]} />
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>✨ أنيميشن مدبلج ومترجم</Text>
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
                     focusable={isTvLayout}
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
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={Platform.OS === "android" && !isTvLayout}
            />
          </View>
        )}

        {dubbedHomeRows.length > 0 && (
          <View style={{ marginBottom: 24 }}>
            <SectionHeader
              onSeeAll={() => router.push({ pathname: "/aw-dubbed" as any, params: { tab: "cartoon" } })}
              focusable={isTvLayout}
            >
              <View style={styles.sectionLeft}>
                <View style={[styles.sectionDot, { backgroundColor: "#f59e0b" }]} />
                <Text style={[styles.sectionTitle, isTvLayout && styles.tvSectionTitle, { color: colors.text }]}>🎬 كرتون مدبلج ومترجم</Text>
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
                     focusable={isTvLayout}
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
              initialNumToRender={5}
              maxToRenderPerBatch={5}
              windowSize={3}
              removeClippedSubviews={Platform.OS === "android" && !isTvLayout}
            />
          </View>
        )}

        <View style={{ marginTop: 24 }}>
          {isLoading && (
            <>
              <SkeletonRow />
              <SkeletonRow />
              <SkeletonRow />
            </>
          )}
        </View>
          </View>
        }
        ListFooterComponent={<View style={{ height: 90 }} />}
        showsVerticalScrollIndicator={false}
        refreshControl={<RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
        removeClippedSubviews={Platform.OS === "android" && !isTvLayout}
        initialNumToRender={3}
        maxToRenderPerBatch={2}
        updateCellsBatchingPeriod={50}
        windowSize={5}
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
  sectionDot: { width: 8, height: 8, borderRadius: 4 },
  sectionTitle: { fontSize: 17, fontFamily: "Cairo_700Bold" },
  tvSectionTitle: { fontSize: 25, lineHeight: 34 },
  continueHeading: { flex: 1, flexDirection: "row", direction: "ltr", alignItems: "center", gap: 9 },
  continueAccent: { width: 3, height: 24, borderRadius: 2 },
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

