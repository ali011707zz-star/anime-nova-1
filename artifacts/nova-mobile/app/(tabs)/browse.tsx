import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";

/* ── Data ── */
interface AnimeResult {
  id: number;
  title: { romaji: string; english?: string };
  coverImage: { large: string; extraLarge?: string };
  averageScore?: number;
  episodes?: number;
  format?: string;
  status?: string;
  startDate?: { year?: number };
  genres?: string[];
}

const FORMAT_OPTIONS = [
  { label: "الكل", value: "" }, { label: "مسلسل", value: "TV" },
  { label: "فيلم", value: "MOVIE" }, { label: "OVA", value: "OVA" },
  { label: "ONA", value: "ONA" }, { label: "خاص", value: "SPECIAL" },
];

const SORT_OPTIONS = [
  { label: "رائج", value: "TRENDING_DESC" },
  { label: "الأشهر", value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "الأحدث", value: "START_DATE_DESC" },
];

const SEASON_OPTIONS = [
  { label: "الكل", value: "" },
  { label: "❄️ شتاء", value: "WINTER" },
  { label: "🌸 ربيع", value: "SPRING" },
  { label: "☀️ صيف", value: "SUMMER" },
  { label: "🍂 خريف", value: "FALL" },
];

const CUR_YEAR = new Date().getFullYear();
const START_YEAR = 1990;
const YEARS = ["الكل", ...Array.from({ length: CUR_YEAR - START_YEAR + 1 }, (_, i) => String(CUR_YEAR - i))];

const GENRES_WITH_COVERS = [
  { genre: "Action",       ar: "أكشن",       color: "#EF4444" },
  { genre: "Romance",      ar: "رومانسي",    color: "#EC4899" },
  { genre: "Comedy",       ar: "كوميدي",     color: "#F59E0B" },
  { genre: "Fantasy",      ar: "خيال",        color: "#8B5CF6" },
  { genre: "Drama",        ar: "دراما",       color: "#3B82F6" },
  { genre: "Sci-Fi",       ar: "خيال علمي",  color: "#06B6D4" },
  { genre: "Horror",       ar: "رعب",         color: "#374151" },
  { genre: "Adventure",    ar: "مغامرة",     color: "#10B981" },
  { genre: "Supernatural", ar: "خوارق",      color: "#7C3AED" },
  { genre: "Sports",       ar: "رياضة",       color: "#22C55E" },
  { genre: "Slice of Life",ar: "حياة يومية", color: "#F97316" },
  { genre: "Mystery",      ar: "غموض",        color: "#6366F1" },
  { genre: "Psychological",ar: "نفسي",       color: "#DC2626" },
  { genre: "Music",        ar: "موسيقى",      color: "#D946EF" },
  { genre: "Mecha",        ar: "ميكا",        color: "#64748B" },
  { genre: "Isekai",       ar: "إيسيكاي",    color: "#0EA5E9" },
];

const FORMAT_AR: Record<string,string> = { TV:"مسلسل", MOVIE:"فيلم", OVA:"OVA", ONA:"ONA", SPECIAL:"خاص" };
const BLOCKED = new Set(["Hentai"]);

function coverUrl(id: number) { return `https://img.anili.st/media/${id}`; }

/* ── Genre cover card ── */
function GenreCard({ item, animeId, onPress, columns }: { item: typeof GENRES_WITH_COVERS[0]; animeId?: number; onPress: () => void; columns: number }) {
  return (
    <Pressable onPress={onPress} style={[g.genreCard, { flex: 1 / columns }]}>
      <View style={[g.genreImgWrap, { backgroundColor: item.color + "22" }]}>
        {animeId ? (
          <Image source={{ uri: coverUrl(animeId) }} style={g.genreImg} />
        ) : null}
        <View style={[StyleSheet.absoluteFill, { backgroundColor: "rgba(0,0,0,0.45)" }]} />
        <View style={[g.genreColorBar, { backgroundColor: item.color }]} />
        <Text style={g.genreLabel}>{item.ar}</Text>
      </View>
    </Pressable>
  );
}

/* ── Anime card ── */
function AnimeCard({ anime, onPress, columns }: { anime: AnimeResult; onPress: () => void; columns: number }) {
  const fmt = anime.format ? FORMAT_AR[anime.format] : null;
  const isFilm = anime.format === "MOVIE";
  return (
    <Pressable onPress={onPress} style={[g.card, { flex: 1 / columns }]}>
      <View style={g.cardWrap}>
        {anime.coverImage?.large ? (
          <Image source={{ uri: anime.coverImage.large }} style={g.cardImg} />
        ) : (
          <View style={[g.cardImg, g.cardNoImg]} />
        )}
        {anime.averageScore ? (
          <View style={g.scoreBadge}>
            <Ionicons name="star" size={7} color="#FBBF24" />
            <Text style={g.scoreText}>{(anime.averageScore / 10).toFixed(1)}</Text>
          </View>
        ) : null}
        {fmt ? (
          <View style={[g.fmtBadge, { backgroundColor: isFilm ? "#3B82F6" : "#7C3AED" }]}>
            <Text style={g.fmtText}>{fmt}</Text>
          </View>
        ) : null}
        <View style={g.cardBottom}>
          <Text style={g.cardTitle} numberOfLines={2}>{anime.title?.romaji}</Text>
        </View>
      </View>
    </Pressable>
  );
}

/* ── Genre query to get a cover image ── */
const GENRE_COVER_QUERY = (genre: string) => `
query { Page(page:1,perPage:1) {
  media(type:ANIME,genre:"${genre}",sort:[POPULARITY_DESC]){id}
}}`;

const BROWSE_QUERY = (sort: string, format: string, season: string, year: string, genre: string, status: string) => `
query ($page: Int) {
  Page(page: $page, perPage: 30) {
    media(type:ANIME, countryOfOrigin:"JP", isAdult:false, genre_not_in:["Hentai"], sort:[${sort || "POPULARITY_DESC"}]${format ? `, format:${format}` : ""}${season ? `, season:${season}` : ""}${year ? `, seasonYear:${year}` : ""}${genre ? `, genre:"${genre}"` : ""}${status ? `, status:${status}` : ""}) {
      id title { romaji english } coverImage { large } averageScore episodes format status startDate { year } genres
    }
  }
}`;

const SEARCH_QUERY = (sort: string, format: string, season: string, year: string, genre: string, status: string) => `
query ($search: String!) {
  Page(page: 1, perPage: 30) {
    media(search: $search, type: ANIME, isAdult: false, genre_not_in:["Hentai","Ecchi"], sort:[SEARCH_MATCH,${sort || "POPULARITY_DESC"}]${format ? `,format:${format}` : ""}${season ? `,season:${season}` : ""}${year ? `,seasonYear:${year}` : ""}${genre ? `,genre:"${genre}"` : ""}${status ? `,status:${status}` : ""}) {
      id title { romaji english } coverImage { large } averageScore episodes format status startDate { year } genres
    }
  }
}`;

const ARABIC_SEARCH_ALIASES: Record<string, string> = {
  "ناروتو": "Naruto",
  "هانتر": "Hunter x Hunter",
  "هنتر": "Hunter x Hunter",
  "ون بيس": "One Piece",
  "وان بيس": "One Piece",
  "دراغون بول": "Dragon Ball",
  "دراجون بول": "Dragon Ball",
  "ديمون سلاير": "Demon Slayer",
  "قاتل الشياطين": "Demon Slayer",
  "هجوم العمالقة": "Shingeki no Kyojin",
  "بوكو نو هيرو": "Boku no Hero Academia",
  "أكاديمية بطلي": "Boku no Hero Academia",
  "بليتش": "Bleach",
  "جوجوتسو كايسن": "Jujutsu Kaisen",
  "جوجوتسو": "Jujutsu Kaisen",
  "سولو ليفلينج": "Solo Leveling",
  "بلاك كلوفر": "Black Clover",
};

function translateSearchQuery(value: string): string {
  const query = value.trim();
  if (!query) return "";
  if (ARABIC_SEARCH_ALIASES[query]) return ARABIC_SEARCH_ALIASES[query];
  for (const [arabic, english] of Object.entries(ARABIC_SEARCH_ALIASES)) {
    if (query.includes(arabic)) return query.replace(arabic, english);
  }
  return query;
}

export default function BrowseScreen() {
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();
  const routeParams = useLocalSearchParams<{
    genre?: string;
    genreAr?: string;
    format?: string;
    sort?: string;
    season?: string;
    year?: string;
    status?: string;
  }>();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  // Keep poster cards at the phone density on TV/tablets. More columns
  // decode too many large images at once and make remote scrolling janky.
  const gridColumns = 3;
  const genreColumns = width >= 700 ? 3 : 2;

  const routeValue = (value: string | string[] | undefined) =>
    Array.isArray(value) ? value[0] || "" : value || "";
  const routeSort = routeValue(routeParams.sort);
  const routeFormat = routeValue(routeParams.format);
  const routeSeason = routeValue(routeParams.season);
  const routeYear = routeValue(routeParams.year);
  const routeStatus = routeValue(routeParams.status);

  const [view, setView] = useState<"genres" | "list">("list");
  const [activeGenre, setActiveGenre] = useState(routeValue(routeParams.genre));
  const [activeGenreAr, setActiveGenreAr] = useState(routeValue(routeParams.genreAr));
  const [format, setFormat] = useState(FORMAT_OPTIONS.some(opt => opt.value === routeFormat) ? routeFormat : "");
  const [sort, setSort] = useState(SORT_OPTIONS.some(opt => opt.value === routeSort) ? routeSort : "POPULARITY_DESC");
  const [season, setSeason] = useState(SEASON_OPTIONS.some(opt => opt.value === routeSeason) ? routeSeason : "");
  const [year, setYear] = useState(/^\d{4}$/.test(routeYear) ? routeYear : "");
  const [status, setStatus] = useState(routeStatus === "RELEASING" ? routeStatus : "");
  const [search, setSearch] = useState("");

  const [items, setItems] = useState<AnimeResult[]>([]);
  const [loading, setLoading] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);

  const [genreCovers, setGenreCovers] = useState<Record<string, number>>({});
  const [searchItems, setSearchItems] = useState<AnimeResult[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);

  const listRef = useRef<FlatList<AnimeResult>>(null);
  const genRef = useRef(0);
  const searchAbortRef = useRef<AbortController | null>(null);
  const searchTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const searchRequestRef = useRef(0);

  /* Home sections open this tab with a filter in the route. Keep the
     filter state synced when the tab is already mounted and receives
     another "See all" navigation event. */
  useEffect(() => {
    setActiveGenre(routeValue(routeParams.genre));
    setActiveGenreAr(routeValue(routeParams.genreAr));
    setFormat(FORMAT_OPTIONS.some(opt => opt.value === routeFormat) ? routeFormat : "");
    setSort(SORT_OPTIONS.some(opt => opt.value === routeSort) ? routeSort : "POPULARITY_DESC");
    setSeason(SEASON_OPTIONS.some(opt => opt.value === routeSeason) ? routeSeason : "");
    setYear(/^\d{4}$/.test(routeYear) ? routeYear : "");
    setStatus(routeStatus === "RELEASING" ? routeStatus : "");
    setView("list");
  }, [routeParams.genre, routeParams.genreAr, routeParams.format, routeParams.sort, routeParams.season, routeParams.year, routeParams.status]);

  /* load genre cover images */
  useEffect(() => {
    const ctrl = new AbortController();
    const covers: Record<string,number> = {};
    Promise.all(GENRES_WITH_COVERS.map(async item => {
      try {
        const r = await fetch(`${getBaseUrl()}/api/anilist`, {
          method: "POST", headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ query: GENRE_COVER_QUERY(item.genre) }),
          signal: ctrl.signal,
        });
        const d = await r.json();
        const id = d.data?.Page?.media?.[0]?.id;
        if (id) covers[item.genre] = id;
      } catch (e: any) { if (e?.name === "AbortError") return; }
    })).then(() => { if (!ctrl.signal.aborted) setGenreCovers({ ...covers }); });
    return () => ctrl.abort();
  }, []);

  const abortRef = useRef<AbortController | null>(null);

  const loadItems = useCallback(async (p: number, reset: boolean) => {
    // إلغاء أي طلب سابق قبل إطلاق الجديد
    abortRef.current?.abort();
    const ctrl = new AbortController();
    abortRef.current = ctrl;
    setLoading(true);
    const gen = ++genRef.current;
    try {
      const r = await fetch(`${getBaseUrl()}/api/anilist`, {
        method: "POST", headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
            query: BROWSE_QUERY(sort, format, season, year, activeGenre, status),
          variables: { page: p },
        }),
        signal: ctrl.signal,
      });
      const d = await r.json();
      if (genRef.current !== gen || ctrl.signal.aborted) return;
      const results: AnimeResult[] = (d.data?.Page?.media || [])
        .filter((a: AnimeResult) => !(a.genres || []).some(gx => BLOCKED.has(gx)));
      if (reset) setItems(results);
      else setItems(prev => {
        const ids = new Set(prev.map(i => i.id));
        return [...prev, ...results.filter(i => !ids.has(i.id))];
      });
      setPage(p);
      setHasMore(results.length === 30);
    } catch (e: any) {
      if (e?.name === "AbortError") return;
    } finally {
      if (genRef.current === gen && !ctrl.signal.aborted) setLoading(false);
    }
  }, [sort, format, season, year, activeGenre, status]);

  useEffect(() => {
    if (view !== "list") return;
    // Each filter produces a new result set. Never leave the user at the
    // old list offset, where the beginning of the new results is skipped.
    listRef.current?.scrollToOffset({ offset: 0, animated: false });
    setPage(1); setHasMore(true);
    loadItems(1, true);
  }, [view, sort, format, season, year, activeGenre, status]);

  useEffect(() => {
    searchAbortRef.current?.abort();
    if (searchTimerRef.current) clearTimeout(searchTimerRef.current);
    if (!search.trim()) {
      setSearchItems([]);
      setSearchLoading(false);
      return;
    }
    const ctrl = new AbortController();
    searchAbortRef.current = ctrl;
    const requestId = ++searchRequestRef.current;
    searchTimerRef.current = setTimeout(async () => {
      setSearchLoading(true);
      try {
        const translated = translateSearchQuery(search);
        const r = await fetch(`${getBaseUrl()}/api/anilist`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            query: SEARCH_QUERY(sort, format, season, year, activeGenre, status),
            variables: { search: translated },
          }),
          signal: ctrl.signal,
        });
        if (!r.ok) throw new Error(`search ${r.status}`);
        const d = await r.json();
        if (!ctrl.signal.aborted && requestId === searchRequestRef.current) {
          setSearchItems((d.data?.Page?.media || [])
            .filter((a: AnimeResult) => !(a.genres || []).some(gx => BLOCKED.has(gx))));
        }
      } catch (e: any) {
        if (e?.name !== "AbortError" && !ctrl.signal.aborted && requestId === searchRequestRef.current) setSearchItems([]);
      } finally {
        if (!ctrl.signal.aborted && requestId === searchRequestRef.current) setSearchLoading(false);
      }
    }, 400);
    return () => {
      if (searchTimerRef.current) clearTimeout(searchTimerRef.current);
      ctrl.abort();
    };
  }, [search, sort, format, season, year, activeGenre, status]);

  function openGenre(genre: string, ar: string) {
    setActiveGenre(genre); setActiveGenreAr(ar);
    setView("list"); setPage(1); setItems([]);
  }
  function clearAll() {
    setView("list"); setActiveGenre(""); setActiveGenreAr("");
    setFormat(""); setSort("POPULARITY_DESC"); setSeason(""); setYear(""); setStatus("");
  }

  const filteredItems = search.trim() ? searchItems : items;
  const listLoading = search.trim() ? searchLoading : loading;

  const hasFilters = format || sort !== "POPULARITY_DESC" || season || year || status;
  const browseTitle = activeGenreAr
    ? `${activeGenreAr}`
    : status === "RELEASING" ? "يُعرض حالياً"
    : format ? FORMAT_AR[format] || format
    : season ? SEASON_OPTIONS.find(s => s.value === season)?.label.replace(/.*? /, "") || "تصفح"
    : "تصفح";

  return (
    <View style={[g.container, { paddingTop: topPad }]}>
      {/* ── Header ── */}
      <View style={g.header}>
        <View style={g.headerRow}>
          <View style={{ flex: 1 }}>
            <Text style={g.headerTitle}>{browseTitle}</Text>
            {activeGenreAr && (
              <Text style={g.headerSub}>{filteredItems.length} أنمي متاح</Text>
            )}
          </View>
          <View style={{ flexDirection: "row", gap: 6 }}>
            <Pressable
              onPress={() => setView(view === "genres" ? "list" : "genres")}
              style={[g.genreToggleBtn, view === "genres" && g.genreToggleBtnActive]}
            >
              <Ionicons name="grid" size={12} color={view === "genres" ? "#c4b5fd" : "rgba(255,255,255,0.4)"} />
              <Text style={[g.genreToggleText, view === "genres" && { color: "#c4b5fd" }]}>التصنيفات</Text>
            </Pressable>
            {(view === "list" && hasFilters) && (
              <Pressable onPress={clearAll} style={g.clearBtn}>
                <Ionicons name="close" size={14} color="rgba(252,165,165,0.8)" />
                <Text style={g.clearBtnText}>مسح</Text>
              </Pressable>
            )}
          </View>
        </View>

        {/* Format chips */}
        <ScrollView horizontal showsHorizontalScrollIndicator={false} style={g.chipRow}>
          <View style={{ flexDirection: "row", gap: 6 }}>
            {FORMAT_OPTIONS.map(opt => (
              <Pressable key={opt.value}
                onPress={() => { setFormat(opt.value); setView("list"); setPage(1); }}
                style={[g.chip, format === opt.value && g.chipActive]}>
                <Text style={[g.chipText, format === opt.value && g.chipTextActive]}>{opt.label}</Text>
              </Pressable>
            ))}
          </View>
        </ScrollView>

        {/* Sort + Season + Year (only in list mode) */}
        {view === "list" && (
          <>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} style={[g.chipRow, { marginTop: 4 }]}>
              <View style={{ flexDirection: "row", gap: 6 }}>
                {SORT_OPTIONS.map(opt => (
                  <Pressable key={opt.value} onPress={() => setSort(opt.value)}
                    style={[g.chip, sort === opt.value && g.chipActive2]}>
                    <Text style={[g.chipText, sort === opt.value && g.chipText2Active]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
            </ScrollView>

            {/* Seasons row */}
            <ScrollView horizontal showsHorizontalScrollIndicator={false} style={[g.chipRow, { marginTop: 4 }]}>
              <View style={{ flexDirection: "row", gap: 6 }}>
                {SEASON_OPTIONS.map(opt => (
                  <Pressable key={opt.value} onPress={() => setSeason(opt.value)}
                    style={[g.chip, season === opt.value && g.chipActive]}>
                    <Text style={[g.chipText, season === opt.value && g.chipTextActive]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
            </ScrollView>
            {/* Years row — من 1990 حتى السنة الحالية */}
            <ScrollView horizontal showsHorizontalScrollIndicator={false} style={[g.chipRow, { marginTop: 4 }]}>
              <View style={{ flexDirection: "row", gap: 6 }}>
                {YEARS.map(y => {
                  const val = y === "الكل" ? "" : y;
                  return (
                    <Pressable key={y} onPress={() => setYear(val)}
                      style={[g.chip, year === val && g.chipActive]}>
                      <Text style={[g.chipText, year === val && g.chipTextActive]}>{y}</Text>
                    </Pressable>
                  );
                })}
              </View>
            </ScrollView>

            <View style={g.searchWrap}>
              <Ionicons name="search" size={14} color="rgba(255,255,255,0.25)" />
              <TextInput
                value={search}
                onChangeText={setSearch}
                placeholder="بحث في النتائج..."
                placeholderTextColor="rgba(255,255,255,0.2)"
                style={g.searchInput}
              />
              {search ? (
                <Pressable onPress={() => setSearch("")}>
                  <Ionicons name="close" size={16} color="rgba(255,255,255,0.3)" />
                </Pressable>
              ) : null}
            </View>
          </>
        )}
      </View>

      {/* ── Genre grid ── */}
      {view === "genres" && (
        <FlatList
          data={GENRES_WITH_COVERS}
          key={`genres-${genreColumns}`}
          keyExtractor={item => item.genre}
          numColumns={genreColumns}
          contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 12, paddingBottom: 100 }}
          columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
          showsVerticalScrollIndicator={false}
          initialNumToRender={6}
          maxToRenderPerBatch={3}
          updateCellsBatchingPeriod={50}
          windowSize={5}
          removeClippedSubviews={Platform.OS !== "web"}
          renderItem={({ item }) => (
            <GenreCard
              item={item}
              animeId={genreCovers[item.genre]}
              columns={genreColumns}
              onPress={() => openGenre(item.genre, item.ar)}
            />
          )}
        />
      )}

      {/* ── Anime list ── */}
      {view === "list" && (
        <>
          {listLoading && filteredItems.length === 0 ? (
            <View style={g.center}>
              <ActivityIndicator color="#8B5CF6" size="large" />
            </View>
          ) : (
            <FlatList
              ref={listRef}
              data={filteredItems}
              key={`anime-grid-${gridColumns}`}
              keyExtractor={(item, i) => `${item.id}-${i}`}
              numColumns={gridColumns}
              contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 12, paddingBottom: 100 }}
              columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
              showsVerticalScrollIndicator={false}
              initialNumToRender={6}
              maxToRenderPerBatch={3}
              updateCellsBatchingPeriod={50}
              windowSize={5}
              removeClippedSubviews={Platform.OS !== "web"}
               onEndReached={() => { if (!search.trim() && hasMore && !loading) loadItems(page + 1, false); }}
              onEndReachedThreshold={0.4}
              ListEmptyComponent={
                 !listLoading ? (
                  <View style={g.center}>
                    <Ionicons name="film" size={48} color="rgba(255,255,255,0.15)" />
                    <Text style={g.emptyText}>لا توجد أنميات بهذه الفلاتر</Text>
                  </View>
                ) : null
              }
               ListFooterComponent={listLoading && filteredItems.length > 0 ? (
                <View style={{ padding: 20, alignItems: "center" }}>
                  <ActivityIndicator color="#8B5CF6" />
                </View>
              ) : null}
              renderItem={({ item }) => (
                <AnimeCard
                  anime={item}
                  columns={gridColumns}
                  onPress={() => router.push(`/anime/${item.id}?title=${encodeURIComponent(item.title.romaji)}&english=${encodeURIComponent(item.title.english || "")}`)}
                />
              )}
            />
          )}
        </>
      )}
    </View>
  );
}

const g = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  header: { backgroundColor: "#09090B", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)", paddingHorizontal: 12, paddingTop: 8, paddingBottom: 5 },
  headerRow: { flexDirection: "row", alignItems: "center", marginBottom: 6 },
  headerTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub: { fontSize: 9, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  clearBtn: { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: "rgba(239,68,68,0.1)", borderWidth: 1, borderColor: "rgba(239,68,68,0.2)" },
  clearBtnText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(252,165,165,0.8)" },
  genreToggleBtn: { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  genreToggleBtnActive: { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.35)" },
  genreToggleText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.4)" },
  chipRow: { marginBottom: 2 },
  chip: { paddingHorizontal: 9, paddingVertical: 4, borderRadius: 10, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  chipActive: { backgroundColor: "rgba(139,92,246,0.2)", borderColor: "rgba(139,92,246,0.4)" },
  chipText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  chipTextActive: { color: "#c4b5fd" },
  chipActive2: { backgroundColor: "#7C3AED", borderColor: "#8B5CF6" },
  chipText2Active: { color: "#fff" },
  searchWrap: { flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: "#18181B", borderRadius: 10, paddingHorizontal: 10, paddingVertical: 4, marginTop: 4, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)" },
  searchInput: { flex: 1, color: "#fff", fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "right" },
  genreCard: { flex: 1 },
  genreImgWrap: { height: 90, borderRadius: 16, overflow: "hidden", position: "relative", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", justifyContent: "flex-end" },
  genreImg: { ...StyleSheet.absoluteFillObject, width: "100%", height: "100%" },
  genreColorBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3 },
  genreLabel: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff", padding: 10, textShadowColor: "rgba(0,0,0,0.8)", textShadowOffset: { width: 0, height: 1 }, textShadowRadius: 4 },
  card: { flex: 1 },
  cardWrap: { borderRadius: 14, overflow: "hidden", aspectRatio: 2 / 3, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", position: "relative" },
  cardImg: { width: "100%", height: "100%" },
  cardNoImg: { backgroundColor: "rgba(139,92,246,0.1)", alignItems: "center", justifyContent: "center" },
  scoreBadge: { position: "absolute", top: 5, right: 5, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 7, paddingHorizontal: 4, paddingVertical: 2 },
  scoreText: { fontSize: 7, color: "#fff", fontFamily: "Cairo_700Bold" },
  fmtBadge: { position: "absolute", top: 5, left: 5, paddingHorizontal: 5, paddingVertical: 2, borderRadius: 5 },
  fmtText: { fontSize: 7, color: "#fff", fontFamily: "Cairo_700Bold" },
  cardBottom: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 5, backgroundColor: "rgba(0,0,0,0.6)" },
  cardTitle: { fontSize: 9, color: "#fff", fontFamily: "Cairo_700Bold", lineHeight: 13 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, minHeight: 200 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.35)", textAlign: "center" },
});
