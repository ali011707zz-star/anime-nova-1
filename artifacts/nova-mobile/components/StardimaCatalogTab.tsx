import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  ActivityIndicator,
  FlatList,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable } from "@/utils/tv";

const Pressable = TvPressable;

type Classification = {
  status?: string;
  contentFamilies?: string[];
  localizationLabels?: string[];
};

type StardimaTitle = {
  id: string | number;
  provider_title_id: string;
  title: string;
  title_ar?: string | null;
  title_en?: string | null;
  poster_url?: string | null;
  backdrop_url?: string | null;
  media_type?: string;
  episode_count?: number | null;
  release_year?: number | null;
  tags?: string[];
  classification?: Classification | null;
};

type TitlePage = {
  results?: StardimaTitle[];
};

type FacetResponse = {
  localizationLabels?: Array<{ name: string; titleCount: number }>;
};

const PAGE_SIZE = 30;

const MEDIA_TYPES = [
  { value: "", label: "الكل" },
  { value: "series", label: "مسلسلات" },
  { value: "movie", label: "أفلام" },
];

function getTitle(item: StardimaTitle) {
  return item.title_ar || item.title || item.title_en || "عنوان غير معروف";
}

function getLanguageLabel(item: StardimaTitle) {
  return item.classification?.localizationLabels?.find((label) => label.trim())
    || item.tags?.find((label) => /dub|دبل|مدبلج|فصحى|sub|subtitle|translat|ترجم|مترجم/i.test(label))
    || "بدون وسم";
}

function languageTone(label: string, colors: ReturnType<typeof useColors>) {
  const normalized = label.toLowerCase();
  if (/dub|دبل|مدبلج|فصحى/.test(normalized)) {
    return { background: colors.success, foreground: colors.buttonText };
  }
  if (/sub|subtitle|translat|ترجم|مترجم/.test(normalized)) {
    return { background: colors.destructive, foreground: colors.buttonText };
  }
  return { background: colors.accent, foreground: colors.buttonText };
}

export function StardimaCatalogTab({ searchQ }: { searchQ: string }) {
  const colors = useColors();
  const router = useRouter();
  const { width } = useWindowDimensions();
  const tvMode = isTvDevice();
  const columns = tvMode || width >= 720 ? 4 : 3;
  const gridWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);
  const styles = useMemo(() => StyleSheet.create({
    root: { flex: 1 },
    list: { alignSelf: "center" },
    content: { paddingHorizontal: 12, paddingBottom: 110 },
    row: { gap: 10 },
    header: { paddingBottom: 8 },
    filterTitle: {
      color: colors.textSecondary,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 11,
      textAlign: "right",
      marginHorizontal: 3,
      marginTop: 8,
      marginBottom: 5,
    },
    chipRail: { gap: 7, paddingBottom: 4, paddingHorizontal: 2 },
    chip: {
      minHeight: 33,
      justifyContent: "center",
      paddingHorizontal: 12,
      borderRadius: 18,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surface,
    },
    chipActive: {
      borderColor: colors.accentBorder,
      backgroundColor: colors.accentSurface,
    },
    chipText: {
      color: colors.textSecondary,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 10,
    },
    chipTextActive: {
      color: colors.accent,
      fontFamily: "Cairo_700Bold",
    },
    card: {
      flex: 1,
      overflow: "hidden",
      marginBottom: 10,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
    },
    poster: {
      width: "100%",
      backgroundColor: colors.surfaceElevated,
    },
    posterFallback: {
      alignItems: "center",
      justifyContent: "center",
    },
    badge: {
      position: "absolute",
      top: 7,
      right: 7,
      maxWidth: "88%",
      paddingHorizontal: 7,
      paddingVertical: 3,
      borderRadius: 6,
    },
    badgeText: {
      fontFamily: "Cairo_700Bold",
      fontSize: 9,
    },
    cardBody: { paddingHorizontal: 7, paddingVertical: 6, gap: 3 },
    title: {
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 10,
      lineHeight: 15,
      minHeight: 30,
      textAlign: "right",
    },
    meta: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 9,
      textAlign: "right",
    },
    cacheNotice: {
      color: colors.destructive,
      fontFamily: "Cairo_400Regular",
      fontSize: 10,
      textAlign: "right",
      marginHorizontal: 4,
      marginTop: 6,
    },
    state: {
      alignItems: "center",
      justifyContent: "center",
      paddingVertical: 34,
      gap: 10,
    },
    stateText: {
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 12,
      textAlign: "center",
    },
    retry: { color: colors.accent, fontFamily: "Cairo_700Bold", padding: 8 },
    footer: { paddingVertical: 18 },
  }), [colors]);

  const [mediaType, setMediaType] = useState("");
  const [localization, setLocalization] = useState("");
  const [debouncedSearch, setDebouncedSearch] = useState(searchQ.trim());
  const [labels, setLabels] = useState<FacetResponse["localizationLabels"]>([]);
  const [items, setItems] = useState<StardimaTitle[]>([]);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(false);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState(false);
  const [retryKey, setRetryKey] = useState(0);
  const requestIdRef = useRef(0);
  const activeRequestRef = useRef<AbortController | null>(null);
  const moreRequestRef = useRef<AbortController | null>(null);
  const loadingMoreRef = useRef(false);

  useEffect(() => {
    const timeout = setTimeout(() => setDebouncedSearch(searchQ.trim()), 350);
    return () => clearTimeout(timeout);
  }, [searchQ]);

  useEffect(() => {
    const controller = new AbortController();
    fetch(`${getBaseUrl()}/api/source-catalog/categories?provider=stardima_catalog`, {
      signal: controller.signal,
    })
      .then((response) => response.ok ? response.json() as Promise<FacetResponse> : Promise.reject())
      .then((data) => {
        if (!controller.signal.aborted) {
          setLabels(Array.isArray(data.localizationLabels) ? data.localizationLabels : []);
        }
      })
      .catch(() => {
        if (!controller.signal.aborted) setLabels([]);
      });
    return () => controller.abort();
  }, []);

  useEffect(() => {
    const controller = new AbortController();
    const requestId = ++requestIdRef.current;
    activeRequestRef.current?.abort();
    moreRequestRef.current?.abort();
    loadingMoreRef.current = false;
    activeRequestRef.current = controller;
    setItems([]);
    setPage(1);
    setHasMore(false);
    setError(false);
    setLoading(true);
    setLoadingMore(false);

    const cacheKey = `stardima-catalog-v1:${mediaType}:${localization}:${debouncedSearch.toLowerCase()}`;
    AsyncStorage.getItem(cacheKey)
      .then((raw) => {
        if (controller.signal.aborted || requestId !== requestIdRef.current || !raw) return;
        const cached = JSON.parse(raw) as { results?: StardimaTitle[] };
        if (Array.isArray(cached.results)) {
          setItems(cached.results);
          setHasMore(cached.results.length === PAGE_SIZE);
        }
      })
      .catch(() => {});

    const params = new URLSearchParams({
      provider: "stardima_catalog",
      page: "1",
      limit: String(PAGE_SIZE),
    });
    if (debouncedSearch) params.set("q", debouncedSearch);
    if (mediaType) params.set("mediaType", mediaType);
    if (localization) params.set("tag", localization);

    fetch(`${getBaseUrl()}/api/source-catalog/titles?${params.toString()}`, {
      signal: controller.signal,
    })
      .then(async (response) => {
        if (!response.ok) throw new Error(`catalog_${response.status}`);
        return response.json() as Promise<TitlePage>;
      })
      .then((data) => {
        if (controller.signal.aborted || requestId !== requestIdRef.current) return;
        const results = Array.isArray(data.results) ? data.results : [];
        setItems(results);
        setHasMore(results.length === PAGE_SIZE);
        void AsyncStorage.setItem(cacheKey, JSON.stringify({ results })).catch(() => {});
      })
      .catch(() => {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setError(true);
      })
      .finally(() => {
        if (!controller.signal.aborted && requestId === requestIdRef.current) setLoading(false);
      });

    return () => {
      controller.abort();
      moreRequestRef.current?.abort();
    };
  }, [debouncedSearch, localization, mediaType, retryKey]);

  const loadMore = useCallback(async () => {
    if (loading || loadingMoreRef.current || !hasMore) return;
    const requestId = requestIdRef.current;
    const nextPage = page + 1;
    const controller = new AbortController();
    moreRequestRef.current?.abort();
    moreRequestRef.current = controller;
    loadingMoreRef.current = true;
    setLoadingMore(true);

    const params = new URLSearchParams({
      provider: "stardima_catalog",
      page: String(nextPage),
      limit: String(PAGE_SIZE),
    });
    if (debouncedSearch) params.set("q", debouncedSearch);
    if (mediaType) params.set("mediaType", mediaType);
    if (localization) params.set("tag", localization);

    try {
      const response = await fetch(`${getBaseUrl()}/api/source-catalog/titles?${params.toString()}`, {
        signal: controller.signal,
      });
      if (!response.ok) throw new Error(`catalog_${response.status}`);
      const data = await response.json() as TitlePage;
      if (controller.signal.aborted || requestId !== requestIdRef.current) return;
      const results = Array.isArray(data.results) ? data.results : [];
      setItems((current) => {
        const seen = new Set(current.map((item) => String(item.id)));
        return [...current, ...results.filter((item) => !seen.has(String(item.id)))];
      });
      setPage(nextPage);
      setHasMore(results.length === PAGE_SIZE);
    } catch {
      if (!controller.signal.aborted && requestId === requestIdRef.current) {
        setError(true);
      }
    } finally {
      loadingMoreRef.current = false;
      if (requestId === requestIdRef.current) setLoadingMore(false);
    }
  }, [hasMore, loading, localization, mediaType, page, debouncedSearch]);

  const renderChip = (
    label: string,
    value: string,
    selected: boolean,
    onPress: () => void,
  ) => (
    <Pressable
      key={`${label}-${value}`}
      onPress={onPress}
      focusable={tvMode}
      accessibilityRole="button"
      accessibilityState={{ selected }}
      style={({ focused }) => [
        styles.chip,
        selected && styles.chipActive,
        tvMode && focused && tvFocusStyle(true),
      ]}
    >
      <Text style={[styles.chipText, selected && styles.chipTextActive, tvMode && { fontSize: 14 }]}>
        {label}
      </Text>
    </Pressable>
  );

  const renderItem = ({ item }: { item: StardimaTitle }) => {
    const label = getLanguageLabel(item);
    const tone = languageTone(label, colors);
    const poster = item.poster_url || item.backdrop_url;
    return (
      <Pressable
        onPress={() => router.push({
          pathname: "/stardima-title" as any,
          params: { providerTitleId: item.provider_title_id },
        })}
        focusable={tvMode}
        accessibilityRole="button"
        accessibilityLabel={`فتح ${getTitle(item)}، ${label}`}
        style={({ focused }) => [
          styles.card,
          tvMode && focused && tvFocusStyle(true),
        ]}
      >
        {poster ? (
          <Image
            source={{ uri: poster }}
            style={[styles.poster, { height: (gridWidth - 12 * (columns - 1)) / columns * 1.48 }]}
            resizeMode="cover"
          />
        ) : (
          <View style={[
            styles.poster,
            styles.posterFallback,
            { height: (gridWidth - 12 * (columns - 1)) / columns * 1.48 },
          ]}>
            <Ionicons name={item.media_type === "movie" ? "film-outline" : "tv-outline"} size={28} color={colors.textMuted} />
          </View>
        )}
        <View style={[styles.badge, { backgroundColor: tone.background }]}>
          <Text numberOfLines={1} style={[styles.badgeText, { color: tone.foreground }]}>
            {label}
          </Text>
        </View>
        <View style={styles.cardBody}>
          <Text numberOfLines={2} style={[styles.title, tvMode && { fontSize: 14, lineHeight: 21 }]}>
            {getTitle(item)}
          </Text>
          <Text style={[styles.meta, tvMode && { fontSize: 12 }]}>
            {item.media_type === "movie" ? "فيلم" : "مسلسل"}
            {item.release_year ? ` · ${item.release_year}` : ""}
            {item.episode_count ? ` · ${item.episode_count} حلقة` : ""}
          </Text>
        </View>
      </Pressable>
    );
  };

  return (
    <View style={styles.root}>
      <FlatList
        key={`stardima-dubbed-grid-${columns}`}
        style={[styles.list, { width: gridWidth }]}
        data={items}
        renderItem={renderItem}
        keyExtractor={(item) => String(item.id || item.provider_title_id)}
        numColumns={columns}
        columnWrapperStyle={styles.row}
        contentContainerStyle={styles.content}
        initialNumToRender={6}
        maxToRenderPerBatch={6}
        updateCellsBatchingPeriod={50}
        windowSize={6}
        removeClippedSubviews={!tvMode}
        keyboardShouldPersistTaps="handled"
        onEndReached={loadMore}
        onEndReachedThreshold={0.45}
        ListHeaderComponent={(
          <View style={styles.header}>
            <Text style={[styles.filterTitle, tvMode && { fontSize: 14 }]}>نوع العمل</Text>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRail}>
              {MEDIA_TYPES.map((option) => renderChip(
                option.label,
                option.value,
                mediaType === option.value,
                () => setMediaType(option.value),
              ))}
            </ScrollView>
            {labels?.length ? (
              <>
                <Text style={[styles.filterTitle, tvMode && { fontSize: 14 }]}>وسم الصوت أو الترجمة</Text>
                <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRail}>
                  {renderChip("كل الأعمال", "", !localization, () => setLocalization(""))}
                  {labels.map((facet) => renderChip(
                    `${facet.name} · ${facet.titleCount}`,
                    facet.name,
                    localization === facet.name,
                    () => setLocalization(localization === facet.name ? "" : facet.name),
                  ))}
                </ScrollView>
              </>
            ) : null}
            {error && items.length > 0 ? (
              <View>
                <Text style={styles.cacheNotice}>تعذر تحديث الكتالوج.</Text>
                <Pressable onPress={() => setRetryKey((value) => value + 1)} accessibilityRole="button">
                  <Text style={styles.retry}>إعادة المحاولة</Text>
                </Pressable>
              </View>
            ) : null}
          </View>
        )}
        ListEmptyComponent={loading ? (
          <View style={styles.state}>
            <ActivityIndicator size="large" color={colors.accent} />
            <Text style={styles.stateText}>جارٍ تحميل كتالوج StarDima...</Text>
          </View>
        ) : error ? (
          <View style={styles.state}>
            <Ionicons name="cloud-offline-outline" size={30} color={colors.textMuted} />
            <Text style={styles.stateText}>تعذر تحميل الكتالوج</Text>
            <Pressable onPress={() => setRetryKey((value) => value + 1)} accessibilityRole="button">
              <Text style={styles.retry}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <View style={styles.state}>
            <Ionicons name="search-outline" size={28} color={colors.textMuted} />
            <Text style={styles.stateText}>لا توجد عناوين بهذه المرشحات</Text>
          </View>
        )}
        ListFooterComponent={loadingMore ? (
          <View style={styles.footer}><ActivityIndicator color={colors.accent} /></View>
        ) : null}
      />
    </View>
  );
}
