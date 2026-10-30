import React, { useState, useEffect, useRef } from "react";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView,
} from "react-native";
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
interface Episode { number: number; epId: string; url: string; thumbnail?: string; }
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
      .then(d => { if (!ctrl.signal.aborted) { setEpisodes(Array.isArray(d.episodes) ? d.episodes : []); setEpLoading(false); } })
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
        season: curSeason?.label || "الموسم 1",
        poster: imgSrc || "",
        at: isCarateenEntry ? `${carateenProvider}:${showId}` : at,
        provider: isCarateenEntry ? carateenProvider || "" : "",
        showId: isCarateenEntry ? String(showId) : "",
        episodeId: isCarateenEntry ? ep.epId : "",
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
          { opacity: pressed ? 0.7 : 1 },
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
              <Ionicons name="play" size={10} color="#fff" />
            </View>
          </View>
        </View>
        <View style={styles.epInfo}>
        <Text style={[styles.epTitle, { color: colors.textPrimary }]}>الحلقة {ep.number}</Text>
        </View>
        <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.3)" />
      </Pressable>
    );
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* Header */}
      <View style={[styles.header, { borderBottomColor: colors.border }]}>
         <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} focusable={tvMode}
           style={({ focused }) => [styles.backBtn, { backgroundColor: colors.input, borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="arrow-back" size={20} color={colors.textSecondary} style={{ transform: [{ scaleX: -1 }] }} />
        </Pressable>
        </View>

      <TvFocusGuideView autoFocus={tvMode} style={styles.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          data={episodes}
          keyExtractor={ep => ep.epId || String(ep.number)}
          renderItem={renderEp}
          onViewableItemsChanged={episodeFocusScroll.onViewableItemsChanged}
          viewabilityConfig={episodeFocusScroll.viewabilityConfig}
          ItemSeparatorComponent={() => <EpisodeDivider color={colors.textSecondary} />}
          removeClippedSubviews={Platform.OS === "android" && !tvMode}
          initialNumToRender={tvMode ? 12 : 6}
          maxToRenderPerBatch={tvMode ? 10 : 5}
          windowSize={tvMode ? 7 : Platform.OS === "android" ? 3 : 5}
          onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
            offset: Math.max(0, index * (tvMode ? 130 : 72)),
            animated: false,
          })}
          ListHeaderComponent={() => (
          <View>
            {/* Poster */}
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
                <View style={[styles.badge, { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }]}>
                  <Text style={[styles.badgeText, { color: colors.accent }]}>
                    {isCarateenEntry && carateenProvider === "sp" ? "سبيستون" : "مدبلج عربي"}
                  </Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={[styles.epCount, { color: colors.textSecondary }]}>{episodes.length} حلقة</Text>
                )}
                {seasons.length > 1 && (
                  <Pressable
                    onPress={() => setShowSeasonDrop(o => !o)}
                    style={[styles.seasonBtn, { backgroundColor: colors.input, borderColor: colors.border }]}
                  >
                    <Text style={[styles.seasonBtnText, { color: colors.textPrimary }]}>{curSeason?.label || "اختر الموسم"}</Text>
                    <Ionicons name={showSeasonDrop ? "chevron-up" : "chevron-down"} size={14} color={colors.textSecondary} />
                  </Pressable>
                )}
                {seasons.length === 1 && (
                  <Text style={[styles.seasonLabel, { color: colors.textSecondary }]}>{seasons[0].label}</Text>
                )}
              </View>
            </View>

            {/* Season dropdown */}
            {showSeasonDrop && (
              <View style={[styles.seasonDrop, { backgroundColor: colors.surface, borderColor: colors.border }]}>
                {seasons.map((s, i) => (
                  <Pressable
                    key={s.arabicToonsId}
                    onPress={() => { setSelSeason(i); setShowSeasonDrop(false); }}
                    focusable={tvMode}
                    style={({ focused }) => [styles.seasonItem, i === selSeason && styles.seasonItemActive, tvMode && tvFocusStyle(focused)]}
                  >
                    <Text style={[
                      styles.seasonItemText,
                      i === selSeason && styles.seasonItemTextActive,
                      { color: i === selSeason ? colors.accent : colors.textPrimary },
                    ]}>
                      {s.label}
                    </Text>
                  </Pressable>
                ))}
              </View>
            )}

            <View style={styles.epSectionHeader}>
              <View style={styles.accentBar} />
              <Text style={[styles.epSectionTitle, { color: colors.textPrimary }]}>الحلقات</Text>
            </View>
            {epLoading && (
              <View style={styles.epLoadingCenter}>
                <ActivityIndicator color={colors.accent} />
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
    position: "relative", flexDirection: "row", direction: "ltr", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingTop: 12, paddingBottom: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  backBtn: {
    position: "absolute", right: 12, width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: {
    flex: 1, color: "#fff", fontSize: 15,
    fontWeight: "800", fontFamily: "Cairo_700Bold",
    textAlign: "right", writingDirection: "rtl",
  },
  heroRow: { flexDirection: "row", gap: 14, padding: 16 },
  poster: {
    width: 90, aspectRatio: 2 / 3, borderRadius: 12,
    backgroundColor: "rgba(255,255,255,0.05)",
    overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
  },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  heroInfo: { flex: 1, paddingTop: 4, gap: 8 },
  heroTitle: { color: "#fff", fontSize: 16, fontWeight: "900", fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  badge: {
    alignSelf: "flex-start",
    paddingHorizontal: 10, paddingVertical: 3,
    backgroundColor: "rgba(124,58,237,0.2)",
    borderRadius: 8, borderWidth: 1, borderColor: "rgba(124,58,237,0.3)",
  },
  badgeText: { color: "#A78BFA", fontSize: 11, fontFamily: "Cairo_700Bold" },
  epCount: { color: "rgba(255,255,255,0.5)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  seasonBtn: {
    flexDirection: "row", alignItems: "center", gap: 6,
    paddingHorizontal: 12, paddingVertical: 7,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    alignSelf: "flex-start",
  },
  seasonBtnText: { color: "rgba(255,255,255,0.8)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  seasonLabel: { color: "rgba(255,255,255,0.5)", fontSize: 12, fontFamily: "Cairo_400Regular" },
  seasonDrop: {
    marginHorizontal: 16, marginBottom: 8,
    backgroundColor: "#18181B", borderRadius: 14,
    borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    overflow: "hidden",
  },
  seasonItem: { paddingHorizontal: 16, paddingVertical: 12 },
  seasonItemActive: { backgroundColor: "rgba(124,58,237,0.15)" },
  seasonItemText: { color: "rgba(255,255,255,0.7)", fontSize: 13, fontFamily: "Cairo_400Regular" },
  seasonItemTextActive: { color: "#A78BFA", fontFamily: "Cairo_700Bold" },
  epSectionHeader: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 16, paddingVertical: 10,
  },
  accentBar: { width: 4, height: 20, borderRadius: 2, backgroundColor: "#7C3AED" },
  epSectionTitle: { color: "#fff", fontSize: 15, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  epLoadingCenter: { paddingVertical: 24, alignItems: "center" },
  epRow: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingVertical: 10,
  },
  epThumb: {
    width: 90, aspectRatio: 16 / 9, borderRadius: 8,
    backgroundColor: "rgba(255,255,255,0.05)", overflow: "hidden",
  },
  epThumbPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  epPlayOverlay: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  epPlayBtn: {
    width: 26, height: 26, borderRadius: 13,
    backgroundColor: "rgba(0,0,0,0.6)", alignItems: "center", justifyContent: "center",
  },
  epInfo: { flex: 1 },
  epTitle: { color: "#fff", fontSize: 13, fontWeight: "700", fontFamily: "Cairo_700Bold" },
  emptyText: {
    color: "rgba(255,255,255,0.3)", textAlign: "center",
    fontFamily: "Cairo_400Regular", paddingVertical: 32,
  },
});
