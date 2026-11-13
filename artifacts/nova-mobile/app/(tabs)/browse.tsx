import React, { useState, useEffect, useCallback, useRef, useMemo } from "react";
import {
  View, Text, TextInput, FlatList, Image, I18nManager,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";
import { getGridColumnCount } from "@/components/AnimeCard";
import { AnimeFilterSheet, type AnimeFilterOption } from "@/components/AnimeFilterSheet";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";

function useBrowseTheme() {
  const colors = useColors();
  const { deviceScale } = useTvMetrics();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const g = useMemo(() => createBrowseStyles(colors, deviceScale, tvMode), [colors, deviceScale, tvMode]);
  return { colors, g, deviceScale };
}

/* ── Data ── */
interface AnimeResult {
  id: number;
  idSource?: "mal" | "kitsu" | string;
  title: { romaji: string; english?: string };
  title_ar?: string;
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
  { label: "الأكثر شعبية", value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "بواسطة الاسم", value: "TITLE_ROMAJI" },
  { label: "الأحدث", value: "START_DATE_DESC" },
];
const TV_SORT_OPTIONS = [
  { label: "رائج", value: "TRENDING_DESC" },
  { label: "الأشهر", value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "الأحدث", value: "START_DATE_DESC" },
];

const SEASON_OPTIONS = [
  { label: "كل المواسم", value: "" },
  { label: "موسم الشتاء", value: "WINTER" },
  { label: "موسم الربيع", value: "SPRING" },
  { label: "موسم الصيف", value: "SUMMER" },
  { label: "موسم الخريف", value: "FALL" },
];
const TV_SEASON_OPTIONS = [
  { label: "الكل", value: "" },
  { label: "❄️ شتاء", value: "WINTER" },
  { label: "🌸 ربيع", value: "SPRING" },
  { label: "☀️ صيف", value: "SUMMER" },
  { label: "🍂 خريف", value: "FALL" },
];

const CUR_YEAR = new Date().getFullYear();
const START_YEAR = 1990;
const YEARS = ["الكل", ...Array.from({ length: CUR_YEAR - START_YEAR + 1 }, (_, i) => String(CUR_YEAR - i))];
const STATUS_OPTIONS = [
  { label: "الكل", value: "" },
  { label: "يعرض حالياً", value: "RELEASING" },
  { label: "مكتمل", value: "FINISHED" },
];
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

const GENRES_WITH_COVERS = [
  { genre: "Adventure",     ar: "مغامرة",      color: "#D97706", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx21-ELSYx3yMPcKM.jpg", icon: "compass-outline" },
  { genre: "Action",        ar: "أكشن",        color: "#CA8A04", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx101922-WBsBl0ClmgYL.jpg", icon: "flame-outline" },
  { genre: "Comedy",        ar: "كوميديا",     color: "#EAB308", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx140960-Kb6R5nYQfjmP.jpg", icon: "happy-outline" },
  { genre: "Fantasy",       ar: "فانتازيا",    color: "#7C3AED", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx154587-qQTzQnEJJ3oB.jpg", icon: "sparkles-outline" },
  { genre: "Drama",         ar: "دراما",       color: "#DB2777", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx21827-ubzq619ZA2E9.png", icon: "film-outline" },
  { genre: "Romance",       ar: "رومانسي",     color: "#EC4899", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx124080-3i22mRVPBS0T.jpg", icon: "heart-outline" },
  { genre: "Sci-Fi",        ar: "خيال علمي",   color: "#0891B2", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx9253-tIUXF2gfU8Sg.jpg", icon: "planet-outline" },
  { genre: "Supernatural",  ar: "خوارق",       color: "#6D28D9", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx113415-LHBAeoZDIsnF.jpg", icon: "skull-outline" },
  { genre: "Mystery",       ar: "غموض",        color: "#4F46E5", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1535-kUgkcrfOrkUM.jpg", icon: "search-outline" },
  { genre: "Sports",        ar: "رياضة",       color: "#16A34A", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20464-ooZUyBe4ptp9.png", icon: "football-outline" },
  { genre: "Slice of Life", ar: "حياة يومية",  color: "#EA580C", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20665-TLgkL8T8IRFd.png", icon: "cafe-outline" },
  { genre: "Horror",        ar: "رعب",         color: "#DC2626", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b20605-k665mVkSug8D.jpg", icon: "flash-outline" },
  { genre: "Psychological", ar: "نفسي",        color: "#9333EA", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx19-gtMC64182sm4.jpg", icon: "eye-outline" },
  { genre: "Music",         ar: "موسيقى",      color: "#C026D3", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx130003-HTDmeL4RGeJ4.png", icon: "musical-notes-outline" },
  { genre: "Mecha",         ar: "ميكا",        color: "#2563EB", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1575-hsmWM2ydNm1m.jpg", icon: "hardware-chip-outline" },
  { genre: "Isekai",        ar: "إيسيكاي",     color: "#0284C7", cover: "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx108465-1ANspF1EWyFx.jpg", icon: "globe-outline" },
];

const FILTER_GENRES: AnimeFilterOption[] = [
  { label: "الكل", value: "" },
  ...GENRES_WITH_COVERS.map(({ genre, ar }) => ({ label: ar, value: genre })),
];

const FORMAT_AR: Record<string,string> = { TV:"مسلسل", MOVIE:"فيلم", OVA:"OVA", ONA:"ONA", SPECIAL:"خاص" };
const BLOCKED = new Set(["Hentai"]);

function coverUrl(id: number) { return `https://img.anili.st/media/${id}`; }

/* ── Genre badge card with authentic anime artwork + vector fallback ── */
function GenreCard({
  item,
  onPress,
  columns,
  horizontal = false,
}: {
  item: typeof GENRES_WITH_COVERS[0];
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
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          g.genrePillWrap,
          horizontal && g.horizontalGenrePillWrap,
          tvMode && g.tvGenreImgWrap,
          { backgroundColor: item.color },
        ]}
      >
        <Text numberOfLines={1} style={[g.genreLabel, tvMode && g.tvGenreLabel]}>
          {item.ar}
        </Text>
        <View style={[g.genreFloatingPosterWrap, horizontal && g.horizontalGenreFloatingPosterWrap]}>
          {item.cover && !imgErr ? (
            <Image
              source={{ uri: item.cover }}
              style={g.genreFloatingPoster}
              resizeMode="cover"
              onError={() => setImgErr(true)}
            />
          ) : (
            <Ionicons
              name={item.icon as any}
              size={horizontal ? 19 : 22}
              color="#FFFFFF"
            />
          )}
        </View>
      </View>
    </Pressable>
  );
}

/* ── Anime card ── */
function AnimeCard({
  anime,
  onPress,
  columns,
  hasTVPreferredFocus,
  onFocus,
}: {
  anime: AnimeResult;
  onPress: () => void;
  columns: number;
  hasTVPreferredFocus?: boolean;
  onFocus?: () => void;
}) {
  const { g } = useBrowseTheme();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const gridW = Math.min(Math.max(width - 24, 280), tvMode ? 1100 : 900);
  const cardW = Math.max(88, Math.floor((gridW - 24 - 10 * (columns - 1)) / columns));
  const cardH = Math.round(cardW * 1.44);
  const fmt = anime.format ? FORMAT_AR[anime.format] : null;
  const isFilm = anime.format === "MOVIE";
  return (
    <Pressable
      onPress={onPress}
      focusable={tvMode}
      hasTVPreferredFocus={hasTVPreferredFocus}
      onFocus={onFocus}
      style={({ focused }) => [
        g.card,
        { width: cardW, height: cardH, flex: 0, borderRadius: tvMode ? 16 : 13 },
        tvMode && { borderWidth: 2.5, borderColor: "transparent", padding: 2 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[g.cardWrap, tvMode && g.tvCardWrap, { width: "100%", height: "100%", aspectRatio: undefined }]}>
        {anime.coverImage?.large ? (
          <Image
            source={{ uri: tvMode ? anime.coverImage.extraLarge || anime.coverImage.large : anime.coverImage.large }}
            style={g.cardImg}
            resizeMethod="resize"
            fadeDuration={tvMode ? 0 : 100}
          />
        ) : (
          <View style={[g.cardImg, g.cardNoImg]} />
        )}
        {anime.averageScore ? (
          <View style={[g.scoreBadge, tvMode && g.tvScoreBadge]}>
            <Ionicons name="star" size={tvMode ? 13 : 7} color="#FBBF24" />
            <Text style={[g.scoreText, tvMode && g.tvScoreText]}>{(anime.averageScore / 10).toFixed(1)}</Text>
          </View>
        ) : null}
        {fmt ? (
          <View style={[g.fmtBadge, tvMode && g.tvFmtBadge, { backgroundColor: isFilm ? "#3B82F6" : "#7C3AED" }]}>
            <Text style={[g.fmtText, tvMode && g.tvFmtText]}>{fmt}</Text>
          </View>
        ) : null}
        <View style={g.cardBottom}>
          <Text style={[g.cardTitle, { writingDirection: "ltr" }]} numberOfLines={1}>
            {anime.title?.english || anime.title?.romaji}
          </Text>
          {anime.title_ar ? (
            <Text
              numberOfLines={1}
              style={g.cardTitleAr}
            >
              {anime.title_ar}
            </Text>
          ) : null}
        </View>
      </View>
    </Pressable>
  );
}

/* ── Genre query to get a cover image ── */
const GENRE_COVER_QUERY = (genre: string) => `
query { Page(page:1,perPage:1) {
  media(type:ANIME,genre:"${genre}",sort:[POPULARITY_DESC]){id coverImage{large}}
}}`;

const BROWSE_QUERY = (sort: string, format: string, season: string, year: string, genre: string, status: string) => `
query ($page: Int) {
  Page(page: $page, perPage: 30) {
    media(type:ANIME, countryOfOrigin:"JP", isAdult:false, genre_not_in:["Hentai"], sort:[${sort || "POPULARITY_DESC"}]${format ? `, format:${format}` : ""}${season ? `, season:${season}` : ""}${year ? `, seasonYear:${year}` : ""}${genre ? `, genre:"${genre}"` : ""}${status ? `, status:${status}` : ""}) {
      id title { romaji english } coverImage { large extraLarge } averageScore episodes format status startDate { year } genres
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
  const { colors, g } = useBrowseTheme();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
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
  // TV gets a wider, remote-friendly grid without decoding an excessive
  // number of posters at once.
  const tvMode = isTvDevice(width, height);
  const gridColumns = getGridColumnCount(width, height);
  const genreColumns = tvMode ? 3 : 2;
  const gridWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);
  const filterRailWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);

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
  const [sort, setSort] = useState([...SORT_OPTIONS, ...TV_SORT_OPTIONS].some(opt => opt.value === routeSort) ? routeSort : "POPULARITY_DESC");
  const [season, setSeason] = useState(SEASON_OPTIONS.some(opt => opt.value === routeSeason) ? routeSeason : "");
  const [year, setYear] = useState(/^\d{4}$/.test(routeYear) ? routeYear : "");
  const [status, setStatus] = useState(["RELEASING", "FINISHED"].includes(routeStatus) ? routeStatus : "");
  const [search, setSearch] = useState("");
  const [filterVisible, setFilterVisible] = useState(false);

  const [items, setItems] = useState<AnimeResult[]>([]);
  const [loading, setLoading] = useState(false);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);

  const [genreCovers, setGenreCovers] = useState<Record<string, string>>({});
  const [searchItems, setSearchItems] = useState<AnimeResult[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);

  const listRef = useRef<FlatList<AnimeResult>>(null);
  const { preferredKey, ready, rememberFocus } = useTvFocusMemory("browse");
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
    setSort([...SORT_OPTIONS, ...TV_SORT_OPTIONS].some(opt => opt.value === routeSort) ? routeSort : "POPULARITY_DESC");
    setSeason(SEASON_OPTIONS.some(opt => opt.value === routeSeason) ? routeSeason : "");
    setYear(/^\d{4}$/.test(routeYear) ? routeYear : "");
    setStatus(["RELEASING", "FINISHED"].includes(routeStatus) ? routeStatus : "");
    setView("list");
  }, [routeParams.genre, routeParams.genreAr, routeParams.format, routeParams.sort, routeParams.season, routeParams.year, routeParams.status]);

  /* Every genre already has a dedicated, verified unique cover in GENRES_WITH_COVERS */

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
    setFormat(""); setSort("POPULARITY_DESC"); setSeason(""); setYear(""); setStatus(""); setSearch("");
  }

  const filteredItems = search.trim() ? searchItems : items;
  const listLoading = search.trim() ? searchLoading : loading;

  const hasFilters = format || sort !== "POPULARITY_DESC" || season || year || status || activeGenre;
  const browseTitle = activeGenreAr
    ? `${activeGenreAr}`
    : status === "RELEASING" ? "يُعرض حالياً"
    : format ? FORMAT_AR[format] || format
    : season ? SEASON_OPTIONS.find(s => s.value === season)?.label.replace(/.*? /, "") || "تصفح"
    : "تصفح";

  return (
    <View style={[g.container, { paddingTop: topPad }]}>
      {/* ── Header (Unified across Phone, iPad & TV) ── */}
      <View style={[g.header, tvMode && width >= 700 && g.tvHeader]}>
        <View style={g.mobileHeaderRow}>
          <View style={g.mobileTitleGroup}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="رجوع"
              focusable={tvMode}
              onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
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
              {activeGenreAr || "المكتبة والتصفح"}
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
                <Ionicons name="compass-outline" size={13} color={view === "list" ? colors.buttonText : colors.textMuted} />
                <Text style={[g.modeButtonText, view === "list" && g.modeButtonTextActive]}>تصفح</Text>
              </Pressable>
            </View>
            <Pressable
              accessibilityLabel="التصنيفات"
              focusable={tvMode}
              onPress={() => setView(view === "genres" ? "list" : "genres")}
              style={[g.mobileFilterButton, view === "genres" && g.genreToggleBtnActive]}
            >
              <Ionicons name="grid-outline" size={16} color={view === "genres" ? colors.accent : colors.textPrimary} />
            </Pressable>
            <Pressable
              accessibilityLabel="فتح الفلاتر"
              focusable={tvMode}
              onPress={() => setFilterVisible(true)}
              style={[g.mobileFilterButton, hasFilters && g.mobileFilterButtonActive]}
            >
              <Ionicons name="options-outline" size={17} color={hasFilters ? colors.buttonText : colors.textPrimary} />
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
            {SORT_OPTIONS.find((option) => option.value === sort)?.label || "الأكثر شعبية"}
            {format ? ` · ${FORMAT_AR[format] || format}` : ""}
            {season ? ` · ${SEASON_OPTIONS.find((s) => s.value === season)?.label || season}` : ""}
            {year ? ` · ${year}` : ""}
          </Text>
          <Ionicons name="chevron-down" size={16} color={colors.textSecondary} />
        </Pressable>

        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
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
              onPress={() => openGenre(item.genre, item.ar)}
            />
          ))}
        </ScrollView>
      </View>

      {/* ── Genre grid ── */}
      {view === "genres" && (
        <FlatList
          data={GENRES_WITH_COVERS}
          style={{ width: gridWidth, alignSelf: "center" }}
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
           removeClippedSubviews={false}
          renderItem={({ item }) => (
            <GenreCard
              item={item}
              liveCoverUrl={genreCovers[item.genre]}
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
              <ActivityIndicator color={colors.accent} size="large" />
            </View>
          ) : (
            <FlatList
              ref={listRef}
              data={filteredItems}
              style={{ width: gridWidth, alignSelf: "center" }}
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
               removeClippedSubviews={false}
               onEndReached={() => { if (!search.trim() && hasMore && !loading) loadItems(page + 1, false); }}
              onEndReachedThreshold={0.4}
              ListEmptyComponent={
                 !listLoading ? (
                  <View style={g.center}>
                    <Ionicons name="film" size={48} color={colors.textMuted} />
                    <Text style={g.emptyText}>لا توجد أنميات بهذه الفلاتر</Text>
                  </View>
                ) : null
              }
              ListHeaderComponent={(
                <View style={g.resultsHeading}>
                  <Text style={g.resultsHeadingText}>
                    {search.trim() ? "نتائج البحث" : "قائمة الأنمي"} ({filteredItems.length} عمل)
                  </Text>
                </View>
              )}
               ListFooterComponent={listLoading && filteredItems.length > 0 ? (
                <View style={{ padding: 20, alignItems: "center" }}>
                  <ActivityIndicator color={colors.accent} />
                </View>
              ) : null}
              renderItem={({ item, index }) => (
                <AnimeCard
                  anime={item}
                  columns={gridColumns}
                  hasTVPreferredFocus={
                    tvMode &&
                    ready &&
                    Boolean(preferredKey && preferredKey === String(item.id))
                  }
                  onFocus={() => {
                    rememberFocus(String(item.id));
                  }}
                  onPress={() => router.push(
                    `/anime/${item.id}?title=${encodeURIComponent(item.title.romaji)}&english=${encodeURIComponent(item.title.english || "")}${item.idSource ? `&src=${encodeURIComponent(item.idSource)}` : ""}`
                  )}
                />
              )}
            />
          )}
        </>
      )}
      <AnimeFilterSheet
        visible={filterVisible}
        resultCount={filteredItems.length}
        sortOptions={SORT_OPTIONS}
        formatOptions={FORMAT_OPTIONS}
        statusOptions={STATUS_OPTIONS}
        seasonOptions={SEASON_OPTIONS}
        genreOptions={FILTER_GENRES}
        years={YEARS}
        sort={sort}
        format={format}
        status={status}
        season={season}
        genre={activeGenre}
        year={year}
        onSortChange={setSort}
        onFormatChange={(value) => { setFormat(value); setView("list"); }}
        onStatusChange={setStatus}
        onSeasonChange={setSeason}
        onGenreChange={(value) => {
          setActiveGenre(value);
          setActiveGenreAr(FILTER_GENRES.find((option) => option.value === value)?.label || "");
        }}
        onYearChange={setYear}
        onReset={clearAll}
        onClose={() => setFilterVisible(false)}
      />
    </View>
  );
}

const createBrowseStyles = (colors: ThemePalette, s = 1, tvMode = false) => StyleSheet.create({
  container: { flex: 1, backgroundColor: colors.background },
  header: { backgroundColor: colors.surface, borderBottomWidth: 1, borderBottomColor: colors.border, paddingHorizontal: Math.round(11 * s), paddingTop: 8, paddingBottom: 5 },
  tvHeader: { paddingHorizontal: 32, paddingTop: 16, paddingBottom: 14 },
  mobileHeaderRow: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", minHeight: Math.round(40 * s), gap: 6 },
  mobileActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 5, flexShrink: 0 },
  mobileFilterButton: { width: Math.round(36 * s), height: Math.round(36 * s), borderRadius: Math.round(11 * s), alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  mobileFilterButtonActive: { backgroundColor: colors.destructive, borderColor: colors.destructive },
  modeSwitch: { flexDirection: ROW_RTL, alignItems: "center", padding: 2.5, borderRadius: Math.round(12 * s), backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  modeButton: { minHeight: Math.round(30 * s), flexDirection: ROW_RTL, alignItems: "center", justifyContent: "center", gap: 4, paddingHorizontal: Math.round(8 * s), borderRadius: Math.round(9 * s) },
  modeButtonActive: { backgroundColor: "#0ea5e9" },
  modeButtonText: { color: colors.textSecondary, fontFamily: "Cairo_700Bold", fontSize: Math.round(9.8 * s) },
  modeButtonTextActive: { color: "#ffffff" },
  mobileTitleGroup: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 7, minWidth: 0 },
  mobileTitle: { color: colors.textPrimary, fontSize: Math.round(15 * s), fontFamily: "Cairo_800ExtraBold", textAlign: "right", writingDirection: "rtl" },
  mobileBackButton: { width: Math.round(36 * s), height: Math.round(36 * s), borderRadius: Math.round(11 * s), alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border, flexShrink: 0 },
  mobileSortButton: { minHeight: Math.round(40 * s), flexDirection: ROW_RTL, alignItems: "center", gap: 8, marginTop: 8, paddingHorizontal: 12, borderRadius: Math.round(13 * s), backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  mobileSortText: { flex: 1, color: colors.textPrimary, fontSize: Math.round(12.2 * s), fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  mobileGenreRail: { marginTop: 10, marginHorizontal: -Math.round(11 * s) },
  mobileGenreRailContent: { flexDirection: ROW_RTL, gap: 9, paddingHorizontal: Math.round(11 * s), paddingTop: 10, paddingBottom: 6 },
  resultsHeading: { paddingTop: 2, paddingBottom: 10, alignItems: "flex-end" },
  resultsHeadingText: { color: colors.textSecondary, fontSize: Math.round(11 * s), fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  headerRow: { flexDirection: "row", alignItems: "center", marginBottom: 6 },
  headerTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
  tvHeaderTitle: { fontSize: 26, lineHeight: 36 },
  headerSub: { fontSize: 9, color: colors.textMuted, fontFamily: "Cairo_400Regular" },
  tvHeaderSub: { fontSize: 14, lineHeight: 22 },
  clearBtn: { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.destructiveSurface, borderWidth: 1, borderColor: colors.destructiveBorder },
  clearBtnText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: colors.destructive },
  tvClearBtn: { paddingHorizontal: 16, paddingVertical: 10, borderRadius: 14, gap: 6, minHeight: 46 },
  tvClearBtnText: { fontSize: 16, lineHeight: 23 },
  genreToggleBtn: { flexDirection: "row", alignItems: "center", gap: 3, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  tvGenreToggleBtn: { paddingHorizontal: 16, paddingVertical: 10, borderRadius: 14, gap: 7, minHeight: 46 },
  genreToggleBtnActive: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
  genreToggleText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
  tvGenreToggleText: { fontSize: 16, lineHeight: 23 },
  chipRow: { marginBottom: 2 },
  chip: { paddingHorizontal: 9, paddingVertical: 4, borderRadius: 10, backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  tvChip: { paddingHorizontal: 11, paddingVertical: 6, borderRadius: 10, minHeight: 36, justifyContent: "center" },
  chipActive: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
  chipText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
  tvChipText: { fontSize: 13, lineHeight: 19 },
  chipTextActive: { color: colors.accent },
  chipActive2: { backgroundColor: colors.accent, borderColor: colors.accent },
  chipText2Active: { color: colors.buttonText },
  searchWrap: { flexDirection: "row", alignItems: "center", gap: 6, backgroundColor: colors.input, borderRadius: 10, paddingHorizontal: 10, paddingVertical: 4, marginTop: 4, borderWidth: 1, borderColor: colors.border },
  tvSearchWrap: { minHeight: 44, borderRadius: 12, paddingHorizontal: 12, paddingVertical: 6, gap: 7 },
  searchInput: { flex: 1, color: colors.textPrimary, fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "right" },
  tvSearchInput: { fontSize: 14, lineHeight: 21 },
  genreCard: { flex: 1 },
  horizontalGenreCard: { width: Math.round(142 * s), flexGrow: 0 },
  genreCardWrap: { paddingTop: 16, position: "relative" },
  horizontalGenreCardWrap: { paddingTop: 14, position: "relative" },
  genrePillWrap: {
    height: tvMode ? Math.round(44 * s) : Math.round(58 * s),
    borderRadius: Math.round(15 * s),
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: Math.round(10 * s),
    position: "relative",
    overflow: "visible",
  },
  horizontalGenrePillWrap: {
    height: Math.round(48 * s),
    borderRadius: Math.round(14 * s),
  },
  genreFloatingPosterWrap: {
    width: tvMode ? Math.round(28 * s) : Math.round(38 * s),
    height: tvMode ? Math.round(28 * s) : Math.round(38 * s),
    borderRadius: Math.round(11 * s),
    overflow: "hidden",
    borderWidth: 1.5,
    borderColor: "rgba(255,255,255,0.45)",
    backgroundColor: "rgba(0, 0, 0, 0.25)",
    alignItems: "center",
    justifyContent: "center",
    elevation: 3,
    shadowColor: "#000",
    shadowOpacity: 0.25,
    shadowRadius: 4,
    shadowOffset: { width: 0, height: 2 },
  },
  horizontalGenreFloatingPosterWrap: {
    width: Math.round(32 * s),
    height: Math.round(32 * s),
    borderRadius: Math.round(10 * s),
  },
  genreFloatingPoster: { width: "100%", height: "100%" },
  genrePillLabel: {
    flex: 1,
    fontSize: Math.round(13 * s),
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
    textAlign: "right",
    paddingHorizontal: 6,
    textShadowColor: "rgba(0,0,0,0.28)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 3,
  },
  genreImgWrap: { height: 90, borderRadius: 16, overflow: "hidden", position: "relative", borderWidth: 1, borderColor: colors.border, justifyContent: "flex-end" },
  horizontalGenreImgWrap: { height: 58, borderRadius: 13 },
  tvGenreImgWrap: { height: 95, borderRadius: 14, borderWidth: 1 },
  genreImg: { ...StyleSheet.absoluteFillObject, width: "100%", height: "100%" },
  genreColorBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3 },
  genreLabel: { fontSize: Math.round(13 * s), fontFamily: "Cairo_800ExtraBold", color: "#fff", paddingHorizontal: Math.round(8 * s), paddingVertical: Math.round(6 * s), textShadowColor: "rgba(0,0,0,0.8)", textShadowOffset: { width: 0, height: 1 }, textShadowRadius: 4 },
  tvGenreLabel: { fontSize: 15, lineHeight: 22, padding: 8 },
  card: { flex: 1 },
  cardWrap: { borderRadius: Math.round(13 * s), overflow: "hidden", aspectRatio: 2 / 3, backgroundColor: colors.surfaceElevated, borderWidth: 1, borderColor: colors.border, position: "relative" },
  tvCardWrap: { borderRadius: 16, borderWidth: 1 },
  cardImg: { width: "100%", height: "100%" },
  cardNoImg: { backgroundColor: colors.accentSurface, alignItems: "center", justifyContent: "center" },
  scoreBadge: { position: "absolute", top: 5, right: 5, flexDirection: "row", alignItems: "center", gap: 2, backgroundColor: "rgba(0,0,0,0.72)", borderRadius: 6, paddingHorizontal: Math.round(4.5 * s), paddingVertical: 1.5 },
  tvScoreBadge: { top: 8, right: 8, borderRadius: 9, paddingHorizontal: 7, paddingVertical: 4, gap: 3 },
  scoreText: { fontSize: Math.max(7, Math.round(7.5 * s)), color: "#fff", fontFamily: "Cairo_700Bold" },
  tvScoreText: { fontSize: 12 },
  fmtBadge: { position: "absolute", top: 5, left: 5, paddingHorizontal: Math.round(5 * s), paddingVertical: 1.5, borderRadius: 5 },
  tvFmtBadge: { top: 8, left: 8, paddingHorizontal: 8, paddingVertical: 4, borderRadius: 8 },
  fmtText: { fontSize: Math.max(7, Math.round(7.5 * s)), color: "#fff", fontFamily: "Cairo_700Bold" },
  tvFmtText: { fontSize: 12 },
  cardBottom: { position: "absolute", bottom: 0, left: 0, right: 0, paddingHorizontal: Math.round(7 * s), paddingVertical: Math.round(6 * s), backgroundColor: "rgba(0,0,0,0.72)", gap: 2 },
  cardTitle: { fontSize: Math.max(9.5, Math.round(10.5 * s)), color: "#fff", fontFamily: "Cairo_700Bold", lineHeight: Math.round(14 * s), textAlign: "left" },
  cardTitleAr: { fontSize: Math.max(8.5, Math.round(9.5 * s)), color: "rgba(255,255,255,0.82)", fontFamily: "Cairo_700Bold", lineHeight: Math.round(13.5 * s), textAlign: "right", writingDirection: "rtl" },
  tvCardTitle: { fontSize: 13, lineHeight: 18 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, minHeight: 200 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: colors.textMuted, textAlign: "center" },
});
