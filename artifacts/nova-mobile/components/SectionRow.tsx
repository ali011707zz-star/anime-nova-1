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
  isFirstSection?: boolean;
};

export const SectionRow = React.memo(function SectionRow({
  title,
  items,
  onSeeAll,
  size = "md",
  isFirstSection = false,
}: Props) {
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
          hasTVPreferredFocus={isFirstSection && index === 0}
          onFocus={() => focusScroll.scrollToFocusedIndex(index)}
        />
      )}
      onViewableItemsChanged={focusScroll.onViewableItemsChanged}
      viewabilityConfig={focusScroll.viewabilityConfig}
      showsHorizontalScrollIndicator={false}
      contentContainerStyle={[styles.scroll, { paddingHorizontal: sidePadding }]}
      initialNumToRender={tvMode ? 5 : 4}
      maxToRenderPerBatch={tvMode ? 3 : 2}
      updateCellsBatchingPeriod={50}
      windowSize={tvMode ? 4 : 3}
      getItemLayout={(_, index) => ({
        length: cardWidth + 14,
        offset: (cardWidth + 14) * index,
        index,
      })}
      removeClippedSubviews={Platform.OS === "android" && !tvMode}
    />
  );

  return (
    <View style={styles.container}>
      <SectionHeader onSeeAll={onSeeAll} focusable={tvMode}>
        <View style={styles.titleRow}>
          <Text style={[styles.title, { fontSize: scaleSize(17, 25), lineHeight: scaleSize(22, 34), color: colors.text }]}>
            {title}
          </Text>
          <View style={[styles.accentBar, { backgroundColor: colors.homeAccent || "#06b6d4" }]} />
        </View>
      </SectionHeader>
      {rail}
    </View>
  );
});

const styles = StyleSheet.create({
  container: {
    marginVertical: 12,
  },
  scroll: {
    gap: 14,
    paddingVertical: 6,
  },
  titleRow: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 8,
  },
  title: {
    fontFamily: "Cairo_700Bold",
  },
  accentBar: {
    width: 4,
    height: 18,
    borderRadius: 2,
  },
});
