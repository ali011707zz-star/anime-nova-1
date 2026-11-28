import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { SafePosterImage } from "@/components/SafePosterImage";
import { useColors } from "@/hooks/useColors";
import { prewarmEgyWatchOnPhone } from "@/utils/egyWatchClient";
import { fetchFilmDetail, fetchFilmSeason } from "@/utils/filmApi";
import {
  type FilmDetail,
  type FilmEpisode,
  loadWatchedMap,
  makeEpisodeKey,
  toggleEpisodeWatched,
} from "@/utils/filmCatalog";
import { TvFocusGuideView, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);

const EpisodeRow = React.memo(function EpisodeRow({
  ep,
  fallbackThumb,
  watched,
  onToggleWatched,
  onWatch,
  onComment,
  onFocus,
  hasTVPreferredFocus = false,
}: {
  ep: FilmEpisode;
  fallbackThumb?: string | null;
  watched: boolean;
  onToggleWatched: (epNum: number) => void;
  onWatch: (epNum: number) => void;
  onComment: (epNum: number) => void;
  onFocus?: () => void;
  hasTVPreferredFocus?: boolean;
}) {
  const colors = useColors();
  const { isTv: tvMode, width } = useTvMetrics();
  const ep_s = useMemo(() => createEpStyles(colors), [colors]);

  const n = ep.episodeNumber;
  const thumb = ep.stillUrl || fallbackThumb || null;
  const arabicTitle = ep.titleAr || `الحلقة ${n}`;
  const englishTitle = ep.titleEn && ep.titleEn !== arabicTitle ? ep.titleEn : "";

  return (
    <View
      style={[
        ep_s.row,
        tvMode && width >= 700 && ep_s.tvRow,
        {
          backgroundColor: watched ? "rgba(16,185,129,0.06)" : colors.card,
          borderColor: watched ? "rgba(16,185,129,0.28)" : colors.border,
        },
      ]}
    >
      <Pressable
        onPress={() => onWatch(n)}
        onFocus={onFocus}
        focusable={tvMode}
        hasTVPreferredFocus={hasTVPreferredFocus}
        testID={hasTVPreferredFocus ? "nova-tv-preferred-focus" : `film-ep-${n}`}
        style={({ focused, pressed }) => [
          ep_s.episodeMain,
          tvMode && ep_s.tvEpisodeMain,
          tvMode && tvFocusStyle(focused),
          pressed && { opacity: 0.84 },
        ]}
      >
        <View style={[ep_s.thumbWrap, tvMode && ep_s.tvThumbWrap]}>
          {thumb ? (
            <Image source={{ uri: thumb }} style={ep_s.thumb} resizeMode="cover" />
          ) : (
            <View style={[ep_s.thumb, ep_s.thumbFallback]} />
          )}
          <View style={ep_s.thumbOverlay}>
            <View
              style={[
                ep_s.thumbPlayCircle,
                watched ? ep_s.thumbPlayCircleWatched : ep_s.thumbPlayCircleDefault,
              ]}
            >
              <Ionicons
                name={watched ? "checkmark" : "play"}
                size={watched ? 15 : 13}
                color="#fff"
                style={watched ? undefined : { marginLeft: 2 }}
              />
            </View>
          </View>
          <View style={ep_s.epNumBadgeOverlay}>
            <Text style={ep_s.epNumBadgeText}>{n}</Text>
          </View>
        </View>

        <View style={[ep_s.info, tvMode && ep_s.tvInfo]}>
          <View style={ep_s.epNumRow}>
            <Text style={[ep_s.epNum, tvMode && ep_s.tvEpNum, { color: colors.textPrimary }]}>
              الحلقة {n}
            </Text>
            {watched ? (
              <View style={ep_s.watchedBadge}>
                <Text style={ep_s.watchedBadgeText}>تمت المشاهدة</Text>
              </View>
            ) : null}
          </View>
          <Text style={[ep_s.epTitleAr, tvMode && ep_s.tvEpTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {arabicTitle}
          </Text>
          {englishTitle ? (
            <Text style={[ep_s.epTitleOriginal, tvMode && ep_s.tvEpOriginal]} numberOfLines={1}>
              {englishTitle}
            </Text>
          ) : null}
        </View>
      </Pressable>

      <View style={[ep_s.episodeActions, tvMode && ep_s.tvEpisodeActions]}>
        <Pressable
          onPress={() => onComment(n)}
          focusable={tvMode}
          style={({ focused, pressed }) => [
            ep_s.commentBtn,
            tvMode && ep_s.tvSmallButton,
            tvMode && tvFocusStyle(focused),
            pressed && { opacity: 0.8 },
          ]}
        >
          <Ionicons name="chatbubble-outline" size={16} color={colors.textSecondary} />
        </Pressable>

        <Pressable
          onPress={() => onToggleWatched(n)}
          focusable={tvMode}
          style={({ focused, pressed }) => [
            ep_s.eyeBtn,
            watched && ep_s.eyeBtnWatched,
            tvMode && ep_s.tvSmallButton,
            tvMode && tvFocusStyle(focused),
            pressed && { opacity: 0.8 },
          ]}
        >
          <Ionicons
            name={watched ? "eye-outline" : "eye-off-outline"}
            size={17}
            color={watched ? "#10B981" : colors.textSecondary}
          />
        </Pressable>
      </View>
    </View>
  );
});

export default function FilmEpisodesScreen() {
  const params = useLocalSearchParams<{
    id: string;
    type?: string;
    season?: string;
    title?: string;
    english?: string;
    poster?: string;
    ewId?: string;
    ewType?: string;
    audioLabel?: string;
    origLang?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const { isTv: tvMode, width } = useTvMetrics();
  const ep_s = useMemo(() => createEpStyles(colors), [colors]);

  const filmId = Number.parseInt(String(params.id || "0"), 10) || 0;
  const reqType: "movie" | "tv" = params.type === "movie" ? "movie" : "tv";
  const initialSeason = Math.max(1, Number.parseInt(String(params.season || "1"), 10) || 1);

  const [detail, setDetail] = useState<FilmDetail | null>(null);
  const [selectedSeason, setSelectedSeason] = useState<number>(initialSeason);
  const [episodes, setEpisodes] = useState<FilmEpisode[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [seasonLoading, setSeasonLoading] = useState<boolean>(false);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [search, setSearch] = useState<string>("");
  const [sortOrder, setSortOrder] = useState<"asc" | "desc">("asc");
  const [rangeStart, setRangeStart] = useState<number | null>(null);
  const [preferredKey, setPreferredKey] = useState<string>("continue");

  const episodeListRef = useRef<FlatList<FilmEpisode>>(null);
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  useFocusEffect(
    useCallback(() => {
      loadWatchedMap()
        .then((m) => setWatchedMap(m))
        .catch(() => {});
    }, []),
  );

  useEffect(() => {
    let active = true;
    if (!filmId) {
      setLoading(false);
      return;
    }
    setLoading(true);
    (async () => {
      try {
        const [data, wMap] = await Promise.all([fetchFilmDetail(filmId, reqType), loadWatchedMap()]);
        if (!active) return;
        setDetail(data);
        setWatchedMap(wMap);

        const defaultS = data.seasons[0]?.seasonNumber || 1;
        const targetS = data.seasons.some((s) => s.seasonNumber === initialSeason)
          ? initialSeason
          : defaultS;
        setSelectedSeason(targetS);

        if (targetS === defaultS && data.episodes.length > 0) {
          setEpisodes(data.episodes);
        } else if (data.tmdbType === "tv") {
          const sData = await fetchFilmSeason(filmId, targetS);
          if (active) setEpisodes(sData.episodes || []);
        } else {
          setEpisodes(data.episodes || []);
        }
      } catch {
      } finally {
        if (active) setLoading(false);
      }
    })();
    return () => {
      active = false;
    };
  }, [filmId, reqType, initialSeason]);

  const handleSelectSeason = useCallback(
    async (seasonNumber: number) => {
      if (seasonNumber === selectedSeason) return;
      setSelectedSeason(seasonNumber);
      setSearch("");
      setRangeStart(null);
      episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
      setSeasonLoading(true);
      try {
        const sData = await fetchFilmSeason(filmId, seasonNumber);
        setEpisodes(sData.episodes || []);
      } catch {
      } finally {
        setSeasonLoading(false);
      }
    },
    [filmId, selectedSeason],
  );

  const total = episodes.length;

  const watchedSet = useMemo(() => {
    const s = new Set<number>();
    for (const ep of episodes) {
      const k = makeEpisodeKey(filmId, selectedSeason, ep.episodeNumber, reqType);
      if (watchedMap[k]) s.add(ep.episodeNumber);
    }
    return s;
  }, [episodes, filmId, selectedSeason, reqType, watchedMap]);

  const watchedCount = watchedSet.size;
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const continueEpisode = useMemo(() => {
    for (const ep of episodes) {
      if (!watchedSet.has(ep.episodeNumber)) return ep.episodeNumber;
    }
    return episodes[0]?.episodeNumber || 1;
  }, [episodes, watchedSet]);

  const rangeOptions = useMemo(() => {
    const opts: Array<{ start: number | null; end: number | null; label: string }> = [
      { start: null, end: null, label: `الكل (${total})` },
    ];
    for (let s = 1; s <= total; s += 12) {
      const e = Math.min(total, s + 11);
      opts.push({ start: s, end: e, label: `${s} - ${e}` });
    }
    return opts;
  }, [total]);

  const displayedEps = useMemo(() => {
    const ordered = sortOrder === "asc" ? episodes : [...episodes].reverse();
    const inRange =
      rangeStart === null
        ? ordered
        : ordered.filter(
            (ep) => ep.episodeNumber >= rangeStart && ep.episodeNumber <= rangeStart + 11,
          );
    const q = search.trim().toLowerCase();
    if (!q) return inRange;
    return inRange.filter(
      (ep) =>
        String(ep.episodeNumber).includes(q) ||
        (ep.titleAr || "").toLowerCase().includes(q) ||
        (ep.titleEn || "").toLowerCase().includes(q),
    );
  }, [episodes, sortOrder, rangeStart, search]);

  const handleToggleWatched = useCallback(
    async (epNum: number) => {
      const next = await toggleEpisodeWatched(filmId, selectedSeason, epNum, reqType);
      setWatchedMap(next);
    },
    [filmId, selectedSeason, reqType],
  );

  useEffect(() => {
    const ewIdNum = Number(detail?.egyWatchId || params.ewId || 0) || 0;
    const ewTypeVal = (detail?.egyWatchType || params.ewType || null) as "movie" | "serie" | "anime" | null;
    if (!ewIdNum && !detail?.titleAr && !params.title) return;
    void prewarmEgyWatchOnPhone({
      tmdbId: detail?.realTmdbId || null,
      tmdbType: "tv",
      titleAr: detail?.titleAr || params.title || "",
      titleEn: detail?.titleEn || params.english || "",
      year: detail?.year,
      season: selectedSeason,
      preferDubbed: (detail?.audioLabel || params.audioLabel) === "مدبلج عربي" || ewTypeVal === "anime",
      egyWatchId: ewIdNum || null,
      egyWatchType: ewTypeVal,
    });
  }, [detail?.egyWatchId, detail?.egyWatchType, detail?.titleAr, detail?.titleEn, detail?.realTmdbId, detail?.audioLabel, params.ewId, params.ewType, params.title, params.english, params.audioLabel, selectedSeason]);

    const watchEp = useCallback(
    (epNum: number) => {
      void toggleEpisodeWatched(filmId, selectedSeason, epNum, reqType, true)
        .then(setWatchedMap)
        .catch(() => {});
      router.push({
        pathname: "/film/watch",
        params: {
          id: String(filmId),
          type: reqType,
          season: String(selectedSeason),
          episode: String(epNum),
          title: detail?.titleAr || params.title || "",
          english: detail?.titleEn || params.english || "",
          poster: detail?.posterUrl || params.poster || "",
          ...((detail?.egyWatchId || params.ewId) ? { ewId: String(detail?.egyWatchId || params.ewId) } : {}),
          ...((detail?.egyWatchType || params.ewType) ? { ewType: String(detail?.egyWatchType || params.ewType) } : {}),
          ...((detail?.audioLabel || params.audioLabel) ? { audioLabel: String(detail?.audioLabel || params.audioLabel) } : {}),
          ...((detail?.originalLanguage || params.origLang) ? { origLang: String(detail?.originalLanguage || params.origLang) } : {}),
        },
      });
    },
    [router, filmId, reqType, selectedSeason, detail, params.title, params.english, params.poster],
  );

  const openComments = useCallback(
    (epNum: number) => {
      router.push(
        `/comments?animeId=${filmId}&episode=${epNum}&title=${encodeURIComponent(detail?.titleAr || params.title || "")}` as any,
      );
    },
    [router, filmId, detail, params.title],
  );

  const scrollToTop = useCallback(() => {
    episodeListRef.current?.scrollToOffset({ offset: 0, animated: true });
  }, []);

  const scrollToBottom = useCallback(() => {
    if (displayedEps.length > 0) {
      episodeListRef.current?.scrollToEnd({ animated: true });
    }
  }, [displayedEps.length]);

  if (loading) {
    return (
      <View style={[ep_s.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
        <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
            focusable={tvMode}
            style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
        </View>
        <View style={ep_s.center}>
          <ActivityIndicator color="#0EA5E9" size="large" />
        </View>
      </View>
    );
  }

  if (!detail) {
    return (
      <View style={[ep_s.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
        <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
          <Pressable
            onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
            focusable={tvMode}
            style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
          </Pressable>
        </View>
        <View style={ep_s.center}>
          <Text style={[ep_s.notFound, { color: colors.textSecondary }]}>لم يُعثر على العمل</Text>
        </View>
      </View>
    );
  }

  const fallbackThumb = detail.backdropUrl || detail.posterUrl;

  return (
    <View
      style={[
        ep_s.container,
        tvMode && ep_s.tvContainer,
        { backgroundColor: colors.background, paddingTop: topPad },
      ]}
    >
      {/* ── Top Bar ── */}
      <View style={[ep_s.topBar, tvMode && ep_s.tvTopBar]}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)"))}
          focusable={tvMode}
          onFocus={() => {
            if (tvMode) setPreferredKey("back");
          }}
          style={({ focused }) => [ep_s.topBarBack, tvMode && ep_s.tvTopBarBack, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={tvMode ? 26 : 20} color={colors.textPrimary} />
        </Pressable>

        <View style={[ep_s.topBarHeading, tvMode && ep_s.tvTopBarHeading]}>
          <Text style={[ep_s.topBarTitle, tvMode && ep_s.tvTopBarTitle]} numberOfLines={1}>
            {detail.titleAr || detail.titleEn || params.title || "الحلقات"}
          </Text>
          <View style={ep_s.topBarSubRow}>
            <Text style={[ep_s.topBarSubtitle, tvMode && ep_s.tvText]} numberOfLines={1}>
              الموسم {selectedSeason} · {total} حلقة
            </Text>
            {watchedCount > 0 ? <Text style={ep_s.topBarPctText}>({pct}% مكتمل)</Text> : null}
          </View>
        </View>

        <View style={ep_s.topBarLeftTools}>
          <Pressable
            onPress={scrollToTop}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              ep_s.topBarJumpBtn,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.8 },
            ]}
          >
            <Ionicons name="chevron-up" size={15} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            onPress={scrollToBottom}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              ep_s.topBarJumpBtn,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.8 },
            ]}
          >
            <Ionicons name="chevron-down" size={15} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            onPress={() => {
              setSortOrder((cur) => (cur === "asc" ? "desc" : "asc"));
              episodeListRef.current?.scrollToOffset({ offset: 0, animated: false });
            }}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              ep_s.topBarSort,
              tvMode && ep_s.tvTopBarSort,
              tvMode && tvFocusStyle(focused),
              pressed && { opacity: 0.84 },
            ]}
          >
            <Text style={[ep_s.topBarSortText, tvMode && ep_s.tvText, { color: colors.textPrimary }]}>
              {sortOrder === "asc" ? "الأقدم" : "الأحدث"}
            </Text>
            <Ionicons name="swap-vertical" size={tvMode ? 20 : 13} color={colors.textPrimary} />
          </Pressable>
        </View>
      </View>

      {/* ── Episode List with Hero + Sticky Controls Header ── */}
      <TvFocusGuideView autoFocus={tvMode} style={ep_s.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          key={`${tvMode ? "tv" : "phone"}-${filmId}-${selectedSeason}`}
          data={displayedEps}
          numColumns={1}
          keyExtractor={(item) => item.id || String(item.episodeNumber)}
          showsVerticalScrollIndicator={false}
          removeClippedSubviews={false}
          initialNumToRender={12}
          maxToRenderPerBatch={12}
          windowSize={9}
          contentContainerStyle={[{ paddingTop: 6, paddingBottom: 100 }, tvMode && ep_s.tvListContent]}
          ListHeaderComponent={
            <View>
              {/* ── Hero Banner ── */}
              <View style={[ep_s.hero, tvMode && width >= 700 && ep_s.tvHero]}>
                {fallbackThumb ? (
                  <Image source={{ uri: fallbackThumb }} style={StyleSheet.absoluteFill} resizeMode="cover" />
                ) : null}
                <LinearGradient
                  colors={["rgba(9,9,11,0.18)", "rgba(9,9,11,0.68)", colors.background]}
                  style={StyleSheet.absoluteFill}
                />
                <View style={[ep_s.heroBottom, tvMode && width >= 700 && ep_s.tvHeroBottom]}>
                  <View style={[ep_s.heroContent, tvMode && width >= 700 && ep_s.tvHeroContent]}>
                    <SafePosterImage
                      uri={detail.posterUrl}
                      style={[ep_s.heroCover, tvMode && width >= 700 && ep_s.tvHeroCover]}
                      resizeMode="cover"
                    />
                    <View style={[ep_s.heroInfo, tvMode && width >= 700 && ep_s.tvHeroInfo]}>
                      <Text
                        style={[ep_s.heroTitle, tvMode && width >= 700 && ep_s.tvHeroTitle]}
                        numberOfLines={1}
                      >
                        {detail.titleAr || detail.titleEn}
                      </Text>
                      <View style={ep_s.heroBadgesRow}>
                        <View style={ep_s.heroPill}>
                          <Text style={ep_s.heroPillText}>{total} حلقة</Text>
                        </View>
                        {watchedCount > 0 ? (
                          <View style={[ep_s.heroPill, ep_s.heroPillWatched]}>
                            <Text style={[ep_s.heroPillText, { color: "#10B981" }]}>
                              تمت مشاهدة {watchedCount}
                            </Text>
                          </View>
                        ) : null}
                        {detail.imdbRating ? (
                          <View style={ep_s.heroPill}>
                            <Ionicons name="star" size={11} color="#fff" />
                            <Text style={ep_s.heroPillText}>{Number(detail.imdbRating).toFixed(1)}</Text>
                          </View>
                        ) : null}
                      </View>
                      <View style={ep_s.heroProgress}>
                        <View style={ep_s.heroProgressLabels}>
                          <Text style={[ep_s.heroProgressCount, tvMode && ep_s.tvText]}>تقدم المشاهدة</Text>
                          <Text style={[ep_s.heroProgressPercent, tvMode && ep_s.tvText]}>
                            {watchedCount} / {total} ({pct}%)
                          </Text>
                        </View>
                        <View style={[ep_s.progressTrack, ep_s.heroProgressTrack]}>
                          <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
                        </View>
                      </View>
                    </View>
                  </View>
                </View>
              </View>

              {/* ── Controls (Season Tabs + Quick Watch + Search + Range Chips) ── */}
              <View
                style={[
                  ep_s.controls,
                  tvMode && width >= 700 && ep_s.tvControls,
                  { backgroundColor: colors.background, borderBottomColor: colors.border },
                ]}
              >
                {detail.seasons.length > 0 && (
                  <View style={ep_s.seasonSection}>
                    <ScrollView
                      horizontal
                      showsHorizontalScrollIndicator={false}
                      contentContainerStyle={ep_s.seasonTabs}
                    >
                      {detail.seasons.map((season) => {
                        const isActive = season.seasonNumber === selectedSeason;
                        return (
                          <Pressable
                            key={String(season.seasonNumber)}
                            onPress={() => handleSelectSeason(season.seasonNumber)}
                            focusable={tvMode}
                            style={({ focused, pressed }) => [
                              ep_s.seasonTab,
                              isActive && ep_s.seasonTabActive,
                              tvMode && ep_s.tvSeasonTab,
                              tvMode && tvFocusStyle(focused),
                              pressed && { opacity: 0.84 },
                            ]}
                          >
                            <Text
                              style={[
                                ep_s.seasonTabTitle,
                                tvMode && ep_s.tvSeasonTabTitle,
                                isActive && ep_s.seasonTabTitleActive,
                              ]}
                            >
                              {season.name || `الموسم ${season.seasonNumber}`}
                            </Text>
                            <Text
                              style={[
                                ep_s.seasonTabCount,
                                tvMode && ep_s.tvSeasonTabCount,
                                isActive && ep_s.seasonTabCountActive,
                              ]}
                            >
                              {season.episodeCount} حلقة
                            </Text>
                          </Pressable>
                        );
                      })}
                    </ScrollView>
                  </View>
                )}

                <View style={[ep_s.episodeQuickRow, tvMode && ep_s.tvEpisodeQuickRow]}>
                  {total > 0 ? (
                    <Pressable
                      onPress={() => watchEp(continueEpisode)}
                      focusable={tvMode}
                      hasTVPreferredFocus={tvMode && preferredKey === "continue"}
                      onFocus={() => {
                        if (tvMode) setPreferredKey("continue");
                      }}
                      style={({ focused, pressed }) => [
                        ep_s.quickWatchBtn,
                        tvMode && ep_s.tvQuickWatchBtn,
                        tvMode && tvFocusStyle(focused),
                        pressed && { opacity: 0.84 },
                      ]}
                    >
                      <Ionicons name="play" size={tvMode ? 18 : 13} color="#fff" />
                      <Text style={[ep_s.quickWatchBtnText, tvMode && ep_s.tvQuickWatchBtnText]} numberOfLines={1}>
                        متابعة ح {continueEpisode}
                      </Text>
                    </Pressable>
                  ) : null}

                  <View
                    style={[
                      ep_s.searchBar,
                      ep_s.quickSearchBar,
                      tvMode && ep_s.tvSearchBar,
                      { backgroundColor: colors.card, borderColor: colors.border },
                    ]}
                  >
                    <Ionicons name="search" size={tvMode ? 18 : 16} color={colors.textMuted} />
                    <TextInput
                      value={search}
                      onChangeText={(val) => {
                        setSearch(val);
                        if (val.trim()) setRangeStart(null);
                      }}
                      placeholder="ابحث عن رقم أو عنوان الحلقة..."
                      placeholderTextColor={colors.textMuted}
                      style={[ep_s.searchInput, tvMode && ep_s.tvText, { color: colors.textPrimary }]}
                    />
                    {search ? (
                      <Pressable
                        onPress={() => setSearch("")}
                        focusable={tvMode}
                        style={({ focused }) => [tvMode && tvFocusStyle(focused)]}
                      >
                        <Ionicons name="close" size={16} color={colors.textMuted} />
                      </Pressable>
                    ) : null}
                  </View>
                </View>

                {total > 12 ? (
                  <ScrollView
                    horizontal
                    showsHorizontalScrollIndicator={false}
                    contentContainerStyle={ep_s.rangeChips}
                    style={ep_s.rangeControls}
                  >
                    {rangeOptions.map((option) => {
                      const isActive = rangeStart === option.start;
                      return (
                        <Pressable
                          key={option.start === null ? "all" : option.start}
                          onPress={() => {
                            setSearch("");
                            setRangeStart(option.start);
                          }}
                          focusable={tvMode}
                          style={({ focused, pressed }) => [
                            ep_s.rangeChip,
                            isActive && ep_s.rangeChipActive,
                            tvMode && ep_s.tvRangeChip,
                            tvMode && tvFocusStyle(focused),
                            pressed && { opacity: 0.84 },
                          ]}
                        >
                          <Text
                            style={[
                              ep_s.rangeChipText,
                              isActive && ep_s.rangeChipTextActive,
                              tvMode && ep_s.tvRangeChipText,
                            ]}
                          >
                            {option.label}
                          </Text>
                        </Pressable>
                      );
                    })}
                  </ScrollView>
                ) : null}

                {seasonLoading ? (
                  <View style={{ paddingVertical: 8, alignItems: "center" }}>
                    <ActivityIndicator size="small" color="#0EA5E9" />
                  </View>
                ) : null}
              </View>
            </View>
          }
          renderItem={({ item: ep }) => (
            <EpisodeRow
              ep={ep}
              fallbackThumb={fallbackThumb}
              watched={watchedSet.has(ep.episodeNumber)}
              onToggleWatched={handleToggleWatched}
              onWatch={watchEp}
              onComment={openComments}
              onFocus={() => {
                if (tvMode) setPreferredKey(String(ep.episodeNumber));
              }}
              hasTVPreferredFocus={tvMode && preferredKey === String(ep.episodeNumber)}
            />
          )}
          ItemSeparatorComponent={() => <View style={ep_s.rowSeparator} />}
        />
      </TvFocusGuideView>
    </View>
  );
}

function createEpStyles(colors: ReturnType<typeof useColors>) {
  return StyleSheet.create({
    container: { flex: 1, backgroundColor: colors.background },
    topBar: {
      height: 60,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      paddingHorizontal: 14,
      backgroundColor: colors.surface,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    topBarHeading: { flex: 1, alignItems: "flex-end", justifyContent: "center", gap: 2 },
    topBarTitle: {
      color: colors.textPrimary,
      fontSize: 15,
      lineHeight: 21,
      fontFamily: "Cairo_800ExtraBold",
      textAlign: "right",
      maxWidth: "100%",
    },
    topBarSubRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    topBarSubtitle: {
      color: colors.textSecondary,
      fontSize: 11,
      lineHeight: 16,
      fontFamily: "Cairo_700Bold",
      textAlign: "right",
    },
    topBarPctText: { color: "#94A3B8", fontSize: 11, lineHeight: 16, fontFamily: "Cairo_600SemiBold" },
    topBarLeftTools: { flexDirection: "row", alignItems: "center", gap: 6 },
    topBarJumpBtn: {
      width: 34,
      height: 34,
      borderRadius: 10,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarSort: {
      minHeight: 34,
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center",
      gap: 5,
      paddingHorizontal: 11,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topBarSortText: { fontSize: 11, lineHeight: 16, fontFamily: "Cairo_700Bold" },
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
    tvTopBar: { height: 68, paddingHorizontal: 22 },
    tvTopBarHeading: {},
    tvTopBarTitle: { fontSize: 18, lineHeight: 25 },
    tvTopBarBack: { width: 48, height: 48, borderRadius: 14 },
    tvTopBarSort: { minHeight: 42, paddingHorizontal: 14, borderRadius: 12 },
    center: { flex: 1, alignItems: "center", justifyContent: "center" },
    notFound: { fontSize: 14, color: colors.textSecondary, fontFamily: "Cairo_400Regular" },
    hero: { height: 224, justifyContent: "flex-end", overflow: "hidden" },
    heroBottom: { flexDirection: "column", gap: 8, paddingHorizontal: 16, paddingBottom: 14 },
    heroContent: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 14 },
    heroCover: { width: 78, height: 114, borderRadius: 14, borderWidth: 1.5, borderColor: "rgba(255,255,255,0.16)" },
    heroInfo: { flex: 1, alignItems: "flex-end", gap: 7 },
    heroTitle: { fontSize: 19, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
    heroBadgesRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 7, flexWrap: "wrap" },
    heroPill: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 4,
      paddingHorizontal: 10,
      paddingVertical: 4,
      borderRadius: 10,
      backgroundColor: "rgba(24,24,27,0.78)",
      borderWidth: 1,
      borderColor: "rgba(255,255,255,0.14)",
    },
    heroPillWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.4)" },
    heroPillText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: "#fff" },
    heroProgress: { width: "100%", gap: 5, marginTop: 2 },
    heroProgressLabels: { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between" },
    heroProgressPercent: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    heroProgressCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.78)" },
    heroProgressTrack: {
      flex: 0,
      width: "100%",
      height: 6,
      marginBottom: 0,
      backgroundColor: "rgba(255,255,255,0.18)",
      flexDirection: ROW_RTL,
    },
    progressTrack: { flex: 1, height: 6, backgroundColor: colors.surfaceElevated, borderRadius: 4, overflow: "hidden" },
    progressFill: { height: "100%", backgroundColor: "#0EA5E9", borderRadius: 3 },
    controls: {
      backgroundColor: colors.background,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      paddingHorizontal: 16,
      paddingTop: 12,
      paddingBottom: 10,
      gap: 10,
    },
    seasonSection: {},
    seasonTabs: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
    seasonTab: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      paddingHorizontal: 16,
      paddingVertical: 8,
      borderRadius: 22,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    seasonTabActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
    seasonTabTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    seasonTabTitleActive: { color: "#fff" },
    seasonTabCount: { fontSize: 11, fontFamily: "Cairo_600SemiBold", color: colors.textSecondary },
    seasonTabCountActive: { color: "rgba(255,255,255,0.9)" },
    episodeQuickRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
    quickWatchBtn: {
      minHeight: 44,
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "center",
      gap: 7,
      paddingHorizontal: 16,
      borderRadius: 14,
      backgroundColor: "#0EA5E9",
      borderWidth: 1,
      borderColor: "#38BDF8",
    },
    quickWatchBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    searchBar: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.card,
      borderRadius: 14,
      paddingHorizontal: 14,
      minHeight: 44,
      borderWidth: 1,
      borderColor: colors.border,
    },
    quickSearchBar: { flex: 1, minWidth: 0 },
    searchInput: {
      flex: 1,
      color: colors.textPrimary,
      fontSize: 12,
      fontFamily: "Cairo_600SemiBold",
      textAlign: "right",
      paddingVertical: 0,
    },
    rangeControls: {},
    rangeChips: { flexDirection: ROW_RTL, gap: 8, paddingHorizontal: 1 },
    rangeChip: {
      minHeight: 36,
      alignItems: "center",
      justifyContent: "center",
      paddingHorizontal: 16,
      borderRadius: 20,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
    },
    rangeChipActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
    rangeChipText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    rangeChipTextActive: { color: "#fff" },
    row: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 12,
      minHeight: 82,
      marginHorizontal: 16,
      marginVertical: 5,
      paddingHorizontal: 12,
      paddingVertical: 11,
      borderRadius: 16,
      borderWidth: 1,
    },
    rowSeparator: { height: 0 },
    episodeMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 12 },
    thumbWrap: {
      width: 96,
      height: 58,
      borderRadius: 11,
      overflow: "hidden",
      backgroundColor: colors.surfaceElevated,
      position: "relative",
    },
    thumb: { width: "100%", height: "100%" },
    thumbFallback: { backgroundColor: "rgba(14,165,233,0.12)" },
    thumbOverlay: {
      ...StyleSheet.absoluteFillObject,
      backgroundColor: "rgba(0,0,0,0.22)",
      alignItems: "center",
      justifyContent: "center",
    },
    thumbPlayCircle: {
      width: 28,
      height: 28,
      borderRadius: 14,
      alignItems: "center",
      justifyContent: "center",
      borderWidth: 1.5,
      borderColor: "rgba(255,255,255,0.65)",
    },
    thumbPlayCircleDefault: { backgroundColor: "rgba(14,165,233,0.88)" },
    thumbPlayCircleWatched: { backgroundColor: "rgba(16,185,129,0.9)" },
    epNumBadgeOverlay: {
      position: "absolute",
      bottom: 4,
      right: 5,
      backgroundColor: "rgba(0,0,0,0.72)",
      borderRadius: 5,
      paddingHorizontal: 5,
      paddingVertical: 1,
    },
    epNumBadgeText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    info: { flex: 1, alignItems: "flex-end", gap: 2 },
    episodeActions: { flexDirection: "row", alignItems: "center", gap: 8 },
    epNumRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
    epNum: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary },
    watchedBadge: {
      paddingHorizontal: 8,
      paddingVertical: 2,
      borderRadius: 6,
      backgroundColor: "rgba(16,185,129,0.16)",
      borderWidth: 1,
      borderColor: "rgba(16,185,129,0.35)",
    },
    watchedBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
    epTitleAr: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
    epTitleOriginal: { fontSize: 11, fontFamily: "Cairo_400Regular", color: colors.textSecondary, textAlign: "right" },
    commentBtn: {
      width: 36,
      height: 36,
      borderRadius: 11,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    eyeBtn: {
      width: 36,
      height: 36,
      borderRadius: 11,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
    },
    eyeBtnWatched: { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.45)" },
    tvContainer: { paddingHorizontal: 28 },
    tvFocusGuide: { flex: 1 },
    tvControls: { paddingHorizontal: 20, paddingTop: 8, paddingBottom: 8, gap: 7 },
    tvEpisodeQuickRow: { gap: 10, marginBottom: 4 },
    tvQuickWatchBtn: { minHeight: 40, maxWidth: 200, paddingHorizontal: 14, borderRadius: 12 },
    tvQuickWatchBtnText: { maxWidth: 170, fontSize: 12, lineHeight: 18 },
    tvRangeChip: { minHeight: 34, paddingHorizontal: 12, borderRadius: 16 },
    tvRangeChipText: { fontSize: 11, lineHeight: 16 },
    tvSeasonTab: { minWidth: 118, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12 },
    tvSeasonTabTitle: { fontSize: 12, lineHeight: 18 },
    tvSeasonTabCount: { fontSize: 10, lineHeight: 15 },
    tvHero: { height: 126 },
    tvHeroBottom: { paddingHorizontal: 20, paddingBottom: 8, gap: 8 },
    tvHeroContent: { gap: 12 },
    tvHeroCover: { width: 62, height: 88, borderRadius: 10 },
    tvHeroInfo: { paddingBottom: 2 },
    tvHeroTitle: { fontSize: 17, lineHeight: 23 },
    tvText: { fontSize: 12, lineHeight: 18 },
    tvRow: {
      width: "100%",
      minHeight: 74,
      flexDirection: ROW_RTL,
      alignItems: "center",
      paddingHorizontal: 10,
      paddingVertical: 6,
      gap: 10,
      borderRadius: 12,
      borderWidth: 1,
      borderBottomWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.card,
    },
    tvEpisodeMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10, borderRadius: 10 },
    tvListContent: { paddingTop: 4, paddingBottom: 90, gap: 7 },
    tvSmallButton: { width: 34, height: 34, borderRadius: 9 },
    tvSearchBar: { minHeight: 40, paddingVertical: 4, paddingHorizontal: 12, borderRadius: 11 },
    tvThumbWrap: { width: 106, height: 60, borderRadius: 8 },
    tvInfo: { flex: 1, minHeight: 0 },
    tvEpisodeActions: { justifyContent: "flex-end", gap: 5 },
    tvEpNum: { fontSize: 14, lineHeight: 20 },
    tvEpTitle: { fontSize: 13, lineHeight: 20 },
    tvEpOriginal: { fontSize: 11, lineHeight: 16 },
  });
}
