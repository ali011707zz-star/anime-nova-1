import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef, useState } from "react";
import {
  ScrollView, StyleSheet, Text, View, useWindowDimensions,
} from "react-native";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

type Props = { items: AnilistMedia[]; initialTVFocus?: boolean };

export function HeroSection({ items, initialTVFocus = false }: Props) {
  const colors = useColors();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const heroWidth = tvMode ? width : width - 32;
  const heroHeight = tvMode ? 340 : Math.max(178, Math.min(380, heroWidth * 0.53));
  const scrollRef = useRef<ScrollView>(null);
  const [activeIdx, setActiveIdx] = useState(0);

  useEffect(() => {
    if (tvMode) return;
    if (items.length <= 1) return;
    const timer = setInterval(() => {
      setActiveIdx((i) => {
        const next = (i + 1) % items.length;
        scrollRef.current?.scrollTo({ x: next * heroWidth, animated: true });
        return next;
      });
    }, 4000);
    return () => clearInterval(timer);
  }, [heroWidth, items.length, tvMode]);

  if (!items.length) return null;

  return (
    <View style={[styles.carousel, { height: heroHeight + (tvMode ? 0 : 24), width }]}>
      <ScrollView
        ref={scrollRef}
        horizontal
        pagingEnabled
        style={[styles.heroViewport, { width: heroWidth, height: heroHeight }]}
        contentContainerStyle={styles.heroTrack}
        showsHorizontalScrollIndicator={false}
        scrollEventThrottle={16}
        onMomentumScrollEnd={(e) => {
          const idx = Math.round(e.nativeEvent.contentOffset.x / heroWidth);
          setActiveIdx(idx);
        }}
      >
        {items.map((anime, index) => {
          const title = anime.title.english || anime.title.romaji;
          return (
            <Pressable
              key={anime.id}
              focusable={tvMode}
              hasTVPreferredFocus={tvMode && initialTVFocus && index === 0}
              style={({ focused }) => [
                styles.heroSlide,
                {
                  width: heroWidth,
                  height: heroHeight,
                  borderRadius: tvMode ? 8 : 22,
                  borderColor: colors.border,
                  borderWidth: tvMode ? 0 : 1,
                },
                tvMode && tvFocusStyle(focused),
              ]}
              onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
            >
              <Image
                source={{ uri: tvMode
                  ? (anime.bannerImage || anime.coverImage.large || anime.coverImage.extraLarge)
                  : (anime.bannerImage || anime.coverImage.extraLarge || anime.coverImage.large) }}
                style={StyleSheet.absoluteFill}
                resizeMode="cover"
                resizeMethod="resize"
                fadeDuration={tvMode ? 0 : 400}
              />
              <LinearGradient
                colors={["transparent", "rgba(9,9,11,0.55)", "rgba(9,9,11,0.95)"]}
                style={[StyleSheet.absoluteFill, { justifyContent: "space-between", padding: tvMode ? 28 : 14 }]}
              >
                {/* Top Badges Row */}
                <View style={styles.topBadgesRow}>
                  {anime.averageScore ? (
                    <View style={styles.ratingBadge}>
                      <Text style={styles.ratingText}>{(anime.averageScore / 10).toFixed(1)}</Text>
                      <Ionicons name="star" size={11} color="#FFD700" />
                    </View>
                  ) : <View />}
                  <View style={styles.featuredBadge}>
                    <View style={styles.featuredDot} />
                    <Text style={styles.featuredText}>مختارات الموسم #{index + 1}</Text>
                  </View>
                </View>

                {/* Bottom Details Section */}
                <View>
                  {/* Genre Tags */}
                  <View style={styles.genreRow}>
                    {anime.genres?.slice(0, 3).map((g) => (
                      <View key={g} style={styles.genreBadge}>
                        <Text style={styles.genreText}>{g}</Text>
                      </View>
                    ))}
                  </View>

                  {/* Title & Arabic Title */}
                  <Text style={styles.heroTitleArabic} numberOfLines={1}>
                    {anime.title_ar || anime.title.romaji || title}
                  </Text>
                  <Text style={styles.heroTitleEnglish} numberOfLines={1}>
                    {title}
                  </Text>

                  {/* Metadata Row */}
                  <View style={styles.infoRow}>
                    <Text style={styles.infoText}>
                      {anime.episodes ? `${anime.episodes} حلقة` : "مستمر"} • {anime.seasonYear || "2024"} • {anime.format || "TV"}
                    </Text>
                  </View>

                  {/* CTAs */}
                  <View style={styles.btnRow}>
                    <Pressable
                      onPress={() => router.push({ pathname: "/episodes/[id]", params: { id: anime.id } } as any)}
                      focusable={tvMode}
                      style={({ focused }) => [styles.watchBtn, tvMode && tvFocusStyle(focused)]}
                    >
                      <Ionicons name="play" size={15} color="#fff" />
                      <Text style={styles.watchBtnText}>مشاهدة الآن</Text>
                    </Pressable>
                    <Pressable
                      onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
                      focusable={tvMode}
                      style={({ focused }) => [styles.detailBtn, tvMode && tvFocusStyle(focused)]}
                    >
                      <Ionicons name="information-circle-outline" size={16} color="#fff" />
                      <Text style={styles.detailBtnText}>تفاصيل</Text>
                    </Pressable>
                  </View>
                </View>
              </LinearGradient>
            </Pressable>
          );
        })}
      </ScrollView>
      {items.length > 1 && (
        <View style={styles.dots}>
          {items.slice(0, 5).map((_, i) => (
            <View
              key={i}
              style={[
                styles.dot,
                {
                  backgroundColor: i === (activeIdx % 5) ? "#06b6d4" : "rgba(255,255,255,0.22)",
                  width: i === (activeIdx % 5) ? 22 : 12,
                },
              ]}
            />
          ))}
        </View>
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  carousel: { alignSelf: "center", alignItems: "center", overflow: "visible" },
  heroViewport: { alignSelf: "center", borderRadius: 22 },
  heroTrack: { alignItems: "flex-start" },
  heroSlide: { overflow: "hidden", position: "relative" },
  topBadgesRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "center", marginTop: 2 },
  ratingBadge: { flexDirection: "row", alignItems: "center", gap: 3, backgroundColor: "rgba(15, 23, 42, 0.85)", paddingHorizontal: 9, paddingVertical: 4, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.12)" },
  ratingText: { color: "#fff", fontSize: 11, fontFamily: "Cairo_700Bold" },
  featuredBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(15, 23, 42, 0.85)", paddingHorizontal: 10, paddingVertical: 4, borderRadius: 12, borderWidth: 1, borderColor: "rgba(168, 85, 247, 0.35)" },
  featuredDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#a855f7" },
  featuredText: { color: "#e9d5ff", fontSize: 10, fontFamily: "Cairo_700Bold" },
  genreRow: { flexDirection: "row", gap: 5, marginBottom: 6, flexWrap: "wrap", justifyContent: "flex-end" },
  genreBadge: { backgroundColor: "rgba(30, 41, 59, 0.75)", paddingHorizontal: 9, paddingVertical: 3, borderRadius: 8, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.10)" },
  genreText: { fontSize: 10, color: "rgba(255, 255, 255, 0.85)", fontFamily: "Cairo_600SemiBold" },
  heroTitleArabic: { color: "#fff", fontSize: 19, fontFamily: "Cairo_800ExtraBold", textAlign: "right", writingDirection: "rtl", marginBottom: 2 },
  heroTitleEnglish: { color: "rgba(255, 255, 255, 0.75)", fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "right", marginBottom: 6 },
  infoRow: { flexDirection: "row", justifyContent: "flex-end", marginBottom: 10 },
  infoText: { color: "rgba(255, 255, 255, 0.65)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  btnRow: { flexDirection: "row-reverse", gap: 8, marginTop: 2 },
  watchBtn: { flexDirection: "row-reverse", alignItems: "center", gap: 6, backgroundColor: "#06b6d4", paddingHorizontal: 18, paddingVertical: 9, borderRadius: 12 },
  detailBtn: { flexDirection: "row-reverse", alignItems: "center", gap: 6, backgroundColor: "rgba(15, 23, 42, 0.80)", paddingHorizontal: 16, paddingVertical: 9, borderRadius: 12, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.20)" },
  watchBtnText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold" },
  detailBtnText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  dots: { marginTop: 10, flexDirection: "row", justifyContent: "center", gap: 5 },
  dot: { height: 4, borderRadius: 2 },
});
