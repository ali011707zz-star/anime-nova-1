import { Ionicons } from "@expo/vector-icons";
import React, { useCallback, useEffect, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Platform,
  RefreshControl,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { useColors } from "@/hooks/useColors";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { FilmSummary } from "@/utils/filmCatalog";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

type LatestFilter = "all" | "movies" | "series";

export default function LatestReleasesScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const topPad = Platform.OS === "web" ? 8 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);

  const [menuOpen, setMenuOpen] = useState(false);
  const [filter, setFilter] = useState<LatestFilter>("all");
  const [items, setItems] = useState<FilmSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const columns = tvMode ? 5 : width >= 760 ? 4 : 3;
  const gridPadding = 28;
  const gap = 10;
  const cardWidth = Math.floor((width - gridPadding - gap * (columns - 1)) / columns);
  const cardHeight = Math.round(cardWidth * 1.44);

  const loadPage = useCallback(
    async (requestedPage: number, isRefresh = false) => {
      if (isRefresh) {
        setRefreshing(true);
      } else if (requestedPage === 1) {
        setLoading(true);
      } else {
        setLoadingMore(true);
      }
      setError(null);

      try {
        const category =
          filter === "movies" ? "movie" : filter === "series" ? "series" : "all";
        const res = await fetchFilmBrowse({
          category,
          sort: "year",
          page: requestedPage,
        });
        setItems((prev) => {
          const merged = requestedPage === 1 ? res.items : [...prev, ...res.items];
          const seen = new Set<number>();
          return merged.filter((m) => {
            if (seen.has(m.id)) return false;
            seen.add(m.id);
            return true;
          });
        });
        setPage(requestedPage);
        setHasMore(Boolean(res.hasNextPage));
      } catch {
        setError("تعذر جلب أحدث الإضافات من الخادم");
      } finally {
        setLoading(false);
        setRefreshing(false);
        setLoadingMore(false);
      }
    },
    [filter],
  );

  useEffect(() => {
    void loadPage(1, false);
  }, [loadPage]);

  const renderItem = ({ item, index }: { item: FilmSummary; index: number }) => {
    const arTitle = item.titleAr || item.titleEn;
    const enTitle = item.titleEn || item.titleAr;
    const showSub = Boolean(arTitle && enTitle && arTitle.trim() !== enTitle.trim());
    const badgeLabel =
      item.kind === "series"
        ? item.seasonsCount
          ? `${item.seasonsCount} مواسم`
          : "مسلسل"
        : "فيلم كامل";

    return (
      <Pressable
        testID={tvMode && index === 0 ? "nova-tv-preferred-focus" : `latest-item-${item.id}`}
        hasTVPreferredFocus={tvMode && index === 0}
        focusable={tvMode}
        onPress={() =>
          router.push({
            pathname: "/film/[id]",
            params: { id: String(item.id), title: item.titleAr },
          })
        }
        style={({ focused }) => [
          s.episodeCard,
          { width: cardWidth, padding: tvMode ? 3 : 0 },
          tvMode && tvFocusStyle(focused),
        ]}
      >
        <View style={[s.posterBox, { height: cardHeight }]}>
          <Image
            source={{ uri: item.poster }}
            style={s.poster}
            resizeMode="cover"
          />
          <LinearGradient
            colors={["transparent", "rgba(2,6,23,0.45)", "rgba(2,6,23,0.92)"]}
            style={s.posterGradient}
          />
          <View style={s.episodeBadge}>
            <Text style={s.episodeBadgeText}>{badgeLabel}</Text>
          </View>
          {(item.rating ?? item.imdbRating ?? 0) > 0 && (
            <View style={s.scoreBadge}>
              <Ionicons name="star" size={9} color="#fbbf24" />
              <Text style={s.scoreText}>{(item.rating ?? item.imdbRating ?? 0).toFixed(1)}</Text>
            </View>
          )}
          <Text style={s.updatedLabel} numberOfLines={1}>
            {item.quality || String(item.year)}
          </Text>
        </View>
        <View style={s.cardTitles}>
          <Text style={s.cardArabicTitle} numberOfLines={1}>
            {arTitle}
          </Text>
          <Text style={s.cardEnglishTitle} numberOfLines={1}>
            {showSub ? enTitle : item.genres?.[0] || String(item.year)}
          </Text>
        </View>
      </Pressable>
    );
  };

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <View
        style={[
          s.header,
          {
            paddingTop: topPad,
            backgroundColor: colors.surface,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <View style={s.headerBar}>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="تحديث أحدث الإضافات"
            focusable={tvMode}
            onPress={() => void loadPage(1, true)}
            style={({ focused }) => [s.iconBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="refresh" size={19} color={colors.textPrimary} />
          </Pressable>

          <View style={s.titleGroup}>
            <Text style={[s.headerTitle, { color: colors.textPrimary }]}>
              آخر الإضافات والحلقات
            </Text>
            <Ionicons name="sparkles" size={18} color={colors.homeAccent} />
          </View>

          <Pressable
            accessibilityRole="button"
            accessibilityLabel="القائمة الجانبية"
            focusable={tvMode}
            onPress={() => setMenuOpen(true)}
            style={({ focused }) => [s.iconBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="menu" size={22} color={colors.textPrimary} />
          </Pressable>
        </View>

        <View style={s.filterBar}>
          {(
            [
              { id: "all", label: "الكل" },
              { id: "movies", label: "الأفلام المضافة" },
              { id: "series", label: "المسلسلات والحلقات" },
            ] as const
          ).map((tab) => {
            const active = filter === tab.id;
            return (
              <Pressable
                key={tab.id}
                focusable={tvMode}
                onPress={() => setFilter(tab.id)}
                style={({ focused }) => [
                  s.filterChip,
                  active
                    ? { backgroundColor: colors.homeAccent }
                    : { backgroundColor: colors.card },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text
                  style={[
                    s.filterText,
                    { color: active ? "#ffffff" : colors.textSecondary },
                  ]}
                >
                  {tab.label}
                </Text>
              </Pressable>
            );
          })}
        </View>
      </View>

      {loading && items.length === 0 ? (
        <View style={s.center}>
          <ActivityIndicator size="large" color={colors.homeAccent} />
          <Text style={[s.statusText, { color: colors.textMuted }]}>
            جاري تحميل أحدث الإضافات...
          </Text>
        </View>
      ) : error && items.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="cloud-offline-outline" size={40} color={colors.textMuted} />
          <Text style={[s.statusText, { color: colors.textSecondary }]}>{error}</Text>
          <Pressable
            focusable={tvMode}
            onPress={() => void loadPage(1, true)}
            style={({ focused }) => [
              s.retryButton,
              { backgroundColor: colors.homeAccent },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={s.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          key={`latest-grid-${columns}`}
          data={items}
          numColumns={columns}
          keyExtractor={(item) => String(item.id)}
          renderItem={renderItem}
          contentContainerStyle={s.grid}
          columnWrapperStyle={columns > 1 ? s.gridRow : undefined}
          showsVerticalScrollIndicator={false}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={() => void loadPage(1, true)}
              tintColor={colors.homeAccent}
            />
          }
          onEndReached={() => {
            if (!loading && !loadingMore && hasMore) {
              void loadPage(page + 1, false);
            }
          }}
          onEndReachedThreshold={0.4}
          ListFooterComponent={
            loadingMore ? (
              <View style={{ paddingVertical: 16 }}>
                <ActivityIndicator color={colors.homeAccent} />
              </View>
            ) : null
          }
          ListEmptyComponent={
            <View style={s.empty}>
              <Ionicons name="film-outline" size={42} color={colors.textMuted} />
              <Text style={[s.statusText, { color: colors.textSecondary }]}>
                لا توجد إضافات مطابقة لهذا الفلتر حالياً.
              </Text>
            </View>
          }
        />
      )}

      <DrawerMenu visible={menuOpen} onClose={() => setMenuOpen(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    paddingHorizontal: 14,
    paddingBottom: 12,
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  headerBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    minHeight: 46,
  },
  titleGroup: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
  },
  headerTitle: {
    fontSize: 18,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  iconBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.05)",
  },
  filterBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "flex-start",
    gap: 8,
    marginTop: 10,
  },
  filterChip: {
    paddingHorizontal: 14,
    paddingVertical: 6,
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
  posterGradient: {
    position: "absolute",
    left: 0,
    right: 0,
    bottom: 0,
    height: 64,
  },
  episodeBadge: {
    position: "absolute",
    top: 8,
    right: 8,
    paddingHorizontal: 10,
    paddingVertical: 3,
    borderRadius: 999,
    backgroundColor: "#0284c7",
  },
  episodeBadgeText: {
    color: "#ffffff",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
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
  cardArabicTitle: {
    color: "#f8fafc",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    width: "100%",
  },
  cardEnglishTitle: {
    color: "#64748b",
    fontSize: 10,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    width: "100%",
    marginTop: 1,
  },
  center: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    padding: 24,
    gap: 12,
  },
  statusText: {
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    lineHeight: 22,
  },
  retryButton: { paddingHorizontal: 18, paddingVertical: 10, borderRadius: 14 },
  retryText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold" },
  empty: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 90,
    paddingHorizontal: 26,
    gap: 12,
  },
});
