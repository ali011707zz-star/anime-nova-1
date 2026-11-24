import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Platform,
  RefreshControl,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { FilmHeroSection } from "@/components/FilmHeroSection";
import { FilmPosterCard, getFilmRailCardWidth } from "@/components/FilmPosterCard";
import { SafePosterImage } from "@/components/SafePosterImage";
import { FilmSectionHeader } from "@/components/FilmSectionHeader";
import { useColors } from "@/hooks/useColors";
import { fetchFilmHome, getMemoryFilmHome, loadCachedFilmHome, type FilmHomeFeed } from "@/utils/filmApi";
import {
  getImageSource,
  resolveFilmImageUrl,
  loadAllPlaybackProgress,
  loadWatchedMap,
  makeEpisodeKey,
  type FilmPlaybackRecord,
  type FilmSummary,
} from "@/utils/filmCatalog";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

const HEADER_ROW = I18nManager.isRTL ? "row-reverse" : "row";
const SEARCH_ROW = I18nManager.isRTL ? "row" : "row-reverse";

function formatRemaining(pos: number, dur: number): string {
  const left = Math.max(1, Math.ceil((dur - pos) / 60));
  return `متبقي ${left} د`;
}

type TabOption = {
  key: string;
  label: string;
  subtitle: string;
  color: string;
  items: FilmSummary[];
  browseType: string;
  browseSort: string;
};

type TabbedSectionSpec = {
  key: string;
  title: string;
  tabs: TabOption[];
};

const TabbedHomeSection = React.memo(function TabbedHomeSection({
  section,
  railCardWidth,
  watchedMap,
  isTv,
  onSeeAll,
  colors,
}: {
  section: TabbedSectionSpec;
  railCardWidth: number;
  watchedMap: Record<string, boolean>;
  isTv: boolean;
  onSeeAll: (browseType: string, browseSort: string) => void;
  colors: ReturnType<typeof useColors>;
}) {
  const [activeKey, setActiveKey] = useState<string>(section.tabs[0]?.key || "");
  const listRef = useRef<FlatList<FilmSummary>>(null);
  const activeTab = useMemo(
    () => section.tabs.find((t) => t.key === activeKey) || section.tabs[0],
    [section.tabs, activeKey],
  );
  const itemStride = railCardWidth + 11;

  if (!activeTab) return null;

  return (
    <View style={s.sectionWrap}>
      <FilmSectionHeader
        title={section.title}
        subtitle={activeTab.subtitle}
        accentColor={activeTab.color}
        onSeeAll={() => onSeeAll(activeTab.browseType, activeTab.browseSort)}
        focusable={isTv}
      />
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        overScrollMode="never"
        style={{ marginBottom: 12 }}
        contentContainerStyle={{
          paddingHorizontal: 14,
          gap: 8,
          flexDirection: "row",
          alignItems: "center",
        }}
      >
        {section.tabs.map((tabOpt) => {
          const isActive = activeTab.key === tabOpt.key;
          return (
            <Pressable
              key={tabOpt.key}
              onPress={() => {
                setActiveKey(tabOpt.key);
                listRef.current?.scrollToOffset({ offset: 0, animated: false });
              }}
              style={({ pressed }) => [
                {
                  paddingHorizontal: 16,
                  paddingVertical: 7,
                  borderRadius: 12,
                  borderWidth: 1,
                  flexShrink: 0,
                  alignItems: "center",
                  justifyContent: "center",
                  backgroundColor: isActive ? `${tabOpt.color}22` : colors.card,
                  borderColor: isActive ? `${tabOpt.color}88` : colors.border,
                  opacity: pressed ? 0.85 : 1,
                },
              ]}
            >
              <Text
                style={{
                  fontSize: 12.5,
                  lineHeight: 19,
                  fontFamily: "Cairo_700Bold",
                  color: isActive ? tabOpt.color : colors.textSecondary,
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
      <FlatList
        ref={listRef}
        data={activeTab.items}
        horizontal
        keyExtractor={(item) => `${activeTab.key}-${item.tmdbType}-${item.id}`}
        showsHorizontalScrollIndicator={false}
        overScrollMode="never"
        nestedScrollEnabled
        initialNumToRender={4}
        maxToRenderPerBatch={4}
        windowSize={5}
        removeClippedSubviews={false}
        getItemLayout={(_, index) => ({ length: itemStride, offset: itemStride * index, index })}
        contentContainerStyle={{ paddingHorizontal: 14, gap: 11 }}
        renderItem={({ item }) => {
          const watchedKey = makeEpisodeKey(item.id, 1, 1, item.tmdbType);
          const watchedCount = watchedMap[watchedKey] ? 1 : 0;
          return (
            <FilmPosterCard
              item={item}
              cardWidth={railCardWidth}
              watchedCount={watchedCount}
              progress={0}
              tvFocusable={isTv}
            />
          );
        }}
      />
    </View>
  );
});

export default function NovaFilmHomeScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
  const { size: scaleSize } = useTvMetrics();
  const isTv = isTvDevice(width, height);

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [playbackHistory, setPlaybackHistory] = useState<FilmPlaybackRecord[]>([]);
  const [diskCachedHome, setDiskCachedHome] = useState<FilmHomeFeed | undefined>(() => getMemoryFilmHome());

  useEffect(() => {
    if (!diskCachedHome) {
      loadCachedFilmHome().then((cached) => {
        if (cached) setDiskCachedHome(cached);
      }).catch(() => {});
    }
  }, [diskCachedHome]);

  const {
    data: homeData,
    isLoading,
    isRefetching,
    error,
    refetch,
  } = useQuery({
    queryKey: ["nova-film-home"],
    queryFn: fetchFilmHome,
    initialData: () => getMemoryFilmHome(),
    staleTime: 5 * 60_000,
    retry: 2,
  });

  const effectiveHome = homeData ?? diskCachedHome;

  const reloadProgress = useCallback(async () => {
    try {
      const [w, hist] = await Promise.all([loadWatchedMap(), loadAllPlaybackProgress()]);
      setWatchedMap(w);
      setPlaybackHistory(hist);
    } catch {}
  }, []);

  useFocusEffect(
    useCallback(() => {
      void reloadProgress();
    }, [reloadProgress]),
  );

  const handleRefresh = useCallback(async () => {
    await Promise.all([reloadProgress(), refetch()]);
  }, [reloadProgress, refetch]);

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);
  const railCardWidth = getFilmRailCardWidth(width, 3, 10);
  const historyCardWidth = Math.max(152, Math.min(205, Math.floor((width - 40) / 2.15)));
  const historyStride = historyCardWidth + 11;

  const heroItems = effectiveHome?.hero || [];
  const trendingMovies = effectiveHome?.trendingMovies || [];
  const latestMovies = effectiveHome?.latestMovies || [];
  const arabicMovies = effectiveHome?.arabicMovies || [];
  const indianMovies = effectiveHome?.indianMovies || [];
  const asianMovies = effectiveHome?.asianMovies || [];
  const topRatedItems = effectiveHome?.topRated || [];
  const popularSeries = effectiveHome?.popularSeries || [];
  const arabicSeries = effectiveHome?.arabicSeries || [];
  const turkishSeries = effectiveHome?.turkishSeries || [];
  const dubbedSeries = effectiveHome?.dubbedSeries || [];
  const asianSeries = effectiveHome?.asianSeries || [];

  const allPool = useMemo(() => {
    const map = new Map<string, FilmSummary>();
    for (const arr of [
      heroItems,
      trendingMovies,
      latestMovies,
      arabicMovies,
      indianMovies,
      asianMovies,
      topRatedItems,
      popularSeries,
      arabicSeries,
      turkishSeries,
      dubbedSeries,
      asianSeries,
    ]) {
      for (const item of arr) {
        map.set(`${item.tmdbType}:${item.id}`, item);
      }
    }
    return map;
  }, [
    heroItems,
    trendingMovies,
    latestMovies,
    arabicMovies,
    indianMovies,
    asianMovies,
    topRatedItems,
    popularSeries,
    arabicSeries,
    turkishSeries,
    dubbedSeries,
    asianSeries,
  ]);

  const continueItems = useMemo(() => {
    return playbackHistory
      .map((rec) => {
        const poolItem = allPool.get(`${rec.tmdbType}:${rec.titleId}`);
        const snap = rec.titleSnapshot;
        if (!snap && !poolItem) return null;
        const bestPoster =
          resolveFilmImageUrl(poolItem?.posterUrl || snap?.posterUrl || poolItem?.backdropUrl || snap?.backdropUrl) || null;
        const bestBackdrop =
          resolveFilmImageUrl(poolItem?.backdropUrl || snap?.backdropUrl || bestPoster) || bestPoster;
        const title: FilmSummary = {
          ...(poolItem || snap!),
          posterUrl: bestPoster,
          backdropUrl: bestBackdrop,
          poster: bestPoster || "",
          backdrop: bestBackdrop || "",
        };
        return { rec, title };
      })
      .filter(Boolean) as { rec: FilmPlaybackRecord; title: FilmSummary }[];
  }, [playbackHistory, allPool]);

  const sections = useMemo<TabbedSectionSpec[]>(() => {
    if (!effectiveHome) return [];
    const movieTabs: TabOption[] = [
      { key: "trending", label: "الرائجة", subtitle: "الأكثر مشاهدة وتداولاً هذا الأسبوع", color: "#06b6d4", items: trendingMovies, browseType: "movie", browseSort: "popularity" },
      { key: "foreign", label: "أفلام أجنبية", subtitle: "أحدث الإصدارات السينمائية المترجمة", color: "#F59E0B", items: latestMovies, browseType: "movie", browseSort: "year" },
      { key: "arabic-m", label: "أفلام عربية", subtitle: "أحدث الأفلام العربية بجودة عالية", color: "#EF4444", items: arabicMovies, browseType: "arabic_movies", browseSort: "year" },
      { key: "indian-m", label: "أفلام هندية", subtitle: "أحدث إنتاجات بوليوود والسينما الهندية", color: "#D97706", items: indianMovies, browseType: "indian_movies", browseSort: "year" },
      { key: "asian-m", label: "أفلام آسيوية", subtitle: "أبرز الأعمال الكورية والصينية واليابانية", color: "#EC4899", items: asianMovies, browseType: "asian", browseSort: "year" },
      { key: "top-rated", label: "الأعلى تقييماً", subtitle: "روائع خالدة بأعلى تقييمات المشاهدين", color: "#38BDF8", items: topRatedItems, browseType: "movie", browseSort: "rating" },
    ].filter((t) => t.items.length > 0);

    const seriesTabs: TabOption[] = [
      { key: "global-s", label: "مسلسلات عالمية", subtitle: "مواسم كاملة وحلقات متجددة", color: "#10B981", items: popularSeries, browseType: "series", browseSort: "popularity" },
      { key: "arabic-s", label: "مسلسلات عربية", subtitle: "أحدث المسلسلات والدراما العربية", color: "#F97316", items: arabicSeries, browseType: "arabic_series", browseSort: "year" },
      { key: "turkish-s", label: "مسلسلات تركية", subtitle: "أبرز المسلسلات التركية المترجمة", color: "#E11D48", items: turkishSeries, browseType: "turkish_series", browseSort: "year" },
      { key: "dubbed-s", label: "مسلسلات مدبلجة", subtitle: "أعمال مدبلجة بالعربية جاهزة للمشاهدة", color: "#14B8A6", items: dubbedSeries, browseType: "dubbed_series", browseSort: "year" },
      { key: "asian-s", label: "مسلسلات آسيوية", subtitle: "أبرز الدراما الكورية والآسيوية", color: "#8B5CF6", items: asianSeries, browseType: "asian", browseSort: "year" },
    ].filter((t) => t.items.length > 0);

    const out: TabbedSectionSpec[] = [];
    if (movieTabs.length > 0) out.push({ key: "movies-tabbed", title: "🎬 الأفلام", tabs: movieTabs });
    if (seriesTabs.length > 0) out.push({ key: "series-tabbed", title: "📺 المسلسلات", tabs: seriesTabs });
    return out;
  }, [
    effectiveHome,
    trendingMovies,
    latestMovies,
    arabicMovies,
    indianMovies,
    asianMovies,
    topRatedItems,
    popularSeries,
    arabicSeries,
    turkishSeries,
    dubbedSeries,
    asianSeries,
  ]);

  const handleSeeAll = useCallback(
    (browseType: string, browseSort: string) => {
      router.push({
        pathname: "/(tabs)/browse" as any,
        params: { category: browseType, sort: browseSort, genre: "", year: "" },
      });
    },
    [router],
  );

  const renderListHeader = useCallback(
    () => (
      <>
        {/* Top App Bar: Menu on TOP-LEFT, Search + | NOVA FILM Logo on TOP-RIGHT */}
        <View style={[s.header, { paddingTop: topPad + 4 }]}>
          <Pressable
            accessibilityLabel="فتح القائمة"
            onPress={() => setDrawerVisible(true)}
            focusable={isTv}
            hitSlop={10}
            style={({ focused, pressed }) => [
              s.menuBtn,
              {
                width: scaleSize(42, 52),
                height: scaleSize(42, 52),
                borderRadius: scaleSize(13, 16),
                backgroundColor: colors.surface,
                borderColor: colors.border,
                opacity: pressed ? 0.8 : 1,
              },
              isTv && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="menu" size={scaleSize(22, 28)} color={colors.textPrimary} />
          </Pressable>

          <View style={s.headerSpacer} />

          <View style={s.headerBrandGroup}>
            <Pressable
              accessibilityLabel="بحث"
              onPress={() => router.push("/(tabs)/browse" as any)}
              focusable={isTv}
              style={({ focused, pressed }) => [
                s.searchPill,
                {
                  height: scaleSize(40, 48),
                  width: Math.min(156, Math.max(118, Math.round(width * 0.34))),
                  borderRadius: scaleSize(13, 16),
                  backgroundColor: colors.input,
                  borderColor: colors.border,
                  opacity: pressed ? 0.85 : 1,
                },
                isTv && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="search" size={scaleSize(15, 18)} color={colors.textMuted} />
              <Text style={[s.searchPillText, { color: colors.textMuted }]}>ابحث عن فيلم أو مسلسل...</Text>
            </Pressable>

            <View style={s.logoRow}>
              <View style={[s.logoAccent, { height: scaleSize(22, 28), backgroundColor: "#0EA5E9" }]} />
              <Text style={[s.logoText, { fontSize: scaleSize(16, 22), color: colors.textPrimary }]}>
                NOVA <Text style={{ color: "#0EA5E9" }}>FILM</Text>
              </Text>
            </View>
          </View>
        </View>

        {isLoading && !effectiveHome ? (
          <View style={s.skeletonWrap}>
            <View style={[s.skeletonHero, { backgroundColor: colors.card, borderColor: colors.border }]}>
              <ActivityIndicator size="small" color="#0EA5E9" />
              <Text style={[s.loadingText, { color: colors.textSecondary, fontSize: 12.5 }]}>
                جارٍ تجهيز مكتبة الأفلام والمسلسلات...
              </Text>
            </View>
            <View style={s.skeletonPillsRow}>
              {[0, 1, 2, 3].map((k) => (
                <View key={k} style={[s.skeletonPill, { backgroundColor: colors.card, borderColor: colors.border }]} />
              ))}
            </View>
            {[0, 1].map((row) => (
              <View key={row} style={{ marginTop: 18 }}>
                <View style={[s.skeletonTitle, { backgroundColor: colors.card }]} />
                <View style={s.skeletonCardsRow}>
                  {[0, 1, 2].map((c) => (
                    <View
                      key={c}
                      style={[
                        s.skeletonCard,
                        {
                          width: railCardWidth,
                          height: Math.round(railCardWidth * 1.46),
                          backgroundColor: colors.card,
                          borderColor: colors.border,
                        },
                      ]}
                    />
                  ))}
                </View>
              </View>
            ))}
          </View>
        ) : error && !effectiveHome ? (
          <View style={s.loadingWrap}>
            <Ionicons name="cloud-offline-outline" size={44} color="#F87171" />
            <Text style={[s.loadingText, { color: colors.textPrimary }]}>
              تعذّر الاتصال بالخادم، تحقق من الإنترنت وأعد المحاولة
            </Text>
            <Pressable onPress={() => void refetch()} style={[s.retryBtn, { backgroundColor: "#0EA5E9" }]}>
              <Ionicons name="refresh" size={16} color="#FFFFFF" />
              <Text style={s.retryBtnText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <>
            <FilmHeroSection items={heroItems} tvFocusable={isTv} />

            <View style={{ height: 10 }} />

            {/* Continue Watching */}
            {continueItems.length > 0 ? (
              <View style={s.sectionWrap}>
                <FilmSectionHeader
                  title="متابعة المشاهدة"
                  subtitle="استأنف من حيث توقفت تلقائياً"
                  accentColor="#0EA5E9"
                  seeAllLabel="السجل الكامل"
                  onSeeAll={() => router.push("/(tabs)/library" as any)}
                />
                <FlatList
                  data={continueItems}
                  horizontal
                  keyExtractor={(item) => item.rec.key}
                  showsHorizontalScrollIndicator={false}
                  overScrollMode="never"
                  nestedScrollEnabled
                  initialNumToRender={3}
                  maxToRenderPerBatch={3}
                  windowSize={3}
                  getItemLayout={(_, index) => ({ length: historyStride, offset: historyStride * index, index })}
                  contentContainerStyle={{ paddingHorizontal: 14, gap: 11 }}
                  renderItem={({ item: { rec, title } }) => {
                    const pct = Math.min(
                      99,
                      Math.max(4, Math.round((rec.positionSec / Math.max(1, rec.durationSec)) * 100)),
                    );
                    const imgSrc = getImageSource(title.backdropUrl || title.posterUrl);
                    return (
                      <Pressable
                        onPress={() =>
                          router.push({
                            pathname: "/film/watch" as any,
                            params: {
                              id: String(title.id),
                              type: title.tmdbType,
                              season: String(rec.seasonNumber),
                              episode: String(rec.episodeNumber),
                              title: title.titleAr,
                              poster: title.posterUrl || title.backdropUrl || "",
                            },
                          })
                        }
                        style={[
                          s.historyCard,
                          {
                            width: historyCardWidth,
                            height: Math.round(historyCardWidth * 0.62),
                            borderColor: colors.border,
                            backgroundColor: colors.card,
                          },
                        ]}
                      >
                        <SafePosterImage
                          uri={title.backdropUrl || title.posterUrl}
                          fallbackUris={[title.posterUrl, title.backdropUrl]}
                          style={StyleSheet.absoluteFill}
                          resizeMode="cover"
                          iconSize={26}
                        />
                        <LinearGradient
                          colors={["rgba(9,10,12,0.15)", "rgba(9,10,12,0.92)"]}
                          locations={[0.25, 1]}
                          style={StyleSheet.absoluteFill}
                        />
                        <View style={s.histEpBadge}>
                          <Text style={s.histEpBadgeText}>
                            {title.tmdbType === "tv"
                              ? `م${rec.seasonNumber} · ح${rec.episodeNumber}`
                              : "فيلم"}
                          </Text>
                        </View>
                        {rec.durationSec > rec.positionSec ? (
                          <View style={s.histRemBadge}>
                            <Text style={s.histEpBadgeText}>
                              {formatRemaining(rec.positionSec, rec.durationSec)}
                            </Text>
                          </View>
                        ) : null}
                        <View style={s.histBottom}>
                          <Text style={s.histTitle} numberOfLines={1}>
                            {title.titleAr}
                          </Text>
                          <View style={s.histResumeRow}>
                            <Text style={s.histPctText}>{pct}%</Text>
                            <Text style={s.histResumeLabel}>استئناف المشاهدة الآن</Text>
                          </View>
                          <View style={s.histTrack}>
                            <View style={[s.histFill, { width: `${pct}%` }]} />
                          </View>
                        </View>
                      </Pressable>
                    );
                  }}
                />
              </View>
            ) : null}
          </>
        )}
      </>
    ),
    [
      topPad,
      isTv,
      scaleSize,
      colors,
      router,
      width,
      isLoading,
      effectiveHome,
      railCardWidth,
      error,
      refetch,
      heroItems,
      continueItems,
      historyCardWidth,
      historyStride,
    ],
  );

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <FlatList
        data={sections}
        keyExtractor={(item) => item.key}
        ListHeaderComponent={renderListHeader}
        showsVerticalScrollIndicator={false}
        overScrollMode="never"
        initialNumToRender={2}
        maxToRenderPerBatch={2}
        windowSize={5}
        removeClippedSubviews={false}
        contentContainerStyle={{ paddingBottom: 98 }}
        refreshControl={
          <RefreshControl refreshing={isRefetching} onRefresh={handleRefresh} tintColor={colors.homeAccent} />
        }
        renderItem={({ item }) => (
          <TabbedHomeSection
            section={item}
            railCardWidth={railCardWidth}
            watchedMap={watchedMap}
            isTv={isTv}
            onSeeAll={handleSeeAll}
            colors={colors}
          />
        )}
      />

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: HEADER_ROW,
    alignItems: "center",
    paddingHorizontal: 14,
    paddingBottom: 10,
    gap: 10,
  },
  menuBtn: {
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerSpacer: { flex: 1 },
  headerBrandGroup: {
    flexDirection: HEADER_ROW,
    alignItems: "center",
    gap: 10,
  },
  searchPill: {
    flexDirection: SEARCH_ROW,
    alignItems: "center",
    gap: 7,
    paddingHorizontal: 12,
    borderWidth: 1,
  },
  searchPillText: {
    flex: 1,
    textAlign: "right",
    fontSize: 11.5,
    lineHeight: 17,
    fontFamily: "Cairo_600SemiBold",
    includeFontPadding: true,
  },
  logoRow: {
    flexDirection: SEARCH_ROW,
    alignItems: "center",
    gap: 7,
  },
  logoAccent: {
    width: 3.5,
    borderRadius: 2,
  },
  logoText: {
    fontFamily: "Cairo_800ExtraBold",
    letterSpacing: 0.4,
    includeFontPadding: true,
  },
  skeletonWrap: {
    paddingHorizontal: 14,
    paddingTop: 6,
  },
  skeletonHero: {
    height: 256,
    borderRadius: 20,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
  },
  skeletonPillsRow: {
    flexDirection: "row",
    gap: 9,
    marginTop: 14,
  },
  skeletonPill: {
    width: 82,
    height: 36,
    borderRadius: 13,
    borderWidth: 1,
  },
  skeletonTitle: {
    width: 150,
    height: 18,
    borderRadius: 6,
    alignSelf: "flex-end",
    marginBottom: 10,
  },
  skeletonCardsRow: {
    flexDirection: "row",
    gap: 11,
  },
  skeletonCard: {
    borderRadius: 14,
    borderWidth: 1,
  },
  loadingWrap: {
    paddingVertical: 110,
    paddingHorizontal: 28,
    alignItems: "center",
    justifyContent: "center",
    gap: 14,
  },
  loadingText: {
    fontSize: 13.5,
    lineHeight: 21,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
    includeFontPadding: true,
  },
  retryBtn: {
    flexDirection: SEARCH_ROW,
    alignItems: "center",
    gap: 7,
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 12,
  },
  retryBtnText: {
    color: "#FFFFFF",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  quickPillsRow: {
    paddingHorizontal: 14,
    paddingTop: 14,
    paddingBottom: 14,
    gap: 9,
  },
  quickPill: {
    flexDirection: SEARCH_ROW,
    alignItems: "center",
    gap: 7,
    borderWidth: 1,
    borderRadius: 13,
    paddingHorizontal: 16,
    paddingVertical: 9,
    flexShrink: 0,
  },
  quickPillText: {
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  sectionWrap: { marginBottom: 22 },
  historyCard: {
    borderRadius: 15,
    overflow: "hidden",
    borderWidth: 1,
    position: "relative",
  },
  histEpBadge: {
    position: "absolute",
    top: 7,
    right: 7,
    backgroundColor: "rgba(14,165,233,0.90)",
    paddingHorizontal: 8,
    paddingVertical: 2.5,
    borderRadius: 8,
  },
  histRemBadge: {
    position: "absolute",
    top: 7,
    left: 7,
    backgroundColor: "rgba(9,10,12,0.80)",
    paddingHorizontal: 8,
    paddingVertical: 2.5,
    borderRadius: 8,
  },
  histEpBadgeText: {
    color: "#FFFFFF",
    fontSize: 9.5,
    lineHeight: 14,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  histBottom: {
    position: "absolute",
    left: 10,
    right: 10,
    bottom: 9,
    gap: 3,
  },
  histTitle: {
    color: "#FFFFFF",
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  histResumeRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  histPctText: {
    color: "#38BDF8",
    fontSize: 10.5,
    fontFamily: "Cairo_800ExtraBold",
  },
  histResumeLabel: {
    color: "#CBD5E1",
    fontSize: 10,
    fontFamily: "Cairo_600SemiBold",
  },
  histTrack: {
    height: 3.5,
    borderRadius: 2,
    backgroundColor: "rgba(255,255,255,0.22)",
    overflow: "hidden",
    marginTop: 2,
  },
  histFill: {
    height: "100%",
    backgroundColor: "#0EA5E9",
    borderRadius: 2,
  },
});
