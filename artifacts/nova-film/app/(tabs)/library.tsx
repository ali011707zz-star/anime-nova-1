import { Ionicons } from "@expo/vector-icons";
import { useFocusEffect, useRouter } from "expo-router";
import React, { useCallback, useMemo, useState } from "react";
import {
  FlatList,
  I18nManager,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { FilmPosterCard, getFilmGridColumnCount } from "@/components/FilmPosterCard";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadAllPlaybackProgress,
  loadFavoriteFilmIds,
  loadWatchedMap,
  makeEpisodeKey,
  removeFilmPlaybackProgress,
  saveFavoriteFilmIds,
  type FilmPlaybackRecord,
} from "@/utils/filmCatalog";

const ROW_HEADER = I18nManager.isRTL ? "row-reverse" : "row";
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

export default function NovaFilmLibraryScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [tab, setTab] = useState<"favorites" | "history" | "watched">("favorites");
  const [query, setQuery] = useState("");
  const [favIds, setFavIds] = useState<number[]>([]);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [playbackHistory, setPlaybackHistory] = useState<FilmPlaybackRecord[]>([]);

  const loadData = useCallback(async () => {
    const [f, w, hist] = await Promise.all([
      loadFavoriteFilmIds(),
      loadWatchedMap(),
      loadAllPlaybackProgress(),
    ]);
    setFavIds(f);
    setWatchedMap(w);
    setPlaybackHistory(hist);
  }, []);

  useFocusEffect(
    useCallback(() => {
      void loadData();
    }, [loadData]),
  );

  const cols = getFilmGridColumnCount(width);
  const gap = 10;
  const cardWidth = Math.floor((width - 28 - (cols - 1) * gap) / cols);

  const favTitles = useMemo(
    () => NOVA_FILM_CATALOG.filter((t) => favIds.includes(t.id)),
    [favIds],
  );

  const historyTitles = useMemo(() => {
    const seen = new Set<number>();
    const list = [] as typeof NOVA_FILM_CATALOG;
    for (const rec of playbackHistory) {
      if (seen.has(rec.titleId)) continue;
      const found = NOVA_FILM_CATALOG.find((t) => t.id === rec.titleId);
      if (found) {
        seen.add(rec.titleId);
        list.push(found);
      }
    }
    return list;
  }, [playbackHistory]);

  const watchedTitles = useMemo(() => {
    return NOVA_FILM_CATALOG.filter((t) =>
      t.episodes.some((ep) => watchedMap[makeEpisodeKey(t.id, ep.seasonNumber, ep.episodeNumber)]),
    );
  }, [watchedMap]);

  const activeList = useMemo(() => {
    const raw =
      tab === "favorites" ? favTitles : tab === "history" ? historyTitles : watchedTitles;
    const q = query.trim().toLowerCase();
    if (!q) return raw;
    return raw.filter((item) =>
      `${item.titleAr} ${item.titleEn}`.toLowerCase().includes(q),
    );
  }, [tab, favTitles, historyTitles, watchedTitles, query]);

  const removeItem = async (id: number) => {
    if (tab === "favorites") {
      const next = favIds.filter((x) => x !== id);
      setFavIds(next);
      await saveFavoriteFilmIds(next);
    } else if (tab === "history") {
      await removeFilmPlaybackProgress(id);
      setPlaybackHistory((prev) => prev.filter((r) => r.titleId !== id));
    }
  };

  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <View
        style={[
          s.topHeader,
          {
            paddingTop: topPad + 4,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <Pressable
          onPress={() => setDrawerVisible(true)}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="menu" size={20} color={colors.textPrimary} />
        </Pressable>

        <View style={{ flex: 1, alignItems: "flex-end" }}>
          <Text style={[s.headerTitle, { color: colors.textPrimary }]}>قائمتي</Text>
        </View>

        <Pressable
          onPress={() => void loadData()}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="refresh" size={18} color={colors.textPrimary} />
        </Pressable>
      </View>

      {/* CatalogTabs */}
      <View style={[s.tabsBar, { borderBottomColor: colors.border }]}>
        {[
          { id: "favorites", label: `المفضلة (${favTitles.length})` },
          { id: "history", label: `متابعة المشاهدة (${historyTitles.length})` },
          { id: "watched", label: `شاهدته (${watchedTitles.length})` },
        ].map((item) => {
          const active = tab === item.id;
          return (
            <Pressable
              key={item.id}
              onPress={() => setTab(item.id as any)}
              style={s.tabBtn}
            >
              <Text style={[s.tabText, { color: active ? "#0EA5E9" : colors.textMuted }]}>
                {item.label}
              </Text>
              {active ? <View style={s.tabIndicator} /> : null}
            </Pressable>
          );
        })}
      </View>

      <View style={s.searchWrap}>
        <View style={[s.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={query}
            onChangeText={setQuery}
            placeholder="ابحث داخل قائمتك..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.textPrimary }]}
          />
        </View>
      </View>

      <FlatList
        data={activeList}
        key={`lib-${cols}-${tab}`}
        numColumns={cols}
        keyExtractor={(item) => `${tab}-${item.id}`}
        contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 100, gap: 14 }}
        columnWrapperStyle={{ gap, flexDirection: ROW_RTL }}
        ListEmptyComponent={
          <View style={s.emptyBox}>
            <View style={[s.emptyIcon, { backgroundColor: colors.accentSurface, borderColor: colors.accentBorder }]}>
              <Ionicons
                name={tab === "favorites" ? "heart-outline" : "time-outline"}
                size={34}
                color="#0EA5E9"
              />
            </View>
            <Text style={[s.emptyTitle, { color: colors.textPrimary }]}>
              {tab === "favorites"
                ? "قائمة المفضلة فارغة حالياً"
                : tab === "history"
                  ? "لا يوجد سجل مشاهدة بعد"
                  : "لم تحدد حلقات كمشاهدة بعد"}
            </Text>
            <Text style={[s.emptySub, { color: colors.textMuted }]}>
              استكشف أحدث الأفلام والمسلسلات والأنميشن وأضف أعمالك المفضلة هنا.
            </Text>
            <Pressable
              onPress={() => router.push("/(tabs)/browse" as any)}
              style={s.exploreBtn}
            >
              <Text style={s.exploreBtnText}>تصفح المكتبة</Text>
            </Pressable>
          </View>
        }
        renderItem={({ item }) => {
          const watchedCount = item.episodes.filter(
            (ep) => watchedMap[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)],
          ).length;
          const progress = item.episodes.length > 0 ? watchedCount / item.episodes.length : 0;
          return (
            <View style={{ position: "relative" }}>
              <FilmPosterCard
                item={item}
                cardWidth={cardWidth}
                watchedCount={watchedCount}
                progress={progress}
              />
              {tab !== "watched" ? (
                <Pressable
                  onPress={() => removeItem(item.id)}
                  style={s.removeBadge}
                  hitSlop={6}
                >
                  <Ionicons name="close" size={13} color="#FFFFFF" />
                </Pressable>
              ) : null}
            </View>
          );
        }}
      />

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  topHeader: {
    flexDirection: ROW_HEADER,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: StyleSheet.hairlineWidth,
    gap: 10,
  },
  iconBtn: {
    width: 39,
    height: 39,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerTitle: {
    fontSize: 18,
    lineHeight: 27,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  tabsBar: {
    flexDirection: ROW_RTL,
    justifyContent: "space-around",
    borderBottomWidth: StyleSheet.hairlineWidth,
    paddingHorizontal: 8,
  },
  tabBtn: {
    minHeight: 46,
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 8,
    position: "relative",
  },
  tabText: {
    fontSize: 12.5,
    lineHeight: 19,
    fontFamily: "Cairo_700Bold",
    includeFontPadding: true,
  },
  tabIndicator: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    height: 3,
    backgroundColor: "#0EA5E9",
    borderTopLeftRadius: 3,
    borderTopRightRadius: 3,
  },
  searchWrap: { paddingHorizontal: 14, paddingVertical: 12 },
  searchBox: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    borderWidth: 1,
    borderRadius: 13,
    paddingHorizontal: 12,
    height: 44,
  },
  searchInput: {
    flex: 1,
    textAlign: "right",
    fontSize: 13,
    fontFamily: "Cairo_400Regular",
    includeFontPadding: true,
  },
  emptyBox: {
    alignItems: "center",
    justifyContent: "center",
    paddingVertical: 64,
    paddingHorizontal: 28,
    gap: 12,
  },
  emptyIcon: {
    width: 76,
    height: 76,
    borderRadius: 24,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  emptyTitle: {
    fontSize: 16,
    lineHeight: 24,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "center",
    includeFontPadding: true,
  },
  emptySub: {
    fontSize: 12.5,
    lineHeight: 20,
    fontFamily: "Cairo_400Regular",
    textAlign: "center",
    includeFontPadding: true,
  },
  exploreBtn: {
    marginTop: 4,
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 12,
  },
  exploreBtnText: {
    color: "#FFFFFF",
    fontSize: 13,
    fontFamily: "Cairo_800ExtraBold",
    includeFontPadding: true,
  },
  removeBadge: {
    position: "absolute",
    bottom: 66,
    left: 6,
    width: 24,
    height: 24,
    borderRadius: 12,
    backgroundColor: "rgba(9,10,12,0.82)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.2)",
    alignItems: "center",
    justifyContent: "center",
  },
});
