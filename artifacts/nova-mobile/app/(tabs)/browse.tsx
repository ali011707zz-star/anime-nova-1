import React, { useState, useEffect, useCallback, useRef, useMemo } from "react";
import {
  View, Text, TextInput, FlatList, Image, I18nManager,
  ScrollView, ActivityIndicator, StyleSheet, Platform, useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvFocusGuideView, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";
import { getGridColumnCount } from "@/components/AnimeCard";
import { AnimeFilterSheet, type AnimeFilterOption } from "@/components/AnimeFilterSheet";
import { useColors } from "@/hooks/useColors";
import { getKnownArabicAnimeTitle } from "@/utils/arabicAnimeTitles";
import { filterReleasedBrowseMedia, formatMediaTitleHierarchy } from "@/utils/donghuaLogic.mjs";
import type { ThemePalette } from "@/constants/colors";

function useBrowseTheme() {
  const colors = useColors();
  const { deviceScale, tv: tvMode } = useTvMetrics();
  const g = useMemo(() => createBrowseStyles(colors, deviceScale, tvMode), [colors, deviceScale, tvMode]);
  return { colors, g, deviceScale, tvMode };
}

/* ── Data ── */
interface AnimeResult {
  id: number;
  idSource?: "mal" | "kitsu" | string;
  countryOfOrigin?: string;
  title: { romaji: string; english?: string; native?: string };
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
type BrowseStyles = ReturnType<typeof createBrowseStyles>;

const GenreCard = React.memo(function GenreCard({
  item,
  onPress,
  columns,
  horizontal = false,
  g,
  tvMode,
}: {
  item: typeof GENRES_WITH_COVERS[0];
  liveCoverUrl?: string;
  onPress: () => void;
  columns: number;
  horizontal?: boolean;
  g: BrowseStyles;
  tvMode: boolean;
}) {
  const [imgErr, setImgErr] = useState(false);

  return (
    <Pressable
      onPress={onPress}
      focusable={tvMode}
      nativeFocusOnly
      style={({ focused }) => [
        g.genreCard,
        horizontal ? g.horizontalGenreCard : { flex: 1 / columns },
        tvMode && { borderRadius: horizontal ? 10 : 12, borderWidth: 2, borderColor: "transparent", padding: 1.5 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          g.genrePillWrap,
          horizontal ? g.horizontalGenrePillWrap : (tvMode && g.tvGenreImgWrap),
          { backgroundColor: item.color },
        ]}
      >
        <Text
          numberOfLines={1}
          style={[
            g.genreLabel,
            horizontal ? g.horizontalGenreLabel : (tvMode && g.tvGenreLabel),
          ]}
        >
          {item.ar}
        </Text>
        <View style={[g.genreFloatingPosterWrap, horizontal && g.horizontalGenreFloatingPosterWrap]}>
          {item.cover && !imgErr ? (
            <Image
              source={{ uri: item.cover }}
              style={g.genreFloatingPoster}
              resizeMode="cover"
              fadeDuration={0}
              onError={() => setImgErr(true)}
            />
          ) : (
            <Ionicons
              name={item.icon as any}
              size={horizontal ? 13 : 16}
              color="#FFFFFF"
            />
          )}
        </View>
      </View>
    </Pressable>
  );
});

/* ── Anime card ── */
const AnimeCard = React.memo(function AnimeCard({
  anime,
  onPressAnime,
  cardW,
  cardH,
  hasTVPreferredFocus,
  onFocusAnime,
  g,
  tvMode,
}: {
  anime: AnimeResult;
  onPressAnime: (anime: AnimeResult) => void;
  cardW: number;
  cardH: number;
  hasTVPreferredFocus?: boolean;
  onFocusAnime?: (id: number) => void;
  g: BrowseStyles;
  tvMode: boolean;
}) {
  const fmt = anime.format ? FORMAT_AR[anime.format] : null;
  const isFilm = anime.format === "MOVIE";
  const posterUri = anime.coverImage?.large || anime.coverImage?.extraLarge || "";
  return (
    <Pressable
      onPress={() => onPressAnime(anime)}
      focusable={tvMode}
      nativeFocusOnly
      hasTVPreferredFocus={hasTVPreferredFocus}
      onFocus={onFocusAnime ? () => onFocusAnime(anime.id) : undefined}
      style={({ focused }) => [
        g.card,
        { width: cardW, height: cardH, flex: 0, borderRadius: tvMode ? 16 : 13 },
        tvMode && { borderWidth: 2.5, borderColor: "transparent", padding: 2 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[g.cardWrap, tvMode && g.tvCardWrap, { width: "100%", height: "100%", aspectRatio: undefined }]}>
        {posterUri ? (
          <Image
            source={{ uri: posterUri }}
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
        {(() => {
          const arTitle = anime.title_ar || getKnownArabicAnimeTitle(anime.id, anime.title?.english, anime.title?.romaji);
          const h = formatMediaTitleHierarchy({
            english: anime.title?.english,
            romaji: anime.title?.romaji,
            native: anime.title?.native,
            arabic: arTitle,
          });
          return (
            <View style={g.cardBottom}>
              <Text
                style={[g.cardTitle, { writingDirection: "ltr", textAlign: "left", color: "#fff" }]}
                numberOfLines={2}
              >
                {h.primary}
              </Text>
              {h.arabic ? (
                <Text
                  numberOfLines={1}
                  style={[g.cardTitleAr, { color: "rgba(255,255,255,0.88)", fontSize: tvMode ? 11.5 : 9.5, lineHeight: tvMode ? 16 : 13 }]}
                >
                  {h.arabic}
                </Text>
              ) : null}
              {h.original ? (
                <Text
                  numberOfLines={1}
                  style={[g.cardTitle, { writingDirection: "ltr", textAlign: "left", color: "rgba(255,255,255,0.65)", fontSize: tvMode ? 10 : 8, lineHeight: tvMode ? 14 : 11 }]}
                >
                  {h.original}
                </Text>
              ) : null}
            </View>
          );
        })()}
      </View>
    </Pressable>
  );
});

/* ── Genre query to get a cover image ── */
const GENRE_COVER_QUERY = (genre: string) => `
query { Page(page:1,perPage:1) {
  media(type:ANIME,genre:"${genre}",sort:[POPULARITY_DESC]){id coverImage{large}}
}}`;

const BROWSE_QUERY = (sort: string, format: string, season: string, year: string, genre: string, status: string, country: "JP" | "CN" = "JP") => `
query ($page: Int) {
  Page(page: $page, perPage: 30) {
    media(type:ANIME, countryOfOrigin:"${country}", isAdult:false, genre_not_in:["Hentai"], sort:[${sort || "POPULARITY_DESC"}]${format ? `, format:${format}` : ""}${season ? `, season:${season}` : ""}${year ? `, seasonYear:${year}` : ""}${genre ? `, genre:"${genre}"` : ""}${status ? `, status:${status}` : `, status_not_in:[NOT_YET_RELEASED,CANCELLED]`}) {
      id countryOfOrigin title { romaji english native } coverImage { large extraLarge } averageScore episodes format status startDate { year } genres
    }
  }
}`;

const SEARCH_QUERY = (sort: string, format: string, season: string, year: string, genre: string, status: string, country: "JP" | "CN" = "JP") => `
query ($search: String!) {
  Page(page: 1, perPage: 30) {
    media(search: $search, type: ANIME, countryOfOrigin:"${country}", isAdult: false, genre_not_in:["Hentai","Ecchi"], sort:[SEARCH_MATCH,${sort || "POPULARITY_DESC"}]${format ? `,format:${format}` : ""}${season ? `,season:${season}` : ""}${year ? `,seasonYear:${year}` : ""}${genre ? `,genre:"${genre}"` : ""}${status ? `,status:${status}` : `,status_not_in:[NOT_YET_RELEASED,CANCELLED]`}) {
      id countryOfOrigin title { romaji english native } coverImage { large } averageScore episodes format status startDate { year } genres
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
  "سول لاند": "Douluo Dalu",
  "معركة عبر السماء": "Doupo Cangqiong",
  "الخالد المتمرد": "Xian Ni",
  "النجم المبتلع": "Tunshi Xingkong",
  "عالم مثالي": "Wanmei Shijie",
  "لينك كليك": "Shiguang Dailiren",
  "ارادة ابدية": "Yi Nian Yong Heng",
  "إرادة أبدية": "Yi Nian Yong Heng",
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
    tab?: string;
  }>();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  // TV gets a wider, remote-friendly grid without decoding an excessive
  // number of posters at once.
  const { tv: tvMode } = useTvMetrics();
  const gridColumns = getGridColumnCount(width, height);
  const genreColumns = tvMode ? 3 : 2;
  const gridWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);
  const gridCardW = Math.max(88, Math.floor((Math.max(gridWidth, 280) - 24 - 10 * (gridColumns - 1)) / gridColumns));
  const gridCardH = Math.round(gridCardW * 1.44);
  const filterRailWidth = Math.min(Math.max(width - 24, 0), tvMode ? 1100 : 900);

  const routeValue = (value: string | string[] | undefined) =>
    Array.isArray(value) ? value[0] || "" : value || "";
  const routeSort = routeValue(routeParams.sort);
  const routeFormat = routeValue(routeParams.format);
  const routeSeason = routeValue(routeParams.season);
  const routeYear = routeValue(routeParams.year);
  const routeStatus = routeValue(routeParams.status);

  const routeTab = routeValue(routeParams.tab);
  const [browseSection, setBrowseSection] = useState<"anime" | "donghua">(routeTab === "donghua" ? "donghua" : "anime");
  const [view, setView] = useState<"genres" | "list">("list");
  const activeCountry: "JP" | "CN" = browseSection === "donghua" ? "CN" : "JP";
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
  const { preferredKey, ready, rememberFocus } = useTvFocusMemory(`browse:${browseSection}`);
  const userInteractedHeaderRef = useRef(false);
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
    userInteractedHeaderRef.current = false;
    if (routeValue(routeParams.tab) === "donghua") setBrowseSection("donghua");
    else if (routeValue(routeParams.tab) === "anime" || routeParams.genre || routeParams.format || routeParams.season || routeParams.year || routeParams.status || routeParams.sort) setBrowseSection("anime");
  }, [routeParams.genre, routeParams.genreAr, routeParams.format, routeParams.sort, routeParams.season, routeParams.year, routeParams.status, routeParams.tab]);

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
            query: BROWSE_QUERY(sort, format, season, year, activeGenre, status, activeCountry),
          variables: { page: p },
        }),
        signal: ctrl.signal,
      });
      const d = await r.json();
      if (genRef.current !== gen || ctrl.signal.aborted) return;
      const rawResults: AnimeResult[] = (d.data?.Page?.media || [])
        .filter((a: AnimeResult) => !(a.genres || []).some(gx => BLOCKED.has(gx)));
      const results: AnimeResult[] = filterReleasedBrowseMedia(rawResults, {
        currentYear: CUR_YEAR,
        allowUnreleased: Boolean(status),
      });
      if (reset) setItems(results);
      else setItems(prev => {
        const ids = new Set(prev.map(i => i.id));
        return [...prev, ...results.filter(i => !ids.has(i.id))];
      });
      setPage(p);
      setHasMore(rawResults.length === 30);
    } catch (e: any) {
      if (e?.name === "AbortError") return;
    } finally {
      if (genRef.current === gen && !ctrl.signal.aborted) setLoading(false);
    }
  }, [sort, format, season, year, activeGenre, status, activeCountry]);

  useEffect(() => {
    if (view !== "list") return;
    // Each filter produces a new result set. Never leave the user at the
    // old list offset, where the beginning of the new results is skipped.
    listRef.current?.scrollToOffset({ offset: 0, animated: false });
    setPage(1); setHasMore(true);
    loadItems(1, true);
  }, [view, sort, format, season, year, activeGenre, status, activeCountry]);

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
            query: SEARCH_QUERY(sort, format, season, year, activeGenre, status, activeCountry),
            variables: { search: translated },
          }),
          signal: ctrl.signal,
        });
        if (!r.ok) throw new Error(`search ${r.status}`);
        const d = await r.json();
        if (!ctrl.signal.aborted && requestId === searchRequestRef.current) {
          const rawSearch = (d.data?.Page?.media || [])
            .filter((a: AnimeResult) => !(a.genres || []).some(gx => BLOCKED.has(gx)));
          setSearchItems(filterReleasedBrowseMedia(rawSearch, {
            currentYear: CUR_YEAR,
            allowUnreleased: Boolean(status),
          }));
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
  }, [search, sort, format, season, year, activeGenre, status, activeCountry]);

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

  const handlePressAnime = useCallback((anime: AnimeResult) => {
    router.push(
      `/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}${anime.idSource ? `&src=${encodeURIComponent(anime.idSource)}` : ""}`
    );
  }, [router]);

  const handleFocusAnime = useCallback((id: number) => {
    userInteractedHeaderRef.current = false;
    rememberFocus(String(id));
  }, [rememberFocus]);

  const hasPreferredGridCard = Boolean(
    tvMode &&
    !userInteractedHeaderRef.current &&
    ready &&
    preferredKey &&
    filteredItems.some((it) => String(it.id) === preferredKey)
  );
  const preferSwitcherSection = Boolean(
    tvMode &&
    !userInteractedHeaderRef.current &&
    !hasPreferredGridCard
  );

  return (
    <View style={[g.container, { paddingTop: topPad }]}>
      {/* ── Header (Unified across Phone, iPad & TV) ── */}
      <View style={[g.header, tvMode && width >= 700 && g.tvHeader, tvMode && { overflow: "visible" }]}>
        <TvFocusGuideView autoFocus={false} style={[g.mobileHeaderRow, tvMode && { overflow: "visible" }]}>
          <View style={g.mobileTitleGroup}>
            <Pressable
              accessibilityRole="button"
              accessibilityLabel="رجوع"
              focusable={tvMode}
              nativeFocusOnly
              onFocus={() => { userInteractedHeaderRef.current = true; }}
              onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)}
              style={({ focused }) => [
                g.mobileBackButton,
                tvMode && { width: 38, height: 38, borderWidth: 2.5 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="chevron-forward" size={tvMode ? 21 : 19} color={colors.textPrimary} />
            </Pressable>
            <Text
              numberOfLines={1}
              adjustsFontSizeToFit
              minimumFontScale={0.8}
              style={[g.mobileTitle, tvMode && { fontSize: 17 }, { flexShrink: 1 }]}
            >
              {activeGenreAr || "المكتبة والتصفح"}
            </Text>
          </View>
          <View style={[g.mobileActions, tvMode && { gap: 6, overflow: "visible" }]}>
            <View style={g.modeSwitch}>
              <Pressable
                focusable={tvMode}
                nativeFocusOnly
                onFocus={() => { userInteractedHeaderRef.current = true; }}
                onPress={() => router.push("/(tabs)/search" as any)}
                style={({ focused }) => [
                  g.modeButton,
                  tvMode && { minHeight: 34, paddingHorizontal: 10, borderWidth: 2, borderColor: "transparent" },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="search" size={tvMode ? 15 : 13} color={colors.textMuted} />
                <Text style={[g.modeButtonText, tvMode && { fontSize: 12 }]}>بحث</Text>
              </Pressable>
              <Pressable
                focusable={tvMode}
                nativeFocusOnly
                onFocus={() => { userInteractedHeaderRef.current = true; }}
                onPress={() => setView("list")}
                style={({ focused }) => [
                  g.modeButton,
                  view === "list" && g.modeButtonActive,
                  tvMode && { minHeight: 34, paddingHorizontal: 10, borderWidth: 2, borderColor: "transparent" },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="compass-outline" size={tvMode ? 15 : 13} color={view === "list" ? colors.buttonText : colors.textMuted} />
                <Text style={[g.modeButtonText, tvMode && { fontSize: 12 }, view === "list" && g.modeButtonTextActive]}>تصفح</Text>
              </Pressable>
            </View>
            <Pressable
              accessibilityLabel="التصنيفات"
              focusable={tvMode}
              nativeFocusOnly
              onFocus={() => { userInteractedHeaderRef.current = true; }}
              onPress={() => setView(view === "genres" ? "list" : "genres")}
              style={({ focused }) => [
                g.mobileFilterButton,
                view === "genres" && g.genreToggleBtnActive,
                tvMode && { width: 38, height: 38, borderWidth: 2.5 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="grid-outline" size={tvMode ? 18 : 16} color={view === "genres" ? colors.accent : colors.textPrimary} />
            </Pressable>
            <Pressable
              accessibilityLabel="فتح الفلاتر"
              focusable={tvMode}
              nativeFocusOnly
              onFocus={() => { userInteractedHeaderRef.current = true; }}
              onPress={() => setFilterVisible(true)}
              style={({ focused }) => [
                g.mobileFilterButton,
                hasFilters && g.mobileFilterButtonActive,
                tvMode && { width: 38, height: 38, borderWidth: 2.5 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="options-outline" size={tvMode ? 19 : 17} color={hasFilters ? colors.buttonText : colors.textPrimary} />
            </Pressable>
            {hasFilters ? (
              <Pressable
                accessibilityLabel="مسح الفلاتر"
                focusable={tvMode}
                nativeFocusOnly
                onFocus={() => { userInteractedHeaderRef.current = true; }}
                onPress={clearAll}
                style={({ focused }) => [
                  g.clearBtn,
                  tvMode && { minHeight: 38, paddingHorizontal: 12, borderWidth: 2.5 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="close" size={tvMode ? 16 : 14} color={colors.destructive} />
                <Text style={[g.clearBtnText, tvMode && { fontSize: 12 }]}>مسح</Text>
              </Pressable>
            ) : null}
          </View>
        </TvFocusGuideView>

        {/* ── Section Switcher: الأنمي | دونغهوا ── */}
        <TvFocusGuideView autoFocus={false} style={{ flexDirection: ROW_RTL, gap: 8, marginTop: 8, overflow: "visible" }}>
          <Pressable
            focusable={tvMode}
            nativeFocusOnly
            hasTVPreferredFocus={preferSwitcherSection && browseSection === "anime"}
            onFocus={() => { userInteractedHeaderRef.current = true; }}
            onPress={() => {
              userInteractedHeaderRef.current = true;
              if (browseSection !== "anime") { setItems([]); setSearchItems([]); setBrowseSection("anime"); }
            }}
            style={({ focused }) => [
              {
                flex: 1,
                alignItems: "center",
                justifyContent: "center",
                paddingVertical: tvMode ? 9 : 7,
                paddingHorizontal: 10,
                borderRadius: 10,
                borderWidth: tvMode ? 2.5 : 1,
                backgroundColor: browseSection === "anime" ? colors.accent : colors.card,
                borderColor: browseSection === "anime" ? colors.accent : colors.border,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text
              numberOfLines={1}
              maxFontSizeMultiplier={1.15}
              style={{
                fontSize: tvMode ? 14.5 : 12.5,
                fontFamily: "Cairo_700Bold",
                color: browseSection === "anime" ? colors.buttonText : colors.textPrimary,
              }}
            >
              الأنمي
            </Text>
          </Pressable>
          <Pressable
            focusable={tvMode}
            nativeFocusOnly
            hasTVPreferredFocus={preferSwitcherSection && browseSection === "donghua"}
            onFocus={() => { userInteractedHeaderRef.current = true; }}
            onPress={() => {
              userInteractedHeaderRef.current = true;
              if (browseSection !== "donghua") { setItems([]); setSearchItems([]); setBrowseSection("donghua"); }
            }}
            style={({ focused }) => [
              {
                flex: 1,
                alignItems: "center",
                justifyContent: "center",
                paddingVertical: tvMode ? 9 : 7,
                paddingHorizontal: 10,
                borderRadius: 10,
                borderWidth: tvMode ? 2.5 : 1,
                backgroundColor: browseSection === "donghua" ? colors.accent : colors.card,
                borderColor: browseSection === "donghua" ? colors.accent : colors.border,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text
              numberOfLines={1}
              maxFontSizeMultiplier={1.15}
              style={{
                fontSize: tvMode ? 14.5 : 12.5,
                fontFamily: "Cairo_700Bold",
                color: browseSection === "donghua" ? colors.buttonText : colors.textPrimary,
              }}
            >
              دونغهوا
            </Text>
          </Pressable>
        </TvFocusGuideView>

        <Pressable
          focusable={tvMode}
          nativeFocusOnly
          onFocus={() => { userInteractedHeaderRef.current = true; }}
          onPress={() => setFilterVisible(true)}
          style={({ focused }) => [
            g.mobileSortButton,
            tvMode && { minHeight: 36, borderWidth: 2.5 },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="options-outline" size={tvMode ? 17 : 16} color={colors.textSecondary} />
          <Text numberOfLines={1} style={[g.mobileSortText, tvMode && { fontSize: 13 }]}>
            {SORT_OPTIONS.find((option) => option.value === sort)?.label || "الأكثر شعبية"}
            {format ? ` · ${FORMAT_AR[format] || format}` : ""}
            {season ? ` · ${SEASON_OPTIONS.find((s) => s.value === season)?.label || season}` : ""}
            {year ? ` · ${year}` : ""}
          </Text>
          <Ionicons name="chevron-down" size={tvMode ? 17 : 16} color={colors.textSecondary} />
        </Pressable>

        <TvFocusGuideView autoFocus={false} style={{ overflow: "visible" }}>
          <ScrollView
            focusable={false}
            horizontal
            showsHorizontalScrollIndicator={false}
            style={g.mobileGenreRail}
            contentContainerStyle={[g.mobileGenreRailContent, tvMode && { paddingVertical: 6 }]}
          >
            {GENRES_WITH_COVERS.map((item) => (
              <GenreCard
                key={item.genre}
                item={item}
                liveCoverUrl={genreCovers[item.genre]}
                columns={genreColumns}
                horizontal
                g={g}
                tvMode={tvMode}
                onPress={() => openGenre(item.genre, item.ar)}
              />
            ))}
          </ScrollView>
        </TvFocusGuideView>
      </View>

      {/* ── Genre grid ── */}
      {view === "genres" && (
        <TvFocusGuideView autoFocus={false} style={{ flex: 1 }}>
          <FlatList
            data={GENRES_WITH_COVERS}
            style={{ width: gridWidth, alignSelf: "center" }}
            key={`genres-${genreColumns}`}
            keyExtractor={item => item.genre}
            numColumns={genreColumns}
            contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 6, paddingBottom: 88 }}
            columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
            showsVerticalScrollIndicator={false}
            initialNumToRender={12}
            maxToRenderPerBatch={9}
            updateCellsBatchingPeriod={40}
            windowSize={7}
            removeClippedSubviews={false}
            renderItem={({ item }) => (
              <GenreCard
                item={item}
                liveCoverUrl={genreCovers[item.genre]}
                columns={genreColumns}
                g={g}
                tvMode={tvMode}
                onPress={() => openGenre(item.genre, item.ar)}
              />
            )}
          />
        </TvFocusGuideView>
      )}

      {/* ── Anime list ── */}
      {view === "list" && (
        <TvFocusGuideView autoFocus={false} style={{ flex: 1 }}>
          {listLoading && filteredItems.length === 0 ? (
            <View style={g.center}>
              <ActivityIndicator color={colors.accent} size="large" />
            </View>
          ) : (
            <>
              <View style={[g.resultsHeading, { width: gridWidth, alignSelf: "center", paddingHorizontal: 12, paddingTop: 6, paddingBottom: 4 }]}>
                <Text style={[g.resultsHeadingText, tvMode && { fontSize: 13 }]}>
                  {search.trim() ? "نتائج البحث" : browseSection === "donghua" ? "قائمة الدونغهوا" : "قائمة الأنمي"} ({filteredItems.length} عمل)
                </Text>
              </View>
              <FlatList
                ref={listRef}
                data={filteredItems}
                style={{ width: gridWidth, alignSelf: "center" }}
                key={`anime-grid-${browseSection}-${gridColumns}`}
                keyExtractor={(item, i) => `${item.id}-${i}`}
                numColumns={gridColumns}
                contentContainerStyle={{ paddingHorizontal: 12, paddingTop: 4, paddingBottom: 88 }}
                columnWrapperStyle={{ gap: 10, marginBottom: 10 }}
                showsVerticalScrollIndicator={false}
                getItemLayout={(_data, rowIndex) => ({
                  length: gridCardH + 10,
                  offset: (gridCardH + 10) * rowIndex,
                  index: rowIndex,
                })}
                initialNumToRender={tvMode ? 15 : 9}
                maxToRenderPerBatch={tvMode ? 10 : 6}
                updateCellsBatchingPeriod={40}
                windowSize={tvMode ? 7 : 5}
                removeClippedSubviews={false}
                onEndReached={() => { if (!search.trim() && hasMore && !loading) loadItems(page + 1, false); }}
                onEndReachedThreshold={0.4}
                ListEmptyComponent={
                  !listLoading ? (
                    <View style={g.center}>
                      <Ionicons name="film" size={48} color={colors.textMuted} />
                      <Text style={g.emptyText}>{browseSection === "donghua" ? "لا توجد أعمال دونغهوا بهذه الفلاتر" : "لا توجد أنميات بهذه الفلاتر"}</Text>
                    </View>
                  ) : null
                }
                ListFooterComponent={listLoading && filteredItems.length > 0 ? (
                  <View style={{ padding: 20, alignItems: "center" }}>
                    <ActivityIndicator color={colors.accent} />
                  </View>
                ) : null}
                renderItem={({ item }) => (
                  <AnimeCard
                    anime={item}
                    cardW={gridCardW}
                    cardH={gridCardH}
                    g={g}
                    tvMode={tvMode}
                    hasTVPreferredFocus={
                      hasPreferredGridCard && preferredKey === String(item.id)
                    }
                    onFocusAnime={handleFocusAnime}
                    onPressAnime={handlePressAnime}
                  />
                )}
              />
            </>
          )}
        </TvFocusGuideView>
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
  header: { backgroundColor: colors.surface, borderBottomWidth: 1, borderBottomColor: colors.border, paddingHorizontal: Math.round(10 * s), paddingTop: 4, paddingBottom: 4 },
  tvHeader: { paddingHorizontal: 18, paddingTop: 6, paddingBottom: 5 },
  mobileHeaderRow: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", minHeight: Math.round(31 * s), gap: 5 },
  mobileActions: { flexDirection: ROW_RTL, alignItems: "center", gap: 4, flexShrink: 0 },
  mobileFilterButton: { width: Math.round(30 * s), height: Math.round(30 * s), borderRadius: Math.round(9 * s), alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  mobileFilterButtonActive: { backgroundColor: colors.destructive, borderColor: colors.destructive },
  modeSwitch: { flexDirection: ROW_RTL, alignItems: "center", padding: 2, borderRadius: Math.round(9 * s), backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  modeButton: { minHeight: Math.round(25 * s), flexDirection: ROW_RTL, alignItems: "center", justifyContent: "center", gap: 3, paddingHorizontal: Math.round(7 * s), borderRadius: Math.round(7 * s) },
  modeButtonActive: { backgroundColor: "#0ea5e9" },
  modeButtonText: { color: colors.textSecondary, fontFamily: "Cairo_700Bold", fontSize: Math.round(9 * s) },
  modeButtonTextActive: { color: "#ffffff" },
  mobileTitleGroup: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 6, minWidth: 0 },
  mobileTitle: { color: colors.textPrimary, fontSize: Math.round(13.5 * s), fontFamily: "Cairo_800ExtraBold", textAlign: "right", writingDirection: "rtl" },
  mobileBackButton: { width: Math.round(30 * s), height: Math.round(30 * s), borderRadius: Math.round(9 * s), alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border, flexShrink: 0 },
  mobileSortButton: { minHeight: Math.round(28 * s), flexDirection: ROW_RTL, alignItems: "center", gap: 6, marginTop: 4, paddingHorizontal: 10, borderRadius: Math.round(9 * s), backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  mobileSortText: { flex: 1, color: colors.textPrimary, fontSize: Math.round(10.5 * s), fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  mobileGenreRail: { marginTop: 4, marginHorizontal: -Math.round(10 * s) },
  mobileGenreRailContent: { flexDirection: ROW_RTL, gap: 6, paddingHorizontal: Math.round(10 * s), paddingTop: 2, paddingBottom: 2 },
  resultsHeading: { paddingTop: 0, paddingBottom: 6, alignItems: "flex-end" },
  resultsHeadingText: { color: colors.textSecondary, fontSize: Math.round(10.5 * s), fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
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
  horizontalGenreCard: { width: tvMode ? 98 : Math.round(98 * s), flexGrow: 0 },
  genreCardWrap: { paddingTop: 8, position: "relative" },
  horizontalGenreCardWrap: { paddingTop: 6, position: "relative" },
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
  genrePillLabel: {
    flex: 1,
    fontSize: Math.round(11 * s),
    fontFamily: "Cairo_800ExtraBold",
    color: "#ffffff",
    textAlign: "right",
    paddingHorizontal: 4,
    textShadowColor: "rgba(0,0,0,0.28)",
    textShadowOffset: { width: 0, height: 1 },
    textShadowRadius: 3,
  },
  genreImgWrap: { height: 52, borderRadius: 12, overflow: "hidden", position: "relative", borderWidth: 1, borderColor: colors.border, justifyContent: "flex-end" },
  horizontalGenreImgWrap: { height: 30, borderRadius: 9 },
  tvGenreImgWrap: { height: 42, borderRadius: 11, borderWidth: 1 },
  genreImg: { ...StyleSheet.absoluteFillObject, width: "100%", height: "100%" },
  genreColorBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 2.5 },
  genreLabel: { flex: 1, fontSize: Math.round(11.5 * s), fontFamily: "Cairo_800ExtraBold", color: "#fff", paddingHorizontal: Math.round(5 * s), paddingVertical: Math.round(2 * s), textAlign: "right", textShadowColor: "rgba(0,0,0,0.8)", textShadowOffset: { width: 0, height: 1 }, textShadowRadius: 3 },
  horizontalGenreLabel: { fontSize: tvMode ? 10.5 : Math.round(10 * s), paddingHorizontal: 4, paddingVertical: 0 },
  tvGenreLabel: { fontSize: 12, lineHeight: 17, paddingHorizontal: 6, paddingVertical: 2 },
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
  cardTitle: { fontSize: Math.max(9.5, Math.round(10.5 * s)), color: "#fff", fontFamily: "Cairo_600SemiBold", lineHeight: Math.round(14 * s), textAlign: "left" },
  cardTitleAr: { fontSize: Math.max(10, Math.round(11 * s)), color: "#fff", fontFamily: "Cairo_700Bold", lineHeight: Math.round(14.5 * s), textAlign: "right", writingDirection: "rtl" },
  tvCardTitle: { fontSize: 13, lineHeight: 18 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12, minHeight: 200 },
  emptyText: { fontSize: 14, fontFamily: "Cairo_700Bold", color: colors.textMuted, textAlign: "center" },
});
