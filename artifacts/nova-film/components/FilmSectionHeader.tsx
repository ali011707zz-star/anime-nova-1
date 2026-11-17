import { Ionicons } from "@expo/vector-icons";
import React from "react";
import { I18nManager, StyleSheet, Text, View } from "react-native";
import { useColors } from "@/hooks/useColors";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

const ROW_HEADER = I18nManager.isRTL ? "row" : "row-reverse";

type Props = {
  title: string;
  subtitle?: string;
  accentColor?: string;
  seeAllLabel?: string;
  onSeeAll?: () => void;
  focusable?: boolean;
  onFocus?: () => void;
};

export function FilmSectionHeader({
  title,
  subtitle,
  accentColor,
  seeAllLabel = "عرض الكل",
  onSeeAll,
  focusable = false,
  onFocus,
}: Props) {
  const colors = useColors();
  const { tv: tvMode, size: scaleSize } = useTvMetrics();
  const dotColor = accentColor || colors.homeAccent || "#0EA5E9";

  return (
    <View style={[styles.header, { paddingHorizontal: scaleSize(14, 32) }]}>
      <View style={styles.titleBlock}>
        <View style={[styles.accentBar, { backgroundColor: dotColor, height: scaleSize(20, 26) }]} />
        <View style={styles.titleTextWrap}>
          <Text
            style={[
              styles.title,
              {
                color: colors.textPrimary,
                fontSize: scaleSize(16.5, 22),
                lineHeight: scaleSize(26, 34),
              },
            ]}
          >
            {title}
          </Text>
          {subtitle ? (
            <Text
              style={[
                styles.subtitle,
                {
                  color: colors.textMuted,
                  fontSize: scaleSize(11, 13.5),
                  lineHeight: scaleSize(17, 21),
                },
              ]}
            >
              {subtitle}
            </Text>
          ) : null}
        </View>
      </View>

      {onSeeAll ? (
        <Pressable
          onPress={onSeeAll}
          onFocus={onFocus}
          focusable={tvMode && focusable}
          hitSlop={tvMode ? 12 : 8}
          style={({ focused, pressed }) => [
            styles.seeAll,
            {
              backgroundColor: "#0f172a",
              borderColor: "rgba(56, 189, 248, 0.30)",
              opacity: pressed ? 0.84 : 1,
            },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Text style={[styles.seeAllText, { fontSize: scaleSize(11.5, 16) }]}>
            {seeAllLabel}
          </Text>
          <Ionicons name="chevron-back" size={scaleSize(13, 18)} color="#38BDF8" />
        </Pressable>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  header: {
    flexDirection: ROW_HEADER,
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 11,
    gap: 10,
  },
  titleBlock: {
    flex: 1,
    minWidth: 0,
    flexDirection: ROW_HEADER,
    alignItems: "center",
    gap: 9,
  },
  accentBar: {
    width: 3.5,
    borderRadius: 2,
    flexShrink: 0,
  },
  titleTextWrap: {
    flex: 1,
    minWidth: 0,
    alignItems: I18nManager.isRTL ? "flex-start" : "flex-end",
  },
  title: {
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  subtitle: {
    fontFamily: "Cairo_400Regular",
    textAlign: "right",
    includeFontPadding: true,
    marginTop: 1,
  },
  seeAll: {
    minHeight: 34,
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 4,
    paddingHorizontal: 14,
    paddingVertical: 5,
    borderRadius: 999,
    borderWidth: 1,
    flexShrink: 0,
  },
  seeAllText: {
    fontFamily: "Cairo_700Bold",
    color: "#F8FAFC",
    lineHeight: 19,
    includeFontPadding: true,
  },
});
