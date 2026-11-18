import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useFocusEffect, useRouter } from "expo-router";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  AppState,
  I18nManager,
  Platform,
  Image,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { getImageSource, type FilmSummary } from "@/utils/filmCatalog";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

type Props = {
  items: FilmSummary[];
  tvFocusable?: boolean;
};

export function FilmHeroSection({ items, tvFocusable = true }: Props) {
  const router = useRouter();
  const [isFocused, setIsFocused] = useState(true);
  useFocusEffect(
    useCallback(() => {
      setIsFocused(true);
      return () => setIsFocused(false);
    }, []),
  );
  const { width: screenWidth, height: screenHeight } = useWindowDimensions();
  const { tv: tvMode, size: scaleSize } = useTvMetrics();

  const slideWidth = Math.max(screenWidth - 24, 300);
  const heroHeight = tvMode
    ? Math.min(340, Math.round(screenHeight * 0.56))
    : Math.min(315, Math.max(262, Math.round(slideWidth * 0.72)));

  const [idx, setIdx] = useState(0);
  const scrollRef = useRef<ScrollView>(null);
  const idxRef = useRef(0);

  useEffect(() => {
    if (items.length <= 1 || tvMode || !isFocused) return;
    const t = setInterval(() => {
      if (AppState.currentState !== "active") return;
      const next = (idxRef.current + 1) % items.length;
      idxRef.current = next;
      setIdx(next);
      scrollRef.current?.scrollTo({ x: next * slideWidth, animated: true });
    }, 6000);
    return () => clearInterval(t);
  }, [items.length, slideWidth, tvMode, isFocused]);

  if (!items.length) return null;

  const openDetails = (item: FilmSummary) => {
    router.push({ pathname: "/film/[id]" as any, params: { id: String(item.id), type: item.tmdbType, title: item.titleAr } });
  };

  const quickWatch = (item: FilmSummary) => {
    router.push({
      pathname: "/film/watch" as any,
      params: {
        id: String(item.id),
        type: item.tmdbType,
        season: "1",
        episode: "1",
        title: item.titleAr,
        poster: item.posterUrl || item.backdropUrl || "",
      },
    });
  };

  return (
    <View style={styles.outerWrap}>
      <View style={[styles.frame, { width: slideWidth, height: heroHeight }]}>
        <ScrollView
          ref={scrollRef}
          horizontal
          pagingEnabled
          scrollEnabled={!tvMode && items.length > 1}
          showsHorizontalScrollIndicator={false}
          overScrollMode="never"
          onMomentumScrollEnd={(e) => {
            const x = e.nativeEvent.contentOffset.x;
            const next = Math.round(x / slideWidth);
            if (next >= 0 && next < items.length) {
              idxRef.current = next;
              setIdx(next);
            }
          }}
        >
          {items.map((item, slideIdx) => (
            <View key={item.id} style={{ width: slideWidth, height: heroHeight, position: "relative" }}>
              <Image
                source={getImageSource(item.backdropUrl || item.posterUrl)}
                style={StyleSheet.absoluteFill}
                resizeMode="cover"
                fadeDuration={0}
                resizeMethod={Platform.OS === "android" ? "resize" : undefined}
              />
              <LinearGradient
                colors={[
                  "rgba(9,10,12,0.18)",
                  "rgba(9,10,12,0.22)",
                  "rgba(9,10,12,0.78)",
                  "rgba(9,10,12,0.97)",
                ]}
                locations={[0, 0.32, 0.7, 1]}
                style={StyleSheet.absoluteFill}
              />

              <View style={styles.overlay}>
                {/* Top badges row — generous padding so NO Arabic text ever clips */}
                <View style={styles.badgeRow}>
                  <View style={styles.featuredBadge}>
                    <Ionicons name="sparkles" size={11} color="#FFFFFF" />
                    <Text style={styles.featuredBadgeText}>
                      مختارات NOVA #{slideIdx + 1}
                    </Text>
                  </View>

                  <View style={styles.scoreBadge}>
                    <Ionicons name="star" size={11} color="#FBBF24" />
                    <Text style={styles.scoreBadgeText}>{item.imdbRating.toFixed(1)}</Text>
                  </View>

                  <View style={styles.chipBadge}>
                    <Text style={styles.chipBadgeText}>{item.categoryLabel}</Text>
                  </View>

                  <View style={styles.chipBadge}>
                    <Text style={styles.chipBadgeText}>{item.qualityBadge}</Text>
                  </View>
                </View>

                {/* Title & English Subtitle */}
                <Text
                  style={[
                    styles.title,
                    {
                      fontSize: scaleSize(22, 28),
                      lineHeight: scaleSize(33, 40),
                    },
                  ]}
                  numberOfLines={2}
                >
                  {item.titleAr}
                </Text>

                <Text style={styles.subtitleLine} numberOfLines={1}>
                  {item.titleEn} · {item.year} · {item.categoryLabel}
                </Text>

                {/* Genre pills */}
                <View style={styles.genresRow}>
                  {item.genres.slice(0, 3).map((g) => (
                    <View key={g} style={styles.genrePill}>
                      <Text style={styles.genreText}>{g}</Text>
                    </View>
                  ))}
                </View>

                {/* Buttons row matching Anime NOVA HeroSection */}
                <View style={styles.btnRow}>
                  <Pressable
                    onPress={() => quickWatch(item)}
                    focusable={tvMode && tvFocusable && slideIdx === idx}
                    style={({ focused, pressed }) => [
                      styles.watchBtn,
                      { opacity: pressed ? 0.88 : 1 },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Ionicons name="play" size={14} color="#FFFFFF" />
                    <Text style={styles.watchBtnText}>مشاهدة الآن</Text>
                  </Pressable>

                  <Pressable
                    onPress={() => openDetails(item)}
                    focusable={tvMode && tvFocusable && slideIdx === idx}
                    style={({ focused, pressed }) => [
                      styles.detailBtn,
                      { opacity: pressed ? 0.85 : 1 },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Ionicons name="information-circle-outline" size={16} color="#FFFFFF" />
                    <Text style={styles.detailBtnText}>التفاصيل والحلقات</Text>
                  </Pressable>
                </View>
              </View>
            </View>
          ))}
        </ScrollView>

        {/* Bottom dot indicators */}
        {items.length > 1 ? (
          <View style={styles.dots} pointerEvents="box-none">
            {items.map((h, i) => (
              <Pressable
                key={h.id}
                onPress={() => {
                  idxRef.current = i;
                  setIdx(i);
                  scrollRef.current?.scrollTo({ x: i * slideWidth, animated: true });
                }}
                style={[
                  styles.dot,
                  {
                    width: i === idx ? 22 : 7,
                    backgroundColor: i === idx ? "#0EA5E9" : "rgba(255,255,255,0.36)",
                  },
                ]}
              />
            ))}
          </View>
        ) : null}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  outerWrap: {
    alignItems: "center",
    marginTop: 4,
    marginBottom: 8,
  },
  frame: {
    borderRadius: 24,
    overflow: "hidden",
    backgroundColor: "#111317",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)",
    position: "relative",
  },
  overlay: {
    position: "absolute",
    bottom: 24,
    left: 16,
    right: 16,
    alignItems: I18nManager.isRTL ? "flex-start" : "flex-end",
    gap: 6,
  },
  badgeRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 6,
    marginBottom: 2,
  },
  featuredBadge: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 11,
    paddingVertical: 4,
    borderRadius: 10,
  },
  featuredBadgeText: {
    color: "#FFFFFF",
    fontSize: 10.5,
    lineHeight: 16,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  scoreBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(15,23,42,0.85)",
    borderWidth: 1,
    borderColor: "rgba(251,191,36,0.38)",
    paddingHorizontal: 9,
    paddingVertical: 4,
    borderRadius: 10,
  },
  scoreBadgeText: {
    color: "#FBBF24",
    fontSize: 10.5,
    lineHeight: 16,
    fontFamily: "Cairo_800ExtraBold",
  },
  chipBadge: {
    backgroundColor: "rgba(15,23,42,0.82)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.18)",
    paddingHorizontal: 11,
    paddingVertical: 4,
    borderRadius: 10,
  },
  chipBadgeText: {
    color: "#F1F5F9",
    fontSize: 10.5,
    lineHeight: 16,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  title: {
    color: "#FFFFFF",
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
    writingDirection: "rtl",
    includeFontPadding: true,
  },
  subtitleLine: {
    color: "#CBD5E1",
    fontSize: 12,
    lineHeight: 18,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    includeFontPadding: true,
  },
  genresRow: {
    flexDirection: ROW_RTL,
    flexWrap: "wrap",
    gap: 6,
    marginTop: 1,
  },
  genrePill: {
    backgroundColor: "rgba(255,255,255,0.12)",
    borderRadius: 8,
    paddingHorizontal: 9,
    paddingVertical: 2.5,
  },
  genreText: {
    color: "#E2E8F0",
    fontSize: 10,
    lineHeight: 15,
    fontFamily: "Cairo_600SemiBold",
    includeFontPadding: true,
  },
  btnRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
    marginTop: 6,
  },
  watchBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 18,
    paddingVertical: 9,
    borderRadius: 12,
  },
  watchBtnText: {
    color: "#FFFFFF",
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  detailBtn: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    backgroundColor: "rgba(15, 23, 42, 0.84)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.24)",
    paddingHorizontal: 15,
    paddingVertical: 9,
    borderRadius: 12,
  },
  detailBtnText: {
    color: "#FFFFFF",
    fontSize: 12,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  dots: {
    position: "absolute",
    bottom: 8,
    left: 0,
    right: 0,
    flexDirection: "row",
    justifyContent: "center",
    gap: 5,
  },
  dot: { height: 4.5, borderRadius: 3 },
});
