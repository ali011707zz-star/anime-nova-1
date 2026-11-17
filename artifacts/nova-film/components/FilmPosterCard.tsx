import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React from "react";
import { Image, StyleSheet, Text, View, useWindowDimensions } from "react-native";
import { useColors } from "@/hooks/useColors";
import type { FilmTitle } from "@/utils/filmCatalog";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

type Props = {
  item: FilmTitle;
  cardWidth?: number;
  progress?: number;
  watchedCount?: number;
  onFocus?: () => void;
  tvFocusable?: boolean;
};

export function getFilmRailCardWidth(windowWidth: number, visibleCards = 3, gap = 10) {
  const wideLayout = windowWidth >= 700;
  const maxRailWidth = wideLayout ? 1400 : 960;
  const sidePad = windowWidth >= 900 ? 64 : windowWidth >= 600 ? 44 : 28;
  const railWidth = Math.min(Math.max(windowWidth - sidePad, 0), maxRailWidth);
  const targetVisibleCards =
    windowWidth >= 1200 ? 6 : windowWidth >= 900 ? 5 : windowWidth >= 600 ? 4 : visibleCards;
  const minCardWidth = wideLayout ? 124 : 104;
  const maxCardWidth = wideLayout ? 185 : 165;
  const calculated = Math.floor((railWidth - gap * (targetVisibleCards - 1)) / targetVisibleCards);
  return Math.max(minCardWidth, Math.min(maxCardWidth, calculated));
}

export function getFilmGridColumnCount(windowWidth: number) {
  if (windowWidth >= 1200) return 6;
  if (windowWidth >= 900) return 5;
  if (windowWidth >= 560) return 4;
  return 3;
}

export const FilmPosterCard = React.memo(function FilmPosterCard({
  item,
  cardWidth,
  progress,
  watchedCount = 0,
  onFocus,
  tvFocusable = true,
}: Props) {
  const router = useRouter();
  const colors = useColors();
  const { width: windowWidth, height: windowHeight } = useWindowDimensions();
  const { size: scaleSize } = useTvMetrics();
  const tvMode = isTvDevice(windowWidth, windowHeight);

  const cardW = cardWidth ?? getFilmRailCardWidth(windowWidth, 3);
  const cardH = Math.round(cardW * 1.44);

  const typeBadgeColor =
    item.mediaType === "series"
      ? "#10B981"
      : item.mediaType === "animation"
        ? "#8B5CF6"
        : "#0EA5E9";
  const typeShortLabel =
    item.mediaType === "series" ? "مسلسل" : item.mediaType === "animation" ? "أنميشن" : "فيلم";

  return (
    <Pressable
      onPress={() =>
        router.push({
          pathname: "/film/[id]" as any,
          params: { id: String(item.id) },
        })
      }
      focusable={tvMode && tvFocusable}
      hitSlop={tvMode ? 8 : 4}
      pressRetentionOffset={12}
      onFocus={onFocus}
      android_ripple={tvMode ? undefined : { color: "rgba(14,165,233,0.18)" }}
      style={({ pressed, focused }) => [
        styles.card,
        { width: cardW, opacity: pressed ? 0.86 : 1 },
        tvMode && styles.tvCard,
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          styles.imageContainer,
          {
            width: tvMode ? cardW - 10 : cardW,
            height: cardH,
            borderRadius: colors.radius - 3,
            borderColor: colors.border,
          },
        ]}
      >
        <Image
          source={item.posterSource}
          style={[styles.image, { borderRadius: colors.radius - 3 }]}
          resizeMode="cover"
        />

        {/* Top-right category pill matching AnimeCard */}
        <View style={[styles.typeBadge, { backgroundColor: typeBadgeColor }]}>
          <Text style={styles.typeBadgeText}>{typeShortLabel}</Text>
        </View>

        {/* Bottom-left IMDB / platform star score */}
        <View style={styles.scoreBadge}>
          <Ionicons name="star" size={9.5} color="#FFD700" />
          <Text style={styles.scoreText}>{item.imdbRating.toFixed(1)}</Text>
        </View>

        {/* Top-left quality chip */}
        <View style={styles.qualityBadge}>
          <Text style={styles.qualityText}>
            {item.qualityBadge.includes("4K") ? "4K" : "FHD"}
          </Text>
        </View>

        {progress !== undefined && progress > 0 ? (
          <View style={styles.progressBar}>
            <View
              style={[
                styles.progressFill,
                { width: `${Math.min(progress * 100, 100)}%`, backgroundColor: "#0EA5E9" },
              ]}
            />
          </View>
        ) : null}
      </View>

      <Text
        style={[
          styles.title,
          {
            fontSize: scaleSize(12, 14),
            lineHeight: scaleSize(19, 22),
            color: colors.textPrimary,
          },
        ]}
        numberOfLines={2}
      >
        {item.titleAr}
      </Text>

      <Text
        style={[
          styles.subtitle,
          {
            color: colors.textSecondary,
            fontSize: scaleSize(10, 11.5),
            lineHeight: scaleSize(14, 16),
          },
        ]}
        numberOfLines={1}
      >
        {item.titleEn}
      </Text>

      <Text
        style={[
          styles.metaLine,
          {
            fontSize: scaleSize(10, 12),
            lineHeight: scaleSize(15, 18),
            color: colors.textMuted,
          },
        ]}
        numberOfLines={1}
      >
        {item.episodes.length > 1
          ? `${item.episodes.length} حلقة${watchedCount > 0 ? ` · شوهد ${watchedCount}` : ""}`
          : `${item.year} · ${item.durationOrSeasons}`}
      </Text>
    </Pressable>
  );
});

const styles = StyleSheet.create({
  card: { flexDirection: "column", gap: 5 },
  tvCard: { borderRadius: 12, padding: 4, borderWidth: 2, borderColor: "transparent", gap: 6 },
  imageContainer: {
    overflow: "hidden",
    backgroundColor: "#14171C",
    position: "relative",
    borderWidth: 1,
  },
  image: { width: "100%", height: "100%" },
  typeBadge: {
    position: "absolute",
    top: 6,
    right: 6,
    borderRadius: 6,
    paddingHorizontal: 7,
    paddingVertical: 2,
  },
  typeBadgeText: {
    color: "#FFFFFF",
    fontSize: 9,
    lineHeight: 13,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  qualityBadge: {
    position: "absolute",
    top: 6,
    left: 6,
    backgroundColor: "rgba(0,0,0,0.74)",
    borderRadius: 6,
    paddingHorizontal: 6,
    paddingVertical: 2,
  },
  qualityText: {
    color: "#E2E8F0",
    fontSize: 8.5,
    lineHeight: 12,
    fontFamily: "Cairo_700Bold",
  },
  scoreBadge: {
    position: "absolute",
    bottom: 6,
    left: 6,
    backgroundColor: "rgba(0,0,0,0.78)",
    borderRadius: 6,
    paddingHorizontal: 6,
    paddingVertical: 2.5,
    flexDirection: "row",
    alignItems: "center",
    gap: 3,
  },
  scoreText: {
    color: "#FFD700",
    fontSize: 9.5,
    lineHeight: 13,
    fontFamily: "Cairo_700Bold",
  },
  progressBar: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    height: 3.5,
    backgroundColor: "rgba(255,255,255,0.22)",
  },
  progressFill: { height: 3.5 },
  title: {
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
    writingDirection: "rtl",
    includeFontPadding: true,
    marginTop: 2,
  },
  subtitle: {
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    opacity: 0.82,
    includeFontPadding: true,
  },
  metaLine: {
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    includeFontPadding: true,
  },
});
