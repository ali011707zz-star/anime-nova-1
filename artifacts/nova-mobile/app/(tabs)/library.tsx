import { Ionicons } from "@expo/vector-icons";
import { Image } from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useState, useEffect, useCallback, useMemo } from "react";
import {
  FlatList, Platform, Pressable, ScrollView,
  StyleSheet, Text, View, TextInput,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";

interface FavChar {
  id: number;
  name: string;
  image?: string;
  animeId?: number;
  animeTitle?: string;
}

const TABS = [
  { label: "متابعة",    icon: "play-circle-outline" as const, activeIcon: "play-circle" as const },
  { label: "السجل",     icon: "time-outline" as const,        activeIcon: "time" as const },
  { label: "المحفوظة",  icon: "bookmark-outline" as const,    activeIcon: "bookmark" as const },
  { label: "الشخصيات",  icon: "people-outline" as const,      activeIcon: "people" as const },
];

export default function LibraryScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, 0);
  const router = useRouter();
  const { watchHistory, favorites, removeFromHistory, toggleFavorite } = useApp();

  const [activeTab, setActiveTab] = useState(0);
  const [search, setSearch] = useState("");
  const [favChars, setFavChars] = useState<FavChar[]>([]);

  useEffect(() => {
    AsyncStorage.getItem("fav-characters").then(raw => {
      if (!raw) return;
      try { setFavChars(JSON.parse(raw)); } catch {}
    });
  }, []);

  const refreshChars = useCallback(() => {
    AsyncStorage.getItem("fav-characters").then(raw => {
      if (!raw) { setFavChars([]); return; }
      try { setFavChars(JSON.parse(raw)); } catch {}
    });
  }, []);

  /* ── History items with progress (متابعة) ── */
  const continueItems = useMemo(() => {
    const sq = search.toLowerCase();
    const animeItems = watchHistory
      .filter(h => (h.position ?? 0) > 30)
      .map(h => ({
        key: `anime-${h.animeId}-${h.ep}`,
        kind: "anime" as const,
        title: h.english || h.title,
        subtitle: `حلقة ${h.ep}`,
        thumbnail: h.thumbnail,
        date: h.updatedAt,
        position: h.position,
        duration: h.duration,
        onPress: () => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}`),
        onDelete: () => removeFromHistory(h.animeId),
      }));
    const all = animeItems.sort((a, b) => (b.date as number) - (a.date as number));
    return sq ? all.filter(i => i.title.toLowerCase().includes(sq)) : all;
  }, [watchHistory, search, router, removeFromHistory]);

  /* ── All history (السجل) ── */
  const historyItems = useMemo(() => {
    const sq = search.toLowerCase();
    const animeItems = watchHistory.map(h => ({
      key: `anime-${h.animeId}-${h.ep}`,
      kind: "anime" as const,
      title: h.english || h.title,
      subtitle: `حلقة ${h.ep}`,
      thumbnail: h.thumbnail,
      date: h.updatedAt,
      position: h.position,
      duration: h.duration,
      onPress: () => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}`),
      onDelete: () => removeFromHistory(h.animeId),
    }));
    const all = animeItems.sort((a, b) => (b.date as number) - (a.date as number));
    return sq ? all.filter(i => i.title.toLowerCase().includes(sq)) : all;
  }, [watchHistory, search, router, removeFromHistory]);

  /* ── Filtered favorites (المحفوظة) ── */
  const filteredFavs = useMemo(() => {
    const sq = search.toLowerCase();
    return sq
      ? favorites.filter(f => (f.english || f.title).toLowerCase().includes(sq))
      : favorites;
  }, [favorites, search]);

  /* ── Filtered characters (الشخصيات) ── */
  const filteredChars = useMemo(() => {
    const sq = search.toLowerCase();
    return sq ? favChars.filter(c => c.name.toLowerCase().includes(sq)) : favChars;
  }, [favChars, search]);

  const counts = [continueItems.length, historyItems.length, filteredFavs.length, filteredChars.length];

  /* ── Remove character ── */
  const removeChar = useCallback(async (id: number) => {
    const raw = await AsyncStorage.getItem("fav-characters");
    let arr: FavChar[] = [];
    if (raw) {
      try { arr = JSON.parse(raw) as FavChar[]; } catch { arr = []; }
    }
    const updated = arr.filter(c => c.id !== id);
    await AsyncStorage.setItem("fav-characters", JSON.stringify(updated));
    setFavChars(updated);
  }, []);

  /* ── Refresh chars when tab activated ── */
  const handleTabPress = useCallback((i: number) => {
    setActiveTab(i);
    if (i === 3) refreshChars();
  }, [refreshChars]);

  /* ── Common history row renderer ── */
  const renderHistoryItem = useCallback(({ item }: { item: typeof historyItems[0] }) => (
    <Pressable
      onPress={item.onPress}
      style={[s.historyItem, { backgroundColor: colors.card, borderColor: colors.border }]}
    >
      <View style={[
        s.kindBadge,
        { backgroundColor: item.kind === "anime" ? "rgba(139,92,246,0.18)" : "rgba(59,130,246,0.18)" }
      ]}>
        <Ionicons
          name={item.kind === "anime" ? "tv" : "film"}
          size={9}
          color={item.kind === "anime" ? "#c4b5fd" : "#93c5fd"}
        />
      </View>
      <View style={s.historyImgWrap}>
        <Image
          source={item.thumbnail ? { uri: item.thumbnail } : undefined}
          style={[s.historyImg, { backgroundColor: "#1C1C22" }]}
          resizeMode="cover"
        />
        <LinearGradient colors={["transparent", "rgba(0,0,0,0.55)"]} style={StyleSheet.absoluteFill} />
        <View style={s.playOverlay}>
          <Ionicons name="play" size={17} color="#fff" />
        </View>
        {item.position != null && item.duration != null && item.duration > 0 && (
          <View style={s.progressBar}>
            <View style={[s.progressFill, {
              width: `${Math.min((item.position! / item.duration!) * 100, 100)}%`,
              backgroundColor: colors.primary,
            }]} />
          </View>
        )}
      </View>
      <View style={s.historyInfo}>
        <Text style={[s.historyTitle, { color: colors.text }]} numberOfLines={2}>{item.title}</Text>
        <Text style={[s.historyEp, { color: colors.primary }]}>{item.subtitle}</Text>
        <Text style={[s.historyDate, { color: colors.mutedForeground }]}>
          {new Date(item.date).toLocaleDateString("ar-SA")}
        </Text>
      </View>
      {item.onDelete && (
        <Pressable onPress={item.onDelete} style={s.deleteBtn} hitSlop={8}>
          <Ionicons name="trash-outline" size={17} color={colors.mutedForeground} />
        </Pressable>
      )}
    </Pressable>
  ), [colors]);

  const emptyIcon = ["play-circle-outline", "time-outline", "bookmark-outline", "people-outline"] as const;
  const emptyTitle = ["لا توجد مشاهدات قيد المتابعة", "السجل فارغ", "لا توجد مفضلات", "لا توجد شخصيات محفوظة"];
  const emptyDesc = [
    "شاهد أنمي وسيظهر هنا عند التقدم في المشاهدة",
    "ابدأ المشاهدة وسيُسجَّل هنا تاريخك",
    "اضغط على ❤️ في صفحة أي أنمي لحفظه",
    "اضغط لفترة على أي شخصية في صفحة الأنمي لحفظها",
  ];

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>

      {/* ── Header ── */}
      <View style={[s.header, { paddingTop: topPad + 14 }]}>
        <Text style={[s.title, { color: colors.text }]}>قائمتي</Text>
        {counts[activeTab] > 0 && (
          <View style={[s.countBadge, { backgroundColor: colors.primary + "20" }]}>
            <Text style={[s.countText, { color: colors.primary }]}>{counts[activeTab]}</Text>
          </View>
        )}
      </View>

      {/* ── Tabs ── */}
      <ScrollView
        horizontal
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={s.tabsRow}
        style={s.tabsScroll}
      >
        {TABS.map((tab, i) => {
          const active = activeTab === i;
          return (
            <Pressable
              key={tab.label}
              onPress={() => handleTabPress(i)}
              style={[
                s.tabBtn,
                { backgroundColor: active ? colors.primary : colors.card, borderColor: active ? colors.primary : colors.border },
              ]}
            >
              <Ionicons
                name={active ? tab.activeIcon : tab.icon}
                size={14}
                color={active ? "#fff" : colors.mutedForeground}
              />
              <Text style={[s.tabText, { color: active ? "#fff" : colors.mutedForeground }]}>
                {tab.label}
              </Text>
              {counts[i] > 0 && (
                <View style={[s.tabBadge, { backgroundColor: active ? "rgba(255,255,255,0.25)" : colors.primary + "30" }]}>
                  <Text style={[s.tabBadgeText, { color: active ? "#fff" : colors.primary }]}>{counts[i]}</Text>
                </View>
              )}
            </Pressable>
          );
        })}
      </ScrollView>

      {/* ── Search ── */}
      <View style={[s.searchWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
        <Ionicons name="search-outline" size={16} color={colors.mutedForeground} />
        <TextInput
          value={search}
          onChangeText={setSearch}
          placeholder="ابحث في قائمتك..."
          placeholderTextColor={colors.mutedForeground}
          style={[s.searchInput, { color: colors.text }]}
        />
        {search.length > 0 && (
          <Pressable onPress={() => setSearch("")} hitSlop={8}>
            <Ionicons name="close-circle" size={16} color={colors.mutedForeground} />
          </Pressable>
        )}
      </View>

      {/* ── Tab 0: متابعة ── */}
      {activeTab === 0 && (
        continueItems.length === 0 ? (
          <EmptyState icon={emptyIcon[0]} title={emptyTitle[0]} desc={emptyDesc[0]} onBrowse={() => router.push("/")} colors={colors} />
        ) : (
          <FlatList
            data={continueItems}
            keyExtractor={i => i.key}
            renderItem={renderHistoryItem}
            contentContainerStyle={[s.list, { paddingBottom: insets.bottom + 100 }]}
            showsVerticalScrollIndicator={false}
          />
        )
      )}

      {/* ── Tab 1: السجل ── */}
      {activeTab === 1 && (
        historyItems.length === 0 ? (
          <EmptyState icon={emptyIcon[1]} title={emptyTitle[1]} desc={emptyDesc[1]} onBrowse={() => router.push("/")} colors={colors} />
        ) : (
          <FlatList
            data={historyItems}
            keyExtractor={i => i.key}
            renderItem={renderHistoryItem}
            contentContainerStyle={[s.list, { paddingBottom: insets.bottom + 100 }]}
            showsVerticalScrollIndicator={false}
          />
        )
      )}

      {/* ── Tab 2: المحفوظة ── */}
      {activeTab === 2 && (
        filteredFavs.length === 0 ? (
          <EmptyState icon={emptyIcon[2]} title={emptyTitle[2]} desc={emptyDesc[2]} onBrowse={() => router.push("/")} colors={colors} />
        ) : (
          <FlatList
            data={filteredFavs}
            keyExtractor={f => f.id.toString()}
            numColumns={4}
            columnWrapperStyle={{ gap: 8 }}
            contentContainerStyle={[s.favGrid, { paddingBottom: insets.bottom + 100 }]}
            showsVerticalScrollIndicator={false}
            renderItem={({ item }) => (
              <Pressable
                onPress={() => router.push(`/anime/${item.id}?title=${encodeURIComponent(item.title)}&english=${encodeURIComponent(item.english)}`)}
                style={s.favCard}
              >
                <Image
                  source={item.thumbnail ? { uri: item.thumbnail } : undefined}
                  style={[s.favImg, { backgroundColor: "#1C1C22" }]}
                  resizeMode="cover"
                />
                <Pressable
                  onPress={() => toggleFavorite(item)}
                  style={s.favHeart}
                >
                  <Ionicons name="heart" size={13} color="#f43f5e" />
                </Pressable>
                <View style={s.favInfo}>
                  <Text style={[s.favTitle, { color: colors.text }]} numberOfLines={2}>
                    {item.english || item.title}
                  </Text>
                  {item.score && (
                    <View style={s.favScore}>
                      <Ionicons name="star" size={9} color="#FBBF24" />
                      <Text style={[s.favScoreText, { color: colors.mutedForeground }]}>
                        {(item.score / 10).toFixed(1)}
                      </Text>
                    </View>
                  )}
                </View>
              </Pressable>
            )}
          />
        )
      )}

      {/* ── Tab 3: الشخصيات ── */}
      {activeTab === 3 && (
        filteredChars.length === 0 ? (
          <EmptyState icon={emptyIcon[3]} title={emptyTitle[3]} desc={emptyDesc[3]} onBrowse={() => router.push("/")} colors={colors} />
        ) : (
          <FlatList
            data={filteredChars}
            keyExtractor={c => c.id.toString()}
            numColumns={4}
            columnWrapperStyle={{ gap: 10 }}
            contentContainerStyle={[s.charGrid, { paddingBottom: insets.bottom + 100 }]}
            showsVerticalScrollIndicator={false}
            renderItem={({ item }) => (
              <View style={s.charCard}>
                <Image
                  source={item.image ? { uri: item.image } : undefined}
                  style={[s.charImg, { backgroundColor: "#1C1C22" }]}
                  resizeMode="cover"
                />
                <Pressable
                  onPress={() => removeChar(item.id)}
                  style={s.charHeart}
                >
                  <Ionicons name="heart" size={11} color="#f43f5e" />
                </Pressable>
                <Text style={[s.charName, { color: colors.text }]} numberOfLines={2}>{item.name}</Text>
                {item.animeTitle && (
                  <Text style={[s.charAnime, { color: colors.mutedForeground }]} numberOfLines={1}>
                    {item.animeTitle}
                  </Text>
                )}
              </View>
            )}
          />
        )
      )}
    </View>
  );
}

function EmptyState({ icon, title, desc, onBrowse, colors }: {
  icon: string; title: string; desc: string; onBrowse: () => void; colors: any;
}) {
  return (
    <View style={s.empty}>
      <View style={[s.emptyIconWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
        <Ionicons name={icon as any} size={38} color={colors.mutedForeground} />
      </View>
      <Text style={[s.emptyTitle, { color: colors.text }]}>{title}</Text>
      <Text style={[s.emptyDesc, { color: colors.mutedForeground }]}>{desc}</Text>
      <Pressable onPress={onBrowse} style={[s.browseBtn, { backgroundColor: colors.primary }]}>
        <Ionicons name="compass-outline" size={16} color="#fff" />
        <Text style={s.browseBtnText}>استعرض الأنمي</Text>
      </Pressable>
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 16, paddingBottom: 0, flexDirection: "row", alignItems: "center", gap: 8 },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold" },
  countBadge: { borderRadius: 12, paddingHorizontal: 8, paddingVertical: 2 },
  countText: { fontSize: 11, fontFamily: "Cairo_700Bold" },

  tabsScroll: { flexGrow: 0, flexShrink: 0 },
  tabsRow: { paddingHorizontal: 16, gap: 8, paddingTop: 8, paddingBottom: 8, alignItems: "center" },
  tabBtn: {
    flexDirection: "row", alignItems: "center", gap: 5,
    paddingHorizontal: 13, paddingVertical: 8,
    borderRadius: 20, borderWidth: 1,
  },
  tabText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  tabBadge: { paddingHorizontal: 5, paddingVertical: 1, borderRadius: 8 },
  tabBadgeText: { fontSize: 9, fontFamily: "Cairo_700Bold" },

  searchWrap: {
    flexDirection: "row", alignItems: "center", gap: 8,
    marginHorizontal: 16, marginBottom: 8,
    paddingHorizontal: 12, paddingVertical: 9,
    borderRadius: 12, borderWidth: 1,
  },
  searchInput: { flex: 1, fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "right" },

  list: { paddingHorizontal: 16, gap: 10 },
  historyItem: { flexDirection: "row", borderRadius: 12, overflow: "hidden", borderWidth: 1, position: "relative" },
  kindBadge: {
    position: "absolute", top: 6, right: 6, zIndex: 2,
    width: 20, height: 20, borderRadius: 6,
    alignItems: "center", justifyContent: "center",
  },
  historyImgWrap: { width: 100, height: 78, position: "relative" },
  historyImg: { width: "100%", height: "100%" },
  playOverlay: {
    position: "absolute", top: "50%", left: "50%",
    transform: [{ translateX: -9 }, { translateY: -9 }],
  },
  progressBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3, backgroundColor: "rgba(255,255,255,0.18)" },
  progressFill: { height: 3 },
  historyInfo: { flex: 1, padding: 10, gap: 3 },
  historyTitle: { fontSize: 13, fontFamily: "Cairo_600SemiBold", lineHeight: 18 },
  historyEp: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  historyDate: { fontSize: 10, fontFamily: "Cairo_400Regular" },
  deleteBtn: { padding: 14 },

  favGrid: { paddingHorizontal: 16, paddingTop: 4, gap: 12 },
  favCard: { flex: 1, gap: 6, position: "relative" },
  favImg: { width: "100%", aspectRatio: 0.68, borderRadius: 10 },
  favHeart: { position: "absolute", top: 6, right: 6, backgroundColor: "rgba(0,0,0,0.6)", borderRadius: 10, padding: 4 },
  favInfo: { gap: 2 },
  favTitle: { fontSize: 10, fontFamily: "Cairo_600SemiBold", lineHeight: 14 },
  favScore: { flexDirection: "row", alignItems: "center", gap: 2 },
  favScoreText: { fontSize: 9, fontFamily: "Cairo_400Regular" },

  charGrid: { paddingHorizontal: 16, paddingTop: 4, gap: 14 },
  charCard: { flex: 1, alignItems: "center", gap: 4, position: "relative" },
  charImg: { width: "100%", aspectRatio: 0.75, borderRadius: 10 },
  charHeart: { position: "absolute", top: 5, right: 5, backgroundColor: "rgba(0,0,0,0.65)", borderRadius: 9, padding: 3 },
  charName: { fontSize: 10, fontFamily: "Cairo_600SemiBold", textAlign: "center", lineHeight: 13 },
  charAnime: { fontSize: 8, fontFamily: "Cairo_400Regular", textAlign: "center" },

  empty: { alignItems: "center", gap: 14, paddingHorizontal: 32, paddingTop: 16 },
  emptyIconWrap: { width: 80, height: 80, borderRadius: 40, borderWidth: 1, alignItems: "center", justifyContent: "center" },
  emptyTitle: { fontSize: 17, fontFamily: "Cairo_700Bold", textAlign: "center" },
  emptyDesc: { fontSize: 12, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 20 },
  browseBtn: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 22, paddingVertical: 11, borderRadius: 12, marginTop: 4 },
  browseBtnText: { color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 13 },
});
