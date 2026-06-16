import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View, Text, Pressable, TextInput, Image, FlatList,
  ScrollView, ActivityIndicator, StyleSheet, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";

/* ── AniList query ── */
const ANIME_QUERY = `
query ($id: Int) {
  Media(id: $id, type: ANIME) {
    id idMal title { romaji english }
    coverImage { large extraLarge }
    bannerImage episodes duration status
    nextAiringEpisode { episode }
    averageScore genres
  }
}`;

const PAGE_SIZE = 100;

/* ── Watch progress storage ── */
async function getWatched(animeId: string): Promise<Set<number>> {
  try {
    const v = await AsyncStorage.getItem(`watched-${animeId}`);
    return new Set(v ? JSON.parse(v) : []);
  } catch { return new Set(); }
}
async function saveWatched(animeId: string, watched: Set<number>) {
  await AsyncStorage.setItem(`watched-${animeId}`, JSON.stringify([...watched]));
}

/* ── Episode thumbnail row ── */
function EpisodeRow({
  n, anime, epData, watched, onToggleWatched, onWatch,
}: {
  n: number; anime: any; epData: any[]; watched: boolean;
  onToggleWatched: (n: number) => void; onWatch: (n: number) => void;
}) {
  const ep = epData?.find((e: any) => e.mal_id === n || e.episode_id === n);
  const thumb = ep?.images?.jpg?.image_url || anime?.coverImage?.large;
  const durationMin = anime?.duration || 24;
  const dur = durationMin >= 60
    ? `${Math.floor(durationMin / 60)}:${String(durationMin % 60).padStart(2, "0")}:00`
    : `${String(durationMin).padStart(2, "0")}:00`;

  return (
    <Pressable
      onPress={() => onWatch(n)}
      style={[ep_s.row, watched && ep_s.rowWatched]}
    >
      {/* Thumbnail */}
      <View style={ep_s.thumbWrap}>
        {thumb ? (
          <Image source={{ uri: thumb }} style={ep_s.thumb} />
        ) : (
          <View style={[ep_s.thumb, ep_s.thumbFallback]} />
        )}
        <View style={ep_s.thumbOverlay} />
        <Text style={ep_s.durText}>{dur}</Text>
        {watched && <View style={ep_s.watchedBorder} />}
        <View style={ep_s.playOverlay}>
          <View style={ep_s.playBtn}>
            <Ionicons name="play" size={10} color="#fff" />
          </View>
        </View>
      </View>

      {/* Info */}
      <View style={ep_s.info}>
        <Text style={[ep_s.epNum, watched && { color: "#8B5CF6" }]}>الحلقة {n}</Text>
      </View>

      {/* Eye toggle */}
      <Pressable
        onPress={e => { onToggleWatched(n); }}
        style={[ep_s.eyeBtn, watched && ep_s.eyeBtnWatched]}
      >
        <Ionicons name={watched ? "eye" : "eye-off"} size={14} color={watched ? "#8B5CF6" : "rgba(255,255,255,0.2)"} />
      </Pressable>
    </Pressable>
  );
}

export default function EpisodeListScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const [anime, setAnime] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [epData, setEpData] = useState<any[]>([]);
  const [search, setSearch] = useState("");
  const [page, setPage] = useState(1);
  const [watched, setWatched] = useState<Set<number>>(new Set());

  useEffect(() => {
    if (!id) return;
    setLoading(true);
    setEpData([]); setPage(1); setSearch("");
    getWatched(id).then(setWatched);

    fetch("https://graphql.anilist.co", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ query: ANIME_QUERY, variables: { id: parseInt(id) } }),
    }).then(r => r.json()).then(d => {
      const a = d.data?.Media;
      setAnime(a);
      if (a?.idMal) {
        fetch(`https://api.jikan.moe/v4/anime/${a.idMal}/episodes?page=1`)
          .then(r => r.json())
          .then(d => { if (d.data) setEpData(d.data); })
          .catch(() => {});
      }
    }).finally(() => setLoading(false));
  }, [id]);

  const toggleWatched = useCallback((n: number) => {
    setWatched(prev => {
      const next = new Set(prev);
      if (next.has(n)) next.delete(n); else next.add(n);
      saveWatched(id, next);
      return next;
    });
  }, [id]);

  function watchEp(n: number) {
    setWatched(prev => {
      const next = new Set(prev);
      next.add(n);
      saveWatched(id, next);
      return next;
    });
    const t = encodeURIComponent(anime?.title?.romaji || "");
    const eng = encodeURIComponent(anime?.title?.english || "");
    router.push(`/watch?anime=${id}&ep=${n}${t ? `&title=${t}` : ""}${eng ? `&english=${eng}` : ""}`);
  }

  const total = useMemo(() => {
    if (!anime) return 0;
    return anime.status === "RELEASING" && anime.nextAiringEpisode?.episode
      ? anime.nextAiringEpisode.episode - 1
      : (anime.episodes || anime.nextAiringEpisode?.episode || 12);
  }, [anime]);

  const allEps = useMemo(() => Array.from({ length: total }, (_, i) => i + 1), [total]);
  const watchedCount = useMemo(() => [...watched].filter(n => n >= 1 && n <= total).length, [watched, total]);
  const pct = total > 0 ? Math.round((watchedCount / total) * 100) : 0;

  const isSearching = search.trim().length > 0;
  const filtered = useMemo(() => {
    if (!isSearching) return allEps;
    return allEps.filter(n => n.toString().includes(search.trim()));
  }, [allEps, search]);

  const totalPages = isSearching ? 1 : Math.ceil(total / PAGE_SIZE);
  const currentPage = isSearching ? 1 : Math.min(page, totalPages);

  const displayedEps = useMemo(() => {
    if (isSearching) return filtered;
    const start = (currentPage - 1) * PAGE_SIZE;
    return allEps.slice(start, start + PAGE_SIZE);
  }, [allEps, filtered, isSearching, currentPage]);

  if (loading) return (
    <View style={ep_s.container}>
      <View style={ep_s.center}>
        <ActivityIndicator color="#8B5CF6" size="large" />
      </View>
    </View>
  );
  if (!anime) return (
    <View style={ep_s.container}>
      <View style={ep_s.center}>
        <Text style={ep_s.notFound}>لم يُعثر على الأنمي</Text>
      </View>
    </View>
  );

  return (
    <View style={[ep_s.container, { paddingTop: topPad }]}>
      {/* ── Hero Banner ── */}
      <View style={ep_s.hero}>
        {(anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large) ? (
          <Image
            source={{ uri: anime.bannerImage || anime.coverImage?.extraLarge || anime.coverImage?.large }}
            style={StyleSheet.absoluteFill}
          />
        ) : null}
        <LinearGradient
          colors={["rgba(9,9,11,0.2)", "rgba(9,9,11,0.6)", "#09090B"]}
          style={StyleSheet.absoluteFill}
        />

        {/* Back */}
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)")}
          style={[ep_s.backBtn, { top: 12 }]}>
          <Ionicons name="chevron-forward" size={18} color="#fff" />
        </Pressable>

        {/* Cover + info */}
        <View style={ep_s.heroBottom}>
          {anime.coverImage?.large ? (
            <Image source={{ uri: anime.coverImage.large }} style={ep_s.heroCover} />
          ) : null}
          <View style={ep_s.heroInfo}>
            <Text style={ep_s.heroTitle} numberOfLines={1}>{anime.title?.romaji}</Text>
            <View style={{ flexDirection: "row", gap: 8, marginTop: 4 }}>
              <Text style={ep_s.heroBadge}>{total} حلقة</Text>
              {watchedCount > 0 && (
                <Text style={[ep_s.heroBadge, { color: "#34D399" }]}>👁 {watchedCount} مشاهدة</Text>
              )}
              {anime.averageScore ? (
                <Text style={[ep_s.heroBadge, { color: "#FBBF24" }]}>⭐ {(anime.averageScore / 10).toFixed(1)}</Text>
              ) : null}
            </View>
          </View>
        </View>
      </View>

      {/* ── Sticky controls ── */}
      <View style={ep_s.controls}>
        {/* Progress bar */}
        <View style={ep_s.progressRow}>
          <View style={ep_s.progressTrack}>
            <View style={[ep_s.progressFill, { width: `${pct}%` }]} />
          </View>
          <Text style={ep_s.pctText}>{pct}%</Text>
        </View>
        {/* Search */}
        <View style={ep_s.searchBar}>
          <Ionicons name="search" size={15} color="rgba(255,255,255,0.25)" />
          <TextInput
            value={search}
            onChangeText={setSearch}
            placeholder="اذهب لحلقة..."
            placeholderTextColor="rgba(255,255,255,0.25)"
            keyboardType="number-pad"
            style={ep_s.searchInput}
          />
          {search ? (
            <Pressable onPress={() => setSearch("")}>
              <Ionicons name="close" size={16} color="rgba(255,255,255,0.3)" />
            </Pressable>
          ) : null}
        </View>
        {/* Page nav */}
        {!isSearching && totalPages > 1 && (
          <View style={ep_s.pageNav}>
            <Text style={ep_s.pageRangeText}>
              الحلقات {(currentPage - 1) * PAGE_SIZE + 1}–{Math.min(currentPage * PAGE_SIZE, total)}
            </Text>
            <View style={{ flexDirection: "row", gap: 6 }}>
              <Pressable
                onPress={() => setPage(p => Math.max(1, p - 1))}
                disabled={currentPage <= 1}
                style={[ep_s.pageBtn, currentPage <= 1 && { opacity: 0.3 }]}>
                <Ionicons name="chevron-forward" size={14} color="rgba(255,255,255,0.6)" />
              </Pressable>
              <Text style={ep_s.pageNumText}>{currentPage}/{totalPages}</Text>
              <Pressable
                onPress={() => setPage(p => Math.min(totalPages, p + 1))}
                disabled={currentPage >= totalPages}
                style={[ep_s.pageBtn, currentPage >= totalPages && { opacity: 0.3 }]}>
                <Ionicons name="chevron-back" size={14} color="rgba(255,255,255,0.6)" />
              </Pressable>
            </View>
          </View>
        )}
      </View>

      {/* ── Episode list ── */}
      <FlatList
        data={displayedEps}
        keyExtractor={n => n.toString()}
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 100 }}
        ListHeaderComponent={
          <Pressable
            onPress={() => watchEp(displayedEps[0] || 1)}
            style={ep_s.watchFromBtn}>
            <Ionicons name="play" size={14} color="#8B5CF6" />
            <Text style={ep_s.watchFromBtnText}>
              {watchedCount > 0 ? `متابعة من حيث توقفت (${watchedCount + 1})` : "مشاهدة من البداية"}
            </Text>
          </Pressable>
        }
        renderItem={({ item: n }) => (
          <EpisodeRow
            n={n}
            anime={anime}
            epData={epData}
            watched={watched.has(n)}
            onToggleWatched={toggleWatched}
            onWatch={watchEp}
          />
        )}
      />
    </View>
  );
}

const ep_s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  notFound: { fontSize: 14, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_400Regular" },
  hero: { height: 220, justifyContent: "flex-end", overflow: "hidden" },
  backBtn: { position: "absolute", right: 14, width: 36, height: 36, backgroundColor: "rgba(0,0,0,0.5)", borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  heroBottom: { flexDirection: "row", alignItems: "flex-end", gap: 12, paddingHorizontal: 14, paddingBottom: 14 },
  heroCover: { width: 64, height: 88, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  heroInfo: { flex: 1, paddingBottom: 4 },
  heroTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  heroBadge: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  controls: { backgroundColor: "rgba(9,9,11,0.97)", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)", paddingHorizontal: 14, paddingTop: 10, paddingBottom: 8 },
  progressRow: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 8 },
  progressTrack: { flex: 1, height: 6, backgroundColor: "rgba(255,255,255,0.08)", borderRadius: 3, overflow: "hidden" },
  progressFill: { height: "100%", backgroundColor: "#8B5CF6", borderRadius: 3 },
  pctText: { fontSize: 9, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_700Bold" },
  searchBar: { flexDirection: "row", alignItems: "center", gap: 8, backgroundColor: "#1C1C22", borderRadius: 12, paddingHorizontal: 12, paddingVertical: 9, borderWidth: 1, borderColor: "rgba(255,255,255,0.06)", marginBottom: 6 },
  searchInput: { flex: 1, color: "#fff", fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },
  pageNav: { flexDirection: "row", justifyContent: "space-between", alignItems: "center" },
  pageRangeText: { fontSize: 10, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_700Bold" },
  pageBtn: { width: 28, height: 28, borderRadius: 8, backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center" },
  pageNumText: { fontSize: 11, color: "rgba(255,255,255,0.4)", fontFamily: "Cairo_700Bold", paddingHorizontal: 4 },
  watchFromBtn: { flexDirection: "row", alignItems: "center", gap: 8, margin: 12, padding: 12, borderRadius: 14, borderWidth: 1, borderColor: "rgba(139,92,246,0.25)", backgroundColor: "rgba(139,92,246,0.07)" },
  watchFromBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#8B5CF6" },
  row: { flexDirection: "row", alignItems: "center", gap: 10, paddingHorizontal: 12, paddingVertical: 10, borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  rowWatched: { backgroundColor: "rgba(139,92,246,0.03)", borderBottomColor: "rgba(139,92,246,0.08)" },
  thumbWrap: { width: 86, height: 49, borderRadius: 10, overflow: "hidden", backgroundColor: "#1C1C22", position: "relative" },
  thumb: { width: "100%", height: "100%" },
  thumbFallback: { backgroundColor: "rgba(139,92,246,0.1)" },
  thumbOverlay: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, backgroundColor: "rgba(0,0,0,0.3)" },
  durText: { position: "absolute", bottom: 4, left: 4, fontSize: 7, color: "#fff", backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 4, paddingHorizontal: 3, paddingVertical: 1, fontWeight: "900" },
  watchedBorder: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, borderWidth: 2, borderColor: "rgba(139,92,246,0.4)", borderRadius: 10 },
  playOverlay: { position: "absolute", top: 0, left: 0, right: 0, bottom: 0, alignItems: "center", justifyContent: "center" },
  playBtn: { width: 22, height: 22, backgroundColor: "rgba(139,92,246,0.9)", borderRadius: 11, alignItems: "center", justifyContent: "center" },
  info: { flex: 1 },
  epNum: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "rgba(255,255,255,0.9)" },
  eyeBtn: { width: 30, height: 30, borderRadius: 10, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.04)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  eyeBtnWatched: { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.3)" },
});
