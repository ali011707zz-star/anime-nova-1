import React, { useState, useEffect, useRef, useMemo, useCallback } from "react";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, I18nManager,
} from "react-native";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";
import {
  isTvDevice,
  tvFocusStyle,
  TvFocusGuideView,
  TvPressable,
  useTvListFocusScroll, useTvMetrics } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { EpisodeDivider } from "@/components/EpisodeDivider";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { WatchlistStatusModal } from "@/components/WatchlistStatusModal";
import { getWatchlistStatusMeta, WatchlistStatus } from "@/utils/watchlistStatus";
const Pressable = TvPressable;

interface Season { label: string; arabicToonsId: string; episodes?: Episode[]; }
interface Episode { number: number; epId: string; url: string; thumbnail?: string; videoId?: string; pref?: string; watchUrl?: string; }
type CarateenProvider = "sp" | "carateen" | "sd2";

function apiBase(): string {
  return getBaseUrl().replace(/\/$/, "");
}

function thumbSrc(t?: string): string | null {
  if (!t) return null;
  const base = apiBase();
  if (t.startsWith("/api/")) return `${base}${t}`;
  if (/^https?:\/\//i.test(t)) {
    const tmdbMatch = t.match(
      /^https?:\/\/image\.tmdb\.org\/t\/p\/(?:w\d+|original)\/([A-Za-z0-9_-]+\.(?:jpe?g|png|webp))(?:\?[^#]*)?(?:#.*)?$/i,
    );
    if (tmdbMatch) {
      return `${base}/api/source-catalog/tmdb-poster/w342/${tmdbMatch[1]}`;
    }
    if (/^https?:\/\/watch-\d+\.stardima\.com\.im\/storage\//i.test(t)) {
      return `${base}/api/dubbed/sd2/poster?url=${encodeURIComponent(t)}`;
    }
    if (/^https?:\/\/(?:(?:www\.)?carateen\.tv|cdn\.spacetoongo\.com)\//i.test(t)) {
      return `${base}/api/dubbed/carateen/poster?url=${encodeURIComponent(t)}`;
    }
    try {
      const url = new URL(t);
      const host = url.hostname.toLowerCase();
      const filename = url.pathname.split("/").pop() || "";
      if (
        (host === "arabic-toons.com" || host === "www.arabic-toons.com") &&
        url.pathname.startsWith("/images/anime/") &&
        filename
      ) {
        return `${base}/api/dubbed/img?f=${encodeURIComponent(filename)}`;
      }
    } catch { /* keep valid external image URLs as-is */ }
    return t;
  }
  const f = t.split("?f=")[1] || t.split(/[?#]/)[0].split("/").pop();
  return f ? `${base}/api/dubbed/img?f=${encodeURIComponent(f)}` : null;
}

function EpisodeArtwork({
  thumbnailUri,
  fallbackUri,
}: {
  thumbnailUri: string | null;
  fallbackUri: string | null;
}) {
  const [failedUris, setFailedUris] = useState<string[]>([]);
  const imageCandidates = [...new Set([thumbnailUri, fallbackUri].filter((uri): uri is string => Boolean(uri)))];
  const uri = imageCandidates.find(candidate => !failedUris.includes(candidate));

  if (!uri) {
    return (
      <View style={styles.epThumbPlaceholder}>
        <Ionicons name="play-circle-outline" size={22} color="rgba(255,255,255,0.3)" />
      </View>
    );
  }

  return (
    <Image
      source={{ uri }}
      style={StyleSheet.absoluteFill}
      resizeMode="cover"
      resizeMethod="resize"
      fadeDuration={0}
      onError={() => setFailedUris(current => current.includes(uri) ? current : [...current, uri])}
    />
  );
}

const _dubbedEpMemCache = new Map<string, { seasons?: Season[]; episodes: Episode[] }>();

export default function DubbedDetailScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { tv: tvMode } = useTvMetrics();

  const {
    id,
    title: titleParam,
    seasons: seasonsParam,
    img,
    provider: providerParam,
    showId: showIdParam,
    slug: slugParam,
    isMovie: isMovieParam,
    languageLabel: languageLabelParam,
  } = useLocalSearchParams<{
    id: string; title: string; seasons: string; img: string;
    provider?: string; showId?: string; slug?: string; isMovie?: string; languageLabel?: string;
  }>();

  const title = titleParam || decodeURIComponent(id || "");
  const providerValue = Array.isArray(providerParam) ? providerParam[0] : providerParam;
  const carateenProvider: CarateenProvider | null =
    providerValue === "sp" || providerValue === "carateen" || providerValue === "sd2" ? providerValue : null;
  const showIdValue = Array.isArray(showIdParam) ? showIdParam[0] : showIdParam;
  const slugValue = Array.isArray(slugParam) ? slugParam[0] : slugParam;
  const sd2Slug = (slugValue || showIdValue || "").trim();
  const showId = Number(showIdValue);
  const isSd2Entry = carateenProvider === "sd2" && Boolean(sd2Slug);
  const isCarateenEntry = (carateenProvider === "sp" || carateenProvider === "carateen") && Number.isSafeInteger(showId) && showId > 0;
  const isExternalProvider = isCarateenEntry || isSd2Entry;
  const isMovie = (Array.isArray(isMovieParam) ? isMovieParam[0] : isMovieParam) === "1";
  const langLabelStr = (Array.isArray(languageLabelParam) ? languageLabelParam[0] : languageLabelParam) || "";
  const legacySeasons: Season[] = (() => {
    if (!seasonsParam) return [];
    try {
      return JSON.parse(decodeURIComponent(seasonsParam));
    } catch {
      try { return JSON.parse(seasonsParam); } catch { return []; }
    }
  })();
  const [sd2Seasons, setSd2Seasons] = useState<Season[]>([]);
  const [epDescOrder, setEpDescOrder] = useState(false);
  const seasons: Season[] = isSd2Entry
    ? (sd2Seasons.length > 0 ? sd2Seasons : [{ label: isMovie ? "الفيلم" : "قائمة الحلقات", arabicToonsId: `sd2:${sd2Slug}` }])
    : isCarateenEntry
      ? [{ label: "قائمة الحلقات", arabicToonsId: `${carateenProvider}:${showId}` }]
      : legacySeasons;
  const imgSrc = img ? (() => { try { return decodeURIComponent(img); } catch { return img; } })() : null;
  const posterSrc = imgSrc?.startsWith("http") ? imgSrc : (imgSrc ? `${apiBase()}${imgSrc}` : null);
  const { isFavorite, setFavoriteStatus, removeFavorite, getFavoriteStatus } = useApp();
  const favKey = useMemo(() => {
    if (isSd2Entry) return `sd2:${sd2Slug}`;
    if (isCarateenEntry && carateenProvider) return `${carateenProvider}:${showId}`;
    return `legacy:${String(id || title)}`;
  }, [isSd2Entry, sd2Slug, isCarateenEntry, carateenProvider, showId, id, title]);
  const numericFavId = useMemo(() => getWatchContentId("dubbed", favKey), [favKey]);
  const isFav = isFavorite(numericFavId);
  const currentWatchStatus = getFavoriteStatus(numericFavId);
  const watchStatusMeta = isFav ? getWatchlistStatusMeta(currentWatchStatus) : null;
  const [showWatchlist, setShowWatchlist] = useState(false);

  const [selSeason, setSelSeason] = useState(0);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [showSeasonDrop, setShowSeasonDrop] = useState(false);
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

  const curSeason = seasons[selSeason];

  useEffect(() => {
    if (!isSd2Entry) return;
    const ctrl = new AbortController();
    const cacheKey = `sd2:${sd2Slug}`;
    const cached = _dubbedEpMemCache.get(cacheKey);
    if (cached?.seasons?.length) {
      setSd2Seasons(cached.seasons);
      setEpisodes(cached.seasons[0].episodes || []);
      setEpLoading(false);
    } else {
      setEpLoading(true);
      setEpisodes([]);
      setSd2Seasons([]);
    }
    setSelSeason(0);
    const endpoint = `${apiBase()}/api/dubbed/sd2/episodes?slug=${encodeURIComponent(sd2Slug)}&mediaType=${isMovie ? "movie" : "series"}`;
    fetch(endpoint, { signal: ctrl.signal })
      .then(r => { if (!r.ok) throw new Error(`sd2_episodes_${r.status}`); return r.json(); })
      .then(d => {
        if (ctrl.signal.aborted) return;
        const rawSeasons = Array.isArray(d.seasons) ? d.seasons : [];
        const mappedSeasons: Season[] = rawSeasons.map((s: any, sIdx: number) => {
          const epsRaw = Array.isArray(s.episodes) ? s.episodes : [];
          const mappedEps: Episode[] = epsRaw.map((raw: any, idx: number) => ({
            number: Number(raw.number || idx + 1) || (idx + 1),
            epId: String(raw.epId || raw.id || idx + 1),
            url: String(raw.url || `carateen://sd2/${sd2Slug}/${raw.epId || idx + 1}`),
            thumbnail: String(raw.thumbnail || d.image || ""),
            pref: String(raw.title || "").trim(),
            watchUrl: String(raw.watchUrl || ""),
          }));
          return {
            label: String(s.label || `الموسم ${sIdx + 1}`),
            arabicToonsId: `sd2:${sd2Slug}:s${s.seasonNumber ?? sIdx + 1}`,
            episodes: mappedEps,
          };
        });
        if (mappedSeasons.length > 0) {
          _dubbedEpMemCache.set(`sd2:${sd2Slug}`, { seasons: mappedSeasons, episodes: mappedSeasons[0].episodes || [] });
          setSd2Seasons(mappedSeasons);
          setEpisodes(mappedSeasons[0].episodes || []);
        } else {
          setEpisodes([]);
        }
        setEpLoading(false);
      })
      .catch((e) => { if (e?.name !== "AbortError") setEpLoading(false); });
    return () => ctrl.abort();
  }, [isSd2Entry, sd2Slug, isMovie]);

  useEffect(() => {
    if (isSd2Entry) {
      if (sd2Seasons[selSeason]?.episodes) {
        setEpisodes(sd2Seasons[selSeason].episodes || []);
      }
      return;
    }
    if (!curSeason) return;
    const ctrl = new AbortController();
    const cacheKey = isCarateenEntry ? `${carateenProvider}:${showId}` : `at:${curSeason.arabicToonsId}`;
    const cached = _dubbedEpMemCache.get(cacheKey);
    if (cached?.episodes?.length) {
      setEpisodes(cached.episodes);
      setEpLoading(false);
    } else {
      setEpLoading(true);
      setEpisodes([]);
    }
    const endpoint = isCarateenEntry
      ? `${apiBase()}/api/dubbed/carateen/episodes?provider=${carateenProvider}&showId=${showId}`
      : `${apiBase()}/api/dubbed/episodes?series=${encodeURIComponent(curSeason.arabicToonsId)}`;
    fetch(endpoint, { signal: ctrl.signal })
      .then(r => { if (!r.ok) throw new Error(`episodes_${r.status}`); return r.json(); })
      .then(d => {
        if (!ctrl.signal.aborted) {
          const rawList = Array.isArray(d.episodes) ? d.episodes : [];
          const normalized: Episode[] = rawList.map((raw: any, idx: number) => {
            const epId = String(raw.epId || raw.id || "");
            const number = Number(raw.number || raw.order_id || idx + 1) || (idx + 1);
            const url = raw.url || (isCarateenEntry && epId ? `carateen://${carateenProvider}/${showId}/${epId}` : "");
            const thumbnail = raw.thumbnail || raw.cover_full_path || raw.cover || "";
            const videoId = raw.video_id ? String(raw.video_id) : undefined;
            const pref = String(raw.pref || raw.title || "").trim();
            return { number, epId, url, thumbnail, videoId, pref };
          });
          _dubbedEpMemCache.set(cacheKey, { episodes: normalized });
          setEpisodes(normalized);
          setEpLoading(false);
        }
      })
      .catch((e) => { if (e?.name !== "AbortError") setEpLoading(false); });
    return () => ctrl.abort();
  }, [curSeason?.arabicToonsId, isCarateenEntry, isSd2Entry, sd2Seasons, selSeason, carateenProvider, showId]);

  const displayedEpisodes = epDescOrder ? [...episodes].reverse() : episodes;

  const watchedStorageKey = `watched-dubbed:${isSd2Entry ? `sd2:${sd2Slug}` : isCarateenEntry ? `${carateenProvider}:${showId}` : String(id || title)}:s${selSeason}`;
  const [watchedSet, setWatchedSet] = useState<Set<number>>(new Set());

  useEffect(() => {
    let active = true;
    void AsyncStorage.getItem(watchedStorageKey)
      .then((raw) => {
        if (!active) return;
        const arr = raw ? JSON.parse(raw) : [];
        setWatchedSet(new Set(Array.isArray(arr) ? arr.map(Number).filter(Number.isFinite) : []));
      })
      .catch(() => {
        if (active) setWatchedSet(new Set());
      });
    return () => { active = false; };
  }, [watchedStorageKey]);

  const toggleWatched = useCallback((epNum: number) => {
    setWatchedSet((prev) => {
      const next = new Set(prev);
      if (next.has(epNum)) next.delete(epNum);
      else next.add(epNum);
      void AsyncStorage.setItem(watchedStorageKey, JSON.stringify([...next])).catch(() => {});
      return next;
    });
  }, [watchedStorageKey]);

  const openWatch = (ep: Episode) => {
    setWatchedSet((prev) => {
      if (prev.has(ep.number)) return prev;
      const next = new Set(prev);
      next.add(ep.number);
      void AsyncStorage.setItem(watchedStorageKey, JSON.stringify([...next])).catch(() => {});
      return next;
    });
    const at = seasons.map(s => s.arabicToonsId).join(",");
    router.push({
      pathname: "/dubbed/watch",
      params: {
        epUrl: ep.url,
        series: isSd2Entry
          ? `sd2:${sd2Slug}`
          : isCarateenEntry
            ? `${carateenProvider}:${showId}`
            : curSeason?.arabicToonsId || "",
        title,
        ep: String(ep.number),
        totalEps: String(episodes.length || ep.number),
        season: curSeason?.label || "الموسم 1",
        poster: imgSrc || "",
        at: isSd2Entry ? `sd2:${sd2Slug}` : isCarateenEntry ? `${carateenProvider}:${showId}` : at,
        provider: isExternalProvider ? carateenProvider || "" : "",
        showId: isSd2Entry ? sd2Slug : isCarateenEntry ? String(showId) : "",
        slug: isSd2Entry ? sd2Slug : "",
        episodeId: isExternalProvider ? ep.epId : "",
        videoId: isCarateenEntry ? (ep.videoId || "") : "",
        watchUrl: isSd2Entry ? (ep.watchUrl || "") : "",
        isMovie: isMovie ? "1" : "0",
      },
    });
  };

  const renderEp = ({ item: ep, index }: { item: Episode; index: number }) => {
    const thumb = thumbSrc(ep.thumbnail);
    const isWatched = watchedSet.has(ep.number);
    return (
      <Pressable
        onPress={() => openWatch(ep)}
        focusable={tvMode}
        hasTVPreferredFocus={tvMode && index === 0}
        onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
        style={({ pressed, focused }) => [
          styles.epRow,
          { backgroundColor: colors.card, borderColor: isWatched ? "rgba(16,185,129,0.34)" : colors.border, opacity: pressed ? 0.78 : 1 },
          tvMode && tvFocusStyle(focused),
        ]}
      >
        <View style={[styles.epThumb, { backgroundColor: colors.surfaceElevated }]}>
          <EpisodeArtwork
            key={`${curSeason?.arabicToonsId || ""}:${ep.epId || ep.number}:${thumb || ""}:${posterSrc || ""}`}
            thumbnailUri={thumb}
            fallbackUri={posterSrc}
          />
          <View style={styles.epPlayOverlay}>
            <View style={[styles.epPlayBtn, isWatched && { backgroundColor: "#10B981" }]}>
              <Ionicons name={isWatched ? "checkmark" : "play"} size={isWatched ? 14 : 12} color="#fff" style={isWatched ? undefined : { marginLeft: 1 }} />
            </View>
          </View>
          <View style={styles.epNumBadge}>
            <Text style={styles.epNumText}>{ep.number}</Text>
          </View>
        </View>
        <View style={styles.epInfo}>
          <Text style={[styles.epTitle, { color: colors.textPrimary }]}>الحلقة {ep.number}</Text>
          <Text style={[styles.epSub, { color: colors.textSecondary }]}>
            {ep.pref || curSeason?.label || `الموسم ${selSeason + 1}`}
          </Text>
          {isWatched ? (
            <View style={styles.watchedBadge}>
              <Text style={styles.watchedBadgeText}>تمت المشاهدة</Text>
            </View>
          ) : null}
        </View>
        <Pressable
          onPress={(e: any) => {
            e?.stopPropagation?.();
            toggleWatched(ep.number);
          }}
          hitSlop={8}
          accessibilityRole="button"
          accessibilityLabel={isWatched ? `إلغاء مشاهدة الحلقة ${ep.number}` : `تحديد الحلقة ${ep.number} كمشاهدة`}
          style={[
            styles.eyeBtn,
            { backgroundColor: colors.input, borderColor: colors.border },
            isWatched && styles.eyeBtnWatched,
          ]}
        >
          <Ionicons
            name={isWatched ? "eye" : "eye-outline"}
            size={18}
            color={isWatched ? "#10B981" : colors.textMuted}
          />
        </Pressable>
        <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
      </Pressable>
    );
  };

  const handleSelectWatchStatus = useCallback(async (status: WatchlistStatus) => {
    const routeParams: Record<string, string> = {
      id: isSd2Entry
        ? `sd2-${sd2Slug}`
        : isCarateenEntry && carateenProvider
          ? `${carateenProvider}-${showId}`
          : String(id || title),
    };
    if (isSd2Entry) {
      routeParams.provider = "sd2";
      routeParams.slug = sd2Slug;
    } else if (isCarateenEntry && carateenProvider) {
      routeParams.provider = carateenProvider;
      routeParams.showId = String(showId);
    } else if (legacySeasons.length > 0) {
      routeParams.seasons = JSON.stringify(legacySeasons);
    }
    if (isMovie) routeParams.isMovie = "1";
    if (langLabelStr) routeParams.languageLabel = langLabelStr;
    if (imgSrc) routeParams.img = imgSrc;

    await setFavoriteStatus({
      id: numericFavId,
      contentKind: "dubbed",
      contentKey: favKey,
      routeParams,
      title,
      english: title,
      titleAr: title,
      thumbnail: posterSrc || "",
      episodes: episodes.length || null,
      score: null,
      addedAt: Date.now(),
    }, status);
  }, [
    isSd2Entry,
    sd2Slug,
    isCarateenEntry,
    carateenProvider,
    showId,
    id,
    title,
    legacySeasons,
    isMovie,
    langLabelStr,
    imgSrc,
    setFavoriteStatus,
    numericFavId,
    favKey,
    posterSrc,
    episodes.length,
  ]);

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* Header */}
      <View style={[styles.header, { borderBottomColor: colors.border }]}>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} focusable={tvMode}
          style={({ focused }) => [styles.backBtn, { backgroundColor: colors.input, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="chevron-forward" size={20} color={colors.textSecondary} />
        </Pressable>
        <Text numberOfLines={1} style={[styles.headerTitle, { color: colors.textPrimary }]}>{title}</Text>
        <Pressable
          onPress={() => setShowWatchlist(true)}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel={watchStatusMeta ? watchStatusMeta.label : "إضافة إلى قائمتي"}
          style={({ focused }) => [
            styles.backBtn,
            { backgroundColor: colors.input, borderColor: colors.border },
            watchStatusMeta && { backgroundColor: watchStatusMeta.bg, borderColor: watchStatusMeta.border },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name={(watchStatusMeta ? watchStatusMeta.activeIcon : "bookmark-outline") as any} size={18} color={watchStatusMeta ? watchStatusMeta.color : colors.textPrimary} />
        </Pressable>
      </View>

      <TvFocusGuideView autoFocus={tvMode} style={styles.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          data={displayedEpisodes}
          keyExtractor={ep => ep.epId || String(ep.number)}
          renderItem={renderEp}
          onViewableItemsChanged={episodeFocusScroll.onViewableItemsChanged}
          viewabilityConfig={episodeFocusScroll.viewabilityConfig}
          removeClippedSubviews={false}
          initialNumToRender={tvMode ? 12 : 8}
          maxToRenderPerBatch={tvMode ? 10 : 6}
          windowSize={tvMode ? 7 : Platform.OS === "android" ? 4 : 5}
          onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
            offset: Math.max(0, index * (tvMode ? 130 : 80)),
            animated: false,
          })}
          ListHeaderComponent={() => (
          <View>
            {/* Poster & Hero */}
            <View style={styles.heroRow}>
              <View style={[styles.poster, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                {posterSrc ? (
                  <Image
                    source={{ uri: posterSrc }}
                    style={StyleSheet.absoluteFill}
                    resizeMode="cover"
                    resizeMethod="resize"
                    fadeDuration={0}
                  />
                ) : (
                  <View style={styles.posterPlaceholder}>
                    <Text style={{ fontSize: 36 }}>📺</Text>
                  </View>
                )}
              </View>
              <View style={styles.heroInfo}>
                <Text style={[styles.heroTitle, { color: colors.textPrimary }]}>{title}</Text>
                <View style={[
                  styles.badge,
                  langLabelStr === "مترجم" && { backgroundColor: "rgba(239,68,68,0.16)", borderColor: "rgba(239,68,68,0.35)" },
                ]}>
                  <Ionicons name="volume-high-outline" size={11} color={langLabelStr === "مترجم" ? "#EF4444" : "#10B981"} />
                  <Text style={[styles.badgeText, langLabelStr === "مترجم" && { color: "#EF4444" }]}>
                    {langLabelStr || (isCarateenEntry && carateenProvider === "sp" ? "سبيستون مدبلج" : "مدبلج عربي")}
                  </Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={[styles.epCount, { color: colors.textSecondary }]}>
                    {isMovie && episodes.length === 1 ? "فيلم كامل" : `${episodes.length} حلقة`}
                  </Text>
                )}
              </View>
            </View>

            {/* Season pills */}
            {seasons.length > 1 && (
              <ScrollView
        focusable={false}
                horizontal
                showsHorizontalScrollIndicator={false}
                contentContainerStyle={styles.seasonTabsRow}
              >
                {seasons.map((s, i) => {
                  const active = i === selSeason;
                  return (
                    <Pressable
                      key={s.arabicToonsId}
                      onPress={() => setSelSeason(i)}
                      focusable={tvMode}
                      style={({ focused }) => [
                        styles.seasonPill,
                        { backgroundColor: colors.surface, borderColor: colors.border },
                        active && styles.seasonPillActive,
                        tvMode && tvFocusStyle(focused),
                      ]}
                    >
                      <Text style={[styles.seasonPillText, { color: active ? "#fff" : colors.textSecondary }]}>
                        {s.label}
                      </Text>
                    </Pressable>
                  );
                })}
              </ScrollView>
            )}

            <View style={[styles.epSectionHeader, { justifyContent: "space-between" }]}>
              <Text style={[styles.epSectionTitle, { color: colors.textPrimary }]}>
                {isMovie && episodes.length <= 1 ? "المشاهدة" : `الحلقات ${episodes.length > 0 ? `(${episodes.length})` : ""}`}
              </Text>
              {episodes.length > 1 && (
                <Pressable
                  onPress={() => setEpDescOrder(v => !v)}
                  focusable={tvMode}
                  style={({ focused }) => [
                    {
                      flexDirection: "row",
                      alignItems: "center",
                      gap: 4,
                      paddingHorizontal: 10,
                      paddingVertical: 4,
                      borderRadius: 10,
                      backgroundColor: colors.surface,
                      borderWidth: 1,
                      borderColor: colors.border,
                    },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Ionicons name="swap-vertical" size={13} color="#10B981" />
                  <Text style={{ color: colors.textSecondary, fontSize: 11, fontFamily: "Cairo_700Bold" }}>
                    {epDescOrder ? "الأحدث أولاً" : "من الحلقة 1"}
                  </Text>
                </Pressable>
              )}
            </View>
            {epLoading && (
              <View style={styles.epLoadingCenter}>
                <ActivityIndicator color="#10B981" />
              </View>
            )}
          </View>
        )}
          contentContainerStyle={[{ paddingBottom: 100 }, tvMode && styles.tvListContent]}
          ListEmptyComponent={!epLoading ? (
            <Text style={[styles.emptyText, { color: colors.textMuted }]}>لا توجد حلقات</Text>
          ) : null}
        />
      </TvFocusGuideView>

      <WatchlistStatusModal
        visible={showWatchlist}
        title={title}
        thumbnail={posterSrc || undefined}
        currentStatus={currentWatchStatus}
        isSaved={isFav}
        onSelect={(status) => void handleSelectWatchStatus(status)}
        onRemove={isFav ? () => void removeFavorite(numericFavId) : undefined}
        onClose={() => setShowWatchlist(false)}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  tvFocusGuide: { flex: 1 },
  tvListContent: { paddingHorizontal: 56, paddingBottom: 140 },
  header: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 8,
    paddingHorizontal: 12, paddingTop: 7, paddingBottom: 7,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  backBtn: {
    width: 32, height: 32, borderRadius: 9,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: {
    flex: 1, color: "#fff", fontSize: 14,
    fontWeight: "800", fontFamily: "Cairo_700Bold",
    textAlign: "right", writingDirection: "rtl",
  },
  heroRow: { flexDirection: ROW_RTL, gap: 10, paddingHorizontal: 14, paddingVertical: 8, alignItems: "center" },
  poster: {
    width: 68, aspectRatio: 2 / 3, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
  },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  heroInfo: { flex: 1, alignItems: ALIGN_RIGHT, gap: 4 },
  heroTitle: { color: "#fff", fontSize: 15, lineHeight: 21, fontWeight: "900", fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  badge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    paddingHorizontal: 8, paddingVertical: 2,
    backgroundColor: "rgba(16,185,129,0.16)",
    borderRadius: 10, borderWidth: 1, borderColor: "rgba(16,185,129,0.35)",
  },
  badgeText: { color: "#10B981", fontSize: 10, fontFamily: "Cairo_700Bold" },
  epCount: { color: "rgba(255,255,255,0.5)", fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  seasonTabsRow: {
    paddingHorizontal: 14,
    paddingBottom: 6,
    gap: 7,
    flexDirection: ROW_RTL,
  },
  seasonPill: {
    paddingHorizontal: 14,
    paddingVertical: 6,
    borderRadius: 18,
    borderWidth: 1,
  },
  seasonPillActive: {
    backgroundColor: "#10B981",
    borderColor: "#10B981",
  },
  seasonPillText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  epSectionHeader: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 8,
    paddingHorizontal: 14, paddingTop: 4, paddingBottom: 6,
  },
  epSectionTitle: { color: "#fff", fontSize: 14, fontWeight: "900", fontFamily: "Cairo_700Bold", textAlign: "right" },
  epLoadingCenter: { paddingVertical: 24, alignItems: "center" },
  epRow: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 12,
    marginHorizontal: 14, marginVertical: 5,
    paddingHorizontal: 12, paddingVertical: 10,
    borderRadius: 16, borderWidth: 1,
  },
  epThumb: {
    width: 96, height: 58, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)", overflow: "hidden", position: "relative",
  },
  epThumbPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  epPlayOverlay: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(0,0,0,0.25)" },
  epPlayBtn: {
    width: 28, height: 28, borderRadius: 14,
    backgroundColor: "rgba(16,185,129,0.92)", alignItems: "center", justifyContent: "center",
  },
  epNumBadge: {
    position: "absolute", bottom: 4, right: 5,
    backgroundColor: "rgba(0,0,0,0.75)", borderRadius: 6,
    paddingHorizontal: 5, paddingVertical: 1,
  },
  epNumText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  epInfo: { flex: 1, alignItems: ALIGN_RIGHT },
  epTitle: { color: "#fff", fontSize: 14, fontWeight: "700", fontFamily: "Cairo_700Bold", textAlign: "right" },
  epSub: { fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
  watchedBadge: { marginTop: 4, alignSelf: ALIGN_RIGHT, paddingHorizontal: 8, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(16,185,129,0.14)", borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  watchedBadgeText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
  eyeBtn: { width: 34, height: 34, borderRadius: 17, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  eyeBtnWatched: { backgroundColor: "rgba(16,185,129,0.14)", borderColor: "rgba(16,185,129,0.4)" },
  emptyText: {
    color: "rgba(255,255,255,0.3)", textAlign: "center",
    fontFamily: "Cairo_400Regular", paddingVertical: 32,
  },
});
