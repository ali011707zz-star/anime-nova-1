import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React from "react";
import { Image, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { getImageSource, type FilmSummary } from "@/utils/filmCatalog";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

export function getFilmRailCardWidth(
  screenWidth: number,
  mobileColumns = 3,
  gap = 10,
  sidePadding = 28,
): number {
  const usable = Math.max(screenWidth - sidePadding, 260);
  const cols = screenWidth >= 900 ? 5 : screenWidth >= 600 ? 4 : mobileColumns;
  const raw = Math.floor((usable - (cols - 1) * gap) / cols);
  return Math.max(102, Math.min(raw, 178));
}

export function getFilmGridColumnCount(screenWidth: number): number {
  if (screenWidth >= 960) return 5;
  if (screenWidth >= 680) return 4;
  return 3;
}

type Props = {
  item: FilmSummary;
  cardWidth?: number;
  watchedCount?: number;
  progress?: number;
  tvFocusable?: boolean;
};

export const FilmPosterCard = React.memo(function FilmPosterCard({
  item,
  cardWidth = 114,
  watchedCount = 0,
  progress = 0,
  tvFocusable = true,
}: Props) {
  const router = useRouter();
  const colors = useColors();
  const { tv: tvMode, size: scaleSize } = useTvMetrics();

  const cardHeight = Math.round(cardWidth * 1.48);
  const posterSrc = getImageSource(item.posterUrl || item.backdropUrl);
  const typeTag =
    item.mediaType === "animation"
      ? "أنميشن"
      : item.mediaType === "series"
        ? "مسلسل"
        : "فيلم";
  const badgeBg =
    item.mediaType === "series"
      ? "rgba(16,185,129,0.90)"
      : item.mediaType === "animation"
        ? "rgba(139,92,246,0.90)"
        : "rgba(14,165,233,0.90)";

  const openDetail = () => {
    router.push({
      pathname: "/film/[id]" as any,
      params: {
        id: String(item.id),
        type: item.tmdbType,
        title: item.titleAr,
      },
    });
  };

  return (
    <Pressable
      onPress={openDetail}
      focusable={tvMode && tvFocusable}
      accessibilityRole="button"
      accessibilityLabel={item.titleAr}
      style={({ focused, pressed }) => [
        styles.card,
        { width: cardWidth, opacity: pressed ? 0.86 : 1 },
        tvMode && styles.tvCard,
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={[
          styles.imageContainer,
          {
            width: cardWidth,
            height: cardHeight,
            borderRadius: scaleSize(12, 14),
            borderColor: colors.border,
          },
        ]}
      >
        {posterSrc ? (
          <Image source={posterSrc} style={styles.image} resizeMode="cover" />
        ) : (
          <View style={styles.fallbackImg}>
            <Ionicons name="film-outline" size={28} color="#475569" />
          </View>
        )}
        <LinearGradient
          colors={["transparent", "rgba(9,10,12,0.72)"]}
          locations={[0.55, 1]}
          style={StyleSheet.absoluteFill}
        />

        <View style={[styles.typeBadge, { backgroundColor: badgeBg }]}>
          <Text style={styles.typeBadgeText}>{typeTag}</Text>
        </View>

        <View style={styles.qualityBadge}>
          <Text style={styles.qualityText}>{item.qualityBadge}</Text>
        </View>

        <View style={styles.scoreBadge}>
          <Ionicons name="star" size={9} color="#FFD700" />
          <Text style={styles.scoreText}>{item.imdbRating.toFixed(1)}</Text>
        </View>

        {progress > 0 ? (
          <View style={styles.progressBar}>
            <View
              style={[
                styles.progressFill,
                {
                  width: `${Math.min(100, Math.round(progress * 100))}%`,
                  backgroundColor: "#0EA5E9",
                },
              ]}
            />
          </View>
        ) : null}
      </View>

      <Text
        numberOfLines={2}
        style={[
          styles.title,
          {
            color: colors.textPrimary,
            fontSize: scaleSize(11.5, 14.5),
            lineHeight: scaleSize(17, 21),
          },
        ]}
      >
        {item.titleAr}
      </Text>

      <Text
        numberOfLines={1}
        style={[
          styles.subtitle,
          {
            color: colors.textSecondary,
            fontSize: scaleSize(9.5, 12),
            lineHeight: scaleSize(14, 18),
          },
        ]}
      >
        {item.titleEn}
      </Text>

      <Text
        numberOfLines={1}
        style={[
          styles.metaLine,
          {
            color: colors.textMuted,
            fontSize: scaleSize(9, 11.5),
            lineHeight: scaleSize(13.5, 17),
          },
        ]}
      >
        {watchedCount > 0
          ? `تم مشاهدة ${watchedCount}`
          : `${item.year} · ${item.categoryLabel}`}
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
  fallbackImg: {
    ...StyleSheet.absoluteFillObject,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "#14171C",
  },
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
