import React from "react";
import { StyleSheet, View } from "react-native";

interface EpisodeDividerProps {
  color: string;
  inset?: number;
  spacing?: number;
}

export function EpisodeDivider({ color, inset = 0, spacing = 0 }: EpisodeDividerProps) {
  return (
    <View
      pointerEvents="none"
      accessibilityElementsHidden
      importantForAccessibility="no-hide-descendants"
      style={[
        styles.line,
        { backgroundColor: color, marginHorizontal: inset, marginVertical: spacing },
      ]}
    />
  );
}

const styles = StyleSheet.create({
  line: {
    height: 1.5,
    opacity: 0.42,
  },
});