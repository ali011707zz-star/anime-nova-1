import React, { useState, useEffect, useRef, useCallback, useMemo } from "react";
import {
  View, Text, Image, ScrollView, FlatList,
  ActivityIndicator, StyleSheet, Platform, I18nManager,
} from "react-native";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
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
  const colors = useColors();
  const s = useMemo(() => createStyles(colors), [colors]);
  const { id, type, season: seasonParam } = useLocalSearchParams<{
    id: string; type: string; season: string;
  }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const tabsRef = useRef<ScrollView>(null);
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

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

  const posterUri = detail?.backdrop_path
    ? `${IMG_W}${detail.backdrop_path}`
    : detail?.poster_path
    ? `${IMG_W}${detail.poster_path}`
    : null;

  const renderEpisode = ({ item, index }: { item: Episode; index: number }) => {
    const progressSec = epProgress[item.episode_number] || 0;
    const estDuration = (item.runtime || 24) * 60;
    const progressPct = progressSec > 0 ? Math.min(100, Math.round((progressSec / estDuration) * 100)) : 0;
    const watched = progressPct >= 90;
    const thumbUri = item.still_path ? `${IMG_S}${item.still_path}` : posterUri;

    return (
      <Pressable
        focusable={tvMode}
        hasTVPreferredFocus={tvMode && index === 0}
        onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
        style={({ pressed, focused }) => [
          s.epCard,
          tvMode && s.tvEpCard,
          watched && s.epCardWatched,
          { backgroundColor: watched ? colors.surfaceElevated : colors.card, borderColor: colors.border, opacity: pressed ? 0.78 : 1 },
          tvMode && tvFocusStyle(focused),
        ]}
        onPress={() => goWatch(item.episode_number, item.name)}
      >
        {/* Thumbnail on Right */}
        <View style={[s.epThumb, tvMode && s.tvEpThumb]}>
          {thumbUri ? (
            <Image source={{ uri: thumbUri }} style={StyleSheet.absoluteFillObject} resizeMode="cover" />
          ) : (
            <View style={s.epThumbPlaceholder}>
              <Ionicons name="play-circle" size={tvMode ? 40 : 22} color={colors.textMuted} />
            </View>
          )}
          <View style={s.epThumbOverlay}>
            <View style={s.epPlayCircle}>
              <Ionicons name={watched ? "checkmark" : "play"} size={12} color="#fff" style={watched ? undefined : { marginLeft: 1 }} />
            </View>
          </View>
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
        </View>

        {/* Info */}
        <View style={[s.epInfo, tvMode && s.tvEpInfo]}>
          <Text style={[s.epTitle, tvMode && s.tvEpTitle]} numberOfLines={1}>
            الحلقة {item.episode_number}
          </Text>
          <Text style={[s.epSubTitle, tvMode && s.tvEpOverview]} numberOfLines={1}>
            {item.name && item.name !== `Episode ${item.episode_number}`
              ? `الموسم ${selSeason} · ${item.name}`
              : `الموسم ${selSeason}`}
          </Text>
        </View>

        {/* Left Chevron */}
        <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
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
            <Ionicons name="chevron-forward" size={tvMode ? 30 : 18} color="rgba(255,255,255,0.7)" />
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

        {/* Season pills */}
        {seasons.length > 1 && (
          <ScrollView
            ref={tabsRef}
            horizontal
            showsHorizontalScrollIndicator={false}
            style={s.seasonTabs}
            contentContainerStyle={s.seasonTabsContent}
          >
            {seasons.map(season => {
              const active = season.season_number === selSeason;
              return (
                <Pressable
                  key={season.id}
                  focusable={tvMode}
                  style={({ focused }) => [s.seasonPill, active && s.seasonPillActive, tvMode && tvFocusStyle(focused)]}
                  onPress={() => setSelSeason(season.season_number)}
                >
                  <Text style={[s.seasonName, active && s.seasonNameActive]}>
                    الموسم {season.season_number}
                  </Text>
                </Pressable>
              );
            })}
          </ScrollView>
        )}
      </View>

      {/* ── Episodes list ── */}
      {epLoading ? (
        <View style={s.center}>
          <ActivityIndicator color="#10B981" size="large" />
          <Text style={s.loadingText}>جاري تحميل الحلقات…</Text>
        </View>
      ) : episodes.length === 0 ? (
        <View style={s.center}>
          <Ionicons name="play-circle" size={48} color={colors.textMuted} />
          <Text style={s.emptyText}>لا توجد حلقات لهذا الموسم</Text>
        </View>
      ) : (
        <TvFocusGuideView autoFocus={tvMode} style={s.tvFocusGuide}>
          <FlatList
            ref={episodeListRef}
            data={episodes}
            keyExtractor={ep => String(ep.episode_number)}
            renderItem={renderEpisode}
            onViewableItemsChanged={episodeFocusScroll.onViewableItemsChanged}
            viewabilityConfig={episodeFocusScroll.viewabilityConfig}
            contentContainerStyle={[s.listContent, tvMode && s.tvListContent]}
            showsVerticalScrollIndicator={false}
            removeClippedSubviews={false}
            initialNumToRender={tvMode ? 10 : 8}
            maxToRenderPerBatch={tvMode ? 8 : 6}
            windowSize={tvMode ? 7 : 5}
            onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
              offset: Math.max(0, index * (tvMode ? 310 : 80)),
              animated: false,
            })}
          />
        </TvFocusGuideView>
      )}
    </View>
  );
}

function createStyles(colors: ReturnType<typeof useColors>) {
return StyleSheet.create({
  container: { flex: 1, backgroundColor: colors.background },
  header: { backgroundColor: colors.background, borderBottomWidth: 1, borderBottomColor: colors.border },
  headerRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 12, paddingHorizontal: 16, paddingTop: 12, paddingBottom: 10 },
  backBtn: { width: 36, height: 36, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: colors.input, borderWidth: 1, borderColor: colors.border },
  headerInfo: { flex: 1, alignItems: "flex-end" },
  headerLabel: { fontSize: 9, color: colors.textMuted, fontFamily: "Cairo_400Regular" },
  headerTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, lineHeight: 18 },
  epCountBadge: { paddingHorizontal: 10, paddingVertical: 5, borderRadius: 10, backgroundColor: "rgba(16,185,129,0.16)", borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  epCountText: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },

  seasonTabs: { marginTop: 4 },
  seasonTabsContent: { paddingHorizontal: 14, gap: 8, paddingBottom: 12, flexDirection: ROW_RTL },
  seasonPill: {
    paddingHorizontal: 18,
    paddingVertical: 8,
    borderRadius: 22,
    backgroundColor: colors.surface,
    borderWidth: 1,
    borderColor: colors.border,
  },
  seasonPillActive: {
    backgroundColor: "#10B981",
    borderColor: "#10B981",
  },
  seasonName: { fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
  seasonNameActive: { color: "#fff" },

  listContent: { paddingHorizontal: 14, paddingTop: 10, paddingBottom: 100 },
  epCard: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
    paddingHorizontal: 12,
    paddingVertical: 10,
    marginVertical: 5,
    borderRadius: 16,
    backgroundColor: colors.card,
    borderWidth: 1,
    borderColor: colors.border,
  },
  tvEpCard: { minHeight: 198, gap: 16, padding: 16, borderRadius: 18, borderWidth: 1 },
  epCardWatched: { opacity: 0.7 },

  epThumb: { width: 96, height: 58, borderRadius: 10, overflow: "hidden", backgroundColor: colors.surfaceElevated, flexShrink: 0, position: "relative" },
  tvEpThumb: { width: 270, height: 152, borderRadius: 14 },
  epThumbPlaceholder: { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center" },
  epThumbOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.25)", alignItems: "center", justifyContent: "center" },
  epPlayCircle: { width: 28, height: 28, borderRadius: 14, backgroundColor: "rgba(16,185,129,0.92)", alignItems: "center", justifyContent: "center" },
  epNumBadge: { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.75)", borderRadius: 6, paddingHorizontal: 5, paddingVertical: 1 },
  epNumText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#fff" },
  progressBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3, backgroundColor: "rgba(255,255,255,0.15)" },
  progressFill: { height: "100%", backgroundColor: "#10B981" },

  epInfo: { flex: 1, alignItems: "flex-end" },
  tvEpInfo: { minHeight: 110, justifyContent: "center" },
  epTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
  tvEpTitle: { fontSize: 21, lineHeight: 30 },
  epSubTitle: { fontSize: 11, color: colors.textSecondary, fontFamily: "Cairo_400Regular", textAlign: "right", marginTop: 2 },
  tvEpOverview: { fontSize: 14, lineHeight: 22, marginTop: 7 },

  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  tvBackBtn: { width: 48, height: 48, borderRadius: 15 },
  tvFocusGuide: { flex: 1 },
  tvListContent: { paddingHorizontal: 32, paddingTop: 14, gap: 14 },
  loadingText: { fontSize: 12, color: colors.textSecondary, fontFamily: "Cairo_400Regular" },
  emptyText: { fontSize: 14, color: colors.textMuted, fontFamily: "Cairo_700Bold" },
});
}
