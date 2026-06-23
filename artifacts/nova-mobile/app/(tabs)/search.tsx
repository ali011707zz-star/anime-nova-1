import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ScrollView, ActivityIndicator, StyleSheet, Platform,
  KeyboardAvoidingView, Modal, Alert,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as ImagePicker from "expo-image-picker";

/* ── trace.moe result type ── */
interface TraceResult {
  anilistId: number;
  malId?: number;
  title: string;
  titleEn: string;
  titleNative: string;
  coverImage?: string;
  episode: number | string | null;
  from: number;
  to: number;
  similarity: number;
  previewImage?: string | null;
}

function fmtTime(sec: number) {
  const m = Math.floor(sec / 60);
  const s = sec % 60;
  return `${m}:${String(s).padStart(2, "0")}`;
}

const API_BASE = process.env.EXPO_PUBLIC_DOMAIN
  ? `https://${process.env.EXPO_PUBLIC_DOMAIN}/api`
  : "http://localhost:8080/api";

/* ── Types ── */
interface AnimeResult {
  id: number;
  title: { romaji: string; english?: string; native?: string };
  coverImage: { large: string };
  averageScore?: number;
  episodes?: number;
  format?: string;
  status?: string;
  startDate?: { year?: number };
  genres?: string[];
}

/* ── Filter options ── */
const FORMAT_OPTIONS = [
  { label: "الكل", value: "" }, { label: "مسلسل", value: "TV" },
  { label: "فيلم", value: "MOVIE" }, { label: "OVA", value: "OVA" },
  { label: "ONA", value: "ONA" }, { label: "خاص", value: "SPECIAL" },
];
const STATUS_OPTIONS = [
  { label: "الكل", value: "" }, { label: "يُبث حالياً", value: "RELEASING" },
  { label: "مكتملة", value: "FINISHED" }, { label: "قريباً", value: "NOT_YET_RELEASED" },
];
const SEASON_OPTIONS = [
  { label: "الكل", value: "", emoji: "🌟" }, { label: "شتاء", value: "WINTER", emoji: "❄️" },
  { label: "ربيع", value: "SPRING", emoji: "🌸" }, { label: "صيف", value: "SUMMER", emoji: "☀️" },
  { label: "خريف", value: "FALL", emoji: "🍂" },
];
const SORT_OPTIONS = [
  { label: "الأشهر", value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "الأحدث", value: "START_DATE_DESC" },
  { label: "الأقدم", value: "START_DATE" },
];
const GENRES = [
  "Action","Adventure","Comedy","Drama","Fantasy","Horror","Mystery","Romance",
  "Sci-Fi","Slice of Life","Sports","Supernatural","Thriller","Mecha","Music",
  "Psychological","School","Isekai",
];
const GENRES_AR: Record<string,string> = {
  "Action":"أكشن","Adventure":"مغامرة","Comedy":"كوميدي","Drama":"دراما",
  "Fantasy":"خيال","Horror":"رعب","Mystery":"غموض","Romance":"رومانسي",
  "Sci-Fi":"خيال علمي","Slice of Life":"حياة يومية","Sports":"رياضة",
  "Supernatural":"خوارق","Thriller":"إثارة","Mecha":"ميكا","Music":"موسيقى",
  "Psychological":"نفسي","School":"مدرسي","Isekai":"إيسيكاي",
};
const FORMAT_AR: Record<string,string> = {
  TV:"مسلسل",MOVIE:"فيلم",OVA:"OVA",ONA:"ONA",SPECIAL:"خاص",MUSIC:"موسيقى",
};
const BLOCKED_GENRES = new Set(["Hentai","Ecchi"]);

/* ── Arabic transliteration ── */
const AR_TO_EN: Record<string,string> = {
  "ناروتو":"Naruto","هانتر":"Hunter x Hunter","ون بيس":"One Piece",
  "دراغون بول":"Dragon Ball","ديمون سلاير":"Demon Slayer",
  "هجوم العمالقة":"Shingeki no Kyojin","بوكو نو هيرو":"Boku no Hero Academia",
  "بليتش":"Bleach","فيري تيل":"Fairy Tail","توكيو غول":"Tokyo Ghoul",
  "ريزيرو":"Re:Zero","سوورد ارت":"Sword Art Online","فولميتال":"Fullmetal Alchemist",
};
function translateQuery(q: string): string {
  const t = q.trim();
  if (AR_TO_EN[t]) return AR_TO_EN[t];
  if (/[\u0600-\u06FF]/.test(t)) {
    for (const [ar, en] of Object.entries(AR_TO_EN)) {
      if (t.includes(ar)) return t.replace(ar, en);
    }
  }
  return t;
}

function buildSearchQuery(sort: string, format: string, status: string, genre: string, season: string) {
  const sortArr = sort ? `[SEARCH_MATCH, ${sort}]` : "[SEARCH_MATCH, POPULARITY_DESC]";
  return `query ($search: String, $page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(search: $search, type: ANIME, sort: ${sortArr}${format ? `, format: ${format}` : ""}${status ? `, status: ${status}` : ""}${genre ? `, genre: "${genre}"` : ""}${season ? `, season: ${season}` : ""}, isAdult: false, genre_not_in: ["Ecchi","Hentai"]) {
      id title { romaji english } coverImage { large } averageScore episodes format status startDate { year } genres
    }
  }
}`;
}

function buildBrowseQuery(sort: string, format: string, status: string, genre: string, season: string) {
  return `query ($page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    media(type: ANIME, sort: [${sort || "POPULARITY_DESC"}]${format ? `, format: ${format}` : ""}${status ? `, status: ${status}` : ""}${genre ? `, genre: "${genre}"` : ""}${season ? `, season: ${season}` : ""}, isAdult: false, genre_not_in: ["Ecchi","Hentai"]) {
      id title { romaji english } coverImage { large } averageScore episodes format status startDate { year } genres
    }
  }
}`;
}

function filterSafe(list: AnimeResult[]): AnimeResult[] {
  return list.filter(a => !(a.genres || []).some(g => BLOCKED_GENRES.has(g)));
}

/* ── Anime Card ── */
function AnimeCard({ anime, onPress }: { anime: AnimeResult; onPress: () => void }) {
  const fmt = anime.format ? FORMAT_AR[anime.format] || anime.format : null;
  const isFilm = anime.format === "MOVIE";
  return (
    <Pressable onPress={onPress} style={s.card}>
      <View style={s.cardImgWrap}>
        {anime.coverImage?.large ? (
          <Image source={{ uri: anime.coverImage.large }} style={s.cardImg} />
        ) : (
          <View style={[s.cardImg, s.noImg]} />
        )}
        {anime.averageScore ? (
          <View style={s.scoreBadge}>
            <Ionicons name="star" size={8} color="#FBBF24" />
            <Text style={s.scoreText}>{(anime.averageScore / 10).toFixed(1)}</Text>
          </View>
        ) : null}
        {fmt ? (
          <View style={[s.fmtBadge, { backgroundColor: isFilm ? "#3B82F6" : "#7C3AED" }]}>
            <Text style={s.fmtText}>{fmt}</Text>
          </View>
        ) : null}
        <View style={s.cardBottom}>
          <Text style={s.cardTitle} numberOfLines={2}>{anime.title?.romaji}</Text>
        </View>
      </View>
    </Pressable>
  );
}

export default function SearchScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const [query, setQuery]         = useState("");
  const [results, setResults]     = useState<AnimeResult[]>([]);
  const [loading, setLoading]     = useState(false);
  const [sort, setSort]           = useState("POPULARITY_DESC");
  const [format, setFormat]       = useState("");
  const [status, setStatus]       = useState("");
  const [genre, setGenre]         = useState("");
  const [season, setSeason]       = useState("");
  const [showFilters, setShowFilters] = useState(false);
  const [showGenres, setShowGenres]   = useState(false);
  const [history, setHistory]     = useState<string[]>([]);

  /* ── trace.moe state ── */
  const [showTrace,    setShowTrace]    = useState(false);
  const [traceLoading, setTraceLoading] = useState(false);
  const [traceResults, setTraceResults] = useState<TraceResult[]>([]);
  const [traceError,   setTraceError]   = useState("");
  const [traceUrl,     setTraceUrl]     = useState("");

  const inputRef = useRef<TextInput>(null);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const activeFilterCount = [format, status, genre, season].filter(Boolean).length;

  useEffect(() => {
    AsyncStorage.getItem("searchHistory")
      .then(v => { if (v) setHistory(JSON.parse(v)); });
  }, []);

  const doSearch = useCallback(async (q: string, so: string, fo: string, st: string, ge: string, se: string) => {
    setLoading(true);
    try {
      let body: object;
      if (q.trim()) {
        const term = translateQuery(q);
        body = { query: buildSearchQuery(so, fo, st, ge, se), variables: { search: term, page: 1, perPage: 30 } };
        setHistory(prev => {
          const updated = [q, ...prev.filter(h => h !== q)].slice(0, 8);
          AsyncStorage.setItem("searchHistory", JSON.stringify(updated));
          return updated;
        });
      } else {
        body = { query: buildBrowseQuery(so, fo, st, ge, se), variables: { page: 1, perPage: 30 } };
      }
      const res = await fetch("https://graphql.anilist.co", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(body),
      });
      const json = await res.json();
      setResults(filterSafe(json.data?.Page?.media || []));
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    if (timer.current) clearTimeout(timer.current);
    const hasFilters = format || status || genre || season;
    if (!query.trim() && !hasFilters) { setResults([]); setLoading(false); return; }
    timer.current = setTimeout(() => {
      doSearch(query, sort, format, status, genre, season);
    }, query.trim() ? 400 : 100);
    return () => { if (timer.current) clearTimeout(timer.current); };
  }, [query, sort, format, status, genre, season]);

  function clearFilters() { setFormat(""); setStatus(""); setGenre(""); setSeason(""); }
  const activeSeason = SEASON_OPTIONS.find(opt => opt.value === season);
  const showEmpty = !query && !format && !status && !genre && !season;

  /* ── trace.moe handlers ── */
  async function runTraceSearch(imageUri: string, mimeType?: string) {
    setTraceLoading(true);
    setTraceResults([]);
    setTraceError("");
    try {
      const isUrl = imageUri.startsWith("http");
      let resp: Response;
      if (isUrl) {
        resp = await fetch(`${API_BASE}/anime/trace-search?url=${encodeURIComponent(imageUri)}`);
      } else {
        const fd = new FormData();
        fd.append("image", { uri: imageUri, name: "image.jpg", type: mimeType || "image/jpeg" } as any);
        resp = await fetch(`${API_BASE}/anime/trace-search`, { method: "POST", body: fd });
      }
      if (!resp.ok) {
        const err = await resp.json().catch(() => ({})) as { error?: string };
        setTraceError(err.error || `خطأ ${resp.status}`);
        return;
      }
      const data = await resp.json() as { results: TraceResult[] };
      if (!data.results?.length) {
        setTraceError("لم يُعثر على نتائج. جرّب صورة أوضح من مشهد الأنمي.");
      } else {
        setTraceResults(data.results);
      }
    } catch (e: any) {
      setTraceError("تعذّر الاتصال. تحقق من اتصالك بالإنترنت.");
    } finally {
      setTraceLoading(false);
    }
  }

  async function pickImageForTrace() {
    const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
    if (!perm.granted) {
      Alert.alert("إذن مطلوب", "يرجى السماح بالوصول إلى الصور.");
      return;
    }
    const result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      quality: 0.8,
    });
    if (!result.canceled && result.assets[0]) {
      const asset = result.assets[0];
      setShowTrace(true);
      setTraceResults([]);
      setTraceError("");
      setTraceUrl("");
      runTraceSearch(asset.uri, asset.mimeType || "image/jpeg");
    }
  }

  function openTrace() {
    setShowTrace(true);
    setTraceResults([]);
    setTraceError("");
    setTraceUrl("");
  }

  return (
    <KeyboardAvoidingView style={{ flex: 1 }} behavior={Platform.OS === "ios" ? "padding" : undefined}>
      <View style={[s.container, { paddingTop: topPad }]}>

        {/* ── Sticky header ── */}
        <View style={s.header}>
          {/* Search bar */}
          <View style={s.searchBar}>
            <Ionicons name="search" size={18} color="rgba(255,255,255,0.3)" />
            <TextInput
              ref={inputRef}
              value={query}
              onChangeText={setQuery}
              placeholder="ابحث عن أنمي..."
              placeholderTextColor="rgba(255,255,255,0.25)"
              style={s.searchInput}
              autoFocus
            />
            {query ? (
              <Pressable onPress={() => { setQuery(""); inputRef.current?.focus(); }}>
                <Ionicons name="close-circle" size={18} color="rgba(255,255,255,0.35)" />
              </Pressable>
            ) : (
              <Pressable onPress={pickImageForTrace} hitSlop={8}
                style={{ padding: 2 }}>
                <Ionicons name="camera-outline" size={20} color="rgba(196,181,253,0.6)" />
              </Pressable>
            )}
          </View>

          {/* Filter toggle + sort pills */}
          <View style={s.filterRow}>
            <Pressable
              onPress={() => setShowFilters(f => !f)}
              style={[s.filterToggle, (showFilters || activeFilterCount > 0) && s.filterToggleActive]}>
              <Ionicons name="options" size={14} color={showFilters || activeFilterCount > 0 ? "#c4b5fd" : "rgba(255,255,255,0.45)"} />
              <Text style={[s.filterToggleText, (showFilters || activeFilterCount > 0) && s.filterToggleTextActive]}>
                فلاتر
              </Text>
              {activeFilterCount > 0 && (
                <View style={s.filterCount}><Text style={s.filterCountText}>{activeFilterCount}</Text></View>
              )}
            </Pressable>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} style={{ flex: 1 }}>
              <View style={{ flexDirection: "row", gap: 6, paddingRight: 8 }}>
                {SORT_OPTIONS.map(opt => (
                  <Pressable key={opt.value} onPress={() => setSort(opt.value)}
                    style={[s.sortPill, sort === opt.value && s.sortPillActive]}>
                    <Text style={[s.sortPillText, sort === opt.value && s.sortPillTextActive]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
            </ScrollView>
            {activeFilterCount > 0 && (
              <Pressable onPress={clearFilters} style={{ paddingHorizontal: 4 }}>
                <Text style={{ fontSize: 11, color: "rgba(252,100,100,0.7)", fontFamily: "Cairo_700Bold" }}>مسح</Text>
              </Pressable>
            )}
          </View>

          {/* Season quick filter */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} style={s.seasonRow}>
            <View style={{ flexDirection: "row", gap: 6 }}>
              {SEASON_OPTIONS.map(opt => (
                <Pressable key={opt.value} onPress={() => setSeason(opt.value)}
                  style={[s.seasonChip, season === opt.value && s.seasonChipActive]}>
                  <Text style={{ fontSize: 12 }}>{opt.emoji}</Text>
                  <Text style={[s.seasonChipText, season === opt.value && s.seasonChipTextActive]}>{opt.label}</Text>
                </Pressable>
              ))}
            </View>
          </ScrollView>

          {/* Expandable filter panel */}
          {showFilters && (
            <View style={s.filterPanel}>
              <Text style={s.filterLabel}>النوع</Text>
              <View style={{ flexDirection: "row", flexWrap: "wrap", gap: 6, marginBottom: 10 }}>
                {FORMAT_OPTIONS.map(opt => (
                  <Pressable key={opt.value} onPress={() => setFormat(opt.value)}
                    style={[s.filterChip, format === opt.value && s.filterChipActive]}>
                    <Text style={[s.filterChipText, format === opt.value && s.filterChipTextActive]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
              <Text style={s.filterLabel}>الحالة</Text>
              <View style={{ flexDirection: "row", flexWrap: "wrap", gap: 6, marginBottom: 10 }}>
                {STATUS_OPTIONS.map(opt => (
                  <Pressable key={opt.value} onPress={() => setStatus(opt.value)}
                    style={[s.filterChip, status === opt.value && s.filterChipActive]}>
                    <Text style={[s.filterChipText, status === opt.value && s.filterChipTextActive]}>{opt.label}</Text>
                  </Pressable>
                ))}
              </View>
              <Pressable onPress={() => setShowGenres(g => !g)}
                style={{ flexDirection: "row", alignItems: "center", gap: 6, marginBottom: genre ? 4 : 0 }}>
                <Text style={s.filterLabel}>التصنيف</Text>
                {genre ? <Text style={{ fontSize: 10, color: "#c4b5fd", fontFamily: "Cairo_700Bold" }}>· {GENRES_AR[genre] || genre}</Text> : null}
                <Ionicons name={showGenres ? "chevron-up" : "chevron-down"} size={12} color="rgba(255,255,255,0.3)" />
              </Pressable>
              {showGenres && (
                <View style={{ flexDirection: "row", flexWrap: "wrap", gap: 6 }}>
                  <Pressable onPress={() => setGenre("")} style={[s.filterChip, !genre && s.filterChipActive]}>
                    <Text style={[s.filterChipText, !genre && s.filterChipTextActive]}>الكل</Text>
                  </Pressable>
                  {GENRES.map(g => (
                    <Pressable key={g} onPress={() => setGenre(genre === g ? "" : g)}
                      style={[s.filterChip, genre === g && s.filterChipActive]}>
                      <Text style={[s.filterChipText, genre === g && s.filterChipTextActive]}>{GENRES_AR[g] || g}</Text>
                    </Pressable>
                  ))}
                </View>
              )}
            </View>
          )}
        </View>

        {/* ── Loading ── */}
        {loading && (
          <View style={s.loadingWrap}>
            <ActivityIndicator color="#8B5CF6" size="large" />
          </View>
        )}

        {/* ── Search history (idle state) ── */}
        {!loading && showEmpty && (
          <ScrollView contentContainerStyle={{ paddingHorizontal: 16, paddingTop: 14, paddingBottom: 40 }}>
            {history.length > 0 && (
              <View style={{ marginBottom: 20 }}>
                <View style={s.historyHeader}>
                  <Text style={s.historyTitle}>البحث الأخير</Text>
                  <Pressable onPress={() => { setHistory([]); AsyncStorage.removeItem("searchHistory"); }}>
                    <Text style={s.historyClear}>مسح الكل</Text>
                  </Pressable>
                </View>
                <View style={s.historyChips}>
                  {history.map((h, i) => (
                    <Pressable key={i} onPress={() => setQuery(h)} style={s.historyChip}>
                      <Ionicons name="time" size={12} color="rgba(255,255,255,0.4)" />
                      <Text style={s.historyChipText}>{h}</Text>
                    </Pressable>
                  ))}
                </View>
              </View>
            )}
            <View style={s.idleWrap}>
              <View style={s.idleIcon}>
                <Ionicons name="search" size={28} color="rgba(139,92,246,0.4)" />
              </View>
              <Text style={s.idleText}>ابحث عن أنميك المفضل</Text>
              <Text style={s.idleSub}>أو استخدم الفلاتر لاستكشاف الأنميات</Text>
            </View>
          </ScrollView>
        )}

        {/* ── Results grid ── */}
        {!loading && results.length > 0 && (
          <FlatList
            data={results}
            keyExtractor={item => item.id.toString()}
            numColumns={3}
            columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
            contentContainerStyle={{ paddingHorizontal: 14, paddingTop: 12, paddingBottom: 100 }}
            showsVerticalScrollIndicator={false}
            ListHeaderComponent={
              activeSeason?.value ? (
                <View style={s.activeSeasonRow}>
                  <Text style={s.activeSeasonLabel}>موسم:</Text>
                  <Text style={s.activeSeasonValue}>{activeSeason.emoji} {activeSeason.label}</Text>
                </View>
              ) : null
            }
            renderItem={({ item }) => (
              <AnimeCard
                anime={item}
                onPress={() => router.push(`/anime/${item.id}?title=${encodeURIComponent(item.title?.romaji || "")}&english=${encodeURIComponent(item.title?.english || "")}`)}
              />
            )}
          />
        )}

        {/* ── Empty results ── */}
        {!loading && results.length === 0 && !showEmpty && (
          <View style={s.emptyWrap}>
            <View style={s.emptyIcon}>
              <Ionicons name="search" size={28} color="rgba(255,255,255,0.15)" />
            </View>
            <Text style={s.emptyText}>
              {query ? `لا توجد نتائج لـ "${query}"` : "لا توجد نتائج بهذه الفلاتر"}
            </Text>
            {activeFilterCount > 0 && (
              <Pressable onPress={clearFilters} style={s.emptyBtn}>
                <Text style={s.emptyBtnText}>إزالة الفلاتر</Text>
              </Pressable>
            )}
          </View>
        )}
      </View>

      {/* ══ trace.moe modal ══ */}
      <Modal visible={showTrace} animationType="slide" transparent presentationStyle="overFullScreen"
        onRequestClose={() => setShowTrace(false)}>
        <Pressable style={sm.overlay} onPress={() => setShowTrace(false)}>
          <Pressable style={sm.sheet} onPress={e => e.stopPropagation()}>

            {/* header */}
            <View style={sm.header}>
              <View style={sm.iconBox}>
                <Ionicons name="camera-outline" size={18} color="#c4b5fd" />
              </View>
              <View style={{ flex: 1 }}>
                <Text style={sm.title}>البحث بالصورة</Text>
                <Text style={sm.sub}>اعثر على الأنمي من لقطة شاشة</Text>
              </View>
              <Pressable onPress={() => setShowTrace(false)} hitSlop={10}>
                <Ionicons name="close" size={20} color="rgba(255,255,255,0.35)" />
              </Pressable>
            </View>

            {/* URL input */}
            <View style={sm.urlRow}>
              <TextInput
                value={traceUrl}
                onChangeText={setTraceUrl}
                placeholder="الصق رابط الصورة..."
                placeholderTextColor="rgba(255,255,255,0.25)"
                style={sm.urlInput}
                autoCapitalize="none"
                keyboardType="url"
              />
              <Pressable
                onPress={() => traceUrl.trim() && runTraceSearch(traceUrl.trim())}
                disabled={!traceUrl.trim() || traceLoading}
                style={[sm.searchBtn, (!traceUrl.trim() || traceLoading) && { opacity: 0.4 }]}>
                <Text style={sm.searchBtnText}>بحث</Text>
              </Pressable>
            </View>

            {/* divider */}
            <View style={sm.divider}>
              <View style={sm.divLine} />
              <Text style={sm.divText}>أو</Text>
              <View style={sm.divLine} />
            </View>

            {/* Pick image */}
            <Pressable onPress={pickImageForTrace} disabled={traceLoading}
              style={[sm.uploadBtn, traceLoading && { opacity: 0.4 }]}>
              <Ionicons name="image-outline" size={16} color="rgba(196,181,253,0.7)" />
              <Text style={sm.uploadBtnText}>اختر صورة من الجهاز</Text>
            </Pressable>

            {/* Loading */}
            {traceLoading && (
              <View style={{ alignItems: "center", paddingVertical: 20 }}>
                <ActivityIndicator color="#8B5CF6" size="large" />
                <Text style={{ fontSize: 11, color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", marginTop: 8 }}>
                  جارٍ البحث...
                </Text>
              </View>
            )}

            {/* Error */}
            {!!traceError && !traceLoading && (
              <View style={sm.errorBox}>
                <Text style={sm.errorText}>{traceError}</Text>
              </View>
            )}

            {/* Results */}
            {traceResults.length > 0 && !traceLoading && (
              <ScrollView style={{ maxHeight: 340 }} showsVerticalScrollIndicator={false}>
                <Text style={sm.resTitle}>{traceResults.length} نتيجة — انقر للمشاهدة</Text>
                {traceResults.map((r, i) => (
                  <Pressable key={i} style={sm.resCard}
                    onPress={() => {
                      setShowTrace(false);
                      router.push(`/anime/${r.anilistId}?title=${encodeURIComponent(r.title)}&english=${encodeURIComponent(r.titleEn)}`);
                    }}>
                    <View style={sm.resThumb}>
                      {r.previewImage || r.coverImage ? (
                        <Image source={{ uri: (r.previewImage || r.coverImage)! }} style={sm.resImg} />
                      ) : (
                        <Ionicons name="film-outline" size={20} color="rgba(255,255,255,0.15)" />
                      )}
                    </View>
                    <View style={{ flex: 1 }}>
                      <Text style={sm.resName} numberOfLines={2}>{r.title}</Text>
                      <View style={{ flexDirection: "row", flexWrap: "wrap", gap: 6, marginTop: 4 }}>
                        {r.episode != null && (
                          <View style={sm.badge}><Text style={sm.badgeText}>حلقة {r.episode}</Text></View>
                        )}
                        <Text style={sm.timeTxt}>{fmtTime(r.from)} – {fmtTime(r.to)}</Text>
                        <View style={[sm.badge, { backgroundColor: "rgba(16,185,129,0.15)" }]}>
                          <Text style={[sm.badgeText, { color: "#6EE7B7" }]}>{r.similarity}%</Text>
                        </View>
                      </View>
                    </View>
                    <Ionicons name="chevron-back" size={14} color="rgba(255,255,255,0.2)" />
                  </Pressable>
                ))}
              </ScrollView>
            )}
          </Pressable>
        </Pressable>
      </Modal>

    </KeyboardAvoidingView>
  );
}

const sm = StyleSheet.create({
  overlay: { flex: 1, backgroundColor: "rgba(0,0,0,0.65)", justifyContent: "flex-end" },
  sheet: { backgroundColor: "#111116", borderTopLeftRadius: 24, borderTopRightRadius: 24, padding: 20, paddingBottom: 40, borderTopWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  header: { flexDirection: "row", alignItems: "center", gap: 12, marginBottom: 16 },
  iconBox: { width: 34, height: 34, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.18)", alignItems: "center", justifyContent: "center" },
  title: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "#fff" },
  sub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)" },
  urlRow: { flexDirection: "row", gap: 8, marginBottom: 12 },
  urlInput: { flex: 1, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", borderRadius: 12, paddingHorizontal: 12, paddingVertical: 10, fontSize: 12, color: "#fff", fontFamily: "Cairo_400Regular", textAlign: "left" },
  searchBtn: { backgroundColor: "#7C3AED", borderRadius: 12, paddingHorizontal: 14, justifyContent: "center" },
  searchBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#fff" },
  divider: { flexDirection: "row", alignItems: "center", gap: 10, marginBottom: 12 },
  divLine: { flex: 1, height: 1, backgroundColor: "rgba(255,255,255,0.06)" },
  divText: { fontSize: 10, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_400Regular" },
  uploadBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, backgroundColor: "#18181B", borderRadius: 12, paddingVertical: 14, borderWidth: 1, borderStyle: "dashed", borderColor: "rgba(139,92,246,0.25)", marginBottom: 12 },
  uploadBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(196,181,253,0.7)" },
  errorBox: { backgroundColor: "rgba(239,68,68,0.1)", borderRadius: 12, padding: 12, marginBottom: 8 },
  errorText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "#FCA5A5", textAlign: "center" },
  resTitle: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.3)", marginBottom: 8 },
  resCard: { flexDirection: "row", alignItems: "center", gap: 10, backgroundColor: "#18181B", borderRadius: 12, padding: 10, marginBottom: 8, borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  resThumb: { width: 48, height: 68, borderRadius: 8, overflow: "hidden", backgroundColor: "#222226", alignItems: "center", justifyContent: "center" },
  resImg: { width: "100%", height: "100%" },
  resName: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#fff", lineHeight: 16 },
  badge: { backgroundColor: "rgba(139,92,246,0.15)", borderRadius: 8, paddingHorizontal: 6, paddingVertical: 2 },
  badgeText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  timeTxt: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", alignSelf: "center" },
});

const s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#0A0A0F" },
  header: { backgroundColor: "#0A0A0F", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)", paddingHorizontal: 14, paddingTop: 10, paddingBottom: 6 },
  searchBar: { flexDirection: "row", alignItems: "center", gap: 10, backgroundColor: "#18181B", borderRadius: 16, paddingHorizontal: 14, paddingVertical: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", marginBottom: 8 },
  searchInput: { flex: 1, color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold", textAlign: "right" },
  filterRow: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 8 },
  filterToggle: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 10, paddingVertical: 7, borderRadius: 12, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  filterToggleActive: { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.3)" },
  filterToggleText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  filterToggleTextActive: { color: "#c4b5fd" },
  filterCount: { width: 16, height: 16, borderRadius: 8, backgroundColor: "#8B5CF6", alignItems: "center", justifyContent: "center" },
  filterCountText: { fontSize: 9, color: "#fff", fontFamily: "Cairo_700Bold" },
  sortPill: { paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  sortPillActive: { backgroundColor: "#8B5CF6", borderColor: "#8B5CF6" },
  sortPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  sortPillTextActive: { color: "#fff" },
  seasonRow: { marginBottom: 6 },
  seasonChip: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  seasonChipActive: { backgroundColor: "rgba(139,92,246,0.2)", borderColor: "rgba(139,92,246,0.4)" },
  seasonChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.40)" },
  seasonChipTextActive: { color: "#8B5CF6" },
  filterPanel: { backgroundColor: "#0A0A0F", borderTopWidth: 1, borderTopColor: "rgba(255,255,255,0.05)", paddingTop: 12, paddingBottom: 8 },
  filterLabel: { fontSize: 10, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_700Bold", marginBottom: 8 },
  filterChip: { paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  filterChipActive: { backgroundColor: "rgba(139,92,246,0.2)", borderColor: "rgba(139,92,246,0.4)" },
  filterChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)" },
  filterChipTextActive: { color: "#c4b5fd" },
  historyHeader: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", marginBottom: 10 },
  historyTitle: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.30)" },
  historyClear: { fontSize: 10, color: "rgba(139,92,246,0.7)", fontFamily: "Cairo_700Bold" },
  historyChips: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
  historyChip: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.05)" },
  historyChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.55)" },
  activeSeasonRow: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 10 },
  activeSeasonLabel: { fontSize: 10, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_400Regular" },
  activeSeasonValue: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  loadingWrap: { flex: 1, alignItems: "center", justifyContent: "center" },
  card: { flex: 1 / 3 },
  cardImgWrap: { borderRadius: 14, overflow: "hidden", aspectRatio: 2 / 3, backgroundColor: "#18181B", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)", position: "relative" },
  cardImg: { width: "100%", height: "100%" },
  noImg: { backgroundColor: "rgba(139,92,246,0.1)", alignItems: "center", justifyContent: "center" },
  scoreBadge: { position: "absolute", top: 6, right: 6, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 8, paddingHorizontal: 5, paddingVertical: 2, borderWidth: 1, borderColor: "rgba(251,191,36,0.2)" },
  scoreText: { fontSize: 7, fontFamily: "Cairo_700Bold", color: "#fff" },
  fmtBadge: { position: "absolute", top: 6, left: 6, paddingHorizontal: 5, paddingVertical: 2, borderRadius: 6 },
  fmtText: { fontSize: 7, fontFamily: "Cairo_700Bold", color: "#fff" },
  cardBottom: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6, backgroundColor: "rgba(0,0,0,0.55)" },
  cardTitle: { fontSize: 9.5, color: "#fff", fontFamily: "Cairo_700Bold", lineHeight: 14 },
  idleWrap: { alignItems: "center", paddingTop: 20 },
  idleIcon: { width: 72, height: 72, borderRadius: 24, backgroundColor: "rgba(139,92,246,0.08)", borderWidth: 1, borderColor: "rgba(139,92,246,0.15)", alignItems: "center", justifyContent: "center", marginBottom: 16 },
  idleText: { fontSize: 16, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.45)", marginBottom: 6 },
  idleSub: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.25)", textAlign: "center" },
  emptyWrap: { flex: 1, alignItems: "center", justifyContent: "center", paddingHorizontal: 24 },
  emptyIcon: { width: 64, height: 64, borderRadius: 24, backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center", marginBottom: 16 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.40)", textAlign: "center", marginBottom: 16 },
  emptyBtn: { paddingHorizontal: 16, paddingVertical: 10, borderRadius: 14, backgroundColor: "rgba(139,92,246,0.1)", borderWidth: 1, borderColor: "rgba(139,92,246,0.2)" },
  emptyBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
});
