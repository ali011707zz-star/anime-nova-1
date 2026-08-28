import React from "react";
import {
  FlatList,
  Platform,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  TVFocusGuideView,
  View,
  useWindowDimensions,
} from "react-native";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia } from "@/utils/anilist";
import { AnimeCard, getRailCardWidth, getRailSidePadding } from "./AnimeCard";
import { Ionicons } from "@expo/vector-icons";
import { isTvDevice, tvFocusStyle, useTvMetrics } from "@/utils/tv";

type Props = {
  title: string;
  items: AnilistMedia[];
  onSeeAll?: () => void;
  size?: "sm" | "md" | "lg";
};

export const SectionRow = React.memo(function SectionRow({ title, items, onSeeAll, size = "md" }: Props) {
  const colors = useColors();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const { size: scaleSize } = useTvMetrics();
  const cardWidth = getRailCardWidth(width, tvMode ? 5 : 3);
  const sidePadding = getRailSidePadding(width);

  if (!items.length) return null;

  const rail = (
    <FlatList
      data={items.slice(0, tvMode ? 10 : items.length)}
      horizontal
      keyExtractor={(item) => String(item.id)}
      renderItem={({ item }) => <AnimeCard anime={item} size={size} cardWidth={cardWidth} />}
      showsHorizontalScrollIndicator={false}
      contentContainerStyle={[styles.scroll, { paddingHorizontal: sidePadding }]}
      // These rails are rendered inside the home ScrollView. FlatList keeps
      // off-screen posters out of the native view tree, which matters on
      // tablets where several rails are visible in one session.
      initialNumToRender={tvMode ? 5 : 4}
      maxToRenderPerBatch={tvMode ? 3 : 2}
      updateCellsBatchingPeriod={50}
      windowSize={tvMode ? 4 : 3}
      getItemLayout={(_, index) => ({
        length: cardWidth + 14,
        offset: (cardWidth + 14) * index,
        index,
      })}
      // Keep clipping disabled for the existing nested horizontal rails.
      // TV needs this especially because clipping can hide focused cards.
      removeClippedSubviews={false}
    />
  );

  return (
    <View style={styles.container}>
      <View style={styles.header}>
            <Text style={[styles.title, { fontSize: scaleSize(17, 25), lineHeight: scaleSize(22, 34), color: colors.text }]}>{title}</Text>
        {onSeeAll && (
          <Pressable
            onPress={onSeeAll}
            focusable={tvMode}
            style={({ focused }) => [styles.seeAll, tvMode && tvFocusStyle(focused)]}
          >
            <Text style={[styles.seeAllText, { fontSize: scaleSize(13, 18), color: colors.primary }]}>عرض الكل</Text>
            <Ionicons name="chevron-back" size={tvMode ? 20 : 14} color={colors.primary} />
          </Pressable>
        )}
      </View>
      {tvMode ? (
        <TVFocusGuideView autoFocus={false} style={styles.focusGuide}>
          {rail}
        </TVFocusGuideView>
      ) : rail}
    </View>
  );
});

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
  focusGuide: { minHeight: 1 },
  scroll: { paddingHorizontal: 16, gap: 14 },
  skeletonTitle: { width: 140, height: 18, borderRadius: 6, marginHorizontal: 16, marginBottom: 12 },
  skeletonCard: { width: 120, gap: 6 },
  skeletonImg: { width: 120, height: 168, borderRadius: 10 },
  skeletonText: { width: 100, height: 12, borderRadius: 4 },
});
