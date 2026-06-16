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
const HERO_H = 420;

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
                    <Ionicons name="information-circle-outline" size={16} color="#fff" />
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
  genreRow: { flexDirection: "row", gap: 6, marginBottom: 8, flexWrap: "wrap" },
  genreBadge: { borderWidth: 1, borderRadius: 4, paddingHorizontal: 8, paddingVertical: 3 },
  genreText: { fontSize: 10, fontWeight: "600" },
  heroTitle: { color: "#fff", fontSize: 22, fontWeight: "800", marginBottom: 8, textAlign: "left" },
  infoRow: { flexDirection: "row", gap: 12, marginBottom: 16, flexWrap: "wrap" },
  infoItem: { flexDirection: "row", alignItems: "center", gap: 4 },
  infoText: { color: "rgba(255,255,255,0.7)", fontSize: 12 },
  btnRow: { flexDirection: "row", gap: 10 },
  watchBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 20, paddingVertical: 10, borderRadius: 10 },
  detailBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 16, paddingVertical: 10, borderRadius: 10, borderWidth: 1 },
  watchBtnText: { color: "#fff", fontWeight: "700", fontSize: 14 },
  dots: { position: "absolute", bottom: 12, left: 0, right: 0, flexDirection: "row", justifyContent: "center", gap: 4 },
  dot: { height: 6, borderRadius: 3 },
});
