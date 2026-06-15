import React, { useState } from "react";
import {
  ActivityIndicator, Dimensions, FlatList, Image,
  Platform, Pressable, ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";

const { width: W } = Dimensions.get("window");
const CARD_W = (W - 48) / 3;

type TMDBItem = {
  id: number;
  title?: string;
  name?: string;
  poster_path: string;
  vote_average: number;
  media_type?: string;
};

const TMDB_CATEGORIES = [
  { label: "الرائج", value: "trending" },
  { label: "الأعلى تقييماً", value: "top_rated" },
  { label: "أفلام", value: "movies" },
  { label: "مسلسلات", value: "tv" },
];

async function fetchAnimations(category: string): Promise<TMDBItem[]> {
  const base = getBaseUrl();
  try {
    const res = await fetch(`${base}/api/anime/animations?category=${category}`);
    if (!res.ok) throw new Error();
    const data = await res.json();
    return data.results || [];
  } catch {
    const endpoints: Record<string, string> = {
      trending: "https://api.themoviedb.org/3/trending/all/week?api_key=dummy&with_genres=16&language=ar",
      top_rated: "https://api.themoviedb.org/3/movie/top_rated?api_key=dummy&with_genres=16",
      movies: "https://api.themoviedb.org/3/discover/movie?with_genres=16&sort_by=popularity.desc",
      tv: "https://api.themoviedb.org/3/discover/tv?with_genres=16&sort_by=popularity.desc",
    };
    return [];
  }
}

function AnimCard({ item }: { item: TMDBItem }) {
  const colors = useColors();
  const router = useRouter();
  const title = item.title || item.name || "بدون عنوان";
  const posterUrl = item.poster_path ? `https://image.tmdb.org/t/p/w342${item.poster_path}` : null;

  return (
    <Pressable
      style={[styles.card, { width: CARD_W }]}
      onPress={() => router.push(`/watch?tmdb=${item.id}&title=${encodeURIComponent(title)}&type=${item.media_type || "movie"}`)}
    >
      <View style={[styles.cardImg, { height: CARD_W * 1.4, backgroundColor: colors.card, borderRadius: 10 }]}>
        {posterUrl ? (
          <Image source={{ uri: posterUrl }} style={[styles.fullImg, { borderRadius: 10 }]} resizeMode="cover" />
        ) : (
          <View style={styles.noImg}>
            <Ionicons name="film-outline" size={32} color={colors.mutedForeground} />
          </View>
        )}
        {item.vote_average > 0 && (
          <View style={styles.scoreBadge}>
            <Ionicons name="star" size={9} color="#FFD700" />
            <Text style={styles.scoreText}>{item.vote_average.toFixed(1)}</Text>
          </View>
        )}
      </View>
      <Text style={[styles.cardTitle, { color: colors.text }]} numberOfLines={2}>{title}</Text>
    </Pressable>
  );
}

export default function AnimationsScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const [category, setCategory] = useState("trending");

  const { data: items = [], isLoading } = useQuery({
    queryKey: ["animations", category],
    queryFn: () => fetchAnimations(category),
  });

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <Text style={[styles.title, { color: colors.text }]}>أنيميشن</Text>
      </View>

      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.catRow}>
        {TMDB_CATEGORIES.map((c) => (
          <Pressable
            key={c.value}
            onPress={() => setCategory(c.value)}
            style={[styles.chip, {
              backgroundColor: category === c.value ? colors.primary : colors.card,
              borderColor: category === c.value ? colors.primary : colors.border,
            }]}
          >
            <Text style={[styles.chipText, { color: category === c.value ? "#fff" : colors.mutedForeground }]}>
              {c.label}
            </Text>
          </Pressable>
        ))}
      </ScrollView>

      {isLoading ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
          <Text style={[styles.loadingText, { color: colors.mutedForeground }]}>جاري التحميل...</Text>
        </View>
      ) : items.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="film-outline" size={64} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>
            قسم الأنيميشن يعمل عبر مصادر الـ API
          </Text>
          <Text style={[styles.emptySubtext, { color: colors.mutedForeground }]}>
            تأكد من تشغيل خادم الـ API
          </Text>
        </View>
      ) : (
        <FlatList
          data={items}
          numColumns={3}
          keyExtractor={(item) => item.id.toString()}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={styles.row}
          renderItem={({ item }) => <AnimCard item={item} />}
          showsVerticalScrollIndicator={false}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 16, paddingBottom: 10 },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold" },
  catRow: { paddingHorizontal: 16, gap: 8, marginBottom: 16, alignItems: "center" },
  chip: { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 20, borderWidth: 1 },
  chipText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  grid: { paddingHorizontal: 16, paddingBottom: 100 },
  row: { gap: 10, marginBottom: 10 },
  card: { gap: 6 },
  cardImg: { overflow: "hidden", position: "relative" },
  fullImg: { width: "100%", height: "100%" },
  noImg: { flex: 1, alignItems: "center", justifyContent: "center" },
  scoreBadge: { position: "absolute", bottom: 6, left: 6, backgroundColor: "rgba(0,0,0,0.7)", borderRadius: 6, paddingHorizontal: 5, paddingVertical: 2, flexDirection: "row", alignItems: "center", gap: 2 },
  scoreText: { color: "#FFD700", fontSize: 9, fontWeight: "700" },
  cardTitle: { fontSize: 12, fontFamily: "Cairo_600SemiBold", lineHeight: 16 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 14, fontFamily: "Cairo_400Regular" },
  emptyText: { fontSize: 15, fontFamily: "Cairo_600SemiBold", textAlign: "center", paddingHorizontal: 32 },
  emptySubtext: { fontSize: 12, fontFamily: "Cairo_400Regular" },
});
