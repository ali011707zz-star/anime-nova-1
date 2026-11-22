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
import { FilmSectionHeader } from "@/components/FilmSectionHeader";
import { useColors } from "@/hooks/useColors";
import { fetchFilmHome, getMemoryFilmHome, loadCachedFilmHome, type FilmHomeFeed } from "@/utils/filmApi";
import {
  getImageSource,
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

type HubTabSpec = {
  key: string;
  label: string;
  subtitle: string;
  icon: string;
  color: string;
  items: FilmSummary[];
  browseType: string;
  browseSort: string;
};

type UnifiedHubSpec = {
  key: string;
  tabs: HubTabSpec[];
};

const QUICK_PILLS = [
  { label: "الكل", icon: "grid-outline", type: "all", color: "#0EA5E9" },
  { label: "أفلام أجنبية", icon: "film-outline", type: "movie", color: "#F59E0B" },
  { label: "مسلسلات", icon: "albums-outline", type: "series", color: "#10B981" },
  { label: "عربي", icon: "star-outline", type: "arabic", color: "#E11D48" },
  { label: "تركي", icon: "flame-outline", type: "turkish", color: "#F97316" },
  { label: "هندي", icon: "sparkles-outline", type: "indian", color: "#A855F7" },
  { label: "آسيوي", icon: "earth-outline", type: "asian", color: "#EC4899" },
  { label: "مدبلج", icon: "mic-outline", type: "dubbed_series", color: "#14B8A6" },
  { label: "أنميشن", icon: "color-palette-outline", type: "animation", color: "#8B5CF6" },
] as const;

/**
 * Unified Tabbed Hub Rail — matches Anime NOVA's clean tabbed section layout:
 * SectionHeader (colored vertical accent + title + عرض الكل)
 * -> Scrollable category pill tabs
 * -> Horizontal poster FlatList
 */
const UnifiedTabbedHub = React.memo(function UnifiedTabbedHub({
  hub,
  activeTabKey,
  onSelectTab,
  railCardWidth,
  watchedMap,
  isTv,
  onSeeAll,
}: {
  hub: UnifiedHubSpec;
  activeTabKey: string;
  onSelectTab: (tabKey: string) => void;
  railCardWidth: number;
  watchedMap: Record<string, boolean>;
  isTv: boolean;
  onSeeAll: (browseType: string, browseSort: string) => void;
}) {
  const colors = useColors();
  const listRef = useRef<FlatList<FilmSummary> | null>(null);
  const availableTabs = useMemo(() => hub.tabs.filter((t) => t.items.length > 0), [hub.tabs]);
  const currentTab = useMemo(
    () => availableTabs.find((t) => t.key === activeTabKey) || availableTabs[0],
    [availableTabs, activeTabKey],
  );
  const itemStride = railCardWidth + 11;

  if (!currentTab) return null;

  return (
    <View style={s.sectionWrap}>
      <FilmSectionHeader
        title={`${currentTab.icon} ${currentTab.label}`}
        subtitle={currentTab.subtitle}
        accentColor={currentTab.color}
        onSeeAll={() => onSeeAll(currentTab.browseType, currentTab.browseSort)}
        focusable={isTv}
      />

      {availableTabs.length > 1 ? (
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          overScrollMode="never"
          style={s.tabStripWrap}
          contentContainerStyle={s.tabStripContent}
        >
          {availableTabs.map((tab) => {
            const isActive = tab.key === currentTab.key;
            return (
              <Pressable
                key={tab.key}
                onPress={() => {
                  onSelectTab(tab.key);
                  listRef.current?.scrollToOffset({ offset: 0, animated: false });
                }}
                focusable={isTv}
                style={({ focused, pressed }) => [
                  s.hubTabPill,
                  {
                    backgroundColor: isActive ? `${tab.color}22` : colors.card,
                    borderColor: isActive ? `${tab.color}88` : colors.border,
                    opacity: pressed ? 0.85 : 1,
                  },
                  isTv && tvFocusStyle(focused),
                ]}
              >
                <Text
                  style={[
                    s.hubTabText,
                    { color: isActive ? tab.color : colors.textSecondary },
                  ]}
                  numberOfLines={1}
                >
                  {`${tab.icon} ${tab.label}`}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      ) : null}

      <FlatList
        ref={listRef}
        data={currentTab.items}
        horizontal
        keyExtractor={(item) => `${hub.key}-${currentTab.key}-${item.tmdbType}-${item.id}`}
        showsHorizontalScrollIndicator={false}
        overScrollMode="never"
        nestedScrollEnabled
        initialNumToRender={4}
        maxToRenderPerBatch={4}
        windowSize={3}
        removeClippedSubviews={Platform.OS === "android"}
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

  // Unified Tab States (mirroring Anime NOVA's activeLatestTab / activeAnimeTab / activeDubbedTab / activeMangaTab)
  const [activeLatestTab, setActiveLatestTab] = useState<string>("trending");
  const [activeMoviesTab, setActiveMoviesTab] = useState<string>("foreign");
  const [activeSeriesTab, setActiveSeriesTab] = useState<string>("foreign");
  const [activeAnimTab, setActiveAnimTab] = useState<string>("all");

  useEffect(() => {
    if (!diskCachedHome) {
      loadCachedFilmHome()
        .then((cached) => {
          if (cached) setDiskCachedHome(cached);
        })
        .catch(() => {});
    }
  }, [diskCachedHome]);

  const {
    data: homeData,
    isLoading,
    isRefetching,
    error,
    refetch,
  } = useQuery({
    queryKey: ["nova-film-home-v3"],
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
  const foreignMovies = effectiveHome?.foreignMovies?.length ? effectiveHome.foreignMovies : latestMovies;
  const arabicMovies = effectiveHome?.arabicMovies || [];
  const turkishMovies = effectiveHome?.turkishMovies || [];
  const indianMovies = effectiveHome?.indianMovies || [];
  const asianMovies = effectiveHome?.asianMovies || [];
  const popularSeries = effectiveHome?.popularSeries || [];
  const latestSeries = effectiveHome?.latestSeries?.length ? effectiveHome.latestSeries : popularSeries;
  const arabicSeries = effectiveHome?.arabicSeries || [];
  const turkishSeries = effectiveHome?.turkishSeries || [];
  const asianSeries = effectiveHome?.asianSeries || [];
  const dubbedSeries = effectiveHome?.dubbedSeries || [];
  const indianSeries = effectiveHome?.indianSeries || [];
  const topRatedItems = effectiveHome?.topRated || [];
  const animationList = effectiveHome?.animations || [];
  const animationMovies = effectiveHome?.animationMovies || [];
  const animationSeries = effectiveHome?.animationSeries || [];

  const allPool = useMemo(() => {
    const map = new Map<string, FilmSummary>();
    const lists = [
      heroItems,
      trendingMovies,
      latestMovies,
      foreignMovies,
      arabicMovies,
      turkishMovies,
      indianMovies,
      asianMovies,
      popularSeries,
      latestSeries,
      arabicSeries,
      turkishSeries,
      asianSeries,
      dubbedSeries,
      indianSeries,
      topRatedItems,
      animationList,
      animationMovies,
      animationSeries,
    ];
    for (const arr of lists) {
      for (const item of arr) {
        map.set(`${item.tmdbType}:${item.id}`, item);
      }
    }
    return map;
  }, [
    heroItems,
    trendingMovies,
    latestMovies,
    foreignMovies,
    arabicMovies,
    turkishMovies,
    indianMovies,
    asianMovies,
    popularSeries,
    latestSeries,
    arabicSeries,
    turkishSeries,
    asianSeries,
    dubbedSeries,
    indianSeries,
    topRatedItems,
    animationList,
    animationMovies,
    animationSeries,
  ]);

  const continueItems = useMemo(() => {
    return playbackHistory
      .map((rec) => {
        const matched = rec.titleSnapshot || allPool.get(`${rec.tmdbType}:${rec.titleId}`);
        if (!matched) return null;
        return { rec, title: matched };
      })
      .filter(Boolean) as { rec: FilmPlaybackRecord; title: FilmSummary }[];
  }, [playbackHistory, allPool]);

  const hubs = useMemo<UnifiedHubSpec[]>(() => {
    if (!effectiveHome) return [];
    const list: UnifiedHubSpec[] = [
      {
        key: "latest-hub",
        tabs: [
          {
            key: "trending",
            label: "الأكثر رواجاً",
            subtitle: "الأعمال الأكثر مشاهدة وتداولاً في نوفا فيلم",
            icon: "🔥",
            color: "#0EA5E9",
            items: trendingMovies,
            browseType: "movie",
            browseSort: "popularity",
          },
          {
            key: "latestMovies",
            label: "أحدث الأفلام",
            subtitle: "أحدث الإصدارات السينمائية المضافة مباشرة",
            icon: "🎬",
            color: "#F59E0B",
            items: latestMovies,
            browseType: "movie",
            browseSort: "year",
          },
          {
            key: "latestSeries",
            label: "أحدث المسلسلات",
            subtitle: "مسلسلات جديدة وحلقات متجددة يومياً",
            icon: "📺",
            color: "#10B981",
            items: latestSeries,
            browseType: "series",
            browseSort: "year",
          },
        ],
      },
      {
        key: "movies-hub",
        tabs: [
          {
            key: "foreign",
            label: "أفلام أجنبية",
            subtitle: "مكتبة السينما العالمية المترجمة بأعلى جودة",
            icon: "🌍",
            color: "#F59E0B",
            items: foreignMovies,
            browseType: "movie",
            browseSort: "year",
          },
          {
            key: "arabic",
            label: "أفلام عربية",
            subtitle: "أحدث الأفلام المصرية والعربية الكاملة",
            icon: "⭐",
            color: "#E11D48",
            items: arabicMovies,
            browseType: "arabic_movies",
            browseSort: "year",
          },
          {
            key: "turkish",
            label: "أفلام تركية",
            subtitle: "أبرز أفلام السينما التركية المترجمة",
            icon: "🎞️",
            color: "#F97316",
            items: turkishMovies,
            browseType: "turkish_movies",
            browseSort: "year",
          },
          {
            key: "indian",
            label: "أفلام هندية",
            subtitle: "أقوى أفلام بوليوود والأكشن والدراما الهندية",
            icon: "✨",
            color: "#A855F7",
            items: indianMovies,
            browseType: "indian_movies",
            browseSort: "year",
          },
          {
            key: "asian",
            label: "أفلام آسيوية",
            subtitle: "السينما الكورية واليابانية والصينية",
            icon: "🏯",
            color: "#EC4899",
            items: asianMovies,
            browseType: "asian_movies",
            browseSort: "year",
          },
          {
            key: "topRated",
            label: "الأعلى تقييماً",
            subtitle: "روائع خالدة بأعلى تقييمات الجمهور",
            icon: "🏆",
            color: "#38BDF8",
            items: topRatedItems,
            browseType: "top_rated",
            browseSort: "rating",
          },
        ],
      },
      {
        key: "series-hub",
        tabs: [
          {
            key: "foreign",
            label: "مسلسلات أجنبية",
            subtitle: "مواسم كاملة وحلقات متجددة مترجمة",
            icon: "📺",
            color: "#10B981",
            items: popularSeries,
            browseType: "series",
            browseSort: "popularity",
          },
          {
            key: "arabic",
            label: "مسلسلات عربية",
            subtitle: "أحدث المسلسلات العربية والرمضانية",
            icon: "🌙",
            color: "#E11D48",
            items: arabicSeries,
            browseType: "arabic_series",
            browseSort: "year",
          },
          {
            key: "turkish",
            label: "مسلسلات تركية",
            subtitle: "الدراما التركية المترجمة كاملة",
            icon: "🔥",
            color: "#F97316",
            items: turkishSeries,
            browseType: "turkish_series",
            browseSort: "year",
          },
          {
            key: "asian",
            label: "مسلسلات آسيوية",
            subtitle: "دراما كورية وصينية ويابانية",
            icon: "🌸",
            color: "#EC4899",
            items: asianSeries,
            browseType: "asian_series",
            browseSort: "year",
          },
          {
            key: "dubbed",
            label: "مسلسلات مدبلجة",
            subtitle: "أشهر المسلسلات المدبلجة للعربية",
            icon: "🎙️",
            color: "#14B8A6",
            items: dubbedSeries,
            browseType: "dubbed_series",
            browseSort: "year",
          },
          {
            key: "indian",
            label: "مسلسلات هندية",
            subtitle: "الدراما الهندية المترجمة والمدبلجة",
            icon: "💫",
            color: "#A855F7",
            items: indianSeries,
            browseType: "indian_series",
            browseSort: "year",
          },
        ],
      },
      {
        key: "anim-hub",
        tabs: [
          {
            key: "all",
            label: "عالم الأنميشن",
            subtitle: "أفلام ومسلسلات الرسوم المتحركة العائلية",
            icon: "🎨",
            color: "#8B5CF6",
            items: animationList,
            browseType: "animation",
            browseSort: "year",
          },
          {
            key: "movies",
            label: "أفلام أنمي",
            subtitle: "أحدث أفلام الأنمي المترجمة",
            icon: "🎬",
            color: "#06B6D4",
            items: animationMovies,
            browseType: "animation_movies",
            browseSort: "year",
          },
          {
            key: "series",
            label: "مسلسلات أنمي",
            subtitle: "أشهر مسلسلات الأنمي المترجمة",
            icon: "✨",
            color: "#6366F1",
            items: animationSeries,
            browseType: "animation_series",
            browseSort: "year",
          },
        ],
      },
    ];
    return list.filter((h) => h.tabs.some((t) => t.items.length > 0));
  }, [
    effectiveHome,
    trendingMovies,
    latestMovies,
    latestSeries,
    foreignMovies,
    arabicMovies,
    turkishMovies,
    indianMovies,
    asianMovies,
    topRatedItems,
    popularSeries,
    arabicSeries,
    turkishSeries,
    asianSeries,
    dubbedSeries,
    indianSeries,
    animationList,
    animationMovies,
    animationSeries,
  ]);

  const getActiveTabForHub = useCallback(
    (hubKey: string): string => {
      if (hubKey === "latest-hub") return activeLatestTab;
      if (hubKey === "movies-hub") return activeMoviesTab;
      if (hubKey === "series-hub") return activeSeriesTab;
      return activeAnimTab;
    },
    [activeLatestTab, activeMoviesTab, activeSeriesTab, activeAnimTab],
  );

  const handleSelectHubTab = useCallback((hubKey: string, tabKey: string) => {
    if (hubKey === "latest-hub") setActiveLatestTab(tabKey);
    else if (hubKey === "movies-hub") setActiveMoviesTab(tabKey);
    else if (hubKey === "series-hub") setActiveSeriesTab(tabKey);
    else setActiveAnimTab(tabKey);
  }, []);

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
              onPress={() => router.push("/(tabs)/search" as any)}
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
            {/* Cinematic Hero Spotlight */}
            {heroItems.length > 0 ? <FilmHeroSection items={heroItems} /> : null}

            {/* Quick Category Pills */}
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              overScrollMode="never"
              contentContainerStyle={s.quickPillsRow}
            >
              {QUICK_PILLS.map((pill) => (
                <Pressable
                  key={pill.type}
                  onPress={() =>
                    router.push({
                      pathname: "/(tabs)/browse" as any,
                      params: { category: pill.type, sort: "year", genre: "", year: "" },
                    })
                  }
                  focusable={isTv}
                  style={({ focused, pressed }) => [
                    s.quickPill,
                    {
                      backgroundColor: colors.card,
                      borderColor: `${pill.color}44`,
                      opacity: pressed ? 0.82 : 1,
                    },
                    isTv && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name={pill.icon as any} size={14} color={pill.color} />
                  <Text style={[s.quickPillText, { color: colors.textPrimary }]}>{pill.label}</Text>
                </Pressable>
              ))}
            </ScrollView>

            {/* Continue Watching (exact Anime NOVA priority placement!) */}
            {continueItems.length > 0 ? (
              <View style={s.sectionWrap}>
                <FilmSectionHeader
                  title="▶️ متابعة المشاهدة"
                  subtitle="أكمل المشاهدة من اللحظة التي توقفت عندها"
                  accentColor="#0EA5E9"
                  onSeeAll={() => router.push("/(tabs)/library" as any)}
                  focusable={isTv}
                />
                <FlatList
                  data={continueItems}
                  horizontal
                  keyExtractor={(item) => `${item.rec.tmdbType}-${item.rec.titleId}`}
                  showsHorizontalScrollIndicator={false}
                  overScrollMode="never"
                  nestedScrollEnabled
                  getItemLayout={(_, index) => ({
                    length: historyStride,
                    offset: historyStride * index,
                    index,
                  })}
                  contentContainerStyle={{ paddingHorizontal: 14, gap: 11 }}
                  renderItem={({ item: { rec, title } }) => {
                    const pct = Math.min(99, Math.max(4, Math.round(rec.progressPercent || (rec.durationSec > 0 ? (rec.positionSec / rec.durationSec) * 100 : 0))));
                    const imgSrc = getImageSource(title.backdropUrl || title.posterUrl);
                    return (
                      <Pressable
                        focusable={isTv}
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
                        {imgSrc ? (
                          <Image
                            source={imgSrc}
                            style={StyleSheet.absoluteFill}
                            resizeMode="cover"
                            fadeDuration={0}
                            resizeMethod={Platform.OS === "android" ? "resize" : undefined}
                          />
                        ) : null}
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
        data={hubs}
        keyExtractor={(item) => item.key}
        extraData={{ activeLatestTab, activeMoviesTab, activeSeriesTab, activeAnimTab }}
        ListHeaderComponent={renderListHeader}
        showsVerticalScrollIndicator={false}
        overScrollMode="never"
        initialNumToRender={2}
        maxToRenderPerBatch={2}
        windowSize={4}
        removeClippedSubviews={Platform.OS === "android"}
        contentContainerStyle={{ paddingBottom: 98 }}
        refreshControl={
          <RefreshControl refreshing={isRefetching} onRefresh={handleRefresh} tintColor={colors.homeAccent} />
        }
        renderItem={({ item }) => (
          <UnifiedTabbedHub
            hub={item}
            activeTabKey={getActiveTabForHub(item.key)}
            onSelectTab={(tabKey) => handleSelectHubTab(item.key, tabKey)}
            railCardWidth={railCardWidth}
            watchedMap={watchedMap}
            isTv={isTv}
            onSeeAll={handleSeeAll}
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
    paddingHorizontal: 15,
    paddingVertical: 8.5,
    flexShrink: 0,
  },
  quickPillText: {
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  sectionWrap: { marginBottom: 24 },
  tabStripWrap: {
    marginBottom: 12,
  },
  tabStripContent: {
    paddingHorizontal: 14,
    gap: 8,
    flexDirection: "row",
    alignItems: "center",
  },
  hubTabPill: {
    paddingHorizontal: 15,
    paddingVertical: 7,
    borderRadius: 12,
    borderWidth: 1,
    flexShrink: 0,
    alignItems: "center",
    justifyContent: "center",
  },
  hubTabText: {
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: false,
    textAlign: "center",
  },
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
