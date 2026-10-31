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
import { fetchLatestEpisodes, type LatestEpisodeItem } from "@/utils/latestEpisodes";
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
          if (Array.isArray(parsed)) setItems(parsed);
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
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <View style={[styles.header, { paddingTop: topPad + 10 }]}>
        <View style={styles.headerRow}>
          <View style={styles.heading}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="رجوع"
              onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, { backgroundColor: colors.card, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="chevron-forward" size={20} color={colors.text} />
            </Pressable>
            <View style={styles.headingText}>
              <Text style={[styles.title, { color: colors.text }]}>أحدث الحلقات</Text>
              <Text style={[styles.subtitle, { color: colors.mutedForeground }]}>
                جميع الحلقات الجديدة المترجمة بجودة فائقة
              </Text>
            </View>
          </View>
          <View style={styles.headerActions}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="البحث"
              onPress={() => router.push("/(tabs)/search" as any)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, { backgroundColor: colors.card, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="search" size={19} color={colors.text} />
            </Pressable>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="فتح القائمة"
              onPress={() => setShowDrawer(true)}
              focusable={tvMode}
              style={({ focused }) => [styles.iconButton, { backgroundColor: colors.card, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}
            >
              <Ionicons name="menu" size={21} color={colors.text} />
            </Pressable>
          </View>
        </View>
      </View>

      <View style={[styles.filters, { borderBottomColor: colors.border }]}>
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
                  backgroundColor: active ? colors.primary : colors.card,
                  borderColor: active ? colors.primary : colors.border,
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[styles.filterText, { color: active ? "#fff" : colors.text }]}>
                {option.label}
              </Text>
            </Pressable>
          );
        })}
      </View>

      {loading && items.length === 0 ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
          <Text style={[styles.statusText, { color: colors.mutedForeground }]}>جارٍ تحميل الحلقات…</Text>
        </View>
      ) : error && items.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={36} color={colors.mutedForeground} />
          <Text style={[styles.statusText, { color: colors.mutedForeground }]}>{error}</Text>
          <Pressable onPress={() => void load(true)} style={[styles.retryButton, { backgroundColor: colors.primary }]}>
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          key={tvMode ? "latest-tv" : "latest-phone"}
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
              tintColor={colors.primary}
              colors={[colors.primary]}
            />
          }
          renderItem={({ item }) => (
            <Pressable
              accessibilityRole="button"
              accessibilityLabel={`مشاهدة ${item.name} الحلقة ${item.episode}`}
              onPress={() => router.push(watchRoute(item) as any)}
              focusable={tvMode}
              style={({ focused }) => [
                styles.episodeCard,
                {
                  width: cardWidth,
                  backgroundColor: colors.card,
                  borderColor: colors.border,
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              {item.cover ? (
                <Image
                  source={{
                    uri: tvMode
                      ? getTvPosterUri(item, item.animeId ? `https://img.anili.st/media/${item.animeId}` : "")
                      : getPosterUri(item, item.animeId ? `https://img.anili.st/media/${item.animeId}` : ""),
                  }}
                  style={[styles.poster, { height: cardWidth * 1.43 }]}
                  resizeMode="cover"
                />
              ) : (
                <View style={[styles.poster, { height: cardWidth * 1.43, backgroundColor: colors.surfaceElevated, alignItems: "center", justifyContent: "center" }]}>
                  <Ionicons name="tv-outline" size={28} color={colors.mutedForeground} />
                </View>
              )}
              <LinearGradient
                colors={["transparent", "rgba(0,0,0,0.9)"]}
                style={[styles.posterGradient, { height: cardWidth * 1.43 }]}
              />
              <View style={styles.episodeBadge}>
                <Text style={styles.episodeBadgeText}>حلقة {item.episode}</Text>
              </View>
              {item.averageScore != null && (
                <View style={styles.scoreBadge}>
                  <Ionicons name="star" size={10} color="#fde047" />
                  <Text style={styles.scoreText}>{(item.averageScore / 10).toFixed(1)}</Text>
                </View>
              )}
              <Text style={styles.updatedLabel}>{timeAgo(item.updatedAt)}</Text>
              <View style={styles.cardTitles}>
                <Text style={styles.cardArabicTitle} numberOfLines={1}>
                  {item.titleAr || item.name}
                </Text>
                {!!item.english && (
                  <Text style={styles.cardEnglishTitle} numberOfLines={1}>{item.english}</Text>
                )}
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
          ListHeaderComponent={
            <View style={styles.listHeading}>
              <Text style={[styles.listCount, { color: colors.mutedForeground }]}>
                نتائج الحلقات ({visibleItems.length})
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
  header: { paddingHorizontal: 16, paddingBottom: 14 },
  headerRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
  headerActions: { flexDirection: ROW_RTL, gap: 8 },
  heading: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
  headingText: { flex: 1, alignItems: "flex-end" },
  title: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  subtitle: { fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
  iconButton: { width: 42, height: 42, borderRadius: 13, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  filters: { flexDirection: "row", direction: "rtl", alignItems: "center", gap: 8, paddingHorizontal: 16, paddingBottom: 12, borderBottomWidth: 1 },
  filterButton: { paddingHorizontal: 14, paddingVertical: 8, borderWidth: 1, borderRadius: 22, minHeight: 38, alignItems: "center", justifyContent: "center" },
  filterText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  grid: { paddingHorizontal: 16, paddingBottom: 40 },
  gridRow: { justifyContent: "space-between", gap: 10, marginBottom: 14 },
  episodeCard: { borderRadius: 16, overflow: "hidden", borderWidth: 1, position: "relative" },
  poster: { width: "100%" },
  posterGradient: { position: "absolute", top: 0, left: 0, right: 0 },
  episodeBadge: { position: "absolute", top: 9, right: 8, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 12, backgroundColor: "#0997d6" },
  episodeBadgeText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  scoreBadge: { position: "absolute", top: 9, left: 8, flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 6, paddingVertical: 3, borderRadius: 10, backgroundColor: "rgba(0,0,0,0.68)" },
  scoreText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  updatedLabel: { position: "absolute", right: 8, bottom: 40, color: "#fff", fontSize: 8, fontFamily: "Cairo_700Bold", textShadowColor: "#000", textShadowRadius: 4 },
  cardTitles: { paddingHorizontal: 5, paddingVertical: 6, minHeight: 40, alignItems: "flex-end" },
  cardArabicTitle: { color: "#f8fafc", fontSize: 10, fontFamily: "Cairo_700Bold", textAlign: "right", width: "100%" },
  cardEnglishTitle: { color: "#94a3b8", fontSize: 8, fontFamily: "Cairo_400Regular", textAlign: "right", width: "100%" },
  listHeading: { paddingVertical: 12, alignItems: "flex-end" },
  listCount: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", padding: 24, gap: 12 },
  statusText: { fontSize: 13, fontFamily: "Cairo_600SemiBold", textAlign: "center", lineHeight: 22 },
  retryButton: { paddingHorizontal: 18, paddingVertical: 10, borderRadius: 14 },
  retryText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold" },
  empty: { alignItems: "center", justifyContent: "center", paddingVertical: 90, paddingHorizontal: 26, gap: 12 },
});
