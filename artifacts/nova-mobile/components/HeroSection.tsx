import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef, useState } from "react";
import {
  Dimensions, Pressable, ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useColors } from "@/hooks/useColors";

const { width: W } = Dimensions.get("window");
const HERO_H = 290;

type Props = { items: AnilistMedia[] };

export function HeroSection({ items }: Props) {
  const colors = useColors();
  const router = useRouter();
  const scrollRef = useRef<ScrollView>(null);
  const [activeIdx, setActiveIdx] = useState(0);

  useEffect(() => {
    if (items.length <= 1) return;
    const timer = setInterval(() => {
      setActiveIdx((i) => {
        const next = (i + 1) % items.length;
        scrollRef.current?.scrollTo({ x: next * W, animated: true });
        return next;
      });
    }, 4000);
    return () => clearInterval(timer);
  }, [items.length]);

  if (!items.length) return null;

  return (
    <View style={{ height: HERO_H }}>
      <ScrollView
        ref={scrollRef}
        horizontal
        pagingEnabled
        showsHorizontalScrollIndicator={false}
        scrollEventThrottle={16}
        onMomentumScrollEnd={(e) => {
          const idx = Math.round(e.nativeEvent.contentOffset.x / W);
          setActiveIdx(idx);
        }}
      >
        {items.map((anime) => {
          const title = anime.title.english || anime.title.romaji;
          return (
            <Pressable
              key={anime.id}
              style={{ width: W, height: HERO_H }}
              onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
            >
              <Image
                source={{ uri: anime.bannerImage || anime.coverImage.extraLarge || anime.coverImage.large }}
                style={StyleSheet.absoluteFill}
                contentFit="cover"
                transition={400}
              />
              <LinearGradient
                colors={["transparent", "rgba(9,9,11,0.7)", "#09090B"]}
                style={[StyleSheet.absoluteFill, { justifyContent: "flex-end", padding: 20 }]}
              >
                <View style={styles.genreRow}>
                  {anime.genres?.slice(0, 3).map((g) => (
                    <View key={g} style={[styles.genreBadge, { borderColor: colors.primary + "60" }]}>
                      <Text style={[styles.genreText, { color: colors.primary }]}>{g}</Text>
                    </View>
                  ))}
                </View>
                <Text style={styles.heroTitle} numberOfLines={2}>{title}</Text>
                <View style={styles.infoRow}>
                  {anime.averageScore && (
                    <View style={styles.infoItem}>
                      <Ionicons name="star" size={12} color="#FFD700" />
                      <Text style={styles.infoText}>{(anime.averageScore / 10).toFixed(1)}</Text>
                    </View>
                  )}
                  {anime.episodes && (
                    <View style={styles.infoItem}>
                      <Ionicons name="play-circle" size={12} color={colors.mutedForeground} />
                      <Text style={styles.infoText}>{anime.episodes} حلقة</Text>
                    </View>
                  )}
                  <View style={styles.infoItem}>
                    <Text style={styles.infoText}>{anime.format}</Text>
                  </View>
                </View>
                <View style={styles.btnRow}>
                  <Pressable
                    style={[styles.watchBtn, { backgroundColor: colors.primary }]}
                    onPress={() => router.push(`/episodes/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}&ep=1`)}
                  >
                    <Ionicons name="play" size={16} color="#fff" />
                    <Text style={styles.watchBtnText}>مشاهدة</Text>
                  </Pressable>
                  <Pressable
                    style={[styles.detailBtn, { borderColor: colors.border }]}
                    onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
                  >
                    <Ionicons name="information-circle" size={16} color="#fff" />
                    <Text style={styles.watchBtnText}>تفاصيل</Text>
                  </Pressable>
                </View>
              </LinearGradient>
            </Pressable>
          );
        })}
      </ScrollView>
      {items.length > 1 && (
        <View style={styles.dots}>
          {items.map((_, i) => (
            <View
              key={i}
              style={[styles.dot, { backgroundColor: i === activeIdx ? colors.primary : "rgba(255,255,255,0.3)", width: i === activeIdx ? 16 : 6 }]}
            />
          ))}
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  genreRow: { flexDirection: "row", gap: 5, marginBottom: 6, flexWrap: "wrap" },
  genreBadge: { borderWidth: 1, borderRadius: 4, paddingHorizontal: 7, paddingVertical: 2 },
  genreText: { fontSize: 9, fontWeight: "600" },
  heroTitle: { color: "#fff", fontSize: 18, fontWeight: "800", marginBottom: 6, textAlign: "left", fontFamily: "Cairo_800ExtraBold" },
  infoRow: { flexDirection: "row", gap: 10, marginBottom: 12, flexWrap: "wrap" },
  infoItem: { flexDirection: "row", alignItems: "center", gap: 3 },
  infoText: { color: "rgba(255,255,255,0.7)", fontSize: 11 },
  btnRow: { flexDirection: "row", gap: 8 },
  watchBtn: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 16, paddingVertical: 8, borderRadius: 10 },
  detailBtn: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 12, paddingVertical: 8, borderRadius: 10, borderWidth: 1 },
  watchBtnText: { color: "#fff", fontWeight: "700", fontSize: 13, fontFamily: "Cairo_700Bold" },
  dots: { position: "absolute", bottom: 10, left: 0, right: 0, flexDirection: "row", justifyContent: "center", gap: 4 },
  dot: { height: 5, borderRadius: 2.5 },
});
