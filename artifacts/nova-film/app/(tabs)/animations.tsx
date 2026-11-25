import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  Platform,
  RefreshControl,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";

import { SafePosterImage } from "@/components/SafePosterImage";
import type { ThemePalette } from "@/constants/colors";
import { useColors } from "@/hooks/useColors";
import { fetchFilmBrowse } from "@/utils/filmApi";
import { type FilmSummary } from "@/utils/filmCatalog";
import { isTvDevice, TvPressable as Pressable, usePhoneScale } from "@/utils/tv";
import { tvFocusStyle } from "@/utils/tvFocus";

type AnimTab = "animation_movies" | "animation_series";

const TAB_CONFIG: Record<
  AnimTab,
  { label: string; subtitle: string; placeholder: string }
> = {
  animation_movies: {
    label: "أفلام أنميشن",
    subtitle: "أفلام الرسوم المتحركة العالمية",
    placeholder: "ابحث في أفلام الأنميشن...",
  },
  animation_series: {
    label: "مسلسلات أنميشن",
    subtitle: "مسلسلات الكرتون والأنميشن العالمية",
    placeholder: "ابحث في مسلسلات الأنميشن...",
  },
};

const AnimCard = React.memo(function AnimCard({
  item,
  cardW,
  posterH,
  colors,
  tvMode,
}: {
  item: FilmSummary;
  cardW: number;
  posterH: number;
  colors: ThemePalette;
  tvMode: boolean;
}) {
  const router = useRouter();
  return (
    <Pressable
      onPress={() =>
        router.push({
          pathname: "/film/[id]" as any,
          params: { id: String(item.id), type: item.tmdbType },
        })
      }
      focusable={tvMode}
      style={({ pressed, focused }) => [
        {
          width: cardW,
          opacity: pressed ? 0.82 : 1,
        },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View
        style={{
          width: cardW,
          height: posterH,
          borderRadius: 12,
          overflow: "hidden",
          backgroundColor: colors.surfaceElevated,
          borderWidth: 1,
          borderColor: colors.border,
        }}
      >
        <SafePosterImage
          uri={item.posterUrl || item.backdropUrl}
          fallbackUris={item.backdropUrl ? [item.backdropUrl] : undefined}
          style={StyleSheet.absoluteFill}
          resizeMode="cover"
        />
        {item.imdbRating ? (
          <View
            style={{
              position: "absolute",
              top: 6,
              left: 6,
              flexDirection: "row",
              alignItems: "center",
              gap: 3,
              paddingHorizontal: 6,
              paddingVertical: 2.5,
              borderRadius: 7,
              backgroundColor: "rgba(0, 0, 0, 0.74)",
            }}
            pointerEvents="none"
          >
            <Ionicons name="star" size={9.5} color="#FBBF24" />
            <Text
              style={{
                color: "#FFFFFF",
                fontSize: 10,
                fontFamily: "Cairo_700Bold",
                includeFontPadding: false,
              }}
            >
              {Number(item.imdbRating).toFixed(1)}
            </Text>
          </View>
        ) : null}
      </View>

      <Text
        numberOfLines={2}
        style={{
          marginTop: 5,
          color: colors.textPrimary,
          fontSize: 11.5,
          lineHeight: 16,
          fontFamily: "Cairo_700Bold",
          textAlign: "right",
          includeFontPadding: false,
        }}
      >
        {item.titleAr || item.titleEn}
      </Text>
      {item.year ? (
        <Text
          numberOfLines={1}
          style={{
            marginTop: 1,
            color: colors.textMuted,
            fontSize: 10,
            fontFamily: "Cairo_600SemiBold",
            textAlign: "right",
            includeFontPadding: false,
          }}
        >
          {item.year}
        </Text>
      ) : null}
    </Pressable>
  );
});

export default function AnimationsTabScreen() {
  const params = useLocalSearchParams<{ tab?: string }>();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const phoneScale = usePhoneScale();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);

  const [activeTab, setActiveTab] = useState<AnimTab>(() =>
    params.tab === "series" || params.tab === "animation_series"
      ? "animation_series"
      : "animation_movies",
  );
  const [searchOpen, setSearchOpen] = useState<boolean>(false);
  const [movieQuery, setMovieQuery] = useState<string>("");
  const [seriesQuery, setSeriesQuery] = useState<string>("");
  const [debouncedQ, setDebouncedQ] = useState<string>("");

  const [items, setItems] = useState<FilmSummary[]>([]);
  const [page, setPage] = useState<number>(1);
  const [totalPages, setTotalPages] = useState<number>(1);
  const [loading, setLoading] = useState<boolean>(true);
  const [refreshing, setRefreshing] = useState<boolean>(false);
  const [loadingMore, setLoadingMore] = useState<boolean>(false);

  const listRef = useRef<FlatList<FilmSummary>>(null);
  const inputRef = useRef<TextInput>(null);
  const reqIdRef = useRef(0);

  const currentQuery = activeTab === "animation_movies" ? movieQuery : seriesQuery;
  const setCurrentQuery = useCallback(
    (val: string) => {
      if (activeTab === "animation_movies") setMovieQuery(val);
      else setSeriesQuery(val);
    },
    [activeTab],
  );

  useEffect(() => {
    const t = setTimeout(() => {
      setDebouncedQ(currentQuery.trim());
    }, currentQuery.trim() ? 320 : 0);
    return () => clearTimeout(t);
  }, [currentQuery, activeTab]);

  const gridColumns = tvMode && width >= 700 ? 6 : 3;
  const gridWidth = Math.min(Math.max(width - 24, 280), tvMode ? 1100 : 900);
  const cardW = useMemo(
    () => Math.max(88, Math.floor((gridWidth - 10 * (gridColumns - 1)) / gridColumns)),
    [gridWidth, gridColumns],
  );
  const posterH = Math.round(cardW * 1.46);
  const rowStride = posterH + 56;

  const loadPage = useCallback(
    async (targetPage: number, opts?: { replace?: boolean; isRefresh?: boolean }) => {
      const myReqId = ++reqIdRef.current;
      if (targetPage === 1) {
        if (opts?.isRefresh) setRefreshing(true);
        else setLoading(true);
      } else {
        setLoadingMore(true);
      }
      try {
        const res = await fetchFilmBrowse({
          category: activeTab,
          sort: "popularity",
          q: debouncedQ || undefined,
          page: targetPage,
        });
        if (myReqId !== reqIdRef.current) return;
        const incoming = res.results || [];
        setPage(res.page || targetPage);
        setTotalPages(res.totalPages || 1);
        setItems((prev) => {
          if (targetPage === 1 || opts?.replace) return incoming;
          const seen = new Set(prev.map((x) => `${x.tmdbType}:${x.id}`));
          const merged = [...prev];
          for (const it of incoming) {
            const k = `${it.tmdbType}:${it.id}`;
            if (!seen.has(k)) {
              seen.add(k);
              merged.push(it);
            }
          }
          return merged;
        });
      } catch {
        if (myReqId === reqIdRef.current && targetPage === 1) {
          setItems([]);
        }
      } finally {
        if (myReqId === reqIdRef.current) {
          setLoading(false);
          setRefreshing(false);
          setLoadingMore(false);
        }
      }
    },
    [activeTab, debouncedQ],
  );

  useEffect(() => {
    listRef.current?.scrollToOffset({ offset: 0, animated: false });
    void loadPage(1, { replace: true });
  }, [loadPage]);

  const handleBack = useCallback(() => {
    if (router.canGoBack()) {
      router.back();
    } else {
      router.replace("/(tabs)" as any);
    }
  }, [router]);

  const handleToggleSearch = useCallback(() => {
    setSearchOpen((prev) => {
      const next = !prev;
      if (next) {
        setTimeout(() => inputRef.current?.focus(), 80);
      } else {
        setCurrentQuery("");
      }
      return next;
    });
  }, [setCurrentQuery]);

  const handleSwitchTab = useCallback((nextTab: AnimTab) => {
    setActiveTab(nextTab);
    listRef.current?.scrollToOffset({ offset: 0, animated: false });
  }, []);

  const topPad = Platform.OS === "web" ? 16 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);
  const tabMeta = TAB_CONFIG[activeTab];

  return (
    <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
      {/* ── Sleek Surface Header (deterministic LTR coordinates: Search TOP-LEFT, Title + Back TOP-RIGHT) ── */}
      <View
        style={[
          styles.headerSurface,
          {
            backgroundColor: colors.surface,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <View style={styles.headerRow}>
          {/* TOP-LEFT: Single Search Button for active tab */}
          <Pressable
            onPress={handleToggleSearch}
            focusable={tvMode}
            accessibilityRole="button"
            accessibilityLabel={`بحث في ${tabMeta.label}`}
            style={({ pressed, focused }) => [
              styles.iconBtn,
              {
                backgroundColor: searchOpen ? colors.accentSurface : colors.input,
                borderColor: searchOpen ? colors.accentBorder : colors.border,
                opacity: pressed ? 0.78 : 1,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons
              name={searchOpen ? "close" : "search"}
              size={Math.round(18 * phoneScale)}
              color={searchOpen ? colors.accent : colors.textPrimary}
            />
          </Pressable>

          {/* CENTER-RIGHT: Title + Subtitle */}
          <View style={{ flex: 1, alignItems: "flex-end", paddingHorizontal: 10 }}>
            <Text
              style={{
                color: colors.textPrimary,
                fontSize: Math.round(17 * phoneScale),
                fontFamily: "Cairo_800ExtraBold",
                includeFontPadding: false,
                textAlign: "right",
              }}
            >
              أنميشن
            </Text>
            <Text
              numberOfLines={1}
              style={{
                color: colors.textMuted,
                fontSize: Math.round(11 * phoneScale),
                fontFamily: "Cairo_600SemiBold",
                includeFontPadding: false,
                textAlign: "right",
              }}
            >
              {tabMeta.subtitle}
            </Text>
          </View>

          {/* FAR TOP-RIGHT: Back Arrow (exact match with all NOVA FILM screens) */}
          <Pressable
            onPress={handleBack}
            focusable={tvMode}
            accessibilityRole="button"
            accessibilityLabel="رجوع"
            style={({ pressed, focused }) => [
              styles.iconBtn,
              {
                backgroundColor: colors.input,
                borderColor: colors.border,
                opacity: pressed ? 0.78 : 1,
              },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Ionicons
              name="chevron-forward"
              size={Math.round(20 * phoneScale)}
              color={colors.textPrimary}
            />
          </Pressable>
        </View>

        {/* ── Clean Text-Only Segmented Switcher: أفلام أنميشن | مسلسلات أنميشن ── */}
        <View
          style={[
            styles.segmentedBar,
            {
              backgroundColor: colors.input,
              borderColor: colors.border,
            },
          ]}
        >
          {(["animation_movies", "animation_series"] as AnimTab[]).map((tabKey) => {
            const cfg = TAB_CONFIG[tabKey];
            const isActive = activeTab === tabKey;
            return (
              <Pressable
                key={tabKey}
                onPress={() => handleSwitchTab(tabKey)}
                focusable={tvMode}
                style={({ pressed, focused }) => [
                  styles.segmentBtn,
                  isActive && { backgroundColor: colors.primary },
                  { opacity: pressed ? 0.85 : 1 },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Text
                  numberOfLines={1}
                  style={{
                    color: isActive ? "#FFFFFF" : colors.textSecondary,
                    fontSize: Math.round(13 * phoneScale),
                    fontFamily: "Cairo_700Bold",
                    includeFontPadding: false,
                    textAlign: "center",
                  }}
                >
                  {cfg.label}
                </Text>
              </Pressable>
            );
          })}
        </View>

        {/* ── Scoped Search Input (opens from top-left Search button) ── */}
        {searchOpen && (
          <View
            style={[
              styles.searchBox,
              {
                backgroundColor: colors.input,
                borderColor: colors.accentBorder,
              },
            ]}
          >
            {currentQuery.length > 0 ? (
              <Pressable onPress={() => setCurrentQuery("")} hitSlop={8}>
                <Ionicons name="close-circle" size={18} color={colors.textMuted} />
              </Pressable>
            ) : null}
            <TextInput
              ref={inputRef}
              value={currentQuery}
              onChangeText={setCurrentQuery}
              placeholder={tabMeta.placeholder}
              placeholderTextColor={colors.textMuted}
              returnKeyType="search"
              style={{
                flex: 1,
                color: colors.textPrimary,
                fontSize: 13.5,
                fontFamily: "Cairo_600SemiBold",
                textAlign: "right",
                paddingVertical: Platform.OS === "ios" ? 8 : 6,
                includeFontPadding: false,
              }}
            />
            <Ionicons name="search" size={16} color={colors.accent} />
          </View>
        )}
      </View>

      {/* ── Clean Poster Grid ── */}
      {loading ? (
        <View style={styles.centerBox}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text
            style={{
              color: colors.textMuted,
              fontFamily: "Cairo_600SemiBold",
              fontSize: 13,
              marginTop: 10,
            }}
          >
            جاري تحميل {tabMeta.label}...
          </Text>
        </View>
      ) : items.length === 0 ? (
        <View style={styles.centerBox}>
          <Ionicons name="film-outline" size={42} color={colors.textMuted} />
          <Text
            style={{
              color: colors.textPrimary,
              fontFamily: "Cairo_700Bold",
              fontSize: 15,
              marginTop: 10,
            }}
          >
            {debouncedQ ? `لا توجد نتائج لـ "${debouncedQ}"` : "لا توجد أعمال متاحة حالياً"}
          </Text>
        </View>
      ) : (
        <FlatList
          ref={listRef}
          key={`anim-grid-${gridColumns}-${activeTab}`}
          data={items}
          numColumns={gridColumns}
          keyExtractor={(item) => `${activeTab}-${item.tmdbType}-${item.id}`}
          removeClippedSubviews={false}
          initialNumToRender={12}
          maxToRenderPerBatch={12}
          windowSize={7}
          getItemLayout={(_, index) => ({
            length: rowStride,
            offset: rowStride * index,
            index,
          })}
          contentContainerStyle={{
            paddingHorizontal: 12,
            paddingTop: 12,
            paddingBottom: Math.max(insets.bottom + 84, 100),
          }}
          columnWrapperStyle={{
            gap: 10,
            marginBottom: 14,
            justifyContent: "flex-start",
          }}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={() => void loadPage(1, { replace: true, isRefresh: true })}
              tintColor={colors.accent}
              colors={[colors.accent]}
            />
          }
          onEndReachedThreshold={0.5}
          onEndReached={() => {
            if (!loadingMore && !loading && !debouncedQ && page < totalPages) {
              void loadPage(page + 1);
            }
          }}
          ListFooterComponent={
            loadingMore ? (
              <View style={{ paddingVertical: 18, alignItems: "center" }}>
                <ActivityIndicator size="small" color={colors.accent} />
              </View>
            ) : null
          }
          renderItem={({ item }) => (
            <AnimCard
              item={item}
              cardW={cardW}
              posterH={posterH}
              colors={colors}
              tvMode={tvMode}
            />
          )}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  headerSurface: {
    paddingHorizontal: 14,
    paddingTop: 8,
    paddingBottom: 10,
    borderBottomWidth: 1,
    gap: 10,
  },
  headerRow: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    justifyContent: "space-between",
  },
  iconBtn: {
    width: 36,
    height: 36,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  segmentedBar: {
    flexDirection: "row",
    direction: "rtl",
    alignItems: "center",
    padding: 3,
    borderRadius: 12,
    borderWidth: 1,
    gap: 4,
  },
  segmentBtn: {
    flex: 1,
    paddingVertical: 8,
    paddingHorizontal: 10,
    borderRadius: 9,
    alignItems: "center",
    justifyContent: "center",
  },
  searchBox: {
    flexDirection: "row",
    direction: "ltr",
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 12,
    borderRadius: 12,
    borderWidth: 1,
  },
  centerBox: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 24,
  },
});
