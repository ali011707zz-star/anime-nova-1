import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  Image,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useColors } from "@/hooks/useColors";
import { SafePosterImage } from "@/components/SafePosterImage";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { FilmSummary } from "@/utils/filmCatalog";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

type Props = {
  mediaType?: "ANIME" | "MANGA" | "FILM";
  variant?: "standard" | "stats" | "upcoming" | "manga";
  status?: string;
  format?: string;
  category?: "all" | "movie" | "series" | "animation";
  season?: string;
  seasonYear?: number;
  countryOfOrigin?: string;
  genre?: string;
  sort?: string;
  emptyText?: string;
  search?: string;
};

const _catalogMemoryCache = new Map<string, { items: FilmSummary[]; hasMore: boolean }>();

function resolveCategory(
  category?: "all" | "movie" | "series" | "animation",
  format?: string,
): "all" | "movie" | "series" | "animation" {
  if (category) return category;
  if (format === "MOVIE") return "movie";
  if (format === "TV") return "series";
  if (format === "ANIMATION" || format === "OVA" || format === "ONA") return "animation";
  return "all";
}

function resolveSort(sort?: string): "popular" | "rating" | "year" | "title" {
  if (sort === "SCORE_DESC" || sort === "rating") return "rating";
  if (sort === "START_DATE" || sort === "year") return "year";
  if (sort === "title") return "title";
  return "popular";
}

export function MediaCatalogGrid({
  variant = "standard",
  status,
  format,
  category,
  season,
  seasonYear,
  genre,
  sort = "POPULARITY_DESC",
  emptyText = "لا توجد أعمال في هذا القسم حالياً",
  search,
}: Props) {
  const colors = useColors();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const columns = width >= 1200 ? 6 : width >= 900 ? 5 : width >= 560 ? 4 : 3;
  const gridWidth = Math.max(0, width - 32);
  const cardGap = 12;
  const cardWidth = Math.floor((gridWidth - cardGap * (columns - 1)) / columns);
  const posterHeight = Math.round(cardWidth * 1.48);

  const resolvedCategory = resolveCategory(category, format);
  const resolvedSort = resolveSort(sort);
  const cacheKey = `${variant}_${resolvedCategory}_${status || ""}_${season || ""}_${seasonYear || ""}_${genre || ""}_${search || ""}_${resolvedSort}`;

  const [items, setItems] = useState<FilmSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const requestSequence = useRef(0);

  const loadPage = useCallback(
    async (requestedPage: number, append: boolean) => {
      const sequence = ++requestSequence.current;
      if (append) {
        setLoadingMore(true);
      } else {
        const memCached = _catalogMemoryCache.get(cacheKey);
        if (memCached && memCached.items.length > 0) {
          setItems(memCached.items);
          setHasMore(memCached.hasMore);
          setLoading(false);
          setError(false);
        } else {
          setLoading(true);
          setError(false);
        }
      }

      try {
        const res = await fetchFilmBrowse({
          category: resolvedCategory,
          genre,
          year: seasonYear ? String(seasonYear) : undefined,
          sort: resolvedSort,
          query: search,
          page: requestedPage,
        });
        if (sequence !== requestSequence.current) return;
        let fetched = res.items || [];
        if (status === "RELEASING") {
          fetched = fetched.filter((i) => i.kind === "series");
        }
        setItems((prev) => {
          const merged = append ? [...prev, ...fetched] : fetched;
          const seen = new Set<number>();
          const deduped = merged.filter((m) => {
            if (seen.has(m.id)) return false;
            seen.add(m.id);
            return true;
          });
          _catalogMemoryCache.set(cacheKey, {
            items: deduped,
            hasMore: Boolean(res.hasNextPage),
          });
          return deduped;
        });
        setPage(requestedPage);
        setHasMore(Boolean(res.hasNextPage));
        setError(false);
      } catch {
        if (sequence === requestSequence.current) {
          setError(true);
        }
      } finally {
        if (sequence === requestSequence.current) {
          setLoading(false);
          setLoadingMore(false);
        }
      }
    },
    [cacheKey, resolvedCategory, genre, seasonYear, resolvedSort, search, status],
  );

  useEffect(() => {
    void loadPage(1, false);
  }, [loadPage]);

  const openMedia = (item: FilmSummary) => {
    router.push({
      pathname: "/film/[id]",
      params: { id: String(item.id), title: item.titleAr },
    });
  };

  const renderItem = ({ item, index }: { item: FilmSummary; index: number }) => {
    const title = item.titleAr || item.titleEn;
    const hasArabicTitle = /[\u0600-\u06FF]/.test(title);
    const hasDualEnglish = Boolean(
      item.titleAr && item.titleEn && item.titleAr.trim() !== item.titleEn.trim(),
    );
    const cardSubtitle = hasDualEnglish
      ? item.titleEn
      : item.kind === "series"
        ? "مسلسل"
        : "فيلم";

    return (
      <Pressable
        testID={tvMode && index === 0 ? "nova-tv-preferred-focus" : `catalog-item-${item.id}`}
        hasTVPreferredFocus={tvMode && index === 0}
        onPress={() => openMedia(item)}
        focusable={tvMode}
        style={({ focused }) => [
          styles.card,
          { width: cardWidth, borderRadius: 14, padding: tvMode ? 3 : 0 },
          tvMode && tvFocusStyle(focused),
        ]}
      >
        <View
          style={[
            styles.poster,
            {
              height: posterHeight,
              backgroundColor: colors.surface,
              borderColor: colors.border,
            },
          ]}
        >
          <SafePosterImage
            uri={item.poster}
            style={StyleSheet.absoluteFill}
            resizeMode="cover"
            iconSize={28}
          />
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.82)"]}
            style={styles.posterGradient}
          >
            <View style={styles.posterMetaRow}>
              <Text style={styles.posterMetaText}>{item.year || "—"}</Text>
              {typeof item.rating === "number" && item.rating > 0 && (
                <Text style={styles.posterScore}>★ {item.rating.toFixed(1)}</Text>
              )}
            </View>
          </LinearGradient>
          <View
            style={[
              styles.statusBadge,
              {
                backgroundColor:
                  item.kind === "series" ? "#10b981" : colors.homeAccent || "#0ea5e9",
              },
            ]}
          >
            <Text style={styles.statusBadgeText}>
              {item.kind === "series" ? "مسلسل" : "فيلم"}
            </Text>
          </View>
        </View>
        <Text
          style={[
            styles.cardTitle,
            {
              color: colors.textPrimary,
              textAlign: hasArabicTitle ? "right" : "left",
              writingDirection: hasArabicTitle ? "rtl" : "ltr",
            },
          ]}
          numberOfLines={1}
        >
          {title || "عنوان غير متوفر"}
        </Text>
        <Text
          style={[
            styles.cardSubtitle,
            {
              color: colors.textMuted,
              textAlign: "right",
              writingDirection: hasDualEnglish ? "ltr" : "rtl",
            },
          ]}
          numberOfLines={1}
        >
          {cardSubtitle}
        </Text>
        {item.genres && item.genres.length > 0 && (
          <Text
            style={[styles.cardGenres, { color: colors.textMuted }]}
            numberOfLines={1}
          >
            {item.genres.slice(0, 2).join(" · ")}
          </Text>
        )}
      </Pressable>
    );
  };

  const renderEmpty = () => {
    if (loading) {
      return (
        <View style={styles.message}>
          <ActivityIndicator color={colors.homeAccent} size="large" />
        </View>
      );
    }
    if (error) {
      return (
        <View style={styles.message}>
          <Ionicons name="cloud-offline-outline" size={28} color={colors.textMuted} />
          <Text style={[styles.messageText, { color: colors.textSecondary }]}>
            تعذر تحميل العناوين
          </Text>
          <Pressable
            onPress={() => void loadPage(1, false)}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode}
            style={({ focused }) => [
              styles.retryButton,
              { borderColor: colors.border },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={[styles.retryText, { color: colors.textPrimary }]}>
              إعادة المحاولة
            </Text>
          </Pressable>
        </View>
      );
    }
    return (
      <View style={styles.message}>
        <Ionicons name="film-outline" size={28} color={colors.textMuted} />
        <Text style={[styles.messageText, { color: colors.textSecondary }]}>
          {emptyText}
        </Text>
      </View>
    );
  };

  return (
    <FlatList
      key={`catalog-${columns}`}
      data={items}
      numColumns={columns}
      keyExtractor={(item) => String(item.id)}
      renderItem={renderItem}
      columnWrapperStyle={columns > 1 ? styles.row : undefined}
      contentContainerStyle={[styles.grid, !items.length && styles.emptyGrid]}
      showsVerticalScrollIndicator={false}
      onEndReached={() => {
        if (!loading && !loadingMore && hasMore && !error) {
          void loadPage(page + 1, true);
        }
      }}
      onEndReachedThreshold={0.45}
      ListEmptyComponent={renderEmpty}
      ListFooterComponent={
        loadingMore ? (
          <ActivityIndicator style={styles.footerLoader} color={colors.homeAccent} />
        ) : null
      }
      initialNumToRender={12}
      maxToRenderPerBatch={12}
      windowSize={5}
      removeClippedSubviews={false}
    />
  );
}

const styles = StyleSheet.create({
  grid: { paddingHorizontal: 16, paddingTop: 12, paddingBottom: 110 },
  emptyGrid: { flexGrow: 1, justifyContent: "center" },
  row: { justifyContent: "space-between", marginBottom: 18 },
  card: { marginBottom: 18 },
  poster: {
    width: "100%",
    overflow: "hidden",
    borderRadius: 13,
    borderWidth: 1,
    position: "relative",
  },
  posterPlaceholder: {
    ...StyleSheet.absoluteFillObject,
    alignItems: "center",
    justifyContent: "center",
  },
  posterGradient: {
    position: "absolute",
    left: 0,
    right: 0,
    bottom: 0,
    paddingHorizontal: 9,
    paddingBottom: 9,
    paddingTop: 38,
  },
  posterMetaRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  posterMetaText: {
    color: "#fff",
    fontSize: 11,
    fontWeight: "800",
    textShadowColor: "rgba(0,0,0,0.8)",
    textShadowRadius: 4,
  },
  posterScore: { color: "#FACC15", fontSize: 11, fontWeight: "800" },
  statusBadge: {
    position: "absolute",
    top: 8,
    right: 8,
    borderRadius: 12,
    paddingHorizontal: 8,
    paddingVertical: 3,
  },
  statusBadgeText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  cardTitle: {
    fontSize: 13,
    lineHeight: 19,
    marginTop: 6,
    fontFamily: "Cairo_700Bold",
    textAlign: "left",
  },
  cardSubtitle: {
    fontSize: 11,
    lineHeight: 16,
    marginTop: 2,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  cardGenres: {
    fontSize: 10,
    lineHeight: 15,
    marginTop: 1,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  message: {
    minHeight: 220,
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
    padding: 20,
  },
  messageText: {
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
  },
  retryButton: {
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 14,
    paddingVertical: 8,
    marginTop: 4,
  },
  retryText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  footerLoader: { paddingVertical: 14 },
});
