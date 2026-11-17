import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useRouter } from "expo-router";
import React, { useCallback, useMemo, useState } from "react";
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
import { fetchFilmHome } from "@/utils/filmApi";
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

  const {
    data: homeData,
    isLoading,
    isRefetching,
    error,
    refetch,
  } = useQuery({
    queryKey: ["nova-film-home"],
    queryFn: fetchFilmHome,
    staleTime: 5 * 60_000,
    retry: 2,
  });

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

  const heroItems = homeData?.hero || [];
  const trendingMovies = homeData?.trendingMovies || [];
  const latestMovies = homeData?.latestMovies || [];
  const asianMovies = homeData?.asianMovies || [];
  const popularSeries = homeData?.popularSeries || [];
  const topRatedItems = homeData?.topRated || [];
  const animationList = homeData?.animations || [];

  const allPool = useMemo(() => {
    const map = new Map<string, FilmSummary>();
    for (const arr of [heroItems, trendingMovies, latestMovies, asianMovies, popularSeries, topRatedItems, animationList]) {
      for (const item of arr) {
        map.set(`${item.tmdbType}:${item.id}`, item);
      }
    }
    return map;
  }, [heroItems, trendingMovies, latestMovies, asianMovies, popularSeries, topRatedItems, animationList]);

  const continueItems = useMemo(() => {
    return playbackHistory
      .map((rec) => {
        const matched = rec.titleSnapshot || allPool.get(`${rec.tmdbType}:${rec.titleId}`);
        if (!matched) return null;
        return { rec, title: matched };
      })
      .filter(Boolean) as { rec: FilmPlaybackRecord; title: FilmSummary }[];
  }, [playbackHistory, allPool]);

  const renderPosterRail = (
    title: string,
    subtitle: string,
    accentColor: string,
    items: FilmSummary[],
    browseType: string,
  ) => {
    if (!items.length) return null;
    return (
      <View style={s.sectionWrap}>
        <FilmSectionHeader
          title={title}
          subtitle={subtitle}
          accentColor={accentColor}
          onSeeAll={() =>
            router.push({ pathname: "/(tabs)/browse" as any, params: { type: browseType } })
          }
          focusable={isTv}
        />
        <FlatList
          data={items}
          horizontal
          keyExtractor={(item) => `${browseType}-${item.tmdbType}-${item.id}`}
          showsHorizontalScrollIndicator={false}
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
  };

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 98 }}
        refreshControl={
          <RefreshControl refreshing={isRefetching} onRefresh={handleRefresh} tintColor={colors.homeAccent} />
        }
      >
        {/* Top App Bar: Menu on TOP-LEFT, Search + | NOVA FILM Logo on TOP-RIGHT */}
        <View style={[s.header, { paddingTop: topPad + 4 }]}>
          <Pressable
            accessibilityLabel="فتح القائمة"
            onPress={() => setDrawerVisible(true)}
            focusable={isTv}
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

        {isLoading && !homeData ? (
          <View style={s.loadingWrap}>
            <ActivityIndicator size="large" color="#0EA5E9" />
            <Text style={[s.loadingText, { color: colors.textSecondary }]}>
              جارٍ تحميل مكتبة الأفلام والمسلسلات من الخادم...
            </Text>
          </View>
        ) : error && !homeData ? (
          <View style={s.loadingWrap}>
            <Ionicons name="cloud-offline-outline" size={44} color="#F87171" />
            <Text style={[s.loadingText, { color: colors.textPrimary }]}>
              تعذّر الاتصال بالخادم، تحقق من الإنترنت وأعد المحاولة
            </Text>
            <Pressable
              onPress={() => void refetch()}
              style={[s.retryBtn, { backgroundColor: "#0EA5E9" }]}
            >
              <Ionicons name="refresh" size={16} color="#FFFFFF" />
              <Text style={s.retryBtnText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <>
            {/* Hero Banner Carousel */}
            <FilmHeroSection items={heroItems} tvFocusable={isTv} />

            {/* Quick Category Pills */}
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={s.quickPillsRow}
            >
              {[
                { label: "الكل", icon: "grid-outline", type: "all", color: "#0EA5E9" },
                { label: "أفلام أجنبية", icon: "film-outline", type: "movie", color: "#F59E0B" },
                { label: "مسلسلات", icon: "albums-outline", type: "series", color: "#10B981" },
                { label: "أنميشن", icon: "sparkles-outline", type: "animation", color: "#8B5CF6" },
                { label: "جدول البث", icon: "calendar-outline", route: "/schedule", color: "#EC4899" },
              ].map((pill) => (
                <Pressable
                  key={pill.label}
                  onPress={() => {
                    if (pill.route) router.push(pill.route as any);
                    else router.push({ pathname: "/(tabs)/browse" as any, params: { type: pill.type } });
                  }}
                  style={({ pressed }) => [
                    s.quickPill,
                    {
                      backgroundColor: colors.card,
                      borderColor: colors.border,
                      opacity: pressed ? 0.85 : 1,
                    },
                  ]}
                >
                  <Ionicons name={pill.icon as any} size={14} color={pill.color} />
                  <Text style={[s.quickPillText, { color: colors.textPrimary }]}>{pill.label}</Text>
                </Pressable>
              ))}
            </ScrollView>

            {/* Continue Watching */}
            {continueItems.length > 0 ? (
              <View style={s.sectionWrap}>
                <FilmSectionHeader
                  title="متابعة المشاهدة"
                  subtitle="استأنف من حيث توقفت تلقائياً"
                  accentColor="#0EA5E9"
                  seeAllLabel="قائمتي"
                  onSeeAll={() => router.push("/(tabs)/library" as any)}
                />
                <FlatList
                  data={continueItems}
                  horizontal
                  keyExtractor={(item) => item.rec.key}
                  showsHorizontalScrollIndicator={false}
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
                        {imgSrc ? (
                          <Image source={imgSrc} style={StyleSheet.absoluteFill} resizeMode="cover" />
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

            {/* Live Server Rails */}
            {renderPosterRail(
              "الأعمال الرائجة هذا الأسبوع",
              "الأكثر مشاهدة وتداولاً في المنصة",
              "#0EA5E9",
              trendingMovies,
              "movie",
            )}
            {renderPosterRail(
              "الأفلام الأجنبية",
              "أحدث الإصدارات السينمائية المترجمة",
              "#F59E0B",
              latestMovies,
              "movie",
            )}
            {renderPosterRail(
              "المسلسلات العالمية",
              "مواسم كاملة وحلقات متجددة",
              "#10B981",
              popularSeries,
              "series",
            )}
            {renderPosterRail(
              "سينما آسيوية وعربية وتركية",
              "أبرز الأعمال الكورية والصينية والهندية",
              "#EC4899",
              asianMovies,
              "movie",
            )}
            {renderPosterRail(
              "الأعلى تقييماً في التاريخ",
              "روائع خالدة بأعلى تقييمات المشاهدين",
              "#38BDF8",
              topRatedItems,
              "all",
            )}
            {renderPosterRail(
              "أفلام ومسلسلات الأنميشن",
              "عالم الرسوم المتحركة العائلية والسينمائية",
              "#8B5CF6",
              animationList,
              "animation",
            )}
          </>
        )}
      </ScrollView>

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
    includeFontPadding: true,
  },
  histResumeRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  histPctText: {
    color: "#38BDF8",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  histResumeLabel: {
    color: "#E2E8F0",
    fontSize: 10,
    lineHeight: 15,
    fontFamily: "Cairo_600SemiBold",
    includeFontPadding: true,
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
