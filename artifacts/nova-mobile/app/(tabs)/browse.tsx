import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import {
  ActivityIndicator, FlatList, Platform,
  Pressable, ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia, anilistQuery, BROWSE_QUERY, getCurrentSeason, SEASONAL_QUERY } from "@/utils/anilist";
import { AnimeCard } from "@/components/AnimeCard";

const GENRES = [
  { label: "الكل", value: undefined },
  { label: "أكشن", value: "Action" },
  { label: "مغامرة", value: "Adventure" },
  { label: "رومانسي", value: "Romance" },
  { label: "خيال علمي", value: "Sci-Fi" },
  { label: "رعب", value: "Horror" },
  { label: "رياضي", value: "Sports" },
  { label: "غموض", value: "Mystery" },
  { label: "كوميدي", value: "Comedy" },
  { label: "دراما", value: "Drama" },
  { label: "فانتازيا", value: "Fantasy" },
  { label: "نفسي", value: "Psychological" },
  { label: "ماهو", value: "Mahou Shoujo" },
  { label: "موسيقى", value: "Music" },
];

const SORTS = [
  { label: "الرائج", value: "TRENDING_DESC" },
  { label: "الأشهر", value: "POPULARITY_DESC" },
  { label: "الأعلى تقييماً", value: "SCORE_DESC" },
  { label: "الأحدث", value: "START_DATE_DESC" },
];

const SEASON_NAMES: Record<string, string> = { WINTER: "شتاء", SPRING: "ربيع", SUMMER: "صيف", FALL: "خريف" };

export default function BrowseScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const [genre, setGenre] = useState<string | undefined>(undefined);
  const [sort, setSort] = useState("TRENDING_DESC");
  const [showSeasonal, setShowSeasonal] = useState(false);

  const { season, year } = getCurrentSeason();

  const { data, isLoading } = useQuery({
    queryKey: ["browse", genre, sort],
    queryFn: () =>
      anilistQuery<{ Page: { media: AnilistMedia[] } }>(BROWSE_QUERY, {
        page: 1, genre, sort: [sort],
      }),
    enabled: !showSeasonal,
  });

  const { data: seasonal, isLoading: loadingSeasonal } = useQuery({
    queryKey: ["seasonal", season, year],
    queryFn: () =>
      anilistQuery<{ Page: { media: AnilistMedia[] } }>(SEASONAL_QUERY, { season, year }),
    enabled: showSeasonal,
  });

  const items = showSeasonal ? (seasonal?.Page?.media || []) : (data?.Page?.media || []);
  const loading = showSeasonal ? loadingSeasonal : isLoading;

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <Text style={[styles.title, { color: colors.text }]}>تصفح</Text>
        <Pressable
          onPress={() => setShowSeasonal(!showSeasonal)}
          style={[styles.seasonBtn, { backgroundColor: showSeasonal ? colors.primary : colors.card, borderColor: showSeasonal ? colors.primary : colors.border }]}
        >
          <Ionicons name="calendar-outline" size={14} color={showSeasonal ? "#fff" : colors.mutedForeground} />
          <Text style={[styles.seasonText, { color: showSeasonal ? "#fff" : colors.mutedForeground }]}>
            {SEASON_NAMES[season]} {year}
          </Text>
        </Pressable>
      </View>

      {/* Genre Filter */}
      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.genreRow}>
        {GENRES.map((g) => (
          <Pressable
            key={g.label}
            onPress={() => { setGenre(g.value); setShowSeasonal(false); }}
            style={[styles.chip, {
              backgroundColor: genre === g.value && !showSeasonal ? colors.primary : colors.card,
              borderColor: genre === g.value && !showSeasonal ? colors.primary : colors.border,
            }]}
          >
            <Text style={[styles.chipText, { color: genre === g.value && !showSeasonal ? "#fff" : colors.mutedForeground }]}>
              {g.label}
            </Text>
          </Pressable>
        ))}
      </ScrollView>

      {/* Sort */}
      {!showSeasonal && (
        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={[styles.genreRow, { marginBottom: 8 }]}>
          {SORTS.map((s) => (
            <Pressable
              key={s.value}
              onPress={() => setSort(s.value)}
              style={[styles.chip, {
                backgroundColor: sort === s.value ? colors.violet + "20" : "transparent",
                borderColor: sort === s.value ? colors.violet : colors.border,
              }]}
            >
              <Text style={[styles.chipText, { color: sort === s.value ? colors.violet : colors.mutedForeground }]}>
                {s.label}
              </Text>
            </Pressable>
          ))}
        </ScrollView>
      )}

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
        </View>
      ) : (
        <FlatList
          data={items}
          keyExtractor={(item) => item.id.toString()}
          numColumns={3}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={styles.row}
          renderItem={({ item }) => <AnimeCard anime={item} size="sm" />}
          showsVerticalScrollIndicator={false}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 16, paddingBottom: 10, flexDirection: "row", alignItems: "center", justifyContent: "space-between" },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold" },
  seasonBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 20, borderWidth: 1 },
  seasonText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  genreRow: { paddingHorizontal: 16, gap: 8, marginBottom: 8, alignItems: "center" },
  chip: { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 20, borderWidth: 1 },
  chipText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  grid: { paddingHorizontal: 16, paddingBottom: 100 },
  row: { gap: 10, marginBottom: 10 },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
});
