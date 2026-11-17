import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  Animated,
  BackHandler,
  Easing,
  I18nManager,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { RiftPlayer, type PlayerSource } from "@/components/RiftPlayer";
import { SafePosterImage } from "@/components/SafePosterImage";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/baseUrl";
import {
  getActiveDownloadsSnapshot,
  getDownloads,
  startGlobalDownload,
  subscribeActiveDownloads,
} from "@/utils/downloadManager";
import {
  fetchFilmDetail,
  fetchFilmSeason,
  fetchFilmSubtitleTracks,
  resolveFilmPlayableUrl,
  streamFilmSources,
} from "@/utils/filmApi";
import {
  buildFilmPlaybackKey,
  type FilmDetail,
  type FilmEpisode,
  type FilmStreamSource,
  type FilmSubtitleTrack,
  type FilmSummary,
  loadEpisodePlaybackProgress,
  loadWatchedMap,
  makeEpisodeKey,
  savePlaybackProgress,
  toggleEpisodeWatched,
} from "@/utils/filmCatalog";
import { getAuthToken, getDownloadToken } from "@/utils/secureApi";
import { TvFocusGuideView, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);

function SpinRing({ size = 48 }: { size?: number }) {
  const colors = useColors();
  const rot = useRef(new Animated.Value(0)).current;
  useEffect(() => {
    const anim = Animated.loop(
      Animated.timing(rot, {
        toValue: 1,
        duration: 850,
        easing: Easing.linear,
        useNativeDriver: true,
      }),
    );
    anim.start();
    return () => anim.stop();
  }, [rot]);
  const rotate = rot.interpolate({ inputRange: [0, 1], outputRange: ["0deg", "360deg"] });
  return (
    <Animated.View
      style={{
        width: size,
        height: size,
        borderRadius: size / 2,
        borderWidth: 2.5,
        borderColor: colors.accentSurface,
        borderTopColor: colors.accent,
        transform: [{ rotate }],
      }}
    />
  );
}

function normalizeQualityBucket(src: FilmStreamSource): "1080p" | "720p" | "480p" {
  const raw = `${src.tier || ""} ${src.quality || ""} ${src.label || ""}`.toLowerCase();
  if (/2160|4k|1080|fhd/.test(raw)) return "1080p";
  if (/480|360|sd/.test(raw)) return "480p";
  return "720p";
}

function serverShortTag(src: FilmStreamSource, idx: number): string {
  const s = (src.site || "").toLowerCase();
  if (s === "vidhls") return "VH";
  if (s === "vidhls-alt") return "CD";
  if (s.includes("dahmer")) return "DH";
  if (s.includes("vidfast")) return "VF";
  if (s.includes("starcima")) return "SC";
  if (s.includes("dulo")) return "DL";
  if (s.includes("nebula")) return "NB";
  if (s.includes("vidbolt")) return "VB";
  if (s.includes("moviztime")) return "MT";
  return s ? s.slice(0, 2).toUpperCase() : `S${idx + 1}`;
}

function serverDisplayName(src: FilmStreamSource, idx: number): string {
  const raw = String(src.label || "").trim();
  if (raw) return raw;
  return `السيرفر ${idx + 1}`;
}

export default function FilmWatchScreen() {
  const params = useLocalSearchParams<{
    id: string;
    type?: string;
    season?: string;
    episode?: string;
    title?: string;
    english?: string;
    poster?: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const d = useMemo(() => createWatchStyles(colors), [colors]);
  const { isTv: tvMode } = useTvMetrics();

  const filmId = Number.parseInt(String(params.id || "0"), 10) || 0;
  const tmdbType: "movie" | "tv" = params.type === "tv" ? "tv" : "movie";
  const initialSeason = Math.max(1, Number.parseInt(String(params.season || "1"), 10) || 1);
  const initialEp = Math.max(1, Number.parseInt(String(params.episode || "1"), 10) || 1);

  const [detail, setDetail] = useState<FilmDetail | null>(null);
  const [episodes, setEpisodes] = useState<FilmEpisode[]>([]);
  const [currentSeason, setCurrentSeason] = useState<number>(initialSeason);
  const [currentEpNum, setCurrentEpNum] = useState<number>(initialEp);

  const [sources, setSources] = useState<FilmStreamSource[]>([]);
  const [subtitles, setSubtitles] = useState<FilmSubtitleTrack[]>([]);
  const [scanning, setScanning] = useState<boolean>(true);
  const [statusMsg, setStatusMsg] = useState<string>("جاري فحص السيرفرات المتاحة...");
  const [selectedIndex, setSelectedIndex] = useState<number>(0);
  const [screen, setScreen] = useState<"picker" | "player">("picker");
  const [failedUrls, setFailedUrls] = useState<Record<string, boolean>>({});
  const [pickerFocusKey, setPickerFocusKey] = useState<string>("");

  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [savedResumeSec, setSavedResumeSec] = useState<number>(0);
  const [refreshNonce, setRefreshNonce] = useState<number>(0);

  const [downloadStates, setDownloadStates] = useState<Record<string, "idle" | "downloading" | "done" | "error">>({});
  const [downloadProgress, setDownloadProgress] = useState<Record<string, number>>({});

  const topPad = Platform.OS === "web" ? 20 : insets.top;

  const onToggleOrientation = useWatchPlayerOrientation(screen === "player", tvMode);

  // Sync download progress
  useEffect(() => {
    const syncDl = async () => {
      const active = getActiveDownloadsSnapshot();
      const doneList = await getDownloads();
      const nextState: Record<string, "idle" | "downloading" | "done" | "error"> = {};
      const nextProg: Record<string, number> = {};
      for (const item of doneList) {
        if (item.animeId === filmId && item.ep === currentEpNum) {
          nextState[`${item.site}:${item.quality}`] = "done";
          nextProg[`${item.site}:${item.quality}`] = 1;
        }
      }
      for (const act of active) {
        if (act.animeId === filmId && act.ep === currentEpNum) {
          const k = `${act.site}:${act.quality}`;
          nextState[k] = act.status === "error" ? "error" : "downloading";
          nextProg[k] = act.progress || 0;
        }
      }
      setDownloadStates((prev) => ({ ...prev, ...nextState }));
      setDownloadProgress((prev) => ({ ...prev, ...nextProg }));
    };
    void syncDl();
    return subscribeActiveDownloads(() => {
      void syncDl();
    });
  }, [filmId, currentEpNum]);

  // Load detail & season episodes
  useEffect(() => {
    let active = true;
    (async () => {
      try {
        const [dRes, wMap] = await Promise.all([
          fetchFilmDetail(filmId, tmdbType),
          loadWatchedMap(),
        ]);
        if (!active) return;
        setDetail(dRes);
        setWatchedMap(wMap);

        if (tmdbType === "tv") {
          const defaultSeason = dRes.seasons[0]?.seasonNumber || 1;
          if (currentSeason !== defaultSeason) {
            const sData = await fetchFilmSeason(filmId, currentSeason);
            if (active) setEpisodes(sData.episodes || []);
          } else {
            setEpisodes(dRes.episodes || []);
          }
        } else {
          setEpisodes(dRes.episodes || []);
        }
      } catch {}
    })();
    return () => {
      active = false;
    };
  }, [filmId, tmdbType, currentSeason]);

  // Load saved resume position
  useEffect(() => {
    let active = true;
    loadEpisodePlaybackProgress(filmId, currentSeason, currentEpNum, tmdbType).then((sec) => {
      if (active) setSavedResumeSec(sec);
    });
    return () => {
      active = false;
    };
  }, [filmId, currentSeason, currentEpNum, tmdbType]);

  // Stream sources & subtitles
  useEffect(() => {
    const controller = new AbortController();
    setScanning(true);
    setSources([]);
    setSubtitles([]);
    setFailedUrls({});
    setSelectedIndex(0);
    setStatusMsg("جاري فحص السيرفرات المتاحة...");

    const lookupTitle = detail?.titleEn || params.english || detail?.titleAr || params.title || "";
    const lookupYear = detail?.year;

    void fetchFilmSubtitleTracks({
      tmdbId: filmId,
      type: tmdbType,
      season: currentSeason,
      episode: currentEpNum,
      title: lookupTitle,
      signal: controller.signal,
    }).then((tracks) => {
      if (!controller.signal.aborted) setSubtitles(tracks);
    });

    void streamFilmSources({
      tmdbId: filmId,
      type: tmdbType,
      season: currentSeason,
      episode: currentEpNum,
      title: lookupTitle,
      year: lookupYear,
      signal: controller.signal,
      onStatus: (msg) => {
        if (!controller.signal.aborted && msg) setStatusMsg(msg);
      },
      onSource: (src) => {
        if (controller.signal.aborted) return;
        // Filter out any legacy broken embed-only entries
        if (src.isEmbed) return;
        setSources((prev) => {
          const playUrl = resolveFilmPlayableUrl(src);
          if (!playUrl || prev.some((x) => resolveFilmPlayableUrl(x) === playUrl)) return prev;
          return [...prev, src];
        });
      },
      onDone: () => {
        if (!controller.signal.aborted) setScanning(false);
      },
    });

    return () => controller.abort();
  }, [
    filmId,
    tmdbType,
    currentSeason,
    currentEpNum,
    detail?.titleEn,
    detail?.titleAr,
    detail?.year,
    params.english,
    params.title,
    refreshNonce,
  ]);

  const titleSnapshot: FilmSummary = useMemo(
    () =>
      detail || {
        id: filmId,
        tmdbType,
        mediaType: tmdbType === "tv" ? "series" : "movie",
        titleAr: params.title || "عمل سينمائي",
        titleEn: params.english || params.title || "",
        overviewAr: "",
        posterUrl: params.poster || null,
        backdropUrl: params.poster || null,
        year: 2025,
        imdbRating: 7.8,
        qualityBadge: "1080p FHD",
        audioLabel: "مترجم",
        categoryLabel: tmdbType === "tv" ? "مسلسلات عالمية" : "أفلام أجنبية",
        genres: [],
      },
    [detail, filmId, tmdbType, params.title, params.english, params.poster],
  );

  const displayTitle = titleSnapshot.titleAr || titleSnapshot.titleEn;
  const coverUrl = titleSnapshot.posterUrl || params.poster || "";

  const currentEpIndex = useMemo(
    () => episodes.findIndex((e) => e.episodeNumber === currentEpNum),
    [episodes, currentEpNum],
  );
  const canGoPrevEpisode = tmdbType === "tv" && currentEpIndex > 0;
  const canGoNextEpisode =
    tmdbType === "tv" && currentEpIndex >= 0 && currentEpIndex < episodes.length - 1;

  const isCurrentWatched = Boolean(
    watchedMap[makeEpisodeKey(filmId, currentSeason, currentEpNum, tmdbType)],
  );

  const handleToggleWatched = useCallback(async () => {
    const next = await toggleEpisodeWatched(filmId, currentSeason, currentEpNum, tmdbType);
    setWatchedMap(next);
  }, [filmId, currentSeason, currentEpNum, tmdbType]);

  const handlePrevEpisode = useCallback(() => {
    if (!canGoPrevEpisode) return;
    const prevEp = episodes[currentEpIndex - 1];
    if (prevEp) {
      setScreen("picker");
      setCurrentEpNum(prevEp.episodeNumber);
    }
  }, [canGoPrevEpisode, episodes, currentEpIndex]);

  const handleNextEpisode = useCallback(() => {
    if (!canGoNextEpisode) return;
    const nextEp = episodes[currentEpIndex + 1];
    if (nextEp) {
      setScreen("picker");
      setCurrentEpNum(nextEp.episodeNumber);
    }
  }, [canGoNextEpisode, episodes, currentEpIndex]);

  const handleEpisodeSelect = useCallback((epNum: number) => {
    setScreen("picker");
    setCurrentEpNum(epNum);
  }, []);

  const handleBack = useCallback(() => {
    if (screen === "player") {
      setScreen("picker");
      return;
    }
    if (router.canGoBack()) router.back();
    else router.replace("/(tabs)");
  }, [screen, router]);

  useEffect(() => {
    if (Platform.OS !== "android" || screen === "player") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      handleBack();
      return true;
    });
    return () => sub.remove();
  }, [screen, handleBack]);

  // Convert FilmStreamSource[] to RiftPlayer PlayerSource[]
  const arSubTrackUrl = useMemo(() => {
    const ar = subtitles.find((t) => t.lang === "ar") || subtitles[0];
    if (!ar?.url) return undefined;
    return ar.url.startsWith("http") ? ar.url : `${getBaseUrl()}${ar.url}`;
  }, [subtitles]);

  const playerSources: PlayerSource[] = useMemo(() => {
    return sources.map((src, idx) => {
      const playUrl = resolveFilmPlayableUrl(src);
      const lower = playUrl.toLowerCase();
      const isHls =
        src.type === "hls" ||
        lower.includes("/api/anime/hls-proxy") ||
        lower.includes("/proxy/hls") ||
        lower.includes(".m3u8") ||
        lower.includes("master.txt");
      const siteLower = String(src.site || "").toLowerCase();
      const isHardsub = Boolean(src.hardsubbed) || siteLower === "vidhls" || siteLower === "vidhls-alt";
      const tag = serverShortTag(src, idx);
      return {
        url: playUrl,
        label: `السيرفر ${tag}`,
        quality: normalizeQualityBucket(src),
        contentType: isHls ? "hls" : "progressive",
        site: src.site || `film-${idx + 1}`,
        subtitleUrl: isHardsub
          ? undefined
          : src.subtitleUrl
            ? src.subtitleUrl.startsWith("http")
              ? src.subtitleUrl
              : `${getBaseUrl()}${src.subtitleUrl}`
            : arSubTrackUrl,
        isArabic: true,
        hardsubbed: isHardsub,
        headers: src.headers,
      };
    });
  }, [sources, arSubTrackUrl]);

  const orderedPlaySources = useMemo(() => {
    if (playerSources.length === 0) return [];
    const picked = playerSources[selectedIndex];
    if (!picked) return playerSources;
    return [picked, ...playerSources.filter((_, i) => i !== selectedIndex)];
  }, [playerSources, selectedIndex]);

  const [sessionPlaySources, setSessionPlaySources] = useState<PlayerSource[]>([]);
  const handleRiftBack = useCallback(() => {
    setScreen("picker");
  }, []);
  const startPlaybackAt = useCallback(
    (index: number) => {
      const list = playerSources;
      const picked = list[index];
      const ordered = picked
        ? [picked, ...list.filter((_, i) => i !== index)]
        : list;
      setSelectedIndex(index);
      setSessionPlaySources(ordered);
      setScreen("player");
      void toggleEpisodeWatched(filmId, currentSeason, currentEpNum, tmdbType, true)
        .then(setWatchedMap)
        .catch(() => {});
    },
    [playerSources, filmId, currentSeason, currentEpNum, tmdbType],
  );

  const handleProgress = useCallback(
    (posSec: number, durSec: number) => {
      if (durSec <= 0) return;
      const key = buildFilmPlaybackKey(filmId, currentSeason, currentEpNum, tmdbType);
      void savePlaybackProgress({
        key,
        titleId: filmId,
        tmdbType,
        seasonNumber: currentSeason,
        episodeNumber: currentEpNum,
        positionSec: posSec,
        durationSec: durSec,
        updatedAt: Date.now(),
        titleSnapshot,
      });
      if (posSec / durSec >= 0.85 && !isCurrentWatched) {
        void toggleEpisodeWatched(filmId, currentSeason, currentEpNum, tmdbType, true).then(
          setWatchedMap,
        );
      }
    },
    [filmId, currentSeason, currentEpNum, tmdbType, titleSnapshot, isCurrentWatched],
  );

  const handleRiftError = useCallback(() => {
    const failedSrc = orderedPlaySources[0];
    if (failedSrc?.url) {
      setFailedUrls((prev) => ({ ...prev, [failedSrc.url]: true }));
    }
    setScreen("picker");
  }, [orderedPlaySources]);

  const handleDownloadSource = useCallback(
    async (src: FilmStreamSource, idx: number) => {
      const qk = normalizeQualityBucket(src);
      const siteTag = serverShortTag(src, idx);
      const stateKey = `${siteTag}:${qk}`;
      if (downloadStates[stateKey] === "downloading" || downloadStates[stateKey] === "done") return;

      const playUrl = resolveFilmPlayableUrl(src);
      if (!playUrl) return;

      setDownloadStates((prev) => ({ ...prev, [stateKey]: "downloading" }));
      try {
        const [token, downloadToken] = await Promise.all([getAuthToken(), getDownloadToken()]);
        const isHls =
          playUrl.includes("/api/anime/hls-proxy") ||
          playUrl.includes(".m3u8") ||
          playUrl.includes("master.txt");
        const siteLower = String(src.site || "").toLowerCase();
        const isHardsub = Boolean(src.hardsubbed) || siteLower === "vidhls" || siteLower === "vidhls-alt";
        const base = getBaseUrl();
        const downloadUrl = isHls
          ? `${base}/api/film/download-mp4?site=${encodeURIComponent(siteTag)}&url=${encodeURIComponent(playUrl)}`
          : playUrl;
        await startGlobalDownload({
          animeId: filmId,
          ep: currentEpNum,
          title: displayTitle,
          cover: coverUrl,
          site: siteTag,
          quality: qk,
          url: downloadUrl,
          authToken: token,
          downloadToken,
          headers: src.headers,
          subtitleUrl: isHardsub ? undefined : arSubTrackUrl,
          hlsManifestUrl: isHls && !isHardsub ? playUrl : undefined,
        });
      } catch {
        setDownloadStates((prev) => ({ ...prev, [stateKey]: "error" }));
      }
    },
    [downloadStates, filmId, currentEpNum, displayTitle, coverUrl, arSubTrackUrl],
  );

  // Group sources by quality bucket matching Anime NOVA watch.tsx
  const qualityGroups = useMemo(() => {
    const map: Record<"1080p" | "720p" | "480p", Array<{ src: FilmStreamSource; index: number; tag: string }>> = {
      "1080p": [],
      "720p": [],
      "480p": [],
    };
    sources.forEach((src, index) => {
      const q = normalizeQualityBucket(src);
      map[q].push({ src, index, tag: serverShortTag(src, index) });
    });
    return map;
  }, [sources]);

  /* ══════════════ RIFT PLAYER (Original Glassy v5 Player) ══════════════ */
  const activePlayerSources = sessionPlaySources.length > 0 ? sessionPlaySources : orderedPlaySources;
  if (screen === "player" && activePlayerSources.length > 0) {
    return (
      <RiftPlayer
        key={`film-${filmId}-s${currentSeason}-e${currentEpNum}-${selectedIndex}`}
        sources={activePlayerSources}
        initialSourceIndex={0}
        animePlayback={true}
        title={displayTitle}
        episode={currentEpNum}
        episodeTitle={
          tmdbType === "tv"
            ? `الموسم ${currentSeason} · الحلقة ${currentEpNum}`
            : "الفيلم الكامل"
        }
        initialPosition={savedResumeSec}
        totalEps={tmdbType === "tv" ? episodes.length : 1}
        onBack={handleRiftBack}
        onToggleOrientation={onToggleOrientation}
        onError={handleRiftError}
        onProgress={handleProgress}
        onNextEpisode={canGoNextEpisode ? handleNextEpisode : undefined}
        onPrevEpisode={canGoPrevEpisode ? handlePrevEpisode : undefined}
        onEpisodeSelect={tmdbType === "tv" ? handleEpisodeSelect : undefined}
      />
    );
  }

  /* ══════════════ SERVER & QUALITY PICKER (1:1 Match with Anime NOVA) ══════════════ */
  return (
    <View style={{ flex: 1, backgroundColor: colors.background }}>
      {coverUrl ? (
        <SafePosterImage
          uri={coverUrl}
          style={[StyleSheet.absoluteFill, { opacity: 0.08 }]}
          blurRadius={Platform.OS === "ios" ? 28 : 10}
          resizeMode="cover"
        />
      ) : null}
      <View
        pointerEvents="none"
        style={[StyleSheet.absoluteFill, { backgroundColor: colors.background, opacity: 0.93 }]}
      />

      {/* ── Header ── */}
      <View style={[d.header, tvMode && d.tvHeader, { paddingTop: topPad + 4 }]}>
        <Pressable
          onPress={handleBack}
          focusable={tvMode}
          testID="nova-tv-header-action"
          hasTVPreferredFocus={false}
          style={({ focused }) => [d.headerBack, tvMode && d.tvHeaderActionBtn, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={tvMode ? 25 : 19} color={colors.textPrimary} />
        </Pressable>

        <View style={d.headerCenter}>
          <Text style={[d.headerTitle, tvMode && d.tvHeaderTitle]} numberOfLines={1}>
            {displayTitle}
          </Text>
          <Text style={[d.headerSub, tvMode && d.tvHeaderSub]} numberOfLines={1}>
            {tmdbType === "tv"
              ? `الموسم ${currentSeason} · الحلقة ${currentEpNum}`
              : `${titleSnapshot.durationOrSeasons || "فيلم كامل"} · ${titleSnapshot.qualityBadge || "1080p FHD"}`}
          </Text>
        </View>

        <View style={d.headerLeft}>
          {tmdbType === "tv" && (
            <>
              <Pressable
                disabled={!canGoPrevEpisode}
                onPress={handlePrevEpisode}
                focusable={tvMode && canGoPrevEpisode}
                style={({ focused }) => [
                  d.epNavBtn,
                  tvMode && d.tvEpNavBtn,
                  !canGoPrevEpisode && { opacity: 0.22 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="chevron-forward" size={tvMode ? 22 : 12} color={colors.textSecondary} />
                <Text style={[d.epNavText, tvMode && d.tvEpNavText]}>السابقة</Text>
              </Pressable>

              <Pressable
                disabled={!canGoNextEpisode}
                onPress={handleNextEpisode}
                focusable={tvMode && canGoNextEpisode}
                style={({ focused }) => [
                  d.epNavBtn,
                  tvMode && d.tvEpNavBtn,
                  { borderColor: colors.accentBorder, backgroundColor: colors.accentSurface },
                  !canGoNextEpisode && { opacity: 0.22 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text style={[d.epNavText, tvMode && d.tvEpNavText, { color: colors.accent }]}>التالية</Text>
                <Ionicons name="chevron-back" size={tvMode ? 22 : 12} color={colors.accent} />
              </Pressable>
            </>
          )}

          <Pressable
            onPress={() => setRefreshNonce((n) => n + 1)}
            focusable={tvMode}
            style={({ focused }) => [d.headerRefreshBtn, tvMode && d.tvHeaderActionBtn, tvMode && tvFocusStyle(focused)]}
          >
            <Ionicons name="refresh" size={tvMode ? 24 : 13} color={colors.accent} />
          </Pressable>
        </View>
      </View>

      <TvFocusGuideView autoFocus={false} style={d.tvFocusGuide}>
        <ScrollView
          showsVerticalScrollIndicator={false}
          removeClippedSubviews={false}
          keyboardShouldPersistTaps="handled"
          contentContainerStyle={[d.scrollContent, tvMode && d.tvScrollContent]}
        >
          {/* ── Info Card ── */}
          <View style={[d.infoCard, tvMode && d.tvInfoCard]}>
            <View style={[d.infoPosterWrap, tvMode && d.tvInfoPosterWrap]}>
              <View style={[d.infoPosterGlow, tvMode && d.tvInfoPosterGlow]} />
              <SafePosterImage
                uri={coverUrl}
                style={[d.infoPoster, tvMode && d.tvInfoPoster]}
                resizeMode="cover"
              />
            </View>
            <View style={d.infoMeta}>
              <Text style={[d.infoTitle, tvMode && d.tvInfoTitle]} numberOfLines={2}>
                {displayTitle}
              </Text>
              {titleSnapshot.titleEn && titleSnapshot.titleEn !== displayTitle ? (
                <Text
                  style={{
                    fontSize: tvMode ? 14 : 11,
                    fontFamily: "Cairo_600SemiBold",
                    color: colors.textSecondary,
                    textAlign: "right",
                    marginTop: 1,
                  }}
                  numberOfLines={1}
                >
                  {titleSnapshot.titleEn}
                </Text>
              ) : null}
              <View style={d.infoEpRow}>
                <View style={[d.infoEpBadge, tvMode && d.tvInfoEpBadge]}>
                  <Ionicons name="play-circle" size={tvMode ? 22 : 12} color={colors.accent} />
                  <Text style={[d.infoEpText, tvMode && d.tvInfoEpText]}>
                    {tmdbType === "tv" ? `الحلقة ${currentEpNum}` : "الفيلم الكامل"}
                  </Text>
                </View>

                <Pressable
                  onPress={handleToggleWatched}
                  focusable={tvMode}
                  style={({ focused }) => [
                    d.infoEpBadge,
                    tvMode && d.tvInfoEpBadge,
                    isCurrentWatched
                      ? { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.4)" }
                      : { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons
                    name={isCurrentWatched ? "checkmark-circle" : "eye-outline"}
                    size={tvMode ? 20 : 12}
                    color={isCurrentWatched ? "#10B981" : colors.textSecondary}
                  />
                  <Text
                    style={[
                      d.infoEpText,
                      tvMode && d.tvInfoEpText,
                      { color: isCurrentWatched ? "#10B981" : colors.textSecondary },
                    ]}
                  >
                    {isCurrentWatched ? "تمت المشاهدة" : "تحديد كمشاهد"}
                  </Text>
                </Pressable>
              </View>
            </View>
          </View>

          {/* ── Scanning / Availability State ── */}
          {scanning && sources.length === 0 ? (
            <View style={d.availabilityState}>
              <View style={d.serverScanAnimation}>
                <SpinRing size={54} />
              </View>
              <Text style={d.availabilityTitle}>جاري فحص السيرفرات المتاحة</Text>
              <Text style={d.availabilitySub}>{statusMsg}</Text>
            </View>
          ) : null}

          {/* ── Empty State ── */}
          {!scanning && sources.length === 0 ? (
            <View style={d.empty}>
              <View style={d.emptyIcon}>
                <Ionicons name="alert-circle-outline" size={34} color={colors.destructive} />
              </View>
              <Text style={d.emptyTitle}>لا تتوفر سيرفرات نشطة حالياً</Text>
              <Text style={d.emptySub}>
                تعذّر العثور على سيرفر مباشر لهذا العمل في الوقت الحالي. أعد المحاولة بعد قليل.
              </Text>
              <Pressable
                onPress={() => setRefreshNonce((n) => n + 1)}
                focusable={tvMode}
                hasTVPreferredFocus={tvMode}
                style={({ focused }) => [d.retryBtn, tvMode && tvFocusStyle(focused)]}
              >
                <Ionicons name="refresh" size={16} color={colors.accent} />
                <Text style={d.retryBtnText}>إعادة فحص السيرفرات</Text>
              </Pressable>
            </View>
          ) : null}

          {/* ── Quality Groups (1080P / 720P / 480P matching Anime NOVA) ── */}
          {(["1080p", "720p", "480p"] as const).map((qk) => {
            const slots = qualityGroups[qk];
            if (!slots || slots.length === 0) return null;
            const dotColor =
              qk === "1080p" ? "#fbbf24" : qk === "720p" ? "#34d399" : "#94a3b8";

            return (
              <View key={qk} style={{ gap: 6, marginTop: 10 }}>
                {/* شريط الجودة */}
                <View
                  style={[
                    d.qPill,
                    tvMode && d.tvQPill,
                    { justifyContent: "flex-end", gap: 6, paddingHorizontal: 4 },
                  ]}
                >
                  <Text
                    style={[
                      d.qPillText,
                      tvMode && d.tvQPillText,
                      { color: dotColor, fontSize: 13, fontFamily: "Cairo_700Bold" },
                    ]}
                  >
                    {qk.replace("p", "P")}
                  </Text>
                  <View
                    style={[
                      d.qPillDot,
                      { width: 7, height: 7, borderRadius: 4, backgroundColor: dotColor },
                    ]}
                  />
                </View>

                {/* قائمة السيرفرات */}
                <View
                  style={[
                    d.srcSection,
                    {
                      backgroundColor: colors.card,
                      borderColor: colors.border,
                      borderWidth: 1,
                      borderRadius: 14,
                      padding: tvMode ? 6 : 0,
                      gap: tvMode ? 6 : 0,
                      overflow: tvMode ? "visible" : "hidden",
                    },
                  ]}
                >
                  {slots.map(({ src, index, tag }, idx) => {
                    const playUrl = resolveFilmPlayableUrl(src);
                    const isFailed = Boolean(playUrl && failedUrls[playUrl]);
                    const slotKey = `${tag}:${qk}:${index}`;
                    const isFirstSlot = index === 0;
                    const shouldPreferTvFocus = Boolean(
                      tvMode && (pickerFocusKey ? pickerFocusKey === slotKey : isFirstSlot),
                    );

                    return (
                      <Pressable
                        key={slotKey}
                        testID={shouldPreferTvFocus ? "nova-tv-preferred-focus" : undefined}
                        onPress={() => startPlaybackAt(index)}
                        focusable={tvMode}
                        hasTVPreferredFocus={shouldPreferTvFocus}
                        onFocus={() => {
                          if (tvMode) setPickerFocusKey(slotKey);
                        }}
                        style={({ focused, pressed }) => [
                          d.webRow,
                          tvMode && d.tvWebRow,
                          !tvMode && idx < slots.length - 1 && d.webRowBorder,
                          {
                            minHeight: tvMode ? 64 : 52,
                            paddingHorizontal: tvMode ? 16 : 12,
                            paddingVertical: tvMode ? 12 : 10,
                            justifyContent: "space-between",
                            borderRadius: tvMode ? 12 : 0,
                            borderWidth: tvMode ? 2.5 : 0,
                            borderColor: "transparent",
                            backgroundColor: tvMode
                              ? focused
                                ? colors.accentSurface
                                : colors.surfaceElevated
                              : "transparent",
                          },
                          tvMode && tvFocusStyle(focused),
                          pressed && { opacity: 0.75 },
                        ]}
                      >
                        {/* Left: زر التشغيل الأخضر المباشر تشغيل ▶ */}
                        <View style={d.webRowActions}>
                          <View
                            style={[
                              d.playBtnGreen,
                              tvMode && d.tvPlayBtn,
                              {
                                backgroundColor: "#10b981",
                                borderRadius: 10,
                                paddingHorizontal: 14,
                                paddingVertical: 6,
                                flexDirection: "row",
                                alignItems: "center",
                                gap: 4,
                              },
                            ]}
                          >
                            <Ionicons name="play" size={tvMode ? 18 : 11} color="#ffffff" />
                            <Text
                              style={[
                                d.playBtnGreenText,
                                tvMode && d.tvActionText,
                                {
                                  color: "#ffffff",
                                  fontSize: tvMode ? 14 : 12,
                                  fontFamily: "Cairo_700Bold",
                                },
                              ]}
                            >
                              تشغيل
                            </Text>
                          </View>
                        </View>

                        {/* Right: السيرفر XX مع النقطة الخضراء */}
                        <View
                          style={{
                            flex: 1,
                            flexDirection: "row",
                            alignItems: "center",
                            justifyContent: "flex-end",
                            gap: 8,
                          }}
                        >
                          <Text
                            style={[
                              d.webRowTag,
                              tvMode && d.tvWebRowTag,
                              {
                                textAlign: "right",
                                color: colors.textPrimary,
                                fontSize: tvMode ? 15 : 13,
                                fontFamily: "Cairo_700Bold",
                              },
                              isFailed && { color: colors.destructive },
                            ]}
                            numberOfLines={1}
                          >
                            السيرفر {tag}
                          </Text>
                          <View
                            style={[
                              d.webRowDot,
                              tvMode && d.tvWebRowDot,
                              {
                                width: 8,
                                height: 8,
                                borderRadius: 4,
                                backgroundColor: isFailed ? colors.destructive : "#34d399",
                              },
                            ]}
                          />
                        </View>
                      </Pressable>
                    );
                  })}
                </View>
              </View>
            );
          })}

          {/* ── Direct Download Servers Section (matching Anime NOVA downloadSection) ── */}
          {sources.length > 0 && (
            <View
              style={[
                d.downloadSection,
                {
                  backgroundColor: "#0b111d",
                  borderColor: "rgba(6, 182, 212, 0.22)",
                  borderWidth: 1,
                  borderRadius: 18,
                  padding: 14,
                  marginTop: 18,
                },
              ]}
            >
              <View
                style={[
                  d.downloadHeader,
                  {
                    flexDirection: "row-reverse",
                    alignItems: "center",
                    justifyContent: "space-between",
                    gap: 10,
                  },
                ]}
              >
                <View style={{ flexDirection: "row-reverse", alignItems: "center", gap: 10, flex: 1 }}>
                  <View
                    style={[
                      d.downloadHeaderIcon,
                      {
                        width: 38,
                        height: 38,
                        borderRadius: 12,
                        backgroundColor: "rgba(6, 182, 212, 0.14)",
                        borderColor: "rgba(6, 182, 212, 0.35)",
                      },
                    ]}
                  >
                    <Ionicons name="cloud-download-outline" size={20} color="#22d3ee" />
                  </View>
                  <View style={{ flex: 1, alignItems: "flex-end" }}>
                    <Text
                      style={[
                        d.downloadTitle,
                        { color: "#f8fafc", fontSize: 14, fontFamily: "Cairo_800ExtraBold" },
                      ]}
                    >
                      سيرفرات التحميل المباشر
                    </Text>
                    <Text
                      style={[
                        d.downloadSubtitle,
                        { color: "#94a3b8", fontSize: 10, fontFamily: "Cairo_600SemiBold" },
                      ]}
                    >
                      تحميل مباشر سريع بالخلفية مع دعم المشاهدة بدون إنترنت
                    </Text>
                  </View>
                </View>

                <View
                  style={{
                    paddingHorizontal: 10,
                    paddingVertical: 4,
                    borderRadius: 999,
                    backgroundColor: "rgba(6, 182, 212, 0.14)",
                    borderWidth: 1,
                    borderColor: "rgba(6, 182, 212, 0.3)",
                  }}
                >
                  <Text style={{ color: "#22d3ee", fontSize: 10, fontFamily: "Cairo_700Bold" }}>
                    {sources.length} سيرفر
                  </Text>
                </View>
              </View>

              <View
                style={[
                  d.downloadRows,
                  {
                    backgroundColor: "#070b12",
                    borderRadius: 14,
                    borderWidth: 1,
                    borderColor: "rgba(255,255,255,0.07)",
                    marginTop: 6,
                  },
                ]}
              >
                {sources.map((src, idx) => {
                  const qk = normalizeQualityBucket(src);
                  const tag = serverShortTag(src, idx);
                  const stateKey = `${tag}:${qk}`;
                  const dlState = downloadStates[stateKey] || "idle";
                  const dlPct = Math.round((downloadProgress[stateKey] || 0) * 100);
                  const qColor =
                    qk === "1080p" ? "#fbbf24" : qk === "720p" ? "#34d399" : "#60a5fa";

                  return (
                    <View
                      key={`dl-${stateKey}-${idx}`}
                      style={[
                        d.downloadRow,
                        idx === sources.length - 1 && { borderBottomWidth: 0 },
                      ]}
                    >
                      {/* Left: Download button */}
                      <View style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
                        {dlState === "idle" || dlState === "error" ? (
                          <Pressable
                            onPress={() => handleDownloadSource(src, idx)}
                            focusable={tvMode}
                            style={({ focused }) => [
                              d.downloadAction,
                              {
                                backgroundColor: "rgba(6, 182, 212, 0.18)",
                                borderColor: "rgba(6, 182, 212, 0.42)",
                              },
                              tvMode && tvFocusStyle(focused),
                            ]}
                          >
                            <Ionicons name="download-outline" size={14} color="#22d3ee" />
                            <Text style={[d.downloadActionText, { color: "#22d3ee" }]}>
                              {dlState === "error" ? "إعادة" : "تنزيل"}
                            </Text>
                          </Pressable>
                        ) : dlState === "downloading" ? (
                          <View style={d.dlPctBadge}>
                            <Text style={d.dlPctText}>{dlPct}%</Text>
                          </View>
                        ) : (
                          <View
                            style={{
                              flexDirection: "row",
                              alignItems: "center",
                              gap: 4,
                              paddingHorizontal: 10,
                              paddingVertical: 6,
                              borderRadius: 10,
                              backgroundColor: "rgba(16, 185, 129, 0.16)",
                              borderWidth: 1,
                              borderColor: "rgba(52, 211, 153, 0.35)",
                            }}
                          >
                            <Ionicons name="checkmark-circle" size={15} color="#34d399" />
                            <Text style={{ color: "#34d399", fontSize: 11, fontFamily: "Cairo_700Bold" }}>
                              تم التنزيل
                            </Text>
                          </View>
                        )}
                      </View>

                      {/* Right: Server info + Quality badge */}
                      <View
                        style={{
                          flex: 1,
                          flexDirection: "row",
                          alignItems: "center",
                          justifyContent: "flex-end",
                          gap: 9,
                        }}
                      >
                        <View
                          style={{
                            paddingHorizontal: 8,
                            paddingVertical: 2,
                            borderRadius: 7,
                            backgroundColor: "rgba(255,255,255,0.05)",
                            borderWidth: 1,
                            borderColor: "rgba(255,255,255,0.12)",
                          }}
                        >
                          <Text style={{ color: qColor, fontSize: 10, fontFamily: "Cairo_800ExtraBold" }}>
                            {qk.replace("p", "P")}
                          </Text>
                        </View>
                        <View style={{ alignItems: "flex-end" }}>
                          <Text
                            style={{
                              color: "#f8fafc",
                              fontSize: 12.5,
                              fontFamily: "Cairo_700Bold",
                              textAlign: "right",
                            }}
                          >
                            السيرفر {tag}
                          </Text>
                        </View>
                        <View
                          style={{
                            width: 32,
                            height: 32,
                            borderRadius: 9,
                            alignItems: "center",
                            justifyContent: "center",
                            backgroundColor: "rgba(6, 182, 212, 0.14)",
                            borderWidth: 1,
                            borderColor: "rgba(6, 182, 212, 0.32)",
                          }}
                        >
                          <Text style={{ color: "#22d3ee", fontSize: 10, fontFamily: "Cairo_800ExtraBold" }}>
                            {tag}
                          </Text>
                        </View>
                      </View>
                    </View>
                  );
                })}
              </View>
            </View>
          )}
        </ScrollView>
      </TvFocusGuideView>
    </View>
  );
}

function createWatchStyles(colors: ThemePalette) {
  return StyleSheet.create({
    tvFocusGuide: { flex: 1 },
    scrollContent: { padding: 14, paddingBottom: 60, gap: 14 },
    tvScrollContent: { paddingHorizontal: 28, paddingTop: 12, paddingBottom: 80, gap: 12 },
    header: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      paddingHorizontal: 12,
      paddingBottom: 10,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      gap: 8,
    },
    tvHeader: { paddingHorizontal: 28, paddingBottom: 10, gap: 8 },
    headerLeft: { flexDirection: ROW_RTL, alignItems: "center", gap: 5 },
    headerCenter: { flex: 1, alignItems: "flex-end" },
    headerBack: {
      width: 36,
      height: 36,
      borderRadius: 12,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      alignItems: "center",
      justifyContent: "center",
      flexShrink: 0,
    },
    headerTitle: {
      fontSize: 13,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    headerSub: {
      fontSize: 10,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      textAlign: "right",
    },
    tvHeaderTitle: { fontSize: 19, lineHeight: 27 },
    tvHeaderSub: { fontSize: 13, lineHeight: 20 },
    headerRefreshBtn: {
      width: 32,
      height: 32,
      borderRadius: 10,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      alignItems: "center",
      justifyContent: "center",
    },
    tvHeaderActionBtn: { width: 42, height: 42, borderRadius: 12 },
    epNavBtn: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 2,
      height: 32,
      borderRadius: 10,
      backgroundColor: colors.surfaceElevated,
      borderWidth: 1,
      borderColor: colors.border,
      paddingHorizontal: 8,
      justifyContent: "center",
    },
    tvEpNavBtn: { minWidth: 96, height: 44, borderRadius: 12, paddingHorizontal: 12, gap: 5 },
    epNavText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    tvEpNavText: { fontSize: 13, lineHeight: 20 },
    infoCard: {
      flexDirection: ROW_RTL,
      alignItems: "flex-start",
      gap: 14,
      backgroundColor: colors.card,
      borderRadius: 18,
      borderWidth: 1,
      borderColor: colors.border,
      padding: 14,
    },
    tvInfoCard: { padding: 10, paddingHorizontal: 16, gap: 12, borderRadius: 14 },
    infoPosterWrap: { width: 72, height: 102, position: "relative", alignItems: "center", justifyContent: "center" },
    tvInfoPosterWrap: { width: 56, height: 80 },
    infoPosterGlow: {
      position: "absolute",
      width: 80,
      height: 110,
      borderRadius: 20,
      backgroundColor: colors.accentSurface,
    },
    tvInfoPosterGlow: { width: 54, height: 76, borderRadius: 10 },
    infoPoster: { width: 72, height: 102, borderRadius: 12, borderWidth: 1, borderColor: colors.accentBorder },
    tvInfoPoster: { width: 56, height: 80, borderRadius: 10, borderWidth: 1 },
    infoMeta: { flex: 1, gap: 6, paddingTop: 1, alignItems: "flex-end" },
    infoTitle: {
      fontSize: 15,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "right",
      lineHeight: 22,
    },
    tvInfoTitle: { fontSize: 16, lineHeight: 22 },
    infoEpRow: { flexDirection: ROW_RTL, gap: 8, flexWrap: "wrap", marginTop: 4 },
    infoEpBadge: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 5,
      backgroundColor: colors.accentSurface,
      borderRadius: 8,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      paddingHorizontal: 10,
      paddingVertical: 5,
    },
    tvInfoEpBadge: { gap: 6, borderRadius: 10, paddingHorizontal: 12, paddingVertical: 7 },
    infoEpText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.accent },
    tvInfoEpText: { fontSize: 14, lineHeight: 21 },
    availabilityState: { alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 30 },
    serverScanAnimation: {
      width: 110,
      height: 110,
      borderRadius: 55,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    availabilityTitle: {
      fontSize: 15,
      fontFamily: "Cairo_800ExtraBold",
      color: colors.textPrimary,
      textAlign: "center",
    },
    availabilitySub: {
      fontSize: 12,
      lineHeight: 20,
      fontFamily: "Cairo_400Regular",
      color: colors.textSecondary,
      textAlign: "center",
      paddingHorizontal: 16,
    },
    srcSection: {
      backgroundColor: colors.card,
      borderRadius: 18,
      borderWidth: 1,
      borderColor: colors.border,
      overflow: "hidden",
    },
    empty: { alignItems: "center", justifyContent: "center", gap: 14, paddingVertical: 50 },
    emptyIcon: {
      width: 72,
      height: 72,
      borderRadius: 36,
      backgroundColor: colors.destructiveSurface,
      borderWidth: 1,
      borderColor: colors.destructiveBorder,
      alignItems: "center",
      justifyContent: "center",
    },
    emptyTitle: { fontSize: 15, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    emptySub: {
      fontSize: 12,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      textAlign: "center",
      lineHeight: 20,
      paddingHorizontal: 24,
    },
    retryBtn: {
      flexDirection: "row",
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.accentSurface,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      paddingHorizontal: 20,
      paddingVertical: 11,
    },
    retryBtnText: { fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.accent },
    qPill: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 4 },
    qPillText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.5 },
    tvQPill: { paddingHorizontal: 16, paddingVertical: 9, borderRadius: 11 },
    tvQPillText: { fontSize: 15, lineHeight: 22 },
    qPillDot: { width: 6, height: 6, borderRadius: 3 },
    webRow: { flexDirection: "row", alignItems: "center", paddingHorizontal: 10, paddingVertical: 11, gap: 7 },
    tvWebRow: { minHeight: 82, paddingHorizontal: 16, paddingVertical: 14, gap: 12, borderRadius: 14 },
    tvWebRowTag: { fontSize: 16, lineHeight: 24 },
    tvWebRowDot: { width: 12, height: 12, borderRadius: 6 },
    webRowBorder: { borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: colors.border },
    webRowActions: { flexDirection: "row", alignItems: "center", gap: 4, flexShrink: 0 },
    webRowTag: {
      flex: 1,
      minWidth: 0,
      flexShrink: 1,
      fontFamily: "Cairo_800ExtraBold",
      letterSpacing: 0.2,
      fontSize: 10,
      lineHeight: 16,
      color: colors.textPrimary,
    },
    webRowDot: { width: 8, height: 8, borderRadius: 4 },
    tvPlayBtn: { minWidth: 132, minHeight: 46, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 12, gap: 6 },
    tvActionText: { fontSize: 15, lineHeight: 23 },
    playBtnGreen: {
      flexDirection: "row",
      alignItems: "center",
      gap: 3,
      paddingHorizontal: 9,
      paddingVertical: 5,
      borderRadius: 9,
      backgroundColor: "rgba(16,185,129,0.88)",
      borderWidth: 1,
      borderColor: "rgba(52,211,153,0.35)",
    },
    playBtnGreenText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    downloadSection: {
      marginTop: 18,
      gap: 9,
      padding: 12,
      borderRadius: 18,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    downloadHeader: { flexDirection: "row", alignItems: "center", gap: 9 },
    downloadHeaderIcon: {
      width: 32,
      height: 32,
      borderRadius: 10,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    downloadTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.accent, textAlign: "right" },
    downloadSubtitle: { marginTop: 2, fontSize: 9, fontFamily: "Cairo_400Regular", color: colors.textMuted, textAlign: "right" },
    downloadRows: { borderRadius: 13, overflow: "hidden", backgroundColor: colors.surface },
    downloadRow: {
      minHeight: 52,
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "space-between",
      gap: 8,
      paddingHorizontal: 10,
      borderBottomWidth: StyleSheet.hairlineWidth,
      borderBottomColor: colors.border,
    },
    downloadAction: {
      minWidth: 78,
      height: 36,
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center",
      gap: 5,
      borderRadius: 10,
      backgroundColor: colors.primary,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    downloadActionText: { fontSize: 10, fontFamily: "Cairo_800ExtraBold", color: colors.primaryForeground },
    dlPctBadge: {
      minWidth: 40,
      height: 40,
      paddingHorizontal: 8,
      borderRadius: 12,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
      alignItems: "center",
      justifyContent: "center",
    },
    dlPctText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: colors.accent },
  });
}
