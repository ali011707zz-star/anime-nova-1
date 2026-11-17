import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  FlatList,
  Image,
  RefreshControl,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import {
  NOVA_FILM_CATALOG,
  loadFavoriteIds,
  loadWatchedMap,
  makeEpisodeKey,
  saveFavoriteIds,
  saveWatchedMap,
  type FilmTitle,
} from "@/utils/filmCatalog";

const TABS = [
  { id: "favorites", label: "المحفوظة", icon: "bookmark" },
  { id: "watched", label: "تمت المشاهدة", icon: "eye" },
  { id: "continue", label: "متابعة المشاهدة", icon: "play-circle" },
] as const;

export default function NovaFilmLibraryScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width } = useWindowDimensions();

  const [activeTab, setActiveTab] = useState<"favorites" | "watched" | "continue">("favorites");
  const [favoriteIds, setFavoriteIds] = useState<number[]>([]);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});
  const [search, setSearch] = useState("");
  const [refreshing, setRefreshing] = useState(false);

  const reloadData = useCallback(async () => {
    setRefreshing(true);
    try {
      const [favs, watched] = await Promise.all([loadFavoriteIds(), loadWatchedMap()]);
      setFavoriteIds(favs);
      setWatchedMap(watched);
    } finally {
      setRefreshing(false);
    }
  }, []);

  useEffect(() => {
    reloadData();
  }, [reloadData]);

  const cols = width >= 700 ? 4 : 2;
  const cardWidth = Math.floor((width - 28 - (cols - 1) * 10) / cols);
  const cardHeight = Math.round(cardWidth * 1.48);

  const q = search.trim().toLowerCase();

  const favoriteItems = useMemo(() => {
    return NOVA_FILM_CATALOG.filter((item) => {
      if (!favoriteIds.includes(item.id)) return false;
      if (q && !`${item.titleAr} ${item.titleEn}`.toLowerCase().includes(q)) return false;
      return true;
    });
  }, [favoriteIds, q]);

  const watchedEntries = useMemo(() => {
    const list: { title: FilmTitle; watchedCount: number; totalCount: number }[] = [];
    for (const item of NOVA_FILM_CATALOG) {
      if (q && !`${item.titleAr} ${item.titleEn}`.toLowerCase().includes(q)) continue;
      const watchedCount = item.episodes.filter(
        (ep) => watchedMap[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)]
      ).length;
      if (watchedCount > 0) {
        list.push({ title: item, watchedCount, totalCount: item.episodes.length });
      }
    }
    return list;
  }, [watchedMap, q]);

  const continueEntries = useMemo(() => {
    return watchedEntries.filter((e) => e.watchedCount > 0 && e.watchedCount < e.totalCount);
  }, [watchedEntries]);

  const removeFavorite = async (id: number) => {
    const next = favoriteIds.filter((x) => x !== id);
    setFavoriteIds(next);
    await saveFavoriteIds(next);
  };

  const clearWatchedForTitle = async (item: FilmTitle) => {
    const next = { ...watchedMap };
    for (const ep of item.episodes) {
      delete next[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)];
    }
    setWatchedMap(next);
    await saveWatchedMap(next);
  };

  const currentList =
    activeTab === "favorites"
      ? favoriteItems.map((t) => ({
          title: t,
          watchedCount: t.episodes.filter(
            (ep) => watchedMap[makeEpisodeKey(t.id, ep.seasonNumber, ep.episodeNumber)]
          ).length,
          totalCount: t.episodes.length,
        }))
      : activeTab === "watched"
      ? watchedEntries
      : continueEntries;

  return (
    <View style={[s.container, { backgroundColor: colors.background, paddingTop: insets.top + 8 }]}>
      <View style={s.header}>
        <View style={s.titleRow}>
          <TouchableOpacity onPress={reloadData} style={[s.refreshBtn, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <Ionicons name="refresh" size={18} color="#F59E0B" />
          </TouchableOpacity>
          <Text style={[s.headerTitle, { color: colors.text }]}>
            قائمتي في <Text style={{ color: "#F59E0B" }}>NOVA FILM</Text>
          </Text>
        </View>

        <View style={[s.searchBox, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Ionicons name="search" size={16} color={colors.textMuted} />
          <TextInput
            value={search}
            onChangeText={setSearch}
            placeholder="ابحث في قائمتك وسجل المشاهدة..."
            placeholderTextColor={colors.textMuted}
            style={[s.searchInput, { color: colors.text }]}
          />
        </View>

        <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={s.tabsRow}>
          {TABS.map((tab) => {
            const active = activeTab === tab.id;
            return (
              <TouchableOpacity
                key={tab.id}
                onPress={() => setActiveTab(tab.id)}
                style={[
                  s.tabPill,
                  {
                    backgroundColor: active ? "#F59E0B" : colors.card,
                    borderColor: active ? "#F59E0B" : colors.border,
                  },
                ]}
              >
                <Ionicons name={tab.icon as any} size={15} color={active ? "#090A0C" : "#F59E0B"} />
                <Text style={[s.tabPillText, { color: active ? "#090A0C" : colors.text }]}>
                  {tab.label}
                </Text>
              </TouchableOpacity>
            );
          })}
        </ScrollView>
      </View>

      <FlatList
        data={currentList}
        key={cols}
        numColumns={cols}
        keyExtractor={(item) => `${activeTab}-${item.title.id}`}
        refreshControl={<RefreshControl refreshing={refreshing} onRefresh={reloadData} tintColor="#F59E0B" />}
        contentContainerStyle={{ paddingHorizontal: 14, paddingBottom: 100, gap: 12 }}
        columnWrapperStyle={{ gap: 10, justifyContent: "flex-end" }}
        ListEmptyComponent={
          <View style={s.emptyBox}>
            <Ionicons
              name={activeTab === "favorites" ? "bookmark-outline" : "eye-outline"}
              size={48}
              color={colors.textMuted}
            />
            <Text style={[s.emptyTitle, { color: colors.text }]}>
              {activeTab === "favorites"
                ? "لا توجد أفلام أو مسلسلات محفوظة بعد"
                : activeTab === "watched"
                ? "لم تقم بتحديد أي حلقة أو فيلم كمشاهد بعد"
                : "لا توجد أعمال قيد المتابعة حالياً"}
            </Text>
            <Text style={[s.emptySub, { color: colors.textMuted }]}>
              اضغط على أيقونة الحفظ أو عين المشاهدة داخل صفحة أي فيلم أو مسلسل لتظهر هنا فوراً.
            </Text>
            <TouchableOpacity
              onPress={() => router.push("/(tabs)/browse" as any)}
              style={s.exploreBtn}
            >
              <Text style={s.exploreBtnText}>استكشف مكتبة NOVA FILM</Text>
            </TouchableOpacity>
          </View>
        }
        renderItem={({ item }) => {
          const t = item.title;
          const pct = item.totalCount > 0 ? Math.round((item.watchedCount / item.totalCount) * 100) : 0;
          return (
            <TouchableOpacity
              onPress={() => router.push({ pathname: "/film/[id]" as any, params: { id: String(t.id) } })}
              style={[
                s.card,
                {
                  width: cardWidth,
                  height: cardHeight,
                  backgroundColor: colors.card,
                  borderColor: colors.border,
                },
              ]}
            >
              <Image source={t.posterSource} style={s.cardImg} resizeMode="cover" />
              <LinearGradient
                colors={["rgba(0,0,0,0.2)", "transparent", "rgba(9,10,12,0.95)"]}
                style={StyleSheet.absoluteFill}
              />
              <View style={s.cardTop}>
                <TouchableOpacity
                  onPress={() =>
                    activeTab === "favorites" ? removeFavorite(t.id) : clearWatchedForTitle(t)
                  }
                  style={s.removeBtn}
                >
                  <Ionicons name="trash-outline" size={14} color="#F87171" />
                </TouchableOpacity>
                <View style={s.progressBadge}>
                  <Ionicons name="eye" size={11} color="#34D399" />
                  <Text style={s.progressBadgeText}>
                    {item.watchedCount}/{item.totalCount} ({pct}%)
                  </Text>
                </View>
              </View>
              <View style={s.cardBottom}>
                <Text style={s.cardTitle} numberOfLines={2}>
                  {t.titleAr}
                </Text>
                <Text style={s.cardSub} numberOfLines={1}>
                  {t.year} · {t.categoryLabel}
                </Text>
              </View>
            </TouchableOpacity>
          );
        }}
      />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 14, gap: 10, marginBottom: 10 },
  titleRow: { flexDirection: "row", alignItems: "center", justifyContent: "space-between" },
  headerTitle: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  refreshBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  searchBox: {
    flexDirection: "row-reverse",
    alignItems: "center",
    borderWidth: 1,
    borderRadius: 13,
    paddingHorizontal: 12,
    height: 42,
    gap: 8,
  },
  searchInput: { flex: 1, fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },
  tabsRow: { gap: 8, paddingVertical: 2 },
  tabPill: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 6,
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 14,
    paddingVertical: 8,
  },
  tabPillText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  emptyBox: { alignItems: "center", justifyContent: "center", paddingVertical: 64, paddingHorizontal: 24, gap: 10 },
  emptyTitle: { fontSize: 16, fontFamily: "Cairo_700Bold", textAlign: "center" },
  emptySub: { fontSize: 12, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20 },
  exploreBtn: {
    marginTop: 8,
    backgroundColor: "#F59E0B",
    paddingHorizontal: 18,
    paddingVertical: 10,
    borderRadius: 12,
  },
  exploreBtnText: { color: "#090A0C", fontSize: 13, fontFamily: "Cairo_800ExtraBold" },
  card: { borderRadius: 16, overflow: "hidden", borderWidth: 1, position: "relative" },
  cardImg: { width: "100%", height: "100%" },
  cardTop: {
    position: "absolute",
    top: 8,
    left: 8,
    right: 8,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
  },
  removeBtn: {
    width: 28,
    height: 28,
    borderRadius: 8,
    backgroundColor: "rgba(0,0,0,0.75)",
    alignItems: "center",
    justifyContent: "center",
  },
  progressBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 4,
    backgroundColor: "rgba(0,0,0,0.78)",
    paddingHorizontal: 7,
    paddingVertical: 3,
    borderRadius: 7,
  },
  progressBadgeText: { color: "#34D399", fontSize: 10, fontFamily: "Cairo_700Bold" },
  cardBottom: { position: "absolute", bottom: 8, left: 8, right: 8, alignItems: "flex-end", gap: 2 },
  cardTitle: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "right" },
  cardSub: { color: "#D4D4D8", fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "right" },
});
