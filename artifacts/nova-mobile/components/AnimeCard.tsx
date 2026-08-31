import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image, useWindowDimensions } from "react-native";
import { useRouter } from "expo-router";
import React from "react";
import { Pressable, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, useTvMetrics } from "@/utils/tv";
import { getPosterUri, getTvPosterUri } from "@/utils/media";

type Props = {
  anime: AnilistMedia;
  size?: "sm" | "md" | "lg";
  cardWidth?: number;
  progress?: number;
  showProgress?: boolean;
  onFocus?: () => void;
  hasTVPreferredFocus?: boolean;
};

export function getRailCardWidth(windowWidth: number, visibleCards = 3, gap = 10) {
  // Keep the same card density on phones, tablets, and ten-foot screens.
  // A 4K TV can report a very wide logical window, so cap the decoded card
  // size instead of stretching posters until they become blurry and heavy.
  const wideLayout = windowWidth >= 700;
  const maxRailWidth = wideLayout ? 1400 : 960;
  const railWidth = Math.min(Math.max(windowWidth - (wideLayout ? 64 : 32), 0), maxRailWidth);
  const targetVisibleCards = wideLayout ? (windowWidth >= 1200 ? 5 : 4) : visibleCards;
  const minCardWidth = wideLayout ? (windowWidth >= 1400 ? 190 : 145) : 96;
  const maxCardWidth = wideLayout ? 230 : 180;
  const calculated = Math.floor((railWidth - gap * (targetVisibleCards - 1)) / targetVisibleCards);
  return Math.max(minCardWidth, Math.min(maxCardWidth, calculated));
}

export function getRailSidePadding(windowWidth: number) {
  const wideLayout = windowWidth >= 700;
  const maxRailWidth = wideLayout ? 1400 : 960;
  const railWidth = Math.min(Math.max(windowWidth - (wideLayout ? 64 : 32), 0), maxRailWidth);
  return Math.max(wideLayout ? 32 : 16, Math.floor((windowWidth - railWidth) / 2));
}

export function getGridColumnCount(windowWidth: number, windowHeight: number) {
  if (isTvDevice(windowWidth, windowHeight)) {
    const contentWidth = Math.min(Math.max(windowWidth - 128, 0), 1440);
    return Math.max(4, Math.min(6, Math.floor((contentWidth + 10) / 240)));
  }
  if (windowWidth >= 1024) return 5;
  if (windowWidth >= 600) return 4;
  return 3;
}

export const AnimeCard = React.memo(function AnimeCard({ anime, size = "sm", cardWidth, progress, showProgress, onFocus, hasTVPreferredFocus = false }: Props) {
  const router = useRouter();
  const colors = useColors();
  const { width: windowWidth, height: windowHeight } = useWindowDimensions();
  const { size: scaleSize } = useTvMetrics();
  // Recalculate on rotation/window resize and keep poster widths bounded so
  // tablets do not decode a handful of unnecessarily huge images.
  const smallCardWidth = getRailCardWidth(windowWidth, 3);
  const cardW = cardWidth ?? (size === "lg" ? 190 : size === "md" ? 160 : smallCardWidth);
  const cardH = cardW * 1.4;
  const tvMode = isTvDevice(windowWidth, windowHeight);

  const title = anime.title.english || anime.title.romaji;
  const posterUri = tvMode
    ? getTvPosterUri(anime, anime.id ? `https://img.anili.st/media/${anime.id}` : "")
    : getPosterUri(anime, anime.id ? `https://img.anili.st/media/${anime.id}` : "");

  return (
    <Pressable
      onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
      focusable={tvMode}
      hasTVPreferredFocus={hasTVPreferredFocus}
      hitSlop={tvMode ? 8 : 4}
      pressRetentionOffset={12}
      onFocus={onFocus}
      android_ripple={tvMode ? undefined : { color: "rgba(139,92,246,0.18)" }}
      style={({ pressed, focused }) => [
        styles.card,
        { width: cardW, opacity: pressed ? 0.85 : 1 },
        tvMode && styles.tvCard,
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[styles.imageContainer, { width: cardW, height: cardH, borderRadius: colors.radius - 4 }]}>
        <Image
          source={{ uri: posterUri }}
          style={[styles.image, { borderRadius: colors.radius - 4 }]}
          resizeMode="cover"
          fadeDuration={tvMode ? 0 : 120}
          resizeMethod="resize"
        />
        {anime.averageScore && (
          <View style={styles.scoreBadge}>
            <Ionicons name="star" size={9} color="#FFD700" />
            <Text style={styles.scoreText}>{(anime.averageScore / 10).toFixed(1)}</Text>
          </View>
        )}
        {anime.nextAiringEpisode && (
          <View style={[styles.airingBadge, { backgroundColor: colors.primary }]}>
            <Text style={styles.airingText}>جديد</Text>
          </View>
        )}
        {showProgress && progress !== undefined && progress > 0 && (
          <View style={styles.progressBar}>
            <View style={[styles.progressFill, { width: `${Math.min(progress * 100, 100)}%`, backgroundColor: colors.primary }]} />
          </View>
        )}
      </View>
      <Text
        style={[
          styles.title,
          { fontSize: scaleSize(12, 21), lineHeight: scaleSize(16, 29), color: colors.text },
        ]}
        numberOfLines={2}
      >
        {title}
      </Text>
      {anime.episodes && (
        <Text style={[styles.epCount, { fontSize: scaleSize(10, 16), color: colors.mutedForeground }]}>
          {anime.episodes} حلقة
        </Text>
      )}
    </Pressable>
  );
});

const styles = StyleSheet.create({
  card: { flexDirection: "column", gap: 6 },
  tvCard: { borderRadius: 10, padding: 5, margin: -5, gap: 8 },
  imageContainer: { overflow: "hidden", backgroundColor: "#1a1a2e", position: "relative" },
  image: { width: "100%", height: "100%" },
  scoreBadge: {
    position: "absolute", bottom: 6, left: 6,
    backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6,
    paddingHorizontal: 5, paddingVertical: 2,
    flexDirection: "row", alignItems: "center", gap: 2,
  },
  scoreText: { color: "#FFD700", fontSize: 9, fontWeight: "700" },
  airingBadge: {
    position: "absolute", top: 6, right: 6,
    borderRadius: 4, paddingHorizontal: 5, paddingVertical: 2,
  },
  airingText: { color: "#fff", fontSize: 9, fontWeight: "700" },
  progressBar: {
    position: "absolute", bottom: 0, left: 0, right: 0,
    height: 3, backgroundColor: "rgba(255,255,255,0.2)",
  },
  progressFill: { height: 3 },
  title: { fontSize: 12, fontWeight: "600", lineHeight: 16 },
  epCount: { fontSize: 10 },
});
