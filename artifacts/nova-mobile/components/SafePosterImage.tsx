import React, { useState, useEffect } from "react";
import { Image, ImageProps, ImageStyle, StyleProp, StyleSheet, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";

type Props = Omit<ImageProps, "source"> & {
  uri?: string | null;
  fallbackUris?: (string | null | undefined)[];
  style?: StyleProp<ImageStyle>;
  containerStyle?: StyleProp<ImageStyle>;
  iconSize?: number;
};

export function SafePosterImage({
  uri,
  fallbackUris = [],
  style,
  containerStyle,
  iconSize = 24,
  resizeMode = "cover",
  ...rest
}: Props) {
  const candidates = [uri, ...fallbackUris]
    .filter((u): u is string => typeof u === "string" && u.trim().length > 0)
    .map((u) => u.trim());

  const [currentIndex, setCurrentIndex] = useState(0);
  const [allFailed, setAllFailed] = useState(candidates.length === 0);

  useEffect(() => {
    setCurrentIndex(0);
    setAllFailed(candidates.length === 0);
  }, [uri, fallbackUris.join("|")]);

  const activeUri = candidates[currentIndex];

  if (allFailed || !activeUri) {
    return (
      <View style={[styles.placeholder, containerStyle || style]}>
        <Ionicons name="film-outline" size={iconSize} color="rgba(255,255,255,0.35)" />
      </View>
    );
  }

  return (
    <Image
      {...rest}
      source={{ uri: activeUri }}
      style={[styles.base, style]}
      resizeMode={resizeMode}
      onError={() => {
        if (currentIndex + 1 < candidates.length) {
          setCurrentIndex((prev) => prev + 1);
        } else {
          setAllFailed(true);
        }
      }}
    />
  );
}

const styles = StyleSheet.create({
  base: {
    backgroundColor: "#161324",
  },
  placeholder: {
    backgroundColor: "#161324",
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.08)",
  },
});
