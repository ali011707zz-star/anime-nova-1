import { Ionicons } from "@expo/vector-icons";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  BackHandler,
  Dimensions,
  I18nManager,
  Image,
  Modal,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { SafePosterImage } from "@/components/SafePosterImage";
import { YoutubeTrailerModal } from "@/components/YoutubeTrailerModal";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { fetchFilmDetail } from "@/utils/filmApi";
import {
  type FilmCastMember,
  type FilmDetail,
  type FilmSummary,
  getImageSource,
  loadFavoriteFilmIds,
  loadSavedCast,
  loadUserRating,
  loadWatchedMap,
  makeEpisodeKey,
  saveUserRating,
  toggleFavoriteFilm,
  toggleSavedCastMember,
} from "@/utils/filmCatalog";
import { TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

const { width: W } = Dimensions.get("window");
const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);

const _filmDetailMemoryCache = new Map<string, FilmDetail>();

function fmtRuntime(mins?: number | null): string | null {
  if (!mins || mins <= 0) return null;
  if (mins >= 60) {
    const h = Math.floor(mins / 60);
    const m = mins % 60;
    return m > 0 ? `${h} س و ${m} د` : `${h} ساعة`;
  }
  return `${mins} دقيقة`;
}

function SectionHeader({ title, tvMode = false }: { title: string; tvMode?: boolean }) {
  const colors = useColors();
  const d = useMemo(() => createDetailStyles(colors), [colors]);
  return (
    <View style={[d.secHeader, tvMode && d.tvSectionHeader]}>
      <View style={[d.secBar, tvMode && d.tvSectionBar]} />
      <Text style={[d.secTitle, tvMode && d.tvSectionTitle]}>{title}</Text>
    </View>
  );
}

function MetaCard({
  label,
  value,
  badge = false,
  wide = false,
}: {
  label: string;
  value: string;
  badge?: boolean;
  wide?: boolean;
}) {
  const colors = useColors();
  const d = useMemo(() => createDetailStyles(colors), [colors]);
  return (
    <View style={[d.metaCard, wide && d.metaCardWide]}>
      <Text style={d.metaLabel}>{label}</Text>
      {badge ? (
        <View style={d.metaBadge}>
          <Text style={d.metaBadgeText} numberOfLines={1}>
            {value}
          </Text>
        </View>
      ) : (
        <Text style={d.metaCardValue} numberOfLines={1}>
          {value}
        </Text>
      )}
    </View>
  );
}

export default function FilmDetailScreen() {
  const params = useLocalSearchParams<{
    id: string;
    type?: string;
    title?: string;
    poster?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const d = useMemo(() => createDetailStyles(colors), [colors]);
  const { isTv: tvMode, width } = useTvMetrics();

  const filmId = Number.parseInt(String(params.id || "0"), 10) || 0;
  const reqType = params.type === "tv" ? "tv" : "movie";
  const cacheKey = `${reqType}:${filmId}`;

  const [detail, setDetail] = useState<FilmDetail | null>(() => _filmDetailMemoryCache.get(cacheKey) || null);
  const [loading, setLoading] = useState<boolean>(!_filmDetailMemoryCache.has(cacheKey));
  const [loadError, setLoadError] = useState<boolean>(false);
  const [retryTick, setRetryTick] = useState<number>(0);

  const [showFull, setShowFull] = useState(false);
  const [tab, setTab] = useState<"chars" | "related" | "similar">("chars");
  const [showRating, setShowRating] = useState(false);
  const [showTrailer, setShowTrailer] = useState(false);

  const [favIds, setFavIds] = useState<number[]>([]);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [myRating, setMyRating] = useState<number>(0);
  const [savedCastIds, setSavedCastIds] = useState<Set<number>>(new Set());
  const [warnDismissed, setWarnDismissed] = useState(false);

  const lastDetailFocusRef = useRef("watch");
  const rememberDetailFocus = useCallback((key: string) => {
    lastDetailFocusRef.current = key;
  }, []);

  const topPad = Platform.OS === "web" ? 67 : insets.top;

  useFocusEffect(
    useCallback(() => {
      loadWatchedMap()
        .then((m) => setWatchedMap(m))
        .catch(() => {});
    }, []),
  );

  useEffect(() => {
    if (!showRating && !showTrailer) return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      if (showTrailer) {
        setShowTrailer(false);
        return true;
      }
      if (showRating) {
        setShowRating(false);
        return true;
      }
      return false;
    });
    return () => sub.remove();
  }, [showRating, showTrailer]);

  useEffect(() => {
    let active = true;
    if (!filmId) {
      setLoading(false);
      setLoadError(true);
      return;
    }

    const mem = _filmDetailMemoryCache.get(cacheKey);
    if (mem) {
      setDetail(mem);
      setLoading(false);
    } else {
      setLoading(true);
      AsyncStorage.getItem(`nova:film-detail:v2:${cacheKey}`)
        .then((raw) => {
          if (!raw || !active) return;
          try {
            const parsed = JSON.parse(raw) as FilmDetail;
            if (parsed?.id) {
              _filmDetailMemoryCache.set(cacheKey, parsed);
              setDetail((prev) => prev || parsed);
              setLoading(false);
            }
          } catch {}
        })
        .catch(() => {});
    }

    setLoadError(false);

    (async () => {
      try {
        const [fIds, savedCast, warnRaw] = await Promise.all([
          loadFavoriteFilmIds(),
          loadSavedCast(),
          AsyncStorage.getItem(`nova-film-adult-warn-${filmId}`),
        ]);
        if (!active) return;
        setFavIds(fIds);
        setSavedCastIds(new Set(savedCast.map((x) => x.id)));
        if (warnRaw === "1") setWarnDismissed(true);

        const data = await fetchFilmDetail(filmId, reqType);
        if (!active) return;
        setDetail(data);
        _filmDetailMemoryCache.set(cacheKey, data);
        AsyncStorage.setItem(`nova:film-detail:v2:${cacheKey}`, JSON.stringify(data)).catch(() => {});

        const r = await loadUserRating(data.tmdbType, data.id);
        if (active) setMyRating(r);
      } catch {
        if (active && !_filmDetailMemoryCache.has(cacheKey)) {
          setLoadError(true);
        }
      } finally {
        if (active) setLoading(false);
      }
    })();

    return () => {
      active = false;
    };
  }, [filmId, reqType, cacheKey, retryTick]);

// Trailer orientation is owned cleanly by YoutubeTrailerModal

  const isFav = detail ? favIds.includes(detail.id) : false;

  const handleFavorite = useCallback(async () => {
    if (!detail) return;
    const next = await toggleFavoriteFilm(detail);
    setFavIds(next.map((x) => x.id));
  }, [detail]);

  const submitRating = useCallback(
    async (n: number) => {
      if (!detail) return;
      setMyRating(n);
      setShowRating(false);
      await saveUserRating(detail.tmdbType, detail.id, n);
    },
    [detail],
  );

  const handleToggleCastSave = useCallback(
    async (member: FilmCastMember) => {
      if (!detail) return;
      const next = await toggleSavedCastMember({
        id: member.id,
        name: member.name,
        character: member.character || "ممثل",
        image: member.profileUrl || detail.posterUrl || "",
        filmId: detail.id,
        filmTitle: detail.titleAr || detail.titleEn,
        tmdbType: detail.tmdbType,
      });
      setSavedCastIds(new Set(next.map((x) => x.id)));
    },
    [detail],
  );

  const handlePrimaryWatch = useCallback(() => {
    if (!detail) return;
    if (detail.tmdbType === "tv") {
      router.push({
        pathname: "/film/episodes/[id]",
        params: {
          id: String(detail.id),
          type: "tv",
          title: detail.titleAr,
          english: detail.titleEn,
          poster: detail.posterUrl || "",
        },
      });
    } else {
      router.push({
        pathname: "/film/watch",
        params: {
          id: String(detail.id),
          type: "movie",
          season: "1",
          episode: "1",
          title: detail.titleAr,
          english: detail.titleEn,
          poster: detail.posterUrl || "",
        },
      });
    }
  }, [detail, router]);

  if (loading && !detail) {
    return (
      <View style={[d.container, { paddingTop: topPad }]}>
        <View style={[d.topBar, tvMode && d.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode}
            onFocus={() => rememberDetailFocus("back")}
            style={({ focused }) => [d.topBarBack, d.topBarBackRight, tvMode && d.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <Text style={[d.topBarTitle, tvMode && d.tvTopBarTitle]} numberOfLines={1}>
            {params.title || "تفاصيل العمل"}
          </Text>
          <View style={d.topBarSpacer} />
        </View>
        <View style={d.center}>
          <ActivityIndicator color={colors.accent} size="large" />
        </View>
      </View>
    );
  }

  if (!detail || loadError) {
    return (
      <View style={[d.container, { paddingTop: topPad }]}>
        <View style={[d.topBar, tvMode && d.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode}
            style={({ focused }) => [d.topBarBack, d.topBarBackRight, tvMode && d.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
          <Text style={[d.topBarTitle, tvMode && d.tvTopBarTitle]} numberOfLines={1}>
            {params.title || "تفاصيل العمل"}
          </Text>
          <View style={d.topBarSpacer} />
        </View>
        <View style={[d.center, { gap: 14, paddingHorizontal: 32 }]}>
          <Ionicons name="cloud-offline-outline" size={52} color={colors.textMuted} />
          <Text style={{ color: colors.textSecondary, fontFamily: "Cairo_700Bold", fontSize: 16, textAlign: "center" }}>
            تعذّر تحميل بيانات العمل
          </Text>
          <Text style={{ color: colors.textMuted, fontFamily: "Cairo_400Regular", fontSize: 13, textAlign: "center", lineHeight: 20 }}>
            تحقق من اتصالك بالإنترنت ثم أعد المحاولة
          </Text>
          <Pressable
            onPress={() => setRetryTick((t) => t + 1)}
            focusable={tvMode}
            style={({ focused }) => [
              {
                flexDirection: ROW_RTL,
                alignItems: "center",
                gap: 8,
                backgroundColor: colors.accent,
                paddingHorizontal: 22,
                paddingVertical: 11,
                borderRadius: 14,
                marginTop: 4,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons name="refresh" size={16} color={colors.primaryForeground} />
            <Text style={{ color: colors.primaryForeground, fontFamily: "Cairo_700Bold", fontSize: 14 }}>
              إعادة المحاولة
            </Text>
          </Pressable>
        </View>
      </View>
    );
  }

  const isSeries = detail.tmdbType === "tv";
  const isMovieWatched = !isSeries && Boolean(watchedMap[makeEpisodeKey(filmId, 1, 1, "movie")]);
  const watchedSeriesCount = useMemo(() => {
    if (!isSeries) return 0;
    const prefix = `tv:${filmId}:`;
    return Object.entries(watchedMap).filter(([k, v]) => v && k.startsWith(prefix)).length;
  }, [isSeries, filmId, watchedMap]);
  const totalEpisodesCount = isSeries
    ? detail.seasons.reduce((acc, s) => acc + (s.episodeCount || 0), 0) || detail.episodes.length
    : 1;
  const scoreStr = detail.imdbRating ? Number(detail.imdbRating).toFixed(1) : "7.8";
  const desc = detail.overviewAr || "لا يوجد ملخص متوفر حالياً.";
  const trailerYT = detail.trailerYoutubeKey || null;
  const charCardWidth = tvMode ? Math.floor((width - 88 - 60) / 6) : Math.floor((W - 32 - 36) / 4);
  const relatedList: FilmSummary[] =
    detail.relations && detail.relations.length > 0
      ? detail.relations
      : detail.recommendations.slice(0, 6);
  const similarList: FilmSummary[] = detail.recommendations || [];
  const isAdultRated = detail.ageRating === "R" || detail.ageRating === "TV-MA" || detail.ageRating === "+18";

  return (
    <View style={[d.container, { paddingTop: topPad }]}>
      {/* ── Top Bar ── */}
      <View style={[d.topBar, tvMode && d.tvTopBar]}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
          focusable={tvMode}
          onFocus={() => rememberDetailFocus("back")}
          style={({ focused }) => [d.topBarBack, d.topBarBackRight, tvMode && d.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <Text style={[d.topBarTitle, tvMode && d.tvTopBarTitle]} numberOfLines={1}>
          {detail.titleAr || detail.titleEn}
        </Text>
        <View style={[d.topBarStatus, tvMode && d.tvTopBarStatus]}>
          <View
            style={[
              d.topBarStatusDot,
              isSeries ? { backgroundColor: "#38BDF8" } : { backgroundColor: "#34D399" },
            ]}
          />
          <Text style={[d.topBarStatusText, tvMode && d.tvTopBarStatusText]}>
            {detail.statusLabel || (isSeries ? "مسلسل" : "فيلم كامل")}
          </Text>
        </View>
      </View>

      <ScrollView
        showsVerticalScrollIndicator={false}
        focusable={false}
        contentContainerStyle={[{ paddingBottom: 80 }, tvMode && d.tvContent]}
      >
        {/* ── Hero Banner ── */}
        <View style={[d.hero, tvMode && d.tvHero]}>
          <SafePosterImage
            uri={detail.backdropUrl || detail.posterUrl}
            style={[StyleSheet.absoluteFill, { opacity: 0.48 }]}
            resizeMode="cover"
          />
          <LinearGradient
            colors={["rgba(11,11,20,0.1)", "rgba(11,11,20,0.45)", colors.background]}
            style={StyleSheet.absoluteFill}
          />
          <Pressable
            onPress={handleFavorite}
            focusable={tvMode}
            onFocus={() => rememberDetailFocus("favoriteTop")}
            style={({ focused }) => [d.favBtn, tvMode && d.tvBackBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons
              name={isFav ? "heart" : "heart-outline"}
              size={18}
              color={isFav ? "#F43F5E" : "#fff"}
            />
          </Pressable>
        </View>

        {/* ── Cover + Main Info ── */}
        <View style={[d.infoRow, tvMode && d.tvInfoRow]}>
          <SafePosterImage
            uri={detail.posterUrl}
            style={[d.cover, tvMode && d.tvCover]}
            resizeMode="cover"
          />
          <View style={d.infoText}>
            <Text style={[d.titleMain, d.titleArabicMain, tvMode && d.tvTitleMain]} numberOfLines={2}>
              {detail.titleAr || detail.titleEn}
            </Text>
            {detail.titleEn && detail.titleEn.trim() !== (detail.titleAr || "").trim() ? (
              <Text style={[d.titleArabic, tvMode && d.tvTitleArabic]} numberOfLines={2}>
                {detail.titleEn}
              </Text>
            ) : null}

            {/* Format / Quality / Score badges */}
            <View style={d.badgeRow}>
              <View style={[d.badge, d.badgePrimary]}>
                <Text style={d.badgePrimaryText}>
                  {detail.mediaType === "animation"
                    ? "أنميشن"
                    : isSeries
                      ? "مسلسل"
                      : "فيلم سينمائي"}
                </Text>
              </View>
              <View style={[d.badge, d.badgeDefault]}>
                <Text style={d.badgeDefaultText}>{detail.qualityBadge || "1080p FHD"}</Text>
              </View>
              <View style={[d.badge, d.badgeDefault]}>
                <Text style={d.badgeDefaultText}>{detail.audioLabel || "مترجم"}</Text>
              </View>
              {detail.imdbRating ? (
                <View style={[d.badge, d.badgeScore]}>
                  <Ionicons name="star" size={10} color="#FBBF24" />
                  <Text style={d.badgeScoreText}>{scoreStr}</Text>
                </View>
              ) : null}
              {(isMovieWatched || watchedSeriesCount > 0) ? (
                <View
                  style={[
                    d.badge,
                    {
                      backgroundColor: "rgba(16,185,129,0.16)",
                      borderColor: "rgba(16,185,129,0.45)",
                      flexDirection: "row",
                      alignItems: "center",
                      gap: 4,
                    },
                  ]}
                >
                  <Ionicons name="eye-outline" size={11} color="#10B981" />
                  <Text style={{ color: "#10B981", fontSize: 10, fontFamily: "Cairo_700Bold" }}>
                    {isSeries ? `تمت مشاهدة ${watchedSeriesCount}` : "تمت المشاهدة"}
                  </Text>
                </View>
              ) : null}
            </View>

            {/* Year + Duration/Seasons + Age Rating */}
            <View style={d.statsRow}>
              {detail.year ? (
                <View style={d.statItem}>
                  <Ionicons name="calendar-outline" size={12} color={colors.textMuted} />
                  <Text style={d.statText}>{detail.year}</Text>
                </View>
              ) : null}
              {detail.durationOrSeasons ? (
                <View style={d.statItem}>
                  <Ionicons name="time-outline" size={12} color={colors.textMuted} />
                  <Text style={d.statText}>{detail.durationOrSeasons}</Text>
                </View>
              ) : null}
              {detail.ageRating ? (
                <View style={d.statItem}>
                  <Ionicons name="shield-checkmark-outline" size={12} color={colors.textMuted} />
                  <Text style={d.statText}>{detail.ageRating}</Text>
                </View>
              ) : null}
            </View>
          </View>
        </View>

        {/* ── Primary Watch CTA Button (matching Anime NOVA #0EA5E9 CTA) ── */}
        <View style={{ paddingHorizontal: 16, marginTop: 18 }}>
          <Pressable
            onPress={handlePrimaryWatch}
            focusable={tvMode}
            hasTVPreferredFocus={tvMode && lastDetailFocusRef.current === "watch"}
            onFocus={() => rememberDetailFocus("watch")}
            testID={tvMode ? "nova-tv-preferred-focus" : undefined}
            style={({ focused }) => [d.watchBtn, tvMode && d.tvWatchBtn, tvMode && tvFocusStyle(focused)]}
          >
            <View style={d.watchBtnRight}>
              <View style={[d.watchBtnIcon, tvMode && d.tvWatchBtnIcon]}>
                <Ionicons name="play" size={18} color="#fff" style={{ marginLeft: 2 }} />
              </View>
              <View style={d.watchBtnTextWrap}>
                <Text style={[d.watchBtnText, tvMode && d.tvButtonText]}>مشاهدة الآن</Text>
                <Text style={d.watchBtnSub}>
                  {isSeries
                    ? "تصفح المواسم والحلقات وابدأ المشاهدة فوراً"
                    : "اختر السيرفر والجودة وابدأ المشاهدة فوراً"}
                </Text>
              </View>
            </View>
            <View style={d.watchBtnEpPill}>
              <Text style={d.watchBtnEpText}>
                {isSeries ? `${totalEpisodesCount} حلقة` : "فيلم كامل"}
              </Text>
              <Ionicons name="chevron-back" size={13} color="#fff" />
            </View>
          </Pressable>
        </View>

        {/* ── Content Rating Warning (matching Anime NOVA warnBox) ── */}
        {isAdultRated && !warnDismissed && (
          <View style={d.warnBox}>
            <View style={d.warnHeader}>
              <Ionicons name="warning" size={16} color="#F59E0B" />
              <Text style={d.warnTitle}>تنبيه التصنيف العمري ({detail.ageRating})</Text>
            </View>
            <Text style={d.warnText}>
              قد يحتوي هذا العمل على مشاهد أكشن أو دراما مخصصة للمشاهدين البالغين حسب التصنيف العالمي.
            </Text>
            <Pressable
              onPress={() => {
                setWarnDismissed(true);
                AsyncStorage.setItem(`nova-film-adult-warn-${filmId}`, "1").catch(() => {});
              }}
              focusable={tvMode}
              style={({ focused }) => [d.warnBtn, tvMode && tvFocusStyle(focused)]}
            >
              <Text style={d.warnBtnText}>فهمتُ، لا تُظهر مجدداً</Text>
            </Pressable>
          </View>
        )}

        {/* ── 3-col Action Grid (التعليقات / المفضلة / تقييمي) ── */}
        <View style={[d.actionGrid, tvMode && d.tvActionGrid]}>
          {[
            {
              icon: "chatbubble-outline",
              activeIcon: "chatbubble",
              label: "التعليقات",
              active: false,
              activeColor: "#38BDF8",
              onPress: () =>
                router.push(
                  `/comments?animeId=${detail.id}&title=${encodeURIComponent(detail.titleAr || detail.titleEn)}` as any,
                ),
            },
            {
              icon: "heart-outline",
              activeIcon: "heart",
              label: "المفضلة",
              active: isFav,
              activeColor: "#EF4444",
              onPress: handleFavorite,
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
              <Text
                style={[
                  d.actionBtnLabel,
                  tvMode && d.tvActionBtnLabel,
                  active && { color: activeColor },
                ]}
              >
                {label === "تقييمي" && myRating > 0 ? `تقييمي (${myRating}/10)` : label}
              </Text>
            </Pressable>
          ))}
        </View>

        {/* ── Global Stats Box (matching Anime NOVA malBox) ── */}
        <Pressable
          focusable={tvMode}
          onFocus={() => rememberDetailFocus("malStats")}
          style={({ focused }) => [d.malBox, { marginHorizontal: 16 }, tvMode && tvFocusStyle(focused)]}
        >
          <View style={d.malHeader}>
            <Text style={d.malTitle}>الإحصائيات والتقييم العالمي</Text>
            <Text style={d.malId}>{detail.imdbId ? `IMDb ${detail.imdbId}` : "IMDb · TMDB"}</Text>
          </View>
          <View style={d.malStats}>
            <View style={d.malStat}>
              <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 5 }}>
                <Text style={d.malStatVal}>{scoreStr}</Text>
                <Ionicons name="star" size={14} color="#38BDF8" />
              </View>
              <Text style={d.malStatSub}>التقييم العالمي</Text>
            </View>
            <View style={[d.malStat, d.malStatDivider]}>
              <Text style={d.malStatVal}>{detail.year || "2025"}</Text>
              <Text style={d.malStatSub}>سنة الإصدار</Text>
            </View>
            <View style={[d.malStat, d.malStatDivider]}>
              <Text style={d.malStatVal}>
                {isSeries ? `${Math.max(1, detail.seasons.length)} مواسم` : detail.qualityBadge || "1080p"}
              </Text>
              <Text style={d.malStatSub}>{isSeries ? `${totalEpisodesCount} حلقة متاحة` : "نسخة مترجمة كاملة"}</Text>
            </View>
          </View>
        </Pressable>

        {/* ── Synopsis ── */}
        {desc ? (
          <View style={[d.section, tvMode && d.tvSection]}>
            <SectionHeader title={isSeries ? "قصة المسلسل" : "قصة الفيلم"} tvMode={tvMode} />
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
        {(detail.genres?.length || 0) > 0 && (
          <ScrollView
            horizontal
            focusable={false}
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={{ paddingHorizontal: 16, gap: 8 }}
            style={{ marginTop: 14 }}
          >
            {detail.genres.slice(0, 10).map((g: string) => (
              <Pressable
                key={g}
                onPress={() =>
                  router.push({
                    pathname: "/(tabs)/browse",
                    params: { genre: g },
                  })
                }
                focusable={tvMode}
                style={({ focused }) => [d.genreChip, tvMode && d.tvGenreChip, tvMode && tvFocusStyle(focused)]}
              >
                <Text style={[d.genreChipText, tvMode && d.tvGenreChipText]}>{g}</Text>
              </Pressable>
            ))}
          </ScrollView>
        )}

        {/* ── Production Metadata ── */}
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
            {detail.productionCompany ? (
              <MetaCard label="شركة الإنتاج" value={detail.productionCompany} badge />
            ) : null}
            {detail.director ? (
              <MetaCard label={isSeries ? "الإخراج / التأليف" : "المخرج"} value={detail.director} />
            ) : null}
            {detail.runtimeMin ? (
              <MetaCard
                label={isSeries ? "مدة الحلقة" : "مدة الفيلم"}
                value={fmtRuntime(detail.runtimeMin) || detail.durationOrSeasons}
              />
            ) : null}
            {detail.categoryLabel ? (
              <MetaCard label="القسم السينمائي" value={detail.categoryLabel} />
            ) : null}
            {detail.titleEn ? <MetaCard label="الاسم الإنجليزي" value={detail.titleEn} wide /> : null}
            <MetaCard
              label="حالة العرض والجودة"
              value={`${detail.statusLabel || "متوفر"} · ${detail.qualityBadge || "1080p FHD"} · ${detail.audioLabel || "مترجم"}`}
              wide
            />
          </Pressable>
        </View>

        {/* ── Trailer ── */}
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
                source={{ uri: `https://img.youtube.com/vi/${trailerYT}/hqdefault.jpg` }}
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

        {/* ── Tabs (طاقم العمل / ذات صلة / مشابهة) ── */}
        <View style={[d.section, tvMode && d.tvSection]}>
          <View style={[d.tabNav, tvMode && d.tvTabNav]}>
            {(
              [
                { key: "chars", label: "طاقم العمل" },
                { key: "related", label: "ذات صلة" },
                { key: "similar", label: "مشابهة" },
              ] as const
            ).map(({ key, label }) => (
              <Pressable
                key={key}
                onPress={() => setTab(key)}
                focusable={tvMode}
                onFocus={() => rememberDetailFocus(`tab-${key}`)}
                style={({ focused }) => [
                  d.tabBtn,
                  tvMode && d.tvTabBtn,
                  tab === key && d.tabBtnActive,
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text
                  style={[
                    d.tabBtnText,
                    tvMode && d.tvTabBtnText,
                    tab === key && d.tabBtnTextActive,
                  ]}
                >
                  {label}
                </Text>
              </Pressable>
            ))}
          </View>

          {/* Cast / Actors */}
          {tab === "chars" &&
            (detail.cast.length === 0 ? (
              <Text style={d.emptyTabText}>لا تتوفر بيانات طاقم التمثيل حالياً</Text>
            ) : (
              <View>
                <Text style={d.tabSubTitle}>أبرز نجوم وممثلي العمل</Text>
                <View style={[d.charGrid, tvMode && d.tvCharGrid]}>
                  {detail.cast.map((member, idx) => {
                    const isSaved = savedCastIds.has(member.id);
                    const imgUri = member.profileUrl || detail.posterUrl;
                    return (
                      <View key={`${member.id}-${idx}`} style={[d.charCard, { width: charCardWidth }]}>
                        <View
                          style={[
                            d.charImgWrap,
                            { width: charCardWidth, height: Math.round(charCardWidth / 0.72) },
                            idx < 4 && d.charImgMain,
                          ]}
                        >
                          {imgUri ? (
                            <Image source={getImageSource(imgUri)} style={d.charImg} resizeMode="cover" />
                          ) : (
                            <View style={[d.charImg, { alignItems: "center", justifyContent: "center" }]}>
                              <Ionicons name="person" size={26} color={colors.textMuted} />
                            </View>
                          )}
                          <Pressable
                            onPress={() => handleToggleCastSave(member)}
                            focusable={tvMode}
                            hitSlop={{ top: 8, bottom: 8, left: 8, right: 8 }}
                            style={({ focused }) => [
                              d.charHeartBtn,
                              isSaved && d.charHeartBtnActive,
                              tvMode && tvFocusStyle(focused),
                            ]}
                          >
                            <Ionicons name={isSaved ? "heart" : "heart-outline"} size={13} color="#fff" />
                          </Pressable>
                        </View>
                        <Text style={d.charName} numberOfLines={2}>
                          {member.name}
                        </Text>
                      </View>
                    );
                  })}
                </View>
              </View>
            ))}

          {/* Related Works */}
          {tab === "related" &&
            (relatedList.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد أعمال ذات صلة</Text>
            ) : (
              <ScrollView
                horizontal
                focusable={false}
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={{ gap: 10 }}
              >
                {relatedList.map((rel) => (
                  <Pressable
                    key={`rel-${rel.tmdbType}-${rel.id}`}
                    onPress={() =>
                      router.push({
                        pathname: "/film/[id]",
                        params: { id: String(rel.id), type: rel.tmdbType, title: rel.titleAr },
                      })
                    }
                    focusable={tvMode}
                    style={({ focused }) => [
                      d.relCard,
                      tvMode && { borderRadius: 12, padding: 2 },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={d.relImgWrap}>
                      <SafePosterImage uri={rel.posterUrl} style={d.relImg} />
                      <View style={d.relTypeBadge}>
                        <Text style={d.relTypeBadgeText}>
                          {rel.tmdbType === "tv" ? "مسلسل" : "فيلم"}
                        </Text>
                      </View>
                      {rel.imdbRating ? (
                        <View style={d.relScoreBadge}>
                          <Ionicons name="star" size={7} color="#FBBF24" />
                          <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                            {" "}
                            {Number(rel.imdbRating).toFixed(1)}
                          </Text>
                        </View>
                      ) : null}
                    </View>
                    <Text style={d.relTitle} numberOfLines={2}>
                      {rel.titleAr || rel.titleEn}
                    </Text>
                    {rel.titleEn && rel.titleEn.trim() !== (rel.titleAr || "").trim() ? (
                      <Text style={d.relSubtitle} numberOfLines={1}>
                        {rel.titleEn}
                      </Text>
                    ) : null}
                  </Pressable>
                ))}
              </ScrollView>
            ))}

          {/* Similar / Recommendations */}
          {tab === "similar" &&
            (similarList.length === 0 ? (
              <Text style={d.emptyTabText}>لا توجد توصيات مشابهة</Text>
            ) : (
              <View style={d.simGrid}>
                {similarList.slice(0, 12).map((rec) => (
                  <Pressable
                    key={`sim-${rec.tmdbType}-${rec.id}`}
                    onPress={() =>
                      router.push({
                        pathname: "/film/[id]",
                        params: { id: String(rec.id), type: rec.tmdbType, title: rec.titleAr },
                      })
                    }
                    focusable={tvMode}
                    style={({ focused }) => [
                      d.simCard,
                      tvMode && { width: Math.floor((width - 88 - 48) / 5), borderRadius: 12, padding: 2 },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <View style={d.simImgWrap}>
                      <SafePosterImage uri={rec.posterUrl} style={d.simImg} />
                      {rec.imdbRating ? (
                        <View style={d.simScore}>
                          <Ionicons name="star" size={7} color="#FBBF24" />
                          <Text style={{ fontSize: 7, color: "#fff", fontWeight: "800" }}>
                            {" "}
                            {Number(rec.imdbRating).toFixed(1)}
                          </Text>
                        </View>
                      ) : null}
                    </View>
                    <Text style={d.simTitle} numberOfLines={2}>
                      {rec.titleAr || rec.titleEn}
                    </Text>
                    {rec.titleEn && rec.titleEn.trim() !== (rec.titleAr || "").trim() ? (
                      <Text style={d.simSubtitle} numberOfLines={1}>
                        {rec.titleEn}
                      </Text>
                    ) : null}
                  </Pressable>
                ))}
              </View>
            ))}
        </View>
      </ScrollView>

      {/* ── Trailer Modal ── */}
      <YoutubeTrailerModal
        visible={showTrailer}
        videoId={trailerYT}
        title={detail.titleAr || detail.titleEn}
        onClose={() => setShowTrailer(false)}
        tvMode={tvMode}
      />

      {/* ── Rating Bottom Sheet ── */}
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
                    onPress={() => submitRating(n)}
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
            {myRating > 0 && (
              <Pressable
                onPress={() => submitRating(0)}
                focusable={tvMode}
                style={({ focused }) => [
                  { marginTop: 10, paddingVertical: 6, paddingHorizontal: 14, borderRadius: 10 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={{ color: colors.destructive, fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "center" }}>
                  حذف التقييم
                </Text>
              </Pressable>
            )}
            <Pressable
              onPress={() => setShowRating(false)}
              focusable={tvMode}
              style={({ focused }) => [
                {
                  marginTop: 8,
                  paddingVertical: 8,
                  paddingHorizontal: 18,
                  borderRadius: 10,
                  backgroundColor: colors.surfaceElevated,
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={{ color: colors.textSecondary, fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "center" }}>
                إغلاق
              </Text>
            </Pressable>
          </View>
        </View>
      ) : (
        <Modal visible={showRating} animationType="slide" transparent onRequestClose={() => setShowRating(false)}>
          <View style={d.ratingOverlay}>
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
                {Array.from({ length: 10 }, (_, i) => i + 1).map((n) => (
                  <Pressable
                    key={n}
                    onPress={() => submitRating(n)}
                    style={[d.ratingNum, n <= myRating && d.ratingNumActive]}
                  >
                    <Text style={[d.ratingNumText, n <= myRating && d.ratingNumTextActive]}>{n}</Text>
                  </Pressable>
                ))}
              </View>
              {myRating > 0 && (
                <Pressable onPress={() => submitRating(0)} style={{ marginTop: 10 }}>
                  <Text style={{ color: colors.destructive, fontSize: 11, fontFamily: "Cairo_700Bold", textAlign: "center" }}>
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
    topBarStatusDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#E2E8F0" },
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
    topBarBackRight: {},
    topBarSpacer: { width: 50 },
    hero: { height: 240, justifyContent: "flex-end", overflow: "hidden" },
    favBtn: {
      position: "absolute",
      right: 14,
      top: 14,
      width: 36,
      height: 36,
      backgroundColor: "rgba(0,0,0,0.5)",
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.1)",
    },
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
    badgePrimary: { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder },
    badgePrimaryText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.accent },
    badgeDefault: { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
    badgeDefaultText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    badgeScore: { backgroundColor: "rgba(14,165,233,0.15)", borderColor: "rgba(56,189,248,0.35)" },
    badgeScoreText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    statsRow: { flexDirection: ROW_RTL, gap: 10 },
    statItem: { flexDirection: ROW_RTL, alignItems: "center", gap: 4 },
    statText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
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
    watchBtnText: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff", lineHeight: 22, textAlign: "right" },
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
      paddingVertical: 6,
      borderRadius: 12,
    },
    watchBtnEpText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    warnBox: {
      marginHorizontal: 16,
      marginTop: 12,
      padding: 12,
      borderRadius: 14,
      backgroundColor: "rgba(245,158,11,0.12)",
      borderWidth: 1,
      borderColor: "rgba(245,158,11,0.35)",
      gap: 6,
    },
    warnHeader: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    warnTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#F59E0B", textAlign: "right" },
    warnText: { fontSize: 11, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "right", lineHeight: 18 },
    warnBtn: {
      alignSelf: "flex-start",
      backgroundColor: "rgba(245,158,11,0.2)",
      paddingHorizontal: 12,
      paddingVertical: 5,
      borderRadius: 8,
      marginTop: 2,
    },
    warnBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#F59E0B" },
    actionGrid: { flexDirection: ROW_RTL, paddingHorizontal: 16, gap: 8, marginTop: 12 },
    actionBtn: {
      flex: 1,
      minHeight: 46,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 6,
      paddingVertical: 8,
    },
    actionBtnLabel: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    malBox: {
      marginTop: 14,
      padding: 14,
      borderRadius: 16,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      gap: 12,
    },
    malHeader: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between" },
    malTitle: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    malId: {
      fontSize: 10,
      fontFamily: "Cairo_700Bold",
      color: colors.accent,
      backgroundColor: colors.accentSurface,
      paddingHorizontal: 8,
      paddingVertical: 2,
      borderRadius: 6,
    },
    malStats: { flexDirection: ROW_RTL, alignItems: "center" },
    malStat: { flex: 1, alignItems: "center", gap: 2 },
    malStatDivider: { borderRightWidth: 1, borderRightColor: colors.border },
    malStatVal: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    malStatSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: colors.textMuted },
    section: { marginTop: 18, paddingHorizontal: 16 },
    secHeader: { flexDirection: ROW_RTL, alignItems: "center", gap: 8, marginBottom: 10 },
    secBar: { width: 3.5, height: 16, borderRadius: 2, backgroundColor: colors.accent },
    secTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right" },
    descBox: {
      padding: 14,
      borderRadius: 16,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      gap: 10,
    },
    descText: {
      fontSize: 13,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      lineHeight: 22,
      textAlign: "right",
      writingDirection: "rtl",
    },
    readMoreBtn: {
      alignSelf: "center",
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 5,
      paddingHorizontal: 14,
      paddingVertical: 5,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
    },
    readMoreText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    genreChip: {
      paddingHorizontal: 14,
      paddingVertical: 6,
      borderRadius: 12,
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
    trailerBtn: { height: 180, borderRadius: 16, overflow: "hidden", position: "relative", backgroundColor: "#111" },
    trailerImg: { width: "100%", height: "100%", resizeMode: "cover" },
    trailerPlayBtn: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, alignItems: "center", justifyContent: "center" },
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
    trailerSub: { fontSize: 10, color: "rgba(255,255,255,0.55)", fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
    trailerSheetHeader: {
      flexDirection: "row",
      alignItems: "center",
      gap: 10,
      paddingHorizontal: 14,
      paddingVertical: 10,
      backgroundColor: colors.surface,
    },
    trailerModalTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    trailerCloseBtn: {
      width: 36,
      height: 36,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderRadius: 12,
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
    tabSubTitle: { fontSize: 10, color: colors.textSecondary, fontFamily: "Cairo_700Bold", marginBottom: 10, textAlign: "right" },
    charGrid: { flexDirection: "row", flexWrap: "wrap", justifyContent: "flex-end", columnGap: 12, rowGap: 12 },
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
    charName: { fontSize: 10, color: colors.textSecondary, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 15 },
    emptyTabText: { textAlign: "center", color: colors.textMuted, fontSize: 12, fontFamily: "Cairo_400Regular", paddingVertical: 20 },
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
    tvBackBtn: { width: 40, height: 40, borderRadius: 12 },
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
    relSubtitle: { fontSize: 8.5, color: colors.textMuted, fontFamily: "Cairo_400Regular", textAlign: "center", writingDirection: "ltr" },
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
    simSubtitle: { fontSize: 8.5, color: colors.textMuted, fontFamily: "Cairo_400Regular", textAlign: "center", writingDirection: "ltr" },
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
