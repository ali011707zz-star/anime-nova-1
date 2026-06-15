import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useState } from "react";
import {
  FlatList, Platform, Pressable,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";

const TABS = [
  { label: "متابعة", icon: "play-circle-outline" as const },
  { label: "المفضلة", icon: "heart-outline" as const },
];

export default function LibraryScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const router = useRouter();
  const { watchHistory, favorites, removeFromHistory, toggleFavorite } = useApp();
  const [activeTab, setActiveTab] = useState(0);

  const isEmpty = activeTab === 0 ? watchHistory.length === 0 : favorites.length === 0;

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 12 }]}>
        <Text style={[styles.title, { color: colors.text }]}>قائمتي</Text>
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
            name={activeTab === 0 ? "play-circle-outline" : "heart-outline"}
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
          data={watchHistory}
          keyExtractor={(item) => `${item.animeId}-${item.ep}`}
          contentContainerStyle={styles.list}
          showsVerticalScrollIndicator={false}
          renderItem={({ item }) => (
            <Pressable
              onPress={() => router.push(`/watch?anime=${item.animeId}&ep=${item.ep}&title=${encodeURIComponent(item.title)}&english=${encodeURIComponent(item.english)}`)}
              style={[styles.historyItem, { backgroundColor: colors.card, borderColor: colors.border }]}
            >
              <View style={styles.historyImgWrap}>
                <Image source={{ uri: item.thumbnail }} style={styles.historyImg} contentFit="cover" />
                <LinearGradient colors={["transparent", "rgba(0,0,0,0.6)"]} style={StyleSheet.absoluteFill} />
                <View style={styles.playIcon}>
                  <Ionicons name="play" size={20} color="#fff" />
                </View>
                {item.position && item.duration && (
                  <View style={styles.progressBar}>
                    <View style={[styles.progressFill, { width: `${Math.min((item.position / item.duration) * 100, 100)}%`, backgroundColor: colors.primary }]} />
                  </View>
                )}
              </View>
              <View style={styles.historyInfo}>
                <Text style={[styles.historyTitle, { color: colors.text }]} numberOfLines={2}>
                  {item.english || item.title}
                </Text>
                <Text style={[styles.historyEp, { color: colors.primary }]}>حلقة {item.ep}</Text>
                <Text style={[styles.historyDate, { color: colors.mutedForeground }]}>
                  {new Date(item.updatedAt).toLocaleDateString("ar-SA")}
                </Text>
              </View>
              <Pressable
                onPress={() => removeFromHistory(item.animeId)}
                style={styles.deleteBtn}
              >
                <Ionicons name="trash-outline" size={18} color={colors.mutedForeground} />
              </Pressable>
            </Pressable>
          )}
        />
      ) : (
        <FlatList
          data={favorites}
          keyExtractor={(item) => item.id.toString()}
          numColumns={3}
          contentContainerStyle={styles.favGrid}
          columnWrapperStyle={{ gap: 10 }}
          showsVerticalScrollIndicator={false}
          renderItem={({ item }) => (
            <Pressable
              onPress={() => router.push(`/anime/${item.id}?title=${encodeURIComponent(item.title)}&english=${encodeURIComponent(item.english)}`)}
              style={styles.favCard}
            >
              <Image source={{ uri: item.thumbnail }} style={[styles.favImg, { borderRadius: 10 }]} contentFit="cover" />
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
  header: { paddingHorizontal: 16, paddingBottom: 12 },
  title: { fontSize: 24, fontFamily: "Cairo_800ExtraBold" },
  tabRow: { flexDirection: "row", marginHorizontal: 16, borderRadius: 12, padding: 4, borderWidth: 1, marginBottom: 16, gap: 4 },
  tabBtn: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingVertical: 8, paddingHorizontal: 12 },
  tabText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  emptyTitle: { fontSize: 18, fontFamily: "Cairo_700Bold" },
  emptyText: { fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "center", paddingHorizontal: 32 },
  browseBtn: { paddingHorizontal: 24, paddingVertical: 12, borderRadius: 12, marginTop: 8 },
  browseBtnText: { color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 14 },
  list: { paddingHorizontal: 16, gap: 12, paddingBottom: 100 },
  historyItem: { flexDirection: "row", borderRadius: 12, overflow: "hidden", borderWidth: 1 },
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
