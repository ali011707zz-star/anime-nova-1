import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
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
import { fetchFilmBrowse } from "@/utils/filmApi";
import {
  NOVA_FILM_GENRES,
  type FilmSummary,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

const TYPE_TABS = [
  { id: "all", label: "الكل" },
  { id: "movie", label: "أفلام أجنبية" },
  { id: "series", label: "مسلسلات" },
  { id: "animation", label: "أنميشن" },
] as const;

const SORT_OPTIONS = [
  { id: "popular", label: "الأكثر شعبية" },
  { id: "rating", label: "الأعلى تقييماً" },
  { id: "year", label: "الأحدث" },
] as const;

export default function NovaFilmBrowseScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width } = useWindowDimensions();
  const params = useLocalSearchParams<{ type?: string; genre?: string }>();

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [selectedType, setSelectedType] = useState<string>(params.type || "all");
  const [selectedGenre, setSelectedGenre] = useState<string>(params.genre || "الكل");
  const [sortBy, setSortBy] = useState<string>("popular");
  const [query, setQuery] = useState<string>("");
  const [debouncedQuery, setDebouncedQuery] = useState<string>("");

  const [items, setItems] = useState<FilmSummary[]>([]);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [errorMsg, setErrorMsg] = useState<string | null>(null);
  const genRef = useRef(0);

  useEffect(() => {
    if (params.type) setSelectedType(params.type);
    if (params.genre) setSelectedGenre(params.genre);
  }, [params.type, params.genre]);

  useEffect(() => {
    const t = setTimeout(() => setDebouncedQuery(query.trim()), 350);
    return () => clearTimeout(t);
  }, [query]);

  const loadPage = useCallback(
    async (pageNum: number, reset: boolean) => {
      const myGen = ++genRef.current;
      if (reset) {
        setLoading(true);
        setErrorMsg(null);
      } else {
        setLoadingMore(true);
      }
      try {
        const res = await fetchFilmBrowse({
          category: selectedType,
          genre: selectedGenre,
          sort: sortBy,
          page: pageNum,
          q: debouncedQuery || undefined,
        });
        if (genRef.current !== myGen) return;
        const incoming = res.results || [];
        setTotalPages(Math.max(1, res.totalPages || 1));
        setPage(pageNum);
        if (reset) {
          setItems(incoming);
        } else {
          setItems((prev) => {
            const seen = new Set(prev.map((x) => `${x.tmdbType}:${x.id}`));
            return [...prev, ...incoming.filter((x) => !seen.has(`${x.tmdbType}:${x.id}`))];
          });
        }
      } catch {
        if (genRef.current === myGen && reset) {
          setErrorMsg("تعذّر تحميل الأعمال من الخادم");
        }
      } finally {
        if (genRef.current === myGen) {
          setLoading(false);
          setLoadingMore(false);
        }
      }
    },
    [selectedType, selectedGenre, sortBy, debouncedQuery],
  );

  useEffect(() => {
    void loadPage(1, true);
  }, [loadPage]);

  const cols = getFilmGridColumnCount(width);
  const gap = 10;
  const cardWidth = Math.floor((width - 28 - (cols - 1) * gap) / cols);
  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* CatalogPageHeader: Back + Title on Physical RIGHT, Menu on Physical LEFT */}
      <View
        style={[
          s.topHeader,
          {
            paddingTop: topPad + 4,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <View style={s.headerRightGroup}>
          <Pressable
            accessibilityLabel="رجوع"
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
            style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <View style={s.headerTitleWrap}>
            <Text style={[s.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>
              تصفح مكتبة <Text style={{ color: "#0EA5E9" }}>NOVA FILM</Text>
            </Text>
          </View>
        </View>

        <Pressable
          accessibilityLabel="فتح القائمة"
          onPress={() => setDrawerVisible(true)}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="menu" size={20} color={colors.textPrimary} />
        </Pressable>
      </View>

      {/* Category Underline Tabs */}
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

      {/* Live Search & Filter Bar */}
      <View style={s.filtersWrap}>
        <View style={[s.searchBox, { backgroundColor: colors.input, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={query}
            onChangeText={setQuery}
            placeholder="ابحث عن فيلم، مسلسل، أنميشن..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.textPrimary }]}
            returnKeyType="search"
          />
          {query.length > 0 ? (
            <Pressable onPress={() => setQuery("")} hitSlop={8}>
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

          {NOVA_FILM_GENRES.map((genre) => {
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

      {loading ? (
        <View style={s.emptyWrap}>
          <ActivityIndicator size="large" color="#0EA5E9" />
          <Text style={[s.emptyText, { color: colors.textSecondary }]}>جارٍ تحميل الأعمال...</Text>
        </View>
      ) : errorMsg && items.length === 0 ? (
        <View style={s.emptyWrap}>
          <Ionicons name="cloud-offline-outline" size={42} color="#F87171" />
          <Text style={[s.emptyText, { color: colors.textSecondary }]}>{errorMsg}</Text>
          <Pressable onPress={() => void loadPage(1, true)} style={s.retryBtn}>
            <Text style={s.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          key={`grid-${cols}`}
          data={items}
          numColumns={cols}
          keyExtractor={(item) => `${item.tmdbType}-${item.id}`}
          showsVerticalScrollIndicator={false}
          contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 98, gap: 14 }}
          columnWrapperStyle={{ gap }}
          onEndReachedThreshold={0.45}
          onEndReached={() => {
            if (!loadingMore && !loading && page < totalPages) {
              void loadPage(page + 1, false);
            }
          }}
          ListFooterComponent={
            loadingMore ? (
              <View style={{ paddingVertical: 18 }}>
                <ActivityIndicator size="small" color="#0EA5E9" />
              </View>
            ) : null
          }
          ListEmptyComponent={
            <View style={s.emptyWrap}>
              <Ionicons name="film-outline" size={42} color={colors.textMuted} />
              <Text style={[s.emptyText, { color: colors.textSecondary }]}>
                لا توجد نتائج مطابقة لبحثك
              </Text>
            </View>
          }
          renderItem={({ item }) => (
            <FilmPosterCard item={item} cardWidth={cardWidth} tvFocusable={false} />
          )}
        />
      )}

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  topHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: StyleSheet.hairlineWidth,
    gap: 10,
  },
  headerRightGroup: {
    flex: 1,
    minWidth: 0,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  headerTitleWrap: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
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
    textAlign: "right",
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
  chipDivider: {
    width: 1,
    height: 20,
    marginHorizontal: 2,
  },
  chipText: {
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  emptyWrap: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 72,
    gap: 10,
  },
  emptyText: {
    fontSize: 13.5,
    fontFamily: "Cairo_600SemiBold",
  },
  retryBtn: {
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 20,
    paddingVertical: 9,
    borderRadius: 12,
    marginTop: 4,
  },
  retryText: {
    color: "#FFFFFF",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
});
