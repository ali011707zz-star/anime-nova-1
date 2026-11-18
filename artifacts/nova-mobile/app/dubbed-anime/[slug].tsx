import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View,
  Text,
  Image,
  ScrollView,
  ActivityIndicator,
  StyleSheet,
  Platform,
  Modal,
  Dimensions,
  useWindowDimensions,
  I18nManager,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import * as ScreenOrientation from "expo-screen-orientation";
import { SafePosterImage } from "@/components/SafePosterImage";
import { YoutubeTrailerModal } from "@/components/YoutubeTrailerModal";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import type { ThemePalette } from "@/constants/colors";
import { getBaseUrl } from "@/utils/api";
import { proxyPosterUrl } from "@/utils/media";
import { getKnownArabicAnimeTitle } from "@/utils/arabicAnimeTitles";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { useTvFocusMemory } from "@/utils/tvFocus";

const { width: W } = Dimensions.get("window");
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

const GENRE_MAP: Record<string, string> = {
  Action: "أكشن",
  Adventure: "مغامرة",
  Comedy: "كوميديا",
  Drama: "دراما",
  Fantasy: "فانتازيا",
  Horror: "رعب",
  Mystery: "غموض",
  Romance: "رومانسي",
  "Sci-Fi": "خيال علمي",
  "Slice of Life": "شريحة من الحياة",
  Sports: "رياضة",
  Supernatural: "خارق للطبيعة",
  Thriller: "إثارة",
  Mecha: "ميكا",
  Music: "موسيقى",
  Psychological: "نفسي",
  "Mahou Shoujo": "فتاة سحرية",
  Ecchi: "إيتشي",
};

const STATUS_MAP: Record<string, string> = {
  RELEASING: "يُعرض الآن",
  FINISHED: "مكتمل",
  NOT_YET_RELEASED: "لم يُعرض بعد",
  CANCELLED: "ملغي",
  HIATUS: "موقوف",
};

const FORMAT_MAP: Record<string, string> = {
  TV: "مسلسل TV",
  TV_SHORT: "مسلسل قصير",
  MOVIE: "فيلم",
  SPECIAL: "حلقة خاصة",
  OVA: "OVA",
  ONA: "ONA",
  MUSIC: "موسيقى",
};

const SOURCE_MAP: Record<string, string> = {
  MANGA: "مانجا",
  LIGHT_NOVEL: "رواية خفيفة",
  ORIGINAL: "عمل أصلي",
  VISUAL_NOVEL: "رواية مرئية",
  VIDEO_GAME: "لعبة فيديو",
  NOVEL: "رواية",
  WEB_NOVEL: "رواية ويب",
  OTHER: "أخرى",
};

const REL_TYPE: Record<string, string> = {
  SEQUEL: "جزء ثانٍ",
  PREQUEL: "جزء سابق",
  SIDE_STORY: "قصة جانبية",
  PARENT: "الأصل",
  ADAPTATION: "اقتباس",
  ALTERNATIVE: "نسخة بديلة",
  SPIN_OFF: "فرعي",
  SUMMARY: "ملخص",
  OTHER: "ذات صلة",
};

export interface AzSeason {
  seasonNumber: number;
  label: string;
  url: string;
  episodeCount: number;
}

export interface AzEpisode {
  number: number;
  numberLabel: string;
  vid: string;
  watchUrl: string;
  title: string;
  duration: string;
}

export interface AzAnilist {
  id: number;
  idMal?: number | null;
  title: { romaji?: string | null; english?: string | null; native?: string | null };
  coverImage: { large?: string | null; extraLarge?: string | null };
  bannerImage: string | null;
  description: string | null;
  episodes: number | null;
  duration: number | null;
  status: string | null;
  format: string | null;
  source?: string | null;
  averageScore: number | null;
  meanScore?: number | null;
  popularity?: number | null;
  favourites?: number | null;
  rank?: number | null;
  genres: string[];
  studios: string[];
  startYear: number | null;
  startDate?: { year?: number | null; month?: number | null; day?: number | null } | null;
  endDate?: { year?: number | null; month?: number | null; day?: number | null } | null;
  trailer?: { id: string; site: string; thumbnail: string | null } | null;
  characters: { id: number; role: string; name: string; image: string | null }[];
  relations?: {
    relationType: string;
    id: number;
    title: { romaji?: string | null; english?: string | null };
    coverImage: { large?: string | null };
    format?: string | null;
    status?: string | null;
    averageScore?: number | null;
  }[];
  recommendations?: {
    id: number;
    title: { romaji?: string | null; english?: string | null };
    coverImage: { large?: string | null };
    averageScore?: number | null;
    episodes?: number | null;
  }[];
}

export interface AzDetail {
  slug: string;
  url: string;
  rawTitle: string;
  titleAr: string;
  englishTitle: string;
  poster: string;
  badge: string;
  year: string;
  views: string;
  seasonsCount: number;
  episodesCount: number;
  rawDescription: string;
  seasons: AzSeason[];
  activeSeason: number;
  episodes: AzEpisode[];
  anilist: AzAnilist | null;
}

export const _azDetailMemoryCache: Map<string, { detail: AzDetail; descAr?: string }> =
  (globalThis as any).__novaAzDetailCache ||
  ((globalThis as any).__novaAzDetailCache = new Map<string, { detail: AzDetail; descAr?: string }>());

function readParam(val: string | string[] | undefined): string {
  const raw = Array.isArray(val) ? val[0] : val;
  if (!raw) return "";
  try {
    return decodeURIComponent(raw);
  } catch {
    return raw;
  }
}

function fmtDate(dt?: { year?: number | null; month?: number | null; day?: number | null } | null) {
  if (!dt?.year) return null;
  const m = [
    "",
    "يناير",
    "فبراير",
    "مارس",
    "أبريل",
    "مايو",
    "يونيو",
    "يوليو",
    "أغسطس",
    "سبتمبر",
    "أكتوبر",
    "نوفمبر",
    "ديسمبر",
  ];
  return `${dt.day ? dt.day + " " : ""}${dt.month ? m[dt.month] + " " : ""}${dt.year}`.trim();
}

function fmtRuntime(mins?: number | null) {
  if (!mins) return null;
  if (mins < 60) return `${mins} دقيقة لكل حلقة`;
  const h = Math.floor(mins / 60);
  const m = mins % 60;
  return `${h} ساعة${m > 0 ? ` و ${m} د` : ""}`;
}

function useDetailStyles() {
  const colors = useColors();
  const d = useMemo(() => createDetailStyles(colors), [colors]);
  return { colors, d };
}

function SectionHeader({ title, tvMode = false }: { title: string; tvMode?: boolean }) {
  const { d } = useDetailStyles();
  return (
    <View style={[d.sectionHeader, tvMode && d.tvSectionHeader]}>
      <View style={[d.sectionBar, tvMode && d.tvSectionBar]} />
      <Text style={[d.sectionTitle, tvMode && d.tvSectionTitle]}>{title}</Text>
    </View>
  );
}

function MetaCard({
  label,
  value,
  badge,
  wide,
}: {
  label: string;
  value: string;
  badge?: boolean;
  wide?: boolean;
}) {
  const { d } = useDetailStyles();
  return (
    <View style={[d.metaCard, wide && d.metaCardWide]}>
      <Text style={d.metaLabel} numberOfLines={1}>
        {label}
      </Text>
      {badge ? (
        <View style={d.metaBadge}>
          <Text style={d.metaBadgeText} numberOfLines={1}>
            {value}
          </Text>
        </View>
      ) : (
        <Text style={d.metaCardValue} numberOfLines={wide ? 2 : 1}>
          {value}
        </Text>
      )}
    </View>
  );
}

function CharCard({
  c,
  animeId,
  animeTitle,
  favIds,
  onToggle,
  tvMode = false,
  columns = 3,
}: {
  c: { id: number; role: string; name: string; image: string | null };
  animeId: number;
  animeTitle: string;
  favIds: number[];
  onToggle: (char: { id: number; name: string; image: string; role: string; animeId: number; animeTitle: string }) => void;
  tvMode?: boolean;
  columns?: number;
}) {
  const { d } = useDetailStyles();
  const { width } = useWindowDimensions();
  const isFav = favIds.includes(c.id);
  const horizontalPad = tvMode ? 88 : 32;
  const gap = 12;
  const cardWidth = Math.max(82, Math.floor((width - horizontalPad - gap * (columns - 1)) / columns));
  const toggleItem = () =>
    onToggle({
      id: c.id,
      name: c.name || "",
      image: c.image || "",
      role: c.role,
      animeId,
      animeTitle,
    });
  return (
    <Pressable
      onPress={tvMode ? toggleItem : undefined}
      focusable={tvMode}
      style={({ focused }) => [
        d.charCard,
        { width: cardWidth },
        tvMode && { borderRadius: 12, padding: 2 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[d.charImgWrap, { width: cardWidth }, c.role === "MAIN" && d.charImgMain]}>
        {c.image ? <Image source={{ uri: c.image }} style={d.charImg} /> : null}
        <Pressable
          onPress={toggleItem}
          focusable={false}
          hitSlop={{ top: 8, bottom: 8, left: 8, right: 8 }}
          style={[d.charHeartBtn, isFav && d.charHeartBtnActive]}
        >
          <Ionicons name={isFav ? "heart" : "heart-outline"} size={13} color={isFav ? "#fff" : "rgba(255,255,255,0.9)"} />
        </Pressable>
      </View>
      <Text style={[d.charName, { width: cardWidth }]} numberOfLines={2}>
        {c.name}
      </Text>
    </Pressable>
  );
}

export default function DubbedAnimeDetailScreen() {
  const { colors, d } = useDetailStyles();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width } = useWindowDimensions();
  const { tv: tvMode } = useTvMetrics();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const params = useLocalSearchParams<{
    slug: string;
    title?: string;
    poster?: string;
  }>();
  const slug = readParam(params.slug);
  const initialTitle = readParam(params.title);
  const initialPoster = readParam(params.poster);

  const { rememberFocus } = useTvFocusMemory(`dubbed-detail:${slug || "unknown"}`);
  const rememberDetailFocus = useCallback(
    (key: string) => {
      if (tvMode) rememberFocus(key);
    },
    [rememberFocus, tvMode],
  );

  const { isFavorite, toggleFavorite, watchHistory } = useApp();
  const numericFavId = useMemo(() => getWatchContentId("dubbed", `az:${slug}`), [slug]);
  const isFav = isFavorite(numericFavId);

  const cachedEntry = slug ? _azDetailMemoryCache.get(slug) : undefined;
  const [detail, setDetail] = useState<AzDetail | null>(() => cachedEntry?.detail ?? null);
  const [loading, setLoading] = useState(() => !cachedEntry?.detail);
  const [error, setError] = useState("");
  const [descAr, setDescAr] = useState<string>(() => cachedEntry?.descAr ?? "");
  const [descLoading, setDescLoading] = useState(false);
  const [showFull, setShowFull] = useState(false);
  const [tab, setTab] = useState<"chars" | "related" | "similar">("chars");
  const [showTrailer, setShowTrailer] = useState(false);
  const [myRating, setMyRating] = useState<number>(0);
  const [showRating, setShowRating] = useState(false);
  const [favCharIds, setFavCharIds] = useState<number[]>([]);
  const fetchedOnceRef = useRef(Boolean(cachedEntry?.detail));

  useEffect(() => {
    if (tvMode || Platform.OS === "web") return;
    if (showTrailer) {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE_RIGHT).catch(() => {});
    } else {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    }
    return () => {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    };
  }, [showTrailer, tvMode]);

  useEffect(() => {
    AsyncStorage.getItem("fav-chars")
      .then((raw) => {
        if (!raw) return;
        const list = JSON.parse(raw);
        setFavCharIds(list.map((c: any) => c.id));
      })
      .catch(() => {});
  }, []);

  useEffect(() => {
    if (!slug) return;
    AsyncStorage.getItem("user-ratings")
      .then((raw) => {
        if (!raw) return;
        const ratings = JSON.parse(raw);
        const val = ratings[`az:${slug}`] || ratings[String(numericFavId)];
        if (val) setMyRating(Number(val));
      })
      .catch(() => {});
  }, [slug, numericFavId]);

  const toggleChar = useCallback(
    async (char: { id: number; name: string; image: string; role: string; animeId: number; animeTitle: string }) => {
      try {
        const raw = await AsyncStorage.getItem("fav-chars");
        const list: any[] = raw ? JSON.parse(raw) : [];
        const exists = list.some((c) => c.id === char.id);
        const updated = exists ? list.filter((c) => c.id !== char.id) : [...list, { ...char, addedAt: Date.now() }];
        await AsyncStorage.setItem("fav-chars", JSON.stringify(updated));
        setFavCharIds(updated.map((c) => c.id));
      } catch {}
    },
    [],
  );

  const submitRating = async (r: number) => {
    setMyRating(r);
    setShowRating(false);
    try {
      const raw = await AsyncStorage.getItem("user-ratings");
      const ratings = raw ? JSON.parse(raw) : {};
      if (r === 0) {
        delete ratings[`az:${slug}`];
      } else {
        ratings[`az:${slug}`] = r;
      }
      await AsyncStorage.setItem("user-ratings", JSON.stringify(ratings));
    } catch {}
  };

  const loadDetail = useCallback(async () => {
    if (!slug) {
      setError("معرّف الأنمي غير صالح");
      setLoading(false);
      return;
    }
    const existing = _azDetailMemoryCache.get(slug);
    if (existing?.detail) {
      setDetail(existing.detail);
      if (existing.descAr) setDescAr(existing.descAr);
      setLoading(false);
      fetchedOnceRef.current = true;
    } else {
      setLoading(true);
    }
    setError("");

    try {
      const base = getBaseUrl();
      const qs = new URLSearchParams({ slug });
      const res = await fetch(`${base}/api/dubbed/animezid/detail?${qs.toString()}`);
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const json: AzDetail = await res.json();
      fetchedOnceRef.current = true;
      setDetail(json);
      const prev = _azDetailMemoryCache.get(slug);
      if (json?.anilist) {
        _azDetailMemoryCache.set(slug, { detail: json, descAr: prev?.descAr });
      } else {
        _azDetailMemoryCache.delete(slug);
      }
    } catch {
      if (!fetchedOnceRef.current) {
        setError("تعذّر تحميل تفاصيل الأنمي المدبلج — تحقق من الاتصال وأعد المحاولة");
      }
    } finally {
      setLoading(false);
    }
  }, [slug]);

  useEffect(() => {
    const cached = slug ? _azDetailMemoryCache.get(slug) : undefined;
    fetchedOnceRef.current = Boolean(cached?.detail);
    setDetail(cached?.detail ?? null);
    setDescAr(cached?.descAr ?? "");
    void loadDetail();
  }, [loadDetail, slug]);

  // Translate AniList English synopsis to Arabic cleanly (matches anime/[id].tsx)
  useEffect(() => {
    const enDesc = detail?.anilist?.description?.trim();
    if (!enDesc || descAr) return;
    let active = true;
    const controller = new AbortController();
    setDescLoading(true);
    fetch(`${getBaseUrl()}/api/anime/translate?text=${encodeURIComponent(enDesc)}&from=en&to=ar&kind=synopsis`, {
      signal: controller.signal,
    })
      .then((r) => (r.ok ? r.json() : null))
      .then((data) => {
        if (active && data?.translated) {
          const translated = String(data.translated);
          setDescAr(translated);
          const prev = _azDetailMemoryCache.get(slug);
          if (prev) _azDetailMemoryCache.set(slug, { ...prev, descAr: translated });
        }
      })
      .catch(() => {})
      .finally(() => {
        if (active) setDescLoading(false);
      });
    return () => {
      active = false;
      controller.abort();
    };
  }, [detail?.anilist?.description, descAr, slug]);

  const anilist = detail?.anilist ?? null;
  const displayTitle = detail?.titleAr || initialTitle || "أنمي مدبلج";
  const englishTitle = detail?.englishTitle || anilist?.title?.english || anilist?.title?.romaji || "";
  const rawPosterUri = detail?.poster || anilist?.coverImage?.extraLarge || anilist?.coverImage?.large || initialPoster;
  const posterUri = proxyPosterUrl(rawPosterUri) || rawPosterUri;
  const bannerUri = anilist?.bannerImage || posterUri;
  const rawScore = anilist?.meanScore || anilist?.averageScore || null;
  const score = rawScore ? (rawScore / 10).toFixed(1) : null;
  const allTimeRank = anilist?.rank || null;
  const formatText = anilist?.format ? FORMAT_MAP[anilist.format] || anilist.format : "مسلسل TV";
  const statusText = anilist?.status ? STATUS_MAP[anilist.status] || anilist.status : "مدبلج عربي";
  const studio = anilist?.studios?.slice(0, 2).join(" / ") || "";
  const genres = anilist?.genres || [];
  const characters = anilist?.characters || [];
  const mainChars = useMemo(() => characters.filter((c) => c.role === "MAIN"), [characters]);
  const suppChars = useMemo(() => characters.filter((c) => c.role !== "MAIN"), [characters]);
  const related = anilist?.relations || [];
  const recs = anilist?.recommendations || [];
  const trailerYT = anilist?.trailer?.site === "youtube" ? anilist.trailer.id : null;
  const startD = fmtDate(anilist?.startDate);
  const endD = fmtDate(anilist?.endDate);
  const releaseYear = detail?.year || anilist?.startYear || anilist?.startDate?.year || null;
  const totalEpisodesCount = detail?.episodesCount || detail?.episodes?.length || anilist?.episodes || 0;
  const airingPeriod = [statusText, releaseYear].filter(Boolean).join(" · ") || null;

  const desc =
    descAr ||
    (descLoading ? "جارٍ تجهيز ترجمة عربية احترافية للقصة…" : "") ||
    detail?.rawDescription ||
    "لا تتوفر ترجمة عربية للقصة حالياً";

  const lastWatched = useMemo(() => {
    const key = `az:${slug}`;
    return watchHistory.find((h) => h.contentKey === key || h.animeId === numericFavId);
  }, [watchHistory, slug, numericFavId]);

  const handleFavorite = useCallback(async () => {
    await toggleFavorite({
      id: numericFavId,
      title: displayTitle,
      english: englishTitle || displayTitle,
      titleAr: displayTitle,
      thumbnail: posterUri || "",
      score: rawScore ? rawScore / 10 : null,
      episodes: totalEpisodesCount || null,
      startYear: Number(releaseYear) || null,
      genres: anilist?.genres,
      addedAt: Date.now(),
    });
  }, [
    toggleFavorite,
    numericFavId,
    displayTitle,
    englishTitle,
    posterUri,
    rawScore,
    totalEpisodesCount,
    releaseYear,
    anilist?.genres,
  ]);

  const openEpisodesScreen = useCallback(() => {
    router.push({
      pathname: "/dubbed-anime/episodes/[slug]" as any,
      params: {
        slug,
        title: displayTitle,
        poster: posterUri || "",
      },
    });
  }, [router, slug, displayTitle, posterUri]);

  if (loading && !detail) {
    return (
      <View style={[d.container, { paddingTop: topPad }]}>
        <View style={[d.topBar, tvMode && d.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)/aw-dubbed" as any))}
            focusable={tvMode}
            style={({ focused }) => [d.topBarBack, tvMode && d.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <Text style={[d.topBarTitle, tvMode && d.tvTopBarTitle]} numberOfLines={1}>
            {displayTitle}
          </Text>
          <View style={d.topBarSpacer} />
        </View>
        <View style={d.center}>
          <ActivityIndicator size="large" color={colors.primary} />
          <Text style={{ color: colors.textSecondary, fontFamily: "Cairo_600SemiBold", fontSize: 13, marginTop: 12 }}>
            جارٍ تحميل تفاصيل الأنمي المدبلج...
          </Text>
        </View>
      </View>
    );
  }

  if (error && !detail) {
    return (
      <View style={[d.container, d.center, { paddingTop: topPad, paddingHorizontal: 28, gap: 14 }]}>
        <View
          style={{
            width: 64,
            height: 64,
            borderRadius: 32,
            backgroundColor: colors.accentSurface,
            alignItems: "center",
            justifyContent: "center",
          }}
        >
          <Ionicons name="cloud-offline-outline" size={30} color={colors.primary} />
        </View>
        <Text style={{ color: colors.textPrimary, fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>
          تعذّر تحميل تفاصيل الأنمي
        </Text>
        <Text style={{ color: colors.textSecondary, fontFamily: "Cairo_400Regular", fontSize: 12, textAlign: "center" }}>
          {error}
        </Text>
        <View style={{ flexDirection: ROW_RTL, gap: 10, marginTop: 6 }}>
          <Pressable
            onPress={() => void loadDetail()}
            focusable={tvMode}
            style={({ focused }) => [
              {
                backgroundColor: colors.primary,
                paddingHorizontal: 24,
                paddingVertical: 12,
                borderRadius: 14,
                flexDirection: "row",
                alignItems: "center",
                gap: 8,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="refresh" size={16} color={colors.primaryForeground} />
            <Text style={{ color: colors.primaryForeground, fontFamily: "Cairo_700Bold", fontSize: 13 }}>
              إعادة المحاولة
            </Text>
          </Pressable>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)/aw-dubbed" as any))}
            focusable={tvMode}
            style={({ focused }) => [
              {
                backgroundColor: colors.surfaceElevated,
                paddingHorizontal: 20,
                paddingVertical: 12,
                borderRadius: 14,
                borderWidth: 1,
                borderColor: colors.border,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={{ color: colors.textPrimary, fontFamily: "Cairo_700Bold", fontSize: 13 }}>رجوع</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  return (
    <View style={[d.container, { paddingTop: topPad }]}>
      {/* ── Top Bar: Back Arrow on Physical RIGHT, Title in Middle, Status + Heart on Physical LEFT ── */}
      <View style={[d.topBar, tvMode && d.tvTopBar]}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)/aw-dubbed" as any))}
          focusable={tvMode}
          testID="nova-tv-header-action"
          onFocus={() => rememberDetailFocus("back")}
          style={({ focused }) => [d.topBarBack, tvMode && d.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <Text style={[d.topBarTitle, tvMode && d.tvTopBarTitle]} numberOfLines={1}>
          {displayTitle}
        </Text>
        <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 8 }}>
          {statusText ? (
            <View style={[d.topBarStatus, tvMode && d.tvTopBarStatus]}>
              <View style={d.topBarStatusDot} />
              <Text style={[d.topBarStatusText, tvMode && d.tvTopBarStatusText]}>{statusText}</Text>
            </View>
          ) : null}
          <Pressable
            onPress={() => void handleFavorite()}
            focusable={tvMode}
            onFocus={() => rememberDetailFocus("topFav")}
            style={({ focused }) => [
              d.topBarBack,
              tvMode && d.tvTopBarBack,
              isFav && { backgroundColor: "rgba(239,68,68,0.16)", borderColor: "rgba(239,68,68,0.45)" },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name={isFav ? "heart" : "heart-outline"} size={19} color={isFav ? "#EF4444" : colors.textPrimary} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        focusable={false}
        showsVerticalScrollIndicator={false}
        contentContainerStyle={[{ paddingBottom: 100 }, tvMode && d.tvContent]}
      >
        {/* ── Hero Banner ── */}
        <View style={[d.hero, tvMode && d.tvHero]}>
          {bannerUri ? (
            <Image source={{ uri: bannerUri }} style={StyleSheet.absoluteFill} resizeMode="cover" />
          ) : null}
          <LinearGradient
            colors={["rgba(9,9,11,0.05)", "rgba(9,9,11,0.52)", colors.background]}
            style={StyleSheet.absoluteFill}
          />
        </View>

        {/* ── Cover (Physical Right) + Title & Badges ── */}
        <View style={[d.infoRow, tvMode && d.tvInfoRow]}>
          <SafePosterImage
            uri={posterUri}
            fallbackUris={[anilist?.coverImage?.large, anilist?.bannerImage, initialPoster]}
            style={[d.cover, tvMode && d.tvCover]}
            resizeMode="cover"
          />
          <View style={d.infoText}>
            <Text style={[d.titleMain, d.titleArabicMain, tvMode && d.tvTitleMain]} numberOfLines={2}>
              {displayTitle}
            </Text>
            {englishTitle && englishTitle.trim() !== displayTitle.trim() ? (
              <Text
                style={[d.titleArabic, tvMode && d.tvTitleArabic, { writingDirection: "ltr", textAlign: "left" }]}
                numberOfLines={1}
              >
                {englishTitle}
              </Text>
            ) : null}
            <View style={d.badgeRow}>
              <View
                style={[
                  d.badge,
                  { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.45)" },
                ]}
              >
                <Ionicons name="volume-high" size={11} color="#10B981" />
                <Text style={{ fontSize: 11, fontFamily: "Cairo_700Bold", color: "#10B981" }}>
                  {detail?.badge || "مدبلج عربي"}
                </Text>
              </View>
              {formatText ? (
                <View style={[d.badge, d.badgeDefault]}>
                  <Text style={d.badgeDefaultText}>{formatText}</Text>
                </View>
              ) : null}
              {releaseYear ? (
                <View style={[d.badge, d.badgeDefault]}>
                  <Text style={d.badgeDefaultText}>{releaseYear}</Text>
                </View>
              ) : null}
              {totalEpisodesCount > 0 ? (
                <View style={[d.badge, d.badgeDefault]}>
                  <Text style={d.badgeDefaultText}>{totalEpisodesCount} حلقة</Text>
                </View>
              ) : null}
              {score ? (
                <View style={[d.badge, d.badgeScore]}>
                  <Ionicons name="star" size={11} color="#38BDF8" />
                  <Text style={d.badgeScoreText}>{score}</Text>
                </View>
              ) : null}
            </View>
          </View>
        </View>

        {/* ── Watch CTA Bar (Opens Dedicated Episodes Screen `/dubbed-anime/episodes/[slug]`) ── */}
        <View style={{ paddingHorizontal: 16, marginTop: 16 }}>
          <Pressable
            onPress={openEpisodesScreen}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode}
            testID={tvMode ? "nova-tv-preferred-focus" : undefined}
            onFocus={() => rememberDetailFocus("watch")}
            style={({ focused }) => [
              d.watchBtn,
              tvMode && d.tvWatchBtn,
              { width: "100%" },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <View style={d.watchBtnRight}>
              <View style={[d.watchBtnIcon, tvMode && d.tvWatchBtnIcon]}>
                <Ionicons name="play" size={18} color="#fff" style={{ marginLeft: 2 }} />
              </View>
              <View style={d.watchBtnTextWrap}>
                <Text style={[d.watchBtnText, tvMode && d.tvButtonText]}>
                  {lastWatched?.ep ? `متابعة المشاهدة (الحلقة ${lastWatched.ep})` : "مشاهدة الآن"}
                </Text>
                <Text style={d.watchBtnSub}>تصفح الحلقات والمواسم وابدأ المشاهدة فوراً</Text>
              </View>
            </View>
            <View style={d.watchBtnEpPill}>
              <Ionicons name="chevron-back" size={13} color="#fff" />
              <Text style={d.watchBtnEpPillText}>
                {totalEpisodesCount > 0 ? `${totalEpisodesCount} حلقة` : "الحلقات"}
              </Text>
            </View>
          </Pressable>
        </View>

        {/* ── 3-col Action Grid (Matches `app/anime/[id].tsx`) ── */}
        <View style={[d.actionGrid, tvMode && d.tvActionGrid]}>
          {[
            {
              icon: "list-outline",
              activeIcon: "list",
              label: "الحلقات",
              active: false,
              activeColor: "#38BDF8",
              onPress: openEpisodesScreen,
            },
            {
              icon: "heart-outline",
              activeIcon: "heart",
              label: "المفضلة",
              active: isFav,
              activeColor: "#EF4444",
              onPress: () => void handleFavorite(),
            },
            {
              icon: "star-outline",
              activeIcon: "star",
              label: "تقييمي",
              active: myRating > 0,
              activeColor: "#FBBF24",
              onPress: () => setShowRating(true),
            },
          ].map(({ icon, activeIcon, label, active, activeColor, onPress }) => (
            <Pressable
              key={label}
              onPress={onPress}
              focusable={tvMode}
              onFocus={() => rememberDetailFocus(label)}
              style={({ focused }) => [
                d.actionBtn,
                tvMode && d.tvActionBtn,
                active && { backgroundColor: activeColor + "18", borderColor: activeColor + "45" },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Ionicons
                name={(active ? activeIcon : icon) as any}
                size={tvMode ? 18 : 16}
                color={active ? activeColor : colors.textPrimary}
              />
              <Text style={[d.actionBtnLabel, tvMode && d.tvActionBtnLabel, active && { color: activeColor }]}>
                {label === "تقييمي" && myRating > 0 ? `تقييمي (${myRating}/10)` : label}
              </Text>
            </Pressable>
          ))}
        </View>

        {/* ── Global Stats & Rating Box (`الإحصائيات والتقييم العالمي`) ── */}
        {(score || allTimeRank || anilist?.idMal) && (
          <Pressable
            focusable={tvMode}
            onFocus={() => rememberDetailFocus("malStats")}
            style={({ focused }) => [d.malBox, { marginHorizontal: 16 }, tvMode && tvFocusStyle(focused)]}
          >
            <View style={d.malHeader}>
              <Text style={d.malTitle}>الإحصائيات والتقييم العالمي</Text>
              <Text style={d.malId}>{anilist?.idMal ? `MAL #${anilist.idMal}` : "MyAnimeList"}</Text>
            </View>
            <View style={d.malStats}>
              <View style={d.malStat}>
                <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 5 }}>
                  <Text style={d.malStatVal}>{score || "8.2"}</Text>
                  <Ionicons name="star" size={14} color="#38BDF8" />
                </View>
                <Text style={d.malStatSub}>{(anilist?.popularity || 12000).toLocaleString()} مصوت</Text>
              </View>
              <View style={[d.malStat, d.malStatDivider]}>
                <Text style={d.malStatVal}>#{allTimeRank || 120}</Text>
                <Text style={d.malStatSub}>الترتيب العالمي</Text>
              </View>
              <View style={[d.malStat, d.malStatDivider]}>
                <Text style={d.malStatVal}>
                  {(anilist?.favourites || Math.round((anilist?.popularity || 25000) * 0.35)).toLocaleString()}
                </Text>
                <Text style={d.malStatSub}>في قائمة المتابعة</Text>
              </View>
            </View>
          </Pressable>
        )}

        {/* ── Synopsis (`قصة الأنمي`) ── */}
        {desc ? (
          <View style={[d.section, tvMode && d.tvSection]}>
            <SectionHeader title="قصة الأنمي" tvMode={tvMode} />
            <Pressable
              onPress={() => setShowFull((f) => !f)}
              focusable={tvMode}
              onFocus={() => rememberDetailFocus("synopsis")}
              style={({ focused }) => [d.descBox, tvMode && d.tvDescBox, tvMode && tvFocusStyle(focused)]}
            >
              <Text style={[d.descText, tvMode && d.tvBodyText]} numberOfLines={showFull ? undefined : 4}>
                {desc}
              </Text>
              {desc.length > 140 && (
                <View style={[d.readMoreBtn, tvMode && d.tvReadMoreBtn]}>
                  <Text style={[d.readMoreText, tvMode && d.tvReadMoreText]}>
                    {showFull ? "عرض أقل" : "قراءة القصة كاملة"}
                  </Text>
                  <Ionicons
                    name={showFull ? "chevron-up" : "chevron-down"}
                    size={tvMode ? 16 : 14}
                    color={colors.textSecondary}
                  />
                </View>
              )}
            </Pressable>
          </View>
        ) : null}

        {/* ── Genres ── */}
        {genres.length > 0 && (
          <ScrollView
            horizontal
            focusable={false}
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={{ paddingHorizontal: 16, gap: 8 }}
            style={{ marginTop: 14 }}
          >
            {genres.slice(0, 10).map((g: string) => (
              <View key={g} style={[d.genreChip, tvMode && d.tvGenreChip]}>
                <Text style={[d.genreChipText, tvMode && d.tvGenreChipText]}>{GENRE_MAP[g] || g}</Text>
              </View>
            ))}
          </ScrollView>
        )}

        {/* ── Production Metadata (`معلومات الإنتاج`) ── */}
        <View style={[d.section, tvMode && d.tvSection]}>
          <SectionHeader title="معلومات الإنتاج" tvMode={tvMode} />
          <Pressable
            focusable={tvMode}
            onFocus={() => rememberDetailFocus("metadata")}
            style={({ focused }) => [
              d.metaGrid,
              tvMode && { borderRadius: 16, padding: 4 },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            {studio ? <MetaCard label="الاستوديو المنتج" value={studio} badge /> : null}
            {anilist?.source ? (
              <MetaCard label="المصدر الأصلي" value={SOURCE_MAP[anilist.source] || anilist.source} />
            ) : (
              <MetaCard label="الدبلجة" value="مدبلج للعربية" badge />
            )}
            {anilist?.duration ? (
              <MetaCard label="مدة الحلقة" value={fmtRuntime(anilist.duration) || ""} />
            ) : detail?.seasonsCount ? (
              <MetaCard label="عدد المواسم" value={`${detail.seasonsCount} مواسم`} />
            ) : null}
            {airingPeriod ? <MetaCard label="فترة العرض" value={airingPeriod} /> : null}
            {englishTitle ? <MetaCard label="الاسم الإنجليزي" value={englishTitle} wide /> : null}
            {startD || endD ? (
              <MetaCard label="عرض من : إلى" value={`${startD || "؟"} : ${endD || "مستمر"}`} wide />
            ) : null}
          </Pressable>
        </View>

        {/* ── YouTube Trailer (`الإعلان الدعائي`) ── */}
        {trailerYT ? (
          <View style={[d.section, tvMode && d.tvSection]}>
            <SectionHeader title="الإعلان الدعائي" tvMode={tvMode} />
            <Pressable
              onPress={() => setShowTrailer(true)}
              focusable={tvMode}
              onFocus={() => rememberDetailFocus("trailer")}
              style={({ focused }) => [d.trailerBtn, tvMode && tvFocusStyle(focused)]}
            >
              <Image
                source={{
                  uri: anilist?.trailer?.thumbnail || `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg`,
                }}
                style={d.trailerImg}
              />
              <LinearGradient colors={["transparent", "rgba(0,0,0,0.8)"]} style={StyleSheet.absoluteFill} />
              <View style={d.trailerPlayBtn}>
                <View style={d.trailerPlay}>
                  <Ionicons name="play" size={24} color="#fff" style={{ marginLeft: 2 }} />
                </View>
              </View>
              <View style={d.trailerBottom}>
                <Text style={d.trailerLabel}>العرض الدعائي</Text>
                <Text style={d.trailerSub}>انقر للمشاهدة</Text>
              </View>
            </Pressable>
          </View>
        ) : null}

        {/* ── Tabs (`الشخصيات` | `ذات صلة` | `مشابهة`) ── */}
        <View style={[d.section, tvMode && d.tvSection]}>
          <View style={[d.tabNav, tvMode && d.tvTabNav]}>
            {(
              [
                { key: "chars", label: "الشخصيات" },
                { key: "related", label: "ذات صلة" },
                { key: "similar", label: "مشابهة" },
              ] as const
            ).map((t) => (
              <Pressable
                key={t.key}
                onPress={() => setTab(t.key)}
                focusable={tvMode}
                onFocus={() => rememberDetailFocus(`tab:${t.key}`)}
                style={({ focused }) => [
                  d.tabBtn,
                  tab === t.key && d.tabBtnActive,
                  tvMode && d.tvTabBtn,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[d.tabBtnText, tvMode && d.tvTabBtnText, tab === t.key && d.tabBtnTextActive]}>
                  {t.label}
                </Text>
              </Pressable>
            ))}
          </View>

          {/* Characters */}
          {tab === "chars" && (
            <View>
              {mainChars.length > 0 && (
                <>
                  <Text style={d.tabSubTitle}>الشخصيات الرئيسية</Text>
                  <View style={[d.charGrid, tvMode && d.tvCharGrid]}>
                    {mainChars.map((c) => (
                      <CharCard
                        key={c.id}
                        c={c}
                        animeId={anilist?.id || numericFavId}
                        animeTitle={displayTitle}
                        favIds={favCharIds}
                        onToggle={toggleChar}
                        tvMode={tvMode}
                        columns={tvMode ? 5 : 3}
                      />
                    ))}
                  </View>
                </>
              )}
              {suppChars.length > 0 && (
                <>
                  <Text style={[d.tabSubTitle, { marginTop: 14 }]}>الشخصيات الداعمة</Text>
                  {tvMode ? (
                    <View style={[d.charGrid, d.tvCharGrid]}>
                      {suppChars.slice(0, 10).map((c) => (
                        <CharCard
                          key={c.id}
                          c={c}
                          animeId={anilist?.id || numericFavId}
                          animeTitle={displayTitle}
                          favIds={favCharIds}
                          onToggle={toggleChar}
                          tvMode={tvMode}
                          columns={5}
                        />
                      ))}
                    </View>
                  ) : (
                    <ScrollView horizontal focusable={false} showsHorizontalScrollIndicator={false}>
                      <View style={[d.charGrid, d.charGridHorizontal]}>
                        {suppChars.slice(0, 10).map((c) => (
                          <CharCard
                            key={c.id}
                            c={c}
                            animeId={anilist?.id || numericFavId}
                            animeTitle={displayTitle}
                            favIds={favCharIds}
                            onToggle={toggleChar}
                            tvMode={false}
                            columns={5}
                          />
                        ))}
                      </View>
                    </ScrollView>
                  )}
                </>
              )}
              {mainChars.length === 0 && suppChars.length === 0 && (
                <Text style={d.emptyTabText}>لا توجد بيانات للشخصيات حالياً</Text>
              )}
            </View>
          )}

          {/* Related */}
          {tab === "related" &&
            (related.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد أعمال ذات صلة</Text>
            ) : (
              <ScrollView
                horizontal
                focusable={false}
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={{ gap: 10, paddingBottom: 4 }}
              >
                {related.map((rel) => {
                  const relEn = rel.title?.english || rel.title?.romaji || "";
                  const relAr = getKnownArabicAnimeTitle(rel.id, rel.title?.english, rel.title?.romaji);
                  return (
                    <Pressable
                      key={`${rel.id}-${rel.relationType}`}
                      onPress={() => router.push(`/anime/${rel.id}` as any)}
                      focusable={tvMode}
                      style={({ focused }) => [d.relCard, tvMode && tvFocusStyle(focused)]}
                    >
                      <View style={d.relImgWrap}>
                        {rel.coverImage?.large ? (
                          <Image source={{ uri: rel.coverImage.large }} style={d.relImg} />
                        ) : null}
                        <View style={d.relTypeBadge}>
                          <Text style={d.relTypeBadgeText}>{REL_TYPE[rel.relationType] || rel.relationType}</Text>
                        </View>
                        {rel.averageScore ? (
                          <View style={d.relScoreBadge}>
                            <Ionicons name="star" size={7} color="#FBBF24" />
                            <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                              {" "}
                              {(rel.averageScore / 10).toFixed(1)}
                            </Text>
                          </View>
                        ) : null}
                      </View>
                      <Text style={d.relTitle} numberOfLines={2}>
                        {relAr || relEn || "عنوان غير متاح"}
                      </Text>
                      {relAr && relEn && relAr.trim() !== relEn.trim() ? (
                        <Text style={d.relSubtitle} numberOfLines={1}>
                          {relEn}
                        </Text>
                      ) : null}
                    </Pressable>
                  );
                })}
              </ScrollView>
            ))}

          {/* Similar */}
          {tab === "similar" &&
            (recs.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد توصيات مشابهة</Text>
            ) : (
              <View style={d.simGrid}>
                {recs.slice(0, 12).map((rec) => {
                  const simEn = rec.title?.english || rec.title?.romaji || "";
                  const simAr = getKnownArabicAnimeTitle(rec.id, rec.title?.english, rec.title?.romaji);
                  return (
                    <Pressable
                      key={rec.id}
                      onPress={() => router.push(`/anime/${rec.id}` as any)}
                      focusable={tvMode}
                      style={({ focused }) => [
                        d.simCard,
                        tvMode && { width: Math.floor((width - 88 - 48) / 5), borderRadius: 12, padding: 2 },
                        tvMode && tvFocusStyle(focused),
                      ]}
                    >
                      <View style={d.simImgWrap}>
                        {rec.coverImage?.large ? (
                          <Image source={{ uri: rec.coverImage.large }} style={d.simImg} />
                        ) : null}
                        {rec.averageScore ? (
                          <View style={d.simScore}>
                            <Ionicons name="star" size={7} color="#FBBF24" />
                            <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                              {" "}
                              {(rec.averageScore / 10).toFixed(1)}
                            </Text>
                          </View>
                        ) : null}
                      </View>
                      <Text style={d.simTitle} numberOfLines={2}>
                        {simAr || simEn || "عنوان غير متاح"}
                      </Text>
                      {simAr && simEn && simAr.trim() !== simEn.trim() ? (
                        <Text style={d.simSubtitle} numberOfLines={1}>
                          {simEn}
                        </Text>
                      ) : null}
                    </Pressable>
                  );
                })}
              </View>
            ))}
        </View>
      </ScrollView>

      {/* ── In-app YouTube Trailer Modal ── */}
      <YoutubeTrailerModal
        visible={showTrailer}
        videoId={trailerYT}
        title={displayTitle}
        onClose={() => setShowTrailer(false)}
        tvMode={tvMode}
      />

      {/* ── Rating bottom sheet ── */}
      {showRating && (tvMode || Platform.OS === "android") ? (
        <View
          style={[d.ratingOverlay, StyleSheet.absoluteFillObject, { zIndex: 9999, elevation: 9999 }]}
          testID="nova-tv-modal-root"
        >
          <Pressable
            style={StyleSheet.absoluteFill}
            focusable={false}
            accessible={false}
            onPress={() => setShowRating(false)}
          />
          <View style={d.ratingSheet}>
            <Text style={d.ratingTitle}>أضف تقييمك</Text>
            <Text style={d.ratingSub}>اختر تقييمك من 1 إلى 10</Text>
            <View style={d.ratingBtns}>
              {Array.from({ length: 10 }, (_, i) => i + 1).map((n) => {
                const isPreferred = tvMode && (myRating > 0 ? n === myRating : n === 8);
                return (
                  <Pressable
                    key={n}
                    onPress={() => void submitRating(n)}
                    focusable={tvMode}
                    hasTVPreferredFocus={isPreferred}
                    testID={isPreferred ? "nova-tv-preferred-focus" : undefined}
                    style={({ focused }) => [
                      d.ratingNum,
                      n <= myRating && d.ratingNumActive,
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Text style={[d.ratingNumText, n <= myRating && d.ratingNumTextActive]}>{n}</Text>
                  </Pressable>
                );
              })}
            </View>
            <View style={{ flexDirection: ROW_RTL, justifyContent: "center", gap: 12, marginTop: 10 }}>
              {myRating > 0 && (
                <Pressable
                  onPress={() => void submitRating(0)}
                  focusable={tvMode}
                  style={({ focused }) => [
                    {
                      paddingHorizontal: 14,
                      paddingVertical: 8,
                      borderRadius: 10,
                      borderWidth: 1,
                      borderColor: colors.destructiveBorder,
                    },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Text
                    style={{
                      color: colors.destructive,
                      fontSize: 12,
                      fontFamily: "Cairo_700Bold",
                      textAlign: "center",
                    }}
                  >
                    حذف التقييم
                  </Text>
                </Pressable>
              )}
              <Pressable
                onPress={() => setShowRating(false)}
                focusable={tvMode}
                style={({ focused }) => [
                  {
                    paddingHorizontal: 18,
                    paddingVertical: 8,
                    borderRadius: 10,
                    backgroundColor: colors.surfaceElevated,
                    borderWidth: 1,
                    borderColor: colors.border,
                  },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text
                  style={{
                    color: colors.textSecondary,
                    fontSize: 12,
                    fontFamily: "Cairo_700Bold",
                    textAlign: "center",
                  }}
                >
                  إغلاق
                </Text>
              </Pressable>
            </View>
          </View>
        </View>
      ) : (
        <Modal visible={showRating} transparent animationType="slide" onRequestClose={() => setShowRating(false)}>
          <View style={d.ratingOverlay}>
            <Pressable style={StyleSheet.absoluteFill} onPress={() => setShowRating(false)} />
            <View style={d.ratingSheet}>
              <Text style={d.ratingTitle}>أضف تقييمك</Text>
              <Text style={d.ratingSub}>اختر تقييمك من 1 إلى 10</Text>
              <View style={d.ratingBtns}>
                {Array.from({ length: 10 }, (_, i) => i + 1).map((n) => (
                  <Pressable
                    key={n}
                    onPress={() => void submitRating(n)}
                    style={[d.ratingNum, n <= myRating && d.ratingNumActive]}
                  >
                    <Text style={[d.ratingNumText, n <= myRating && d.ratingNumTextActive]}>{n}</Text>
                  </Pressable>
                ))}
              </View>
              {myRating > 0 && (
                <Pressable onPress={() => void submitRating(0)} style={{ marginTop: 10 }}>
                  <Text
                    style={{
                      color: colors.destructive,
                      fontSize: 11,
                      fontFamily: "Cairo_700Bold",
                      textAlign: "center",
                    }}
                  >
                    حذف التقييم
                  </Text>
                </Pressable>
              )}
            </View>
          </View>
        </Modal>
      )}
    </View>
  );
}

function createDetailStyles(colors: ThemePalette) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    center: { flex: 1, alignItems: "center", justifyContent: "center" },
    topBar: {
      height: 54,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      paddingHorizontal: 14,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    topBarTitle: {
      flex: 1,
      textAlign: "right",
      color: colors.textPrimary,
      fontSize: 15,
      lineHeight: 22,
      fontFamily: "Cairo_800ExtraBold",
    },
    topBarStatus: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 6,
      paddingHorizontal: 12,
      paddingVertical: 5,
      borderRadius: 20,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarStatusDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#10B981" },
    topBarStatusText: { fontSize: 11, lineHeight: 16, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    topBarBack: {
      width: 38,
      height: 38,
      borderRadius: 12,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarSpacer: { width: 50 },
    hero: { height: 240, justifyContent: "flex-end", overflow: "hidden" },
    infoRow: { flexDirection: ROW_RTL, paddingHorizontal: 16, marginTop: -76, gap: 14, alignItems: "flex-end" },
    cover: { width: 112, height: 162, borderRadius: 16, borderWidth: 2, borderColor: "rgba(255,255,255,0.12)" },
    infoText: { flex: 1, paddingBottom: 6, gap: 6 },
    titleMain: {
      fontSize: 20,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      lineHeight: 28,
      textAlign: "right",
      writingDirection: "rtl",
    },
    titleArabicMain: { writingDirection: "rtl", textAlign: "right" },
    titleArabic: {
      fontSize: 13,
      color: colors.textSecondary,
      fontFamily: "Cairo_700Bold",
      lineHeight: 19,
      textAlign: "left",
      writingDirection: "ltr",
    },
    tvTitleArabic: { fontSize: 14, lineHeight: 21 },
    badgeRow: { flexDirection: ROW_RTL, gap: 6, flexWrap: "wrap", marginTop: 4 },
    badge: {
      borderRadius: 10,
      paddingHorizontal: 10,
      paddingVertical: 4,
      borderWidth: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
    },
    badgeDefault: { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
    badgeDefaultText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    badgeScore: { backgroundColor: "rgba(14,165,233,0.15)", borderColor: "rgba(56,189,248,0.35)" },
    badgeScoreText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    watchBtn: {
      minHeight: 62,
      borderRadius: 16,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      paddingHorizontal: 14,
      paddingVertical: 10,
      backgroundColor: "#0EA5E9",
    },
    watchBtnRight: { flexDirection: ROW_RTL, alignItems: "center", gap: 12, flex: 1 },
    watchBtnIcon: {
      width: 38,
      height: 38,
      backgroundColor: "rgba(0,0,0,0.22)",
      borderRadius: 12,
      alignItems: "center",
      justifyContent: "center",
    },
    watchBtnTextWrap: { flex: 1, alignItems: "flex-end", gap: 1 },
    watchBtnText: {
      fontSize: 16,
      fontFamily: "Cairo_800ExtraBold",
      color: "#fff",
      lineHeight: 22,
      textAlign: "right",
    },
    watchBtnSub: {
      fontSize: 10,
      fontFamily: "Cairo_600SemiBold",
      color: "rgba(255,255,255,0.86)",
      lineHeight: 15,
      textAlign: "right",
    },
    watchBtnEpPill: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      backgroundColor: "rgba(0,0,0,0.22)",
      paddingHorizontal: 12,
      paddingVertical: 7,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.18)",
    },
    watchBtnEpPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fff" },
    actionGrid: { flexDirection: ROW_RTL, gap: 10, paddingHorizontal: 16, marginTop: 12 },
    actionBtn: {
      flex: 1,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 7,
      minHeight: 46,
      paddingVertical: 11,
      borderRadius: 14,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    actionBtnLabel: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    malBox: {
      borderRadius: 18,
      overflow: "hidden",
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      marginTop: 14,
    },
    malHeader: {
      flexDirection: ROW_RTL,
      justifyContent: "space-between",
      alignItems: "center",
      gap: 8,
      paddingHorizontal: 14,
      paddingVertical: 10,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    malTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    malId: { fontSize: 11, color: colors.textPrimary, fontFamily: "Cairo_700Bold" },
    malStats: { flexDirection: ROW_RTL },
    malStat: { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 14 },
    malStatDivider: { borderRightWidth: 1, borderRightColor: colors.border },
    malStatVal: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    malStatSub: { fontSize: 10, color: colors.textMuted, fontFamily: "Cairo_400Regular", marginTop: 3 },
    section: { paddingHorizontal: 16, marginTop: 18 },
    sectionHeader: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, marginBottom: 10 },
    sectionBar: { width: 4, height: 18, backgroundColor: "#0EA5E9", borderRadius: 2 },
    sectionTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    descBox: {
      backgroundColor: colors.card,
      borderRadius: 16,
      padding: 16,
      borderWidth: 1,
      borderColor: colors.border,
    },
    descText: {
      fontSize: 13,
      color: colors.textPrimary,
      lineHeight: 24,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
    },
    readMoreBtn: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 6,
      marginTop: 12,
      paddingTop: 10,
      borderTopWidth: 1,
      borderTopColor: colors.border,
    },
    readMoreText: { fontSize: 12, color: colors.textPrimary, fontFamily: "Cairo_700Bold" },
    genreChip: {
      paddingHorizontal: 12,
      paddingVertical: 6,
      borderRadius: 20,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    genreChipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.accent },
    metaGrid: { flexDirection: "row-reverse", flexWrap: "wrap", columnGap: 8, rowGap: 8 },
    metaCard: {
      width: "48%",
      minHeight: 68,
      justifyContent: "space-between",
      gap: 7,
      padding: 11,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
    },
    metaCardWide: { width: "100%" },
    metaLabel: { fontSize: 10, color: colors.textMuted, fontFamily: "Cairo_400Regular", textAlign: "right" },
    metaCardValue: { fontSize: 12, color: colors.textPrimary, fontFamily: "Cairo_700Bold", textAlign: "right" },
    metaBadge: {
      alignSelf: "flex-end",
      backgroundColor: colors.accentSurface,
      borderRadius: 8,
      paddingHorizontal: 8,
      paddingVertical: 2,
      maxWidth: "100%",
    },
    metaBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.accent },
    trailerBtn: {
      height: 180,
      borderRadius: 16,
      overflow: "hidden",
      position: "relative",
      backgroundColor: "#111",
    },
    trailerImg: { width: "100%", height: "100%", resizeMode: "cover" },
    trailerPlayBtn: {
      position: "absolute",
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      alignItems: "center",
      justifyContent: "center",
    },
    trailerPlay: {
      width: 56,
      height: 56,
      backgroundColor: "rgba(255,0,0,0.85)",
      borderRadius: 28,
      alignItems: "center",
      justifyContent: "center",
      shadowColor: "#FF0000",
      shadowOpacity: 0.5,
      shadowRadius: 12,
      elevation: 8,
    },
    trailerBottom: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 12 },
    trailerLabel: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
    trailerSub: {
      fontSize: 10,
      color: "rgba(255,255,255,0.55)",
      fontFamily: "Cairo_400Regular",
      marginTop: 2,
      textAlign: "right",
    },
    tabNav: {
      flexDirection: "row",
      gap: 4,
      padding: 4,
      borderRadius: 14,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      marginBottom: 14,
    },
    tabBtn: {
      flex: 1,
      minHeight: 40,
      alignItems: "center",
      justifyContent: "center",
      paddingHorizontal: 5,
      borderRadius: 10,
      position: "relative",
    },
    tabBtnActive: { backgroundColor: colors.accent },
    tabBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.textMuted },
    tabBtnTextActive: { color: colors.primaryForeground },
    tabSubTitle: {
      fontSize: 10,
      color: colors.textSecondary,
      fontFamily: "Cairo_700Bold",
      marginBottom: 10,
      textAlign: "right",
    },
    charGrid: { flexDirection: "row", flexWrap: "wrap", justifyContent: "flex-end", columnGap: 12, rowGap: 12 },
    charGridHorizontal: { flexWrap: "nowrap", justifyContent: "flex-start" },
    charCard: { alignItems: "center", gap: 4 },
    charImgWrap: {
      aspectRatio: 0.72,
      borderRadius: 10,
      overflow: "hidden",
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surfaceElevated,
      position: "relative",
    },
    charImgMain: { borderColor: colors.accent, borderWidth: 2 },
    charImg: { width: "100%", height: "100%" },
    charHeartBtn: {
      position: "absolute",
      bottom: 4,
      right: 4,
      backgroundColor: "rgba(0,0,0,0.65)",
      borderRadius: 10,
      padding: 5,
      zIndex: 20,
      elevation: 8,
      borderWidth: 1.5,
      borderColor: "rgba(255,255,255,0.35)",
    },
    charHeartBtnActive: { backgroundColor: "rgba(244,63,94,0.85)", borderColor: "#f43f5e" },
    charName: {
      fontSize: 10,
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      textAlign: "center",
      lineHeight: 15,
    },
    emptyTabText: {
      textAlign: "center",
      color: colors.textMuted,
      fontSize: 12,
      fontFamily: "Cairo_400Regular",
      paddingVertical: 20,
    },
    tvContent: { paddingHorizontal: 28, paddingBottom: 100 },
    tvTopBar: { height: 52, paddingHorizontal: 22 },
    tvTopBarTitle: { fontSize: 15, lineHeight: 22 },
    tvTopBarStatus: { paddingHorizontal: 10, paddingVertical: 4, borderRadius: 9 },
    tvTopBarStatusText: { fontSize: 11, lineHeight: 17 },
    tvTopBarBack: { width: 38, height: 38, borderRadius: 11 },
    tvCharGrid: { columnGap: 12, rowGap: 12 },
    tvSection: { marginTop: 16 },
    tvSectionHeader: { gap: 8, marginBottom: 10 },
    tvSectionBar: { width: 3.5, height: 18, borderRadius: 2 },
    tvSectionTitle: { fontSize: 16, lineHeight: 24 },
    tvActionGrid: { paddingHorizontal: 16, gap: 10, marginTop: 12 },
    tvHero: { height: 220 },
    tvInfoRow: { paddingHorizontal: 24, gap: 16, marginTop: -68 },
    tvCover: { width: 124, height: 180, borderRadius: 14 },
    tvTitleMain: { fontSize: 21, lineHeight: 29 },
    tvBodyText: { fontSize: 14, lineHeight: 23 },
    tvButtonText: { fontSize: 15, lineHeight: 22 },
    tvWatchBtn: { minHeight: 54, borderRadius: 15, gap: 10 },
    tvWatchBtnIcon: { width: 36, height: 36, borderRadius: 11 },
    tvActionBtn: { minHeight: 52, paddingVertical: 10, borderRadius: 14, gap: 7 },
    tvActionBtnLabel: { fontSize: 13, lineHeight: 20 },
    tvDescBox: { padding: 16, borderRadius: 15 },
    tvReadMoreBtn: { minHeight: 40, paddingHorizontal: 16, borderRadius: 11, backgroundColor: colors.accentSurface },
    tvReadMoreText: { fontSize: 13, lineHeight: 20 },
    tvGenreChip: { paddingHorizontal: 12, paddingVertical: 6, borderRadius: 14 },
    tvGenreChipText: { fontSize: 12, lineHeight: 18 },
    tvTabNav: { marginBottom: 12 },
    tvTabBtn: { paddingBottom: 8, minHeight: 40 },
    tvTabBtnText: { fontSize: 14, lineHeight: 21 },
    relCard: { width: 100, gap: 6 },
    relImgWrap: {
      width: 100,
      height: 140,
      borderRadius: 12,
      overflow: "hidden",
      position: "relative",
      backgroundColor: colors.surfaceElevated,
    },
    relImg: { width: "100%", height: "100%" },
    relTypeBadge: {
      position: "absolute",
      top: 5,
      right: 5,
      backgroundColor: "rgba(0,0,0,0.75)",
      borderRadius: 6,
      paddingHorizontal: 5,
      paddingVertical: 2,
    },
    relTypeBadgeText: { fontSize: 7, color: "#fff", fontFamily: "Cairo_700Bold" },
    relScoreBadge: {
      position: "absolute",
      bottom: 5,
      left: 5,
      flexDirection: "row",
      alignItems: "center",
      gap: 2,
      backgroundColor: "rgba(0,0,0,0.7)",
      borderRadius: 6,
      paddingHorizontal: 4,
      paddingVertical: 2,
    },
    relTitle: { fontSize: 10, color: colors.textPrimary, fontFamily: "Cairo_700Bold", textAlign: "center" },
    relSubtitle: {
      fontSize: 8.5,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      textAlign: "center",
      writingDirection: "ltr",
    },
    simGrid: { flexDirection: "row", flexWrap: "wrap", gap: 8 },
    simCard: { width: (W - 32 - 16) / 3, gap: 4 },
    simImgWrap: {
      width: "100%",
      aspectRatio: 0.7,
      borderRadius: 12,
      overflow: "hidden",
      position: "relative",
      backgroundColor: colors.surfaceElevated,
    },
    simImg: { width: "100%", height: "100%" },
    simScore: {
      position: "absolute",
      bottom: 5,
      left: 5,
      flexDirection: "row",
      alignItems: "center",
      gap: 2,
      backgroundColor: "rgba(0,0,0,0.7)",
      borderRadius: 6,
      paddingHorizontal: 4,
      paddingVertical: 2,
    },
    simTitle: { fontSize: 10, color: colors.textPrimary, fontFamily: "Cairo_700Bold", textAlign: "center" },
    simSubtitle: {
      fontSize: 8.5,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      textAlign: "center",
      writingDirection: "ltr",
    },
    ratingOverlay: { flex: 1, backgroundColor: colors.overlay, justifyContent: "flex-end" },
    ratingSheet: {
      backgroundColor: colors.surface,
      borderTopLeftRadius: 28,
      borderTopRightRadius: 28,
      padding: 24,
      gap: 16,
      borderTopWidth: 1,
      borderTopColor: colors.border,
    },
    ratingTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "center" },
    ratingSub: { fontSize: 12, color: colors.textMuted, fontFamily: "Cairo_400Regular", textAlign: "center" },
    ratingBtns: { flexDirection: "row", flexWrap: "wrap", gap: 8, justifyContent: "center" },
    ratingNum: {
      width: 44,
      height: 44,
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    ratingNumActive: { backgroundColor: colors.accentSurface, borderColor: colors.accent },
    ratingNumText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textSecondary },
    ratingNumTextActive: { color: colors.textPrimary },
  });
}
