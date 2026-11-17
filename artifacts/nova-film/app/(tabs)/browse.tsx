import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useEffect, useMemo, useState } from "react";
import {
  FlatList,
  I18nManager,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { FilmPosterCard, getFilmGridColumnCount } from "@/components/FilmPosterCard";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadWatchedMap,
  makeEpisodeKey,
} from "@/utils/filmCatalog";

const ROW_HEADER = I18nManager.isRTL ? "row-reverse" : "row";
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

const TYPE_TABS = [
  { id: "all", label: "الكل" },
  { id: "movie", label: "أفلام أجنبية" },
  { id: "series", label: "مسلسلات عالمية" },
  { id: "animation", label: "أنميشن" },
] as const;

const SORT_OPTIONS = [
  { id: "rating", label: "الأعلى تقييماً" },
  { id: "year", label: "الأحدث" },
  { id: "popular", label: "الأكثر مشاهدة" },
] as const;

export default function NovaFilmBrowseScreen() {
  const params = useLocalSearchParams<{ type?: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [selectedType, setSelectedType] = useState<string>("all");
  const [selectedGenre, setSelectedGenre] = useState<string>("الكل");
  const [sortBy, setSortBy] = useState<"rating" | "year" | "popular">("rating");
  const [query, setQuery] = useState<string>("");
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  useEffect(() => {
    if (params.type && ["all", "movie", "series", "animation"].includes(params.type)) {
      setSelectedType(params.type);
    }
  }, [params.type]);

  useEffect(() => {
    loadWatchedMap().then(setWatchedMap);
  }, []);

  const allGenres = useMemo(() => {
    const set = new Set<string>(["الكل"]);
    NOVA_FILM_CATALOG.forEach((t) => t.genres.forEach((g) => set.add(g)));
    return Array.from(set);
  }, []);

  const cols = getFilmGridColumnCount(width);
  const gap = 10;
  const cardWidth = Math.floor((width - 28 - (cols - 1) * gap) / cols);

  const items = useMemo(() => {
    const q = query.trim().toLowerCase();
    const filtered = NOVA_FILM_CATALOG.filter((item) => {
      if (selectedType !== "all" && item.mediaType !== selectedType) return false;
      if (selectedGenre !== "الكل" && !item.genres.includes(selectedGenre)) return false;
      if (q) {
        const hay = `${item.titleAr} ${item.titleEn} ${item.director} ${item.genres.join(" ")}`.toLowerCase();
        if (!hay.includes(q)) return false;
      }
      return true;
    });

    return filtered.sort((a, b) => {
      if (sortBy === "year") return b.year - a.year || b.imdbRating - a.imdbRating;
      if (sortBy === "popular") return (b.popularityCount || 0) - (a.popularityCount || 0);
      return b.imdbRating - a.imdbRating;
    });
  }, [selectedType, selectedGenre, sortBy, query]);

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* CatalogPageHeader matching Anime NOVA */}
      <View
        style={[
          s.topHeader,
          {
            paddingTop: topPad + 4,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <Pressable
          onPress={() => setDrawerVisible(true)}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="menu" size={20} color={colors.textPrimary} />
        </Pressable>

        <View style={{ flex: 1, alignItems: "flex-end" }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]}>
            تصفح مكتبة <Text style={{ color: "#0EA5E9" }}>NOVA FILM</Text>
          </Text>
        </View>

        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
      </View>

      {/* Category Underline Tabs (CatalogTabs style) */}
      <View style={[s.tabsBar, { borderBottomColor: colors.border }]}>
        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={s.tabsScroll}>
          {TYPE_TABS.map((tab) => {
            const active = selectedType === tab.id;
            return (
              <Pressable
                key={tab.id}
                onPress={() => setSelectedType(tab.id)}
                style={s.tabBtn}
              >
                <Text
                  style={[
                    s.tabText,
                    { color: active ? "#0EA5E9" : colors.textMuted },
                  ]}
                >
                  {tab.label}
                </Text>
                {active ? <View style={s.tabIndicator} /> : null}
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      {/* Search + Sort + Genre Filters */}
      <View style={s.filtersWrap}>
        <View style={[s.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={query}
            onChangeText={setQuery}
            placeholder="ابحث بالاسم العربي أو الإنجليزي أو المخرج..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.textPrimary }]}
          />
          {query ? (
            <Pressable onPress={() => setQuery("")}>
              <Ionicons name="close-circle" size={17} color={colors.textMuted} />
            </Pressable>
          ) : null}
        </View>

        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={s.chipsRow}>
          {SORT_OPTIONS.map((opt) => {
            const active = sortBy === opt.id;
            return (
              <Pressable
                key={opt.id}
                onPress={() => setSortBy(opt.id)}
                style={[
                  s.sortChip,
                  {
                    backgroundColor: active ? "#0EA5E9" : colors.surfaceElevated,
                    borderColor: active ? "#0EA5E9" : colors.border,
                  },
                ]}
              >
                <Text style={[s.chipText, { color: active ? "#FFFFFF" : colors.textPrimary }]}>
                  {opt.label}
                </Text>
              </Pressable>
            );
          })}
          <View style={[s.chipDivider, { backgroundColor: colors.border }]} />
          {allGenres.map((genre) => {
            const active = selectedGenre === genre;
            return (
              <Pressable
                key={genre}
                onPress={() => setSelectedGenre(genre)}
                style={[
                  s.genreChip,
                  {
                    backgroundColor: active ? colors.accentSurface : colors.card,
                    borderColor: active ? colors.accentBorder : colors.border,
                  },
                ]}
              >
                <Text style={[s.chipText, { color: active ? colors.accent : colors.textSecondary }]}>
                  {genre}
                </Text>
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      <FlatList
        data={items}
        key={`browse-grid-${cols}`}
        numColumns={cols}
        keyExtractor={(item) => String(item.id)}
        contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 100, gap: 14 }}
        columnWrapperStyle={{ gap, flexDirection: ROW_RTL }}
        ListEmptyComponent={
          <View style={s.emptyBox}>
            <Ionicons name="film-outline" size={44} color={colors.textMuted} />
            <Text style={[s.emptyText, { color: colors.textSecondary }]}>
              لا توجد نتائج مطابقة للبحث الحالي
            </Text>
          </View>
        }
        renderItem={({ item }) => {
          const watchedCount = item.episodes.filter(
            (ep) => watchedMap[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)],
          ).length;
          const progress = item.episodes.length > 0 ? watchedCount / item.episodes.length : 0;
          return (
            <FilmPosterCard
              item={item}
              cardWidth={cardWidth}
              watchedCount={watchedCount}
              progress={progress}
            />
          );
        }}
      />

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  topHeader: {
    flexDirection: ROW_HEADER,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: StyleSheet.hairlineWidth,
    gap: 10,
  },
  iconBtn: {
    width: 39,
    height: 39,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitle: {
    fontSize: 17,
    lineHeight: 26,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  tabsBar: {
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  tabsScroll: {
    paddingHorizontal: 14,
    gap: 20,
    flexDirection: ROW_RTL,
  },
  tabBtn: {
    minHeight: 46,
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 6,
    position: "relative",
  },
  tabText: {
    fontSize: 13.5,
    lineHeight: 20,
    fontFamily: "Cairo_700Bold",
    paddingBottom: 4,
    includeFontPadding: true,
  },
  tabIndicator: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    height: 3,
    backgroundColor: "#0EA5E9",
    borderTopLeftRadius: 3,
    borderTopRightRadius: 3,
  },
  filtersWrap: {
    paddingHorizontal: 14,
    paddingTop: 12,
    paddingBottom: 12,
    gap: 10,
  },
  searchBox: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 13,
    paddingHorizontal: 12,
    height: 44,
  },
  searchInput: {
    flex: 1,
    textAlign: "right",
    fontSize: 13,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
  },
  chipsRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingVertical: 2,
  },
  sortChip: {
    borderWidth: 1,
    borderRadius: 11,
    paddingHorizontal: 14,
    paddingVertical: 7,
  },
  genreChip: {
    borderWidth: 1,
    borderRadius: 11,
    paddingHorizontal: 14,
    paddingVertical: 7,
  },
  chipDivider: { width: 1, height: 22, marginHorizontal: 2 },
  chipText: {
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  emptyBox: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 64,
    gap: 10,
  },
  emptyText: {
    fontSize: 14,
    fontFamily: "Cairo_600SemiBold",
  },
});
