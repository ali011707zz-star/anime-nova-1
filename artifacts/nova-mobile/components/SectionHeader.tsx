import React from "react";
import { Ionicons } from "@expo/vector-icons";
import { StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

type Props = {
  children: React.ReactNode;
  onSeeAll?: () => void;
  focusable?: boolean;
  seeAllLabel?: string;
};

export function SectionHeader({
  children,
  onSeeAll,
  focusable = false,
  seeAllLabel = "عرض الكل",
}: Props) {
  const colors = useColors();
  const { size: scaleSize } = useTvMetrics();

  return (
    <View style={styles.header}>
      <View style={styles.heading}>{children}</View>
      {onSeeAll && (
        <Pressable
          accessibilityRole="button"
          accessibilityLabel={seeAllLabel}
          hitSlop={8}
          onPress={onSeeAll}
          focusable={focusable}
          style={({ focused }) => [styles.seeAll, focused && tvFocusStyle(focused)]}
        >
          <Text style={[styles.seeAllText, { fontSize: scaleSize(13, 18), color: colors.primary }]}>
            {seeAllLabel}
          </Text>
          <Ionicons name="chevron-back" size={scaleSize(14, 20)} color={colors.primary} />
        </Pressable>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16,
    marginBottom: 12,
  },
  heading: { flex: 1, minWidth: 0 },
  seeAll: {
    minHeight: 32,
    flexDirection: "row",
    direction: "rtl",
    alignItems: "center",
    gap: 2,
  },
  seeAllText: { fontFamily: "Cairo_600SemiBold" },
});
