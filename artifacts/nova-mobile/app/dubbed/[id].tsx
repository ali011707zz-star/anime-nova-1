import React, { useState, useEffect, useRef } from "react";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, I18nManager,
} from "react-native";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
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
import { EpisodeDivider } from "@/components/EpisodeDivider";
const Pressable = TvPressable;

interface Season { label: string; arabicToonsId: string; }
interface Episode { number: number; epId: string; url: string; thumbnail?: string; videoId?: string; pref?: string; }
type CarateenProvider = "sp" | "carateen";

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
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const tvMode = isTvDevice();

  const {
    id,
    title: titleParam,
    seasons: seasonsParam,
    img,
    provider: providerParam,
    showId: showIdParam,
    isMovie: isMovieParam,
  } = useLocalSearchParams<{
    id: string; title: string; seasons: string; img: string;
    provider?: string; showId?: string; isMovie?: string;
  }>();

  const title = titleParam || decodeURIComponent(id || "");
  const providerValue = Array.isArray(providerParam) ? providerParam[0] : providerParam;
  const carateenProvider: CarateenProvider | null =
    providerValue === "sp" || providerValue === "carateen" ? providerValue : null;
  const showIdValue = Array.isArray(showIdParam) ? showIdParam[0] : showIdParam;
  const showId = Number(showIdValue);
  const isCarateenEntry = !!carateenProvider && Number.isSafeInteger(showId) && showId > 0;
  const isMovie = (Array.isArray(isMovieParam) ? isMovieParam[0] : isMovieParam) === "1";
  const legacySeasons: Season[] = (() => {
    try { return JSON.parse(decodeURIComponent(seasonsParam || "[]")); } catch { return []; }
  })();
  const seasons: Season[] = isCarateenEntry
    ? [{ label: "قائمة الحلقات", arabicToonsId: `${carateenProvider}:${showId}` }]
    : legacySeasons;
  const imgSrc = img ? decodeURIComponent(img) : null;
  const posterSrc = imgSrc?.startsWith("http") ? imgSrc : (imgSrc ? `${apiBase()}${imgSrc}` : null);

  const [selSeason, setSelSeason] = useState(0);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [showSeasonDrop, setShowSeasonDrop] = useState(false);
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

  const curSeason = seasons[selSeason];

  useEffect(() => {
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
  }, [curSeason?.arabicToonsId, isCarateenEntry, carateenProvider, showId]);

  const openWatch = (ep: Episode) => {
    const at = seasons.map(s => s.arabicToonsId).join(",");
    router.push({
      pathname: "/dubbed/watch",
      params: {
        epUrl: ep.url,
        series: isCarateenEntry
          ? `${carateenProvider}:${showId}`
          : curSeason?.arabicToonsId || "",
        title,
        ep: String(ep.number),
        totalEps: String(episodes.length || ep.number),
        season: curSeason?.label || "الموسم 1",
        poster: imgSrc || "",
        at: isCarateenEntry ? `${carateenProvider}:${showId}` : at,
        provider: isCarateenEntry ? carateenProvider || "" : "",
        showId: isCarateenEntry ? String(showId) : "",
        episodeId: isCarateenEntry ? ep.epId : "",
        videoId: isCarateenEntry ? (ep.videoId || "") : "",
        isMovie: isMovie ? "1" : "0",
      },
    });
  };

  const renderEp = ({ item: ep, index }: { item: Episode; index: number }) => {
    const thumb = thumbSrc(ep.thumbnail);
    return (
      <Pressable
        onPress={() => openWatch(ep)}
        focusable={tvMode}
        hasTVPreferredFocus={tvMode && index === 0}
        onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
        style={({ pressed, focused }) => [
          styles.epRow,
          { backgroundColor: colors.card, borderColor: colors.border, opacity: pressed ? 0.78 : 1 },
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
            <View style={styles.epPlayBtn}>
              <Ionicons name="play" size={12} color="#fff" style={{ marginLeft: 1 }} />
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
        </View>
        <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
      </Pressable>
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
          data={episodes}
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
                <View style={styles.badge}>
                  <Ionicons name="volume-high-outline" size={11} color="#10B981" />
                  <Text style={styles.badgeText}>
                    {isCarateenEntry && carateenProvider === "sp" ? "سبيستون مدبلج" : "مدبلج عربي"}
                  </Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={[styles.epCount, { color: colors.textSecondary }]}>{episodes.length} حلقة</Text>
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

            <View style={styles.epSectionHeader}>
              <Text style={[styles.epSectionTitle, { color: colors.textPrimary }]}>
                الحلقات {episodes.length > 0 ? `(${episodes.length})` : ""}
              </Text>
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
  emptyText: {
    color: "rgba(255,255,255,0.3)", textAlign: "center",
    fontFamily: "Cairo_400Regular", paddingVertical: 32,
  },
});
