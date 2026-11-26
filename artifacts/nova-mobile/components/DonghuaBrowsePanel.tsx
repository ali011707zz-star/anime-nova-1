import React, { useState, useEffect, useCallback, useRef, useMemo } from "react";
import {
  View,
  Text,
  TextInput,
  FlatList,
  ActivityIndicator,
  StyleSheet,
  I18nManager,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { SafePosterImage } from "@/components/SafePosterImage";
import { useColors } from "@/hooks/useColors";
import { TvPressable as Pressable, tvFocusStyle } from "@/utils/tv";
import { fetchDonghuaCatalog } from "@/utils/donghuaClient";
import type { DonghuaCatalogItem, DonghuaSourceId } from "@/utils/donghuaLogic.mjs";
import type { ThemePalette } from "@/constants/colors";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

interface Props {
  gridColumns: number;
  gridWidth: number;
  tvMode: boolean;
}

export function DonghuaBrowsePanel({ gridColumns, gridWidth, tvMode }: Props) {
  const router = useRouter();
  const colors = useColors();
  const s = useMemo(() => createStyles(colors), [colors]);

  const [source, setSource] = useState<DonghuaSourceId>("animexin");
  const [order, setOrder] = useState<"update" | "popular">("update");
  const [query, setQuery] = useState("");
  const [debouncedQuery, setDebouncedQuery] = useState("");
  const [items, setItems] = useState<DonghuaCatalogItem[]>([]);
  const [page, setPage] = useState(1);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(true);
  const [loadingMore, setLoadingMore] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const abortRef = useRef<AbortController | null>(null);

  useEffect(() => {
    const t = setTimeout(() => setDebouncedQuery(query.trim()), 380);
    return () => clearTimeout(t);
  }, [query]);

  const loadPage = useCallback(
    async (nextPage: number, reset: boolean) => {
      abortRef.current?.abort();
      const ctrl = new AbortController();
      abortRef.current = ctrl;
      if (reset) {
        setLoading(true);
        setError(null);
      } else {
        setLoadingMore(true);
      }

      try {
        const fetched = await fetchDonghuaCatalog({
          source,
          page: nextPage,
          order,
          query: debouncedQuery,
          signal: ctrl.signal,
        });
        if (ctrl.signal.aborted) return;
        if (reset) {
          setItems(fetched);
        } else {
          setItems((prev) => {
            const seen = new Set(prev.map((x) => x.url));
            return [...prev, ...fetched.filter((x) => !seen.has(x.url))];
          });
        }
        setPage(nextPage);
        setHasMore(fetched.length >= 10);
      } catch {
        if (!ctrl.signal.aborted && reset) {
          setError("تعذّر تحميل قائمة الدونغهوا. جرّب المصدر الآخر أو أعد المحاولة.");
        }
      } finally {
        if (!ctrl.signal.aborted) {
          setLoading(false);
          setLoadingMore(false);
        }
      }
    },
    [source, order, debouncedQuery],
  );

  useEffect(() => {
    setPage(1);
    setHasMore(true);
    void loadPage(1, true);
    return () => abortRef.current?.abort();
  }, [loadPage]);

  const cardGap = 10;
  const horizontalPad = 12;
  const cardWidth = Math.max(96, Math.floor((gridWidth - horizontalPad * 2 - cardGap * (gridColumns - 1)) / gridColumns));
  const cardHeight = Math.round(cardWidth * 1.44);

  const openDetail = useCallback(
    (item: DonghuaCatalogItem) => {
      router.push({
        pathname: "/donghua/[slug]" as any,
        params: {
          slug: item.slug,
          source: item.source,
          url: item.url,
          title: item.title,
          poster: item.poster,
        },
      });
    },
    [router],
  );

  return (
    <View style={s.root}>
      {/* Search + Source & Sort Controls */}
      <View style={[s.controlsWrap, { width: gridWidth, alignSelf: "center" }]}>
        <View style={s.searchBox}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={query}
            onChangeText={setQuery}
            placeholder="ابحث في الدونغهوا (مثلاً: Soul Land, Renegade)..."
            placeholderTextColor={colors.textMuted}
            style={s.searchInput}
            returnKeyType="search"
          />
          {query ? (
            <Pressable onPress={() => setQuery("")}>
              <Ionicons name="close-circle" size={17} color={colors.textMuted} />
            </Pressable>
          ) : null}
        </View>

        <View style={s.chipsRow}>
          <View style={s.chipGroup}>
            <Pressable
              onPress={() => setSource("animexin")}
              focusable={tvMode}
              style={({ focused }) => [
                s.chip,
                source === "animexin" && s.chipActive,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[s.chipText, source === "animexin" && s.chipTextActive]} numberOfLines={1}>
                AnimeXin
              </Text>
            </Pressable>
            <Pressable
              onPress={() => setSource("animekhor")}
              focusable={tvMode}
              style={({ focused }) => [
                s.chip,
                source === "animekhor" && s.chipActive,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[s.chipText, source === "animekhor" && s.chipTextActive]} numberOfLines={1}>
                AnimeKhor
              </Text>
            </Pressable>
          </View>

          <View style={s.chipGroup}>
            <Pressable
              onPress={() => setOrder("update")}
              focusable={tvMode}
              style={({ focused }) => [
                s.chip,
                order === "update" && s.chipOrderActive,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[s.chipText, order === "update" && s.chipOrderTextActive]} numberOfLines={1}>
                الأحدث
              </Text>
            </Pressable>
            <Pressable
              onPress={() => setOrder("popular")}
              focusable={tvMode}
              style={({ focused }) => [
                s.chip,
                order === "popular" && s.chipOrderActive,
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Text style={[s.chipText, order === "popular" && s.chipOrderTextActive]} numberOfLines={1}>
                الأشهر
              </Text>
            </Pressable>
          </View>
        </View>
      </View>

      {loading && items.length === 0 ? (
        <View style={s.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={s.mutedText}>جاري تحميل الدونغهوا مباشرة على الهاتف...</Text>
        </View>
      ) : error && items.length === 0 ? (
        <View style={s.center}>
          <Text style={s.errorText}>{error}</Text>
          <Pressable onPress={() => void loadPage(1, true)} style={s.retryBtn}>
            <Text style={s.retryBtnText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : items.length === 0 ? (
        <View style={s.center}>
          <Text style={s.mutedText}>لا توجد نتائج مطابقة للبحث.</Text>
        </View>
      ) : (
        <FlatList
          data={items}
          key={`donghua-grid-${gridColumns}-${source}`}
          numColumns={gridColumns}
          style={{ width: gridWidth, alignSelf: "center", flex: 1 }}
          contentContainerStyle={{ paddingHorizontal: horizontalPad, paddingTop: 6, paddingBottom: 96 }}
          columnWrapperStyle={gridColumns > 1 ? { gap: cardGap, marginBottom: 12 } : undefined}
          keyExtractor={(item, idx) => `${item.id}-${idx}`}
          showsVerticalScrollIndicator={false}
          onEndReachedThreshold={0.45}
          onEndReached={() => {
            if (!loading && !loadingMore && hasMore) {
              void loadPage(page + 1, false);
            }
          }}
          ListFooterComponent={
            loadingMore ? (
              <View style={{ paddingVertical: 16, alignItems: "center" }}>
                <ActivityIndicator size="small" color={colors.accent} />
              </View>
            ) : null
          }
          renderItem={({ item }) => (
            <Pressable
              onPress={() => openDetail(item)}
              focusable={tvMode}
              style={({ pressed, focused }) => [
                s.card,
                { width: cardWidth, opacity: pressed ? 0.85 : 1 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <View style={[s.posterBox, { width: cardWidth, height: cardHeight }]}>
                {item.poster ? (
                  <SafePosterImage uri={item.poster} style={s.poster} resizeMode="cover" />
                ) : (
                  <View style={[s.poster, s.posterFallback]}>
                    <Ionicons name="film-outline" size={26} color={colors.textMuted} />
                  </View>
                )}
                <View style={s.statusTag}>
                  <Text style={s.statusTagText} numberOfLines={1}>
                    {item.status || "دونغهوا"}
                  </Text>
                </View>
              </View>
              <Text style={s.cardTitle} numberOfLines={2}>
                {item.title}
              </Text>
            </Pressable>
          )}
        />
      )}
    </View>
  );
}

function createStyles(colors: ThemePalette) {
  return StyleSheet.create({
    root: { flex: 1 },
    controlsWrap: { paddingHorizontal: 12, paddingTop: 6, paddingBottom: 6, gap: 8 },
    searchBox: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      backgroundColor: colors.card,
      borderRadius: 12,
      borderWidth: 1,
      borderColor: colors.border,
      paddingHorizontal: 11,
      height: 40,
    },
    searchInput: {
      flex: 1,
      fontSize: 12.5,
      fontFamily: "Cairo_600SemiBold",
      color: colors.textPrimary,
      textAlign: "right",
    },
    chipsRow: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      justifyContent: "space-between",
      gap: 8,
    },
    chipGroup: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    chip: {
      paddingHorizontal: 10,
      paddingVertical: 5,
      borderRadius: 9,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    chipActive: {
      backgroundColor: colors.accent,
      borderColor: colors.accent,
    },
    chipOrderActive: {
      backgroundColor: "rgba(245, 158, 11, 0.16)",
      borderColor: "rgba(245, 158, 11, 0.45)",
    },
    chipText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    chipTextActive: { color: colors.buttonText },
    chipOrderTextActive: { color: "#f59e0b" },
    card: { gap: 5 },
    posterBox: {
      borderRadius: 12,
      overflow: "hidden",
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
      position: "relative",
    },
    poster: { width: "100%", height: "100%" },
    posterFallback: { alignItems: "center", justifyContent: "center" },
    statusTag: {
      position: "absolute",
      top: 6,
      right: 6,
      paddingHorizontal: 6,
      paddingVertical: 2,
      borderRadius: 6,
      backgroundColor: "rgba(9, 11, 20, 0.78)",
      borderWidth: 1,
      borderColor: "rgba(245, 158, 11, 0.45)",
    },
    statusTagText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#fbbf24" },
    cardTitle: {
      fontSize: 11.5,
      fontFamily: "Cairo_700Bold",
      color: colors.textPrimary,
      textAlign: "right",
      lineHeight: 16,
    },
    center: { flex: 1, alignItems: "center", justifyContent: "center", paddingHorizontal: 24, gap: 10 },
    mutedText: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: colors.textMuted, textAlign: "center" },
    errorText: { fontSize: 12.5, fontFamily: "Cairo_700Bold", color: "#ef4444", textAlign: "center" },
    retryBtn: { paddingHorizontal: 16, paddingVertical: 8, borderRadius: 10, backgroundColor: colors.accent },
    retryBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.buttonText },
  });
}
