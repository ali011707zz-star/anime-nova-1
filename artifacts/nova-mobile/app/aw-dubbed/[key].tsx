/**
 * aw-dubbed/[key].tsx — تفاصيل وحلقات مسلسل أنيميشن مدبلج
 */
import React, { useState, useEffect, useCallback, useRef, useMemo } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  View, Text, Image, FlatList,
  ActivityIndicator, StyleSheet, Platform, ScrollView, I18nManager,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import {
  isTvDevice,
  tvFocusStyle,
  TvFocusGuideView,
  TvPressable,
  useTvListFocusScroll,
} from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";

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

async function getWatchedSet(storageKey: string): Promise<Set<number>> {
  try {
    const raw = await AsyncStorage.getItem(storageKey);
    return new Set(raw ? JSON.parse(raw) : []);
  } catch {
    return new Set();
  }
}

async function saveWatchedSet(storageKey: string, watched: Set<number>) {
  try {
    await AsyncStorage.setItem(storageKey, JSON.stringify([...watched]));
  } catch { /* ignore storage errors */ }
}

export default function AwDubbedDetailScreen() {
  const colors   = useColors();
  const insets   = useSafeAreaInsets();
  const router   = useRouter();
  const { watchHistory } = useApp();
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
  const [watched,    setWatched]    = useState<Set<number>>(new Set());
  const tabsRef = useRef<ScrollView>(null);
  const episodeListRef = useRef<FlatList<Episode>>(null);
  const episodeFocusScroll = useTvListFocusScroll(episodeListRef, 0.35);

  const curSeason = seasons[selSeason];
  const displayTitle = titleAr || title;
  const seriesKey = curSeason?.animeId || keyParam || "";
  const watchedStorageKey = `watched-aw-dubbed-${seriesKey}`;

  const syncWatched = useCallback(() => {
    if (!seriesKey) return;
    let active = true;
    void getWatchedSet(watchedStorageKey).then((stored) => {
      if (!active) return;
      const merged = new Set(stored);
      for (const item of watchHistory) {
        if (item.contentKind === "aw-dubbed" && item.contentKey === seriesKey && Number(item.ep) > 0) {
          merged.add(Number(item.ep));
        }
      }
      setWatched(merged);
    });
    return () => { active = false; };
  }, [seriesKey, watchedStorageKey, watchHistory]);

  useEffect(() => {
    return syncWatched();
  }, [syncWatched]);

  useFocusEffect(useCallback(() => {
    return syncWatched();
  }, [syncWatched]));

  const toggleWatched = useCallback((epNum: number) => {
    if (!seriesKey) return;
    setWatched((prev) => {
      const next = new Set(prev);
      if (next.has(epNum)) next.delete(epNum);
      else next.add(epNum);
      void saveWatchedSet(watchedStorageKey, next);
      return next;
    });
  }, [seriesKey, watchedStorageKey]);

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
    if (seriesKey) {
      setWatched((prev) => {
        const next = new Set(prev);
        next.add(ep.number);
        void saveWatchedSet(watchedStorageKey, next);
        return next;
      });
    }
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
  }, [curSeason, selSeason, title, titleAr, poster, seasons, keyParam, router, seriesKey, watchedStorageKey]);

  const watchedCount = useMemo(
    () => episodes.reduce((acc, ep) => acc + (watched.has(ep.number) ? 1 : 0), 0),
    [episodes, watched],
  );

  const renderEp = useCallback(({ item: ep, index }: { item: Episode; index: number }) => {
    const isEpWatched = watched.has(ep.number);
    return (
      <View
        style={[
          styles.epRow,
          {
            backgroundColor: colors.card,
            borderColor: isEpWatched ? "rgba(16,185,129,0.28)" : colors.border,
          },
          tvMode && styles.tvEpRow,
        ]}
      >
        <Pressable
          onPress={() => openWatch(ep)}
          focusable={tvMode}
          hasTVPreferredFocus={tvMode && ep.number === episodes[0]?.number}
          onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
          style={({ pressed, focused }) => [
            styles.epMain,
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
              <View style={[styles.epPlayBtn, isEpWatched && styles.epPlayBtnWatched]}>
                <Ionicons
                  name={isEpWatched ? "checkmark" : "play"}
                  size={isEpWatched ? 15 : 12}
                  color="#fff"
                  style={isEpWatched ? undefined : { marginLeft: 1 }}
                />
              </View>
            </View>
            <View style={styles.epNumBadge}>
              <Text style={styles.epNumText}>{ep.number}</Text>
            </View>
          </View>
          <View style={styles.epInfo}>
            <View style={styles.epTitleRow}>
              <Text style={[styles.epTitle, tvMode && styles.tvEpTitle, { color: colors.textPrimary }]}>الحلقة {ep.number}</Text>
              {isEpWatched ? (
                <View style={styles.watchedBadge}>
                  <Text style={styles.watchedBadgeText}>تمت المشاهدة</Text>
                </View>
              ) : null}
            </View>
            <Text style={[styles.epSub, tvMode && styles.tvEpSub, { color: colors.textSecondary }]}>{curSeason?.label || `الموسم ${selSeason + 1}`}</Text>
          </View>
        </Pressable>

        <View style={styles.epActions}>
          <Pressable
            onPress={() => toggleWatched(ep.number)}
            onFocus={() => episodeFocusScroll.scrollToFocusedIndex(index)}
            focusable={tvMode}
            style={({ focused }) => [
              styles.eyeBtn,
              { backgroundColor: colors.surfaceElevated, borderColor: colors.border },
              isEpWatched && styles.eyeBtnWatched,
              tvMode && tvFocusStyle(focused),
            ]}
            accessibilityRole="button"
            accessibilityLabel={isEpWatched ? `إلغاء مشاهدة الحلقة ${ep.number}` : `تحديد الحلقة ${ep.number} كمشاهدة`}
          >
            <Ionicons
              name={isEpWatched ? "eye-outline" : "eye-off-outline"}
              size={tvMode ? 17 : 16}
              color={isEpWatched ? "#10B981" : colors.textMuted}
            />
          </Pressable>
        </View>
      </View>
    );
  }, [openWatch, toggleWatched, watched, poster, imgError, curSeason, selSeason, episodes, tvMode, colors, episodeFocusScroll.scrollToFocusedIndex]);

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* Header */}
      <View style={[styles.header, { borderBottomColor: colors.border }]}>
        <View style={{ width: 36 }} />
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
          data={episodes}
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
                <View style={styles.heroMetaRow}>
                  <View style={styles.heroBadge}>
                    <Ionicons name="volume-high-outline" size={11} color="#10B981" />
                    <Text style={styles.heroBadgeText}>مدبلج عربي</Text>
                  </View>
                  {watchedCount > 0 ? (
                    <View style={styles.heroBadge}>
                      <Text style={styles.heroBadgeText}>تمت مشاهدة {watchedCount}</Text>
                    </View>
                  ) : null}
                </View>
                {episodes.length > 0 && (
                  <Text style={styles.heroSub}>{episodes.length} حلقة</Text>
                )}
              </View>
            </View>

            {/* Season pills */}
            {seasons.length > 1 && (
              <View style={styles.seasonsWrap}>
                <ScrollView ref={tabsRef} horizontal showsHorizontalScrollIndicator={false}
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

            <Text style={[styles.sectionTitle, { color: colors.textPrimary }]}>
              الحلقات {episodes.length > 0 ? `(${episodes.length})` : ""}
            </Text>
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
  header:          { flexDirection: ROW_LTR, alignItems: "center", paddingHorizontal: 12, paddingVertical: 10,
                     borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)" },
  backBtn:         { width: 36, height: 36, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                     alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  headerTitle:     { flex: 1, textAlign: "center", color: "#fff", fontSize: 16, fontWeight: "700",
                     fontFamily: "Cairo_700Bold" },
  listContent:     { paddingBottom: 100 },
  tvListContent:   { paddingHorizontal: 56, paddingBottom: 140 },
  heroRow:         { height: 210, marginBottom: 14, position: "relative" },
  posterWrap:      { ...StyleSheet.absoluteFillObject, overflow: "hidden" },
  posterPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center",
                       backgroundColor: "rgba(16,185,129,0.08)" },
  heroInfo:        { position: "absolute", bottom: 14, right: 14, left: 14, alignItems: ALIGN_RIGHT },
  heroTitle:       { color: "#fff", fontSize: 20, fontWeight: "900", fontFamily: "Cairo_700Bold", lineHeight: 28, textAlign: "right" },
  heroSub:         { color: "rgba(255,255,255,0.6)", fontSize: 12, fontFamily: "Cairo_600SemiBold", marginTop: 4, textAlign: "right" },
  heroMetaRow:     { flexDirection: ROW_RTL, flexWrap: "wrap", alignItems: "center", gap: 6, marginTop: 6 },
  heroBadge:       { flexDirection: ROW_RTL, alignItems: "center", gap: 5,
                     backgroundColor: "rgba(16,185,129,0.16)", paddingHorizontal: 10, paddingVertical: 4,
                     borderRadius: 12, borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  heroBadgeText:   { color: "#10B981", fontSize: 11, fontFamily: "Cairo_700Bold" },
  seasonsWrap:     { marginBottom: 10 },
  seasonsTabs:     { paddingHorizontal: 14, gap: 8, flexDirection: ROW_RTL },
  seasonTab:       { paddingHorizontal: 18, paddingVertical: 8, borderRadius: 22,
                     backgroundColor: "rgba(255,255,255,0.06)", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  seasonTabActive: { backgroundColor: "#10B981", borderColor: "#10B981" },
  seasonTabText:   { color: "rgba(255,255,255,0.7)", fontSize: 13, fontFamily: "Cairo_700Bold" },
  sectionTitle:    { color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold",
                     paddingHorizontal: 16, marginBottom: 8, textAlign: "right" },
  epRow:           { flexDirection: ROW_RTL, alignItems: "center", justifyContent: "space-between", marginHorizontal: 14, marginVertical: 5,
                     paddingHorizontal: 12, paddingVertical: 10, borderRadius: 16, borderWidth: 1, gap: 12 },
  epMain:          { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 12 },
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
                     alignItems: "center", justifyContent: "center", borderWidth: 1.5, borderColor: "rgba(255,255,255,0.65)" },
  epPlayBtnWatched:{ backgroundColor: "rgba(16,185,129,0.95)" },
  epNumBadge:      { position: "absolute", bottom: 4, right: 5, backgroundColor: "rgba(0,0,0,0.75)",
                     borderRadius: 6, paddingHorizontal: 5, paddingVertical: 1 },
  epNumText:       { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  epInfo:          { flex: 1, alignItems: ALIGN_RIGHT, gap: 2 },
  epTitleRow:      { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  epTitle:         { color: "#fff", fontSize: 14, fontFamily: "Cairo_700Bold", textAlign: "right" },
  watchedBadge:    { paddingHorizontal: 8, paddingVertical: 2, borderRadius: 6,
                     backgroundColor: "rgba(16,185,129,0.16)", borderWidth: 1, borderColor: "rgba(16,185,129,0.35)" },
  watchedBadgeText:{ fontSize: 10, fontFamily: "Cairo_700Bold", color: "#10B981" },
  epSub:           { color: "rgba(255,255,255,0.45)", fontSize: 11, fontFamily: "Cairo_400Regular", marginTop: 2, textAlign: "right" },
  epActions:       { flexDirection: "row", alignItems: "center", gap: 8 },
  eyeBtn:          { width: 36, height: 36, borderRadius: 11, alignItems: "center", justifyContent: "center", borderWidth: 1 },
  eyeBtnWatched:   { backgroundColor: "rgba(16,185,129,0.16)", borderColor: "rgba(16,185,129,0.45)" },
  center:          { paddingVertical: 40, alignItems: "center", justifyContent: "center" },
  emptyText:       { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
