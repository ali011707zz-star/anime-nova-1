import { Ionicons } from "@expo/vector-icons";
import { useFocusEffect, useRouter } from "expo-router";
import React, { useCallback, useMemo, useState } from "react";
import {
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
import { LinearGradient } from "expo-linear-gradient";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { FilmHeroSection } from "@/components/FilmHeroSection";
import { FilmPosterCard, getFilmRailCardWidth } from "@/components/FilmPosterCard";
import { FilmSectionHeader } from "@/components/FilmSectionHeader";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadAllPlaybackProgress,
  loadWatchedMap,
  makeEpisodeKey,
  type FilmPlaybackRecord,
  type FilmTitle,
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
  const [refreshing, setRefreshing] = useState(false);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [playbackHistory, setPlaybackHistory] = useState<FilmPlaybackRecord[]>([]);

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
    setRefreshing(true);
    await reloadProgress();
    setRefreshing(false);
  }, [reloadProgress]);

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);
  const railCardWidth = getFilmRailCardWidth(width, 3, 10);
  const historyCardWidth = Math.max(152, Math.min(205, Math.floor((width - 40) / 2.15)));

  const heroItems = useMemo(() => NOVA_FILM_CATALOG.filter((t) => t.featuredHero), []);
  const topRatedItems = useMemo(
    () => [...NOVA_FILM_CATALOG].sort((a, b) => b.imdbRating - a.imdbRating).slice(0, 8),
    [],
  );
  const moviesList = useMemo(
    () => NOVA_FILM_CATALOG.filter((t) => t.mediaType === "movie"),
    [],
  );
  const seriesList = useMemo(
    () => NOVA_FILM_CATALOG.filter((t) => t.mediaType === "series"),
    [],
  );
  const animationList = useMemo(
    () => NOVA_FILM_CATALOG.filter((t) => t.mediaType === "animation"),
    [],
  );

  const continueItems = useMemo(() => {
    return playbackHistory
      .map((rec) => {
        const title = NOVA_FILM_CATALOG.find((t) => t.id === rec.titleId);
        if (!title) return null;
        return { rec, title };
      })
      .filter(Boolean) as { rec: FilmPlaybackRecord; title: FilmTitle }[];
  }, [playbackHistory]);

  const renderPosterRail = (
    title: string,
    subtitle: string,
    accentColor: string,
    items: FilmTitle[],
    browseType: string,
  ) => (
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
        keyExtractor={(item) => `${browseType}-${item.id}`}
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={{ paddingHorizontal: 14, gap: 11 }}
        renderItem={({ item }) => {
          const watchedCount = item.episodes.filter(
            (ep) => watchedMap[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)],
          ).length;
          const progress = item.episodes.length > 0 ? watchedCount / item.episodes.length : 0;
          return (
            <FilmPosterCard
              item={item}
              cardWidth={railCardWidth}
              watchedCount={watchedCount}
              progress={progress}
              tvFocusable={isTv}
            />
          );
        }}
      />
    </View>
  );

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 98 }}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={handleRefresh} tintColor={colors.homeAccent} />
        }
      >
        {/* Top App Bar: Menu on TOP-LEFT, Search + | NOVA FILM Logo on TOP-RIGHT (matches Anime NOVA) */}
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
              <Text style={[s.searchPillText, { color: colors.textMuted }]}>بحث...</Text>
            </Pressable>

            <View style={s.logoRow}>
              <View style={[s.logoAccent, { height: scaleSize(22, 28), backgroundColor: "#0EA5E9" }]} />
              <Text style={[s.logoText, { fontSize: scaleSize(16, 22), color: colors.textPrimary }]}>
                NOVA <Text style={{ color: "#0EA5E9" }}>FILM</Text>
              </Text>
            </View>
          </View>
        </View>

        {/* Hero Carousel matching Anime NOVA */}
        <FilmHeroSection items={heroItems} tvFocusable={isTv} />

        {/* Quick Filter Strip — generous padding & natural width so ZERO Arabic text ever clips */}
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={s.quickPills}
        >
          {[
            { label: "الكل", type: "all", icon: "grid", color: "#0EA5E9" },
            { label: "أفلام أجنبية", type: "movie", icon: "film", color: "#F59E0B" },
            { label: "مسلسلات عالمية", type: "series", icon: "albums", color: "#10B981" },
            { label: "أعمال أنميشن", type: "animation", icon: "sparkles", color: "#8B5CF6" },
          ].map((cat) => (
            <Pressable
              key={cat.type}
              onPress={() =>
                router.push({ pathname: "/(tabs)/browse" as any, params: { type: cat.type } })
              }
              focusable={isTv}
              style={({ focused, pressed }) => [
                s.quickPill,
                {
                  backgroundColor: colors.card,
                  borderColor: colors.border,
                  opacity: pressed ? 0.85 : 1,
                },
                isTv && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name={cat.icon as any} size={15} color={cat.color} />
              <Text style={[s.quickPillText, { color: colors.textPrimary }]}>{cat.label}</Text>
            </Pressable>
          ))}
        </ScrollView>

        {/* Continue Watching Rail (identical polish to Anime NOVA) */}
        {continueItems.length > 0 ? (
          <View style={s.sectionWrap}>
            <FilmSectionHeader
              title="متابعة المشاهدة"
              subtitle="أكمل الأفلام والحلقات من حيث توقفت"
              accentColor="#0EA5E9"
              onSeeAll={() => router.push("/(tabs)/library" as any)}
              focusable={isTv}
            />
            <FlatList
              data={continueItems}
              horizontal
              keyExtractor={({ rec }) => `hist-${rec.titleId}-${rec.seasonNumber}-${rec.episodeNumber}`}
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ paddingHorizontal: 14, gap: 11 }}
              renderItem={({ item: { rec, title } }) => {
                const pct =
                  rec.duration > 0 ? Math.min(100, Math.round((rec.position / rec.duration) * 100)) : 20;
                return (
                  <Pressable
                    onPress={() =>
                      router.push({
                        pathname: "/film/watch" as any,
                        params: {
                          titleId: String(title.id),
                          season: String(rec.seasonNumber),
                          episode: String(rec.episodeNumber),
                        },
                      })
                    }
                    style={({ pressed }) => [
                      s.historyCard,
                      {
                        width: historyCardWidth,
                        height: Math.round(historyCardWidth * 0.72),
                        backgroundColor: colors.card,
                        borderColor: colors.border,
                        opacity: pressed ? 0.86 : 1,
                      },
                    ]}
                  >
                    <Image
                      source={title.backdropSource || title.posterSource}
                      style={StyleSheet.absoluteFill}
                      resizeMode="cover"
                    />
                    <LinearGradient
                      colors={["rgba(0,0,0,0.22)", "transparent", "rgba(9,10,12,0.95)"]}
                      style={StyleSheet.absoluteFill}
                    />
                    <View style={s.histEpBadge}>
                      <Text style={s.histEpBadgeText}>
                        {title.episodes.length > 1
                          ? `م${rec.seasonNumber} · ح ${rec.episodeNumber}`
                          : "فيلم"}
                      </Text>
                    </View>
                    {rec.duration > 0 ? (
                      <View style={s.histRemBadge}>
                        <Text style={s.histEpBadgeText}>{formatRemaining(rec.position, rec.duration)}</Text>
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

        {/* Primary Carousels */}
        {renderPosterRail(
          "الأكثر تقييماً ومشاهدة",
          "أعمال مختارة بأعلى التقييمات العالمية",
          "#0EA5E9",
          topRatedItems,
          "all",
        )}
        {renderPosterRail(
          "الأفلام الأجنبية والآسيوية",
          "إصدارات سينمائية مترجمة بدقة 4K",
          "#F59E0B",
          moviesList,
          "movie",
        )}
        {renderPosterRail(
          "المسلسلات العالمية",
          "مواسم كاملة وحلقات متجددة",
          "#10B981",
          seriesList,
          "series",
        )}
        {renderPosterRail(
          "أفلام ومسلسلات الأنميشن",
          "عالم الرسوم المتحركة السينمائية",
          "#8B5CF6",
          animationList,
          "animation",
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
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    gap: 10,
  },
  headerSpacer: { flex: 1, minWidth: 0 },
  menuBtn: {
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  headerBrandGroup: {
    flexDirection: HEADER_ROW,
    alignItems: "center",
    gap: 10,
    flexShrink: 1,
    minWidth: 0,
  },
  searchPill: {
    borderWidth: 1,
    paddingHorizontal: 12,
    flexDirection: SEARCH_ROW,
    alignItems: "center",
    gap: 7,
    flexShrink: 1,
  },
  searchPillText: {
    flex: 1,
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  logoRow: {
    flexDirection: HEADER_ROW,
    alignItems: "center",
    gap: 7,
    flexShrink: 0,
  },
  logoAccent: { width: 3.5, borderRadius: 2 },
  logoText: {
    fontFamily: "Cairo_800ExtraBold",
    letterSpacing: 0.7,
    includeFontPadding: true,
  },
  quickPills: {
    paddingHorizontal: 14,
    paddingTop: 8,
    paddingBottom: 16,
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
