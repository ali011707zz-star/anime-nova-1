import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ScrollView, ActivityIndicator, StyleSheet, Platform,
  Animated, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";

import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";

const IMG = "https://image.tmdb.org/t/p/w342";

type MediaType = "movie" | "tv";
interface Genre { id: number; ar: string }

const MOVIE_GENRES: Genre[] = [
  { id: 0,     ar: "الكل" },
  { id: 10751, ar: "عائلي" },
  { id: 35,    ar: "كوميدي" },
  { id: 12,    ar: "مغامرة" },
  { id: 28,    ar: "أكشن" },
  { id: 14,    ar: "فانتازيا" },
  { id: 878,   ar: "خيال علمي" },
  { id: 18,    ar: "دراما" },
];
const TV_GENRES: Genre[] = [
  { id: 0,     ar: "الكل" },
  { id: 10751, ar: "عائلي" },
  { id: 35,    ar: "كوميدي" },
  { id: 10759, ar: "أكشن ومغامرة" },
  { id: 10765, ar: "خيال علمي" },
  { id: 10762, ar: "أطفال" },
  { id: 18,    ar: "دراما" },
];
const SORT_MOVIE = [
  { value: "popularity.desc",           label: "الأكثر مشاهدة" },
  { value: "vote_average.desc",         label: "الأعلى تقييماً" },
  { value: "primary_release_date.desc", label: "الأحدث" },
  { value: "primary_release_date.asc",  label: "الأقدم" },
] as const;
const SORT_TV = [
  { value: "popularity.desc",     label: "الأكثر مشاهدة" },
  { value: "vote_average.desc",   label: "الأعلى تقييماً" },
  { value: "first_air_date.desc", label: "الأحدث" },
  { value: "first_air_date.asc",  label: "الأقدم" },
] as const;
const CUR_YEAR = new Date().getFullYear();
const YEARS = ["الكل", ...Array.from({ length: 14 }, (_, i) => String(CUR_YEAR - i))];

interface TmdbItem {
  id: number; title?: string; name?: string;
  poster_path?: string; vote_average?: number;
  release_date?: string; first_air_date?: string;
  genre_ids?: number[];
}

function displayTitle(item: TmdbItem) {
  return item.title || item.name || "—";
}
function yearLabel(item: TmdbItem) {
  return (item.release_date || item.first_air_date || "").slice(0, 4);
}
function hasCjk(s: string) {
  return /[\u3000-\u9fff\uac00-\ud7af\uf900-\ufaff]/u.test(s);
}

export default function AnimationsScreen() {
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const gridColumns = width >= 1000 ? 6 : width >= 700 ? 5 : 3;

  const [type, setType] = useState<MediaType>("movie");
  const [genre, setGenre] = useState<number>(0);
  const [sort, setSort] = useState("popularity.desc");
  const [year, setYear] = useState("");
  const [page, setPage] = useState(1);
  const [items, setItems] = useState<TmdbItem[]>([]);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchResults, setSearchResults] = useState<TmdbItem[]>([]);
  const [showFilters, setShowFilters] = useState(false);
  const [noticeDismissed, setNoticeDismissed] = useState(false);

  const genRef = useRef(0);
  const abortRef = useRef<AbortController | null>(null);
  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const searchInput = useRef<TextInput>(null);

  const genres = type === "movie" ? MOVIE_GENRES : TV_GENRES;
  const sortOptions = (type === "movie" ? SORT_MOVIE : SORT_TV) as readonly { value: string; label: string }[];

  useEffect(() => {
    AsyncStorage.getItem("animation-notice-dismissed")
      .then(v => { if (v === "1") setNoticeDismissed(true); });
  }, []);

  const load = useCallback(async (
    t: MediaType, g: number, s: string, y: string, p: number, gen: number
  ) => {
    setLoading(true);
    try {
      abortRef.current?.abort();
      const ctrl = new AbortController();
      abortRef.current = ctrl;
      const gParam = g === 0 ? "16" : `${g}`;
      const base = getBaseUrl();
      const url = `${base}/api/animation/browse?type=${t}&genre=${gParam}&sort=${encodeURIComponent(s)}&year=${y}&page=${p}`;
      const r = await fetch(url, { signal: ctrl.signal });
      if (genRef.current !== gen) return;
      const data = await r.json();
      const results: TmdbItem[] = (data.results || []).filter((item: TmdbItem) => {
        const orig = item.title || "";
        const name = item.name || "";
        return !hasCjk(orig) || !hasCjk(name);
      });
      if (p === 1) setItems(results);
      else setItems(prev => {
        const ids = new Set(prev.map(i => i.id));
        return [...prev, ...results.filter(i => !ids.has(i.id))];
      });
      setHasMore(p < (data.total_pages || 1));
      setPage(p);
    } catch {}
    if (genRef.current === gen) setLoading(false);
  }, []);

  useEffect(() => {
    const gen = ++genRef.current;
    setItems([]); setPage(1); setHasMore(true);
    load(type, genre, sort, year, 1, gen);
  }, [type, genre, sort, year]);

  const searchAbortRef = useRef<AbortController | null>(null);
  useEffect(() => {
    if (!searchQ.trim()) { setSearchResults([]); return; }
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchAbortRef.current?.abort();
    const ctrl = new AbortController();
    searchAbortRef.current = ctrl;
    searchTimer.current = setTimeout(async () => {
      try {
        const base = getBaseUrl();
        const r = await fetch(
          `${base}/api/animation/search?q=${encodeURIComponent(searchQ)}&type=${type}`,
          { signal: ctrl.signal },
        );
        if (ctrl.signal.aborted) return;
        const d = await r.json();
        if (!ctrl.signal.aborted) {
          const filtered = (d.results || []).filter((item: TmdbItem) => {
            const orig = item.title || ""; const name = item.name || "";
            return !hasCjk(orig) || !hasCjk(name);
          });
          setSearchResults(filtered.slice(0, 10));
        }
      } catch (e: any) { if (e?.name !== "AbortError") setSearchResults([]); }
    }, 350);
    return () => {
      if (searchTimer.current) clearTimeout(searchTimer.current);
      ctrl.abort();
    };
  }, [searchQ, type]);

  const handleTypeChange = (t: MediaType) => {
    if (t === type) return;
    setType(t); setGenre(0); setSort("popularity.desc"); setYear(""); setPage(1);
    setSearchQ(""); setSearchResults([]);
  };

  const activeFilterCount = (genre !== 0 ? 1 : 0) + (sort !== "popularity.desc" ? 1 : 0) + (year ? 1 : 0);

  const renderItem = ({ item }: { item: TmdbItem }) => (
    <Pressable
      style={[s.card, { flex: 1 / gridColumns }]}
      onPress={() => router.push(`/animation/${type}/${item.id}`)}
    >
      <View style={s.cardImgWrap}>
        {item.poster_path ? (
          <Image source={{ uri: `${IMG}${item.poster_path}` }} style={s.cardImg} />
        ) : (
          <View style={[s.cardImg, s.noImg]}>
            <Ionicons name="film" size={28} color="rgba(255,255,255,0.2)" />
          </View>
        )}
        <View style={s.cardGrad} />
        {(item.vote_average || 0) > 0 && (
          <View style={s.scoreBadge}>
            <Ionicons name="star" size={8} color="#FBBF24" />
            <Text style={s.scoreText}>{item.vote_average!.toFixed(1)}</Text>
          </View>
        )}
        {yearLabel(item) ? (
          <Text style={s.yearText}>{yearLabel(item)}</Text>
        ) : null}
      </View>
      <Text style={s.cardTitle} numberOfLines={2}>{displayTitle(item)}</Text>
    </Pressable>
  );

  return (
    <View style={[s.container, { paddingTop: topPad }]}>
      {/* ── Header ── */}
      <View style={s.header}>
        <View style={s.headerRow}>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 10, flex: 1 }}>
            <Pressable
              onPress={() => (router.canGoBack() ? router.back() : router.push("/"))}
              style={s.iconBtn}
            >
              <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.55)" />
            </Pressable>
            <View>
              <Text style={s.headerTitle}>رسوم متحركة</Text>
              <Text style={s.headerSub}>
                {type === "movie" ? "أفلام أنيميشن عالمية" : "مسلسلات كرتون عالمية"}
              </Text>
            </View>
          </View>
          <View style={{ flexDirection: "row", gap: 8 }}>
            <Pressable
              onPress={() => setShowFilters(o => !o)}
              style={[s.iconBtn, showFilters && s.iconBtnActive]}
            >
              <Ionicons name="options" size={18} color={showFilters ? "#c4b5fd" : "rgba(255,255,255,0.55)"} />
              {activeFilterCount > 0 && (
                <View style={s.filterBadge}><Text style={s.filterBadgeText}>{activeFilterCount}</Text></View>
              )}
            </Pressable>
            <Pressable
              onPress={() => { setSearchOpen(o => !o); setTimeout(() => searchInput.current?.focus(), 100); }}
              style={[s.iconBtn, searchOpen && s.iconBtnActive]}
            >
              <Ionicons name="search" size={18} color={searchOpen ? "#c4b5fd" : "rgba(255,255,255,0.55)"} />
            </Pressable>
          </View>
        </View>

        {/* Movie / TV tabs */}
        <View style={s.typeTabs}>
          {(["movie", "tv"] as MediaType[]).map((t) => (
            <Pressable key={t} onPress={() => handleTypeChange(t)}
              style={[s.typeTab, type === t && s.typeTabActive]}>
              <Text style={[s.typeTabText, type === t && s.typeTabTextActive]}>
                {t === "movie" ? "أفلام" : "مسلسلات"}
              </Text>
            </Pressable>
          ))}
        </View>

        {/* Search */}
        {searchOpen && (
          <View style={s.searchWrap}>
            <View style={s.searchBar}>
              <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" />
              <TextInput
                ref={searchInput}
                value={searchQ}
                onChangeText={setSearchQ}
                placeholder={type === "movie" ? "ابحث عن فيلم أنيميشن…" : "ابحث عن مسلسل أنيميشن…"}
                placeholderTextColor="rgba(255,255,255,0.25)"
                style={s.searchInput}
              />
              {searchQ ? (
                <Pressable onPress={() => { setSearchQ(""); setSearchResults([]); }}>
                  <Ionicons name="close-circle" size={18} color="rgba(255,255,255,0.4)" />
                </Pressable>
              ) : null}
            </View>
            {searchResults.length > 0 && (
              <View style={s.searchDropdown}>
                {searchResults.map(item => (
                  <Pressable key={item.id}
                    style={s.searchItem}
                    onPress={() => {
                      router.push(`/animation/${type}/${item.id}`);
                      setSearchOpen(false); setSearchQ("");
                    }}>
                    {item.poster_path ? (
                      <Image source={{ uri: `${IMG}${item.poster_path}` }} style={s.searchItemImg} />
                    ) : (
                      <View style={[s.searchItemImg, s.noImg]}>
                        <Ionicons name="film" size={14} color="rgba(255,255,255,0.3)" />
                      </View>
                    )}
                    <View style={{ flex: 1 }}>
                      <Text style={s.searchItemTitle} numberOfLines={1}>{displayTitle(item)}</Text>
                      <Text style={s.searchItemYear}>{yearLabel(item)}</Text>
                    </View>
                  </Pressable>
                ))}
              </View>
            )}
          </View>
        )}

        {/* Filter panel */}
        {showFilters && (
          <View style={s.filterPanel}>
            <Text style={s.filterLabel}>ترتيب حسب</Text>
            <ScrollView horizontal showsHorizontalScrollIndicator={false}>
              <View style={{ flexDirection: "row", gap: 8 }}>
                {sortOptions.map(opt => (
                  <Pressable key={opt.value} onPress={() => setSort(opt.value)}
                    style={[s.filterChip, sort === opt.value && s.filterChipActive]}>
                    <Text style={[s.filterChipText, sort === opt.value && s.filterChipTextActive]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
            </ScrollView>

            <Text style={[s.filterLabel, { marginTop: 10 }]}>السنة</Text>
            <ScrollView horizontal showsHorizontalScrollIndicator={false}>
              <View style={{ flexDirection: "row", gap: 8 }}>
                {YEARS.map(y => {
                  const val = y === "الكل" ? "" : y;
                  return (
                    <Pressable key={y} onPress={() => setYear(val)}
                      style={[s.filterChip, year === val && s.filterChipActive]}>
                      <Text style={[s.filterChipText, year === val && s.filterChipTextActive]}>{y}</Text>
                    </Pressable>
                  );
                })}
              </View>
            </ScrollView>

            <Text style={[s.filterLabel, { marginTop: 10 }]}>النوع</Text>
            <View style={{ flexDirection: "row", flexWrap: "wrap", gap: 8 }}>
              {genres.map(g => (
                <Pressable key={g.id} onPress={() => setGenre(g.id)}
                  style={[s.filterChip, genre === g.id && s.filterChipActive]}>
                  <Text style={[s.filterChipText, genre === g.id && s.filterChipTextActive]}>{g.ar}</Text>
                </Pressable>
              ))}
            </View>

            {activeFilterCount > 0 && (
              <Pressable onPress={() => { setGenre(0); setSort("popularity.desc"); setYear(""); }}
                style={s.clearFiltersBtn}>
                <Ionicons name="close" size={14} color="rgba(252,165,165,0.8)" />
                <Text style={s.clearFiltersText}>مسح الفلاتر ({activeFilterCount})</Text>
              </Pressable>
            )}
          </View>
        )}
      </View>

      {/* ── Notice banner ── */}
      {!noticeDismissed && (
        <View style={s.notice}>
          <Text style={{ fontSize: 16 }}>🙏🏽</Text>
          <View style={{ flex: 1 }}>
            <Text style={s.noticeTitle}>تنبيه للمستخدمين</Text>
            <Text style={s.noticeSub}>
              قد لا تتوفر بعض أعمال الأنيميشن القديمة أو النادرة حالياً بسبب محدودية المصادر 🥺
            </Text>
          </View>
          <Pressable onPress={() => { setNoticeDismissed(true); AsyncStorage.setItem("animation-notice-dismissed", "1"); }}>
            <Ionicons name="close" size={18} color="rgba(251,191,36,0.6)" />
          </Pressable>
        </View>
      )}


      {/* ── Grid ── */}
      {items.length === 0 && loading ? (
        <View style={s.center}>
          <ActivityIndicator color="#8B5CF6" size="large" />
          <Text style={s.emptyText}>جارٍ تحميل المحتوى…</Text>
        </View>
      ) : items.length === 0 && !loading ? (
        <View style={s.center}>
          <Ionicons name="film" size={56} color="rgba(139,92,246,0.4)" />
          <Text style={s.emptyTitle}>لا توجد نتائج</Text>
          <Pressable onPress={() => { setGenre(0); setSort("popularity.desc"); setYear(""); }}
            style={s.emptyBtn}>
            <Text style={s.emptyBtnText}>مسح الفلاتر</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          data={items}
          key={`animation-grid-${gridColumns}`}
          keyExtractor={(item, i) => `${item.id}-${i}`}
          numColumns={gridColumns}
          contentContainerStyle={s.grid}
          columnWrapperStyle={s.gridRow}
          showsVerticalScrollIndicator={false}
          renderItem={renderItem}
          onEndReached={() => {
            if (hasMore && !loading) {
              const gen = genRef.current;
              load(type, genre, sort, year, page + 1, gen);
            }
          }}
          onEndReachedThreshold={0.4}
          ListFooterComponent={loading && items.length > 0 ? (
            <View style={{ padding: 20, alignItems: "center" }}>
              <ActivityIndicator color="#8B5CF6" />
            </View>
          ) : null}
        />
      )}
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  header: { backgroundColor: "#09090B", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)", paddingHorizontal: 16, paddingTop: 12, paddingBottom: 10 },
  headerRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", marginBottom: 12 },
  headerTitle: { fontSize: 22, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub: { fontSize: 11, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  iconBtn: { width: 36, height: 36, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.10)" },
  iconBtnActive: { backgroundColor: "rgba(139,92,246,0.22)", borderColor: "rgba(139,92,246,0.4)" },
  filterBadge: { position: "absolute", top: -4, left: -4, width: 16, height: 16, borderRadius: 8, backgroundColor: "#8B5CF6", alignItems: "center", justifyContent: "center" },
  filterBadgeText: { fontSize: 8, color: "#fff", fontWeight: "800" },
  typeTabs: { flexDirection: "row", gap: 8, marginBottom: 10 },
  typeTab: { flex: 1, paddingVertical: 7, borderRadius: 16, alignItems: "center", backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  typeTabActive: { backgroundColor: "#7C3AED", borderColor: "rgba(139,92,246,0.5)" },
  typeTabText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  typeTabTextActive: { color: "#fff" },
  searchWrap: { marginBottom: 8 },
  searchBar: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "rgba(255,255,255,0.06)", borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", paddingHorizontal: 12, paddingVertical: 10, marginBottom: 8 },
  searchInput: { flex: 1, color: "#fff", fontSize: 14, fontFamily: "Cairo_400Regular", textAlign: "right" },
  searchDropdown: { backgroundColor: "rgba(15,12,30,0.97)", borderRadius: 16, borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  searchItem: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 14, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  searchItemImg: { width: 32, height: 44, borderRadius: 8, backgroundColor: "rgba(255,255,255,0.08)" },
  searchItemTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "#fff" },
  searchItemYear: { fontSize: 10, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  filterPanel: { backgroundColor: "rgba(139,92,246,0.07)", borderRadius: 16, borderWidth: 1, borderColor: "rgba(139,92,246,0.18)", padding: 12, marginBottom: 8 },
  filterLabel: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.3)", marginBottom: 8, textTransform: "uppercase" },
  filterChip: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  filterChipActive: { backgroundColor: "#7C3AED" },
  filterChipText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.40)" },
  filterChipTextActive: { color: "#fff" },
  clearFiltersBtn: { flexDirection: "row", alignItems: "center", gap: 6, marginTop: 10, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "rgba(239,68,68,0.08)", borderWidth: 1, borderColor: "rgba(239,68,68,0.16)", alignSelf: "flex-start" },
  clearFiltersText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(252,165,165,0.8)" },
  notice: { flexDirection: "row", alignItems: "flex-start", gap: 10, margin: 12, padding: 12, borderRadius: 16, backgroundColor: "rgba(251,191,36,0.08)", borderWidth: 1, borderColor: "rgba(251,191,36,0.20)" },
  noticeTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "rgba(251,191,36,0.9)", marginBottom: 3 },
  noticeSub: { fontSize: 11, color: "rgba(251,191,36,0.5)", fontFamily: "Cairo_400Regular", lineHeight: 17 },
  grid: { paddingHorizontal: 12, paddingTop: 12, paddingBottom: 100 },
  gridRow: { gap: 10 },
  card: { flex: 1, marginBottom: 14 },
  cardImgWrap: { borderRadius: 14, overflow: "hidden", aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)" },
  cardImg: { width: "100%", height: "100%" },
  noImg: { alignItems: "center", justifyContent: "center", backgroundColor: "rgba(139,92,246,0.08)" },
  cardGrad: { ...StyleSheet.absoluteFillObject, backgroundColor: "transparent",
    // gradient not easily possible, use overlay
  },
  scoreBadge: { position: "absolute", top: 6, left: 6, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 8, paddingHorizontal: 5, paddingVertical: 3, borderWidth: 1, borderColor: "rgba(251,191,36,0.18)" },
  scoreText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#fff" },
  yearText: { position: "absolute", bottom: 6, left: 6, fontSize: 8, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular" },
  cardTitle: { marginTop: 6, fontSize: 10.5, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.80)", lineHeight: 15, textAlign: "right" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyText: { fontSize: 13, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  emptyTitle: { fontSize: 15, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.4)" },
  emptyBtn: { paddingHorizontal: 16, paddingVertical: 8, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)" },
  emptyBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  dubbedHeader: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 12, marginBottom: 10 },
  dubbedLeft: { flexDirection: "row", alignItems: "center", gap: 7 },
  sectionDot: { width: 6, height: 6, borderRadius: 3 },
  dubbedTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  seeAllBtn: { flexDirection: "row", alignItems: "center", gap: 2 },
  seeAllText: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: "#8B5CF6" },
  dubbedCard: { width: 110, borderRadius: 14, overflow: "hidden", backgroundColor: "rgba(255,255,255,0.05)" },
  dubbedImg: { width: 110, height: 155 },
  dubbedGrad: { ...StyleSheet.absoluteFillObject, justifyContent: "flex-end", padding: 8 },
  dubbedItemTitle: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#fff", lineHeight: 14 },
});
