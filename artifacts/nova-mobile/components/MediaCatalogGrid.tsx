import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
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
import { useRouter } from "expo-router";
import { anilistQuery } from "@/utils/anilist";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

export type CatalogMedia = {
  id: number;
  title: {
    romaji: string;
    english?: string | null;
    native?: string | null;
  };
  title_ar?: string;
  coverImage?: { large?: string; extraLarge?: string };
  averageScore?: number | null;
  popularity?: number | null;
  episodes?: number | null;
  chapters?: number | null;
  volumes?: number | null;
  status?: string;
  format?: string;
  startDate?: { year?: number | null; month?: number | null; day?: number | null } | null;
  countryOfOrigin?: string;
  genres?: string[];
};

type CatalogVariant = "standard" | "upcoming" | "stats" | "manga";

type Props = {
  mediaType: "ANIME" | "MANGA";
  variant?: CatalogVariant;
  status?: string;
  format?: string;
  season?: string;
  seasonYear?: number;
  countryOfOrigin?: string;
  sort?: string;
  emptyText?: string;
};

const MEDIA_CATALOG_QUERY = `
query NovaMediaCatalog(
  $page: Int!
  $type: MediaType!
  $status: MediaStatus
  $format: MediaFormat
  $season: MediaSeason
  $seasonYear: Int
  $countryOfOrigin: CountryCode
  $sort: [MediaSort!]
) {
  Page(page: $page, perPage: 30) {
    pageInfo { hasNextPage }
    media(
      type: $type
      isAdult: false
      genre_not_in: ["Hentai"]
      status: $status
      format: $format
      season: $season
      seasonYear: $seasonYear
      countryOfOrigin: $countryOfOrigin
      sort: $sort
    ) {
      id
      title { romaji english native }
      coverImage { large extraLarge }
      averageScore popularity episodes chapters volumes
      status format startDate { year month day } countryOfOrigin genres
    }
  }
}`;

const FORMAT_LABELS: Record<string, string> = {
  TV: "مسلسل",
  MOVIE: "فيلم",
  OVA: "OVA",
  ONA: "ONA",
  SPECIAL: "خاص",
  MUSIC: "موسيقى",
  MANGA: "مانجا",
  NOVEL: "رواية",
  ONE_SHOT: "فصل مستقل",
};

function statusLabel(status?: string) {
  if (status === "RELEASING") return "مستمرة";
  if (status === "FINISHED") return "مكتملة";
  if (status === "NOT_YET_RELEASED") return "قريباً";
  if (status === "HIATUS") return "متوقفة";
  if (status === "CANCELLED") return "ملغاة";
  return "مانجا";
}

function formatLabel(format?: string) {
  return format ? FORMAT_LABELS[format] || format : "أنمي";
}

function mangaOriginLabel(country?: string) {
  if (country === "KR") return "مانهوا ملونة";
  if (country === "CN" || country === "TW") return "مانهوا صينية";
  return "مانجا يابانية";
}

export function MediaCatalogGrid({
  mediaType,
  variant = "standard",
  status,
  format,
  season,
  seasonYear,
  countryOfOrigin,
  sort = "POPULARITY_DESC",
  emptyText = "لا توجد عناوين في هذا القسم حالياً",
}: Props) {
  const colors = useColors();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const columns = tvMode ? 5 : 3;
  const gridWidth = Math.max(0, width - 32);
  const cardGap = 12;
  const cardWidth = Math.floor((gridWidth - cardGap * (columns - 1)) / columns);
  const posterHeight = Math.round(cardWidth * 1.48);

  const [items, setItems] = useState<CatalogMedia[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [focusedItemId, setFocusedItemId] = useState<number | null>(null);
  const requestSequence = useRef(0);
  const controllerRef = useRef<AbortController | null>(null);

  const loadPage = useCallback(async (requestedPage: number, append: boolean) => {
    controllerRef.current?.abort();
    const controller = new AbortController();
    controllerRef.current = controller;
    const sequence = ++requestSequence.current;
    if (append) setLoadingMore(true);
    else {
      setLoading(true);
      setError(false);
    }

    try {
      const data = await anilistQuery<{
        Page?: { pageInfo?: { hasNextPage?: boolean }; media?: CatalogMedia[] };
      }>(
        MEDIA_CATALOG_QUERY,
        {
          page: requestedPage,
          type: mediaType,
          status: status || null,
          format: format || null,
          season: season || null,
          seasonYear: seasonYear ?? null,
          countryOfOrigin: countryOfOrigin || null,
          sort: [sort],
        },
        { signal: controller.signal, timeoutMs: 25_000 },
      );
      if (sequence !== requestSequence.current || controller.signal.aborted) return;

      const nextItems = data?.Page?.media || [];
      setItems((previous) => {
        if (!append) return nextItems;
        const existingIds = new Set(previous.map((item) => item.id));
        return [...previous, ...nextItems.filter((item) => !existingIds.has(item.id))];
      });
      setPage(requestedPage);
      setHasMore(Boolean(data?.Page?.pageInfo?.hasNextPage));
      setError(false);
    } catch (requestError: any) {
      if (requestError?.name !== "AbortError" && sequence === requestSequence.current) {
        setError(true);
      }
    } finally {
      if (sequence === requestSequence.current) {
        setLoading(false);
        setLoadingMore(false);
      }
    }
  }, [countryOfOrigin, format, mediaType, season, seasonYear, sort, status]);

  useEffect(() => {
    setItems([]);
    setPage(1);
    setHasMore(true);
    setError(false);
    void loadPage(1, false);
    return () => controllerRef.current?.abort();
  }, [loadPage]);

  const openMedia = (item: CatalogMedia) => {
    router.push((mediaType === "MANGA" ? `/manga/${item.id}` : `/anime/${item.id}`) as any);
  };

  const renderItem = ({ item }: { item: CatalogMedia }) => {
    const title = item.title_ar || item.title?.english || item.title?.romaji || item.title?.native || "";
    const hasArabicTitle = /[\u0600-\u06FF]/.test(title);
    const year = item.startDate?.year || null;
    const cover = item.coverImage?.extraLarge || item.coverImage?.large;
    const cardSubtitle = variant === "manga"
      ? mangaOriginLabel(item.countryOfOrigin)
      : formatLabel(item.format);

    return (
      <Pressable
        testID={`catalog-item-${item.id}`}
        onPress={() => openMedia(item)}
        onFocus={() => setFocusedItemId(item.id)}
        onBlur={() => setFocusedItemId((current) => current === item.id ? null : current)}
        focusable={tvMode}
        style={[
          styles.card,
          { width: cardWidth },
          tvMode && tvFocusStyle(focusedItemId === item.id),
        ]}
      >
        <View style={[styles.poster, { height: posterHeight, backgroundColor: colors.surface, borderColor: colors.border }]}>
          {cover ? (
            <Image source={{ uri: cover }} style={StyleSheet.absoluteFill} resizeMode="cover" />
          ) : (
            <View style={styles.posterPlaceholder}>
              <Ionicons name={mediaType === "MANGA" ? "book-outline" : "film-outline"} size={28} color={colors.textMuted} />
            </View>
          )}
          <LinearGradient
            colors={["transparent", "rgba(0,0,0,0.78)"]}
            style={styles.posterGradient}
          >
            {variant === "manga" ? (
              <View style={styles.posterMetaRow}>
                <Text style={styles.posterMetaText}>
                  {typeof item.chapters === "number" ? `${item.chapters} فصل` : "عدد الفصول غير معروف"}
                </Text>
              </View>
            ) : variant === "stats" ? (
              <View style={styles.posterMetaRow}>
                <Text style={styles.posterMetaText}>{year || "—"}</Text>
                {typeof item.averageScore === "number" && item.averageScore > 0 && (
                  <Text style={styles.posterScore}>★ {(item.averageScore / 10).toFixed(1)}</Text>
                )}
              </View>
            ) : variant === "upcoming" ? (
              <Text style={[styles.posterMetaText, styles.posterYear]}>{year || "قريباً"}</Text>
            ) : null}
          </LinearGradient>
          {variant === "manga" && (
            <View style={[styles.statusBadge, { backgroundColor: item.status === "RELEASING" ? colors.success : colors.homeAccent }]}>
              <Text style={styles.statusBadgeText}>{statusLabel(item.status)}</Text>
            </View>
          )}
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
        <Text style={[styles.cardSubtitle, { color: colors.textMuted }]} numberOfLines={1}>
          {cardSubtitle}
        </Text>
      </Pressable>
    );
  };

  const renderEmpty = () => {
    if (loading) {
      return <View style={styles.message}><ActivityIndicator color={colors.homeAccent} size="large" /></View>;
    }
    if (error) {
      return (
        <View style={styles.message}>
          <Ionicons name="cloud-offline-outline" size={28} color={colors.textMuted} />
          <Text style={[styles.messageText, { color: colors.textSecondary }]}>تعذر تحميل العناوين</Text>
          <Pressable onPress={() => void loadPage(1, false)} style={[styles.retryButton, { borderColor: colors.border }]}>
            <Text style={[styles.retryText, { color: colors.textPrimary }]}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      );
    }
    return (
      <View style={styles.message}>
        <Ionicons name={mediaType === "MANGA" ? "book-outline" : "albums-outline"} size={28} color={colors.textMuted} />
        <Text style={[styles.messageText, { color: colors.textSecondary }]}>{emptyText}</Text>
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
        if (!loading && !loadingMore && hasMore && !error) void loadPage(page + 1, true);
      }}
      onEndReachedThreshold={0.45}
      ListEmptyComponent={renderEmpty}
      ListFooterComponent={loadingMore ? <ActivityIndicator style={styles.footerLoader} color={colors.homeAccent} /> : null}
      initialNumToRender={12}
      maxToRenderPerBatch={12}
      windowSize={5}
      removeClippedSubviews={!tvMode}
    />
  );
}

const styles = StyleSheet.create({
  grid: { paddingHorizontal: 16, paddingTop: 12, paddingBottom: 110 },
  emptyGrid: { flexGrow: 1, justifyContent: "center" },
  row: { justifyContent: "space-between", marginBottom: 18 },
  card: { marginBottom: 18 },
  poster: { width: "100%", overflow: "hidden", borderRadius: 13, borderWidth: 1, position: "relative" },
  posterPlaceholder: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  posterGradient: { position: "absolute", left: 0, right: 0, bottom: 0, paddingHorizontal: 9, paddingBottom: 9, paddingTop: 38 },
  posterMetaRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between" },
  posterMetaText: { color: "#fff", fontSize: 11, fontWeight: "800", textShadowColor: "rgba(0,0,0,0.8)", textShadowRadius: 4 },
  posterScore: { color: "#FACC15", fontSize: 11, fontWeight: "800" },
  posterYear: { alignSelf: "flex-end" },
  statusBadge: { position: "absolute", top: 8, right: 8, borderRadius: 12, paddingHorizontal: 8, paddingVertical: 3 },
  statusBadgeText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  cardTitle: { fontSize: 13, lineHeight: 19, marginTop: 6, fontFamily: "Cairo_700Bold", textAlign: "left" },
  cardSubtitle: { fontSize: 11, lineHeight: 16, marginTop: 2, fontFamily: "Cairo_400Regular", textAlign: "right" },
  message: { minHeight: 220, alignItems: "center", justifyContent: "center", gap: 10, padding: 20 },
  messageText: { fontSize: 13, fontFamily: "Cairo_600SemiBold", textAlign: "center" },
  retryButton: { borderWidth: 1, borderRadius: 12, paddingHorizontal: 14, paddingVertical: 8, marginTop: 4 },
  retryText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  footerLoader: { paddingVertical: 14 },
});
