import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Image, ScrollView, FlatList,
  ActivityIndicator, StyleSheet, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { isTvDevice, tvFocusStyle, TvFocusGuideView, TvPressable } from "@/utils/tv";
const Pressable = TvPressable;

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
  const tvMode = isTvDevice();
  const tabsRef = useRef<ScrollView>(null);
  const episodeListRef = useRef<FlatList<Episode>>(null);

  const initSeason = parseInt(seasonParam || "1", 10) || 1;

  const [detail, setDetail] = useState<any>(null);
  const [selSeason, setSelSeason] = useState(initSeason);
  const [episodes, setEpisodes] = useState<Episode[]>([]);
  const [epLoading, setEpLoading] = useState(true);
  const [epProgress, setEpProgress] = useState<Record<number, number>>({});

  const base = getBaseUrl();

  useEffect(() => {
    if (!id || !type) return;
    const ctrl = new AbortController();
    fetch(`${base}/api/animation/detail?type=${type}&id=${id}`, { signal: ctrl.signal })
      .then(r => r.json())
      .then(d => { if (!ctrl.signal.aborted) setDetail(d); })
      .catch((e) => { if (e?.name !== "AbortError") console.warn("[Episodes] detail fetch error", e?.message); });
    return () => ctrl.abort();
  }, [type, id]);

  useEffect(() => {
    if (!id) return;
    const ctrl = new AbortController();
    setEpLoading(true);
    fetch(`${base}/api/animation/season?id=${id}&season=${selSeason}`, { signal: ctrl.signal })
      .then(r => r.json())
      .then(d => {
        if (ctrl.signal.aborted) return;
        setEpisodes(d.episodes || []);
        setEpLoading(false);
      })
      .catch((e) => { if (e?.name !== "AbortError") setEpLoading(false); });
    return () => ctrl.abort();
  }, [id, selSeason]);

  useEffect(() => {
    if (!episodes.length) return;
    let cancelled = false;
    const loadProgress = async () => {
      const prog: Record<number, number> = {};
      for (const ep of episodes) {
        if (cancelled) return;
        const key = `anim-wp-${id}-tv-${selSeason}-${ep.episode_number}`;
        const t = parseFloat((await AsyncStorage.getItem(key)) || "0");
        if (t > 0) prog[ep.episode_number] = t;
      }
      if (!cancelled) setEpProgress(prog);
    };
    loadProgress().catch(() => {});
    return () => { cancelled = true; };
  }, [episodes, id, selSeason]);

  const seasons: Season[] = (detail?.seasons || []).filter((s: Season) => s.season_number > 0);
  const title = detail
    ? (detail.original_title || detail.original_name || detail.title || detail.name || "الحلقات")
    : "الحلقات";

  const goWatch = useCallback((ep: number, epName?: string) => {
    const t = encodeURIComponent(title);
    const poster = encodeURIComponent(detail?.poster_path ? `${IMG_W}${detail.poster_path}` : "");
    const et = epName ? `&etitle=${encodeURIComponent(epName)}` : "";
    const totalParam = episodes.length > 0 ? `&totalEps=${episodes.length}` : "";
    router.replace(`/animation/watch?id=${id}&type=${type}&ep=${ep}&season=${selSeason}&title=${t}&poster=${poster}${totalParam}${et}` as any);
  }, [id, type, selSeason, title, detail, router]);

  const renderEpisode = ({ item, index }: { item: Episode; index: number }) => {
    const progressSec = epProgress[item.episode_number] || 0;
    const estDuration = (item.runtime || 24) * 60;
    const progressPct = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
    const watched = progressPct >= 90;

    return (
      <Pressable
        focusable={tvMode}
        hasTVPreferredFocus={tvMode && index === 0}
        onFocus={() => episodeListRef.current?.scrollToIndex({ index, animated: true, viewPosition: 0.35 })}
        style={({ focused }) => [s.epCard, tvMode && s.tvEpCard, watched && s.epCardWatched, tvMode && tvFocusStyle(focused)]}
        onPress={() => goWatch(item.episode_number, item.name)}
      >
        {/* Thumbnail */}
        <View style={[s.epThumb, tvMode && s.tvEpThumb]}>
          {item.still_path ? (
            <Image source={{ uri: `${IMG_S}${item.still_path}` }} style={StyleSheet.absoluteFillObject} resizeMode="cover" />
          ) : (
            <View style={s.epThumbPlaceholder}>
              <Ionicons name="play-circle" size={tvMode ? 40 : 20} color="rgba(255,255,255,0.15)" />
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
        <View style={[s.epInfo, tvMode && s.tvEpInfo]}>
          <Text style={[s.epTitle, tvMode && s.tvEpTitle]} numberOfLines={tvMode ? 2 : 1}>{item.name}</Text>
          {item.overview ? (
            <Text style={[s.epOverview, tvMode && s.tvEpOverview]} numberOfLines={tvMode ? 3 : 2}>{item.overview}</Text>
          ) : null}
          <View style={s.epMeta}>
            {item.runtime ? (
              <View style={s.epMetaItem}>
                <Ionicons name="time" size={tvMode ? 16 : 9} color="rgba(255,255,255,0.22)" />
                <Text style={[s.epMetaText, tvMode && s.tvEpMetaText]}>
                  {item.runtime < 60 ? `${item.runtime} دقيقة` : `${Math.floor(item.runtime / 60)} ساعة`}
                </Text>
              </View>
            ) : null}
            {progressSec > 30 && !watched ? (
              <Text style={[s.epProgressText, tvMode && s.tvEpProgressText]}>
                {Math.floor(progressSec / 60)}:{String(Math.floor(progressSec % 60)).padStart(2, "0")} ▶
              </Text>
            ) : null}
          </View>
        </View>

        {/* Play icon */}
        <View style={[s.epPlayIcon, tvMode && s.tvEpPlayIcon]}>
          <Ionicons name="play" size={tvMode ? 24 : 13} color="#8B5CF6" />
        </View>
      </Pressable>
    );
  };

  return (
    <View style={[s.container, { paddingTop: insets.top }]}>
      {/* ── Header ── */}
      <View style={s.header}>
        <View style={s.headerRow}>
           <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/animations")} focusable={tvMode}
             style={({ focused }) => [s.backBtn, tvMode && s.tvBackBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="chevron-back" size={tvMode ? 30 : 18} color="rgba(255,255,255,0.7)" />
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
                  focusable={tvMode}
                  style={({ focused }) => [s.seasonCard, active && s.seasonCardActive, tvMode && tvFocusStyle(focused)]}
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
          <Ionicons name="play-circle" size={48} color="rgba(255,255,255,0.12)" />
          <Text style={s.emptyText}>لا توجد حلقات لهذا الموسم</Text>
        </View>
      ) : (
        <TvFocusGuideView autoFocus={tvMode} style={s.tvFocusGuide}>
          <FlatList
            ref={episodeListRef}
            data={episodes}
            keyExtractor={ep => String(ep.episode_number)}
            renderItem={renderEpisode}
            contentContainerStyle={[s.listContent, tvMode && s.tvListContent]}
            showsVerticalScrollIndicator={false}
            removeClippedSubviews={false}
            initialNumToRender={tvMode ? 10 : 6}
            maxToRenderPerBatch={tvMode ? 8 : 5}
            windowSize={tvMode ? 7 : 5}
            onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
              offset: Math.max(0, index * (tvMode ? 310 : 76)),
              animated: true,
            })}
            ItemSeparatorComponent={() => <View style={{ height: 8 }} />}
          />
        </TvFocusGuideView>
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
  seasonCardOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.45)" },
  seasonCardGlow: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(139,92,246,0.18)" },
  seasonActiveDot: { position: "absolute", top: 6, right: 6, width: 6, height: 6, borderRadius: 3, backgroundColor: "#a78bfa" },
  seasonCardContent: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6, alignItems: "center" },
  seasonName: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.7)", textAlign: "center", lineHeight: 11 },
  seasonNameActive: { color: "#c4b5fd" },
  seasonEpCount: { fontSize: 7, color: "rgba(255,255,255,0.28)", fontFamily: "Cairo_400Regular", marginTop: 2 },
  seasonEpCountActive: { color: "rgba(196,181,253,0.65)" },

  listContent: { padding: 12, paddingBottom: 100 },
  epCard: { flexDirection: "row", alignItems: "center", gap: 12, padding: 10, borderRadius: 16, backgroundColor: "#111116", borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  tvEpCard: { minHeight: 280, gap: 28, padding: 24, borderRadius: 24, borderWidth: 2 },
  epCardWatched: { opacity: 0.5, backgroundColor: "rgba(255,255,255,0.02)" },

  epThumb: { width: 88, height: 52, borderRadius: 10, overflow: "hidden", backgroundColor: "rgba(255,255,255,0.06)", flexShrink: 0, position: "relative" },
  tvEpThumb: { width: 380, height: 214, borderRadius: 18 },
  epThumbPlaceholder: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  epThumbOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.25)" },
  epNumBadge: { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.6)", borderRadius: 5, paddingHorizontal: 5, paddingVertical: 1 },
  epNumText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.75)" },
  progressBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3, backgroundColor: "rgba(255,255,255,0.15)" },
  progressFill: { height: "100%", backgroundColor: "#8B5CF6" },
  watchedOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.4)", alignItems: "center", justifyContent: "center" },
  watchedCheck: { width: 20, height: 20, borderRadius: 10, backgroundColor: "rgba(34,197,94,0.85)", alignItems: "center", justifyContent: "center" },

  epInfo: { flex: 1 },
  tvEpInfo: { minHeight: 150, justifyContent: "center" },
  epTitle: { fontSize: 12, fontFamily: "Cairo_700Bold", color: "#fff", lineHeight: 16, textAlign: "right" },
  tvEpTitle: { fontSize: 28, lineHeight: 40 },
  epOverview: { fontSize: 9, color: "rgba(255,255,255,0.28)", lineHeight: 14, fontFamily: "Cairo_400Regular", textAlign: "right", marginTop: 3 },
  tvEpOverview: { fontSize: 17, lineHeight: 28, marginTop: 10 },
  epMeta: { flexDirection: "row", alignItems: "center", gap: 10, marginTop: 5, flexWrap: "wrap" },
  epMetaItem: { flexDirection: "row", alignItems: "center", gap: 3 },
  epMetaText: { fontSize: 8, color: "rgba(255,255,255,0.22)", fontFamily: "Cairo_400Regular" },
  tvEpMetaText: { fontSize: 16 },
  epProgressText: { fontSize: 8, fontFamily: "Cairo_700Bold", color: "rgba(139,92,246,0.65)" },
  tvEpProgressText: { fontSize: 16 },

  epPlayIcon: { width: 32, height: 32, borderRadius: 10, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(139,92,246,0.22)", alignItems: "center", justifyContent: "center" },
  tvEpPlayIcon: { width: 76, height: 76, borderRadius: 20 },

  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  tvBackBtn: { width: 64, height: 64, borderRadius: 20 },
  tvFocusGuide: { flex: 1 },
  tvListContent: { paddingHorizontal: 56, paddingTop: 18, gap: 22 },
  loadingText: { fontSize: 12, color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
  emptyText: { fontSize: 14, color: "rgba(255,255,255,0.25)", fontFamily: "Cairo_700Bold" },
});
