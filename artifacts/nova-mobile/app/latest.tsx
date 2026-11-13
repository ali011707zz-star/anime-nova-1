import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  Image,
  Platform,
  RefreshControl,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
  I18nManager,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { useColors } from "@/hooks/useColors";
import { anilistQuery } from "@/utils/anilist";
import {
  fetchLatestEpisodes,
  normalizeLatestEpisodeItem,
  type LatestEpisodeItem,
} from "@/utils/latestEpisodes";
import { getPosterUri, getTvPosterUri } from "@/utils/media";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const CACHE_KEY = "nova-latest-episodes";
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const RATING_QUERY = `
  query LatestEpisodeRatings($ids: [Int]) {
    Page {
      media(id_in: $ids, type: ANIME) {
        id
        averageScore
      }
    }
  }
`;

type LatestFilter = "all" | "today" | "top";

function timestamp(value: unknown): number | null {
  if (typeof value === "number" && Number.isFinite(value)) {
    return value < 1_000_000_000_000 ? value * 1000 : value;
  }
  if (typeof value !== "string" || !value.trim()) return null;
  const parsed = Date.parse(value);
  return Number.isFinite(parsed) ? parsed : null;
}

function isToday(value: unknown): boolean {
  const valueMs = timestamp(value);
  if (valueMs === null) return false;
  const date = new Date(valueMs);
  const now = new Date();
  return date.getFullYear() === now.getFullYear() &&
    date.getMonth() === now.getMonth() &&
    date.getDate() === now.getDate();
}

function timeAgo(value: unknown): string {
  const valueMs = timestamp(value);
  if (valueMs === null) return "تحديث حديث";
  const minutes = Math.max(0, Math.floor((Date.now() - valueMs) / 60_000));
  if (minutes < 60) return `منذ ${Math.max(minutes, 1)} دقيقة`;
  const hours = Math.floor(minutes / 60);
  if (hours < 24) return `منذ ${hours} ساعة`;
  const days = Math.floor(hours / 24);
  return `منذ ${days} يوم`;
}

function watchRoute(item: LatestEpisodeItem): string {
  const titles = Array.from(new Set([
    ...(item.titleVariants || []),
    item.romaji,
    item.english,
    item.native,
    item.name,
  ].filter((value): value is string => typeof value === "string" && value.trim().length > 1)));
  return `/watch?anime=${encodeURIComponent(String(item.animeId || 0))}` +
    `&anilistId=${encodeURIComponent(String(item.anilistId || item.animeId || 0))}` +
    `&anslayerId=${encodeURIComponent(String(item.anslayerId || ""))}` +
    `&awAnimeId=${encodeURIComponent(String(item.awAnimeId || ""))}` +
    `&ep=${encodeURIComponent(String(item.episode))}` +
    `&totalEps=${encodeURIComponent(String(item.episode))}` +
    `&title=${encodeURIComponent(item.romaji || item.name || "")}` +
    `&english=${encodeURIComponent(item.english || "")}` +
    `&native=${encodeURIComponent(item.native || "")}` +
    `&titles=${encodeURIComponent(JSON.stringify(titles))}` +
    `&cover=${encodeURIComponent(item.cover || "")}` +
    `&titleAr=${encodeURIComponent(item.titleAr || "")}` +
    `&site=${encodeURIComponent(item.source)}` +
    `&fromLatest=1&latestSource=${encodeURIComponent(item.source)}`;
}

export default function LatestEpisodesScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const [items, setItems] = useState<LatestEpisodeItem[]>([]);
  const [filter, setFilter] = useState<LatestFilter>("all");
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState("");
  const [ratingError, setRatingError] = useState(false);
  const [showDrawer, setShowDrawer] = useState(false);
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  const load = useCallback(async (force = false) => {
    if (force) setRefreshing(true);
    else setLoading(true);
    setError("");
    try {
      if (!force) {
        const cached = await AsyncStorage.getItem(CACHE_KEY);
        if (cached) {
          const parsed = JSON.parse(cached);
          if (Array.isArray(parsed)) {
            setItems(
              parsed
                .map((item) => normalizeLatestEpisodeItem(item))
                .filter((item) => item.source === "anslayer"),
            );
          }
        }
      }
      const fresh = await fetchLatestEpisodes();
      setItems(fresh);
      await AsyncStorage.setItem(CACHE_KEY, JSON.stringify(fresh));
      setRatingError(false);

      const ids = Array.from(new Set(fresh.map((item) => item.animeId).filter((id) => id > 0)));
      if (ids.length) {
        try {
          const ratingData = await anilistQuery<{
            Page?: { media?: Array<{ id: number; averageScore: number | null }> };
          }>(RATING_QUERY, { ids }, { timeoutMs: 12_000 });
          const ratings = new Map(
            (ratingData?.Page?.media || []).map((media) => [media.id, media.averageScore]),
          );
          setItems((current) => current.map((item) => ({
            ...item,
            averageScore: ratings.get(item.animeId) ?? item.averageScore ?? null,
          })));
        } catch {
          setRatingError(true);
        }
      }
    } catch (loadError) {
      setError(loadError instanceof Error ? loadError.message : "تعذّر تحميل أحدث الحلقات");
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, []);

  useEffect(() => {
    void load();
  }, [load]);

  const visibleItems = useMemo(() => {
    if (filter === "today") return items.filter((item) => isToday(item.updatedAt));
    if (filter === "top") {
      return [...items]
        .filter((item) => item.averageScore != null)
        .sort((a, b) => Number(b.averageScore) - Number(a.averageScore));
    }
    return items;
  }, [filter, items]);

  const cardWidth = Math.max(96, (width - 32 - 20) / 3);
  const filters: Array<{ id: LatestFilter; label: string }> = [
    { id: "all", label: "الكل" },
    { id: "today", label: "حلقات اليوم" },
    { id: "top", label: "الأعلى تقييماً" },
  ];

  return (
    <View style={[styles.container, { backgroundColor: "#07090e" }]}>
      <View style={[styles.header, { paddingTop: topPad + 8 }]}>
        <View style={styles.headerRow}>
          <View style={styles.heading}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="رجوع"
              onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="chevron-forward" size={20} color="#f8fafc" />
            </Pressable>
            <View style={styles.headingText}>
              <View style={styles.titleRow}>
                <Text style={styles.title}>أحدث الحلقات</Text>
                <View style={styles.liveBadge}>
                  <Text style={styles.liveBadgeText}>تحديث مباشر</Text>
                </View>
              </View>
              <Text style={styles.subtitle} numberOfLines={1}>
                جميع الحلقات الجديدة المضافة مترجمة بجودة فائقة
              </Text>
            </View>
          </View>
          <View style={styles.headerActions}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="البحث"
              onPress={() => router.push("/(tabs)/search" as any)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="search" size={19} color="#f8fafc" />
            </Pressable>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="فتح القائمة"
              onPress={() => setShowDrawer(true)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="menu" size={21} color="#f8fafc" />
            </Pressable>
          </View>
        </View>
      </View>

      <View style={styles.filters}>
        {filters.map((option) => {
          const active = filter === option.id;
          return (
            <Pressable
              key={option.id}
              accessibilityRole="button"
              accessibilityState={{ selected: active }}
              onPress={() => setFilter(option.id)}
              focusable={tvMode}
              style={({ focused }) => [
                styles.filterButton,
                {
                  backgroundColor: active ? "#0284c7" : "#0f172a",
                  borderColor: active ? "#0284c7" : "rgba(255,255,255,0.12)",
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[styles.filterText, { color: active ? "#ffffff" : "#cbd5e1" }]}>
                {option.label}
              </Text>
            </Pressable>
          );
        })}
      </View>

      {loading && items.length === 0 ? (
        <View style={styles.center}>
          <ActivityIndicator color="#0284c7" size="large" />
          <Text style={[styles.statusText, { color: colors.mutedForeground }]}>جارٍ تحميل الحلقات…</Text>
        </View>
      ) : error && items.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={36} color={colors.mutedForeground} />
          <Text style={[styles.statusText, { color: colors.mutedForeground }]}>{error}</Text>
          <Pressable onPress={() => void load(true)} style={[styles.retryButton, { backgroundColor: "#0284c7" }]}>
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          key={tvMode ? "latest-tv" : "latest-phone"}
          removeClippedSubviews={false}
          data={visibleItems}
          numColumns={3}
          keyExtractor={(item, index) => `${item.source}-${item.animeId || item.anslayerId || item.awAnimeId}-${item.episode}-${index}`}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={styles.gridRow}
          showsVerticalScrollIndicator={false}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={() => void load(true)}
              tintColor="#0284c7"
              colors={["#0284c7"]}
            />
          }
          renderItem={({ item }) => (
            <Pressable
              accessibilityRole="button"
              accessibilityLabel={`مشاهدة ${item.name} الحلقة ${item.episode}`}
              onPress={() => router.push(watchRoute(item) as any)}
              focusable={tvMode}
              style={({ focused, pressed }) => [
                styles.episodeCard,
                { width: cardWidth, opacity: pressed ? 0.8 : 1 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <View style={[styles.posterBox, { height: Math.round(cardWidth * 1.48) }]}>
                {item.cover ? (
                  <Image
                    source={{
                      uri: tvMode
                        ? getTvPosterUri(item, item.animeId ? `https://img.anili.st/media/${item.animeId}` : "")
                        : getPosterUri(item, item.animeId ? `https://img.anili.st/media/${item.animeId}` : ""),
                    }}
                    style={styles.poster}
                    resizeMode="cover"
                  />
                ) : (
                  <View style={[styles.poster, { backgroundColor: "#0f172a", alignItems: "center", justifyContent: "center" }]}>
                    <Ionicons name="tv-outline" size={28} color={colors.mutedForeground} />
                  </View>
                )}
                <LinearGradient
                  colors={["transparent", "rgba(0,0,0,0.85)"]}
                  style={styles.posterGradient}
                />
                <View style={styles.episodeBadge}>
                  <Text style={styles.episodeBadgeText}>حلقة {item.episode}</Text>
                </View>
                {item.averageScore != null && filter === "top" && (
                  <View style={styles.scoreBadge}>
                    <Ionicons name="star" size={10} color="#fde047" />
                    <Text style={styles.scoreText}>{(item.averageScore / 10).toFixed(1)}</Text>
                  </View>
                )}
                <Text style={styles.updatedLabel} numberOfLines={1}>
                  {timeAgo(item.updatedAt)}
                </Text>
              </View>
              <View style={styles.cardTitles}>
                <Text style={styles.cardArabicTitle} numberOfLines={1}>
                  {item.titleAr || item.name}
                </Text>
                <Text style={styles.cardEnglishTitle} numberOfLines={1}>
                  {item.english || item.romaji || item.name}
                </Text>
              </View>
            </Pressable>
          )}
          ListEmptyComponent={
            <View style={styles.empty}>
              <Ionicons name={filter === "today" ? "calendar-outline" : "star-outline"} size={38} color={colors.mutedForeground} />
              <Text style={[styles.statusText, { color: colors.mutedForeground }]}>
                {filter === "today"
                  ? "لا توجد حلقات بتاريخ اليوم من المصادر المتاحة."
                  : filter === "top" && ratingError
                    ? "تعذّر تحميل التقييمات الآن. اسحب للتحديث."
                    : "لا توجد حلقات ضمن هذا التصنيف."}
              </Text>
            </View>
          }
        />
      )}

      <DrawerMenu visible={showDrawer} onClose={() => setShowDrawer(false)} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 14, paddingBottom: 10 },
  headerRow: { flexDirection: ROW_RTL, alignItems: "flex-start", justifyContent: "space-between", gap: 8 },
  headerActions: { flexDirection: "row", direction: "ltr", gap: 8, paddingTop: 2 },
  heading: { flex: 1, flexDirection: ROW_RTL, alignItems: "flex-start", gap: 10 },
  headingText: { flex: 1, alignItems: I18nManager.isRTL ? "flex-start" : "flex-end" },
  titleRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, flexWrap: "wrap" },
  title: { color: "#f8fafc", fontSize: 21, fontFamily: "Cairo_800ExtraBold", textAlign: "right", lineHeight: 28 },
  liveBadge: {
    paddingHorizontal: 10,
    paddingVertical: 2,
    borderRadius: 999,
    backgroundColor: "rgba(2, 132, 199, 0.25)",
    borderWidth: 1,
    borderColor: "#0284c7",
  },
  liveBadgeText: { color: "#38bdf8", fontSize: 10, fontFamily: "Cairo_700Bold" },
  subtitle: { color: "#64748b", fontSize: 11, fontFamily: "Cairo_600SemiBold", marginTop: 2, textAlign: "right" },
  iconButton: {
    width: 40,
    height: 40,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.1)",
    backgroundColor: "#0f172a",
    alignItems: "center",
    justifyContent: "center",
  },
  filters: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.07)",
  },
  filterButton: {
    paddingHorizontal: 16,
    paddingVertical: 6,
    borderWidth: 1,
    borderRadius: 999,
    minHeight: 36,
    alignItems: "center",
    justifyContent: "center",
  },
  filterText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  grid: { paddingHorizontal: 14, paddingTop: 14, paddingBottom: 40 },
  gridRow: { justifyContent: "space-between", gap: 10, marginBottom: 16 },
  episodeCard: { flexDirection: "column" },
  posterBox: {
    width: "100%",
    borderRadius: 16,
    overflow: "hidden",
    backgroundColor: "#0f172a",
    position: "relative",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.08)",
  },
  poster: { width: "100%", height: "100%" },
  posterGradient: { position: "absolute", left: 0, right: 0, bottom: 0, height: 64 },
  episodeBadge: {
    position: "absolute",
    top: 8,
    right: 8,
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 999,
    backgroundColor: "#0284c7",
  },
  episodeBadgeText: { color: "#ffffff", fontSize: 10, fontFamily: "Cairo_700Bold" },
  scoreBadge: {
    position: "absolute",
    top: 8,
    left: 8,
    flexDirection: "row",
    alignItems: "center",
    gap: 3,
    paddingHorizontal: 6,
    paddingVertical: 3,
    borderRadius: 10,
    backgroundColor: "rgba(0,0,0,0.68)",
  },
  scoreText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  updatedLabel: {
    position: "absolute",
    right: 8,
    bottom: 7,
    color: "#e2e8f0",
    fontSize: 9.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    textShadowColor: "rgba(0,0,0,0.9)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 3,
  },
  cardTitles: { paddingTop: 7, paddingHorizontal: 2, alignItems: "flex-end" },
  cardArabicTitle: { color: "#f8fafc", fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "right", width: "100%" },
  cardEnglishTitle: { color: "#64748b", fontSize: 10, fontFamily: "Cairo_600SemiBold", textAlign: "right", width: "100%", marginTop: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", padding: 24, gap: 12 },
  statusText: { fontSize: 13, fontFamily: "Cairo_600SemiBold", textAlign: "center", lineHeight: 22 },
  retryButton: { paddingHorizontal: 18, paddingVertical: 10, borderRadius: 14 },
  retryText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold" },
  empty: { alignItems: "center", justifyContent: "center", paddingVertical: 90, paddingHorizontal: 26, gap: 12 },
});
