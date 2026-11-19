/**
 * aw-dubbed/[key].tsx — تفاصيل وحلقات مسلسل أنيميشن مدبلج
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, I18nManager,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { proxyPosterUrl } from "@/utils/media";
import {
  isTvDevice,
  tvFocusStyle,
  TvFocusGuideView,
  TvPressable,
  useTvListFocusScroll, useTvMetrics } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { getWatchContentId, useApp } from "@/context/AppContext";
const Pressable = TvPressable;
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ROW_LTR = I18nManager.isRTL ? "row-reverse" : "row";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

const BASE = getBaseUrl();

interface Season  { label: string; animeId: string; }
interface Episode { number: number; }

function safeDecode(value: string | string[] | undefined): string {
  const raw = Array.isArray(value) ? value[0] : value;
  if (!raw) return "";
  try { return decodeURIComponent(raw); } catch { return raw; }
}

export default function AwDubbedDetailScreen() {
  const colors = useColors();
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const topPad   = Platform.OS === "web" ? 0 : insets.top;
  const { tv: tvMode } = useTvMetrics();
  const params   = useLocalSearchParams<{
    key: string; title: string; titleAr: string;
    seasons: string; poster: string;
  }>();

  const keyParam  = safeDecode(params.key);
  const title     = safeDecode(params.title);
  const titleAr   = safeDecode(params.titleAr);
  const poster    = proxyPosterUrl(safeDecode(params.poster)) || safeDecode(params.poster);
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
  const [epDescOrder, setEpDescOrder] = useState(false);
  const [episodes,   setEpisodes]   = useState<Episode[]>([]);
  const [epLoading,  setEpLoading]  = useState(false);
  const [imgError,   setImgError]   = useState(false);
  const tabsRef = useRef<ScrollView>(null);
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

  const curSeason = seasons[selSeason];
  const sortedEpisodes = React.useMemo(
    () => (epDescOrder ? [...episodes].sort((a, b) => b.number - a.number) : [...episodes].sort((a, b) => a.number - b.number)),
    [episodes, epDescOrder],
  );
  const displayTitle = titleAr || title;
  const { isFavorite, toggleFavorite } = useApp();
  const favKey = keyParam || curSeason?.animeId || displayTitle;
  const numericFavId = React.useMemo(() => getWatchContentId("aw-dubbed", favKey), [favKey]);
  const isFav = isFavorite(numericFavId);
  const handleFavorite = useCallback(async () => {
    await toggleFavorite({
      id: numericFavId,
      contentKind: "aw-dubbed",
      contentKey: favKey,
      routeParams: {
        key: favKey,
        seasons: JSON.stringify(seasons),
      },
      title: displayTitle,
      english: title || displayTitle,
      titleAr: titleAr || displayTitle,
      thumbnail: poster || "",
      episodes: episodes.length || null,
      score: null,
      addedAt: Date.now(),
    });
  }, [toggleFavorite, numericFavId, favKey, seasons, displayTitle, title, titleAr, poster, episodes.length]);

  useEffect(() => {
    if (!curSeason?.animeId) return;
    setEpLoading(true);
    setEpisodes([]);
    fetch(`${BASE}/api/aw-dubbed/episodes?series=${encodeURIComponent(curSeason.animeId)}&order=asc`)
      .then(r => r.json())
      .then(d => { setEpisodes(d.episodes || []); setEpLoading(false); })
      .catch(() => setEpLoading(false));
  }, [curSeason?.animeId]);

  const watchedStorageKey = `watched-awdub:${favKey}:s${selSeason}`;
  const [watchedSet, setWatchedSet] = useState<Set<number>>(new Set());

  useEffect(() => {
    let active = true;
    void AsyncStorage.getItem(watchedStorageKey)
      .then((raw) => {
        if (!active) return;
        const arr = raw ? JSON.parse(raw) : [];
        setWatchedSet(new Set(Array.isArray(arr) ? arr.map(Number).filter(Number.isFinite) : []));
      })
      .catch(() => {
        if (active) setWatchedSet(new Set());
      });
    return () => { active = false; };
  }, [watchedStorageKey]);

  const toggleWatched = useCallback((epNum: number) => {
    setWatchedSet((prev) => {
      const next = new Set(prev);
      if (next.has(epNum)) next.delete(epNum);
      else next.add(epNum);
      void AsyncStorage.setItem(watchedStorageKey, JSON.stringify([...next])).catch(() => {});
      return next;
    });
  }, [watchedStorageKey]);

  const openWatch = useCallback((ep: Episode) => {
    setWatchedSet((prev) => {
      if (prev.has(ep.number)) return prev;
      const next = new Set(prev);
      next.add(ep.number);
      void AsyncStorage.setItem(watchedStorageKey, JSON.stringify([...next])).catch(() => {});
      return next;
    });
    router.push({
      pathname: "/watch",
      params: {
        mode: "aw-dubbed",
        awSeries: curSeason?.animeId || "",
        ep:      String(ep.number),
        title,
        titleAr,
        awSeasonLabel: curSeason?.label || "الحلقات",
        awSeasonIndex: String(selSeason),
        cover: poster ? encodeURIComponent(poster) : "",
        awSeasons: encodeURIComponent(JSON.stringify(seasons)),
        awKey: encodeURIComponent(keyParam || ""),
      },
    });
  }, [curSeason, selSeason, title, titleAr, poster, seasons, keyParam, router, watchedStorageKey]);

  const renderEp = useCallback(({ item: ep, index }: { item: Episode; index: number }) => {
    const isWatched = watchedSet.has(ep.number);
    return (
      <Pressable
        onPress={() => openWatch(ep)}
        focusable={tvMode}
        hasTVPreferredFocus={tvMode && ep.number === episodes[0]?.number}
        onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
        style={({ pressed, focused }) => [
          styles.epRow,
          { backgroundColor: colors.card, borderColor: isWatched ? "rgba(16,185,129,0.34)" : colors.border },
          tvMode && styles.tvEpRow,
          { opacity: pressed ? 0.78 : 1 },
          tvMode && tvFocusStyle(focused),
        ]}
      >
        <View style={[styles.epThumb, { backgroundColor: colors.surfaceElevated }, tvMode && styles.tvEpThumb]}>
          {poster && !imgError ? (
            <Image source={{ uri: poster }} style={StyleSheet.absoluteFill} resizeMode="cover"
              onError={() => setImgError(true)} />
          ) : (
            <View style={styles.epPlaceholder}>
              <Ionicons name="play-circle-outline" size={22} color={colors.textMuted} />
            </View>
          )}
          <View style={styles.epPlayOverlay}>
            <View style={[styles.epPlayBtn, isWatched && { backgroundColor: "#10B981" }]}>
              <Ionicons name={isWatched ? "checkmark" : "play"} size={isWatched ? 14 : 12} color="#fff" style={isWatched ? undefined : { marginLeft: 1 }} />
            </View>
          </View>
          <View style={styles.epNumBadge}>
            <Text style={styles.epNumText}>{ep.number}</Text>
          </View>
        </View>
        <View style={styles.epInfo}>
          <Text style={[styles.epTitle, tvMode && styles.tvEpTitle, { color: colors.textPrimary }]}>الحلقة {ep.number}</Text>
          <Text style={[styles.epSub, tvMode && styles.tvEpSub, { color: colors.textSecondary }]}>{curSeason?.label || `الموسم ${selSeason + 1}`}</Text>
          {isWatched ? (
            <View style={styles.watchedBadge}>
              <Text style={styles.watchedBadgeText}>تمت المشاهدة</Text>
            </View>
          ) : null}
        </View>
        <Pressable
          onPress={(e: any) => {
            e?.stopPropagation?.();
            toggleWatched(ep.number);
          }}
          hitSlop={8}
          accessibilityRole="button"
          accessibilityLabel={isWatched ? `إلغاء مشاهدة الحلقة ${ep.number}` : `تحديد الحلقة ${ep.number} كمشاهدة`}
          style={[
            styles.eyeBtn,
            { backgroundColor: colors.input, borderColor: colors.border },
            isWatched && styles.eyeBtnWatched,
          ]}
        >
          <Ionicons
            name={isWatched ? "eye" : "eye-outline"}
            size={18}
            color={isWatched ? "#10B981" : colors.textMuted}
          />
        </Pressable>
        <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
      </Pressable>
    );
  }, [openWatch, toggleWatched, watchedSet, poster, imgError, curSeason, selSeason, episodes, tvMode, colors, episodeFocusScroll.scrollToFocusedIndex]);

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* Header */}
      <View style={[styles.header, { borderBottomColor: colors.border }]}>
        <Pressable
          onPress={() => void handleFavorite()}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel={isFav ? "إزالة من المفضلة" : "إضافة للمفضلة"}
          style={({ focused }) => [
            styles.backBtn,
            { backgroundColor: colors.input, borderColor: colors.border },
            isFav && { backgroundColor: "rgba(239,68,68,0.16)", borderColor: "rgba(239,68,68,0.45)" },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name={isFav ? "heart" : "heart-outline"} size={18} color={isFav ? "#EF4444" : colors.textPrimary} />
        </Pressable>
        <Text style={[styles.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>{displayTitle}</Text>
        <Pressable onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any)} focusable={tvMode}
           style={({ focused }) => [
             styles.backBtn,
             { backgroundColor: colors.input, borderColor: colors.border },
             tvMode && tvFocusStyle(focused),
           ]}>
           <Ionicons name="chevron-forward" size={20} color={colors.textSecondary} />
        </Pressable>
      </View>

      <TvFocusGuideView autoFocus={tvMode} style={styles.tvFocusGuide}>
        <FlatList
          ref={episodeListRef}
          data={sortedEpisodes}
          keyExtractor={ep => String(ep.number)}
          renderItem={renderEp}
          onViewableItemsChanged={episodeFocusScroll.onViewableItemsChanged}
          viewabilityConfig={episodeFocusScroll.viewabilityConfig}
          removeClippedSubviews={false}
          initialNumToRender={tvMode ? 12 : 8}
          maxToRenderPerBatch={tvMode ? 10 : 6}
          windowSize={tvMode ? 7 : 5}
          onScrollToIndexFailed={({ index }) => episodeListRef.current?.scrollToOffset({
            offset: Math.max(0, index * (tvMode ? 100 : 80)),
            animated: false,
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
                  colors={["transparent", "rgba(9,9,11,0.92)"]}
                  style={StyleSheet.absoluteFill}
                  pointerEvents="none"
                />
              </View>
              <View style={styles.heroInfo}>
                <Text style={styles.heroTitle}>{displayTitle}</Text>
                <View style={styles.heroBadge}>
                  <Ionicons name="volume-high-outline" size={11} color="#10B981" />
                  <Text style={styles.heroBadgeText}>مدبلج عربي</Text>
                </View>
                {episodes.length > 0 && (
                  <Text style={styles.heroSub}>{episodes.length} حلقة</Text>
                )}
              </View>
            </View>

            {/* Season pills */}
            {seasons.length > 1 && (
              <View style={styles.seasonsWrap}>
                <ScrollView
        focusable={false} ref={tabsRef} horizontal showsHorizontalScrollIndicator={false}
                  contentContainerStyle={styles.seasonsTabs}>
                  {seasons.map((s, i) => {
                    const active = i === selSeason;
                    return (
                      <Pressable key={s.animeId} onPress={() => setSelSeason(i)}
                        focusable={tvMode}
                        style={({ focused }) => [
                          styles.seasonTab,
                          { backgroundColor: colors.surface, borderColor: colors.border },
                          active && styles.seasonTabActive,
                          tvMode && tvFocusStyle(focused),
                        ]}>
                        <Text style={[styles.seasonTabText, { color: active ? "#fff" : colors.textSecondary }]}>
                          {s.label}
                        </Text>
                      </Pressable>
                    );
                  })}
                </ScrollView>
              </View>
            )}

            <View style={{ flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", paddingHorizontal: 14, marginBottom: 6 }}>
              <Text style={[styles.sectionTitle, { color: colors.textPrimary, paddingHorizontal: 0, marginBottom: 0 }]}>
                الحلقات {episodes.length > 0 ? `(${episodes.length})` : ""}
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
          </View>
        )}
        ListEmptyComponent={
          epLoading ? (
            <View style={styles.center}>
              <ActivityIndicator color="#10B981" />
            </View>
          ) : (
            <View style={styles.center}>
              <Text style={[styles.emptyText, { color: colors.textMuted }]}>لا توجد حلقات</Text>
            </View>
          )
          }
        />
      </TvFocusGuideView>
    </View>
  );
}

const styles = StyleSheet.create({
  container:       { flex: 1, backgroundColor: "#09090B" },
  tvFocusGuide:    { flex: 1 },
  header:          { flexDirection: ROW_LTR, alignItems: "center", paddingHorizontal: 12, paddingVertical: 7,
                     borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  backBtn:         { width: 32, height: 32, borderRadius: 9, backgroundColor: "rgba(255,255,255,0.05)",
                     alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  headerTitle:     { flex: 1, textAlign: "center", color: "#fff", fontSize: 14, fontWeight: "700",
                     fontFamily: "Cairo_700Bold" },
  listContent:     { paddingBottom: 100 },
  tvListContent:   { paddingHorizontal: 56, paddingBottom: 140 },
  heroRow:         { height: 128, marginBottom: 8, position: "relative" },
  posterWrap:      { ...StyleSheet.absoluteFillObject, overflow: "hidden" },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center",
                       backgroundColor: "rgba(16,185,129,0.08)" },
  heroInfo:        { position: "absolute", bottom: 10, right: 14, left: 14, alignItems: ALIGN_RIGHT },
  heroTitle:       { color: "#fff", fontSize: 16, fontWeight: "900", fontFamily: "Cairo_700Bold", lineHeight: 22, textAlign: "right" },
  heroSub:         { color: "rgba(255,255,255,0.6)", fontSize: 11, fontFamily: "Cairo_600SemiBold", marginTop: 2, textAlign: "right" },
  heroBadge:       { flexDirection: ROW_RTL, alignItems: "center", gap: 4, marginTop: 4,
                     backgroundColor: "rgba(16,185,129,0.16)", paddingHorizontal: 8, paddingVertical: 2,
                     borderRadius: 10, borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  heroBadgeText:   { color: "#10B981", fontSize: 11, fontFamily: "Cairo_700Bold" },
  seasonsWrap:     { marginBottom: 10 },
  seasonsTabs:     { paddingHorizontal: 14, gap: 8, flexDirection: ROW_RTL },
  seasonTab:       { paddingHorizontal: 18, paddingVertical: 8, borderRadius: 22,
                     backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  seasonTabActive: { backgroundColor: "#10B981", borderColor: "#10B981" },
  seasonTabText:   { color: "rgba(255,255,255,0.7)", fontSize: 13, fontFamily: "Cairo_700Bold" },
  sectionTitle:    { color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold",
                     paddingHorizontal: 16, marginBottom: 8, textAlign: "right" },
  epRow:           { flexDirection: ROW_RTL, alignItems: "center", marginHorizontal: 14, marginVertical: 5,
                     paddingHorizontal: 12, paddingVertical: 10, borderRadius: 16, borderWidth: 1, gap: 12 },
  tvEpRow:         { minHeight: 74, paddingHorizontal: 14, paddingVertical: 10, gap: 14, borderRadius: 14, borderWidth: 1.5 },
  tvEpThumb:       { width: 108, height: 62, borderRadius: 10 },
  tvEpTitle:       { fontSize: 15, lineHeight: 22 },
  tvEpSub:         { fontSize: 12, lineHeight: 18 },
  epThumb:         { width: 96, height: 58, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                     overflow: "hidden", position: "relative" },
  epPlaceholder:   { flex: 1, alignItems: "center", justifyContent: "center" },
  epPlayOverlay:   { ...StyleSheet.absoluteFillObject, alignItems: "center", justifyContent: "center",
                     backgroundColor: "rgba(0,0,0,0.25)" },
  epPlayBtn:       { width: 28, height: 28, borderRadius: 14, backgroundColor: "rgba(16,185,129,0.92)",
                     alignItems: "center", justifyContent: "center" },
  epNumBadge:      { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.75)",
                     borderRadius: 6, paddingHorizontal: 5, paddingVertical: 1 },
  epNumText:       { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  epInfo:          { flex: 1, alignItems: ALIGN_RIGHT },
  epTitle:         { color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold", textAlign: "right" },
  epSub:           { color: "rgba(255,255,255,0.45)", fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
  center:          { paddingVertical: 40, alignItems: "center", justifyContent: "center" },
  watchedBadge:    { marginTop: 4, alignSelf: ALIGN_RIGHT, paddingHorizontal: 8, paddingVertical: 2, borderRadius: 6, backgroundColor: "rgba(16,185,129,0.14)", borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  watchedBadgeText:{ fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
  eyeBtn:          { width: 34, height: 34, borderRadius: 17, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  eyeBtnWatched:   { backgroundColor: "rgba(16,185,129,0.14)", borderColor: "rgba(16,185,129,0.4)" },
  emptyText:       { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
