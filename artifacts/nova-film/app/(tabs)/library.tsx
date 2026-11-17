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
  loadAllPlaybackProgress,
  loadFavoriteFilms,
  loadWatchedMap,
  removeFavoriteFilm,
  removeFilmPlaybackProgress,
  type FilmPlaybackRecord,
  type FilmSummary,
} from "@/utils/filmCatalog";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const ALIGN_RIGHT = I18nManager.isRTL ? "flex-start" : "flex-end";

type LibraryTab = "favorites" | "history" | "watched";

export default function NovaFilmLibraryScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { width } = useWindowDimensions();

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [tab, setTab] = useState<LibraryTab>("favorites");
  const [query, setQuery] = useState("");
  const [favTitles, setFavTitles] = useState<FilmSummary[]>([]);
  const [playbackHistory, setPlaybackHistory] = useState<FilmPlaybackRecord[]>([]);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  const loadData = useCallback(async () => {
    const [favs, hist, watched] = await Promise.all([
      loadFavoriteFilms(),
      loadAllPlaybackProgress(),
      loadWatchedMap(),
    ]);
    setFavTitles(favs);
    setPlaybackHistory(hist);
    setWatchedMap(watched);
  }, []);

  useFocusEffect(
    useCallback(() => {
      void loadData();
    }, [loadData]),
  );

  const historyTitles = useMemo(() => {
    const seen = new Set<string>();
    const out: FilmSummary[] = [];
    for (const rec of playbackHistory) {
      if (!rec.titleSnapshot) continue;
      const k = `${rec.tmdbType}:${rec.titleId}`;
      if (seen.has(k)) continue;
      seen.add(k);
      out.push(rec.titleSnapshot);
    }
    return out;
  }, [playbackHistory]);

  const watchedTitles = useMemo(() => {
    const pool = [...favTitles, ...historyTitles];
    const seen = new Set<string>();
    const out: FilmSummary[] = [];
    for (const item of pool) {
      const k = `${item.tmdbType}:${item.id}`;
      if (seen.has(k)) continue;
      const hasWatchedEp = Object.keys(watchedMap).some((wk) =>
        wk.startsWith(`${item.tmdbType}:${item.id}:`) && watchedMap[wk],
      );
      if (hasWatchedEp) {
        seen.add(k);
        out.push(item);
      }
    }
    return out;
  }, [favTitles, historyTitles, watchedMap]);

  const activeList = useMemo(() => {
    const raw =
      tab === "favorites" ? favTitles : tab === "history" ? historyTitles : watchedTitles;
    const q = query.trim().toLowerCase();
    if (!q) return raw;
    return raw.filter((item) =>
      `${item.titleAr} ${item.titleEn}`.toLowerCase().includes(q),
    );
  }, [tab, favTitles, historyTitles, watchedTitles, query]);

  const removeItem = async (item: FilmSummary) => {
    if (tab === "favorites") {
      const next = await removeFavoriteFilm(item.id, item.tmdbType);
      setFavTitles(next);
    } else if (tab === "history") {
      await removeFilmPlaybackProgress(item.id, item.tmdbType);
      setPlaybackHistory((prev) =>
        prev.filter((r) => !(r.titleId === item.id && r.tmdbType === item.tmdbType)),
      );
    }
  };

  const cols = getFilmGridColumnCount(width);
  const gap = 10;
  const cardWidth = Math.floor((width - 28 - (cols - 1) * gap) / cols);
  const topPad = Platform.OS === "web" ? 12 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* Physical RIGHT: Refresh + Title ("قائمتي"), Physical LEFT: Menu */}
      <View
        style={[
          s.topHeader,
          {
            paddingTop: topPad + 4,
            borderBottomColor: colors.border,
          },
        ]}
      >
        <View style={s.headerRightGroup}>
          <Pressable
            onPress={() => void loadData()}
            accessibilityLabel="تحديث"
            style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
          >
            <Ionicons name="refresh" size={18} color={colors.textPrimary} />
          </Pressable>
          <View style={s.headerTitleWrap}>
            <Text style={[s.headerTitle, { color: colors.textPrimary }]}>قائمتي</Text>
          </View>
        </View>

        <Pressable
          accessibilityLabel="فتح القائمة"
          onPress={() => setDrawerVisible(true)}
          style={[s.iconBtn, { backgroundColor: colors.surface, borderColor: colors.border }]}
        >
          <Ionicons name="menu" size={20} color={colors.textPrimary} />
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
              onPress={() => setTab(item.id as LibraryTab)}
              style={s.tabBtn}
            >
              <Text
                style={[
                  s.tabText,
                  { color: active ? "#0EA5E9" : colors.textMuted },
                ]}
              >
                {item.label}
              </Text>
              {active ? <View style={s.tabIndicator} /> : null}
            </Pressable>
          );
        })}
      </View>

      {/* Search */}
      <View style={s.searchWrap}>
        <View style={[s.searchBox, { backgroundColor: colors.input, borderColor: colors.border }]}>
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
        key={`lib-${cols}-${tab}`}
        data={activeList}
        numColumns={cols}
        keyExtractor={(item) => `${tab}-${item.tmdbType}-${item.id}`}
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 98, gap: 14 }}
        columnWrapperStyle={{ gap }}
        ListEmptyComponent={
          <View style={s.emptyBox}>
            <Ionicons
              name={tab === "favorites" ? "heart-outline" : "time-outline"}
              size={44}
              color={colors.textMuted}
            />
            <Text style={[s.emptyTitle, { color: colors.textPrimary }]}>
              {tab === "favorites"
                ? "لا توجد أعمال مضافة إلى المفضلة بعد"
                : tab === "history"
                  ? "سجل المشاهدة فارغ حالياً"
                  : "لم تسجّل حلقات مكتملة بعد"}
            </Text>
            <Pressable
              onPress={() => router.push("/(tabs)/browse" as any)}
              style={s.exploreBtn}
            >
              <Text style={s.exploreBtnText}>تصفح مكتبة NOVA FILM</Text>
            </Pressable>
          </View>
        }
        renderItem={({ item }) => (
          <View style={{ position: "relative" }}>
            <FilmPosterCard item={item} cardWidth={cardWidth} tvFocusable={false} />
            {tab !== "watched" ? (
              <Pressable
                onPress={() => void removeItem(item)}
                style={s.removeBadge}
                hitSlop={6}
              >
                <Ionicons name="close" size={13} color="#FFFFFF" />
              </Pressable>
            ) : null}
          </View>
        )}
      />

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  topHeader: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    borderBottomWidth: StyleSheet.hairlineWidth,
    gap: 10,
  },
  headerRightGroup: {
    flex: 1,
    minWidth: 0,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 10,
  },
  headerTitleWrap: {
    flex: 1,
    minWidth: 0,
    alignItems: ALIGN_RIGHT,
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
    textAlign: "right",
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
    paddingVertical: 76,
    gap: 12,
  },
  emptyTitle: {
    fontSize: 14.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
  },
  exploreBtn: {
    backgroundColor: "#0EA5E9",
    paddingHorizontal: 22,
    paddingVertical: 11,
    borderRadius: 13,
    marginTop: 4,
  },
  exploreBtnText: {
    color: "#FFFFFF",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  removeBadge: {
    position: "absolute",
    top: 6,
    left: 6,
    width: 24,
    height: 24,
    borderRadius: 12,
    backgroundColor: "rgba(239,68,68,0.9)",
    alignItems: "center",
    justifyContent: "center",
  },
});
