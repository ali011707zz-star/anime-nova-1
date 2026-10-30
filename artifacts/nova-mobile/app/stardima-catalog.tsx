import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  Image,
  Modal,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

type Facet = { name: string; titleCount: number };
type Classification = {
  status: string;
  contentFamilies: string[];
  sourceCategories: string[];
  sourceTags: string[];
  localizationLabels: string[];
  source: string;
  detailCheckedAt: string | null;
};
type CatalogTitle = {
  id: string | number;
  provider_title_id: string;
  title: string;
  title_ar?: string | null;
  title_en?: string | null;
  title_native?: string | null;
  poster_url?: string | null;
  backdrop_url?: string | null;
  media_type?: "movie" | "series" | string;
  release_year?: number | null;
  episode_count?: number | null;
  genres?: string[];
  tags?: string[];
  catalog_status?: string;
  classification?: Classification | null;
};
type CatalogPage = { results: CatalogTitle[]; page: number; limit: number };
type FacetResponse = {
  totalTitles: number;
  classifiedTitles: number;
  unclassifiedTitles: number;
  categories: Facet[];
  localizationLabels: Facet[];
};

const PAGE_SIZE = 30;
const TYPE_FILTERS = [
  { value: "", label: "الكل" },
  { value: "series", label: "مسلسلات" },
  { value: "movie", label: "أفلام" },
] as const;

function createStyles(colors: ThemePalette) {
  return StyleSheet.create({
    page: { flex: 1, backgroundColor: colors.background },
    listContent: { alignItems: "center", paddingBottom: 34 },
    listHeader: { width: "100%" },
    header: {
      flexDirection: "row",
      alignItems: "center",
      gap: 12,
      paddingHorizontal: 16,
      paddingTop: 8,
      paddingBottom: 14,
    },
    backButton: {
      width: 42,
      height: 42,
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    heading: { flex: 1 },
    title: {
      color: colors.textPrimary,
      fontFamily: "Cairo_800ExtraBold",
      fontSize: 20,
      lineHeight: 28,
      textAlign: "right",
    },
    subtitle: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 11,
      lineHeight: 17,
      textAlign: "right",
    },
    summary: {
      color: colors.textMuted,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 11,
      textAlign: "right",
      paddingHorizontal: 16,
      marginBottom: 10,
    },
    searchWrap: {
      flexDirection: "row",
      alignItems: "center",
      gap: 9,
      minHeight: 44,
      marginHorizontal: 16,
      marginBottom: 12,
      paddingHorizontal: 12,
      borderWidth: 1,
      borderColor: colors.border,
      borderRadius: 13,
      backgroundColor: colors.input,
    },
    searchInput: {
      flex: 1,
      color: colors.textPrimary,
      fontFamily: "Cairo_400Regular",
      fontSize: 13,
      textAlign: "right",
      paddingVertical: 8,
    },
    sectionLabel: {
      color: colors.textSecondary,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
      textAlign: "right",
      paddingHorizontal: 16,
      marginBottom: 6,
      marginTop: 3,
    },
    chipRail: { paddingHorizontal: 16, paddingBottom: 11, gap: 7 },
    chip: {
      minHeight: 34,
      flexDirection: "row",
      alignItems: "center",
      gap: 5,
      paddingHorizontal: 11,
      borderRadius: 18,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surface,
    },
    chipActive: {
      backgroundColor: colors.accentSurface,
      borderColor: colors.accentBorder,
    },
    chipText: {
      maxWidth: 180,
      color: colors.textSecondary,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 10,
      lineHeight: 16,
    },
    chipTextActive: { color: colors.accent, fontFamily: "Cairo_700Bold" },
    notice: {
      flexDirection: "row",
      alignItems: "center",
      gap: 7,
      marginHorizontal: 16,
      marginBottom: 13,
      paddingHorizontal: 11,
      paddingVertical: 8,
      borderRadius: 11,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    noticeText: {
      flex: 1,
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 10,
      lineHeight: 16,
      textAlign: "right",
    },
    grid: { gap: 9 },
    card: {
      overflow: "hidden",
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      marginBottom: 9,
    },
    poster: { width: "100%", backgroundColor: colors.surfaceElevated },
    noPoster: { alignItems: "center", justifyContent: "center" },
    cardBody: { paddingHorizontal: 8, paddingVertical: 7, gap: 4 },
    cardTitle: {
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 11,
      lineHeight: 17,
      textAlign: "right",
      minHeight: 34,
    },
    cardMeta: {
      flexDirection: "row",
      justifyContent: "space-between",
      alignItems: "center",
      gap: 4,
    },
    badge: {
      maxWidth: "75%",
      paddingHorizontal: 6,
      paddingVertical: 2,
      borderRadius: 6,
      backgroundColor: colors.accentSurface,
    },
    badgeText: {
      color: colors.accent,
      fontFamily: "Cairo_700Bold",
      fontSize: 8,
      lineHeight: 13,
    },
    metaText: {
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 8,
      lineHeight: 13,
    },
    categoryText: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 8,
      lineHeight: 13,
      textAlign: "right",
    },
    centerState: { alignItems: "center", justifyContent: "center", padding: 28, gap: 10 },
    stateText: {
      color: colors.textSecondary,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 13,
      textAlign: "center",
    },
    retryButton: {
      borderRadius: 12,
      backgroundColor: colors.button,
      paddingHorizontal: 15,
      paddingVertical: 8,
    },
    retryText: {
      color: colors.buttonText,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
    },
    footer: { minHeight: 56, alignItems: "center", justifyContent: "center" },
    modalRoot: { flex: 1, justifyContent: "flex-end", backgroundColor: "rgba(0,0,0,0.55)" },
    modalDismiss: { ...StyleSheet.absoluteFillObject },
    modalSheet: {
      maxHeight: "82%",
      paddingHorizontal: 18,
      paddingTop: 17,
      paddingBottom: 26,
      borderTopLeftRadius: 24,
      borderTopRightRadius: 24,
      backgroundColor: colors.background,
      borderTopWidth: 1,
      borderColor: colors.border,
    },
    modalHeader: { flexDirection: "row", alignItems: "center", gap: 10, marginBottom: 12 },
    modalClose: {
      width: 38,
      height: 38,
      alignItems: "center",
      justifyContent: "center",
      borderRadius: 12,
      backgroundColor: colors.surface,
    },
    modalTitle: {
      flex: 1,
      color: colors.textPrimary,
      fontFamily: "Cairo_800ExtraBold",
      fontSize: 19,
      lineHeight: 28,
      textAlign: "right",
    },
    modalSection: { marginTop: 12 },
    modalSectionTitle: {
      color: colors.textSecondary,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
      textAlign: "right",
      marginBottom: 6,
    },
    modalValues: { flexDirection: "row", flexWrap: "wrap", justifyContent: "flex-end", gap: 7 },
    modalValue: {
      color: colors.textPrimary,
      fontFamily: "Cairo_600SemiBold",
      fontSize: 11,
      paddingHorizontal: 10,
      paddingVertical: 5,
      borderRadius: 10,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surface,
    },
    modalStatus: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 11,
      lineHeight: 19,
      textAlign: "right",
    },
  });
}

function buildTitlesUrl(page: number, filters: {
  mediaType: string;
  category: string;
  localization: string;
  query: string;
}) {
  const params = new URLSearchParams({
    provider: "stardima_catalog",
    page: String(page),
    limit: String(PAGE_SIZE),
  });
  if (filters.mediaType) params.set("mediaType", filters.mediaType);
  if (filters.category) params.set("category", filters.category);
  if (filters.localization) params.set("tag", filters.localization);
  if (filters.query) params.set("q", filters.query);
  return `${getBaseUrl()}/api/source-catalog/titles?${params.toString()}`;
}

function familyLabel(value: string) {
  if (value === "anime") return "أنمي";
  if (value === "animation") return "رسوم متحركة";
  return value;
}

function classificationLabel(status?: string) {
  if (status === "classified") return "مصنف";
  if (status === "manually_reviewed") return "مراجع";
  if (status === "needs_review") return "بحاجة لمراجعة";
  if (status === "source_labeled") return "تصنيف المصدر";
  return "غير مصنف";
}

function titleName(item: CatalogTitle) {
  return item.title_ar || item.title || item.title_en || item.title_native || "عنوان غير معروف";
}

export default function StarDimaCatalogScreen() {
  const colors = useColors();
  const styles = useMemo(() => createStyles(colors), [colors]);
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const columns = tvMode || width >= 720 ? 4 : 3;
  const contentWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);
  const cardGap = 9;
  const cardWidth = Math.max(1, (contentWidth - cardGap * (columns - 1)) / columns);

  const [facets, setFacets] = useState<FacetResponse | null>(null);
  const [facetsLoading, setFacetsLoading] = useState(true);
  const [facetsError, setFacetsError] = useState(false);
  const [mediaType, setMediaType] = useState("");
  const [category, setCategory] = useState("");
  const [localization, setLocalization] = useState("");
  const [searchText, setSearchText] = useState("");
  const [query, setQuery] = useState("");
  const [items, setItems] = useState<CatalogTitle[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [hasMore, setHasMore] = useState(false);
  const [page, setPage] = useState(1);
  const [error, setError] = useState(false);
  const [moreError, setMoreError] = useState(false);
  const [selectedTitle, setSelectedTitle] = useState<CatalogTitle | null>(null);
  const requestRef = useRef(0);
  const activeAbortRef = useRef<AbortController | null>(null);
  const moreAbortRef = useRef<AbortController | null>(null);
  const loadingMoreRef = useRef(false);

  useEffect(() => {
    const controller = new AbortController();
    setFacetsLoading(true);
    setFacetsError(false);
    fetch(`${getBaseUrl()}/api/source-catalog/categories?provider=stardima_catalog`, {
      signal: controller.signal,
    })
      .then(async (response) => {
        if (!response.ok) throw new Error("facet request failed");
        return response.json() as Promise<FacetResponse>;
      })
      .then((data) => {
        if (controller.signal.aborted) return;
        setFacets({
          ...data,
          categories: Array.isArray(data.categories) ? data.categories : [],
          localizationLabels: Array.isArray(data.localizationLabels) ? data.localizationLabels : [],
        });
      })
      .catch((requestError: any) => {
        if (!controller.signal.aborted) setFacetsError(true);
      })
      .finally(() => {
        if (!controller.signal.aborted) setFacetsLoading(false);
      });
    return () => controller.abort();
  }, []);

  useEffect(() => {
    const timer = setTimeout(() => setQuery(searchText.trim()), 320);
    return () => clearTimeout(timer);
  }, [searchText]);

  useEffect(() => {
    const requestId = ++requestRef.current;
    activeAbortRef.current?.abort();
    moreAbortRef.current?.abort();
    loadingMoreRef.current = false;
    const controller = new AbortController();
    activeAbortRef.current = controller;
    setItems([]);
    setPage(1);
    setHasMore(false);
    setError(false);
    setMoreError(false);
    setLoading(true);

    fetch(buildTitlesUrl(1, { mediaType, category, localization, query }), {
      signal: controller.signal,
    })
      .then(async (response) => {
        if (!response.ok) throw new Error("catalog request failed");
        return response.json() as Promise<CatalogPage>;
      })
      .then((data) => {
        if (controller.signal.aborted || requestRef.current !== requestId) return;
        const results = Array.isArray(data.results) ? data.results : [];
        setItems(results);
        setPage(1);
        setHasMore(results.length === PAGE_SIZE);
      })
      .catch((requestError: any) => {
        if (!controller.signal.aborted && requestRef.current === requestId) setError(true);
      })
      .finally(() => {
        if (!controller.signal.aborted && requestRef.current === requestId) setLoading(false);
      });

    return () => {
      controller.abort();
      moreAbortRef.current?.abort();
      requestRef.current++;
    };
  }, [mediaType, category, localization, query]);

  const retryFirstPage = useCallback(() => {
    requestRef.current++;
    setError(false);
    setLoading(true);
    fetch(buildTitlesUrl(1, { mediaType, category, localization, query }))
      .then(async (response) => {
        if (!response.ok) throw new Error("catalog request failed");
        return response.json() as Promise<CatalogPage>;
      })
      .then((data) => {
        const results = Array.isArray(data.results) ? data.results : [];
        setItems(results);
        setPage(1);
        setHasMore(results.length === PAGE_SIZE);
        setError(false);
      })
      .catch(() => setError(true))
      .finally(() => setLoading(false));
  }, [mediaType, category, localization, query]);

  const loadMore = useCallback(async () => {
    if (loading || !hasMore || loadingMoreRef.current) return;
    const requestId = requestRef.current;
    const nextPage = page + 1;
    const controller = new AbortController();
    moreAbortRef.current?.abort();
    moreAbortRef.current = controller;
    loadingMoreRef.current = true;
    setLoadingMore(true);
    setMoreError(false);
    try {
      const response = await fetch(
        buildTitlesUrl(nextPage, { mediaType, category, localization, query }),
        { signal: controller.signal },
      );
      if (!response.ok) throw new Error("catalog page request failed");
      const data = await response.json() as CatalogPage;
      if (controller.signal.aborted || requestRef.current !== requestId) return;
      const results = Array.isArray(data.results) ? data.results : [];
      setItems((previous) => {
        const ids = new Set(previous.map((item) => String(item.id)));
        return [...previous, ...results.filter((item) => !ids.has(String(item.id)))];
      });
      setPage(nextPage);
      setHasMore(results.length === PAGE_SIZE);
    } catch (requestError: any) {
      if (!controller.signal.aborted && requestRef.current === requestId) setMoreError(true);
    } finally {
      loadingMoreRef.current = false;
      if (requestRef.current === requestId) setLoadingMore(false);
    }
  }, [category, hasMore, loading, localization, mediaType, page, query]);

  const renderChip = (
    label: string,
    count: number | null,
    active: boolean,
    onPress: () => void,
    key: string,
  ) => (
    <Pressable
      key={key}
      onPress={onPress}
      focusable={tvMode}
      accessibilityRole="button"
      accessibilityState={{ selected: active }}
      style={({ focused }) => [
        styles.chip,
        active && styles.chipActive,
        tvMode && focused && tvFocusStyle(true),
      ]}
    >
      <Text numberOfLines={1} style={[styles.chipText, active && styles.chipTextActive, tvMode && { fontSize: 15 }]}>
        {label}{count != null ? ` · ${count.toLocaleString("ar")}` : ""}
      </Text>
    </Pressable>
  );

  const renderItem = ({ item }: { item: CatalogTitle }) => {
    const localizationBadge = item.classification?.localizationLabels?.[0];
    const families = item.classification?.contentFamilies || [];
    const categorySummary = (item.genres || []).slice(0, 2).join("، ");
    const poster = item.poster_url || item.backdrop_url;
    return (
      <Pressable
        onPress={() => setSelectedTitle(item)}
        focusable={tvMode}
        accessibilityRole="button"
        accessibilityLabel={`تفاصيل التصنيف: ${titleName(item)}`}
        style={({ focused }) => [
          styles.card,
          { width: cardWidth },
          tvMode && focused && tvFocusStyle(true),
        ]}
      >
        {poster ? (
          <Image
            source={{ uri: poster }}
            style={[styles.poster, { height: cardWidth * (tvMode ? 1.4 : 1.48) }]}
            resizeMode="cover"
          />
        ) : (
          <View style={[styles.poster, styles.noPoster, { height: cardWidth * (tvMode ? 1.4 : 1.48) }]}>
            <Ionicons name={item.media_type === "movie" ? "film-outline" : "tv-outline"} size={tvMode ? 42 : 28} color={colors.textMuted} />
          </View>
        )}
        <View style={styles.cardBody}>
          <Text numberOfLines={2} style={[styles.cardTitle, tvMode && { fontSize: 15, lineHeight: 23 }]}>
            {titleName(item)}
          </Text>
          <View style={styles.cardMeta}>
            <Text style={[styles.metaText, tvMode && { fontSize: 11 }]}>
              {item.media_type === "movie" ? "فيلم" : "مسلسل"}
              {item.episode_count ? ` · ${item.episode_count} حلقة` : ""}
            </Text>
            {localizationBadge ? (
              <View style={styles.badge}>
                <Text numberOfLines={1} style={[styles.badgeText, tvMode && { fontSize: 10 }]}>
                  {localizationBadge}
                </Text>
              </View>
            ) : null}
          </View>
          {categorySummary ? (
            <Text numberOfLines={1} style={[styles.categoryText, tvMode && { fontSize: 10 }]}>
              {categorySummary}
            </Text>
          ) : (
            <Text numberOfLines={1} style={[styles.categoryText, tvMode && { fontSize: 10 }]}>
              {classificationLabel(item.classification?.status)}
            </Text>
          )}
          {families.length > 0 ? (
            <Text numberOfLines={1} style={[styles.categoryText, { color: colors.accent }, tvMode && { fontSize: 10 }]}>
              {families.map(familyLabel).join(" · ")}
            </Text>
          ) : null}
        </View>
      </Pressable>
    );
  };

  const listHeader = (
    <View style={[styles.listHeader, { width: contentWidth }]}>
      <View style={[styles.header, { paddingTop: Math.max(8, insets.top ? 2 : 8) }]}>
        <View style={styles.heading}>
          <Text style={[styles.title, tvMode && { fontSize: 27, lineHeight: 37 }]}>فهرس StarDima</Text>
          <Text style={[styles.subtitle, tvMode && { fontSize: 15, lineHeight: 22 }]}>
            فئات المصدر ووسوم الصوت والترجمة
          </Text>
        </View>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [styles.backButton, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="arrow-back" size={tvMode ? 28 : 21} color={colors.textPrimary} />
        </Pressable>
      </View>

      <Text style={[styles.summary, tvMode && { fontSize: 14 }]}>
        {facets
          ? `${facets.totalTitles.toLocaleString("ar")} عنوان · ${facets.classifiedTitles.toLocaleString("ar")} لها فئات مصدر`
          : "جارٍ تحميل ملخص الفئات"}
      </Text>

      <View style={[styles.searchWrap, tvMode && { minHeight: 58, borderRadius: 16 }]}>
        <Ionicons name="search" size={tvMode ? 22 : 17} color={colors.textMuted} />
        <TextInput
          value={searchText}
          onChangeText={setSearchText}
          placeholder="ابحث في عناوين StarDima"
          placeholderTextColor={colors.textMuted}
          returnKeyType="search"
          accessibilityLabel="البحث في عناوين StarDima"
          style={[styles.searchInput, tvMode && { fontSize: 17 }]}
        />
        {searchText ? (
          <Pressable onPress={() => setSearchText("")} accessibilityRole="button" accessibilityLabel="مسح البحث">
            <Ionicons name="close-circle" size={tvMode ? 23 : 18} color={colors.textMuted} />
          </Pressable>
        ) : null}
      </View>

      <Text style={[styles.sectionLabel, tvMode && { fontSize: 16 }]}>نوع المحتوى</Text>
      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRail}>
        {TYPE_FILTERS.map((option) => renderChip(
          option.label,
          null,
          mediaType === option.value,
          () => setMediaType(option.value),
          `type-${option.value || "all"}`,
        ))}
      </ScrollView>

      <Text style={[styles.sectionLabel, tvMode && { fontSize: 16 }]}>تصنيفات StarDima الأصلية</Text>
      {facetsLoading && !facets ? (
        <View style={styles.footer}><ActivityIndicator color={colors.accent} /></View>
      ) : facetsError ? (
        <Pressable
          onPress={() => {
            setFacets(null);
            setFacetsLoading(true);
            setFacetsError(false);
            fetch(`${getBaseUrl()}/api/source-catalog/categories?provider=stardima_catalog`)
              .then((response) => response.ok ? response.json() : Promise.reject())
              .then((data) => setFacets(data))
              .catch(() => setFacetsError(true))
              .finally(() => setFacetsLoading(false));
          }}
          style={styles.centerState}
        >
          <Text style={styles.stateText}>تعذر تحميل التصنيفات</Text>
          <Text style={[styles.stateText, { color: colors.accent }]}>إعادة المحاولة</Text>
        </Pressable>
      ) : (
        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRail}>
          {renderChip("كل التصنيفات", facets?.classifiedTitles ?? null, !category, () => setCategory(""), "category-all")}
          {(facets?.categories || []).map((facet) => renderChip(
            facet.name,
            facet.titleCount,
            category === facet.name,
            () => setCategory(category === facet.name ? "" : facet.name),
            `category-${facet.name}`,
          ))}
        </ScrollView>
      )}

      {(facets?.localizationLabels || []).length > 0 ? (
        <>
          <Text style={[styles.sectionLabel, tvMode && { fontSize: 16 }]}>الصوت والترجمة</Text>
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.chipRail}>
            {renderChip("كل الوسوم", null, !localization, () => setLocalization(""), "localization-all")}
            {facets!.localizationLabels.map((facet) => renderChip(
              facet.name,
              facet.titleCount,
              localization === facet.name,
              () => setLocalization(localization === facet.name ? "" : facet.name),
              `localization-${facet.name}`,
            ))}
          </ScrollView>
        </>
      ) : null}

      <View style={styles.notice}>
        <Ionicons name="information-circle-outline" size={tvMode ? 23 : 16} color={colors.accent} />
        <Text style={[styles.noticeText, tvMode && { fontSize: 13, lineHeight: 20 }]}>
          نعرض تسميات المصدر كما وردت؛ لا نعتبر اسم القناة أو غياب الوسم تصنيفًا مؤكدًا.
        </Text>
      </View>

      {error ? (
        <View style={styles.centerState}>
          <Text style={styles.stateText}>تعذر تحميل عناوين StarDima</Text>
          <Pressable onPress={retryFirstPage} style={styles.retryButton}>
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : null}
      {!error && !loading && !items.length ? (
        <View style={styles.centerState}>
          <Ionicons name="search-outline" size={28} color={colors.textMuted} />
          <Text style={styles.stateText}>لا توجد عناوين بهذه المرشحات</Text>
        </View>
      ) : null}
    </View>
  );

  return (
    <View style={[styles.page, { paddingTop: Platform.OS === "web" ? 0 : 0 }]}>
      <FlatList
        key={`stardima-${columns}`}
        data={items}
        renderItem={renderItem}
        keyExtractor={(item) => String(item.id || item.provider_title_id)}
        numColumns={columns}
        ListHeaderComponent={listHeader}
        contentContainerStyle={[styles.listContent, { paddingBottom: Math.max(insets.bottom, 22) + 24 }]}
        columnWrapperStyle={styles.grid}
        onEndReached={loadMore}
        onEndReachedThreshold={0.55}
        keyboardShouldPersistTaps="handled"
        removeClippedSubviews={!tvMode}
        ListEmptyComponent={loading ? (
          <View style={styles.centerState}>
            <ActivityIndicator size="large" color={colors.accent} />
            <Text style={styles.stateText}>جارٍ تحميل العناوين...</Text>
          </View>
        ) : null}
        ListFooterComponent={loadingMore ? (
          <View style={styles.footer}><ActivityIndicator color={colors.accent} /></View>
        ) : moreError ? (
          <Pressable onPress={loadMore} style={styles.centerState}>
            <Text style={[styles.stateText, { color: colors.accent }]}>تعذر تحميل المزيد · أعد المحاولة</Text>
          </Pressable>
        ) : hasMore ? <View style={styles.footer} /> : null}
      />

      <Modal
        visible={Boolean(selectedTitle)}
        transparent
        animationType="slide"
        statusBarTranslucent
        onRequestClose={() => setSelectedTitle(null)}
      >
        <View style={styles.modalRoot}>
          <Pressable style={styles.modalDismiss} onPress={() => setSelectedTitle(null)} accessibilityLabel="إغلاق التفاصيل" />
          {selectedTitle ? (
            <View style={[styles.modalSheet, tvMode && { maxHeight: "76%", paddingHorizontal: 28 }]}>
              <View style={styles.modalHeader}>
                <Text style={[styles.modalTitle, tvMode && { fontSize: 26, lineHeight: 36 }]}>
                  {titleName(selectedTitle)}
                </Text>
                <Pressable
                  onPress={() => setSelectedTitle(null)}
                  accessibilityRole="button"
                  accessibilityLabel="إغلاق"
                  style={styles.modalClose}
                >
                  <Ionicons name="close" size={22} color={colors.textPrimary} />
                </Pressable>
              </View>
              <ScrollView showsVerticalScrollIndicator={false}>
                <Text style={[styles.modalStatus, tvMode && { fontSize: 15, lineHeight: 24 }]}>
                  {selectedTitle.media_type === "movie" ? "فيلم" : "مسلسل"}
                  {selectedTitle.release_year ? ` · ${selectedTitle.release_year}` : ""}
                  {selectedTitle.episode_count ? ` · ${selectedTitle.episode_count} حلقة مسجلة` : ""}
                  {" · "}{classificationLabel(selectedTitle.classification?.status)}
                </Text>
                {(selectedTitle.classification?.contentFamilies || []).length > 0 ? (
                  <View style={styles.modalSection}>
                    <Text style={styles.modalSectionTitle}>نوع المحتوى المؤكد</Text>
                    <View style={styles.modalValues}>
                      {selectedTitle.classification!.contentFamilies.map((value) => (
                        <Text key={value} style={styles.modalValue}>{familyLabel(value)}</Text>
                      ))}
                    </View>
                  </View>
                ) : null}
                <View style={styles.modalSection}>
                  <Text style={styles.modalSectionTitle}>تصنيفات المصدر</Text>
                  <View style={styles.modalValues}>
                    {(selectedTitle.genres || []).length ? selectedTitle.genres!.map((value) => (
                      <Text key={value} style={styles.modalValue}>{value}</Text>
                    )) : <Text style={styles.modalStatus}>لا توجد فئة موثقة حاليًا</Text>}
                  </View>
                </View>
                {(selectedTitle.classification?.localizationLabels || []).length > 0 ? (
                  <View style={styles.modalSection}>
                    <Text style={styles.modalSectionTitle}>الصوت والترجمة</Text>
                    <View style={styles.modalValues}>
                      {selectedTitle.classification!.localizationLabels.map((value) => (
                        <Text key={value} style={styles.modalValue}>{value}</Text>
                      ))}
                    </View>
                  </View>
                ) : null}
                {(selectedTitle.classification?.sourceTags || []).length > 0 ? (
                  <View style={styles.modalSection}>
                    <Text style={styles.modalSectionTitle}>وسوم المصدر</Text>
                    <View style={styles.modalValues}>
                      {selectedTitle.classification!.sourceTags.map((value) => (
                        <Text key={value} style={styles.modalValue}>{value}</Text>
                      ))}
                    </View>
                  </View>
                ) : null}
                <View style={styles.modalSection}>
                  <Text style={styles.modalSectionTitle}>مصدر التصنيف</Text>
                  <Text style={styles.modalStatus}>
                    {selectedTitle.classification?.source || "لم تُفحص بيانات التصنيف التفصيلية بعد"}
                  </Text>
                </View>
              </ScrollView>
            </View>
          ) : null}
        </View>
      </Modal>
    </View>
  );
}
