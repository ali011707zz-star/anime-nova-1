import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useMemo, useState } from "react";
import {
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
import {
  NOVA_FILM_CATALOG,
  loadWatchedMap,
  makeEpisodeKey,
  saveWatchedMap,
  type FilmEpisode,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

export default function FilmEpisodesScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();

  const title = useMemo(
    () => NOVA_FILM_CATALOG.find((t) => String(t.id) === String(id)) || NOVA_FILM_CATALOG[0],
    [id],
  );

  const seasonsList = useMemo(() => {
    const nums = Array.from(new Set(title.episodes.map((e) => e.seasonNumber)));
    return nums.sort((a, b) => a - b);
  }, [title]);

  const [selectedSeason, setSelectedSeason] = useState<number>(seasonsList[0] || 1);
  const [searchQuery, setSearchQuery] = useState("");
  const [sortAsc, setSortAsc] = useState(true);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  useFocusEffect(
    useCallback(() => {
      loadWatchedMap().then(setWatchedMap);
    }, []),
  );

  const seasonEpisodes = useMemo(() => {
    const q = searchQuery.trim().toLowerCase();
    const list = title.episodes
      .filter((ep) => ep.seasonNumber === selectedSeason)
      .filter((ep) => {
        if (!q) return true;
        return (
          ep.titleAr.toLowerCase().includes(q) ||
          ep.titleEn.toLowerCase().includes(q) ||
          String(ep.episodeNumber).includes(q)
        );
      });
    return sortAsc ? list : [...list].reverse();
  }, [title, selectedSeason, searchQuery, sortAsc]);

  const watchedCount = useMemo(
    () =>
      title.episodes.filter(
        (ep) => watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
      ).length,
    [title, watchedMap],
  );

  const nextToWatch = useMemo(
    () =>
      title.episodes.find(
        (ep) =>
          ep.seasonNumber === selectedSeason &&
          !watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
      ) || seasonEpisodes[0] || title.episodes[0],
    [title, selectedSeason, watchedMap, seasonEpisodes],
  );

  const toggleEpisodeWatched = async (ep: FilmEpisode) => {
    const k = makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber);
    const next = { ...watchedMap };
    if (next[k]) delete next[k];
    else next[k] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const markAllSeasonWatched = async () => {
    const next = { ...watchedMap };
    const eps = title.episodes.filter((ep) => ep.seasonNumber === selectedSeason);
    const allWatched = eps.every((ep) => next[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)]);
    for (const ep of eps) {
      const k = makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber);
      if (allWatched) delete next[k];
      else next[k] = true;
    }
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const openWatch = (ep: FilmEpisode) => {
    router.push({
      pathname: "/film/watch" as any,
      params: {
        titleId: String(title.id),
        season: String(ep.seasonNumber),
        episode: String(ep.episodeNumber),
      },
    });
  };

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 24 : 44);
  const pct = Math.round((watchedCount / Math.max(1, title.episodes.length)) * 100);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* Hero Banner Header modeled on Anime NOVA episodes/[id] */}
      <View style={[s.hero, { height: 158 + topPad }]}>
        <Image
          source={title.backdropSource || title.posterSource}
          style={StyleSheet.absoluteFill}
          resizeMode="cover"
        />
        <LinearGradient
          colors={["rgba(9,10,12,0.45)", "rgba(9,10,12,0.82)", "rgba(9,10,12,0.98)"]}
          style={StyleSheet.absoluteFill}
        />

        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.replace("/(tabs)" as any))}
          style={[s.backBtn, { top: topPad + 8 }]}
        >
          <Ionicons name="chevron-forward" size={20} color="#FFFFFF" />
        </Pressable>

        <View style={s.heroBottom}>
          <View style={s.heroContent}>
            <Image source={title.posterSource} style={s.heroCover} resizeMode="cover" />
            <View style={s.heroInfo}>
              <Text style={s.heroBadge}>{title.categoryLabel}</Text>
              <Text style={s.heroTitle} numberOfLines={2}>
                {title.titleAr}
              </Text>
              <Text style={s.heroSub} numberOfLines={1}>
                {title.titleEn} · تم مشاهدة {watchedCount} من {title.episodes.length}
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
        {seasonsList.length > 0 ? (
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={s.seasonTabs}
          >
            {seasonsList.map((sNum) => {
              const active = sNum === selectedSeason;
              const count = title.episodes.filter((e) => e.seasonNumber === sNum).length;
              return (
                <Pressable
                  key={sNum}
                  onPress={() => setSelectedSeason(sNum)}
                  style={[
                    s.seasonTab,
                    { backgroundColor: colors.card, borderColor: colors.border },
                    active && s.seasonTabActive,
                  ]}
                >
                  <Text style={[s.seasonTabTitle, { color: colors.textPrimary }, active && s.seasonTabTextActive]}>
                    {title.mediaType === "movie"
                      ? "الفيلم الكامل"
                      : title.seasonLabels?.[sNum] || `الموسم ${sNum}`}
                  </Text>
                  <Text style={[s.seasonTabCount, { color: colors.textMuted }, active && s.seasonTabTextActive]}>
                    {count}
                  </Text>
                </Pressable>
              );
            })}
          </ScrollView>
        ) : null}

        <View style={s.quickRow}>
          {nextToWatch ? (
            <Pressable onPress={() => openWatch(nextToWatch)} style={s.quickWatchBtn}>
              <Ionicons name="play" size={14} color="#FFFFFF" />
              <Text style={s.quickWatchText}>
                {title.episodes.length > 1 ? `متابعة ح ${nextToWatch.episodeNumber}` : "مشاهدة الآن"}
              </Text>
            </Pressable>
          ) : null}

          <View style={[s.searchBar, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <Ionicons name="search" size={15} color={colors.textMuted} />
            <TextInput
              value={searchQuery}
              onChangeText={setSearchQuery}
              placeholder="بحث في الحلقات..."
              placeholderTextColor={colors.textMuted}
              style={[s.searchInput, { color: colors.textPrimary }]}
            />
          </View>

          <Pressable
            onPress={() => setSortAsc((v) => !v)}
            style={[s.iconCtrlBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
          >
            <Ionicons name="swap-vertical" size={17} color={colors.textPrimary} />
          </Pressable>

          <Pressable
            onPress={markAllSeasonWatched}
            style={[s.iconCtrlBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
          >
            <Ionicons name="checkmark-done" size={17} color="#10B981" />
          </Pressable>
        </View>
      </View>

      {/* Episode List */}
      <FlatList
        data={seasonEpisodes}
        keyExtractor={(ep) => ep.id}
        contentContainerStyle={{ paddingVertical: 12, paddingBottom: 40 }}
        renderItem={({ item: ep }) => {
          const watched = Boolean(
            watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)],
          );
          return (
            <View
              style={[
                s.row,
                {
                  backgroundColor: watched ? "rgba(16,185,129,0.08)" : colors.card,
                  borderColor: watched ? "rgba(16,185,129,0.42)" : colors.border,
                },
              ]}
            >
              <Pressable onPress={() => openWatch(ep)} style={s.epMain}>
                <View style={s.thumbWrap}>
                  <Image
                    source={title.backdropSource || title.posterSource}
                    style={s.thumb}
                    resizeMode="cover"
                  />
                  <View style={s.thumbOverlay}>
                    <View
                      style={[
                        s.thumbPlayCircle,
                        { backgroundColor: watched ? "rgba(16,185,129,0.9)" : "rgba(14,165,233,0.9)" },
                      ]}
                    >
                      <Ionicons name="play" size={13} color="#FFFFFF" />
                    </View>
                  </View>
                  <View style={s.epBadgeOverlay}>
                    <Text style={s.epBadgeText}>ح {ep.episodeNumber}</Text>
                  </View>
                </View>

                <View style={s.epInfo}>
                  <View style={s.epNumRow}>
                    <Text style={[s.epNum, { color: colors.textPrimary }]} numberOfLines={1}>
                      {ep.titleAr}
                    </Text>
                  </View>
                  <Text style={[s.epSub, { color: colors.textSecondary }]} numberOfLines={1}>
                    {ep.titleEn} · {ep.durationMinutes} دقيقة
                  </Text>
                  <View style={s.epTagsRow}>
                    <View style={s.srvTag}>
                      <Text style={s.srvTagText}>{ep.servers.length} سيرفرات جاهزة</Text>
                    </View>
                    {watched ? (
                      <View style={s.watchedTag}>
                        <Text style={s.watchedTagText}>تمت المشاهدة ✓</Text>
                      </View>
                    ) : null}
                  </View>
                </View>
              </Pressable>

              <Pressable
                onPress={() => toggleEpisodeWatched(ep)}
                style={[
                  s.eyeBtn,
                  {
                    backgroundColor: watched ? "rgba(16,185,129,0.16)" : colors.surfaceElevated,
                    borderColor: watched ? "rgba(16,185,129,0.45)" : colors.border,
                  },
                ]}
              >
                <Ionicons
                  name={watched ? "eye" : "eye-outline"}
                  size={18}
                  color={watched ? "#10B981" : colors.textMuted}
                />
              </Pressable>
            </View>
          );
        }}
      />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  hero: { position: "relative", justifyContent: "flex-end", overflow: "hidden" },
  backBtn: {
    position: "absolute",
    right: 14,
    width: 39,
    height: 39,
    borderRadius: 12,
    backgroundColor: "rgba(9,10,12,0.65)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.2)",
    alignItems: "center",
    justifyContent: "center",
    zIndex: 10,
  },
  heroBottom: { paddingHorizontal: 16, paddingBottom: 12, gap: 10 },
  heroContent: { flexDirection: ROW_RTL, alignItems: "flex-end", gap: 12 },
  heroCover: {
    width: 66,
    height: 94,
    borderRadius: 11,
    borderWidth: 1.5,
    borderColor: "rgba(255,255,255,0.22)",
  },
  heroInfo: { flex: 1, alignItems: "flex-end", gap: 3 },
  heroBadge: {
    color: "#38BDF8",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  heroTitle: {
    color: "#FFFFFF",
    fontSize: 17,
    lineHeight: 24,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  heroSub: {
    color: "rgba(255,255,255,0.78)",
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
  },
  heroProgressTrack: {
    width: "100%",
    height: 5.5,
    borderRadius: 4,
    backgroundColor: "rgba(255,255,255,0.20)",
    overflow: "hidden",
  },
  progressFill: { height: "100%", backgroundColor: "#0EA5E9", borderRadius: 4 },
  controls: {
    paddingHorizontal: 14,
    paddingTop: 12,
    paddingBottom: 10,
    borderBottomWidth: 1,
    gap: 10,
  },
  seasonTabs: { flexDirection: ROW_RTL, gap: 8 },
  seasonTab: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 15,
    paddingVertical: 8,
    borderRadius: 20,
    borderWidth: 1,
  },
  seasonTabActive: { backgroundColor: "#0EA5E9", borderColor: "#38BDF8" },
  seasonTabTitle: { fontSize: 12.5, fontFamily: "Cairo_800ExtraBold", includeFontPadding: true },
  seasonTabCount: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  seasonTabTextActive: { color: "#FFFFFF" },
  quickRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 8 },
  quickWatchBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    height: 42,
    paddingHorizontal: 14,
    borderRadius: 13,
    backgroundColor: "#0EA5E9",
  },
  quickWatchText: {
    color: "#FFFFFF",
    fontSize: 12.5,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  searchBar: {
    flex: 1,
    minWidth: 0,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 7,
    height: 42,
    borderRadius: 13,
    borderWidth: 1,
    paddingHorizontal: 11,
  },
  searchInput: {
    flex: 1,
    textAlign: "right",
    fontSize: 12.5,
    fontFamily: "Cairo_600SemiBold",
    paddingVertical: 0,
  },
  iconCtrlBtn: {
    width: 42,
    height: 42,
    borderRadius: 13,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  row: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    marginHorizontal: 14,
    marginVertical: 5,
    padding: 11,
    borderRadius: 15,
    borderWidth: 1,
  },
  epMain: { flex: 1, flexDirection: ROW_RTL, alignItems: "center", gap: 11 },
  thumbWrap: {
    width: 96,
    height: 60,
    borderRadius: 11,
    overflow: "hidden",
    backgroundColor: "#14171C",
    position: "relative",
  },
  thumb: { width: "100%", height: "100%" },
  thumbOverlay: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.24)",
    alignItems: "center",
    justifyContent: "center",
  },
  thumbPlayCircle: {
    width: 28,
    height: 28,
    borderRadius: 14,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1.5,
    borderColor: "rgba(255,255,255,0.7)",
  },
  epBadgeOverlay: {
    position: "absolute",
    bottom: 4,
    right: 4,
    backgroundColor: "rgba(0,0,0,0.78)",
    borderRadius: 5,
    paddingHorizontal: 5,
    paddingVertical: 1,
  },
  epBadgeText: { color: "#FFFFFF", fontSize: 9.5, fontFamily: "Cairo_800ExtraBold" },
  epInfo: { flex: 1, alignItems: "flex-end", gap: 3 },
  epNumRow: { flexDirection: ROW_RTL, alignItems: "center" },
  epNum: { fontSize: 13, lineHeight: 19, fontFamily: "Cairo_800ExtraBold", textAlign: "right", includeFontPadding: true },
  epSub: { fontSize: 11, lineHeight: 16, fontFamily: "Cairo_400Regular", textAlign: "right" },
  epTagsRow: { flexDirection: ROW_RTL, gap: 6, marginTop: 2 },
  srvTag: {
    backgroundColor: "rgba(14,165,233,0.14)",
    borderRadius: 6,
    paddingHorizontal: 7,
    paddingVertical: 2,
  },
  srvTagText: { color: "#0EA5E9", fontSize: 9.5, fontFamily: "Cairo_700Bold" },
  watchedTag: {
    backgroundColor: "rgba(16,185,129,0.16)",
    borderRadius: 6,
    paddingHorizontal: 7,
    paddingVertical: 2,
  },
  watchedTagText: { color: "#10B981", fontSize: 9.5, fontFamily: "Cairo_700Bold" },
  eyeBtn: {
    width: 38,
    height: 38,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
});
