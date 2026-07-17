import React, { useState, useEffect, useRef } from "react";
import {
  View, Text, Pressable, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";

interface Season { label: string; arabicToonsId: string; }
interface Episode { number: number; epId: string; url: string; thumbnail?: string; }

const BASE = getBaseUrl();
const AT_IMG = `${BASE}/api/dubbed/img?f=`;

function thumbSrc(t?: string): string | null {
  if (!t) return null;
  if (t.startsWith("http")) return t;
  if (t.startsWith("/api/dubbed/img")) return `${BASE}${t}`;
  const f = t.split("?f=")[1] || t.split("/").pop();
  return f ? `${AT_IMG}${f}` : null;
}

export default function DubbedDetailScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { id, title: titleParam, seasons: seasonsParam, img } = useLocalSearchParams<{
    id: string; title: string; seasons: string; img: string;
  }>();

  const title = titleParam || decodeURIComponent(id || "");
  const seasons: Season[] = (() => {
    try { return JSON.parse(decodeURIComponent(seasonsParam || "[]")); } catch { return []; }
  })();
  const imgSrc = img ? decodeURIComponent(img) : null;
  const posterSrc = imgSrc?.startsWith("http") ? imgSrc : (imgSrc ? `${BASE}${imgSrc}` : null);

  const [selSeason, setSelSeason] = useState(0);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(false);
  const [showSeasonDrop, setShowSeasonDrop] = useState(false);

  const curSeason = seasons[selSeason];

  useEffect(() => {
    if (!curSeason) return;
    setEpLoading(true);
    setEpisodes([]);
    fetch(`${BASE}/api/dubbed/episodes?series=${encodeURIComponent(curSeason.arabicToonsId)}`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [curSeason?.arabicToonsId]);

  const openWatch = (ep: Episode) => {
    const at = seasons.map(s => s.arabicToonsId).join(",");
    router.push({
      pathname: "/dubbed/watch",
      params: {
        epUrl: ep.url,
        title,
        ep: String(ep.number),
        season: curSeason?.label || "الموسم 1",
        poster: imgSrc || "",
        at,
      },
    });
  };

  const renderEp = ({ item: ep }: { item: Episode }) => {
    const thumb = thumbSrc(ep.thumbnail);
    return (
      <Pressable
        onPress={() => openWatch(ep)}
        style={({ pressed }) => [styles.epRow, { opacity: pressed ? 0.7 : 1 }]}
      >
        <View style={styles.epThumb}>
          {thumb ? (
            <Image source={{ uri: thumb }} style={StyleSheet.absoluteFill} resizeMode="cover" />
          ) : (
            <View style={styles.epThumbPlaceholder}>
              <Ionicons name="play-circle-outline" size={22} color="rgba(255,255,255,0.3)" />
            </View>
          )}
          <View style={styles.epPlayOverlay}>
            <View style={styles.epPlayBtn}>
              <Ionicons name="play" size={10} color="#fff" />
            </View>
          </View>
        </View>
        <View style={styles.epInfo}>
          <Text style={styles.epTitle}>الحلقة {ep.number}</Text>
        </View>
        <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.3)" />
      </Pressable>
    );
  };

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
      </View>

      <FlatList
        data={episodes}
        keyExtractor={ep => ep.epId}
        renderItem={renderEp}
        ListHeaderComponent={() => (
          <View>
            {/* Poster */}
            <View style={styles.heroRow}>
              <View style={styles.poster}>
                {posterSrc ? (
                  <Image source={{ uri: posterSrc }} style={StyleSheet.absoluteFill} resizeMode="cover" />
                ) : (
                  <View style={styles.posterPlaceholder}>
                    <Text style={{ fontSize: 36 }}>📺</Text>
                  </View>
                )}
              </View>
              <View style={styles.heroInfo}>
                <Text style={styles.heroTitle}>{title}</Text>
                <View style={styles.badge}>
                  <Text style={styles.badgeText}>مدبلج عربي</Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={styles.epCount}>{episodes.length} حلقة</Text>
                )}
                {seasons.length > 1 && (
                  <Pressable
                    onPress={() => setShowSeasonDrop(o => !o)}
                    style={styles.seasonBtn}
                  >
                    <Text style={styles.seasonBtnText}>{curSeason?.label || "اختر الموسم"}</Text>
                    <Ionicons name={showSeasonDrop ? "chevron-up" : "chevron-down"} size={14} color="rgba(255,255,255,0.6)" />
                  </Pressable>
                )}
                {seasons.length === 1 && (
                  <Text style={styles.seasonLabel}>{seasons[0].label}</Text>
                )}
              </View>
            </View>

            {/* Season dropdown */}
            {showSeasonDrop && (
              <View style={styles.seasonDrop}>
                {seasons.map((s, i) => (
                  <Pressable
                    key={s.arabicToonsId}
                    onPress={() => { setSelSeason(i); setShowSeasonDrop(false); }}
                    style={[styles.seasonItem, i === selSeason && styles.seasonItemActive]}
                  >
                    <Text style={[styles.seasonItemText, i === selSeason && styles.seasonItemTextActive]}>
                      {s.label}
                    </Text>
                  </Pressable>
                ))}
              </View>
            )}

            <View style={styles.epSectionHeader}>
              <View style={styles.accentBar} />
              <Text style={styles.epSectionTitle}>الحلقات</Text>
            </View>
            {epLoading && (
              <View style={styles.epLoadingCenter}>
                <ActivityIndicator color="#7C3AED" />
              </View>
            )}
          </View>
        )}
        contentContainerStyle={{ paddingBottom: 100 }}
        ListEmptyComponent={!epLoading ? (
          <Text style={styles.emptyText}>لا توجد حلقات</Text>
        ) : null}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  header: {
    flexDirection: "row", alignItems: "center", gap: 12,
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
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.04)",
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
