import React, { useEffect, useMemo, useState } from "react";
import {
  FlatList,
  Image,
  RefreshControl,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { DrawerMenu } from "@/components/DrawerMenu";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, useTvMetrics } from "@/utils/tv";
import {
  NOVA_FILM_CATALOG,
  loadWatchedMap,
  makeEpisodeKey,
  type FilmTitle,
} from "@/utils/filmCatalog";

export default function NovaFilmHomeScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const { width, height } = useWindowDimensions();
  const { size: scaleSize } = useTvMetrics();
  const isTv = isTvDevice(width, height);

  const [drawerVisible, setDrawerVisible] = useState(false);
  const [heroIndex, setHeroIndex] = useState(0);
  const [refreshing, setRefreshing] = useState(false);
  const [watchedMap, setWatchedMap] = useState<Record<string, boolean>>({});

  const heroItems = useMemo(
    () => NOVA_FILM_CATALOG.filter((t) => t.featuredHero),
    []
  );
  const activeHero = heroItems[heroIndex % heroItems.length] || NOVA_FILM_CATALOG[0];

  const loadWatchedProgress = async () => {
    setRefreshing(true);
    try {
      const w = await loadWatchedMap();
      setWatchedMap(w);
    } finally {
      setRefreshing(false);
    }
  };

  useEffect(() => {
    loadWatchedProgress();
  }, []);

  useEffect(() => {
    const timer = setInterval(() => {
      setHeroIndex((i) => (i + 1) % heroItems.length);
    }, 6000);
    return () => clearInterval(timer);
  }, [heroItems.length]);

  const cardWidth = isTv ? 185 : Math.max(126, Math.floor((width - 44) / 2.75));
  const cardHeight = Math.round(cardWidth * 1.48);

  const openFilm = (item: FilmTitle) => {
    router.push({
      pathname: "/film/[id]" as any,
      params: { id: String(item.id) },
    });
  };

  const quickPlayHero = () => {
    const ep = activeHero.episodes[0];
    if (ep) {
      router.push({
        pathname: "/film/watch" as any,
        params: {
          titleId: String(activeHero.id),
          season: String(ep.seasonNumber),
          episode: String(ep.episodeNumber),
        },
      });
    } else {
      openFilm(activeHero);
    }
  };

  const renderPosterRail = (
    sectionTitle: string,
    accent: string,
    items: FilmTitle[],
    browseType: string
  ) => (
    <View style={s.sectionWrap}>
      <View style={s.sectionHeader}>
        <TouchableOpacity
          onPress={() =>
            router.push({ pathname: "/(tabs)/browse" as any, params: { type: browseType } })
          }
          style={s.seeAllBtn}
        >
          <Ionicons name="chevron-back" size={14} color="#F59E0B" />
          <Text style={s.seeAllText}>عرض الكل</Text>
        </TouchableOpacity>
        <View style={s.sectionTitleRow}>
          <Text style={[s.sectionTitle, { color: colors.text }]}>{sectionTitle}</Text>
          <View style={[s.sectionDot, { backgroundColor: accent }]} />
        </View>
      </View>
      <FlatList
        data={items}
        horizontal
        keyExtractor={(item) => `${browseType}-${item.id}`}
        showsHorizontalScrollIndicator={false}
        contentContainerStyle={{ paddingHorizontal: 14, gap: 10 }}
        renderItem={({ item }) => {
          const watchedCount = item.episodes.filter(
            (ep) => watchedMap[makeEpisodeKey(item.id, ep.seasonNumber, ep.episodeNumber)]
          ).length;
          return (
            <TouchableOpacity
              onPress={() => openFilm(item)}
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
              <Image source={item.posterSource} style={s.cardImg} resizeMode="cover" />
              <LinearGradient
                colors={["rgba(0,0,0,0.25)", "transparent", "rgba(9,10,12,0.95)"]}
                style={StyleSheet.absoluteFill}
              />
              <View style={s.cardTopRow}>
                <View style={s.ratingBadge}>
                  <Ionicons name="star" size={10} color="#FBBF24" />
                  <Text style={s.ratingText}>{item.imdbRating.toFixed(1)}</Text>
                </View>
                <View style={s.qualityTag}>
                  <Text style={s.qualityTagText}>{item.qualityBadge}</Text>
                </View>
              </View>
              <View style={s.cardBottom}>
                <View style={[s.audioPill, { backgroundColor: "rgba(6,182,212,0.88)" }]}>
                  <Text style={s.audioPillText}>
                    مترجم
                    {watchedCount > 0 ? ` · ${watchedCount}/${item.episodes.length}` : ""}
                  </Text>
                </View>
                <Text style={s.cardTitle} numberOfLines={2}>
                  {item.titleAr}
                </Text>
                <Text style={s.cardSub} numberOfLines={1}>
                  {item.year} · {item.categoryLabel}
                </Text>
              </View>
            </TouchableOpacity>
          );
        }}
      />
    </View>
  );

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      <ScrollView
        showsVerticalScrollIndicator={false}
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={loadWatchedProgress} tintColor="#F59E0B" />
        }
        contentContainerStyle={{ paddingBottom: 96 }}
      >
        {/* Top App Bar: Menu on Left, Search + | NOVA FILM Logo on Right (Exact Anime NOVA Geometry) */}
        <View
          style={[
            s.header,
            { paddingTop: Math.max(insets.top + 8, 16), backgroundColor: colors.background },
          ]}
        >
          <TouchableOpacity
            onPress={() => setDrawerVisible(true)}
            style={[s.iconBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
            accessibilityLabel="القائمة"
          >
            <Ionicons name="menu" size={22} color={colors.text} />
          </TouchableOpacity>

          <View style={s.headerSpacer} />

          <View style={s.headerBrandGroup}>
            <TouchableOpacity
              onPress={() => router.push("/(tabs)/browse" as any)}
              style={[s.searchBtn, { backgroundColor: colors.input, borderColor: colors.border }]}
            >
              <Ionicons name="search" size={15} color={colors.textMuted} />
              <Text style={[s.searchText, { color: colors.textMuted }]} numberOfLines={1}>
                ابحث عن فيلم أو مسلسل...
              </Text>
            </TouchableOpacity>

            <View style={s.logoRow}>
              <View style={s.logoAccent} />
              <Text style={[s.logoText, { fontSize: scaleSize(16, 22), color: colors.text }]}>
                NOVA <Text style={{ color: "#F59E0B" }}>FILM</Text>
              </Text>
            </View>
          </View>
        </View>

        {/* Hero Slider Section */}
        <View style={s.heroWrap}>
          <Image source={activeHero.backdropSource} style={s.heroImg} resizeMode="cover" />
          <LinearGradient
            colors={["rgba(9,10,12,0.18)", "rgba(9,10,12,0.72)", colors.background]}
            style={StyleSheet.absoluteFill}
          />
          <View style={s.heroContent}>
            <View style={s.heroBadges}>
              <View style={s.heroHotBadge}>
                <Text style={s.heroHotText}>حصري في نوفا فيلم</Text>
              </View>
              <View style={s.ratingBadge}>
                <Ionicons name="star" size={11} color="#FBBF24" />
                <Text style={s.ratingText}>{activeHero.imdbRating.toFixed(1)}</Text>
              </View>
              <View style={s.heroMetaChip}>
                <Text style={s.heroMetaChipText}>{activeHero.categoryLabel}</Text>
              </View>
            </View>
            <Text style={s.heroTitle} numberOfLines={2}>
              {activeHero.titleAr}
            </Text>
            <Text style={s.heroSub} numberOfLines={1}>
              {activeHero.titleEn} · {activeHero.year} · {activeHero.qualityBadge}
            </Text>
            <View style={s.heroActions}>
              <TouchableOpacity onPress={quickPlayHero} style={s.heroPlayBtn}>
                <Ionicons name="play" size={16} color="#090A0C" />
                <Text style={s.heroPlayText}>مشاهدة الآن</Text>
              </TouchableOpacity>
              <TouchableOpacity onPress={() => openFilm(activeHero)} style={s.heroDetailBtn}>
                <Text style={s.heroDetailText}>التفاصيل والحلقات</Text>
              </TouchableOpacity>
            </View>
            <View style={s.heroDots}>
              {heroItems.map((h, i) => (
                <TouchableOpacity
                  key={h.id}
                  onPress={() => setHeroIndex(i)}
                  style={[
                    s.dot,
                    i === heroIndex % heroItems.length ? s.dotActive : s.dotInactive,
                  ]}
                />
              ))}
            </View>
          </View>
        </View>

        {/* Quick Category Chips (Movies, Series, Animation only — no dubbed) */}
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={s.quickPills}
        >
          {[
            { label: "الكل", type: "all", icon: "grid" },
            { label: "أفلام أجنبية", type: "movie", icon: "film" },
            { label: "مسلسلات", type: "series", icon: "albums" },
            { label: "أنميشن", type: "animation", icon: "sparkles" },
          ].map((c) => (
            <TouchableOpacity
              key={c.type}
              onPress={() =>
                router.push({ pathname: "/(tabs)/browse" as any, params: { type: c.type } })
              }
              style={[s.quickPill, { backgroundColor: colors.card, borderColor: colors.border }]}
            >
              <Ionicons name={c.icon as any} size={14} color="#F59E0B" />
              <Text style={[s.quickPillText, { color: colors.text }]}>{c.label}</Text>
            </TouchableOpacity>
          ))}
        </ScrollView>

        {/* Movies, Series & Animation Carousels */}
        {renderPosterRail(
          "🎬 الأفلام الأجنبية والآسيوية",
          "#F59E0B",
          NOVA_FILM_CATALOG.filter((t) => t.mediaType === "movie"),
          "movie"
        )}
        {renderPosterRail(
          "📺 المسلسلات الأجنبية المميزة",
          "#10B981",
          NOVA_FILM_CATALOG.filter((t) => t.mediaType === "series"),
          "series"
        )}
        {renderPosterRail(
          "✨ أفلام ومسلسلات الأنميشن",
          "#8B5CF6",
          NOVA_FILM_CATALOG.filter((t) => t.mediaType === "animation"),
          "animation"
        )}
      </ScrollView>

      <DrawerMenu visible={drawerVisible} onClose={() => setDrawerVisible(false)} />
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingBottom: 10,
    gap: 10,
  },
  headerSpacer: {
    flex: 1,
    minWidth: 0,
  },
  iconBtn: {
    width: 44,
    height: 44,
    borderRadius: 14,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  headerBrandGroup: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 10,
    flexShrink: 1,
  },
  searchBtn: {
    width: 170,
    height: 40,
    borderRadius: 13,
    borderWidth: 1,
    paddingHorizontal: 10,
    direction: "rtl",
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    flexShrink: 1,
  },
  searchText: { flex: 1, fontSize: 12, fontFamily: "Cairo_400Regular", textAlign: "right" },
  logoRow: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    gap: 7,
    flexShrink: 0,
  },
  logoText: { fontFamily: "Cairo_800ExtraBold", letterSpacing: 0.6 },
  logoAccent: { width: 3.5, height: 22, borderRadius: 2, backgroundColor: "#F59E0B" },
  heroWrap: {
    marginHorizontal: 12,
    height: 360,
    borderRadius: 24,
    overflow: "hidden",
    backgroundColor: "#111317",
    position: "relative",
  },
  heroImg: { width: "100%", height: "100%" },
  heroContent: {
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
    padding: 16,
    alignItems: "flex-end",
    gap: 8,
  },
  heroBadges: { flexDirection: "row-reverse", flexWrap: "wrap", gap: 6 },
  heroHotBadge: {
    backgroundColor: "#F59E0B",
    paddingHorizontal: 8,
    paddingVertical: 3,
    borderRadius: 8,
  },
  heroHotText: { color: "#090A0C", fontSize: 10, fontFamily: "Cairo_800ExtraBold" },
  heroMetaChip: {
    backgroundColor: "rgba(0,0,0,0.65)",
    paddingHorizontal: 8,
    paddingVertical: 3,
    borderRadius: 8,
  },
  heroMetaChipText: { color: "#fff", fontSize: 10, fontFamily: "Cairo_600SemiBold" },
  heroTitle: { color: "#fff", fontSize: 24, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  heroSub: { color: "#D4D4D8", fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  heroActions: { flexDirection: "row-reverse", alignItems: "center", gap: 10, marginTop: 4 },
  heroPlayBtn: {
    backgroundColor: "#F59E0B",
    paddingHorizontal: 16,
    paddingVertical: 9,
    borderRadius: 12,
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 6,
  },
  heroPlayText: { color: "#090A0C", fontSize: 13, fontFamily: "Cairo_800ExtraBold" },
  heroDetailBtn: {
    backgroundColor: "rgba(255,255,255,0.14)",
    paddingHorizontal: 14,
    paddingVertical: 9,
    borderRadius: 12,
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.22)",
  },
  heroDetailText: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold" },
  heroDots: { flexDirection: "row", gap: 6, alignSelf: "center", marginTop: 4 },
  dot: { height: 6, borderRadius: 3 },
  dotActive: { width: 20, backgroundColor: "#F59E0B" },
  dotInactive: { width: 6, backgroundColor: "rgba(255,255,255,0.35)" },
  quickPills: { paddingHorizontal: 14, paddingVertical: 14, gap: 8 },
  quickPill: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 6,
    borderWidth: 1,
    borderRadius: 12,
    paddingHorizontal: 12,
    paddingVertical: 8,
  },
  quickPillText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  sectionWrap: { marginBottom: 22 },
  sectionHeader: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    marginBottom: 10,
  },
  sectionTitleRow: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  sectionDot: { width: 4, height: 18, borderRadius: 2 },
  sectionTitle: { fontSize: 16, fontFamily: "Cairo_800ExtraBold" },
  seeAllBtn: {
    direction: "ltr",
    flexDirection: "row",
    alignItems: "center",
    gap: 2,
  },
  seeAllText: { color: "#F59E0B", fontSize: 12, fontFamily: "Cairo_700Bold" },
  card: {
    borderRadius: 16,
    overflow: "hidden",
    borderWidth: 1,
    position: "relative",
  },
  cardImg: { width: "100%", height: "100%" },
  cardTopRow: {
    position: "absolute",
    top: 7,
    left: 7,
    right: 7,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
  },
  ratingBadge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 3,
    backgroundColor: "rgba(0,0,0,0.78)",
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: 6,
  },
  ratingText: { color: "#FBBF24", fontSize: 10, fontFamily: "Cairo_700Bold" },
  qualityTag: {
    backgroundColor: "rgba(0,0,0,0.78)",
    paddingHorizontal: 6,
    paddingVertical: 2,
    borderRadius: 6,
  },
  qualityTagText: { color: "#FDE68A", fontSize: 9, fontFamily: "Cairo_700Bold" },
  cardBottom: {
    position: "absolute",
    bottom: 8,
    left: 8,
    right: 8,
    alignItems: "flex-end",
    gap: 3,
  },
  audioPill: { paddingHorizontal: 6, paddingVertical: 2, borderRadius: 6 },
  audioPillText: { color: "#fff", fontSize: 9, fontFamily: "Cairo_700Bold" },
  cardTitle: { color: "#fff", fontSize: 12, fontFamily: "Cairo_700Bold", textAlign: "right" },
  cardSub: { color: "#A1A1AA", fontSize: 10, fontFamily: "Cairo_400Regular", textAlign: "right" },
});
