import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useState, useEffect } from "react";
import {
  FlatList, Platform, Pressable,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";

/* ── Animation history type (from TMDB/animation section) ── */
interface AnimHistItem {
  tmdbId: string | number;
  type: "movie" | "tv";
  ep?: number;
  season?: number;
  title: string;
  poster?: string;
  date: string;
}

const TABS = [
  { label: "متابعة", icon: "play-circle" as const },
  { label: "المفضلة", icon: "heart" as const },
];

export default function LibraryScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const router = useRouter();
  const { watchHistory, favorites, removeFromHistory, toggleFavorite } = useApp();
  const [activeTab, setActiveTab] = useState(0);
  const [animHistory, setAnimHistory] = useState<AnimHistItem[]>([]);

  /* Load animation watch history from AsyncStorage */
  useEffect(() => {
    AsyncStorage.getItem("anim-watch-history").then(raw => {
      if (!raw) return;
      try {
        const parsed = JSON.parse(raw) as any[];
        setAnimHistory(parsed.map(x => ({
          tmdbId: x.tmdbId ?? x.id,
          type: x.type || "movie",
          ep: x.ep,
          season: x.season,
          title: x.title,
          poster: x.poster ?? x.cover,
          date: x.date || new Date().toISOString(),
        })));
      } catch {}
    });
  }, []);

  /* Combined watch history: anime + animation, sorted by date */
  const combined = React.useMemo(() => {
    const animeItems = watchHistory.map(h => ({
      key: `anime-${h.animeId}-${h.ep}`,
      kind: "anime" as const,
      title: h.english || h.title,
      subtitle: `حلقة ${h.ep}`,
      thumbnail: h.thumbnail,
      date: h.updatedAt,
      onPress: () => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}`),
      onDelete: () => removeFromHistory(h.animeId),
      position: h.position,
      duration: h.duration,
    }));
    const animItems = animHistory.map(h => ({
      key: `anim-${h.tmdbId}-${h.season || 0}-${h.ep || 0}`,
      kind: "animation" as const,
      title: h.title,
      subtitle: h.type === "tv"
        ? `الموسم ${h.season || 1} · الحلقة ${h.ep || 1}`
        : "فيلم",
      thumbnail: h.poster,
      date: new Date(h.date).getTime(),
      position: undefined as number | undefined,
      duration: undefined as number | undefined,
      onPress: () => {
        if (h.type === "movie") {
          router.push(`/animation/watch?id=${h.tmdbId}&type=movie&title=${encodeURIComponent(h.title)}` as any);
        } else {
          router.push(`/animation/watch?id=${h.tmdbId}&type=tv&season=${h.season || 1}&ep=${h.ep || 1}&title=${encodeURIComponent(h.title)}` as any);
        }
      },
      onDelete: undefined as (() => void) | undefined,
    }));
    return [...animeItems, ...animItems].sort((a, b) => (b.date as number) - (a.date as number));
  }, [watchHistory, animHistory, router, removeFromHistory]);

  const isEmpty = activeTab === 0 ? combined.length === 0 : favorites.length === 0;

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <Text style={[styles.title, { color: colors.text }]}>قائمتي</Text>
        {activeTab === 0 && combined.length > 0 && (
          <View style={styles.countBadge}>
            <Text style={[styles.countBadgeText, { color: colors.primary }]}>{combined.length}</Text>
          </View>
        )}
      </View>

      {/* Tabs */}
      <View style={[styles.tabRow, { backgroundColor: colors.card, borderColor: colors.border }]}>
        {TABS.map((tab, i) => (
          <Pressable
            key={tab.label}
            onPress={() => setActiveTab(i)}
            style={[styles.tabBtn, activeTab === i && { backgroundColor: colors.primary, borderRadius: 8 }]}
          >
            <Ionicons name={tab.icon} size={16} color={activeTab === i ? "#fff" : colors.mutedForeground} />
            <Text style={[styles.tabText, { color: activeTab === i ? "#fff" : colors.mutedForeground }]}>
              {tab.label}
            </Text>
          </Pressable>
        ))}
      </View>

      {isEmpty ? (
        <View style={styles.center}>
          <Ionicons
            name={activeTab === 0 ? "play-circle" : "heart"}
            size={64}
            color={colors.mutedForeground}
          />
          <Text style={[styles.emptyTitle, { color: colors.text }]}>
            {activeTab === 0 ? "لا توجد مشاهدات حديثة" : "لا توجد مفضلات"}
          </Text>
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>
            {activeTab === 0 ? "ابدأ المشاهدة وستظهر هنا" : "أضف أنمي للمفضلة وسيظهر هنا"}
          </Text>
          <Pressable
            onPress={() => router.push("/")}
            style={[styles.browseBtn, { backgroundColor: colors.primary }]}
          >
            <Text style={styles.browseBtnText}>استعرض الأنمي</Text>
          </Pressable>
        </View>
      ) : activeTab === 0 ? (
        <FlatList
          data={combined}
          keyExtractor={item => item.key}
          contentContainerStyle={[styles.list, { paddingBottom: insets.bottom + 100 }]}
          showsVerticalScrollIndicator={false}
          renderItem={({ item }) => (
            <Pressable
              onPress={item.onPress}
              style={[styles.historyItem, { backgroundColor: colors.card, borderColor: colors.border }]}
            >
              {/* Kind badge */}
              <View style={[
                styles.kindBadge,
                { backgroundColor: item.kind === "anime" ? "rgba(139,92,246,0.15)" : "rgba(59,130,246,0.15)" }
              ]}>
                <Ionicons
                  name={item.kind === "anime" ? "tv" : "film"}
                  size={9}
                  color={item.kind === "anime" ? "#c4b5fd" : "#93c5fd"}
                />
              </View>

              <View style={styles.historyImgWrap}>
                <Image
                  source={item.thumbnail ? { uri: item.thumbnail } : undefined}
                  style={[styles.historyImg, { backgroundColor: "#1C1C22" }]}
                  contentFit="cover"
                />
                <LinearGradient colors={["transparent", "rgba(0,0,0,0.6)"]} style={StyleSheet.absoluteFill} />
                <View style={styles.playIcon}>
                  <Ionicons name="play" size={18} color="#fff" />
                </View>
                {item.position != null && item.duration != null && item.duration > 0 && (
                  <View style={styles.progressBar}>
                    <View style={[styles.progressFill, {
                      width: `${Math.min((item.position! / item.duration!) * 100, 100)}%`,
                      backgroundColor: colors.primary,
                    }]} />
                  </View>
                )}
              </View>

              <View style={styles.historyInfo}>
                <Text style={[styles.historyTitle, { color: colors.text }]} numberOfLines={2}>
                  {item.title}
                </Text>
                <Text style={[styles.historyEp, { color: colors.primary }]}>{item.subtitle}</Text>
                <Text style={[styles.historyDate, { color: colors.mutedForeground }]}>
                  {new Date(item.date).toLocaleDateString("ar-SA")}
                </Text>
              </View>

              {item.onDelete && (
                <Pressable
                  onPress={item.onDelete}
                  style={styles.deleteBtn}
                >
                  <Ionicons name="trash" size={18} color={colors.mutedForeground} />
                </Pressable>
              )}
            </Pressable>
          )}
        />
      ) : (
        <FlatList
          data={favorites}
          keyExtractor={(item) => item.id.toString()}
          numColumns={3}
          contentContainerStyle={[styles.favGrid, { paddingBottom: insets.bottom + 100 }]}
          columnWrapperStyle={{ gap: 10 }}
          showsVerticalScrollIndicator={false}
          renderItem={({ item }) => (
            <Pressable
              onPress={() => router.push(`/anime/${item.id}?title=${encodeURIComponent(item.title)}&english=${encodeURIComponent(item.english)}`)}
              style={styles.favCard}
            >
              <Image source={item.thumbnail ? { uri: item.thumbnail } : undefined} style={[styles.favImg, { borderRadius: 10, backgroundColor: "#1C1C22" }]} contentFit="cover" />
              <Pressable
                onPress={() => toggleFavorite(item)}
                style={[styles.favRemove, { backgroundColor: "rgba(0,0,0,0.6)" }]}
              >
                <Ionicons name="heart" size={14} color={colors.primary} />
              </Pressable>
              <Text style={[styles.favTitle, { color: colors.text }]} numberOfLines={2}>
                {item.english || item.title}
              </Text>
            </Pressable>
          )}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { paddingHorizontal: 16, paddingBottom: 12, flexDirection: "row", alignItems: "center", gap: 8 },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold" },
  countBadge: { backgroundColor: "rgba(139,92,246,0.1)", borderRadius: 12, paddingHorizontal: 8, paddingVertical: 2 },
  countBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  tabRow: { flexDirection: "row", marginHorizontal: 16, borderRadius: 12, padding: 4, borderWidth: 1, marginBottom: 16, gap: 4 },
  tabBtn: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingVertical: 8, paddingHorizontal: 12 },
  tabText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyTitle: { fontSize: 18, fontFamily: "Cairo_700Bold" },
  emptyText: { fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "center", paddingHorizontal: 32 },
  browseBtn: { paddingHorizontal: 24, paddingVertical: 12, borderRadius: 12, marginTop: 8 },
  browseBtnText: { color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 14 },
  list: { paddingHorizontal: 16, gap: 12, paddingBottom: 100 },
  historyItem: { flexDirection: "row", borderRadius: 12, overflow: "hidden", borderWidth: 1, position: "relative" },
  kindBadge: {
    position: "absolute", top: 6, right: 6, zIndex: 1,
    width: 20, height: 20, borderRadius: 6,
    alignItems: "center", justifyContent: "center",
  },
  historyImgWrap: { width: 100, height: 80, position: "relative" },
  historyImg: { width: "100%", height: "100%" },
  playIcon: { position: "absolute", top: "50%", left: "50%", transform: [{ translateX: -10 }, { translateY: -10 }] },
  progressBar: { position: "absolute", bottom: 0, left: 0, right: 0, height: 3, backgroundColor: "rgba(255,255,255,0.2)" },
  progressFill: { height: 3 },
  historyInfo: { flex: 1, padding: 10, gap: 4 },
  historyTitle: { fontSize: 13, fontFamily: "Cairo_600SemiBold", lineHeight: 18 },
  historyEp: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  historyDate: { fontSize: 11, fontFamily: "Cairo_400Regular" },
  deleteBtn: { padding: 12 },
  favGrid: { paddingHorizontal: 16, paddingBottom: 100 },
  favCard: { flex: 1, gap: 6, position: "relative" },
  favImg: { width: "100%", aspectRatio: 0.7 },
  favRemove: { position: "absolute", top: 6, right: 6, borderRadius: 12, padding: 4 },
  favTitle: { fontSize: 11, fontFamily: "Cairo_600SemiBold", lineHeight: 15 },
});
