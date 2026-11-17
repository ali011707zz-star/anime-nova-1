import React, { useState, useEffect, useCallback, useRef, useMemo } from "react";
import {
  View,
  Text,
  TextInput,
  FlatList,
  Image,
  ScrollView,
  ActivityIndicator,
  StyleSheet,
  Platform,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { FilmSummary } from "@/utils/filmCatalog";
import { isTvDevice, TvPressable as Pressable } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";

function useAnimationTheme() {
  const colors = useColors();
  const s = useMemo(() => createAnimationStyles(colors), [colors]);
  return { colors, s };
}

type MediaType = "all" | "movie" | "series";

const GENRES: string[] = [
  "الكل",
  "عائلي",
  "كوميدي",
  "مغامرة",
  "أكشن",
  "فانتازيا",
  "خيال علمي",
  "دراما",
];

const SORT_OPTIONS = [
  { value: "popular", label: "الأكثر مشاهدة" },
  { value: "rating", label: "الأعلى تقييماً" },
  { value: "year", label: "الأحدث" },
  { value: "title", label: "الأبجدي" },
] as const;

const CUR_YEAR = new Date().getFullYear();
const YEARS = ["الكل", ...Array.from({ length: 14 }, (_, i) => String(CUR_YEAR - i))];

export default function AnimationsScreen() {
  const { colors, s } = useAnimationTheme();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const tvMode = isTvDevice(width, height);
  const gridColumns = tvMode ? 4 : 3;

  const [type, setType] = useState<MediaType>("all");
  const [genre, setGenre] = useState<string>("الكل");
  const [sort, setSort] = useState<"popular" | "rating" | "year" | "title">("popular");
  const [year, setYear] = useState("");
  const [page, setPage] = useState(1);
  const [items, setItems] = useState<FilmSummary[]>([]);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [showFilters, setShowFilters] = useState(false);

  const genRef = useRef(0);
  const searchInput = useRef<TextInput>(null);

  const load = useCallback(
    async (
      t: MediaType,
      g: string,
      srt: "popular" | "rating" | "year" | "title",
      y: string,
      q: string,
      p: number,
      gen: number,
    ) => {
      setLoading(true);
      try {
        const res = await fetchFilmBrowse({
          category: "animation",
          genre: g !== "الكل" ? g : undefined,
          sort: srt,
          year: y || undefined,
          query: q.trim() || undefined,
          page: p,
        });
        if (genRef.current !== gen) return;
        let results = res.items || [];
        if (t === "movie") results = results.filter((i) => i.kind === "movie");
        if (t === "series") results = results.filter((i) => i.kind === "series");

        if (p === 1) {
          setItems(results);
        } else {
          setItems((prev) => {
            const ids = new Set(prev.map((i) => i.id));
            return [...prev, ...results.filter((i) => !ids.has(i.id))];
          });
        }
        setHasMore(Boolean(res.hasNextPage));
        setPage(p);
      } catch {
        // ignore
      }
      if (genRef.current === gen) setLoading(false);
    },
    [],
  );

  useEffect(() => {
    const gen = ++genRef.current;
    setItems([]);
    setPage(1);
    setHasMore(true);
    load(type, genre, sort, year, searchQ, 1, gen);
  }, [type, genre, sort, year, searchQ, load]);

  const activeFilterCount =
    (genre !== "الكل" ? 1 : 0) + (sort !== "popular" ? 1 : 0) + (year ? 1 : 0);

  const renderItem = ({ item }: { item: FilmSummary }) => (
    <Pressable
      style={[s.card, tvMode && s.tvCard, { flex: 1 / gridColumns }]}
      onPress={() =>
        router.push({
          pathname: "/film/[id]",
          params: { id: String(item.id), title: item.titleAr },
        })
      }
    >
      <View style={[s.cardImgWrap, tvMode && s.tvCardImgWrap]}>
        {item.poster ? (
          <Image source={{ uri: item.poster }} style={s.cardImg} />
        ) : (
          <View style={[s.cardImg, s.noImg]}>
            <Ionicons name="film" size={28} color={colors.textMuted} />
          </View>
        )}
        <View style={s.cardGrad} />
        {(item.rating ?? item.imdbRating ?? 0) > 0 && (
          <View style={[s.scoreBadge, tvMode && s.tvScoreBadge]}>
            <Ionicons name="star" size={8} color="#FBBF24" />
            <Text style={[s.scoreText, tvMode && s.tvScoreText]}>
              {(item.rating ?? item.imdbRating ?? 0).toFixed(1)}
            </Text>
          </View>
        )}
        {item.year ? (
          <Text style={[s.yearText, tvMode && s.tvYearText]}>{item.year}</Text>
        ) : null}
      </View>
      <Text style={[s.cardTitle, tvMode && s.tvCardTitle]} numberOfLines={2}>
        {item.titleAr || item.titleEn}
      </Text>
    </Pressable>
  );

  return (
    <View style={[s.container, { paddingTop: topPad }]}>
      <View style={[s.header, tvMode && s.tvHeader]}>
        <View style={[s.headerRow, tvMode && s.tvHeaderRow]}>
          <View style={{ flex: 1 }}>
            <Text style={[s.headerTitle, tvMode && s.tvHeaderTitle]}>
              رسوم متحركة وأنيميشن
            </Text>
            <Text style={[s.headerSub, tvMode && s.tvHeaderSub]}>
              أفلام ومسلسلات أنيميشن عالمية جاهزة للمشاهدة المباشرة
            </Text>
          </View>
          <View style={{ flexDirection: "row", gap: 8 }}>
            <Pressable
              onPress={() => setShowFilters((o) => !o)}
              style={[s.iconBtn, tvMode && s.tvIconBtn, showFilters && s.iconBtnActive]}
            >
              <Ionicons
                name="options"
                size={tvMode ? 20 : 18}
                color={showFilters ? colors.accent : colors.textSecondary}
              />
              {activeFilterCount > 0 && (
                <View style={s.filterBadge}>
                  <Text style={s.filterBadgeText}>{activeFilterCount}</Text>
                </View>
              )}
            </Pressable>
            <Pressable
              onPress={() => {
                setSearchOpen((o) => !o);
                setTimeout(() => searchInput.current?.focus(), 100);
              }}
              style={[s.iconBtn, tvMode && s.tvIconBtn, searchOpen && s.iconBtnActive]}
            >
              <Ionicons
                name="search"
                size={tvMode ? 20 : 18}
                color={searchOpen ? colors.accent : colors.textSecondary}
              />
            </Pressable>
          </View>
          <Pressable
            accessibilityRole="button"
            accessibilityLabel="رجوع"
            onPress={() => (router.canGoBack() ? router.back() : router.push("/(tabs)"))}
            style={[s.iconBtn, tvMode && s.tvIconBtn]}
          >
            <Ionicons
              name="arrow-back"
              size={20}
              color={colors.textSecondary}
              style={{ transform: [{ scaleX: -1 }] }}
            />
          </Pressable>
        </View>

        <View style={[s.typeTabs, tvMode && s.tvTypeTabs]}>
          {(
            [
              { id: "all", label: "الكل" },
              { id: "movie", label: "أفلام أنيميشن" },
              { id: "series", label: "مسلسلات أنيميشن" },
            ] as const
          ).map((tab) => (
            <Pressable
              key={tab.id}
              onPress={() => setType(tab.id)}
              style={[
                s.typeTab,
                tvMode && s.tvTypeTab,
                type === tab.id && s.typeTabActive,
              ]}
            >
              <Text
                style={[
                  s.typeTabText,
                  tvMode && s.tvTypeTabText,
                  type === tab.id && s.typeTabTextActive,
                ]}
              >
                {tab.label}
              </Text>
            </Pressable>
          ))}
        </View>

        {searchOpen && (
          <View style={[s.searchWrap, tvMode && s.tvSearchWrap]}>
            <View style={[s.searchBar, tvMode && s.tvSearchBar]}>
              <Ionicons name="search" size={16} color={colors.accent} />
              <TextInput
                ref={searchInput}
                value={searchQ}
                onChangeText={setSearchQ}
                placeholder="ابحث عن فيلم أو مسلسل أنيميشن..."
                placeholderTextColor={colors.textMuted}
                style={[s.searchInput, tvMode && s.tvSearchInput]}
              />
              {searchQ.length > 0 && (
                <Pressable onPress={() => setSearchQ("")}>
                  <Ionicons name="close-circle" size={16} color={colors.textMuted} />
                </Pressable>
              )}
            </View>
          </View>
        )}

        {showFilters && (
          <View style={[s.filterPanel, tvMode && s.tvFilterPanel]}>
            <Text style={[s.filterLabel, tvMode && s.tvFilterLabel]}>التصنيف</Text>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ gap: 6, marginBottom: 10 }}
            >
              {GENRES.map((g) => (
                <Pressable
                  key={g}
                  onPress={() => setGenre(g)}
                  style={[
                    s.filterChip,
                    tvMode && s.tvFilterChip,
                    genre === g && s.filterChipActive,
                  ]}
                >
                  <Text
                    style={[
                      s.filterChipText,
                      tvMode && s.tvFilterChipText,
                      genre === g && s.filterChipTextActive,
                    ]}
                  >
                    {g}
                  </Text>
                </Pressable>
              ))}
            </ScrollView>

            <Text style={[s.filterLabel, tvMode && s.tvFilterLabel]}>الترتيب</Text>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ gap: 6, marginBottom: 10 }}
            >
              {SORT_OPTIONS.map((opt) => (
                <Pressable
                  key={opt.value}
                  onPress={() => setSort(opt.value)}
                  style={[
                    s.filterChip,
                    tvMode && s.tvFilterChip,
                    sort === opt.value && s.filterChipActive,
                  ]}
                >
                  <Text
                    style={[
                      s.filterChipText,
                      tvMode && s.tvFilterChipText,
                      sort === opt.value && s.filterChipTextActive,
                    ]}
                  >
                    {opt.label}
                  </Text>
                </Pressable>
              ))}
            </ScrollView>

            <Text style={[s.filterLabel, tvMode && s.tvFilterLabel]}>السنة</Text>
            <ScrollView
              horizontal
              showsHorizontalScrollIndicator={false}
              contentContainerStyle={{ gap: 6 }}
            >
              {YEARS.map((y) => {
                const active = (y === "الكل" && !year) || y === year;
                return (
                  <Pressable
                    key={y}
                    onPress={() => setYear(y === "الكل" ? "" : y)}
                    style={[
                      s.filterChip,
                      tvMode && s.tvFilterChip,
                      active && s.filterChipActive,
                    ]}
                  >
                    <Text
                      style={[
                        s.filterChipText,
                        tvMode && s.tvFilterChipText,
                        active && s.filterChipTextActive,
                      ]}
                    >
                      {y}
                    </Text>
                  </Pressable>
                );
              })}
            </ScrollView>
          </View>
        )}
      </View>

      {loading && items.length === 0 ? (
        <View style={s.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={s.emptyText}>جاري تحميل أعمال الأنيميشن...</Text>
        </View>
      ) : items.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="sparkles-outline" size={40} color={colors.textMuted} />
          <Text style={s.emptyTitle}>لا توجد أعمال مطابقة للفلتر المحدد</Text>
          <Pressable
            onPress={() => {
              setGenre("الكل");
              setYear("");
              setSearchQ("");
              setType("all");
            }}
            style={s.emptyBtn}
          >
            <Text style={s.emptyBtnText}>إعادة ضبط الفلاتر</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          key={`anim-grid-${gridColumns}`}
          data={items}
          numColumns={gridColumns}
          keyExtractor={(item) => String(item.id)}
          renderItem={renderItem}
          contentContainerStyle={[s.grid, tvMode && s.tvGrid]}
          columnWrapperStyle={[s.gridRow, tvMode && s.tvGridRow]}
          showsVerticalScrollIndicator={false}
          onEndReached={() => {
            if (!loading && hasMore) {
              load(type, genre, sort, year, searchQ, page + 1, genRef.current);
            }
          }}
          onEndReachedThreshold={0.4}
          ListFooterComponent={
            loading && items.length > 0 ? (
              <View style={{ padding: 20, alignItems: "center" }}>
                <ActivityIndicator color={colors.accent} />
              </View>
            ) : null
          }
        />
      )}
    </View>
  );
}

const createAnimationStyles = (colors: ThemePalette) =>
  StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    header: {
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      paddingHorizontal: 16,
      paddingTop: 12,
      paddingBottom: 10,
    },
    headerRow: {
      flexDirection: "row",
      direction: "ltr",
      alignItems: "center",
      justifyContent: "space-between",
      marginBottom: 12,
    },
    headerTitle: {
      fontSize: 22,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    tvHeader: { paddingHorizontal: 32, paddingTop: 16, paddingBottom: 12 },
    tvHeaderRow: { marginBottom: 8 },
    tvHeaderTitle: { fontSize: 25, lineHeight: 34 },
    tvHeaderSub: { fontSize: 14, lineHeight: 21 },
    headerSub: {
      fontSize: 11,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
    },
    iconBtn: {
      width: 36,
      height: 36,
      borderRadius: 12,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    tvIconBtn: { width: 44, height: 44, borderRadius: 13 },
    iconBtnActive: {
      backgroundColor: colors.accentSurface,
      borderColor: colors.accentBorder,
    },
    filterBadge: {
      position: "absolute",
      top: -4,
      left: -4,
      width: 16,
      height: 16,
      borderRadius: 8,
      backgroundColor: colors.accent,
      alignItems: "center",
      justifyContent: "center",
    },
    filterBadgeText: { fontSize: 8, color: "#fff", fontWeight: "800" },
    typeTabs: { flexDirection: "row", gap: 8, marginBottom: 10 },
    typeTab: {
      flex: 1,
      paddingVertical: 7,
      borderRadius: 16,
      alignItems: "center",
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    tvTypeTabs: { gap: 6, marginBottom: 8 },
    tvTypeTab: { paddingVertical: 8, borderRadius: 13 },
    typeTabActive: {
      backgroundColor: colors.accent,
      borderColor: colors.accent,
    },
    typeTabText: {
      fontSize: 13,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
    },
    tvTypeTabText: { fontSize: 16, lineHeight: 23 },
    typeTabTextActive: { color: colors.buttonText },
    searchWrap: { marginBottom: 8 },
    tvSearchWrap: { marginBottom: 8 },
    searchBar: {
      flexDirection: "row",
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.input,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      paddingHorizontal: 12,
      paddingVertical: 10,
      marginBottom: 8,
    },
    tvSearchBar: {
      borderRadius: 11,
      paddingHorizontal: 12,
      paddingVertical: 6,
      marginBottom: 5,
    },
    searchInput: {
      flex: 1,
      color: colors.textPrimary,
      fontSize: 14,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
    },
    tvSearchInput: { fontSize: 14, lineHeight: 21 },
    filterPanel: {
      backgroundColor: colors.accentSurface,
      borderRadius: 16,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      padding: 12,
      marginBottom: 8,
    },
    tvFilterPanel: { borderRadius: 14, padding: 10 },
    filterLabel: {
      fontSize: 9,
      fontFamily: "Cairo_700Bold",
      color: colors.textMuted,
      marginBottom: 8,
      textAlign: "right",
    },
    tvFilterLabel: { fontSize: 12, marginBottom: 6 },
    filterChip: {
      paddingHorizontal: 10,
      paddingVertical: 5,
      borderRadius: 10,
      backgroundColor: colors.input,
      borderWidth: 1,
      borderColor: colors.border,
    },
    tvFilterChip: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 9 },
    filterChipActive: {
      backgroundColor: colors.accent,
      borderColor: colors.accent,
    },
    filterChipText: {
      fontSize: 10,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
    },
    tvFilterChipText: { fontSize: 11, lineHeight: 17 },
    filterChipTextActive: { color: colors.buttonText },
    grid: { paddingHorizontal: 12, paddingTop: 12, paddingBottom: 100 },
    gridRow: { gap: 10 },
    card: { flex: 1, marginBottom: 14 },
    tvGrid: { paddingHorizontal: 12, paddingTop: 10 },
    tvGridRow: { gap: 10, marginBottom: 10 },
    tvCard: { marginBottom: 10 },
    cardImgWrap: {
      borderRadius: 14,
      overflow: "hidden",
      aspectRatio: 2 / 3,
      backgroundColor: colors.surfaceElevated,
    },
    tvCardImgWrap: { borderRadius: 15 },
    cardImg: { width: "100%", height: "100%" },
    noImg: {
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.accentSurface,
    },
    cardGrad: { ...StyleSheet.absoluteFillObject, backgroundColor: "transparent" },
    scoreBadge: {
      position: "absolute",
      top: 6,
      left: 6,
      flexDirection: "row",
      alignItems: "center",
      gap: 2,
      backgroundColor: "rgba(0,0,0,0.72)",
      borderRadius: 8,
      paddingHorizontal: 5,
      paddingVertical: 3,
      borderWidth: 1,
      borderColor: "rgba(251,191,36,0.18)",
    },
    scoreText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#fff" },
    tvScoreBadge: { top: 7, left: 7, borderRadius: 8, paddingHorizontal: 6, paddingVertical: 3 },
    tvScoreText: { fontSize: 11 },
    yearText: {
      position: "absolute",
      bottom: 6,
      left: 6,
      fontSize: 8,
      color: "rgba(255,255,255,0.8)",
      fontFamily: "Cairo_400Regular",
    },
    tvYearText: { bottom: 7, left: 7, fontSize: 10 },
    cardTitle: {
      marginTop: 6,
      fontSize: 10.5,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      lineHeight: 15,
      textAlign: "right",
    },
    tvCardTitle: { marginTop: 5, fontSize: 15, lineHeight: 22 },
    center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
    emptyText: {
      fontSize: 13,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
    },
    emptyTitle: {
      fontSize: 15,
      fontFamily: "Cairo_700Bold",
      color: colors.textSecondary,
    },
    emptyBtn: {
      paddingHorizontal: 16,
      paddingVertical: 8,
      borderRadius: 14,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    emptyBtnText: {
      fontSize: 12,
      fontFamily: "Cairo_700Bold",
      color: colors.accent,
    },
  });
