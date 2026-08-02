/**
 * aw-dubbed/[key].tsx — تفاصيل وحلقات مسلسل أنيميشن مدبلج
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";

const BASE = getBaseUrl();

interface Season  { label: string; animeId: string; }
interface Episode { number: number; }

export default function AwDubbedDetailScreen() {
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const topPad   = Platform.OS === "web" ? 0 : insets.top;
  const params   = useLocalSearchParams<{
    key: string; title: string; titleAr: string;
    seasons: string; poster: string;
  }>();

  const keyParam  = decodeURIComponent(params.key  || "");
  const title     = params.title   || "";
  const titleAr   = params.titleAr || "";
  const poster    = params.poster ? decodeURIComponent(params.poster) : "";
  const seasons   = (() => {
    try { return JSON.parse(decodeURIComponent(params.seasons || "[]")) as Season[]; }
    catch { return []; }
  })();

  const [selSeason,  setSelSeason]  = useState(0);
  const [episodes,   setEpisodes]   = useState<Episode[]>([]);
  const [epLoading,  setEpLoading]  = useState(false);
  const [imgError,   setImgError]   = useState(false);
  const tabsRef = useRef<ScrollView>(null);

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
      style={({ pressed }) => [styles.epRow, { opacity: pressed ? 0.7 : 1 }]}
    >
      <View style={styles.epThumb}>
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
        <Text style={styles.epTitle}>الحلقة {ep.number}</Text>
        <Text style={styles.epSub}>{curSeason?.label || "الحلقات"}</Text>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.3)" />
    </Pressable>
  ), [openWatch, poster, imgError, curSeason]);

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <Text style={styles.headerTitle} numberOfLines={1}>{displayTitle}</Text>
        <View style={{ width: 36 }} />
      </View>

      <FlatList
        data={episodes}
        keyExtractor={ep => String(ep.number)}
        renderItem={renderEp}
        contentContainerStyle={styles.listContent}
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
                      style={[styles.seasonTab, i === selSeason && styles.seasonTabActive]}>
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
    </View>
  );
}

const styles = StyleSheet.create({
  container:       { flex: 1, backgroundColor: "#09090B" },
  header:          { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10,
                     borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  backBtn:         { width: 36, height: 36, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                     alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  headerTitle:     { flex: 1, textAlign: "center", color: "#fff", fontSize: 16, fontWeight: "700",
                     fontFamily: "Cairo_700Bold" },
  listContent:     { paddingBottom: 100 },
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
