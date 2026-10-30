import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  ActivityIndicator,
  FlatList,
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useFocusEffect, useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { TvFocusGuideView, TvPressable, isTvDevice, tvFocusStyle } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { useColors } from "@/hooks/useColors";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { EpisodeDivider } from "@/components/EpisodeDivider";
import { catalogBadge } from "@/hooks/useDubbedCatalogFeed";
import { getStardimaProgressKey } from "@/utils/stardimaProgress";

const Pressable = TvPressable;

type CatalogTitle = {
  id: string | number;
  provider_title_id: string;
  title: string;
  title_ar?: string | null;
  title_en?: string | null;
  media_type?: string;
  release_year?: number | null;
  episode_count?: number | null;
  poster_url?: string | null;
  genres?: string[];
  catalog_status?: string;
  classification?: {
    status?: string;
    localizationLabels?: string[];
    sourceTags?: string[];
    sourceCategories?: string[];
    contentFamilies?: string[];
    detailCheckedAt?: string | null;
  } | null;
};

type CatalogEpisode = {
  id: string | number;
  provider_episode_id: string;
  season_number: number;
  episode_number: number;
  episode_label?: string | null;
  title?: string | null;
  episode_status?: string | null;
};

type EpisodeProgress = { position: number; duration?: number };

function readParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] || "" : value || "";
}

function titleText(title?: CatalogTitle | null) {
  return title?.title_ar || title?.title || title?.title_en || "عنوان";
}

function classificationText(status?: string) {
  if (status === "classified") return "تصنيف مكتمل";
  if (status === "manually_reviewed") return "تمت مراجعته";
  if (status === "needs_review") return "بحاجة لمراجعة";
  if (status === "source_labeled") return "وسوم من المصدر";
  return "التصنيف غير مؤكد";
}

export default function StardimaTitleScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const tvMode = isTvDevice();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const params = useLocalSearchParams<{ providerTitleId?: string }>();
  const providerTitleId = readParam(params.providerTitleId);
  const styles = useMemo(() => StyleSheet.create({
    screen: { flex: 1, backgroundColor: colors.background },
    header: {
      minHeight: 54,
      flexDirection: "row",
      alignItems: "center",
      gap: 12,
      paddingHorizontal: 14,
      paddingVertical: 8,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
    },
    back: {
      width: 38,
      height: 38,
      alignItems: "center",
      justifyContent: "center",
      borderRadius: 11,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    heading: {
      flex: 1,
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 15,
      textAlign: "right",
    },
    list: { flex: 1 },
    listContent: { paddingBottom: Math.max(insets.bottom, 20) + 30 },
    hero: {
      flexDirection: "row",
      alignItems: "flex-end",
      gap: 14,
      padding: 16,
    },
    poster: {
      width: 104,
      aspectRatio: 2 / 3,
      borderRadius: 12,
      backgroundColor: colors.surfaceElevated,
    },
    heroInfo: { flex: 1, gap: 7 },
    title: {
      color: colors.textPrimary,
      fontFamily: "Cairo_800ExtraBold",
      fontSize: 17,
      lineHeight: 25,
      textAlign: "right",
    },
    meta: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 11,
      lineHeight: 17,
      textAlign: "right",
    },
    badgeRail: { flexDirection: "row", flexWrap: "wrap", gap: 6, justifyContent: "flex-end" },
    badge: {
      paddingHorizontal: 8,
      paddingVertical: 3,
      borderRadius: 8,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    badgeText: {
      color: colors.accent,
      fontFamily: "Cairo_700Bold",
      fontSize: 10,
    },
    sectionTitle: {
      color: colors.textSecondary,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
      textAlign: "right",
      paddingHorizontal: 16,
      paddingTop: 8,
      paddingBottom: 6,
    },
    seasonRail: { gap: 7, paddingHorizontal: 14, paddingBottom: 9 },
    seasonButton: {
      minHeight: 34,
      justifyContent: "center",
      paddingHorizontal: 12,
      borderRadius: 18,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surface,
    },
    seasonActive: { borderColor: colors.accentBorder, backgroundColor: colors.accentSurface },
    seasonText: { color: colors.textSecondary, fontFamily: "Cairo_600SemiBold", fontSize: 10 },
    seasonTextActive: { color: colors.accent, fontFamily: "Cairo_700Bold" },
    episodeRow: {
      minHeight: 70,
      flexDirection: "row",
      alignItems: "center",
      gap: 12,
      paddingHorizontal: 15,
      paddingVertical: 10,
    },
    episodeIcon: {
      width: 48,
      height: 48,
      alignItems: "center",
      justifyContent: "center",
      borderRadius: 10,
      backgroundColor: colors.accentSurface,
    },
    episodeInfo: { flex: 1 },
    episodeTitle: {
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
      textAlign: "right",
    },
    episodeMeta: {
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 10,
      textAlign: "right",
      marginTop: 2,
    },
    progressTrack: {
      height: 3,
      marginTop: 6,
      overflow: "hidden",
      borderRadius: 3,
      backgroundColor: colors.border,
    },
    progressFill: {
      height: "100%",
      borderRadius: 3,
      backgroundColor: colors.accent,
    },
    center: { alignItems: "center", justifyContent: "center", padding: 26, gap: 10 },
    stateText: {
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 12,
      textAlign: "center",
      lineHeight: 19,
    },
    retry: { color: colors.accent, fontFamily: "Cairo_700Bold", padding: 8 },
  }), [colors, insets.bottom]);

  const [title, setTitle] = useState<CatalogTitle | null>(null);
  const [episodes, setEpisodes] = useState<CatalogEpisode[]>([]);
  const [selectedSeason, setSelectedSeason] = useState<number | null>(null);
  const [episodeProgress, setEpisodeProgress] = useState<Record<string, EpisodeProgress>>({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const requestRef = useRef<AbortController | null>(null);

  const loadTitle = useCallback(async () => {
    if (!providerTitleId) {
      setError("معرّف العنوان غير موجود.");
      setLoading(false);
      return;
    }
    requestRef.current?.abort();
    const controller = new AbortController();
    requestRef.current = controller;
    setLoading(true);
    setError("");
    try {
      const response = await fetch(
        `${getBaseUrl()}/api/source-catalog/titles/stardima_catalog/${encodeURIComponent(providerTitleId)}`,
        { signal: controller.signal },
      );
      if (!response.ok) throw new Error(response.status === 404 ? "العنوان غير موجود في الكتالوج." : "تعذر تحميل تفاصيل العنوان.");
      const data = await response.json() as { title?: CatalogTitle; episodes?: CatalogEpisode[] };
      if (controller.signal.aborted) return;
      const rows = Array.isArray(data.episodes) ? data.episodes : [];
      setTitle(data.title || null);
      setEpisodes(rows);
      const firstSeason = rows.length ? Math.min(...rows.map((episode) => Number(episode.season_number) || 1)) : 1;
      setSelectedSeason(firstSeason);
    } catch (loadError: any) {
      if (loadError?.name !== "AbortError" && !controller.signal.aborted) {
        setError(loadError?.message || "تعذر تحميل العنوان.");
      }
    } finally {
      if (!controller.signal.aborted) setLoading(false);
    }
  }, [providerTitleId]);

  useEffect(() => {
    void loadTitle();
    return () => {
      requestRef.current?.abort();
    };
  }, [loadTitle]);

  const orderedEpisodes = useMemo(
    () => [...episodes].sort((a, b) =>
      (Number(a.season_number) || 1) - (Number(b.season_number) || 1) ||
      (Number(a.episode_number) || 1) - (Number(b.episode_number) || 1),
    ),
    [episodes],
  );
  const seasons = useMemo(
    () => [...new Set(orderedEpisodes.map((episode) => Number(episode.season_number) || 1))]
      .sort((a, b) => a - b),
    [orderedEpisodes],
  );
  const visibleEpisodes = useMemo(
    () => orderedEpisodes.filter(
      (episode) => (Number(episode.season_number) || 1) === (selectedSeason || 1),
    ),
    [orderedEpisodes, selectedSeason],
  );

  useFocusEffect(useCallback(() => {
    let active = true;
    if (!providerTitleId || visibleEpisodes.length === 0) {
      setEpisodeProgress({});
      return () => { active = false; };
    }
    const keys = visibleEpisodes.map((episode) => getStardimaProgressKey(providerTitleId, episode.id));
    void AsyncStorage.multiGet(keys).then((entries) => {
      if (!active) return;
      const next: Record<string, EpisodeProgress> = {};
      entries.forEach(([key, value], index) => {
        if (!value) return;
        try {
          const parsed = JSON.parse(value) as EpisodeProgress;
          if (Number(parsed.position) > 0) {
            next[String(visibleEpisodes[index]?.id)] = {
              position: Number(parsed.position),
              duration: Number(parsed.duration) > 0 ? Number(parsed.duration) : undefined,
            };
            return;
          }
        } catch {
          const position = Number(value);
          if (position > 0) next[String(visibleEpisodes[index]?.id)] = { position };
        }
      });
      setEpisodeProgress(next);
    }).catch(() => {
      if (active) setEpisodeProgress({});
    });
    return () => { active = false; };
  }, [providerTitleId, visibleEpisodes]));

  const renderEpisode = ({ item, index }: { item: CatalogEpisode; index: number }) => {
    const episodeNumber = Number(item.episode_number) || index + 1;
    const isMovie = title?.media_type === "movie";
    const globalIndex = orderedEpisodes.findIndex((episode) => String(episode.id) === String(item.id));
    const previous = globalIndex > 0 ? orderedEpisodes[globalIndex - 1] : undefined;
    const next = globalIndex >= 0 ? orderedEpisodes[globalIndex + 1] : undefined;
    const progress = episodeProgress[String(item.id)];
    const progressPercent = progress?.duration
      ? Math.min(100, Math.max(0, (progress.position / progress.duration) * 100))
      : 0;
    return (
      <Pressable
        onPress={() => router.push({
          pathname: "/stardima-servers" as any,
          params: {
            providerTitleId,
            episodeId: String(item.id || ""),
            episodeNumber: String(episodeNumber),
            seasonNumber: String(Number(item.season_number) || 1),
            episodeTitle: isMovie ? "الفيلم" : item.title || "",
            title: titleText(title),
            mediaType: isMovie ? "movie" : "series",
            poster: title?.poster_url || "",
            episodeIndex: String(Math.max(0, globalIndex)),
            totalEpisodes: String(orderedEpisodes.length),
            ...(previous ? {
              prevEpisodeId: String(previous.id),
              prevEpisodeNumber: String(Number(previous.episode_number) || 1),
              prevSeasonNumber: String(Number(previous.season_number) || 1),
              prevEpisodeTitle: previous.title || `الحلقة ${previous.episode_number}`,
              prevEpisodeIndex: String(globalIndex - 1),
            } : {}),
            ...(next ? {
              nextEpisodeId: String(next.id),
              nextEpisodeNumber: String(Number(next.episode_number) || 1),
              nextSeasonNumber: String(Number(next.season_number) || 1),
              nextEpisodeTitle: next.title || `الحلقة ${next.episode_number}`,
              nextEpisodeIndex: String(globalIndex + 1),
            } : {}),
          },
        })}
        focusable={tvMode}
        accessibilityRole="button"
        accessibilityLabel={isMovie ? "عرض روابط مشاهدة الفيلم" : `عرض روابط الحلقة ${episodeNumber}`}
        style={({ pressed, focused }) => [
          styles.episodeRow,
          { opacity: pressed ? 0.72 : 1 },
          tvMode && focused && tvFocusStyle(true),
        ]}
      >
        <View style={styles.episodeIcon}>
          <Ionicons name="play" size={18} color={colors.accent} />
        </View>
        <View style={styles.episodeInfo}>
          <Text style={[styles.episodeTitle, tvMode && { fontSize: 16 }]}>
            {isMovie ? "تشغيل الفيلم" : item.title || `الحلقة ${episodeNumber}`}
          </Text>
          <Text style={[styles.episodeMeta, tvMode && { fontSize: 12 }]}>
            {isMovie
              ? "فيلم كامل"
              : `الموسم ${Number(item.season_number) || 1} · الحلقة ${episodeNumber}`}
            {item.episode_status ? " · حلقة مفهرسة" : ""}
            {progress?.position ? ` · متابعة من ${Math.floor(progress.position / 60)} دقيقة` : ""}
          </Text>
          {progressPercent > 0 && progressPercent < 90 ? (
            <View style={styles.progressTrack}>
              <View style={[styles.progressFill, { width: `${progressPercent}%` }]} />
            </View>
          ) : null}
          {progressPercent >= 90 ? (
            <Text style={[styles.episodeMeta, { color: colors.accent }]}>تمت المشاهدة</Text>
          ) : null}
        </View>
        <Ionicons name="chevron-back" size={17} color={colors.textMuted} />
      </Pressable>
    );
  };

  return (
    <View style={[styles.screen, { paddingTop: topPad }]}>
      <RewardedAdPrompt />
      <View style={[styles.header, { minHeight: tvMode ? 68 : 54 }]}>
        <Text numberOfLines={1} style={[styles.heading, tvMode && { fontSize: 22 }]}>
          {titleText(title)}
        </Text>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ focused }) => [styles.back, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="arrow-back" size={21} color={colors.textPrimary} />
        </Pressable>
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.stateText}>جارٍ تحميل العنوان والحلقات...</Text>
        </View>
      ) : error ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={32} color={colors.textMuted} />
          <Text style={styles.stateText}>{error}</Text>
          <Pressable onPress={() => void loadTitle()} accessibilityRole="button">
            <Text style={styles.retry}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : (
        <TvFocusGuideView autoFocus={tvMode} style={{ flex: 1 }}>
          <FlatList
            style={styles.list}
            data={visibleEpisodes}
            keyExtractor={(episode) => String(episode.id || episode.provider_episode_id)}
            renderItem={renderEpisode}
            ItemSeparatorComponent={() => <EpisodeDivider color={colors.border} />}
            contentContainerStyle={styles.listContent}
            initialNumToRender={tvMode ? 12 : 8}
            maxToRenderPerBatch={tvMode ? 10 : 6}
            windowSize={tvMode ? 7 : 5}
            removeClippedSubviews={false}
            ListHeaderComponent={(
              <View>
                <View style={styles.hero}>
                  {title?.poster_url ? (
                    <Image source={{ uri: title.poster_url }} style={styles.poster} resizeMode="cover" />
                  ) : (
                    <View style={[styles.poster, { alignItems: "center", justifyContent: "center" }]}>
                      <Ionicons name={title?.media_type === "movie" ? "film-outline" : "tv-outline"} size={34} color={colors.textMuted} />
                    </View>
                  )}
                  <View style={styles.heroInfo}>
                    <Text style={[styles.title, tvMode && { fontSize: 24, lineHeight: 34 }]}>
                      {titleText(title)}
                    </Text>
                    <Text style={[styles.meta, tvMode && { fontSize: 15 }]}>
                      {title?.media_type === "movie" ? "فيلم" : "مسلسل"}
                      {title?.release_year ? ` · ${title.release_year}` : ""}
                      {episodes.length ? ` · ${episodes.length} ${title?.media_type === "movie" ? "رابط محتوى" : "حلقة مسجلة"}` : ""}
                    </Text>
                    <View style={styles.badgeRail}>
                      {title && catalogBadge(title, "cartoon") ? (
                        <View style={styles.badge}>
                          <Text style={[styles.badgeText, tvMode && { fontSize: 13 }]}>
                            {catalogBadge(title, "cartoon")}
                          </Text>
                        </View>
                      ) : null}
                      <View style={styles.badge}>
                        <Text style={[styles.badgeText, tvMode && { fontSize: 13 }]}>
                          {classificationText(title?.classification?.status)}
                        </Text>
                      </View>
                    </View>
                  </View>
                </View>
                {seasons.length > 1 ? (
                  <>
                    <Text style={[styles.sectionTitle, tvMode && { fontSize: 16 }]}>المواسم</Text>
                    <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.seasonRail}>
                      {seasons.map((season) => {
                        const selected = season === selectedSeason;
                        return (
                          <Pressable
                            key={season}
                            onPress={() => setSelectedSeason(season)}
                            focusable={tvMode}
                            accessibilityRole="button"
                            accessibilityState={{ selected }}
                            style={({ focused }) => [
                              styles.seasonButton,
                              selected && styles.seasonActive,
                              tvMode && focused && tvFocusStyle(true),
                            ]}
                          >
                            <Text style={[
                              styles.seasonText,
                              selected && styles.seasonTextActive,
                              tvMode && { fontSize: 14 },
                            ]}>
                              الموسم {season}
                            </Text>
                          </Pressable>
                        );
                      })}
                    </ScrollView>
                  </>
                ) : null}
                <Text style={[styles.sectionTitle, tvMode && { fontSize: 16 }]}>
                  {title?.media_type === "movie" ? "الفيلم" : "الحلقات"}
                </Text>
              </View>
            )}
            ListEmptyComponent={(
              <View style={styles.center}>
                <Ionicons name="videocam-off-outline" size={28} color={colors.textMuted} />
                <Text style={styles.stateText}>لا توجد حلقات أو روابط مفهرسة لهذا العنوان حاليًا.</Text>
              </View>
            )}
          />
        </TvFocusGuideView>
      )}

    </View>
  );
}
