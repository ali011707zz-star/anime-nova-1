import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  KeyboardAvoidingView,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { AnimeFilterSheet, type AnimeFilterOption } from "@/components/AnimeFilterSheet";
import { SafePosterImage } from "@/components/SafePosterImage";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { type FilmSummary, NOVA_FILM_GENRES } from "@/utils/filmCatalog";
import { isTvDevice, TvPressable as Pressable, usePhoneScale } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);
const SEARCH_HISTORY_KEY = "nova_film_search_history_v1";

const SORT_OPTIONS: AnimeFilterOption[] = [
  { label: "الأكثر شعبية", value: "popularity" },
  { label: "الأعلى تقييماً", value: "rating" },
  { label: "الأحدث إصداراً", value: "year" },
];

const FORMAT_OPTIONS: AnimeFilterOption[] = [
  { label: "الكل", value: "all" },
  { label: "أفلام أجنبية", value: "movie" },
  { label: "مسلسلات", value: "series" },
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

const FILTER_GENRES: AnimeFilterOption[] = [
  { label: "الكل", value: "" },
  ...NOVA_FILM_GENRES.filter((g) => g !== "الكل").map((g) => ({ label: g, value: g })),
];

const CUR_YEAR = new Date().getFullYear();
const START_YEAR = 1995;
const YEARS = [
  "الكل",
  ...Array.from({ length: CUR_YEAR - START_YEAR + 1 }, (_, i) => String(CUR_YEAR - i)),
];

export default function SearchScreen() {
  const params = useLocalSearchParams<{ q?: string; genre?: string; year?: string }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const phoneScale = usePhoneScale();
  const s = useMemo(() => makeS(colors, phoneScale), [colors, phoneScale]);
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const gridWidth = Math.min(Math.max(width - 24, 280), tvMode ? 1100 : 900);
  const gridColumns = tvMode && width >= 700 ? 6 : 3;
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const [query, setQuery] = useState<string>(() => String(params.q || ""));
  const [sort, setSort] = useState<string>("popularity");
  const [format, setFormat] = useState<string>("all");
  const [status, setStatus] = useState<string>("");
  const [genre, setGenre] = useState<string>(() => String(params.genre || ""));
  const [season, setSeason] = useState<string>("");
  const [year, setYear] = useState<string>(() => String(params.year || ""));

  const [showFilters, setShowFilters] = useState<boolean>(false);
  const [results, setResults] = useState<FilmSummary[]>([]);
  const [loading, setLoading] = useState<boolean>(false);
  const [history, setHistory] = useState<string[]>([]);

  const inputRef = useRef<TextInput>(null);
  const timerRef = useRef<ReturnType<typeof setTimeout> | null>(null);

  useEffect(() => {
    AsyncStorage.getItem(SEARCH_HISTORY_KEY)
      .then((raw) => {
        if (!raw) return;
        try {
          const parsed = JSON.parse(raw);
          if (Array.isArray(parsed)) setHistory(parsed.filter(Boolean).slice(0, 12));
        } catch {}
      })
      .catch(() => {});
  }, []);

  const activeFilterCount =
    (format && format !== "all" ? 1 : 0) +
    (status ? 1 : 0) +
    (genre ? 1 : 0) +
    (season ? 1 : 0) +
    (year ? 1 : 0) +
    (sort !== "popularity" ? 1 : 0);

  const showEmpty =
    !query.trim() &&
    (!format || format === "all") &&
    !status &&
    !genre &&
    !season &&
    !year &&
    sort === "popularity";

  useEffect(() => {
    if (timerRef.current) clearTimeout(timerRef.current);
    if (showEmpty) {
      setResults([]);
      setLoading(false);
      return;
    }

    timerRef.current = setTimeout(
      async () => {
        setLoading(true);
        try {
          const effYear = year || season;
          const res = await fetchFilmBrowse({
            category: (format || "all") as any,
            genre: genre || "الكل",
            sort: (sort || "popularity") as any,
            year: effYear ? Number(effYear) : undefined,
            q: query.trim() || undefined,
            page: 1,
          });
          setResults(res.results || []);
          const trimmed = query.trim();
          if (trimmed.length >= 2) {
            setHistory((prev) => {
              const next = [trimmed, ...prev.filter((x) => x !== trimmed)].slice(0, 12);
              AsyncStorage.setItem(SEARCH_HISTORY_KEY, JSON.stringify(next)).catch(() => {});
              return next;
            });
          }
        } catch {
          setResults([]);
        } finally {
          setLoading(false);
        }
      },
      query.trim() ? 350 : 100,
    );

    return () => {
      if (timerRef.current) clearTimeout(timerRef.current);
    };
  }, [query, sort, format, status, genre, season, year, showEmpty]);

  function clearFilters() {
    setSort("popularity");
    setFormat("all");
    setStatus("");
    setGenre("");
    setSeason("");
    setYear("");
  }

  return (
    <KeyboardAvoidingView style={{ flex: 1 }} behavior={Platform.OS === "ios" ? "padding" : undefined}>
      <View style={[s.container, { paddingTop: topPad }]}>
        {/* ── Sticky Header (matching Anime NOVA search.tsx) ── */}
        <View style={[s.header, tvMode && width >= 700 && s.tvHeader]}>
          <View style={s.mobileHeaderTop}>
            <View style={s.mobileTitleGroup}>
              <Pressable
                accessibilityRole="button"
                accessibilityLabel="رجوع"
                focusable={tvMode}
                onPress={() =>
                  router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)
                }
                style={s.mobileBackButton}
              >
                <Ionicons name="chevron-forward" size={21} color={colors.textPrimary} />
              </Pressable>
              <Text style={s.mobileTitle}>البحث</Text>
            </View>

            <View style={s.mobileModeSwitch}>
              <Pressable
                focusable={tvMode}
                onPress={() => router.push("/(tabs)/browse" as any)}
                style={s.mobileModeButton}
              >
                <Ionicons name="compass-outline" size={14} color={colors.textMuted} />
                <Text style={s.mobileModeText}>تصفح</Text>
              </Pressable>
              <Pressable focusable={tvMode} style={[s.mobileModeButton, s.mobileModeButtonActive]}>
                <Ionicons name="search" size={14} color="#ffffff" />
                <Text style={[s.mobileModeText, s.mobileModeTextActive]}>بحث</Text>
              </Pressable>
            </View>
          </View>

          <View style={s.mobileSearchBar}>
            <Pressable
              accessibilityLabel="فتح فلاتر البحث"
              focusable={tvMode}
              onPress={() => setShowFilters(true)}
              style={[s.mobileFilterButton, activeFilterCount > 0 && s.mobileFilterButtonActive]}
            >
              <Ionicons
                name="options-outline"
                size={17}
                color={activeFilterCount > 0 ? colors.buttonText : colors.textSecondary}
              />
              {activeFilterCount > 0 && (
                <View style={s.mobileFilterCount}>
                  <Text style={s.mobileFilterCountText}>{activeFilterCount}</Text>
                </View>
              )}
            </Pressable>

            <TextInput
              ref={inputRef}
              value={query}
              onChangeText={setQuery}
              placeholder="ابحث عن فيلم أو مسلسل بالعربية أو الإنجليزية..."
              placeholderTextColor={colors.textMuted}
              style={s.mobileSearchInput}
              focusable
            />

            {query ? (
              <Pressable
                focusable={tvMode}
                onPress={() => {
                  setQuery("");
                  inputRef.current?.focus();
                }}
              >
                <Ionicons name="close-circle" size={17} color={colors.textMuted} />
              </Pressable>
            ) : null}

            <Ionicons name="search" size={19} color="#0ea5e9" />
          </View>
        </View>

        {/* ── Loading ── */}
        {loading && (
          <View style={s.loadingWrap}>
            <ActivityIndicator color={colors.accent} size="large" />
          </View>
        )}

        {/* ── Search History (Idle State) ── */}
        {!loading && showEmpty && (
          <ScrollView contentContainerStyle={{ paddingHorizontal: 16, paddingTop: 14, paddingBottom: 40 }}>
            {history.length > 0 && (
              <View style={{ marginBottom: 20 }}>
                <View style={s.historyHeader}>
                  <Text style={s.historyTitle}>البحث الأخير</Text>
                  <Pressable
                    onPress={() => {
                      setHistory([]);
                      AsyncStorage.removeItem(SEARCH_HISTORY_KEY).catch(() => {});
                    }}
                  >
                    <Text style={s.historyClear}>مسح الكل</Text>
                  </Pressable>
                </View>
                <View style={s.historyChips}>
                  {history.map((h, i) => (
                    <Pressable
                      key={i}
                      onPress={() => setQuery(h)}
                      focusable={tvMode}
                      style={({ focused }) => [s.historyChip, tvMode && tvFocusStyle(focused)]}
                    >
                      <Ionicons name="time" size={12} color={colors.textMuted} />
                      <Text style={s.historyChipText}>{h}</Text>
                    </Pressable>
                  ))}
                </View>
              </View>
            )}

            <View style={s.idleWrap}>
              <View style={s.idleIcon}>
                <Ionicons name="search" size={28} color={colors.accent} />
              </View>
              <Text style={s.idleText}>ابحث عن فيلمك أو مسلسلك المفضل</Text>
              <Text style={s.idleSub}>أو استخدم الفلاتر لاستكشاف الأفلام والمسلسلات</Text>
            </View>
          </ScrollView>
        )}

        {/* ── Results Grid ── */}
        {!loading && results.length > 0 && (
          <FlatList
            data={results}
            style={{ width: gridWidth, alignSelf: "center" }}
            key={`search-grid-${gridColumns}`}
            keyExtractor={(item) => `${item.tmdbType}-${item.id}`}
            numColumns={gridColumns}
            columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
            contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 8, paddingBottom: 88 }}
            showsVerticalScrollIndicator={false}
            ListHeaderComponent={
              <View style={s.resultsHeader}>
                <Text style={s.resultsCount}>النتائج ({results.length})</Text>
              </View>
            }
            renderItem={({ item }) => {
              const cardW = Math.max(
                88,
                Math.floor((gridWidth - 24 - 10 * (gridColumns - 1)) / gridColumns),
              );
              const cardH = Math.round(cardW * 1.44);
              const isSeries = item.tmdbType === "tv";
              const fmtLabel =
                item.mediaType === "animation" ? "أنميشن" : isSeries ? "مسلسل" : "فيلم";
              return (
                <Pressable
                  onPress={() =>
                    router.push({
                      pathname: "/film/[id]",
                      params: { id: String(item.id), type: item.tmdbType, title: item.titleAr },
                    })
                  }
                  focusable={tvMode}
                  style={({ focused }) => [
                    s.card,
                    { width: cardW, height: cardH, flex: 0 },
                    tvMode && { borderRadius: 16, padding: 2 },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <View style={[s.cardImgWrap, { width: "100%", height: "100%", aspectRatio: undefined }]}>
                    {item.posterUrl ? (
                      <SafePosterImage uri={item.posterUrl} style={s.cardImg} resizeMode="cover" />
                    ) : (
                      <View style={[s.cardImg, s.noImg]} />
                    )}
                    {item.imdbRating ? (
                      <View style={s.scoreBadge}>
                        <Ionicons name="star" size={7} color="#FBBF24" />
                        <Text style={s.scoreText}>{Number(item.imdbRating).toFixed(1)}</Text>
                      </View>
                    ) : null}
                    <View
                      style={[
                        s.fmtBadge,
                        { backgroundColor: isSeries ? "#7C3AED" : "#3B82F6" },
                      ]}
                    >
                      <Text style={s.fmtText}>{fmtLabel}</Text>
                    </View>
                    <View style={s.cardBottom}>
                      <Text style={s.cardTitleAr} numberOfLines={2}>
                        {item.titleAr || item.titleEn}
                      </Text>
                      {item.titleEn && item.titleEn.trim() !== (item.titleAr || "").trim() ? (
                        <Text style={s.cardTitle} numberOfLines={1}>
                          {item.titleEn}
                        </Text>
                      ) : null}
                    </View>
                  </View>
                </Pressable>
              );
            }}
          />
        )}

        {/* ── Empty Results ── */}
        {!loading && !showEmpty && results.length === 0 && (
          <View style={s.emptyWrap}>
            <View style={s.emptyIcon}>
              <Ionicons name="film-outline" size={28} color={colors.textMuted} />
            </View>
            <Text style={s.emptyText}>لم يُعثر على نتائج مطابقة لبحثك</Text>
            {activeFilterCount > 0 && (
              <Pressable onPress={clearFilters} style={s.emptyBtn}>
                <Text style={s.emptyBtnText}>إعادة ضبط الفلاتر</Text>
              </Pressable>
            )}
          </View>
        )}

        <AnimeFilterSheet
          visible={showFilters}
          onClose={() => setShowFilters(false)}
          onReset={clearFilters}
          resultCount={results.length}
          sortOptions={SORT_OPTIONS}
          seasonOptions={SEASON_OPTIONS}
          statusOptions={STATUS_OPTIONS}
          formatOptions={FORMAT_OPTIONS}
          genreOptions={FILTER_GENRES}
          years={YEARS}
          sort={sort}
          season={season}
          status={status}
          format={format}
          genre={genre}
          year={year}
          onSortChange={setSort}
          onSeasonChange={setSeason}
          onStatusChange={setStatus}
          onFormatChange={setFormat}
          onGenreChange={setGenre}
          onYearChange={setYear}
        />
      </View>
    </KeyboardAvoidingView>
  );
}

const makeS = (colors: ThemePalette, s: number) =>
  StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    header: {
      paddingHorizontal: Math.round(10 * s),
      paddingTop: 6,
      paddingBottom: 9,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      gap: 7,
    },
    tvHeader: { paddingHorizontal: 18, paddingTop: 10, paddingBottom: 14, gap: 9 },
    mobileHeaderTop: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 7,
    },
    mobileModeSwitch: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      padding: 2,
      borderRadius: Math.round(11 * s),
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
      flexShrink: 0,
    },
    mobileModeButton: {
      minHeight: Math.round(29 * s),
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      paddingHorizontal: Math.round(10 * s),
      borderRadius: Math.round(8 * s),
    },
    mobileModeButtonActive: { backgroundColor: "#0ea5e9" },
    mobileModeText: {
      color: colors.textMuted,
      fontSize: Math.round(11 * s),
      fontFamily: "Cairo_700Bold",
    },
    mobileModeTextActive: { color: "#ffffff" },
    mobileTitleGroup: {
      flex: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 7,
      minWidth: 0,
    },
    mobileTitle: {
      flexShrink: 1,
      color: colors.textPrimary,
      fontSize: Math.round(15.5 * s),
      fontFamily: "Cairo_800ExtraBold",
    },
    mobileBackButton: {
      width: Math.round(36 * s),
      height: Math.round(36 * s),
      alignItems: "center",
      justifyContent: "center",
      borderRadius: Math.round(11 * s),
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
      flexShrink: 0,
    },
    mobileSearchBar: {
      minHeight: Math.round(46 * s),
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 7,
      paddingHorizontal: 9,
      borderRadius: Math.round(13 * s),
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    mobileFilterButton: {
      width: Math.round(32 * s),
      height: Math.round(32 * s),
      alignItems: "center",
      justifyContent: "center",
      borderRadius: 10,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    mobileFilterButtonActive: { backgroundColor: colors.destructive, borderColor: colors.destructive },
    mobileFilterCount: {
      position: "absolute",
      top: -5,
      right: -5,
      minWidth: 15,
      height: 15,
      alignItems: "center",
      justifyContent: "center",
      borderRadius: 8,
      backgroundColor: colors.destructive,
      borderWidth: 1,
      borderColor: colors.surface,
    },
    mobileFilterCountText: {
      color: colors.destructiveForeground,
      fontSize: 8,
      fontFamily: "Cairo_700Bold",
    },
    mobileSearchInput: {
      flex: 1,
      minWidth: 0,
      color: colors.textPrimary,
      fontSize: Math.round(12.5 * s),
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
      writingDirection: "rtl",
    },
    historyHeader: {
      flexDirection: "row",
      justifyContent: "space-between",
      alignItems: "center",
      marginBottom: 10,
    },
    historyTitle: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textMuted },
    historyClear: { fontSize: 10, color: colors.accent, fontFamily: "Cairo_700Bold" },
    historyChips: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
    historyChip: {
      flexDirection: "row",
      alignItems: "center",
      gap: 6,
      paddingHorizontal: 12,
      paddingVertical: 7,
      borderRadius: 12,
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    historyChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    resultsHeader: { alignItems: "flex-end", paddingBottom: 10 },
    resultsCount: {
      color: colors.textSecondary,
      fontSize: 11,
      fontFamily: "Cairo_700Bold",
      textAlign: "right",
      writingDirection: "rtl",
    },
    loadingWrap: { flex: 1, alignItems: "center", justifyContent: "center" },
    card: { flex: 1 },
    cardImgWrap: {
      borderRadius: 14,
      overflow: "hidden",
      aspectRatio: 2 / 3,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    cardImg: { width: "100%", height: "100%" },
    noImg: { backgroundColor: colors.accentSurface, alignItems: "center", justifyContent: "center" },
    scoreBadge: {
      position: "absolute",
      top: 6,
      right: 6,
      flexDirection: "row",
      alignItems: "center",
      gap: 2,
      backgroundColor: "rgba(0,0,0,0.7)",
      borderRadius: 8,
      paddingHorizontal: 5,
      paddingVertical: 2,
      borderWidth: 1,
      borderColor: "rgba(251,191,36,0.2)",
    },
    scoreText: { fontSize: 7, fontFamily: "Cairo_700Bold", color: "#fff" },
    fmtBadge: { position: "absolute", top: 6, left: 6, paddingHorizontal: 5, paddingVertical: 2, borderRadius: 6 },
    fmtText: { fontSize: 7, fontFamily: "Cairo_700Bold", color: "#fff" },
    cardBottom: {
      position: "absolute",
      bottom: 0,
      left: 0,
      right: 0,
      paddingHorizontal: 7,
      paddingVertical: 6,
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
    idleWrap: { alignItems: "center", paddingTop: 20 },
    idleIcon: {
      width: 72,
      height: 72,
      borderRadius: 24,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      alignItems: "center",
      justifyContent: "center",
      marginBottom: 16,
    },
    idleText: { fontSize: 16, fontFamily: "Cairo_700Bold", color: colors.textSecondary, marginBottom: 6 },
    idleSub: { fontSize: 12, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "center" },
    emptyWrap: { flex: 1, alignItems: "center", justifyContent: "center", paddingHorizontal: 24 },
    emptyIcon: {
      width: 64,
      height: 64,
      borderRadius: 24,
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
      marginBottom: 16,
    },
    emptyText: {
      fontSize: 14,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
      textAlign: "center",
      marginBottom: 16,
    },
    emptyBtn: {
      paddingHorizontal: 16,
      paddingVertical: 10,
      borderRadius: 14,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    emptyBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.accent },
  });
