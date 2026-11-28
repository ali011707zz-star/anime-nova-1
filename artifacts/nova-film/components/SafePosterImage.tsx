import React, { useMemo, useState } from "react";
import { Image, ImageProps, ImageStyle, Platform, StyleProp, StyleSheet, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { resolveFilmImageUrl } from "@/utils/filmCatalog";

type Props = Omit<ImageProps, "source" | "style"> & {
  uri?: string | null;
  fallbackUris?: (string | null | undefined)[];
  style?: StyleProp<ImageStyle>;
  containerStyle?: StyleProp<ImageStyle>;
  iconSize?: number;
};

export const SafePosterImage = React.memo(function SafePosterImage({
  uri,
  fallbackUris = [],
  style,
  containerStyle,
  iconSize = 24,
  resizeMode = "cover",
  ...rest
}: Props) {
  const fallbackKey = fallbackUris.join("|");
  const candidates = useMemo(
    () =>
      [uri, ...fallbackUris]
        .map((u) => resolveFilmImageUrl(u))
        .filter((u): u is string => Boolean(u)),
    [uri, fallbackKey],
  );
  const candidatesKey = candidates.join("|");

  const [errState, setErrState] = useState<{ key: string; idx: number; failed: boolean }>({
    key: candidatesKey,
    idx: 0,
    failed: candidates.length === 0,
  });

  // Synchronously derive index/failed for current candidatesKey (zero 1-frame stale bleed on recycled FlatList cells!)
  const currentIndex = errState.key === candidatesKey ? errState.idx : 0;
  const allFailed = errState.key === candidatesKey ? errState.failed : candidates.length === 0;
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
      fadeDuration={0}
      resizeMethod={Platform.OS === "android" ? "resize" : undefined}
      onError={() => {
        if (currentIndex + 1 < candidates.length) {
          setErrState({ key: candidatesKey, idx: currentIndex + 1, failed: false });
        } else {
          setErrState({ key: candidatesKey, idx: currentIndex, failed: true });
        }
      }}
    />
  );
});

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
