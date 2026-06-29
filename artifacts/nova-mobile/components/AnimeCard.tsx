import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "react-native";
import { useRouter } from "expo-router";
import React from "react";
import { Dimensions, Platform, Pressable, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";

const { width: SCREEN_WIDTH } = Dimensions.get("window");
const CARD_WIDTH = (SCREEN_WIDTH - 48) / 3;

type Props = {
  anime: AnilistMedia;
  size?: "sm" | "md" | "lg";
  progress?: number;
  showProgress?: boolean;
};

export function AnimeCard({ anime, size = "sm", progress, showProgress }: Props) {
  const router = useRouter();
  const colors = useColors();
  const cardW = size === "lg" ? 160 : size === "md" ? 130 : CARD_WIDTH;
  const cardH = cardW * 1.4;

  const title = anime.title.english || anime.title.romaji;

  return (
    <Pressable
      onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
      style={({ pressed }) => [styles.card, { width: cardW, opacity: pressed ? 0.85 : 1 }]}
    >
      <View style={[styles.imageContainer, { width: cardW, height: cardH, borderRadius: colors.radius - 4 }]}>
        <Image
          source={{ uri: anime.coverImage.extraLarge || anime.coverImage.large }}
          style={[styles.image, { borderRadius: colors.radius - 4 }]}
          resizeMode="cover"
          transition={300}
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
      <Text style={[styles.title, { color: colors.text }]} numberOfLines={2}>
        {title}
      </Text>
      {anime.episodes && (
        <Text style={[styles.epCount, { color: colors.mutedForeground }]}>
          {anime.episodes} حلقة
        </Text>
      )}
    </Pressable>
  );
}

const styles = StyleSheet.create({
  card: { flexDirection: "column", gap: 6 },
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
