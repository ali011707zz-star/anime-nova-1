import React, { useEffect, useMemo, useState } from "react";
import { Image, ImageProps, ImageStyle, StyleProp, StyleSheet, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { getBaseUrl } from "../utils/baseUrl";

type Props = Omit<ImageProps, "source"> & {
  uri?: string | null;
  fallbackUris?: (string | null | undefined)[];
  style?: StyleProp<ImageStyle>;
  containerStyle?: StyleProp<ImageStyle>;
  iconSize?: number;
};

function resolvePosterUri(raw: string, base: string): string {
  const trimmed = raw.trim();
  if (!trimmed) return "";
  if (trimmed.startsWith("/")) return `${base}${trimmed}`;
  return trimmed;
}

function buildPosterProxyFallback(absUrl: string, base: string): string | null {
  if (!absUrl.startsWith("http") || absUrl.includes("/api/film/poster?")) return null;
  if (/egydead\.|topcinema|moviztime\.|aoneroom\.|elcinema\.|image\.tmdb\.org/i.test(absUrl)) {
    return `${base}/api/film/poster?u=${encodeURIComponent(absUrl)}`;
  }
  return null;
}

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
  const candidates = useMemo(() => {
    const base = getBaseUrl().replace(/\/$/, "");
    const rawList = [uri, ...fallbackUris]
      .filter((u): u is string => typeof u === "string" && u.trim().length > 0)
      .map((u) => resolvePosterUri(u, base))
      .filter(Boolean);
    const out: string[] = [];
    const seen = new Set<string>();
    const add = (u: string) => {
      if (u && !seen.has(u)) {
        seen.add(u);
        out.push(u);
      }
    };
    for (const u of rawList) add(u);
    for (const u of rawList) {
      const fb = buildPosterProxyFallback(u, base);
      if (fb) add(fb);
    }
    return out;
  }, [uri, fallbackKey]);

  const [currentIndex, setCurrentIndex] = useState(0);
  const [allFailed, setAllFailed] = useState(candidates.length === 0);

  useEffect(() => {
    setCurrentIndex(0);
    setAllFailed(candidates.length === 0);
  }, [uri, fallbackKey, candidates.length]);

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
      onError={() => {
        if (currentIndex + 1 < candidates.length) {
          setCurrentIndex((prev) => prev + 1);
        } else {
          setAllFailed(true);
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
