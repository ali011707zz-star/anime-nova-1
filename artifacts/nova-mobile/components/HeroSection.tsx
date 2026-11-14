import { AnilistMedia } from "@/utils/anilist";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef, useState } from "react";
import {
  AppState, ScrollView, StyleSheet, Text, View, useWindowDimensions,
} from "react-native";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, TvPressable as Pressable } from "@/utils/tv";

type Props = {
  items: AnilistMedia[];
  initialTVFocus?: boolean;
  tvFocusable?: boolean;
  onSectionFocus?: () => void;
};

export function HeroSection({
  items,
  initialTVFocus = false,
  tvFocusable = true,
  onSectionFocus,
}: Props) {
  const colors = useColors();
  const router = useRouter();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const isTablet = !tvMode && Math.min(width, height) >= 600;
  const heroWidth = tvMode ? Math.min(width - 64, 1400) : width - (isTablet ? 36 : 28);
  const heroHeight = tvMode
    ? Math.max(250, Math.min(316, Math.round(heroWidth * 0.34)))
    : isTablet
      ? Math.max(268, Math.min(350, Math.round(heroWidth * 0.52)))
      : Math.max(216, Math.min(258, Math.round(heroWidth * 0.64)));
  const s = tvMode ? 1.12 : Math.max(0.82, Math.min(1.12, heroWidth / 430));
  const scrollRef = useRef<ScrollView>(null);
  const [activeIdx, setActiveIdx] = useState(0);
  const initialFocusDoneRef = useRef(false);

  useEffect(() => {
    if (items.length <= 1) return;
    const timer = setInterval(() => {
      if (AppState.currentState && AppState.currentState !== "active") return;
      setActiveIdx((i) => {
        const next = (i + 1) % items.length;
        if (!tvMode) {
          scrollRef.current?.scrollTo({ x: next * heroWidth, animated: true });
        }
        return next;
      });
    }, tvMode ? 6500 : 4000);
    return () => clearInterval(timer);
  }, [heroWidth, items.length, tvMode]);

  if (!items.length) return null;

  const pad = tvMode ? 22 : Math.round(13 * s);
  const radius = tvMode ? 20 : Math.round(20 * s);
  const safeIndex = activeIdx % items.length;

  const renderSlideContent = (anime: AnilistMedia, index: number) => {
    const title = anime.title.english || anime.title.romaji;
    return (
      <>
        <Image
          source={{
            uri: tvMode
              ? (anime.bannerImage || anime.coverImage.large || anime.coverImage.extraLarge)
              : (anime.bannerImage || anime.coverImage.extraLarge || anime.coverImage.large),
          }}
          style={StyleSheet.absoluteFill}
          resizeMode="cover"
          resizeMethod="resize"
          fadeDuration={tvMode ? 0 : 250}
        />
        <LinearGradient
          colors={["rgba(9,9,11,0.12)", "rgba(9,9,11,0.52)", "rgba(9,9,11,0.94)"]}
          locations={[0, 0.42, 1]}
          style={[StyleSheet.absoluteFill, { justifyContent: "space-between", padding: pad }]}
        >
          {/* Top Badges Row */}
          <View style={styles.topBadgesRow}>
            {anime.averageScore ? (
              <View
                style={[
                  styles.ratingBadge,
                  {
                    paddingHorizontal: Math.round(8 * s),
                    paddingVertical: Math.round(3 * s),
                    borderRadius: Math.round(10 * s),
                  },
                ]}
              >
                <Text style={[styles.ratingText, { fontSize: Math.round(10.5 * s) }]}>
                  {(anime.averageScore / 10).toFixed(1)}
                </Text>
                <Ionicons name="star" size={Math.round(10.5 * s)} color="#FFD700" />
              </View>
            ) : <View />}
            <View
              style={[
                styles.featuredBadge,
                {
                  paddingHorizontal: Math.round(9 * s),
                  paddingVertical: Math.round(3 * s),
                  borderRadius: Math.round(10 * s),
                },
              ]}
            >
              <View style={[styles.featuredDot, { width: Math.round(5.5 * s), height: Math.round(5.5 * s) }]} />
              <Text style={[styles.featuredText, { fontSize: Math.round(9.5 * s) }]}>
                مختارات الموسم #{index + 1}
              </Text>
            </View>
          </View>

          {/* Bottom Details Section */}
          <View style={{ gap: Math.round(2 * s) }}>
            {/* Genre Tags */}
            <View style={[styles.genreRow, { gap: Math.round(5 * s), marginBottom: Math.round(3 * s) }]}>
              {anime.genres?.slice(0, 3).map((g) => (
                <View
                  key={g}
                  style={[
                    styles.genreBadge,
                    {
                      paddingHorizontal: Math.round(8 * s),
                      paddingVertical: Math.max(2, Math.round(2.5 * s)),
                      borderRadius: Math.round(7 * s),
                    },
                  ]}
                >
                  <Text style={[styles.genreText, { fontSize: Math.round(9.5 * s) }]}>{g}</Text>
                </View>
              ))}
            </View>

            {/* Title & Arabic Title */}
            <Text
              style={[
                styles.heroTitleArabic,
                {
                  fontSize: Math.round(16.5 * s),
                  lineHeight: Math.round(22 * s),
                },
              ]}
              numberOfLines={1}
            >
              {anime.title_ar || anime.title.romaji || title}
            </Text>
            <Text
              style={[
                styles.heroTitleEnglish,
                {
                  fontSize: Math.round(11 * s),
                  lineHeight: Math.round(15 * s),
                  marginBottom: Math.round(3 * s),
                },
              ]}
              numberOfLines={1}
            >
              {title}
            </Text>

            {/* Metadata Row */}
            <View style={[styles.infoRow, { marginBottom: Math.round(6 * s) }]}>
              <Text style={[styles.infoText, { fontSize: Math.round(10 * s) }]} numberOfLines={1}>
                {anime.episodes ? `${anime.episodes} حلقة` : "مستمر"} • {(anime as any).seasonYear || "2024"} • {anime.format || "TV"}
              </Text>
            </View>

            {/* CTAs */}
            <View style={[styles.btnRow, { gap: Math.round(8 * s), alignItems: "center" }]}>
              <Pressable
                onPress={() => router.push({ pathname: "/episodes/[id]", params: { id: anime.id } } as any)}
                focusable={tvMode && tvFocusable}
                hasTVPreferredFocus={tvMode && initialTVFocus && !initialFocusDoneRef.current}
                onFocus={() => {
                  initialFocusDoneRef.current = true;
                  onSectionFocus?.();
                }}
                style={({ focused }) => [
                  styles.watchBtn,
                  {
                    paddingHorizontal: Math.round(15 * s),
                    paddingVertical: Math.round(7 * s),
                    borderRadius: Math.round(11 * s),
                    gap: Math.round(5 * s),
                    borderWidth: 2,
                    borderColor: focused ? "#FACC15" : "transparent",
                  },
                ]}
              >
                <Ionicons name="play" size={Math.round(13.5 * s)} color="#fff" />
                <Text style={[styles.watchBtnText, { fontSize: Math.round(11.5 * s) }]}>مشاهدة الآن</Text>
              </Pressable>
              <Pressable
                onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
                focusable={tvMode && tvFocusable}
                onFocus={() => {
                  initialFocusDoneRef.current = true;
                  onSectionFocus?.();
                }}
                style={({ focused }) => [
                  styles.detailBtn,
                  {
                    paddingHorizontal: Math.round(13 * s),
                    paddingVertical: Math.round(7 * s),
                    borderRadius: Math.round(11 * s),
                    gap: Math.round(5 * s),
                    borderWidth: 2,
                    borderColor: focused ? "#FACC15" : "rgba(255, 255, 255, 0.22)",
                  },
                ]}
              >
                <Ionicons name="information-circle-outline" size={Math.round(14.5 * s)} color="#fff" />
                <Text style={[styles.detailBtnText, { fontSize: Math.round(11.5 * s) }]}>تفاصيل</Text>
              </Pressable>

              {tvMode && items.length > 1 && (
                <View style={styles.tvSlideNavRow}>
                  <Pressable
                    onPress={() => setActiveIdx((i) => (i - 1 + items.length) % items.length)}
                    focusable={tvFocusable}
                    accessibilityLabel="الأنمي السابق"
                    style={({ focused }) => [
                      styles.tvSlideBtn,
                      focused && { borderColor: "#FACC15", backgroundColor: "rgba(250,204,21,0.22)" },
                    ]}
                  >
                    <Ionicons name="chevron-forward" size={18} color="#fff" />
                  </Pressable>
                  <Pressable
                    onPress={() => setActiveIdx((i) => (i + 1) % items.length)}
                    focusable={tvFocusable}
                    accessibilityLabel="الأنمي التالي"
                    style={({ focused }) => [
                      styles.tvSlideBtn,
                      focused && { borderColor: "#FACC15", backgroundColor: "rgba(250,204,21,0.22)" },
                    ]}
                  >
                    <Ionicons name="chevron-back" size={18} color="#fff" />
                  </Pressable>
                </View>
              )}
            </View>
          </View>
        </LinearGradient>
      </>
    );
  };

  return (
    <View style={[styles.carousel, { height: heroHeight + Math.round(22 * s), width }]}>
      {tvMode ? (
        <View
          style={[
            styles.heroViewport,
            styles.heroSlide,
            {
              width: heroWidth,
              height: heroHeight,
              borderRadius: radius,
              borderColor: colors.border,
              borderWidth: 1,
            },
          ]}
        >
          {renderSlideContent(items[safeIndex], safeIndex)}
        </View>
      ) : (
        <ScrollView
          ref={scrollRef}
          horizontal
          pagingEnabled
          focusable={false}
          style={[styles.heroViewport, { width: heroWidth, height: heroHeight, borderRadius: radius }]}
          contentContainerStyle={styles.heroTrack}
          showsHorizontalScrollIndicator={false}
          scrollEventThrottle={16}
          onMomentumScrollEnd={(e) => {
            const idx = Math.round(e.nativeEvent.contentOffset.x / heroWidth);
            setActiveIdx(idx);
          }}
        >
          {items.map((anime, index) => (
            <Pressable
              key={anime.id}
              focusable={false}
              style={[
                styles.heroSlide,
                {
                  width: heroWidth,
                  height: heroHeight,
                  borderRadius: radius,
                  borderColor: colors.border,
                  borderWidth: 1,
                },
              ]}
              onPress={() => router.push(`/anime/${anime.id}?title=${encodeURIComponent(anime.title.romaji)}&english=${encodeURIComponent(anime.title.english || "")}`)}
            >
              {renderSlideContent(anime, index)}
            </Pressable>
          ))}
        </ScrollView>
      )}
      {items.length > 1 && (
        <View style={[styles.dots, { marginTop: Math.round(8 * s) }]}>
          {items.slice(0, 5).map((_, i) => (
            <View
              key={i}
              style={[
                styles.dot,
                {
                  backgroundColor: i === (safeIndex % 5) ? "#06b6d4" : "rgba(255,255,255,0.22)",
                  width: i === (safeIndex % 5) ? Math.round(20 * s) : Math.round(10 * s),
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
  heroViewport: { alignSelf: "center", borderRadius: 20 },
  heroTrack: { alignItems: "flex-start" },
  heroSlide: { overflow: "hidden", position: "relative" },
  topBadgesRow: { flexDirection: "row", justifyContent: "space-between", alignItems: "center" },
  ratingBadge: { flexDirection: "row", alignItems: "center", gap: 3, backgroundColor: "rgba(15, 23, 42, 0.85)", paddingHorizontal: 8, paddingVertical: 3, borderRadius: 10, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.12)" },
  ratingText: { color: "#fff", fontSize: 10.5, fontFamily: "Cairo_700Bold" },
  featuredBadge: { flexDirection: "row", alignItems: "center", gap: 5, backgroundColor: "rgba(15, 23, 42, 0.85)", paddingHorizontal: 9, paddingVertical: 3, borderRadius: 10, borderWidth: 1, borderColor: "rgba(168, 85, 247, 0.35)" },
  featuredDot: { width: 5.5, height: 5.5, borderRadius: 3, backgroundColor: "#a855f7" },
  featuredText: { color: "#e9d5ff", fontSize: 9.5, fontFamily: "Cairo_700Bold" },
  genreRow: { flexDirection: "row", gap: 5, marginBottom: 4, flexWrap: "wrap", justifyContent: "flex-end" },
  genreBadge: { backgroundColor: "rgba(30, 41, 59, 0.78)", paddingHorizontal: 8, paddingVertical: 2.5, borderRadius: 7, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.10)" },
  genreText: { fontSize: 9.5, color: "rgba(255, 255, 255, 0.88)", fontFamily: "Cairo_600SemiBold" },
  heroTitleArabic: { color: "#fff", fontSize: 17, fontFamily: "Cairo_800ExtraBold", textAlign: "right", writingDirection: "rtl" },
  heroTitleEnglish: { color: "rgba(255, 255, 255, 0.75)", fontSize: 11, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  infoRow: { flexDirection: "row", justifyContent: "flex-end" },
  infoText: { color: "rgba(255, 255, 255, 0.72)", fontSize: 10, fontFamily: "Cairo_600SemiBold" },
  btnRow: { flexDirection: "row-reverse", gap: 8 },
  watchBtn: { flexDirection: "row-reverse", alignItems: "center", gap: 5, backgroundColor: "#06b6d4", paddingHorizontal: 15, paddingVertical: 7, borderRadius: 11 },
  detailBtn: { flexDirection: "row-reverse", alignItems: "center", gap: 5, backgroundColor: "rgba(15, 23, 42, 0.82)", paddingHorizontal: 13, paddingVertical: 7, borderRadius: 11, borderWidth: 1, borderColor: "rgba(255, 255, 255, 0.20)" },
  watchBtnText: { color: "#fff", fontSize: 11.5, fontFamily: "Cairo_700Bold" },
  detailBtnText: { color: "#fff", fontSize: 11.5, fontFamily: "Cairo_600SemiBold" },
  tvSlideNavRow: { flexDirection: "row-reverse", gap: 6, marginRight: 6 },
  tvSlideBtn: { width: 36, height: 36, borderRadius: 11, backgroundColor: "rgba(15, 23, 42, 0.82)", borderWidth: 1.5, borderColor: "rgba(255,255,255,0.22)", alignItems: "center", justifyContent: "center" },
  dots: { marginTop: 8, flexDirection: "row", justifyContent: "center", gap: 5 },
  dot: { height: 4, borderRadius: 2 },
});
