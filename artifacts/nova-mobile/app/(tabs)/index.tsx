import { useQuery } from "@tanstack/react-query";
import { useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import { Image } from "expo-image";
import { Ionicons } from "@expo/vector-icons";
import React from "react";
import {
  Platform, Pressable, RefreshControl, ScrollView,
  StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { AnnouncementBanner } from "@/components/AnnouncementBanner";
import { HeroSection } from "@/components/HeroSection";
import { SectionRow, SkeletonRow } from "@/components/SectionRow";
import { useColors } from "@/hooks/useColors";
import {
  AIRING_QUERY, AnilistMedia, anilistQuery,
  POPULAR_QUERY, TRENDING_QUERY,
} from "@/utils/anilist";
import { useApp } from "@/context/AppContext";

export default function HomeScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { watchHistory } = useApp();

  const topPad = Platform.OS === "web" ? 67 : insets.top;

  const { data: trending, isLoading: loadingT, refetch: refetchT } = useQuery({
    queryKey: ["trending"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(TRENDING_QUERY, { page: 1 }),
  });

  const { data: popular, isLoading: loadingP, refetch: refetchP } = useQuery({
    queryKey: ["popular"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(POPULAR_QUERY, { page: 1 }),
  });

  const { data: airing, isLoading: loadingA, refetch: refetchA } = useQuery({
    queryKey: ["airing"],
    queryFn: () => anilistQuery<{ Page: { media: AnilistMedia[] } }>(AIRING_QUERY),
  });

  const isLoading = loadingT || loadingP || loadingA;

  const trendingList = trending?.Page?.media || [];
  const popularList = popular?.Page?.media || [];
  const airingList = airing?.Page?.media || [];

  const heroItems = trendingList.slice(0, 5).filter((m) => m.bannerImage || m.coverImage.extraLarge);

  const recentHistory = watchHistory.slice(0, 10);

  const refresh = async () => {
    await Promise.all([refetchT(), refetchP(), refetchA()]);
  };

  return (
    <View style={[styles.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        contentContainerStyle={{ paddingBottom: 90 }}
        refreshControl={<RefreshControl refreshing={false} onRefresh={refresh} tintColor={colors.primary} />}
      >
        {/* Header */}
        <View style={[styles.header, { paddingTop: topPad + 12 }]}>
          <View style={styles.logoRow}>
            <LinearGradient colors={["#8B5CF6", "#6D28D9"]} style={styles.logoBadge}>
              <Ionicons name="play" size={14} color="#fff" />
            </LinearGradient>
            <Text style={[styles.logoText, { color: colors.text }]}>Nova <Text style={{ color: colors.primary }}>Anime</Text></Text>
          </View>
          <Pressable onPress={() => router.push("/settings")} style={styles.settingsBtn}>
            <Ionicons name="settings-outline" size={22} color={colors.mutedForeground} />
          </Pressable>
        </View>

        <AnnouncementBanner />

        {/* Hero */}
        {isLoading ? (
          <View style={{ height: 420, backgroundColor: colors.card }} />
        ) : (
          <HeroSection items={heroItems} />
        )}

        {/* Continue Watching */}
        {recentHistory.length > 0 && (
          <View style={{ marginTop: 24 }}>
            <View style={styles.sectionHeader}>
              <Text style={[styles.sectionTitle, { color: colors.text }]}>متابعة المشاهدة</Text>
            </View>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={{ paddingHorizontal: 16, gap: 10 }}>
              {recentHistory.map((h) => (
                <Pressable
                  key={`${h.animeId}-${h.ep}`}
                  onPress={() => router.push(`/watch?anime=${h.animeId}&ep=${h.ep}&title=${encodeURIComponent(h.title)}&english=${encodeURIComponent(h.english)}`)}
                  style={[styles.historyCard, { backgroundColor: colors.card, borderColor: colors.border }]}
                >
                  <Image source={{ uri: h.thumbnail }} style={styles.historyImg} contentFit="cover" />
                  <LinearGradient colors={["transparent", "rgba(0,0,0,0.9)"]} style={styles.historyGrad}>
                    <Text style={styles.historyEp}>حلقة {h.ep}</Text>
                    <Text style={styles.historyTitle} numberOfLines={1}>{h.english || h.title}</Text>
                    {h.position && h.duration && (
                      <View style={styles.historyProgress}>
                        <View style={[styles.historyProgressFill, { width: `${Math.min((h.position / h.duration) * 100, 100)}%`, backgroundColor: colors.primary }]} />
                      </View>
                    )}
                  </LinearGradient>
                  <View style={[styles.playOverlay]}>
                    <Ionicons name="play-circle" size={28} color="rgba(255,255,255,0.85)" />
                  </View>
                </Pressable>
              ))}
            </ScrollView>
          </View>
        )}

        <View style={{ marginTop: 24 }}>
          {isLoading ? (
            <>
              <SkeletonRow />
              <SkeletonRow />
              <SkeletonRow />
            </>
          ) : (
            <>
              <SectionRow
                title="🔥 رائج الآن"
                items={trendingList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="📡 يُعرض حالياً"
                items={airingList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
              <SectionRow
                title="⭐ الأكثر شعبية"
                items={popularList}
                size="md"
                onSeeAll={() => router.push("/browse")}
              />
            </>
          )}
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  header: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12 },
  logoRow: { flexDirection: "row", alignItems: "center", gap: 8 },
  logoBadge: { width: 28, height: 28, borderRadius: 8, alignItems: "center", justifyContent: "center" },
  logoText: { fontSize: 20, fontFamily: "Cairo_800ExtraBold" },
  settingsBtn: { padding: 4 },
  sectionHeader: { flexDirection: "row", justifyContent: "space-between", paddingHorizontal: 16, marginBottom: 12 },
  sectionTitle: { fontSize: 17, fontFamily: "Cairo_700Bold" },
  historyCard: { width: 200, height: 120, borderRadius: 12, overflow: "hidden", borderWidth: 1, position: "relative" },
  historyImg: { width: "100%", height: "100%" },
  historyGrad: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 8 },
  historyEp: { color: "rgba(255,255,255,0.6)", fontSize: 10 },
  historyTitle: { color: "#fff", fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  historyProgress: { height: 2, backgroundColor: "rgba(255,255,255,0.2)", borderRadius: 1, marginTop: 4 },
  historyProgressFill: { height: 2, borderRadius: 1 },
  playOverlay: { position: "absolute", top: "50%", left: "50%", transform: [{ translateX: -14 }, { translateY: -28 }] },
});
