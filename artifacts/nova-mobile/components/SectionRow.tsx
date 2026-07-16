import React from "react";
import { Pressable, ScrollView, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia } from "@/utils/anilist";
import { AnimeCard } from "./AnimeCard";
import { Ionicons } from "@expo/vector-icons";

type Props = {
  title: string;
  items: AnilistMedia[];
  onSeeAll?: () => void;
  size?: "sm" | "md" | "lg";
};

export function SectionRow({ title, items, onSeeAll, size = "md" }: Props) {
  const colors = useColors();

  if (!items.length) return null;

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={[styles.title, { color: colors.text }]}>{title}</Text>
        {onSeeAll && (
          <Pressable onPress={onSeeAll} style={styles.seeAll}>
            <Text style={[styles.seeAllText, { color: colors.primary }]}>عرض الكل</Text>
            <Ionicons name="chevron-back" size={14} color={colors.primary} />
          </Pressable>
        )}
      </View>
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={styles.scroll}
      >
        {items.map((anime) => (
          <AnimeCard key={anime.id} anime={anime} size={size} />
        ))}
      </ScrollView>
    </View>
  );
}

export function SkeletonRow() {
  const colors = useColors();
  return (
    <View style={styles.container}>
      <View style={[styles.skeletonTitle, { backgroundColor: colors.card }]} />
      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.scroll}>
        {Array.from({ length: 5 }).map((_, i) => (
          <View key={i} style={styles.skeletonCard}>
            <View style={[styles.skeletonImg, { backgroundColor: colors.card }]} />
            <View style={[styles.skeletonText, { backgroundColor: colors.card }]} />
          </View>
        ))}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { marginBottom: 24 },
  header: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, marginBottom: 12 },
  title: { fontSize: 17, fontWeight: "800" },
  seeAll: { flexDirection: "row", alignItems: "center", gap: 2 },
  seeAllText: { fontSize: 13, fontWeight: "600" },
  scroll: { paddingHorizontal: 16, gap: 10 },
  skeletonTitle: { width: 140, height: 18, borderRadius: 6, marginHorizontal: 16, marginBottom: 12 },
  skeletonCard: { width: 120, gap: 6 },
  skeletonImg: { width: 120, height: 168, borderRadius: 10 },
  skeletonText: { width: 100, height: 12, borderRadius: 4 },
});
