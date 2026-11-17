import React, { useMemo, useState } from "react";
import {
  FlatList,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { NOVA_FILM_CATALOG, type FilmTitle } from "@/utils/filmCatalog";

const TYPE_FILTERS = [
  { id: "all", label: "الكل" },
  { id: "movie", label: "أفلام" },
  { id: "series", label: "مسلسلات" },
  { id: "animation", label: "أنميشن" },
] as const;

export default function NovaFilmBrowseScreen() {
  const params = useLocalSearchParams<{ type?: string }>();
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();

  const initialType =
    params.type && ["all", "movie", "series", "animation"].includes(params.type)
      ? params.type
      : "all";
  const [selectedType, setSelectedType] = useState<string>(initialType);
  const [query, setQuery] = useState<string>("");

  const cols = width >= 700 ? 4 : 2;
  const cardWidth = Math.floor((width - 14 * 2 - (cols - 1) * 10) / cols);
  const cardHeight = Math.round(cardWidth * 1.48);

  const items = useMemo(() => {
    const q = query.trim().toLowerCase();
    return NOVA_FILM_CATALOG.filter((item) => {
      if (selectedType !== "all" && item.mediaType !== selectedType) return false;
      if (q) {
        const hay = `${item.titleAr} ${item.titleEn} ${item.genres.join(" ")}`.toLowerCase();
        if (!hay.includes(q)) return false;
      }
      return true;
    });
  }, [selectedType, query]);

  const openFilm = (item: FilmTitle) => {
    router.push({ pathname: "/film/[id]" as any, params: { id: String(item.id) } });
  };

  return (
    <View style={[s.container, { backgroundColor: colors.background, paddingTop: insets.top + 8 }]}>
      <View style={s.header}>
        <Text style={[s.title, { color: colors.text }]}>
          تصفح <Text style={{ color: "#F59E0B" }}>NOVA FILM</Text>
        </Text>
        <View style={[s.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={query}
            onChangeText={setQuery}
            placeholder="ابحث عن فيلم، مسلسل أو أنميشن..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.text }]}
          />
        </View>
        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={s.chipsRow}>
          {TYPE_FILTERS.map((f) => {
            const active = selectedType === f.id;
            return (
              <TouchableOpacity
                key={f.id}
                onPress={() => setSelectedType(f.id)}
                style={[
                  s.chip,
                  {
                    backgroundColor: active ? "#F59E0B" : colors.card,
                    borderColor: active ? "#F59E0B" : colors.border,
                  },
                ]}
              >
                <Text style={[s.chipText, { color: active ? "#090A0C" : colors.text }]}>
                  {f.label}
                </Text>
              </TouchableOpacity>
            );
          })}
        </ScrollView>
      </View>

      <FlatList
        data={items}
        key={`grid-${cols}`}
        numColumns={cols}
        keyExtractor={(item) => String(item.id)}
        contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 96, gap: 10 }}
        columnWrapperStyle={{ gap: 10, flexDirection: "row-reverse" }}
        renderItem={({ item }) => (
          <TouchableOpacity
            onPress={() => openFilm(item)}
            style={[
              s.card,
              {
                width: cardWidth,
                height: cardHeight,
                backgroundColor: colors.card,
                borderColor: colors.border,
              },
            ]}
          >
            <Image source={item.posterSource} style={s.cardImg} resizeMode="cover" />
            <LinearGradient
              colors={["transparent", "rgba(9,10,12,0.94)"]}
              style={StyleSheet.absoluteFill}
            />
            <View style={s.topBadge}>
              <Ionicons name="star" size={10} color="#FBBF24" />
              <Text style={s.topBadgeText}>{item.imdbRating.toFixed(1)}</Text>
            </View>
            <View style={s.cardFooter}>
              <Text style={s.cardTitle} numberOfLines={2}>
                {item.titleAr}
              </Text>
              <Text style={s.cardMeta}>
                {item.year} · {item.categoryLabel}
              </Text>
            </View>
          </TouchableOpacity>
        )}
      />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 14, gap: 10, paddingBottom: 12 },
  title: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  searchBox: {
    direction: "rtl",
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 13,
    paddingHorizontal: 12,
    height: 44,
  },
  searchInput: { flex: 1, textAlign: "right", fontSize: 13, fontFamily: "Cairo_400Regular" },
  chipsRow: { gap: 8 },
  chip: { borderWidth: 1, borderRadius: 11, paddingHorizontal: 14, paddingVertical: 7 },
  chipText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  card: { borderRadius: 16, overflow: "hidden", borderWidth: 1, position: "relative" },
  cardImg: { width: "100%", height: "100%" },
  topBadge: {
    position: "absolute",
    top: 8,
    left: 8,
    flexDirection: "row",
    alignItems: "center",
    gap: 3,
    backgroundColor: "rgba(0,0,0,0.78)",
    paddingHorizontal: 7,
    paddingVertical: 3,
    borderRadius: 7,
  },
  topBadgeText: { color: "#FBBF24", fontSize: 10, fontFamily: "Cairo_700Bold" },
  cardFooter: { position: "absolute", bottom: 8, left: 8, right: 8, alignItems: "flex-end", gap: 2 },
  cardTitle: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "right" },
  cardMeta: { color: "#A1A1AA", fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "right" },
});
