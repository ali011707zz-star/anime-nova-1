import React, { useEffect, useMemo, useState } from "react";
import {
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadFavoriteFilmIds,
  loadWatchedMap,
  makeEpisodeKey,
  saveFavoriteFilmIds,
  saveWatchedMap,
  type FilmEpisode,
  type FilmTitle,
} from "@/utils/filmCatalog";

export default function FilmDetailScreen() {
  const { id } = useLocalSearchParams<{ id: string }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();

  const title: FilmTitle = useMemo(() => {
    const numId = Number(id);
    return NOVA_FILM_CATALOG.find((item) => item.id === numId) || NOVA_FILM_CATALOG[0];
  }, [id]);

  const seasons = useMemo(() => {
    const set = new Set<number>();
    title.episodes.forEach((ep) => set.add(ep.seasonNumber));
    return Array.from(set).sort((a, b) => a - b);
  }, [title.episodes]);

  const [selectedSeason, setSelectedSeason] = useState<number>(seasons[0] || 1);
  const [epSearch, setEpSearch] = useState<string>("");
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [favoriteIds, setFavoriteIds] = useState<number[]>([]);

  useEffect(() => {
    loadWatchedMap().then(setWatchedMap);
    loadFavoriteFilmIds().then(setFavoriteIds);
  }, []);

  const isFavorite = favoriteIds.includes(title.id);

  const toggleFavorite = async () => {
    const next = isFavorite
      ? favoriteIds.filter((fid) => fid !== title.id)
      : [...favoriteIds, title.id];
    setFavoriteIds(next);
    await saveFavoriteFilmIds(next);
  };

  const toggleEpisodeWatched = async (ep: FilmEpisode) => {
    const key = makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber);
    const next = { ...watchedMap };
    if (next[key]) delete next[key];
    else next[key] = true;
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const toggleSeasonWatched = async () => {
    const seasonEps = title.episodes.filter((e) => e.seasonNumber === selectedSeason);
    const allDone = seasonEps.every((e) =>
      Boolean(watchedMap[makeEpisodeKey(title.id, e.seasonNumber, e.episodeNumber)])
    );
    const next = { ...watchedMap };
    for (const e of seasonEps) {
      const k = makeEpisodeKey(title.id, e.seasonNumber, e.episodeNumber);
      if (allDone) delete next[k];
      else next[k] = true;
    }
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const watchedCount = title.episodes.filter((e) =>
    Boolean(watchedMap[makeEpisodeKey(title.id, e.seasonNumber, e.episodeNumber)])
  ).length;
  const totalCount = title.episodes.length;
  const pct = totalCount > 0 ? Math.round((watchedCount / totalCount) * 100) : 0;

  const visibleEpisodes = useMemo(() => {
    const q = epSearch.trim().toLowerCase();
    return title.episodes.filter((ep) => {
      if (ep.seasonNumber !== selectedSeason) return false;
      if (!q) return true;
      return (
        String(ep.episodeNumber).includes(q) ||
        ep.titleAr.toLowerCase().includes(q) ||
        ep.titleEn.toLowerCase().includes(q)
      );
    });
  }, [title.episodes, selectedSeason, epSearch]);

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

  const firstUnwatched =
    title.episodes.find(
      (ep) => !watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)]
    ) || title.episodes[0];

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 48 }}>
        {/* Backdrop Banner */}
        <View style={s.backdropWrap}>
          <Image source={title.backdropSource} style={s.backdropImg} resizeMode="cover" />
          <LinearGradient
            colors={["rgba(9,10,12,0.35)", "rgba(9,10,12,0.85)", colors.background]}
            style={StyleSheet.absoluteFill}
          />

          {/* Top Bar */}
          <View style={[s.topBar, { paddingTop: insets.top + 8 }]}>
            <TouchableOpacity
              onPress={() => router.back()}
              style={[s.circleBtn, { backgroundColor: "rgba(0,0,0,0.65)", borderColor: "rgba(255,255,255,0.16)" }]}
            >
              <Ionicons name="arrow-forward" size={20} color="#fff" />
            </TouchableOpacity>
            <TouchableOpacity
              onPress={toggleFavorite}
              style={[
                s.circleBtn,
                {
                  backgroundColor: isFavorite ? "rgba(244,63,94,0.85)" : "rgba(0,0,0,0.65)",
                  borderColor: isFavorite ? "#FB7185" : "rgba(255,255,255,0.16)",
                },
              ]}
            >
              <Ionicons name={isFavorite ? "heart" : "heart-outline"} size={20} color="#fff" />
            </TouchableOpacity>
          </View>
        </View>

        {/* Floating Poster + Header Meta */}
        <View style={s.headerBody}>
          <View style={s.posterRow}>
            <View style={[s.posterFrame, { borderColor: "rgba(255,255,255,0.16)" }]}>
              <Image source={title.posterSource} style={s.posterImg} resizeMode="cover" />
              <View style={s.qualityPill}>
                <Text style={s.qualityPillText}>{title.qualityBadge}</Text>
              </View>
            </View>

            <View style={s.metaCol}>
              <View style={s.badgesRow}>
                <View style={s.ratingBadge}>
                  <Ionicons name="star" size={12} color="#F59E0B" />
                  <Text style={s.ratingText}>{title.imdbRating.toFixed(1)}</Text>
                </View>
                <View style={[s.tagBadge, { backgroundColor: colors.card, borderColor: colors.border }]}>
                  <Text style={[s.tagBadgeText, { color: colors.text }]}>{title.categoryLabel}</Text>
                </View>
                <View
                  style={[
                    s.tagBadge,
                    {
                      backgroundColor: title.audioLabel.includes("مدبلج")
                        ? "rgba(16,185,129,0.18)"
                        : "rgba(6,182,212,0.18)",
                      borderColor: title.audioLabel.includes("مدبلج") ? "#10B981" : "#06B6D4",
                    },
                  ]}
                >
                  <Text
                    style={[
                      s.tagBadgeText,
                      { color: title.audioLabel.includes("مدبلج") ? "#34D399" : "#22D3EE" },
                    ]}
                  >
                    {title.audioLabel}
                  </Text>
                </View>
              </View>

              <Text style={[s.titleAr, { color: colors.text }]}>{title.titleAr}</Text>
              <Text style={[s.titleEn, { color: colors.textMuted }]}>{title.titleEn}</Text>
              <Text style={[s.subMeta, { color: colors.textMuted }]}>
                {title.year} · {title.studio} · {title.durationOrSeasons}
              </Text>
            </View>
          </View>

          {/* Primary Play CTA */}
          {firstUnwatched && (
            <TouchableOpacity onPress={() => openWatch(firstUnwatched)} style={s.playCta}>
              <Ionicons name="play" size={18} color="#090A0C" />
              <Text style={s.playCtaText}>
                {watchedCount > 0 && watchedCount < totalCount
                  ? `متابعة المشاهدة (الحلقة ${firstUnwatched.episodeNumber})`
                  : title.mediaType === "movie"
                    ? "مشاهدة الفيلم الآن (5 سيرفرات)"
                    : "ابدأ المشاهدة الآن"}
              </Text>
            </TouchableOpacity>
          )}

          {/* Synopsis */}
          <Text style={[s.synopsis, { color: colors.textMuted }]}>{title.synopsis}</Text>

          {/* Genres */}
          <View style={s.genresRow}>
            {title.genres.map((g) => (
              <View key={g} style={[s.genreChip, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Text style={[s.genreChipText, { color: colors.text }]}>{g}</Text>
              </View>
            ))}
          </View>

          {/* Watch Progress Bar */}
          <View style={[s.progressCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={s.progressHeader}>
              <TouchableOpacity onPress={toggleSeasonWatched} style={s.markAllBtn}>
                <Ionicons name="checkmark-done" size={14} color="#10B981" />
                <Text style={s.markAllText}>تحديد الموسم {selectedSeason}</Text>
              </TouchableOpacity>
              <Text style={[s.progressText, { color: colors.text }]}>
                تمت مشاهدة {watchedCount} من {totalCount} ({pct}%)
              </Text>
            </View>
            <View style={s.progressTrack}>
              <View style={[s.progressFill, { width: `${pct}%` }]} />
            </View>
          </View>

          {/* Seasons Selector */}
          <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={s.seasonsRow}>
            {seasons.map((sNum) => {
              const active = selectedSeason === sNum;
              return (
                <TouchableOpacity
                  key={sNum}
                  onPress={() => setSelectedSeason(sNum)}
                  style={[
                    s.seasonPill,
                    {
                      backgroundColor: active ? "#F59E0B" : colors.card,
                      borderColor: active ? "#F59E0B" : colors.border,
                    },
                  ]}
                >
                  <Text style={[s.seasonPillText, { color: active ? "#090A0C" : colors.text }]}>
                    {title.mediaType === "movie" ? "نسخ الفيلم والسيرفرات" : `الموسم ${sNum}`}
                  </Text>
                </TouchableOpacity>
              );
            })}
          </ScrollView>

          {/* Episode Search */}
          {title.episodes.length > 1 && (
            <View style={[s.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
              <Ionicons name="search" size={16} color={colors.textMuted} />
              <TextInput
                value={epSearch}
                onChangeText={setEpSearch}
                placeholder="ابحث عن حلقة..."
                placeholderTextColor={colors.textMuted}
                style={[s.searchInput, { color: colors.text }]}
              />
            </View>
          )}

          {/* Episodes List with Watched Eye Toggle */}
          <View style={s.episodesList}>
            {visibleEpisodes.map((ep) => {
              const watched = Boolean(
                watchedMap[makeEpisodeKey(title.id, ep.seasonNumber, ep.episodeNumber)]
              );
              return (
                <View
                  key={ep.id}
                  style={[
                    s.epRow,
                    {
                      backgroundColor: watched ? "rgba(16,185,129,0.08)" : colors.card,
                      borderColor: watched ? "rgba(16,185,129,0.45)" : colors.border,
                    },
                  ]}
                >
                  <TouchableOpacity
                    onPress={() => toggleEpisodeWatched(ep)}
                    accessibilityLabel="تمت المشاهدة"
                    style={[
                      s.eyeBtn,
                      {
                        backgroundColor: watched ? "rgba(16,185,129,0.22)" : "rgba(255,255,255,0.05)",
                        borderColor: watched ? "#10B981" : colors.border,
                      },
                    ]}
                  >
                    <Ionicons
                      name={watched ? "eye" : "eye-outline"}
                      size={18}
                      color={watched ? "#34D399" : colors.textMuted}
                    />
                  </TouchableOpacity>

                  <TouchableOpacity onPress={() => openWatch(ep)} style={s.epContent}>
                    <View style={s.epTextCol}>
                      <View style={s.epTitleRow}>
                        <Text style={[s.epTitle, { color: colors.text }]} numberOfLines={1}>
                          {ep.titleAr}
                        </Text>
                        {watched && (
                          <View style={s.watchedPill}>
                            <Text style={s.watchedPillText}>تمت المشاهدة</Text>
                          </View>
                        )}
                      </View>
                      <Text style={[s.epSub, { color: colors.textMuted }]}>
                        {ep.durationMinutes} دقيقة · {ep.audioType} · {ep.servers.length} سيرفرات دائمة
                      </Text>
                    </View>
                    <View style={s.epPlayIcon}>
                      <Ionicons name="play" size={16} color="#090A0C" />
                    </View>
                  </TouchableOpacity>
                </View>
              );
            })}
          </View>
        </View>
      </ScrollView>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  backdropWrap: { height: 250, position: "relative" },
  backdropImg: { width: "100%", height: "100%" },
  topBar: {
    position: "absolute",
    top: 0,
    left: 16,
    right: 16,
    flexDirection: "row-reverse",
    justifyContent: "space-between",
    alignItems: "center",
  },
  circleBtn: {
    width: 42,
    height: 42,
    borderRadius: 14,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerBody: { paddingHorizontal: 16, marginTop: -70 },
  posterRow: { flexDirection: "row-reverse", gap: 14, alignItems: "flex-end" },
  posterFrame: {
    width: 118,
    height: 174,
    borderRadius: 16,
    overflow: "hidden",
    borderWidth: 1.5,
    backgroundColor: "#14171C",
  },
  posterImg: { width: "100%", height: "100%" },
  qualityPill: {
    position: "absolute",
    top: 8,
    right: 8,
    backgroundColor: "rgba(0,0,0,0.8)",
    paddingHorizontal: 7,
    paddingVertical: 2,
    borderRadius: 6,
  },
  qualityPillText: { color: "#FBBF24", fontSize: 10, fontFamily: "Cairo_700Bold" },
  metaCol: { flex: 1, alignItems: "flex-end", gap: 4 },
  badgesRow: { flexDirection: "row-reverse", flexWrap: "wrap", gap: 6 },
  ratingBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(245,158,11,0.18)",
    paddingHorizontal: 8,
    paddingVertical: 3,
    borderRadius: 8,
  },
  ratingText: { color: "#FBBF24", fontSize: 12, fontFamily: "Cairo_700Bold" },
  tagBadge: {
    borderWidth: 1,
    paddingHorizontal: 8,
    paddingVertical: 3,
    borderRadius: 8,
  },
  tagBadgeText: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  titleAr: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  titleEn: { fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  subMeta: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  playCta: {
    marginTop: 18,
    backgroundColor: "#F59E0B",
    borderRadius: 14,
    paddingVertical: 13,
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  playCtaText: { color: "#090A0C", fontSize: 14, fontFamily: "Cairo_800ExtraBold" },
  synopsis: {
    marginTop: 14,
    fontSize: 13,
    lineHeight: 22,
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
  },
  genresRow: { flexDirection: "row-reverse", flexWrap: "wrap", gap: 8, marginTop: 12 },
  genreChip: { borderWidth: 1, borderRadius: 10, paddingHorizontal: 10, paddingVertical: 5 },
  genreChipText: { fontSize: 11, fontFamily: "Cairo_600SemiBold" },
  progressCard: { marginTop: 16, borderRadius: 14, borderWidth: 1, padding: 12, gap: 8 },
  progressHeader: { flexDirection: "row", justifyContent: "space-between", alignItems: "center" },
  progressText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  markAllBtn: { flexDirection: "row", alignItems: "center", gap: 4 },
  markAllText: { color: "#10B981", fontSize: 11, fontFamily: "Cairo_700Bold" },
  progressTrack: { height: 7, borderRadius: 4, backgroundColor: "rgba(255,255,255,0.08)", overflow: "hidden" },
  progressFill: { height: "100%", backgroundColor: "#10B981", borderRadius: 4 },
  seasonsRow: { flexDirection: "row-reverse", gap: 8, paddingVertical: 14 },
  seasonPill: { borderWidth: 1, borderRadius: 12, paddingHorizontal: 14, paddingVertical: 8 },
  seasonPillText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  searchBox: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 12,
    height: 42,
    marginBottom: 12,
  },
  searchInput: { flex: 1, textAlign: "right", fontSize: 13, fontFamily: "Cairo_400Regular" },
  episodesList: { gap: 10 },
  epRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
    borderRadius: 14,
    borderWidth: 1,
    padding: 10,
  },
  eyeBtn: {
    width: 40,
    height: 40,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  epContent: { flex: 1, flexDirection: "row-reverse", alignItems: "center", gap: 10 },
  epTextCol: { flex: 1, alignItems: "flex-end", gap: 3 },
  epTitleRow: { flexDirection: "row-reverse", alignItems: "center", gap: 6 },
  epTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", textAlign: "right" },
  watchedPill: {
    backgroundColor: "rgba(16,185,129,0.22)",
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: 6,
  },
  watchedPillText: { color: "#34D399", fontSize: 9, fontFamily: "Cairo_700Bold" },
  epSub: { fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  epPlayIcon: {
    width: 36,
    height: 36,
    borderRadius: 18,
    backgroundColor: "#F59E0B",
    alignItems: "center",
    justifyContent: "center",
  },
});
