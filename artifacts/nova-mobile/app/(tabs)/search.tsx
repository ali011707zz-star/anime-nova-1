import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import {
  ActivityIndicator, FlatList, Platform, Pressable,
  ScrollView, StyleSheet, Text, TextInput, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia, anilistQuery, SEARCH_QUERY } from "@/utils/anilist";
import { AnimeCard } from "@/components/AnimeCard";

const GENRES = ["أكشن", "مغامرة", "رومانسي", "خيال علمي", "رعب", "رياضي", "غموض", "كوميدي", "دراما", "فانتازيا"];
const GENRE_EN: Record<string, string> = {
  "أكشن": "Action", "مغامرة": "Adventure", "رومانسي": "Romance", "خيال علمي": "Sci-Fi",
  "رعب": "Horror", "رياضي": "Sports", "غموض": "Mystery", "كوميدي": "Comedy",
  "دراما": "Drama", "فانتازيا": "Fantasy",
};
const FORMATS = [
  { label: "الكل", value: undefined },
  { label: "مسلسل", value: "TV" },
  { label: "فيلم", value: "MOVIE" },
  { label: "OVA", value: "OVA" },
  { label: "ONA", value: "ONA" },
];

export default function SearchScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const [query, setQuery] = useState("");
  const [selectedGenre, setSelectedGenre] = useState<string | undefined>();
  const [selectedFormat, setSelectedFormat] = useState<string | undefined>();
  const [debouncedQuery, setDebouncedQuery] = useState("");

  const handleSearch = (text: string) => {
    setQuery(text);
    clearTimeout((handleSearch as never as { _t?: ReturnType<typeof setTimeout> })._t);
    (handleSearch as never as { _t?: ReturnType<typeof setTimeout> })._t = setTimeout(() => setDebouncedQuery(text), 500);
  };

  const { data, isLoading } = useQuery({
    queryKey: ["search", debouncedQuery, selectedGenre, selectedFormat],
    queryFn: () =>
      anilistQuery<{ Page: { media: AnilistMedia[] } }>(SEARCH_QUERY, {
        search: debouncedQuery || undefined,
        genre: selectedGenre,
        format: selectedFormat,
        page: 1,
      }),
    enabled: !!(debouncedQuery || selectedGenre || selectedFormat),
  });

  const results = data?.Page?.media || [];

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <Text style={[styles.title, { color: colors.text }]}>بحث</Text>
        <View style={[styles.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Ionicons name="search-outline" size={18} color={colors.mutedForeground} />
          <TextInput
            style={[styles.input, { color: colors.text }]}
            placeholder="ابحث عن أنمي..."
            placeholderTextColor={colors.mutedForeground}
            value={query}
            onChangeText={handleSearch}
            autoCapitalize="none"
            autoCorrect={false}
            returnKeyType="search"
            textAlign="right"
          />
          {query.length > 0 && (
            <Pressable onPress={() => { setQuery(""); setDebouncedQuery(""); }}>
              <Ionicons name="close-circle" size={18} color={colors.mutedForeground} />
            </Pressable>
          )}
        </View>
      </View>

      {/* Format Filter */}
      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.filterRow}>
        {FORMATS.map((f) => (
          <Pressable
            key={f.label}
            onPress={() => setSelectedFormat(f.value)}
            style={[styles.chip, {
              backgroundColor: selectedFormat === f.value ? colors.primary : colors.card,
              borderColor: selectedFormat === f.value ? colors.primary : colors.border,
            }]}
          >
            <Text style={[styles.chipText, { color: selectedFormat === f.value ? "#fff" : colors.mutedForeground }]}>
              {f.label}
            </Text>
          </Pressable>
        ))}
      </ScrollView>

      {/* Genre Filter */}
      <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={[styles.filterRow, { marginBottom: 8 }]}>
        {GENRES.map((g) => (
          <Pressable
            key={g}
            onPress={() => setSelectedGenre(selectedGenre === GENRE_EN[g] ? undefined : GENRE_EN[g])}
            style={[styles.chip, {
              backgroundColor: selectedGenre === GENRE_EN[g] ? colors.violet + "30" : colors.card,
              borderColor: selectedGenre === GENRE_EN[g] ? colors.violet : colors.border,
            }]}
          >
            <Text style={[styles.chipText, { color: selectedGenre === GENRE_EN[g] ? colors.violet : colors.mutedForeground }]}>
              {g}
            </Text>
          </Pressable>
        ))}
      </ScrollView>

      {/* Results */}
      {isLoading ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
        </View>
      ) : results.length === 0 && (debouncedQuery || selectedGenre || selectedFormat) ? (
        <View style={styles.center}>
          <Ionicons name="search" size={48} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>لا توجد نتائج</Text>
        </View>
      ) : results.length === 0 ? (
        <View style={styles.center}>
          <Ionicons name="telescope-outline" size={64} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>ابحث عن أنمي يعجبك</Text>
          <Text style={[styles.emptySubtext, { color: colors.mutedForeground }]}>أو اختر نوعاً من القائمة أعلاه</Text>
        </View>
      ) : (
        <FlatList
          data={results}
          keyExtractor={(item) => item.id.toString()}
          numColumns={3}
          contentContainerStyle={styles.grid}
          renderItem={({ item }) => <AnimeCard anime={item} size="sm" />}
          showsVerticalScrollIndicator={false}
          columnWrapperStyle={styles.row}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 16, paddingBottom: 12 },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold", marginBottom: 12 },
  searchBox: { flexDirection: "row", alignItems: "center", gap: 10, padding: 12, borderRadius: 12, borderWidth: 1 },
  input: { flex: 1, fontSize: 15, fontFamily: "Cairo_400Regular" },
  filterRow: { paddingHorizontal: 16, gap: 8, marginBottom: 8, alignItems: "center" },
  chip: { paddingHorizontal: 14, paddingVertical: 7, borderRadius: 20, borderWidth: 1 },
  chipText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  grid: { paddingHorizontal: 16, paddingBottom: 100 },
  row: { gap: 10, marginBottom: 10 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyText: { fontSize: 16, fontFamily: "Cairo_600SemiBold" },
  emptySubtext: { fontSize: 13, fontFamily: "Cairo_400Regular" },
});
