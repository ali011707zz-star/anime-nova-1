import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image, useWindowDimensions } from "react-native";
import { useRouter } from "expo-router";
import React from "react";
import { StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable, useTvMetrics, responsiveScale } from "@/utils/tv";
import { getPosterUri, getTvPosterUri } from "@/utils/media";
import { getKnownArabicAnimeTitle } from "@/utils/arabicAnimeTitles";
import { formatMediaTitleHierarchy } from "@/utils/donghuaLogic.mjs";

type Props = {
  anime: AnilistMedia;
  size?: "sm" | "md" | "lg";
  cardWidth?: number;
  progress?: number;
  showProgress?: boolean;
  onFocus?: () => void;
  hasTVPreferredFocus?: boolean;
  tvFocusable?: boolean;
};

export function getRailCardWidth(windowWidth: number, visibleCards = 3, gap = 10) {
  const wideLayout = windowWidth >= 700;
  const maxRailWidth = wideLayout ? 1400 : 960;
  const sidePad = windowWidth >= 900 ? 64 : windowWidth >= 600 ? 44 : 32;
  const railWidth = Math.min(Math.max(windowWidth - sidePad, 0), maxRailWidth);
  const targetVisibleCards =
    windowWidth >= 1200 ? 6 : windowWidth >= 900 ? 5 : windowWidth >= 600 ? 4 : visibleCards;
  const minCardWidth = wideLayout ? 124 : 96;
  const maxCardWidth = wideLayout ? 185 : 165;
  const calculated = Math.floor((railWidth - gap * (targetVisibleCards - 1)) / targetVisibleCards);
  return Math.max(minCardWidth, Math.min(maxCardWidth, calculated));
}

export function getRailSidePadding(windowWidth: number) {
  const wideLayout = windowWidth >= 700;
  const maxRailWidth = wideLayout ? 1400 : 960;
  const sidePad = windowWidth >= 900 ? 64 : windowWidth >= 600 ? 44 : 32;
  const railWidth = Math.min(Math.max(windowWidth - sidePad, 0), maxRailWidth);
  return Math.max(windowWidth >= 900 ? 32 : windowWidth >= 600 ? 22 : 16, Math.floor((windowWidth - railWidth) / 2));
}

export function getGridColumnCount(windowWidth: number, _windowHeight?: number) {
  if (windowWidth >= 1200) return 6;
  if (windowWidth >= 900) return 5;
  if (windowWidth >= 560) return 4;
  return 3;
}

export const AnimeCard = React.memo(function AnimeCard({ anime, size = "sm", cardWidth, progress, showProgress, onFocus, hasTVPreferredFocus = false, tvFocusable = true }: Props) {
  const router = useRouter();
  const colors = useColors();
  const { width: windowWidth, tv: tvMode } = useTvMetrics();
  const scaleSize = (phoneValue: number, tvValue?: number) =>
    responsiveScale(phoneValue, windowWidth, tvMode, tvValue);
  // Recalculate on rotation/window resize and keep poster widths bounded so
  // tablets do not decode a handful of unnecessarily huge images.
  const smallCardWidth = getRailCardWidth(windowWidth, 3);
  const cardW = cardWidth ?? (size === "lg" ? 170 : size === "md" ? 145 : smallCardWidth);
  const cardH = cardW * 1.4;

  const knownAr = getKnownArabicAnimeTitle(anime.id, anime.title?.english, anime.title?.romaji);
  const synonyms = ((anime as any).synonyms as string[] | undefined) || [];
  const arabicTitle = anime.title_ar || knownAr || synonyms.find((s: string) => /[\u0600-\u06FF]/.test(s));
  const titleHierarchy = formatMediaTitleHierarchy({
    english: anime.title?.english,
    romaji: anime.title?.romaji,
    native: anime.title?.native,
    arabic: arabicTitle,
  });
  const primaryIsArabic = /[\u0600-\u06FF]/.test(titleHierarchy.primary);
  const posterUri = tvMode
    ? getTvPosterUri(anime, anime.id ? `https://img.anili.st/media/${anime.id}` : "")
    : getPosterUri(anime, anime.id ? `https://img.anili.st/media/${anime.id}` : "");

  return (
    <Pressable
      onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
      focusable={tvMode && tvFocusable}
      nativeFocusOnly
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
      <View style={[styles.imageContainer, { width: tvMode ? cardW - 13 : cardW, height: cardH, borderRadius: colors.radius - 4 }]}>
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
          {
            fontSize: scaleSize(12, 14),
            lineHeight: scaleSize(16, 20),
            color: colors.text,
            textAlign: primaryIsArabic ? "right" : "left",
            writingDirection: primaryIsArabic ? "rtl" : "ltr",
            fontFamily: primaryIsArabic ? "Cairo_700Bold" : undefined,
          },
        ]}
        numberOfLines={2}
      >
        {titleHierarchy.primary}
      </Text>
      {titleHierarchy.arabic ? (
        <Text
          style={[
            styles.titleArabic,
            {
              color: colors.mutedForeground,
              fontSize: scaleSize(10, 12),
              lineHeight: scaleSize(14, 17),
              textAlign: "right",
              writingDirection: "rtl",
            },
          ]}
          numberOfLines={1}
        >
          {titleHierarchy.arabic}
        </Text>
      ) : null}
      {titleHierarchy.original ? (
        <Text
          style={[
            styles.titleOriginal,
            {
              color: colors.mutedForeground,
              fontSize: scaleSize(8.5, 10.5),
              lineHeight: scaleSize(12, 14),
            },
          ]}
          numberOfLines={1}
        >
          {titleHierarchy.original}
        </Text>
      ) : null}
      {anime.episodes && (
        <Text style={[styles.epCount, { fontSize: scaleSize(10, 12), color: colors.mutedForeground }]}>
          {anime.episodes} حلقة
        </Text>
      )}
    </Pressable>
  );
});

const styles = StyleSheet.create({
  card: { flexDirection: "column", gap: 6 },
  tvCard: { borderRadius: 12, padding: 4, borderWidth: 2.5, borderColor: "transparent", gap: 6 },
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
  title: { fontSize: 12, fontWeight: "600", lineHeight: 16, writingDirection: "ltr" },
  titleArabic: { fontSize: 10, fontFamily: "Cairo_600SemiBold", lineHeight: 14, textAlign: "right", writingDirection: "rtl", opacity: 0.9 },
  titleOriginal: { fontSize: 8.5, lineHeight: 12, textAlign: "left", writingDirection: "ltr", opacity: 0.65 },
  epCount: { fontSize: 10 },
});
