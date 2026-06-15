import { useQuery } from "@tanstack/react-query";
import { Ionicons } from "@expo/vector-icons";
import { Image } from "expo-image";
import { useLocalSearchParams, useRouter } from "expo-router";
import React, { useState } from "react";
import {
  ActivityIndicator, FlatList, Platform,
  Pressable, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { AnilistMedia, anilistQuery, DETAIL_QUERY } from "@/utils/anilist";
import { useApp } from "@/context/AppContext";

export default function EpisodeListScreen() {
  const { id, title: titleParam, english: englishParam } = useLocalSearchParams<{
    id: string; title: string; english: string;
  }>();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();
  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const [ascending, setAscending] = useState(true);

  const { data, isLoading } = useQuery({
    queryKey: ["anime", id],
    queryFn: () => anilistQuery<{ Media: AnilistMedia }>(DETAIL_QUERY, { id: parseInt(id) }),
    enabled: !!id,
  });

  const anime = data?.Media;
  const episodeCount = anime?.episodes || 0;
  const title = anime?.title.english || anime?.title.romaji || decodeURIComponent(titleParam || "");
  const titleRomaji = anime?.title.romaji || decodeURIComponent(titleParam || "");
  const titleEnglish = anime?.title.english || decodeURIComponent(englishParam || "");
  const coverImg = anime?.coverImage.large || "";

  const episodes = Array.from({ length: episodeCount }, (_, i) => i + 1);
  const sortedEpisodes = ascending ? episodes : [...episodes].reverse();

  const getEpProgress = (ep: number) => {
    return watchHistory.find((h) => h.animeId === parseInt(id) && h.ep === ep);
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[styles.header, { paddingTop: topPad + 8 }]}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="arrow-back" size={22} color={colors.text} />
        </Pressable>
        <View style={styles.headerInfo}>
          {coverImg ? (
            <Image source={{ uri: coverImg }} style={styles.headerImg} contentFit="cover" />
          ) : null}
          <View style={styles.headerText}>
            <Text style={[styles.headerTitle, { color: colors.text }]} numberOfLines={1}>{title}</Text>
            <Text style={[styles.headerEpCount, { color: colors.mutedForeground }]}>
              {episodeCount > 0 ? `${episodeCount} حلقة` : "جاري العرض"}
            </Text>
          </View>
        </View>
        <Pressable
          onPress={() => setAscending(!ascending)}
          style={[styles.sortBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
        >
          <Ionicons name={ascending ? "arrow-up" : "arrow-down"} size={16} color={colors.mutedForeground} />
        </Pressable>
      </View>

      {isLoading ? (
        <View style={styles.center}>
          <ActivityIndicator color={colors.primary} size="large" />
        </View>
      ) : episodeCount === 0 ? (
        <View style={styles.center}>
          <Ionicons name="film-outline" size={64} color={colors.mutedForeground} />
          <Text style={[styles.emptyText, { color: colors.mutedForeground }]}>لا تتوفر حلقات</Text>
          <Pressable
            onPress={() => router.push(`/watch?anime=${id}&ep=1&title=${encodeURIComponent(titleRomaji)}&english=${encodeURIComponent(titleEnglish)}`)}
            style={[styles.watchBtn, { backgroundColor: colors.primary }]}
          >
            <Ionicons name="play" size={16} color="#fff" />
            <Text style={styles.watchBtnText}>مشاهدة الحلقة 1</Text>
          </Pressable>
        </View>
      ) : (
        <FlatList
          data={sortedEpisodes}
          keyExtractor={(item) => item.toString()}
          numColumns={5}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={styles.row}
          showsVerticalScrollIndicator={false}
          ListHeaderComponent={
            episodeCount > 0 ? (
              <Pressable
                onPress={() => router.push(`/watch?anime=${id}&ep=1&title=${encodeURIComponent(titleRomaji)}&english=${encodeURIComponent(titleEnglish)}`)}
                style={[styles.watchAllBtn, { backgroundColor: colors.primary + "15", borderColor: colors.primary }]}
              >
                <Ionicons name="play" size={16} color={colors.primary} />
                <Text style={[styles.watchAllText, { color: colors.primary }]}>مشاهدة من البداية</Text>
              </Pressable>
            ) : null
          }
          renderItem={({ item: ep }) => {
            const progress = getEpProgress(ep);
            const isWatched = progress && progress.position && progress.duration
              ? progress.position / progress.duration > 0.9
              : !!progress;
            const isPartial = progress && !isWatched;

            return (
              <Pressable
                onPress={() => router.push(`/watch?anime=${id}&ep=${ep}&title=${encodeURIComponent(titleRomaji)}&english=${encodeURIComponent(titleEnglish)}`)}
                style={({ pressed }) => [
                  styles.epBtn,
                  {
                    backgroundColor: isWatched
                      ? colors.primary + "20"
                      : isPartial
                      ? colors.card
                      : colors.card,
                    borderColor: isWatched
                      ? colors.primary
                      : isPartial
                      ? colors.primary + "50"
                      : colors.border,
                    opacity: pressed ? 0.7 : 1,
                  },
                ]}
              >
                {isWatched ? (
                  <Ionicons name="checkmark" size={12} color={colors.primary} />
                ) : isPartial ? (
                  <Ionicons name="time-outline" size={12} color={colors.primary} />
                ) : null}
                <Text
                  style={[
                    styles.epNum,
                    { color: isWatched || isPartial ? colors.primary : colors.text },
                  ]}
                >
                  {ep}
                </Text>
              </Pressable>
            );
          }}
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: {
    flexDirection: "row", alignItems: "center", paddingHorizontal: 12,
    paddingBottom: 12, gap: 10,
  },
  backBtn: { padding: 4 },
  headerInfo: { flex: 1, flexDirection: "row", alignItems: "center", gap: 10 },
  headerImg: { width: 36, height: 50, borderRadius: 6 },
  headerText: { flex: 1 },
  headerTitle: { fontSize: 14, fontFamily: "Cairo_700Bold", lineHeight: 20 },
  headerEpCount: { fontSize: 12, fontFamily: "Cairo_400Regular" },
  sortBtn: { padding: 8, borderRadius: 8, borderWidth: 1 },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 16 },
  emptyText: { fontSize: 16, fontFamily: "Cairo_600SemiBold" },
  watchBtn: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 20, paddingVertical: 12, borderRadius: 12 },
  watchBtnText: { color: "#fff", fontFamily: "Cairo_700Bold", fontSize: 14 },
  grid: { paddingHorizontal: 12, paddingBottom: 100 },
  row: { gap: 8, marginBottom: 8 },
  watchAllBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 12, borderRadius: 10, borderWidth: 1, marginBottom: 12 },
  watchAllText: { fontFamily: "Cairo_700Bold", fontSize: 14 },
  epBtn: {
    flex: 1, aspectRatio: 1, borderRadius: 10, borderWidth: 1,
    alignItems: "center", justifyContent: "center", gap: 2,
    minWidth: 0,
  },
  epNum: { fontSize: 13, fontFamily: "Cairo_700Bold" },
});
