import React, { useEffect, useRef } from "react";
import { Animated, StyleSheet, View } from "react-native";
import { useColors } from "@/hooks/useColors";

export function SkeletonCard({ width = 120, height = 168 }: { width?: number; height?: number }) {
  const colors = useColors();
  const opacity = useRef(new Animated.Value(0.4)).current;

  useEffect(() => {
    Animated.loop(
      Animated.sequence([
        Animated.timing(opacity, { toValue: 1, duration: 800, useNativeDriver: true }),
        Animated.timing(opacity, { toValue: 0.4, duration: 800, useNativeDriver: true }),
      ])
    ).start();
  }, [opacity]);

  return (
    <Animated.View style={[styles.card, { width, opacity }]}>
      <View style={[styles.image, { height, backgroundColor: colors.card, borderRadius: 10 }]} />
      <View style={[styles.line, { backgroundColor: colors.card }]} />
      <View style={[styles.lineShort, { backgroundColor: colors.card }]} />
    </Animated.View>
  );
}

export function SkeletonHero() {
  const colors = useColors();
  const opacity = useRef(new Animated.Value(0.4)).current;
  useEffect(() => {
    Animated.loop(Animated.sequence([
      Animated.timing(opacity, { toValue: 0.8, duration: 800, useNativeDriver: true }),
      Animated.timing(opacity, { toValue: 0.4, duration: 800, useNativeDriver: true }),
    ])).start();
  }, [opacity]);

  return (
    <Animated.View style={[styles.hero, { backgroundColor: colors.card, opacity }]} />
  );
}

const styles = StyleSheet.create({
  card: { gap: 6 },
  image: {},
  line: { height: 12, borderRadius: 4, width: "80%" },
  lineShort: { height: 10, borderRadius: 4, width: "50%" },
  hero: { height: 420 },
});
