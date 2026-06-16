import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, Image, ScrollView, FlatList,
  ActivityIndicator, StyleSheet, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";

const IMG_W = "https://image.tmdb.org/t/p/w500";
const IMG_S = "https://image.tmdb.org/t/p/w185";

interface Episode {
  episode_number: number;
  name: string;
  overview?: string;
  still_path?: string;
  runtime?: number;
}

interface Season {
  id: number;
  season_number: number;
  name: string;
  episode_count: number;
  poster_path?: string;
}

export default function AnimationEpisodesScreen() {
  const { id, type, season: seasonParam } = useLocalSearchParams<{
    id: string; type: string; season: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tabsRef = useRef<ScrollView>(null);

  const initSeason = parseInt(seasonParam || "1", 10) || 1;

  const [detail, setDetail] = useState<any>(null);
  const [selSeason, setSelSeason] = useState(initSeason);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(true);
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});

  const base = getBaseUrl();

  useEffect(() => {
    if (!id || !type) return;
    fetch(`${base}/api/animation/detail?type=${type}&id=${id}`)
      .then(r => r.json())
      .then(d => setDetail(d))
      .catch(() => {});
  }, [type, id]);

  useEffect(() => {
    if (!id) return;
    setEpLoading(true);
    fetch(`${base}/api/animation/season?id=${id}&season=${selSeason}`)
      .then(r => r.json())
      .then(d => {
        setEpisodes(d.episodes || []);
        setEpLoading(false);
      })
      .catch(() => setEpLoading(false));
  }, [id, selSeason]);

  useEffect(() => {
    if (!episodes.length) return;
    const loadProgress = async () => {
      const prog: Record<number, number> = {};
      for (const ep of episodes) {
        const key = `anim-wp-${id}-tv-${selSeason}-${ep.episode_number}`;
        const t = parseFloat((await AsyncStorage.getItem(key)) || "0");
        if (t > 0) prog[ep.episode_number] = t;
      }
      setEpProgress(prog);
    };
    loadProgress();
  }, [episodes, id, selSeason]);

  const seasons: Season[] = (detail?.seasons || []).filter((s: Season) => s.season_number > 0);
  const title = detail
    ? (detail.original_title || detail.original_name || detail.title || detail.name || "الحلقات")
    : "الحلقات";

  const goWatch = useCallback((ep: number) => {
    const t = encodeURIComponent(title);
    const poster = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    router.push(`/animation/watch?id=${id}&type=${type}&ep=${ep}&season=${selSeason}&title=${t}&poster=${poster}`);
  }, [id, type, selSeason, title, detail, router]);

  const renderEpisode = ({ item, index }: { item: Episode; index: number }) => {
    const progressSec = epProgress[item.episode_number] || 0;
    const estDuration = (item.runtime || 24) * 60;
    const progressPct = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
    const watched = progressPct >= 90;

    return (
      <Pressable
        style={[s.epCard, watched && s.epCardWatched]}
        onPress={() => goWatch(item.episode_number)}
      >
        {/* Thumbnail */}
        <View style={s.epThumb}>
          {item.still_path ? (
            <Image source={{ uri: `${IMG_S}${item.still_path}` }} style={StyleSheet.absoluteFillObject} resizeMode="cover" />
          ) : (
            <View style={s.epThumbPlaceholder}>
              <Ionicons name="play-circle-outline" size={20} color="rgba(255,255,255,0.15)" />
            </View>
          )}
          <View style={s.epThumbOverlay} />
          {/* Episode number badge */}
          <View style={s.epNumBadge}>
            <Text style={s.epNumText}>{item.episode_number}</Text>
          </View>
          {/* Progress bar */}
          {progressPct > 0 && !watched && (
            <View style={s.progressBar}>
              <View style={[s.progressFill, { width: `${progressPct}%` as any }]} />
            </View>
          )}
          {/* Watched overlay */}
          {watched && (
            <View style={s.watchedOverlay}>
              <View style={s.watchedCheck}>
                <Ionicons name="checkmark" size={12} color="#fff" />
              </View>
            </View>
          )}
        </View>

        {/* Info */}
        <View style={s.epInfo}>
          <Text style={s.epTitle} numberOfLines={1}>{item.name}</Text>
          {item.overview ? (
            <Text style={s.epOverview} numberOfLines={2}>{item.overview}</Text>
          ) : null}
          <View style={s.epMeta}>
            {item.runtime ? (
              <View style={s.epMetaItem}>
                <Ionicons name="time-outline" size={9} color="rgba(255,255,255,0.22)" />
                <Text style={s.epMetaText}>
                  {item.runtime < 60 ? `${item.runtime} دقيقة` : `${Math.floor(item.runtime / 60)} ساعة`}
                </Text>
              </View>
            ) : null}
            {progressSec > 30 && !watched ? (
              <Text style={s.epProgressText}>
                {Math.floor(progressSec / 60)}:{String(Math.floor(progressSec % 60)).padStart(2, "0")} ▶
              </Text>
            ) : null}
          </View>
        </View>

        {/* Play icon */}
        <View style={s.epPlayIcon}>
          <Ionicons name="play" size={13} color="#8B5CF6" />
        </View>
      </Pressable>
    );
  };

  return (
    <View style={[s.container, { paddingTop: insets.top }]}>
      {/* ── Header ── */}
      <View style={s.header}>
        <View style={s.headerRow}>
          <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/animations")} style={s.backBtn}>
            <Ionicons name="chevron-back" size={18} color="rgba(255,255,255,0.7)" />
          </Pressable>
          <View style={s.headerInfo}>
            <Text style={s.headerLabel}>الحلقات</Text>
            <Text style={s.headerTitle} numberOfLines={1}>{title}</Text>
          </View>
          {episodes.length > 0 && (
            <View style={s.epCountBadge}>
              <Text style={s.epCountText}>{episodes.length} حلقة</Text>
            </View>
          )}
        </View>

        {/* Season tabs */}
        {seasons.length > 1 && (
          <ScrollView
            ref={tabsRef}
            horizontal
            showsHorizontalScrollIndicator={false}
            style={s.seasonTabs}
            contentContainerStyle={{ paddingHorizontal: 16, gap: 10, paddingBottom: 12 }}
          >
            {seasons.map(season => {
              const active = season.season_number === selSeason;
              return (
                <Pressable
                  key={season.id}
                  style={[s.seasonCard, active && s.seasonCardActive]}
                  onPress={() => setSelSeason(season.season_number)}
                >
                  {season.poster_path ? (
                    <Image
                      source={{ uri: `https://image.tmdb.org/t/p/w185${season.poster_path}` }}
                      style={StyleSheet.absoluteFillObject}
                      resizeMode="cover"
                    />
                  ) : (
                    <View style={[StyleSheet.absoluteFillObject, { backgroundColor: active ? "rgba(109,40,217,0.8)" : "rgba(20,15,40,0.9)" }]} />
                  )}
                  <View style={s.seasonCardOverlay} />
                  {active && <View style={s.seasonCardGlow} />}
                  {active && <View style={s.seasonActiveDot} />}
                  <View style={s.seasonCardContent}>
                    <Text style={[s.seasonName, active && s.seasonNameActive]} numberOfLines={2}>
                      {season.name || `الموسم ${season.season_number}`}
                    </Text>
                    <Text style={[s.seasonEpCount, active && s.seasonEpCountActive]}>
                      {season.episode_count} حلقة
                    </Text>
                  </View>
                </Pressable>
              );
            })}
          </ScrollView>
        )}
      </View>

      {/* ── Episodes list ── */}
      {epLoading ? (
        <View style={s.center}>
          <ActivityIndicator color="#8B5CF6" size="large" />
          <Text style={s.loadingText}>جاري تحميل الحلقات…</Text>
        </View>
      ) : episodes.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="play-circle-outline" size={48} color="rgba(255,255,255,0.12)" />
          <Text style={s.emptyText}>لا توجد حلقات لهذا الموسم</Text>
        </View>
      ) : (
        <FlatList
          data={episodes}
          keyExtractor={ep => String(ep.episode_number)}
          renderItem={renderEpisode}
          contentContainerStyle={s.listContent}
          showsVerticalScrollIndicator={false}
          ItemSeparatorComponent={() => <View style={{ height: 8 }} />}
        />
      )}
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#09090B" },
  header: { backgroundColor: "#09090B", borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)" },
  headerRow: { flexDirection: "row", alignItems: "center", gap: 12, paddingHorizontal: 16, paddingTop: 12, paddingBottom: 10 },
  backBtn: { width: 36, height: 36, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.09)" },
  headerInfo: { flex: 1 },
  headerLabel: { fontSize: 9, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  headerTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff", lineHeight: 18 },
  epCountBadge: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.15)", borderWidth: 1, borderColor: "rgba(139,92,246,0.28)" },
  epCountText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },

  seasonTabs: { marginTop: 4 },
  seasonCard: { width: 78, height: 106, borderRadius: 13, overflow: "hidden", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)", position: "relative" },
  seasonCardActive: { borderColor: "rgba(167,139,250,0.55)", shadowColor: "#7C3AED", shadowOffset: { width: 0, height: 2 }, shadowOpacity: 0.4, shadowRadius: 8, elevation: 6 },
  seasonCardOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "transparent", background: "linear-gradient(to top, rgba(0,0,0,0.85) 0%, rgba(0,0,0,0.3) 100%)" as any },
  seasonCardGlow: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(139,92,246,0.18)" },
  seasonActiveDot: { position: "absolute", top: 6, right: 6, width: 6, height: 6, borderRadius: 3, backgroundColor: "#a78bfa" },
  seasonCardContent: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6, alignItems: "center" },
  seasonName: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.7)", textAlign: "center", lineHeight: 11 },
  seasonNameActive: { color: "#c4b5fd" },
  seasonEpCount: { fontSize: 7, color: "rgba(255,255,255,0.28)", fontFamily: "Cairo_400Regular", marginTop: 2 },
  seasonEpCountActive: { color: "rgba(196,181,253,0.65)" },

  listContent: { padding: 12, paddingBottom: 100 },
  epCard: { flexDirection: "row", alignItems: "center", gap: 12, padding: 10, borderRadius: 16, backgroundColor: "#111116", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  epCardWatched: { opacity: 0.5, backgroundColor: "rgba(255,255,255,0.02)" },

  epThumb: { width: 88, height: 52, borderRadius: 10, overflow: "hidden", backgroundColor: "rgba(255,255,255,0.06)", flexShrink: 0, position: "relative" },
  epThumbPlaceholder: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  epThumbOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.25)" },
  epNumBadge: { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.6)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1 },
  epNumText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.75)" },
  progressBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3, backgroundColor: "rgba(255,255,255,0.15)" },
  progressFill: { height: "100%", backgroundColor: "#8B5CF6" },
  watchedOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.4)", alignItems: "center", justifyContent: "center" },
  watchedCheck: { width: 20, height: 20, borderRadius: 10, backgroundColor: "rgba(34,197,94,0.85)", alignItems: "center", justifyContent: "center" },

  epInfo: { flex: 1 },
  epTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#fff", lineHeight: 16, textAlign: "right" },
  epOverview: { fontSize: 9, color: "rgba(255,255,255,0.28)", lineHeight: 14, fontFamily: "Cairo_400Regular", textAlign: "right", marginTop: 3 },
  epMeta: { flexDirection: "row", alignItems: "center", gap: 10, marginTop: 5, flexWrap: "wrap" },
  epMetaItem: { flexDirection: "row", alignItems: "center", gap: 3 },
  epMetaText: { fontSize: 8, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular" },
  epProgressText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(139,92,246,0.65)" },

  epPlayIcon: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.22)", alignItems: "center", justifyContent: "center" },

  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 12, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  emptyText: { fontSize: 14, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_700Bold" },
});
