import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, I18nManager,
} from "react-native";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";
import { Ionicons } from "@expo/vector-icons";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";
import {
  isTvDevice,
  tvFocusStyle,
  TvFocusGuideView,
  TvPressable,
  useTvListFocusScroll,
} from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { EpisodeDivider } from "@/components/EpisodeDivider";

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
  if (t.startsWith("/api/dubbed/img")) return `${base}${t}`;
  if (/^https?:\/\//i.test(t)) {
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

async function getWatchedSet(storageKey: string): Promise<Set<number>> {
  try {
    const raw = await AsyncStorage.getItem(storageKey);
    return new Set(raw ? JSON.parse(raw) : []);
  } catch {
    return new Set();
  }
}

async function saveWatchedSet(storageKey: string, watched: Set<number>) {
  try {
    await AsyncStorage.setItem(storageKey, JSON.stringify([...watched]));
  } catch { /* ignore storage errors */ }
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

export default function DubbedDetailScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const tvMode = isTvDevice();
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
    try { return JSON.parse(decodeURIComponent(seasonsParam || "[]")); } catch { return []; }
  })();
  const [sd2Seasons, setSd2Seasons] = useState<Season[]>([]);
  const [epDescOrder, setEpDescOrder] = useState(false);
  const seasons: Season[] = isSd2Entry
    ? (sd2Seasons.length > 0 ? sd2Seasons : [{ label: isMovie ? "الفيلم" : "قائمة الحلقات", arabicToonsId: `sd2:${sd2Slug}` }])
    : isCarateenEntry
      ? [{ label: "قائمة الحلقات", arabicToonsId: `${carateenProvider}:${showId}` }]
      : legacySeasons;
  const imgSrc = img ? decodeURIComponent(img) : null;
  const posterSrc = imgSrc?.startsWith("http") ? imgSrc : (imgSrc ? `${apiBase()}${imgSrc}` : null);

  const [selSeason, setSelSeason] = useState(0);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [watched, setWatched] = useState<Set<number>>(new Set());
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

  const curSeason = seasons[selSeason];
  const seriesKey = isSd2Entry
    ? `sd2:${sd2Slug}`
    : isCarateenEntry
      ? `${carateenProvider}:${showId}`
      : (curSeason?.arabicToonsId || id || "");
  const watchedStorageKey = `watched-dubbed-${seriesKey}`;

  const syncWatched = useCallback(() => {
    if (!seriesKey) return;
    let active = true;
    void getWatchedSet(watchedStorageKey).then((stored) => {
      if (!active) return;
      const merged = new Set(stored);
      for (const item of watchHistory) {
        if (item.contentKind === "dubbed" && item.contentKey === seriesKey && Number(item.ep) > 0) {
          merged.add(Number(item.ep));
        }
      }
      setWatched(merged);
    });
    return () => { active = false; };
  }, [seriesKey, watchedStorageKey, watchHistory]);

  useEffect(() => {
    return syncWatched();
  }, [syncWatched]);

  useFocusEffect(useCallback(() => {
    return syncWatched();
  }, [syncWatched]));

  const toggleWatched = useCallback((epNum: number) => {
    if (!seriesKey) return;
    setWatched((prev) => {
      const next = new Set(prev);
      if (next.has(epNum)) next.delete(epNum);
      else next.add(epNum);
      void saveWatchedSet(watchedStorageKey, next);
      return next;
    });
  }, [seriesKey, watchedStorageKey]);

  useEffect(() => {
    if (!isSd2Entry) return;
    const ctrl = new AbortController();
    setEpLoading(true);
    setEpisodes([]);
    setSd2Seasons([]);
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
    setEpLoading(true);
    setEpisodes([]);
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
          setEpisodes(normalized);
          setEpLoading(false);
        }
      })
      .catch((e) => { if (e?.name !== "AbortError") setEpLoading(false); });
    return () => ctrl.abort();
  }, [curSeason?.arabicToonsId, isCarateenEntry, isSd2Entry, sd2Seasons, selSeason, carateenProvider, showId]);

  const displayedEpisodes = epDescOrder ? [...episodes].reverse() : episodes;

  const openWatch = (ep: Episode) => {
    if (seriesKey) {
      setWatched((prev) => {
        const next = new Set(prev);
        next.add(ep.number);
        void saveWatchedSet(watchedStorageKey, next);
        return next;
      });
    }
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

  const watchedCount = useMemo(
    () => episodes.reduce((acc, ep) => acc + (watched.has(ep.number) ? 1 : 0), 0),
    [episodes, watched],
  );

  const renderEp = ({ item: ep, index }: { item: Episode; index: number }) => {
    const thumb = thumbSrc(ep.thumbnail);
    const isEpWatched = watched.has(ep.number);
    return (
      <View
        style={[
          styles.epRow,
          {
            backgroundColor: colors.card,
            borderColor: isEpWatched ? "rgba(16,185,129,0.28)" : colors.border,
          },
        ]}
      >
        <Pressable
          onPress={() => openWatch(ep)}
          focusable={tvMode}
          hasTVPreferredFocus={tvMode && index === 0}
          onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
          style={({ pressed, focused }) => [
            styles.epMain,
            { opacity: pressed ? 0.78 : 1 },
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
              <View style={[styles.epPlayBtn, isEpWatched && styles.epPlayBtnWatched]}>
                <Ionicons
                  name={isEpWatched ? "checkmark" : "play"}
                  size={isEpWatched ? 15 : 12}
                  color="#fff"
                  style={isEpWatched ? undefined : { marginLeft: 1 }}
                />
              </View>
            </View>
            <View style={styles.epNumBadge}>
              <Text style={styles.epNumText}>{ep.number}</Text>
            </View>
          </View>
          <View style={styles.epInfo}>
            <View style={styles.epTitleRow}>
              <Text style={[styles.epTitle, { color: colors.textPrimary }]}>الحلقة {ep.number}</Text>
              {isEpWatched ? (
                <View style={styles.watchedBadge}>
                  <Text style={styles.watchedBadgeText}>تمت المشاهدة</Text>
                </View>
              ) : null}
            </View>
            <Text style={[styles.epSub, { color: colors.textSecondary }]}>
              {ep.pref || curSeason?.label || `الموسم ${selSeason + 1}`}
            </Text>
          </View>
        </Pressable>

        <View style={styles.epActions}>
          <Pressable
            onPress={() => toggleWatched(ep.number)}
            onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
            focusable={tvMode}
            style={({ focused }) => [
              styles.eyeBtn,
              { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
              isEpWatched && styles.eyeBtnWatched,
              tvMode && tvFocusStyle(focused),
            ]}
            accessibilityRole="button"
            accessibilityLabel={isEpWatched ? `إلغاء مشاهدة الحلقة ${ep.number}` : `تحديد الحلقة ${ep.number} كمشاهدة`}
          >
            <Ionicons
              name={isEpWatched ? "eye-outline" : "eye-off-outline"}
              size={tvMode ? 17 : 16}
              color={isEpWatched ? "#10B981" : colors.textMuted}
            />
          </Pressable>
        </View>
      </View>
    );
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* Header */}
      <View style={[styles.header, { borderBottomColor: colors.border }]}>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} focusable={tvMode}
          style={({ focused }) => [styles.backBtn, { backgroundColor: colors.input, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="chevron-forward" size={20} color={colors.textSecondary} />
        </Pressable>
        <Text numberOfLines={1} style={[styles.headerTitle, { color: colors.textPrimary }]}>{title}</Text>
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
                <View style={styles.heroMetaRow}>
                  <View style={[
                    styles.badge,
                    langLabelStr === "مترجم" && { backgroundColor: "rgba(239,68,68,0.16)", borderColor: "rgba(239,68,68,0.35)" },
                  ]}>
                    <Ionicons name="volume-high-outline" size={11} color={langLabelStr === "مترجم" ? "#EF4444" : "#10B981"} />
                    <Text style={[styles.badgeText, langLabelStr === "مترجم" && { color: "#EF4444" }]}>
                      {langLabelStr || (isCarateenEntry && carateenProvider === "sp" ? "سبيستون مدبلج" : "مدبلج عربي")}
                    </Text>
                  </View>
                  {watchedCount > 0 ? (
                    <View style={styles.badge}>
                      <Text style={styles.badgeText}>تمت مشاهدة {watchedCount}</Text>
                    </View>
                  ) : null}
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
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  tvFocusGuide: { flex: 1 },
  tvListContent: { paddingHorizontal: 56, paddingBottom: 140 },
  header: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 10,
    paddingHorizontal: 16, paddingTop: 12, paddingBottom: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  backBtn: {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: {
    flex: 1, color: "#fff", fontSize: 15,
    fontWeight: "800", fontFamily: "Cairo_700Bold",
    textAlign: "right", writingDirection: "rtl",
  },
  heroRow: { flexDirection: ROW_RTL, gap: 14, padding: 16, alignItems: "center" },
  poster: {
    width: 92, aspectRatio: 2 / 3, borderRadius: 14,
    backgroundColor: "rgba(255,255,255,0.05)",
    overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
  },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  heroInfo: { flex: 1, alignItems: ALIGN_RIGHT, gap: 8 },
  heroTitle: { color: "#fff", fontSize: 17, fontWeight: "900", fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  heroMetaRow: { flexDirection: ROW_RTL, flexWrap: "wrap", alignItems: "center", gap: 6 },
  badge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 10, paddingVertical: 4,
    backgroundColor: "rgba(16,185,129,0.16)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(16,185,129,0.35)",
  },
  badgeText: { color: "#10B981", fontSize: 11, fontFamily: "Cairo_700Bold" },
  epCount: { color: "rgba(255,255,255,0.5)", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  seasonTabsRow: {
    paddingHorizontal: 14,
    paddingBottom: 10,
    gap: 8,
    flexDirection: ROW_RTL,
  },
  seasonPill: {
    paddingHorizontal: 18,
    paddingVertical: 8,
    borderRadius: 22,
    borderWidth: 1,
  },
  seasonPillActive: {
    backgroundColor: "#10B981",
    borderColor: "#10B981",
  },
  seasonPillText: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  epSectionHeader: {
    flexDirection: ROW_RTL, alignItems: "center", gap: 8,
    paddingHorizontal: 16, paddingVertical: 8,
  },
  epSectionTitle: { color: "#fff", fontSize: 14, fontWeight: "900", fontFamily: "Cairo_700Bold", textAlign: "right" },
  epLoadingCenter: { paddingVertical: 24, alignItems: "center" },
  epRow: {
    flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", gap: 12,
    marginHorizontal: 14, marginVertical: 5,
    paddingHorizontal: 12, paddingVertical: 10,
    borderRadius: 16, borderWidth: 1,
  },
  epMain: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
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
    borderWidth: 1.5, borderColor: "rgba(255,255,255,0.65)",
  },
  epPlayBtnWatched: {
    backgroundColor: "rgba(16,185,129,0.95)",
  },
  epNumBadge: {
    position: "absolute", bottom: 4, right: 5,
    backgroundColor: "rgba(0,0,0,0.75)", borderRadius: 6,
    paddingHorizontal: 5, paddingVertical: 1,
  },
  epNumText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  epInfo: { flex: 1, alignItems: ALIGN_RIGHT, gap: 2 },
  epTitleRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  epTitle: { color: "#fff", fontSize: 14, fontWeight: "700", fontFamily: "Cairo_700Bold", textAlign: "right" },
  watchedBadge: {
    paddingHorizontal: 8,
    paddingVertical: 2,
    borderRadius: 6,
    backgroundColor: "rgba(16,185,129,0.16)",
    borderWidth: 1,
    borderColor: "rgba(16,185,129,0.35)",
  },
  watchedBadgeText: {
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
    color: "#10B981",
  },
  epSub: { fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
  epActions: { flexDirection: "row", alignItems: "center", gap: 8 },
  eyeBtn: {
    width: 36,
    height: 36,
    borderRadius: 11,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
  },
  eyeBtnWatched: {
    backgroundColor: "rgba(16,185,129,0.16)",
    borderColor: "rgba(16,185,129,0.45)",
  },
  emptyText: {
    color: "rgba(255,255,255,0.3)", textAlign: "center",
    fontFamily: "Cairo_400Regular", paddingVertical: 32,
  },
});
