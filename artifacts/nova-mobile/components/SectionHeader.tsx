import React from "react";
import { Ionicons } from "@expo/vector-icons";
import { I18nManager, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

type Props = {
  children: React.ReactNode;
  onSeeAll?: () => void;
  focusable?: boolean;
  seeAllLabel?: string;
};

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

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
          style={({ focused, pressed }) => [
            styles.seeAll,
            {
              backgroundColor: "rgba(15, 23, 42, 0.92)",
              borderColor: "rgba(255, 255, 255, 0.15)",
              opacity: pressed ? 0.78 : 1,
            },
            focused && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="chevron-back" size={scaleSize(13, 18)} color="#cbd5e1" />
          <Text style={[styles.seeAllText, { fontSize: scaleSize(12, 17), color: "#f8fafc" }]}>
            {seeAllLabel}
          </Text>
        </Pressable>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 16,
    marginBottom: 12,
    gap: 12,
  },
  heading: {
    flex: 1,
    minWidth: 0,
    alignItems: I18nManager.isRTL ? "flex-start" : "flex-end",
  },
  seeAll: {
    minHeight: 34,
    flexDirection: I18nManager.isRTL ? "row-reverse" : "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 5,
    paddingHorizontal: 14,
    paddingVertical: 5,
    borderRadius: 999,
    borderWidth: 1,
    flexShrink: 0,
  },
  seeAllText: { fontFamily: "Cairo_700Bold" },
});
