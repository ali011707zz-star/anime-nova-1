import React from "react";
import {
  FlatList,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia } from "@/utils/anilist";
import { AnimeCard, getRailCardWidth, getRailSidePadding } from "./AnimeCard";
import {
  isTvDevice,
  TvFocusGuideView,
  useTvListFocusScroll,
  useTvMetrics,
} from "@/utils/tv";
import { SectionHeader } from "./SectionHeader";

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
  const railRef = React.useRef<FlatList<AnilistMedia>>(null);
  const focusScroll = useTvListFocusScroll(railRef, 0.5);

  if (!items.length) return null;

  const rail = (
    <FlatList
      ref={railRef}
      data={items.slice(0, tvMode ? 10 : items.length)}
      horizontal
      keyExtractor={(item) => String(item.id)}
      renderItem={({ item, index }) => (
        <AnimeCard
          anime={item}
          size={size}
          cardWidth={cardWidth}
          hasTVPreferredFocus={
            false
          }
          onFocus={() => focusScroll.scrollToFocusedIndex(index)}
        />
      )}
      onViewableItemsChanged={focusScroll.onViewableItemsChanged}
      viewabilityConfig={focusScroll.viewabilityConfig}
      showsHorizontalScrollIndicator={false}
      contentContainerStyle={[styles.scroll, { paddingHorizontal: sidePadding }]}
      // These rails are rendered inside Home's vertical FlatList. Keeping
      // off-screen posters out of the native view tree matters on tablets
      // where several rails are visible in one session.
      initialNumToRender={tvMode ? 5 : 4}
      maxToRenderPerBatch={tvMode ? 3 : 2}
      updateCellsBatchingPeriod={50}
      windowSize={tvMode ? 4 : 3}
      getItemLayout={(_, index) => ({
        length: cardWidth + 14,
        offset: (cardWidth + 14) * index,
        index,
      })}
      // Clip off-screen native views on Android phones to reduce the amount of
      // UI work and memory retained by the nested home rails. Keep clipping
      // disabled on TV so remote-focused cards are never detached.
      removeClippedSubviews={Platform.OS === "android" && !tvMode}
    />
  );

  return (
    <View style={styles.container}>
      <SectionHeader onSeeAll={onSeeAll} focusable={tvMode}>
        <Text style={[styles.title, { fontSize: scaleSize(17, 25), lineHeight: scaleSize(22, 34), color: colors.text }]}>
          {title}
        </Text>
      </SectionHeader>
      {tvMode ? (
        <TvFocusGuideView autoFocus={false} style={styles.focusGuide}>
          {rail}
        </TvFocusGuideView>
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
  title: { fontSize: 17, fontWeight: "800" },
  focusGuide: { minHeight: 1 },
  scroll: { paddingHorizontal: 16, gap: 14 },
  skeletonTitle: { width: 140, height: 18, borderRadius: 6, marginHorizontal: 16, marginBottom: 12 },
  skeletonCard: { width: 120, gap: 6 },
  skeletonImg: { width: 120, height: 168, borderRadius: 10 },
  skeletonText: { width: 100, height: 12, borderRadius: 4 },
});
