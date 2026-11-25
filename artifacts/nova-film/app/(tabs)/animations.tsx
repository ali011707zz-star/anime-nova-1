import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  FlatList,
  I18nManager,
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

const ROW_RTL = I18nManager.isRTL ? ("row" as const) : ("row-reverse" as const);

const TAB_CONFIG: Record<
  AnimTab,
  { label: string; color: string; placeholder: string; badge: string; icon: keyof typeof Ionicons.glyphMap }
> = {
  animation_movies: {
    label: "أفلام أنميشن",
    color: "#8B5CF6",
    placeholder: "ابحث في أفلام الأنميشن...",
    badge: "فيلم",
    icon: "film-outline",
  },
  animation_series: {
    label: "مسلسلات أنميشن",
    color: "#06b6d4",
    placeholder: "ابحث في مسلسلات الأنميشن...",
    badge: "مسلسل",
    icon: "tv-outline",
  },
};

const AnimCard = React.memo(function AnimCard({
  item,
  cardW,
  cardH,
  colors,
  tvMode,
}: {
  item: FilmSummary;
  cardW: number;
  cardH: number;
  colors: ThemePalette;
  tvMode: boolean;
}) {
  const router = useRouter();
  const isTv = item.tmdbType === "tv";
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
          height: cardH,
          borderRadius: 12,
          overflow: "hidden",
          backgroundColor: colors.card,
          borderWidth: 1,
          borderColor: colors.border,
          opacity: pressed ? 0.85 : 1,
        },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <SafePosterImage
        uri={item.posterUrl || item.backdropUrl}
        fallbackUris={item.backdropUrl ? [item.backdropUrl] : undefined}
        style={StyleSheet.absoluteFill}
        resizeMode="cover"
      />
      <LinearGradient
        colors={["transparent", "rgba(0,0,0,0.22)", "rgba(0,0,0,0.92)"]}
        locations={[0.42, 0.68, 1]}
        style={StyleSheet.absoluteFill}
        pointerEvents="none"
      />
      {/* Top badges */}
      <View
        style={{
          position: "absolute",
          top: 6,
          left: 6,
          right: 6,
          flexDirection: ROW_RTL,
          alignItems: "center",
          justifyContent: "space-between",
          gap: 4,
        }}
        pointerEvents="none"
      >
        <View
          style={{
            paddingHorizontal: 6,
            paddingVertical: 2,
            borderRadius: 6,
            backgroundColor: isTv ? "rgba(6, 182, 212, 0.88)" : "rgba(139, 92, 246, 0.88)",
          }}
        >
          <Text
            style={{
              color: "#ffffff",
              fontSize: 9,
              fontFamily: "Cairo_700Bold",
              includeFontPadding: false,
            }}
          >
            {isTv ? "مسلسل" : "فيلم"}
          </Text>
        </View>
        {item.imdbRating ? (
          <View
            style={{
              flexDirection: "row",
              alignItems: "center",
              gap: 2,
              paddingHorizontal: 5,
              paddingVertical: 2,
              borderRadius: 6,
              backgroundColor: "rgba(0, 0, 0, 0.72)",
            }}
          >
            <Ionicons name="star" size={9} color="#FACC15" />
            <Text
              style={{
                color: "#FEF08A",
                fontSize: 9.5,
                fontFamily: "Cairo_700Bold",
                includeFontPadding: false,
              }}
            >
              {Number(item.imdbRating).toFixed(1)}
            </Text>
          </View>
        ) : null}
      </View>

      {/* Bottom title */}
      <View
        style={{
          position: "absolute",
          bottom: 0,
          left: 0,
          right: 0,
          paddingHorizontal: 7,
          paddingBottom: 7,
          paddingTop: 14,
        }}
        pointerEvents="none"
      >
        <Text
          numberOfLines={2}
          style={{
            color: "#ffffff",
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
              color: "rgba(255,255,255,0.68)",
              fontSize: 9.5,
              fontFamily: "Cairo_600SemiBold",
              textAlign: "right",
              marginTop: 1,
              includeFontPadding: false,
            }}
          >
            {item.year}
          </Text>
        ) : null}
      </View>
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
  const cardH = Math.round(cardW * 1.44);
  const rowStride = cardH + 10;

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
      {/* ── Top Header: Back arrow TOP-RIGHT, Title center-right, Search button TOP-LEFT ── */}
      <View
        style={[
          styles.header,
          {
            borderBottomColor: colors.border,
            paddingHorizontal: 14,
            flexDirection: "row",
          },
        ]}
      >
        {/* Top-Left: Search button for the active tab */}
        <Pressable
          onPress={handleToggleSearch}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel={`بحث في ${tabMeta.label}`}
          style={({ pressed, focused }) => [
            styles.iconBtn,
            {
              backgroundColor: searchOpen ? `${tabMeta.color}26` : colors.card,
              borderColor: searchOpen ? `${tabMeta.color}88` : colors.border,
              opacity: pressed ? 0.78 : 1,
            },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons
            name={searchOpen ? "close" : "search"}
            size={Math.round(19 * phoneScale)}
            color={searchOpen ? tabMeta.color : colors.textPrimary}
          />
        </Pressable>

        {/* Center/Right: Section Title */}
        <View style={{ flex: 1, alignItems: "flex-end", paddingHorizontal: 10 }}>
          <View style={{ flexDirection: "row", alignItems: "center", gap: 6 }}>
            <Text
              style={{
                color: colors.textPrimary,
                fontSize: Math.round(18 * phoneScale),
                fontFamily: "Cairo_800ExtraBold",
                includeFontPadding: false,
              }}
            >
              أنميشن
            </Text>
            <Ionicons name="sparkles" size={16} color={tabMeta.color} />
          </View>
          <Text
            style={{
              color: colors.textSecondary,
              fontSize: Math.round(10.5 * phoneScale),
              fontFamily: "Cairo_600SemiBold",
              includeFontPadding: false,
            }}
          >
            {tabMeta.label} · بوسترات ومكتبة عالمية رسمية
          </Text>
        </View>

        {/* Top-Right: Back Arrow */}
        <Pressable
          onPress={handleBack}
          focusable={tvMode}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          style={({ pressed, focused }) => [
            styles.iconBtn,
            {
              backgroundColor: colors.card,
              borderColor: colors.border,
              opacity: pressed ? 0.78 : 1,
            },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons
            name="chevron-forward"
            size={Math.round(21 * phoneScale)}
            color={colors.textPrimary}
          />
        </Pressable>
      </View>

      {/* ── Top Switcher Buttons: أفلام أنميشن | مسلسلات أنميشن + per-tab quick search button ── */}
      <View style={[styles.tabRow, { paddingHorizontal: 14, flexDirection: ROW_RTL }]}>
        {(["animation_movies", "animation_series"] as AnimTab[]).map((tabKey) => {
          const cfg = TAB_CONFIG[tabKey];
          const isActive = activeTab === tabKey;
          return (
            <View
              key={tabKey}
              style={{
                flex: 1,
                flexDirection: ROW_RTL,
                alignItems: "center",
                borderRadius: 13,
                borderWidth: 1.2,
                backgroundColor: isActive ? `${cfg.color}22` : colors.card,
                borderColor: isActive ? `${cfg.color}99` : colors.border,
                overflow: "hidden",
              }}
            >
              <Pressable
                onPress={() => handleSwitchTab(tabKey)}
                focusable={tvMode}
                style={({ pressed, focused }) => [
                  {
                    flex: 1,
                    flexDirection: ROW_RTL,
                    alignItems: "center",
                    justifyContent: "center",
                    gap: 6,
                    paddingVertical: 9,
                    paddingHorizontal: 8,
                    opacity: pressed ? 0.8 : 1,
                  },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons
                  name={cfg.icon}
                  size={15}
                  color={isActive ? cfg.color : colors.textSecondary}
                />
                <Text
                  numberOfLines={1}
                  style={{
                    color: isActive ? cfg.color : colors.textSecondary,
                    fontSize: Math.round(12.5 * phoneScale),
                    fontFamily: "Cairo_700Bold",
                    includeFontPadding: false,
                  }}
                >
                  {cfg.label}
                </Text>
              </Pressable>
              {/* Per-tab Search button */}
              <Pressable
                onPress={() => {
                  if (activeTab !== tabKey) setActiveTab(tabKey);
                  setSearchOpen(true);
                  setTimeout(() => inputRef.current?.focus(), 80);
                }}
                focusable={tvMode}
                accessibilityRole="button"
                accessibilityLabel={`بحث في ${cfg.label}`}
                style={({ pressed, focused }) => [
                  {
                    paddingHorizontal: 10,
                    paddingVertical: 9,
                    borderLeftWidth: I18nManager.isRTL ? 0 : 1,
                    borderRightWidth: I18nManager.isRTL ? 1 : 0,
                    borderColor: isActive ? `${cfg.color}44` : colors.border,
                    opacity: pressed ? 0.75 : 1,
                  },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons
                  name="search-outline"
                  size={15}
                  color={isActive ? cfg.color : colors.textSecondary}
                />
              </Pressable>
            </View>
          );
        })}
      </View>

      {/* ── Scoped Inline Search Bar ── */}
      {searchOpen && (
        <View style={{ paddingHorizontal: 14, paddingBottom: 10 }}>
          <View
            style={[
              styles.searchBox,
              {
                backgroundColor: colors.card,
                borderColor: `${tabMeta.color}77`,
                flexDirection: ROW_RTL,
              },
            ]}
          >
            <Ionicons name="search" size={17} color={tabMeta.color} />
            <TextInput
              ref={inputRef}
              value={currentQuery}
              onChangeText={setCurrentQuery}
              placeholder={tabMeta.placeholder}
              placeholderTextColor={colors.textSecondary}
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
            {currentQuery.length > 0 ? (
              <Pressable onPress={() => setCurrentQuery("")} hitSlop={8}>
                <Ionicons name="close-circle" size={18} color={colors.textSecondary} />
              </Pressable>
            ) : null}
          </View>
        </View>
      )}

      {/* ── Grid Content ── */}
      {loading ? (
        <View style={styles.centerBox}>
          <ActivityIndicator size="large" color={tabMeta.color} />
          <Text
            style={{
              color: colors.textSecondary,
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
          <Ionicons name="film-outline" size={42} color={colors.textSecondary} />
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
            paddingTop: 6,
            paddingBottom: Math.max(insets.bottom + 84, 100),
          }}
          columnWrapperStyle={{
            gap: 10,
            marginBottom: 10,
            justifyContent: "flex-start",
          }}
          refreshControl={
            <RefreshControl
              refreshing={refreshing}
              onRefresh={() => void loadPage(1, { replace: true, isRefresh: true })}
              tintColor={tabMeta.color}
              colors={[tabMeta.color]}
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
                <ActivityIndicator size="small" color={tabMeta.color} />
              </View>
            ) : null
          }
          renderItem={({ item }) => (
            <AnimCard
              item={item}
              cardW={cardW}
              cardH={cardH}
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
  header: {
    alignItems: "center",
    justifyContent: "space-between",
    paddingBottom: 10,
    borderBottomWidth: 1,
  },
  iconBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  tabRow: {
    gap: 8,
    paddingTop: 10,
    paddingBottom: 10,
    alignItems: "center",
  },
  searchBox: {
    alignItems: "center",
    gap: 8,
    paddingHorizontal: 12,
    borderRadius: 12,
    borderWidth: 1.2,
  },
  centerBox: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 24,
  },
});
