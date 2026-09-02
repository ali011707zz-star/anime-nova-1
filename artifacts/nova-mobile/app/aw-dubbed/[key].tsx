/**
 * aw-dubbed/[key].tsx — تفاصيل وحلقات مسلسل أنيميشن مدبلج
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, TVFocusGuideView,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvPressable } from "@/utils/tv";
const Pressable = TvPressable;

const BASE = getBaseUrl();

interface Season  { label: string; animeId: string; }
interface Episode { number: number; }

function safeDecode(value: string | string[] | undefined): string {
  const raw = Array.isArray(value) ? value[0] : value;
  if (!raw) return "";
  try { return decodeURIComponent(raw); } catch { return raw; }
}

export default function AwDubbedDetailScreen() {
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const topPad   = Platform.OS === "web" ? 0 : insets.top;
  const tvMode   = isTvDevice();
  const params   = useLocalSearchParams<{
    key: string; title: string; titleAr: string;
    seasons: string; poster: string;
  }>();

  const keyParam  = safeDecode(params.key);
  const title     = safeDecode(params.title);
  const titleAr   = safeDecode(params.titleAr);
  const poster    = safeDecode(params.poster);
  const seasons   = (() => {
    try {
      const decoded = safeDecode(params.seasons);
      const parsed = JSON.parse(decoded);
      if (!Array.isArray(parsed)) return [];
      return parsed
        .filter((s: any) => s && typeof s === "object" && String(s.animeId ?? "").trim())
        .map((s: any) => ({
          label: String(s.label ?? "الحلقات"),
          animeId: String(s.animeId),
        })) as Season[];
    }
    catch { return []; }
  })();

  const [selSeason,  setSelSeason]  = useState(0);
  const [episodes,   setEpisodes]   = useState<Episode[]>([]);
  const [epLoading,  setEpLoading]  = useState(false);
  const [imgError,   setImgError]   = useState(false);
  const tabsRef = useRef<ScrollView>(null);
  const episodeListRef = useRef<FlatList<Episode>>(null);

  const curSeason = seasons[selSeason];
  const displayTitle = titleAr || title;

  useEffect(() => {
    if (!curSeason?.animeId) return;
    setEpLoading(true);
    setEpisodes([]);
    fetch(`${BASE}/api/aw-dubbed/episodes?series=${encodeURIComponent(curSeason.animeId)}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [curSeason?.animeId]);

  const openWatch = useCallback((ep: Episode) => {
    router.push({
      pathname: "/aw-dubbed/watch",
      params: {
        series:  curSeason?.animeId || "",
        ep:      String(ep.number),
        title,
        titleAr,
        season:  curSeason?.label || "الحلقات",
        poster:  poster ? encodeURIComponent(poster) : "",
        seasons: encodeURIComponent(JSON.stringify(seasons)),
        key:     encodeURIComponent(keyParam || ""),
      },
    });
  }, [curSeason, title, titleAr, poster, seasons, keyParam, router]);

  const renderEp = useCallback(({ item: ep }: { item: Episode }) => (
    <Pressable
      onPress={() => openWatch(ep)}
      hasTVPreferredFocus={tvMode && ep.number === episodes[0]?.number}
      onFocus={() => episodeListRef.current?.scrollToIndex({ index: episodes.findIndex(item => item.number === ep.number), animated: true, viewPosition: 0.35 })}
      style={({ pressed, focused }) => [styles.epRow, tvMode && styles.tvEpRow, { opacity: pressed ? 0.7 : 1 }, tvMode && tvFocusStyle(focused)]}
    >
      <View style={[styles.epThumb, tvMode && styles.tvEpThumb]}>
        {poster && !imgError ? (
          <Image source={{ uri: poster }} style={StyleSheet.absoluteFill} resizeMode="cover"
            onError={() => setImgError(true)} />
        ) : (
          <View style={styles.epPlaceholder}>
            <Ionicons name="play-circle-outline" size={22} color="rgba(255,255,255,0.3)" />
          </View>
        )}
        <View style={styles.epPlayOverlay}>
          <View style={styles.epPlayBtn}>
            <Ionicons name="play" size={10} color="#fff" />
          </View>
        </View>
        <View style={styles.epNumBadge}>
          <Text style={styles.epNumText}>{ep.number}</Text>
        </View>
      </View>
      <View style={styles.epInfo}>
        <Text style={[styles.epTitle, tvMode && styles.tvEpTitle]}>الحلقة {ep.number}</Text>
        <Text style={[styles.epSub, tvMode && styles.tvEpSub]}>{curSeason?.label || "الحلقات"}</Text>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.3)" />
    </Pressable>
  ), [openWatch, poster, imgError, curSeason, episodes, tvMode]);

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
         <Pressable onPress={() => router.back()} focusable={tvMode}
           style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <Text style={styles.headerTitle} numberOfLines={1}>{displayTitle}</Text>
        <View style={{ width: 36 }} />
      </View>

      <TVFocusGuideView autoFocus={tvMode} style={styles.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          data={episodes}
          keyExtractor={ep => String(ep.number)}
          renderItem={renderEp}
          removeClippedSubviews={false}
          initialNumToRender={tvMode ? 12 : 6}
          maxToRenderPerBatch={tvMode ? 10 : 5}
          windowSize={tvMode ? 7 : 5}
          onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
            offset: Math.max(0, index * (tvMode ? 100 : 72)),
            animated: true,
          })}
          contentContainerStyle={[styles.listContent, tvMode && styles.tvListContent]}
          ListHeaderComponent={() => (
          <View>
            {/* Hero */}
            <View style={styles.heroRow}>
              <View style={styles.posterWrap}>
                {poster && !imgError ? (
                  <Image source={{ uri: poster }} style={StyleSheet.absoluteFill} resizeMode="cover"
                    onError={() => setImgError(true)} />
                ) : (
                  <View style={styles.posterPlaceholder}>
                    <Text style={{ fontSize: 40 }}>📺</Text>
                  </View>
                )}
                <LinearGradient
                  colors={["transparent", "rgba(9,9,11,0.9)"]}
                  style={StyleSheet.absoluteFill}
                  pointerEvents="none"
                />
              </View>
              <View style={styles.heroInfo}>
                <Text style={styles.heroTitle}>{displayTitle}</Text>
                <View style={styles.heroBadge}>
                  <Ionicons name="volume-high-outline" size={10} color="#10B981" />
                  <Text style={styles.heroBadgeText}>مدبلج عربي</Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={styles.heroSub}>{episodes.length} حلقة</Text>
                )}
              </View>
            </View>

            {/* Season tabs */}
            {seasons.length > 1 && (
              <View style={styles.seasonsWrap}>
                <ScrollView ref={tabsRef} horizontal showsHorizontalScrollIndicator={false}
                  contentContainerStyle={styles.seasonsTabs}>
                  {seasons.map((s, i) => (
                    <Pressable key={s.animeId} onPress={() => setSelSeason(i)}
                      focusable={tvMode}
                      style={({ focused }) => [styles.seasonTab, i === selSeason && styles.seasonTabActive, tvMode && tvFocusStyle(focused)]}>
                      <Text style={[styles.seasonTabText, i === selSeason && styles.seasonTabTextActive]}>
                        {s.label}
                      </Text>
                    </Pressable>
                  ))}
                </ScrollView>
              </View>
            )}

            <Text style={styles.sectionTitle}>الحلقات</Text>
          </View>
        )}
        ListEmptyComponent={
          epLoading ? (
            <View style={styles.center}>
              <ActivityIndicator color="#10B981" />
            </View>
          ) : (
            <View style={styles.center}>
              <Text style={styles.emptyText}>لا توجد حلقات</Text>
            </View>
          )
          }
        />
      </TVFocusGuideView>
    </View>
  );
}

const styles = StyleSheet.create({
  container:       { flex: 1, backgroundColor: "#09090B" },
  tvFocusGuide:    { flex: 1 },
  header:          { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10,
                     borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  backBtn:         { width: 36, height: 36, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                     alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  headerTitle:     { flex: 1, textAlign: "center", color: "#fff", fontSize: 16, fontWeight: "700",
                     fontFamily: "Cairo_700Bold" },
  listContent:     { paddingBottom: 100 },
  tvListContent:   { paddingHorizontal: 56, paddingBottom: 140 },
  heroRow:         { height: 200, marginBottom: 16, position: "relative" },
  posterWrap:      { ...StyleSheet.absoluteFillObject, overflow: "hidden" },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center",
                       backgroundColor: "rgba(16,185,129,0.08)" },
  heroInfo:        { position: "absolute", bottom: 12, right: 12, left: 12 },
  heroTitle:       { color: "#fff", fontSize: 18, fontWeight: "900", fontFamily: "Cairo_700Bold", lineHeight: 26 },
  heroSub:         { color: "rgba(255,255,255,0.45)", fontSize: 12, fontFamily: "Cairo_400Regular", marginTop: 2 },
  heroBadge:       { flexDirection: "row", alignItems: "center", gap: 4, marginTop: 6,
                     backgroundColor: "rgba(16,185,129,0.12)", paddingHorizontal: 8, paddingVertical: 3,
                     borderRadius: 8, alignSelf: "flex-start", borderWidth: 1, borderColor: "rgba(16,185,129,0.2)" },
  heroBadgeText:   { color: "#10B981", fontSize: 10, fontFamily: "Cairo_600SemiBold" },
  seasonsWrap:     { marginBottom: 8 },
  seasonsTabs:     { paddingHorizontal: 12, gap: 6 },
  seasonTab:       { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10,
                     backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  seasonTabActive: { backgroundColor: "rgba(16,185,129,0.12)", borderColor: "rgba(16,185,129,0.35)" },
  seasonTabText:   { color: "rgba(255,255,255,0.45)", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  seasonTabTextActive: { color: "#10B981" },
  sectionTitle:    { color: "rgba(255,255,255,0.5)", fontSize: 11, fontFamily: "Cairo_600SemiBold",
                     paddingHorizontal: 14, marginBottom: 6, textTransform: "uppercase" },
  epRow:           { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10,
                     gap: 12, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.04)" },
  tvEpRow:         { minHeight: 112, paddingHorizontal: 28, paddingVertical: 20, gap: 24, borderBottomWidth: 2, borderRadius: 20, borderWidth: 2, borderColor: "rgba(255,255,255,0.08)", backgroundColor: "rgba(18,16,28,0.78)" },
  tvEpThumb:       { width: 150, height: 88, borderRadius: 16 },
  tvEpTitle:       { fontSize: 25, lineHeight: 36 },
  tvEpSub:         { fontSize: 18, lineHeight: 28 },
  epThumb:         { width: 80, height: 52, borderRadius: 8, backgroundColor: "rgba(255,255,255,0.05)",
                     overflow: "hidden", position: "relative" },
  epPlaceholder:   { flex: 1, alignItems: "center", justifyContent: "center" },
  epPlayOverlay:   { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center",
                     backgroundColor: "rgba(0,0,0,0.3)" },
  epPlayBtn:       { width: 22, height: 22, borderRadius: 11, backgroundColor: "rgba(16,185,129,0.8)",
                     alignItems: "center", justifyContent: "center" },
  epNumBadge:      { position: "absolute", bottom: 3, right: 4, backgroundColor: "rgba(0,0,0,0.65)",
                     borderRadius: 5, paddingHorizontal: 4, paddingVertical: 1 },
  epNumText:       { color: "rgba(255,255,255,0.8)", fontSize: 8, fontFamily: "Cairo_700Bold" },
  epInfo:          { flex: 1 },
  epTitle:         { color: "#fff", fontSize: 13, fontFamily: "Cairo_700Bold" },
  epSub:           { color: "rgba(255,255,255,0.35)", fontSize: 10, fontFamily: "Cairo_400Regular", marginTop: 1 },
  center:          { paddingVertical: 40, alignItems: "center", justifyContent: "center" },
  emptyText:       { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
