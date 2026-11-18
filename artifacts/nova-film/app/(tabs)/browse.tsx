import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { AnimeFilterSheet, type AnimeFilterOption } from "@/components/AnimeFilterSheet";
import { SafePosterImage } from "@/components/SafePosterImage";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { type FilmSummary } from "@/utils/filmCatalog";
import { isTvDevice, TvPressable as Pressable, usePhoneScale } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);

const SORT_OPTIONS: AnimeFilterOption[] = [
  { label: "الأكثر شعبية", value: "popularity" },
  { label: "الأعلى تقييماً", value: "rating" },
  { label: "الأحدث إصداراً", value: "year" },
];

const FORMAT_OPTIONS: AnimeFilterOption[] = [
  { label: "الكل", value: "all" },
  { label: "أفلام أجنبية", value: "movie" },
  { label: "مسلسلات", value: "series" },
  { label: "سينما آسيوية وعربية", value: "asian" },
  { label: "أنميشن", value: "animation" },
];

const STATUS_OPTIONS: AnimeFilterOption[] = [
  { label: "الكل", value: "" },
  { label: "مترجم", value: "SUB" },
  { label: "1080p FHD", value: "FHD" },
];

const SEASON_OPTIONS: AnimeFilterOption[] = [
  { label: "الكل", value: "" },
  { label: "إصدارات 2026", value: "2026" },
  { label: "إصدارات 2025", value: "2025" },
  { label: "إصدارات 2024", value: "2024" },
  { label: "إصدارات 2023", value: "2023" },
];

const CUR_YEAR = new Date().getFullYear();
const START_YEAR = 1995;
const YEARS = [
  "الكل",
  ...Array.from({ length: CUR_YEAR - START_YEAR + 1 }, (_, i) => String(CUR_YEAR - i)),
];

const GENRES_WITH_COVERS = [
  { genre: "أكشن", ar: "أكشن", color: "#CA8A04", icon: "flame-outline" },
  { genre: "مغامرة", ar: "مغامرة", color: "#D97706", icon: "compass-outline" },
  { genre: "دراما", ar: "دراما", color: "#DB2777", icon: "film-outline" },
  { genre: "كوميديا", ar: "كوميديا", color: "#EAB308", icon: "happy-outline" },
  { genre: "خيال علمي", ar: "خيال علمي", color: "#0891B2", icon: "planet-outline" },
  { genre: "إثارة", ar: "إثارة", color: "#DC2626", icon: "flash-outline" },
  { genre: "غموض", ar: "غموض", color: "#4F46E5", icon: "search-outline" },
  { genre: "رعب", ar: "رعب", color: "#991B1B", icon: "skull-outline" },
  { genre: "فانتازيا", ar: "فانتازيا", color: "#7C3AED", icon: "sparkles-outline" },
  { genre: "جريمة", ar: "جريمة", color: "#2563EB", icon: "shield-outline" },
  { genre: "عائلي", ar: "عائلي", color: "#16A34A", icon: "people-outline" },
  { genre: "أنميشن", ar: "أنميشن", color: "#0284C7", icon: "color-palette-outline" },
  { genre: "وثائقي", ar: "وثائقي", color: "#9333EA", icon: "earth-outline" },
];

const FILTER_GENRES: AnimeFilterOption[] = [
  { label: "الكل", value: "" },
  ...GENRES_WITH_COVERS.map(({ genre, ar }) => ({ label: ar, value: genre })),
];

const FORMAT_AR: Record<string, string> = {
  movie: "أفلام أجنبية",
  series: "مسلسلات",
  asian: "سينما آسيوية وعربية",
  animation: "أنميشن",
};

function useBrowseTheme() {
  const colors = useColors();
  const s = usePhoneScale();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const g = useMemo(() => makeG(colors, s, tvMode), [colors, s, tvMode]);
  return { colors, g };
}

const GenreCard = React.memo(function GenreCard({
  item,
  liveCoverUrl,
  onPress,
  columns,
  horizontal = false,
}: {
  item: (typeof GENRES_WITH_COVERS)[0];
  liveCoverUrl?: string;
  onPress: () => void;
  columns: number;
  horizontal?: boolean;
}) {
  const { g } = useBrowseTheme();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const [imgErr, setImgErr] = useState(false);

  return (
    <Pressable
      onPress={onPress}
      focusable={tvMode}
      style={({ focused }) => [
        g.genreCard,
        horizontal ? g.horizontalGenreCard : { flex: 1 / columns },
        tvMode && { borderRadius: horizontal ? 10 : 12, padding: 1.5 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          g.genrePillWrap,
          horizontal ? g.horizontalGenrePillWrap : tvMode && g.tvGenreImgWrap,
          { backgroundColor: item.color },
        ]}
      >
        <Text
          numberOfLines={1}
          style={[
            g.genreLabel,
            horizontal ? g.horizontalGenreLabel : tvMode && g.tvGenreLabel,
          ]}
        >
          {item.ar}
        </Text>
        <View style={[g.genreFloatingPosterWrap, horizontal && g.horizontalGenreFloatingPosterWrap]}>
          {liveCoverUrl && !imgErr ? (
            <Image
              source={{ uri: liveCoverUrl }}
              style={g.genreFloatingPoster}
              resizeMode="cover"
              fadeDuration={0}
              onError={() => setImgErr(true)}
            />
          ) : (
            <Ionicons name={item.icon as any} size={horizontal ? 13 : 16} color="#FFFFFF" />
          )}
        </View>
      </View>
    </Pressable>
  );
});

const FilmBrowseCard = React.memo(function FilmBrowseCard({
  film,
  onPress,
  columns,
}: {
  film: FilmSummary;
  onPress: () => void;
  columns: number;
}) {
  const { g } = useBrowseTheme();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const gridW = Math.min(Math.max(width - 24, 280), tvMode ? 1100 : 900);
  const cardW = Math.max(88, Math.floor((gridW - 24 - 10 * (columns - 1)) / columns));
  const cardH = Math.round(cardW * 1.44);
  const isSeries = film.tmdbType === "tv";
  const fmtLabel =
    film.mediaType === "animation" ? "أنميشن" : isSeries ? "مسلسل" : "فيلم";

  return (
    <Pressable
      onPress={onPress}
      focusable={tvMode}
      style={({ focused }) => [
        g.card,
        { width: cardW, height: cardH, flex: 0, borderRadius: tvMode ? 16 : 13 },
        tvMode && { borderWidth: 2.5, borderColor: "transparent", padding: 2 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[g.cardWrap, tvMode && g.tvCardWrap, { width: "100%", height: "100%", aspectRatio: undefined }]}>
        {film.posterUrl ? (
          <SafePosterImage uri={film.posterUrl} style={g.cardImg} resizeMode="cover" />
        ) : (
          <View style={[g.cardImg, g.cardNoImg]} />
        )}

        {film.imdbRating ? (
          <View style={[g.scoreBadge, tvMode && g.tvScoreBadge]}>
            <Ionicons name="star" size={tvMode ? 13 : 7} color="#FBBF24" />
            <Text style={[g.scoreText, tvMode && g.tvScoreText]}>
              {Number(film.imdbRating).toFixed(1)}
            </Text>
          </View>
        ) : null}

        <View
          style={[
            g.fmtBadge,
            tvMode && g.tvFmtBadge,
            { backgroundColor: isSeries ? "#7C3AED" : "#3B82F6" },
          ]}
        >
          <Text style={[g.fmtText, tvMode && g.tvFmtText]}>{fmtLabel}</Text>
        </View>

        <View style={g.cardBottom}>
          <Text
            style={[g.cardTitleAr, tvMode && g.tvCardTitle]}
            numberOfLines={2}
          >
            {film.titleAr || film.titleEn}
          </Text>
          {film.titleEn && film.titleEn.trim() !== (film.titleAr || "").trim() ? (
            <Text
              style={[g.cardTitle, tvMode && g.tvCardTitle]}
              numberOfLines={1}
            >
              {film.titleEn}
            </Text>
          ) : null}
        </View>
      </View>
    </Pressable>
  );
});

export default function BrowseScreen() {
  const params = useLocalSearchParams<{
    category?: string;
    type?: string;
    genre?: string;
    year?: string;
    sort?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { colors, g } = useBrowseTheme();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const gridWidth = Math.min(Math.max(width - 24, 280), tvMode ? 1100 : 900);
  const gridColumns = tvMode && width >= 700 ? 6 : 3;
  const genreColumns = tvMode && width >= 700 ? 3 : 2;
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const [view, setView] = useState<"genres" | "list">("list");
  const [filterVisible, setFilterVisible] = useState(false);

  const [format, setFormat] = useState<string>(() => {
    const c = String(params.category || params.type || "all");
    return ["movie", "series", "animation", "asian"].includes(c) ? c : "all";
  });
  const [activeGenre, setActiveGenre] = useState<string>(() => String(params.genre || ""));
  const [sort, setSort] = useState<string>(() => {
    const s = String(params.sort || "popularity");
    return s === "rating" || s === "year" ? s : "popularity";
  });
  const [season, setSeason] = useState<string>("");
  const [status, setStatus] = useState<string>("");
  const [year, setYear] = useState<string>(() => String(params.year || ""));

  const [items, setItems] = useState<FilmSummary[]>([]);
  const [page, setPage] = useState<number>(1);
  const [totalPages, setTotalPages] = useState<number>(1);
  const [totalResults, setTotalResults] = useState<number>(0);
  const [loading, setLoading] = useState<boolean>(true);
  const [loadingMore, setLoadingMore] = useState<boolean>(false);

  const listRef = useRef<FlatList<FilmSummary>>(null);

  useEffect(() => {
    const rawCat = params.category ?? params.type;
    if (typeof rawCat === "string" && ["movie", "series", "animation", "asian", "all"].includes(rawCat)) {
      setFormat(rawCat);
      setView("list");
      setSeason("");
    }
    if (typeof params.sort === "string" && ["popularity", "popular", "rating", "year"].includes(params.sort)) {
      setSort(params.sort === "popular" ? "popularity" : params.sort);
      setView("list");
    }
    if (typeof params.genre === "string") {
      setActiveGenre(params.genre === "الكل" ? "" : params.genre);
    }
    if (typeof params.year === "string") {
      setYear(params.year);
    }
    listRef.current?.scrollToOffset({ offset: 0, animated: false });
  }, [params.category, params.type, params.sort, params.genre, params.year]);

  const effectiveYear = year || season;

  const loadPage = useCallback(
    async (targetPage: number, replace: boolean) => {
      if (replace) setLoading(true);
      else setLoadingMore(true);
      try {
        const res = await fetchFilmBrowse({
          category: (format || "all") as any,
          genre: activeGenre || "الكل",
          sort: (sort || "popularity") as any,
          year: effectiveYear ? Number(effectiveYear) : undefined,
          page: targetPage,
        });
        setPage(res.page);
        setTotalPages(res.totalPages);
        setTotalResults(res.totalResults || res.results.length);
        setItems((prev) => {
          if (replace) return res.results;
          const seen = new Set(prev.map((x) => `${x.tmdbType}:${x.id}`));
          const merged = [...prev];
          for (const item of res.results) {
            const k = `${item.tmdbType}:${item.id}`;
            if (!seen.has(k)) {
              seen.add(k);
              merged.push(item);
            }
          }
          return merged;
        });
      } catch {
        if (replace) setItems([]);
      } finally {
        setLoading(false);
        setLoadingMore(false);
      }
    },
    [format, activeGenre, sort, effectiveYear],
  );

  useEffect(() => {
    void loadPage(1, true);
  }, [loadPage]);

  const genreCovers = useMemo(() => {
    const map: Record<string, string> = {};
    for (const gItem of GENRES_WITH_COVERS) {
      const found = items.find((f) => f.posterUrl && (f.genres || []).includes(gItem.genre));
      if (found?.posterUrl) map[gItem.genre] = found.posterUrl;
    }
    return map;
  }, [items]);

  const hasFilters = Boolean(
    (format && format !== "all") ||
      sort !== "popularity" ||
      season ||
      year ||
      status ||
      activeGenre,
  );

  const openGenre = useCallback((genreName: string) => {
    setActiveGenre(genreName);
    setView("list");
  }, []);

  const clearAll = useCallback(() => {
    setView("list");
    setActiveGenre("");
    setFormat("all");
    setSort("popularity");
    setSeason("");
    setYear("");
    setStatus("");
  }, []);

  return (
    <View style={[g.container, { paddingTop: topPad }]}>
      {/* ── Unified Header (matching Anime NOVA browse.tsx) ── */}
      <View style={[g.header, tvMode && width >= 700 && g.tvHeader]}>
        <View style={g.mobileHeaderRow}>
          <View style={g.mobileTitleGroup}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="رجوع"
              focusable={tvMode}
              onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
              style={g.mobileBackButton}
            >
              <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
            </Pressable>
            <Text
              numberOfLines={1}
              adjustsFontSizeToFit
              minimumFontScale={0.8}
              style={[g.mobileTitle, { flexShrink: 1 }]}
            >
              {activeGenre || (format !== "all" ? FORMAT_AR[format] : "المكتبة والتصفح")}
            </Text>
          </View>

          <View style={g.mobileActions}>
            <View style={g.modeSwitch}>
              <Pressable
                focusable={tvMode}
                onPress={() => router.push("/(tabs)/search" as any)}
                style={g.modeButton}
              >
                <Ionicons name="search" size={13} color={colors.textMuted} />
                <Text style={g.modeButtonText}>بحث</Text>
              </Pressable>
              <Pressable
                focusable={tvMode}
                onPress={() => setView("list")}
                style={[g.modeButton, view === "list" && g.modeButtonActive]}
              >
                <Ionicons
                  name="compass-outline"
                  size={13}
                  color={view === "list" ? colors.buttonText : colors.textMuted}
                />
                <Text style={[g.modeButtonText, view === "list" && g.modeButtonTextActive]}>
                  تصفح
                </Text>
              </Pressable>
            </View>

            <Pressable
              accessibilityLabel="التصنيفات"
              focusable={tvMode}
              onPress={() => setView(view === "genres" ? "list" : "genres")}
              style={[g.mobileFilterButton, view === "genres" && g.genreToggleBtnActive]}
            >
              <Ionicons
                name="grid-outline"
                size={16}
                color={view === "genres" ? colors.accent : colors.textPrimary}
              />
            </Pressable>

            <Pressable
              accessibilityLabel="فتح الفلاتر"
              focusable={tvMode}
              onPress={() => setFilterVisible(true)}
              style={[g.mobileFilterButton, hasFilters && g.mobileFilterButtonActive]}
            >
              <Ionicons
                name="options-outline"
                size={17}
                color={hasFilters ? colors.buttonText : colors.textPrimary}
              />
            </Pressable>

            {hasFilters ? (
              <Pressable
                accessibilityLabel="مسح الفلاتر"
                focusable={tvMode}
                onPress={clearAll}
                style={g.clearBtn}
              >
                <Ionicons name="close" size={14} color={colors.destructive} />
                <Text style={g.clearBtnText}>مسح</Text>
              </Pressable>
            ) : null}
          </View>
        </View>

        <Pressable
          focusable={tvMode}
          onPress={() => setFilterVisible(true)}
          style={g.mobileSortButton}
        >
          <Ionicons name="options-outline" size={16} color={colors.textSecondary} />
          <Text numberOfLines={1} style={g.mobileSortText}>
            {SORT_OPTIONS.find((opt) => opt.value === sort)?.label || "الأكثر شعبية"}
            {format && format !== "all" ? ` · ${FORMAT_AR[format] || format}` : ""}
            {activeGenre ? ` · ${activeGenre}` : ""}
            {effectiveYear ? ` · ${effectiveYear}` : ""}
          </Text>
          <Ionicons name="chevron-down" size={16} color={colors.textSecondary} />
        </Pressable>

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          overScrollMode="never"
          style={g.mobileGenreRail}
          contentContainerStyle={g.mobileGenreRailContent}
        >
          {GENRES_WITH_COVERS.map((item) => (
            <GenreCard
              key={item.genre}
              item={item}
              liveCoverUrl={genreCovers[item.genre]}
              columns={genreColumns}
              horizontal
              onPress={() => openGenre(item.genre)}
            />
          ))}
        </ScrollView>
      </View>

      {/* ── Genre Grid View ── */}
      {view === "genres" && (
        <FlatList
          data={GENRES_WITH_COVERS}
          style={{ width: gridWidth, alignSelf: "center" }}
          key={`genres-${genreColumns}`}
          keyExtractor={(item) => item.genre}
          numColumns={genreColumns}
          contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 6, paddingBottom: 88 }}
          columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          initialNumToRender={12}
          maxToRenderPerBatch={8}
          windowSize={5}
          removeClippedSubviews={Platform.OS === "android"}
          renderItem={({ item }) => (
            <GenreCard
              item={item}
              liveCoverUrl={genreCovers[item.genre]}
              columns={genreColumns}
              onPress={() => openGenre(item.genre)}
            />
          )}
        />
      )}

      {/* ── Film & Series Poster Grid ── */}
      {view === "list" && (
        <>
          {loading && items.length === 0 ? (
            <View style={g.center}>
              <ActivityIndicator color={colors.accent} size="large" />
            </View>
          ) : (
            <FlatList
              ref={listRef}
              data={items}
              style={{ width: gridWidth, alignSelf: "center" }}
              key={`film-grid-${gridColumns}`}
              keyExtractor={(item, i) => `${item.tmdbType}-${item.id}-${i}`}
              numColumns={gridColumns}
              contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 6, paddingBottom: 88 }}
              columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
              showsVerticalScrollIndicator={false}
              overScrollMode="never"
              initialNumToRender={9}
              maxToRenderPerBatch={6}
              windowSize={5}
              removeClippedSubviews={Platform.OS === "android"}
              onEndReached={() => {
                if (!loading && !loadingMore && page < totalPages) {
                  void loadPage(page + 1, false);
                }
              }}
              onEndReachedThreshold={0.4}
              ListHeaderComponent={
                items.length > 0 ? (
                  <View style={g.resultsHeading}>
                    <Text style={g.resultsHeadingText}>
                      النتائج ({totalResults || items.length})
                    </Text>
                  </View>
                ) : null
              }
              ListEmptyComponent={
                <View style={g.center}>
                  <Ionicons name="film-outline" size={40} color={colors.textMuted} />
                  <Text style={g.emptyText}>لا توجد أعمال مطابقة للفلاتر الحالية</Text>
                </View>
              }
              ListFooterComponent={
                loadingMore ? (
                  <View style={{ paddingVertical: 16, alignItems: "center" }}>
                    <ActivityIndicator color={colors.accent} size="small" />
                  </View>
                ) : null
              }
              renderItem={({ item }) => (
                <FilmBrowseCard
                  film={item}
                  columns={gridColumns}
                  onPress={() =>
                    router.push({
                      pathname: "/film/[id]",
                      params: { id: String(item.id), type: item.tmdbType, title: item.titleAr },
                    })
                  }
                />
              )}
            />
          )}
        </>
      )}

      <AnimeFilterSheet
        visible={filterVisible}
        onClose={() => setFilterVisible(false)}
        onReset={clearAll}
        resultCount={totalResults || items.length}
        sortOptions={SORT_OPTIONS}
        seasonOptions={SEASON_OPTIONS}
        statusOptions={STATUS_OPTIONS}
        formatOptions={FORMAT_OPTIONS}
        genreOptions={FILTER_GENRES}
        years={YEARS}
        sort={sort}
        season={season}
        status={status}
        format={format === "all" ? "all" : format}
        genre={activeGenre}
        year={year}
        onSortChange={setSort}
        onSeasonChange={setSeason}
        onStatusChange={setStatus}
        onFormatChange={(val) => setFormat(val || "all")}
        onGenreChange={setActiveGenre}
        onYearChange={setYear}
      />
    </View>
  );
}

const makeG = (colors: ThemePalette, s: number, tvMode: boolean) =>
  StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    header: {
      paddingHorizontal: Math.round(10 * s),
      paddingTop: 4,
      paddingBottom: 6,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      gap: 4,
    },
    tvHeader: { paddingHorizontal: 18, paddingTop: 6, paddingBottom: 8, gap: 5 },
    mobileHeaderRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 6,
    },
    mobileTitleGroup: {
      flex: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 6,
      minWidth: 0,
    },
    mobileTitle: {
      color: colors.textPrimary,
      fontSize: Math.round(14 * s),
      fontFamily: "Cairo_800ExtraBold",
      textAlign: "right",
      writingDirection: "rtl",
    },
    mobileActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 5, flexShrink: 0 },
    modeSwitch: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      padding: 2,
      borderRadius: Math.round(9 * s),
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    modeButton: {
      minHeight: Math.round(25 * s),
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 3,
      paddingHorizontal: Math.round(7 * s),
      borderRadius: Math.round(7 * s),
    },
    modeButtonActive: { backgroundColor: colors.accent },
    modeButtonText: {
      color: colors.textMuted,
      fontSize: Math.round(10 * s),
      fontFamily: "Cairo_700Bold",
    },
    modeButtonTextActive: { color: colors.buttonText },
    mobileFilterButton: {
      width: Math.round(30 * s),
      height: Math.round(30 * s),
      borderRadius: Math.round(9 * s),
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    mobileFilterButtonActive: { backgroundColor: colors.accent, borderColor: colors.accent },
    mobileBackButton: {
      width: Math.round(30 * s),
      height: Math.round(30 * s),
      borderRadius: Math.round(9 * s),
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
      flexShrink: 0,
    },
    mobileSortButton: {
      minHeight: Math.round(28 * s),
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 6,
      marginTop: 4,
      paddingHorizontal: 10,
      borderRadius: Math.round(9 * s),
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    mobileSortText: {
      flex: 1,
      color: colors.textPrimary,
      fontSize: Math.round(10.5 * s),
      fontFamily: "Cairo_700Bold",
      textAlign: "right",
      writingDirection: "rtl",
    },
    mobileGenreRail: { marginTop: 4, marginHorizontal: -Math.round(10 * s) },
    mobileGenreRailContent: {
      flexDirection: ROW_RTL,
      gap: 6,
      paddingHorizontal: Math.round(10 * s),
      paddingTop: 2,
      paddingBottom: 2,
    },
    resultsHeading: { paddingTop: 0, paddingBottom: 6, alignItems: "flex-end" },
    resultsHeadingText: {
      color: colors.textSecondary,
      fontSize: Math.round(10.5 * s),
      fontFamily: "Cairo_700Bold",
      textAlign: "right",
      writingDirection: "rtl",
    },
    clearBtn: {
      flexDirection: "row",
      alignItems: "center",
      gap: 3,
      paddingHorizontal: 8,
      paddingVertical: 4,
      borderRadius: 10,
      backgroundColor: colors.destructiveSurface,
      borderWidth: 1,
      borderColor: colors.destructiveBorder,
    },
    clearBtnText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: colors.destructive },
    genreToggleBtnActive: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
    genreCard: { flex: 1 },
    horizontalGenreCard: { width: tvMode ? 98 : Math.round(98 * s), flexGrow: 0 },
    genrePillWrap: {
      height: tvMode ? 40 : Math.round(42 * s),
      borderRadius: Math.round(11 * s),
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      paddingHorizontal: Math.round(7 * s),
      position: "relative",
      overflow: "hidden",
    },
    horizontalGenrePillWrap: {
      height: tvMode ? 30 : Math.round(30 * s),
      borderRadius: Math.round(9 * s),
      paddingHorizontal: Math.round(6 * s),
    },
    genreFloatingPosterWrap: {
      width: tvMode ? 24 : Math.round(25 * s),
      height: tvMode ? 24 : Math.round(25 * s),
      borderRadius: Math.round(7 * s),
      overflow: "hidden",
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.4)",
      backgroundColor: "rgba(0, 0, 0, 0.25)",
      alignItems: "center",
      justifyContent: "center",
    },
    horizontalGenreFloatingPosterWrap: {
      width: tvMode ? 19 : Math.round(20 * s),
      height: tvMode ? 19 : Math.round(20 * s),
      borderRadius: Math.round(6 * s),
    },
    genreFloatingPoster: { width: "100%", height: "100%" },
    tvGenreImgWrap: { height: 42, borderRadius: 11, borderWidth: 1 },
    genreLabel: {
      flex: 1,
      fontSize: Math.round(11.5 * s),
      fontFamily: "Cairo_800ExtraBold",
      color: "#fff",
      paddingHorizontal: Math.round(5 * s),
      paddingVertical: Math.round(2 * s),
      textAlign: "right",
      textShadowColor: "rgba(0,0,0,0.8)",
      textShadowOffset: { width: 0, height: 1 },
      textShadowRadius: 3,
    },
    horizontalGenreLabel: {
      fontSize: tvMode ? 10.5 : Math.round(10 * s),
      paddingHorizontal: 4,
      paddingVertical: 0,
    },
    tvGenreLabel: { fontSize: 12, lineHeight: 17, paddingHorizontal: 6, paddingVertical: 2 },
    card: { flex: 1 },
    cardWrap: {
      borderRadius: Math.round(13 * s),
      overflow: "hidden",
      aspectRatio: 2 / 3,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    tvCardWrap: { borderRadius: 16, borderWidth: 1 },
    cardImg: { width: "100%", height: "100%" },
    cardNoImg: { backgroundColor: colors.accentSurface, alignItems: "center", justifyContent: "center" },
    scoreBadge: {
      position: "absolute",
      top: 5,
      right: 5,
      flexDirection: "row",
      alignItems: "center",
      gap: 2,
      backgroundColor: "rgba(0,0,0,0.72)",
      borderRadius: 6,
      paddingHorizontal: Math.round(4.5 * s),
      paddingVertical: 1.5,
    },
    tvScoreBadge: { top: 8, right: 8, borderRadius: 9, paddingHorizontal: 7, paddingVertical: 4, gap: 3 },
    scoreText: { fontSize: Math.max(7, Math.round(7.5 * s)), color: "#fff", fontFamily: "Cairo_700Bold" },
    tvScoreText: { fontSize: 12 },
    fmtBadge: {
      position: "absolute",
      top: 5,
      left: 5,
      paddingHorizontal: Math.round(5 * s),
      paddingVertical: 1.5,
      borderRadius: 5,
    },
    tvFmtBadge: { top: 8, left: 8, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 8 },
    fmtText: { fontSize: Math.max(7, Math.round(7.5 * s)), color: "#fff", fontFamily: "Cairo_700Bold" },
    tvFmtText: { fontSize: 12 },
    cardBottom: {
      position: "absolute",
      bottom: 0,
      left: 0,
      right: 0,
      paddingHorizontal: Math.round(7 * s),
      paddingVertical: Math.round(6 * s),
      backgroundColor: "rgba(0,0,0,0.72)",
      gap: 2,
    },
    cardTitle: {
      fontSize: Math.max(9.5, Math.round(10.5 * s)),
      color: "#fff",
      fontFamily: "Cairo_600SemiBold",
      lineHeight: Math.round(14 * s),
      textAlign: "left",
    },
    cardTitleAr: {
      fontSize: Math.max(10, Math.round(11 * s)),
      color: "#fff",
      fontFamily: "Cairo_700Bold",
      lineHeight: Math.round(14.5 * s),
      textAlign: "right",
      writingDirection: "rtl",
    },
    tvCardTitle: { fontSize: 13, lineHeight: 18 },
    center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, minHeight: 200 },
    emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: colors.textMuted, textAlign: "center" },
  });
