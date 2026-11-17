import { Ionicons } from "@expo/vector-icons";
import { useQuery } from "@tanstack/react-query";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
  Image,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { fetchFilmDetail, fetchFilmSeason } from "@/utils/filmApi";
import {
  getImageSource,
  loadWatchedMap,
  makeEpisodeKey,
  saveWatchedMap,
  type FilmEpisode,
  type TmdbMediaType,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

export default function FilmEpisodesScreen() {
  const params = useLocalSearchParams<{ id: string; type?: string; title?: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const listRef = useRef<FlatList>(null);

  const tmdbId = String(params.id || "");
  const tmdbType: TmdbMediaType = params.type === "movie" ? "movie" : "tv";
  const initialTitle = params.title ? String(params.title) : "الحلقات";

  const { data: detail, isLoading } = useQuery({
    queryKey: ["nova-film-detail", tmdbType, tmdbId],
    queryFn: () => fetchFilmDetail(tmdbType, tmdbId),
    enabled: Boolean(tmdbId),
    staleTime: 10 * 60_000,
  });

  const [selectedSeason, setSelectedSeason] = useState<number>(1);
  const [seasonEpisodes, setSeasonEpisodes] = useState<FilmEpisode[]>([]);
  const [seasonLoading, setSeasonLoading] = useState(false);
  const [searchQuery, setSearchQuery] = useState("");
  const [sortAsc, setSortAsc] = useState(true);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  useEffect(() => {
    if (!detail) return;
    const firstSeason = detail.seasons[0]?.seasonNumber || 1;
    setSelectedSeason(firstSeason);
    setSeasonEpisodes(detail.episodes || []);
  }, [detail]);

  const handleSelectSeason = async (sNum: number) => {
    setSelectedSeason(sNum);
    if (!detail || detail.tmdbType !== "tv") return;
    if (detail.seasons[0]?.seasonNumber === sNum && detail.episodes.length > 0) {
      setSeasonEpisodes(detail.episodes);
      return;
    }
    setSeasonLoading(true);
    try {
      const eps = await fetchFilmSeason(detail.id, sNum);
      setSeasonEpisodes(eps);
    } catch {
      setSeasonEpisodes([]);
    } finally {
      setSeasonLoading(false);
    }
  };

  useFocusEffect(
    useCallback(() => {
      loadWatchedMap().then(setWatchedMap);
    }, []),
  );

  const filteredEpisodes = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    const list = seasonEpisodes.filter((ep) => {
      if (!q) return true;
      return (
        ep.titleAr.toLowerCase().includes(q) ||
        ep.titleEn.toLowerCase().includes(q) ||
        String(ep.episodeNumber).includes(q)
      );
    });
    return sortAsc ? list : [...list].reverse();
  }, [seasonEpisodes, searchQuery, sortAsc]);

  const watchedCount = useMemo(() => {
    if (!detail) return 0;
    return seasonEpisodes.filter(
      (ep) => watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
    ).length;
  }, [detail, seasonEpisodes, watchedMap]);

  const nextToWatch = useMemo(() => {
    if (!detail) return undefined;
    return (
      seasonEpisodes.find(
        (ep) => !watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
      ) || filteredEpisodes[0] || seasonEpisodes[0]
    );
  }, [detail, seasonEpisodes, watchedMap, filteredEpisodes]);

  const toggleEpisodeWatched = async (ep: FilmEpisode) => {
    if (!detail) return;
    const k = makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType);
    const next = { ...watchedMap };
    if (next[k]) delete next[k];
    else next[k] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const markAllSeasonWatched = async () => {
    if (!detail) return;
    const next = { ...watchedMap };
    const allWatched = seasonEpisodes.every(
      (ep) => next[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)],
    );
    for (const ep of seasonEpisodes) {
      const k = makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType);
      if (allWatched) delete next[k];
      else next[k] = true;
    }
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const openWatch = (ep: FilmEpisode) => {
    if (!detail) return;
    router.push({
      pathname: "/film/watch" as any,
      params: {
        id: String(detail.id),
        type: detail.tmdbType,
        season: String(ep.seasonNumber),
        episode: String(ep.episodeNumber),
        title: detail.titleAr,
        poster: detail.posterUrl || detail.backdropUrl || "",
      },
    });
  };

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);
  const pct = Math.round((watchedCount / Math.max(1, seasonEpisodes.length)) * 100);
  const goBack = () => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any));

  const backdropSrc = getImageSource(detail?.backdropUrl || detail?.posterUrl);
  const posterSrc = getImageSource(detail?.posterUrl || detail?.backdropUrl);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* Sticky Top Bar matching Anime NOVA episodes/[id] */}
      <View
        style={[
          s.topBar,
          {
            paddingTop: topPad,
            height: topPad + 54,
            backgroundColor: colors.surface,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <Pressable
          onPress={goBack}
          accessibilityLabel="رجوع"
          style={[s.topBarBack, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
        >
          <Ionicons name="chevron-forward" size={20} color={colors.textPrimary} />
        </Pressable>
        <View style={s.topBarHeading}>
          <Text style={[s.topBarTitle, { color: colors.textPrimary }]} numberOfLines={1}>
            {detail?.titleAr || initialTitle}
          </Text>
          <Text style={[s.topBarSub, { color: colors.textMuted }]} numberOfLines={1}>
            الموسم {selectedSeason} · {seasonEpisodes.length} حلقة ({pct}% مكتمل)
          </Text>
        </View>
        <View style={s.topBarTools}>
          <Pressable
            onPress={() => listRef.current?.scrollToOffset({ offset: 0, animated: true })}
            style={[s.toolBtn, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
          >
            <Ionicons name="chevron-up" size={16} color={colors.textPrimary} />
          </Pressable>
          <Pressable
            onPress={() => setSortAsc((v) => !v)}
            style={[s.toolBtn, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
          >
            <Ionicons name="swap-vertical" size={16} color="#0EA5E9" />
          </Pressable>
        </View>
      </View>

      {/* Hero Info Card */}
      <View style={s.hero}>
        {backdropSrc ? (
          <Image source={backdropSrc} style={StyleSheet.absoluteFill} resizeMode="cover" />
        ) : null}
        <LinearGradient
          colors={["rgba(9,10,12,0.50)", "rgba(9,10,12,0.86)", "rgba(9,10,12,0.98)"]}
          style={StyleSheet.absoluteFill}
        />
        <View style={s.heroBottom}>
          <View style={s.heroContent}>
            {posterSrc ? (
              <Image source={posterSrc} style={s.heroCover} resizeMode="cover" />
            ) : null}
            <View style={s.heroInfo}>
              <Text style={s.heroBadge}>{detail?.categoryLabel || "مسلسلات عالمية"}</Text>
              <Text style={s.heroTitle} numberOfLines={2}>
                {detail?.titleAr || initialTitle}
              </Text>
              <Text style={s.heroSub} numberOfLines={1}>
                {detail?.titleEn || ""} · تم مشاهدة {watchedCount} من {seasonEpisodes.length}
              </Text>
            </View>
          </View>
          <View style={s.heroProgressTrack}>
            <View style={[s.progressFill, { width: `${pct}%` }]} />
          </View>
        </View>
      </View>

      {/* Controls Bar */}
      <View style={[s.controls, { backgroundColor: colors.background, borderBottomColor: colors.border }]}>
        {detail && detail.seasons.length > 0 ? (
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={s.seasonTabs}
          >
            {detail.seasons.map((sItem) => {
              const active = sItem.seasonNumber === selectedSeason;
              return (
                <Pressable
                  key={sItem.seasonNumber}
                  onPress={() => void handleSelectSeason(sItem.seasonNumber)}
                  style={[
                    s.seasonTab,
                    {
                      backgroundColor: active ? "#0EA5E9" : colors.card,
                      borderColor: active ? "#0EA5E9" : colors.border,
                    },
                  ]}
                >
                  <Text style={[s.seasonTabText, { color: active ? "#FFFFFF" : colors.textPrimary }]}>
                    {sItem.name} ({sItem.episodeCount})
                  </Text>
                </Pressable>
              );
            })}
          </ScrollView>
        ) : null}

        <View style={s.quickRow}>
          {nextToWatch ? (
            <Pressable onPress={() => openWatch(nextToWatch)} style={s.resumeBtn}>
              <Ionicons name="play" size={14} color="#FFFFFF" />
              <Text style={s.resumeBtnText}>
                تشغيل الحلقة {nextToWatch.episodeNumber}
              </Text>
            </Pressable>
          ) : null}

          <Pressable
            onPress={() => void markAllSeasonWatched()}
            style={[s.toolBtnWide, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
          >
            <Ionicons name="checkmark-done" size={16} color="#10B981" />
            <Text style={[s.toolText, { color: colors.textPrimary }]}>تحديد الكل</Text>
          </Pressable>
        </View>

        <View style={[s.searchBar, { backgroundColor: colors.input, borderColor: colors.border }]}>
          <Ionicons name="search" size={15} color={colors.textMuted} />
          <TextInput
            value={searchQuery}
            onChangeText={setSearchQuery}
            placeholder="ابحث برقم الحلقة أو عنوانها..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.textPrimary }]}
          />
        </View>
      </View>

      {isLoading || seasonLoading ? (
        <View style={{ flex: 1, alignItems: "center", justifyContent: "center", gap: 10 }}>
          <ActivityIndicator size="large" color="#0EA5E9" />
          <Text style={{ fontSize: 13, fontFamily: "Cairo_700Bold", color: colors.textSecondary }}>
            جارٍ تحميل الحلقات...
          </Text>
        </View>
      ) : (
        <FlatList
          ref={listRef}
          data={filteredEpisodes}
          keyExtractor={(item) => item.id}
          showsVerticalScrollIndicator={false}
          contentContainerStyle={{ padding: 14, paddingBottom: 44, gap: 10 }}
          renderItem={({ item: ep }) => {
            const watched = detail
              ? Boolean(watchedMap[makeEpisodeKey(detail.id, ep.seasonNumber, ep.episodeNumber, detail.tmdbType)])
              : false;
            const stillSrc = getImageSource(ep.stillUrl || detail?.backdropUrl);
            return (
              <Pressable
                onPress={() => openWatch(ep)}
                style={[
                  s.epRow,
                  {
                    backgroundColor: watched ? "rgba(16,185,129,0.06)" : colors.card,
                    borderColor: watched ? "rgba(16,185,129,0.45)" : colors.border,
                  },
                ]}
              >
                <View style={s.epMain}>
                  <View style={s.epThumbBox}>
                    {stillSrc ? (
                      <Image source={stillSrc} style={s.epThumbImg} resizeMode="cover" />
                    ) : (
                      <Text style={s.epIndexNum}>{ep.episodeNumber}</Text>
                    )}
                    <View style={s.epIndexPill}>
                      <Text style={s.epIndexPillText}>{ep.episodeNumber}</Text>
                    </View>
                  </View>
                  <View style={{ flex: 1, minWidth: 0, alignItems: ALIGN_RIGHT, gap: 2 }}>
                    <Text style={[s.epTitle, { color: colors.textPrimary }]} numberOfLines={1}>
                      {ep.titleAr}
                    </Text>
                    <Text style={[s.epSub, { color: colors.textMuted }]} numberOfLines={1}>
                      {ep.runtimeMin} دقيقة{ep.airDate ? ` · ${ep.airDate}` : ""}
                    </Text>
                  </View>
                </View>

                <View style={s.epRight}>
                  <Pressable
                    onPress={(e) => {
                      e.stopPropagation();
                      void toggleEpisodeWatched(ep);
                    }}
                    style={[
                      s.checkCircle,
                      {
                        backgroundColor: watched ? "#10B981" : colors.surfaceElevated,
                        borderColor: watched ? "#10B981" : colors.border,
                      },
                    ]}
                    hitSlop={8}
                  >
                    <Ionicons
                      name={watched ? "checkmark" : "eye-outline"}
                      size={14}
                      color={watched ? "#FFFFFF" : colors.textMuted}
                    />
                  </Pressable>
                  <View style={s.playPill}>
                    <Ionicons name="play" size={12} color="#FFFFFF" />
                    <Text style={s.playPillText}>شاهد</Text>
                  </View>
                </View>
              </Pressable>
            );
          }}
        />
      )}
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  topBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    gap: 10,
    paddingHorizontal: 14,
    borderBottomWidth: 1,
  },
  topBarBack: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  topBarHeading: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
  },
  topBarTitle: {
    fontSize: 15,
    lineHeight: 21,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
    textAlign: "right",
  },
  topBarSub: {
    fontSize: 11,
    lineHeight: 16,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  topBarTools: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
  },
  toolBtn: {
    width: 35,
    height: 35,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  hero: { height: 132, position: "relative", justifyContent: "flex-end", overflow: "hidden", backgroundColor: "#0F172A" },
  heroBottom: { paddingHorizontal: 14, paddingBottom: 10, gap: 8 },
  heroContent: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 12 },
  heroCover: {
    width: 58,
    height: 82,
    borderRadius: 10,
    borderWidth: 1.5,
    borderColor: "rgba(255,255,255,0.22)",
  },
  heroInfo: { flex: 1, alignItems: ALIGN_RIGHT, gap: 2 },
  heroBadge: {
    backgroundColor: "rgba(14,165,233,0.9)",
    color: "#FFFFFF",
    fontSize: 10,
    lineHeight: 15,
    fontFamily: "Cairo_700Bold",
    paddingHorizontal: 8,
    paddingVertical: 2,
    borderRadius: 7,
    overflow: "hidden",
    includeFontPadding: true,
  },
  heroTitle: {
    color: "#FFFFFF",
    fontSize: 16,
    lineHeight: 23,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  heroSub: {
    color: "#CBD5E1",
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  heroProgressTrack: {
    height: 4,
    borderRadius: 2,
    backgroundColor: "rgba(255,255,255,0.20)",
    overflow: "hidden",
  },
  progressFill: { height: "100%", backgroundColor: "#0EA5E9", borderRadius: 2 },
  controls: {
    paddingHorizontal: 14,
    paddingVertical: 12,
    gap: 10,
    borderBottomWidth: StyleSheet.hairlineWidth,
  },
  seasonTabs: { flexDirection: ROW_RTL, gap: 8 },
  seasonTab: {
    paddingHorizontal: 14,
    paddingVertical: 7,
    borderRadius: 11,
    borderWidth: 1,
  },
  seasonTabText: {
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  quickRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  resumeBtn: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    backgroundColor: "#0EA5E9",
    height: 40,
    borderRadius: 12,
  },
  resumeBtnText: {
    color: "#FFFFFF",
    fontSize: 13,
    lineHeight: 19,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  toolBtnWide: {
    height: 40,
    paddingHorizontal: 12,
    borderRadius: 12,
    borderWidth: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "center",
    gap: 5,
  },
  toolText: { fontSize: 11.5, fontFamily: "Cairo_700Bold", includeFontPadding: true },
  searchBar: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    height: 40,
    borderRadius: 12,
    borderWidth: 1,
    paddingHorizontal: 12,
  },
  searchInput: {
    flex: 1,
    textAlign: "right",
    fontSize: 12.5,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
  },
  epRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    borderRadius: 15,
    borderWidth: 1,
    padding: 10,
    gap: 10,
  },
  epMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 10 },
  epThumbBox: {
    width: 78,
    height: 50,
    borderRadius: 10,
    overflow: "hidden",
    backgroundColor: "#14171C",
    position: "relative",
    alignItems: "center",
    justifyContent: "center",
  },
  epThumbImg: { width: "100%", height: "100%" },
  epIndexPill: {
    position: "absolute",
    bottom: 4,
    right: 4,
    backgroundColor: "rgba(9,10,12,0.82)",
    borderRadius: 6,
    paddingHorizontal: 6,
    paddingVertical: 1,
  },
  epIndexPillText: { color: "#FFFFFF", fontSize: 10, fontFamily: "Cairo_800ExtraBold" },
  epIndexNum: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", color: "#38BDF8" },
  epTitle: {
    fontSize: 13.5,
    lineHeight: 20,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    includeFontPadding: true,
  },
  epSub: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  epRight: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  checkCircle: {
    width: 32,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  playPill: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 4,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 11,
    paddingVertical: 7,
    borderRadius: 10,
  },
  playPillText: {
    color: "#FFFFFF",
    fontSize: 11.5,
    lineHeight: 16,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
});
