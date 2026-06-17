import React, { useState, useEffect } from "react";
import {
  View, Text, StyleSheet, ScrollView, Pressable,
  Image, ActivityIndicator, FlatList, Linking,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";

const UPCOMING_Q = `query {
  Page(perPage: 10) {
    media(type: ANIME, sort: START_DATE_DESC, status: NOT_YET_RELEASED, countryOfOrigin: "JP") {
      id title { romaji english } coverImage { large } startDate { year month }
      genres episodes format averageScore
    }
  }
}`;

const TRENDING_Q = `query {
  Page(perPage: 8) {
    media(type: ANIME, sort: TRENDING_DESC, countryOfOrigin: "JP", status: RELEASING) {
      id title { romaji } coverImage { large } description(asHtml: false)
      averageScore popularity episodes nextAiringEpisode { episode airingAt }
      genres bannerImage
    }
  }
}`;

const RECENTLY_AIRED_Q = `query {
  Page(perPage: 15) {
    airingSchedules(notYetAired: false, sort: TIME_DESC) {
      episode airingAt
      media {
        id title { romaji } coverImage { large } averageScore format
        nextAiringEpisode { episode }
      }
    }
  }
}`;

const MONTHS_AR = ["يناير","فبراير","مارس","أبريل","مايو","يونيو","يوليو","أغسطس","سبتمبر","أكتوبر","نوفمبر","ديسمبر"];

function timeAgo(ts: number): string {
  const diff = Date.now() / 1000 - ts;
  if (diff < 3600) return `منذ ${Math.floor(diff / 60)} دقيقة`;
  if (diff < 86400) return `منذ ${Math.floor(diff / 3600)} ساعة`;
  if (diff < 604800) return `منذ ${Math.floor(diff / 86400)} يوم`;
  return `منذ ${Math.floor(diff / 604800)} أسبوع`;
}

async function gqlFetch(query: string) {
  const r = await fetch("https://graphql.anilist.co", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ query }),
  });
  return (await r.json()).data?.Page;
}

type Tab = "airing" | "upcoming" | "trending";

export default function NewsScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();

  const [tab, setTab] = useState<Tab>("airing");
  const [airing, setAiring] = useState<any[]>([]);
  const [upcoming, setUpcoming] = useState<any[]>([]);
  const [trending, setTrending] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    setLoading(true);
    Promise.all([
      gqlFetch(RECENTLY_AIRED_Q),
      gqlFetch(UPCOMING_Q),
      gqlFetch(TRENDING_Q),
    ]).then(([a, u, t]) => {
      const schedules = (a?.airingSchedules || []).filter((s: any) => s.media);
      const seen = new Set<number>();
      const unique = schedules.filter((s: any) => {
        if (seen.has(s.media.id)) return false;
        seen.add(s.media.id); return true;
      });
      setAiring(unique);
      setUpcoming(u?.media || []);
      setTrending(t?.media || []);
    }).finally(() => setLoading(false));
  }, []);

  const TABS: { id: Tab; label: string; icon: keyof typeof Ionicons.glyphMap; color: string }[] = [
    { id: "airing",   label: "يُبث الآن",       icon: "radio",    color: "#22c55e" },
    { id: "upcoming", label: "قريباً",           icon: "time",     color: "#f59e0b" },
    { id: "trending", label: "الأكثر تداولاً",  icon: "trending-up", color: "#ef4444" },
  ];

  function goAnime(id: number) {
    router.push(`/anime/${id}` as any);
  }

  const renderAiring = ({ item, index }: { item: any; index: number }) => (
    <Pressable
      onPress={() => goAnime(item.media.id)}
      style={({ pressed }) => [s.card, pressed && { opacity: 0.75 }]}
    >
      <Image source={{ uri: item.media.coverImage?.large }} style={s.cover} />
      <View style={s.cardInfo}>
        <View style={s.tagRow}>
          <View style={[s.tag, { backgroundColor: "rgba(34,197,94,0.15)", borderColor: "rgba(34,197,94,0.25)" }]}>
            <Text style={[s.tagText, { color: "#22c55e" }]}>يُبث الآن</Text>
          </View>
          {item.media.format && (
            <View style={[s.tag, { backgroundColor: "rgba(139,92,246,0.15)", borderColor: "rgba(139,92,246,0.25)" }]}>
              <Text style={[s.tagText, { color: "#a78bfa" }]}>
                {item.media.format === "TV" ? "مسلسل" : item.media.format}
              </Text>
            </View>
          )}
        </View>
        <Text style={s.cardTitle} numberOfLines={2}>{item.media.title.romaji}</Text>
        <View style={s.metaRow}>
          <Ionicons name="time-outline" size={11} color="#8B5CF6" />
          <Text style={[s.metaText, { color: "#8B5CF6" }]}>{timeAgo(item.airingAt)}</Text>
          <Text style={s.metaSep}>·</Text>
          <Text style={s.metaText}>الحلقة {item.episode}</Text>
          {item.media.averageScore ? (
            <>
              <Text style={s.metaSep}>·</Text>
              <Text style={[s.metaText, { color: "#facc15" }]}>⭐ {(item.media.averageScore / 10).toFixed(1)}</Text>
            </>
          ) : null}
        </View>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.2)" />
    </Pressable>
  );

  const renderUpcoming = ({ item }: { item: any }) => (
    <Pressable
      onPress={() => goAnime(item.id)}
      style={({ pressed }) => [s.card, pressed && { opacity: 0.75 }]}
    >
      <Image source={{ uri: item.coverImage?.large }} style={s.cover} />
      <View style={s.cardInfo}>
        <View style={s.tagRow}>
          <View style={[s.tag, { backgroundColor: "rgba(245,158,11,0.15)", borderColor: "rgba(245,158,11,0.25)" }]}>
            <Text style={[s.tagText, { color: "#f59e0b" }]}>قريباً</Text>
          </View>
        </View>
        <Text style={s.cardTitle} numberOfLines={2}>{item.title.romaji}</Text>
        {item.title.english && (
          <Text style={s.cardSubtitle} numberOfLines={1}>{item.title.english}</Text>
        )}
        <View style={s.metaRow}>
          {item.startDate?.year && (
            <>
              <Ionicons name="calendar-outline" size={11} color="#f59e0b" />
              <Text style={[s.metaText, { color: "#f59e0b" }]}>
                {item.startDate.month ? `${MONTHS_AR[item.startDate.month - 1]} ` : ""}{item.startDate.year}
              </Text>
            </>
          )}
          {item.genres?.[0] && (
            <>
              <Text style={s.metaSep}>·</Text>
              <Text style={s.metaText}>{item.genres[0]}</Text>
            </>
          )}
        </View>
      </View>
      <Ionicons name="chevron-back" size={16} color="rgba(255,255,255,0.2)" />
    </Pressable>
  );

  const renderTrending = ({ item, index }: { item: any; index: number }) => (
    <Pressable
      onPress={() => goAnime(item.id)}
      style={({ pressed }) => [s.trendCard, pressed && { opacity: 0.75 }]}
    >
      {item.bannerImage ? (
        <View style={s.bannerWrap}>
          <Image source={{ uri: item.bannerImage }} style={s.banner} />
          <View style={s.bannerGrad} />
          <View style={[s.tag, s.trendBadge, { backgroundColor: "rgba(239,68,68,0.8)" }]}>
            <Ionicons name="trending-up" size={9} color="#fff" />
            <Text style={[s.tagText, { color: "#fff" }]}>#{index + 1} تريندنج</Text>
          </View>
        </View>
      ) : null}
      <View style={[s.trendBody, item.bannerImage ? { paddingTop: 8 } : {}]}>
        {!item.bannerImage && (
          <Image source={{ uri: item.coverImage?.large }} style={[s.cover, { marginLeft: 0, marginRight: 12 }]} />
        )}
        <View style={{ flex: 1 }}>
          {!item.bannerImage && (
            <View style={[s.tag, { alignSelf: "flex-start", marginBottom: 4, backgroundColor: "rgba(239,68,68,0.15)", borderColor: "rgba(239,68,68,0.25)" }]}>
              <Text style={[s.tagText, { color: "#f87171" }]}>#{index + 1} تريندنج</Text>
            </View>
          )}
          <Text style={s.cardTitle} numberOfLines={1}>{item.title.romaji}</Text>
          {item.description && (
            <Text style={s.trendDesc} numberOfLines={2}>
              {item.description.replace(/<[^>]*>/g, "").slice(0, 110)}...
            </Text>
          )}
          <View style={[s.metaRow, { marginTop: 6 }]}>
            {item.averageScore ? (
              <Text style={[s.metaText, { color: "#facc15" }]}>⭐ {(item.averageScore / 10).toFixed(1)}</Text>
            ) : null}
            {item.nextAiringEpisode && (
              <>
                <Text style={s.metaSep}>·</Text>
                <Text style={[s.metaText, { color: "#8B5CF6" }]}>ح{item.nextAiringEpisode.episode} قريباً</Text>
              </>
            )}
            {item.popularity ? (
              <>
                <Text style={s.metaSep}>·</Text>
                <Ionicons name="eye-outline" size={10} color="rgba(255,255,255,0.3)" />
                <Text style={s.metaText}>{(item.popularity / 1000).toFixed(0)}K</Text>
              </>
            ) : null}
          </View>
        </View>
      </View>
    </Pressable>
  );

  const listData = tab === "airing" ? airing : tab === "upcoming" ? upcoming : trending;

  return (
    <View style={[s.root, { paddingTop: insets.top }]}>

      {/* Header */}
      <View style={s.header}>
        <View style={s.headerIcon}>
          <Ionicons name="newspaper" size={20} color="#8B5CF6" />
        </View>
        <View>
          <Text style={s.headerTitle}>أخبار الأنمي</Text>
          <Text style={s.headerSub}>آخر الإضافات والإصدارات</Text>
        </View>
      </View>

      {/* Tab selector */}
      <View style={s.tabRow}>
        {TABS.map(t => (
          <Pressable
            key={t.id}
            onPress={() => setTab(t.id)}
            style={[s.tabBtn, tab === t.id && { backgroundColor: "#8B5CF6" }]}
          >
            <Ionicons
              name={t.icon}
              size={12}
              color={tab === t.id ? "#fff" : "rgba(255,255,255,0.35)"}
            />
            <Text style={[s.tabText, tab === t.id ? { color: "#fff" } : { color: "rgba(255,255,255,0.35)" }]}>
              {t.label}
            </Text>
          </Pressable>
        ))}
      </View>

      {/* Content */}
      {loading ? (
        <View style={s.loading}>
          <ActivityIndicator size="large" color="#8B5CF6" />
          <Text style={s.loadingText}>جاري التحميل...</Text>
        </View>
      ) : (
        <FlatList
          data={listData}
          keyExtractor={(_, i) => String(i)}
          renderItem={
            tab === "airing" ? renderAiring :
            tab === "upcoming" ? renderUpcoming :
            renderTrending
          }
          contentContainerStyle={s.list}
          showsVerticalScrollIndicator={false}
        />
      )}
    </View>
  );
}

const s = StyleSheet.create({
  root: { flex: 1, backgroundColor: "#09090B" },
  header: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingVertical: 14,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerIcon: {
    width: 40, height: 40, borderRadius: 12,
    backgroundColor: "rgba(139,92,246,0.1)",
    borderWidth: 1, borderColor: "rgba(139,92,246,0.15)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: { fontSize: 18, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  headerSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 1 },
  tabRow: { flexDirection: "row", gap: 8, paddingHorizontal: 14, paddingVertical: 12 },
  tabBtn: {
    flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center",
    gap: 5, paddingVertical: 9, borderRadius: 12,
    backgroundColor: "#18181B",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
  },
  tabText: { fontSize: 10, fontFamily: "Cairo_700Bold" },
  loading: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { fontSize: 12, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)" },
  list: { paddingHorizontal: 14, paddingBottom: 100, gap: 10 },

  card: {
    flexDirection: "row", alignItems: "center", gap: 12,
    padding: 12, borderRadius: 16,
    backgroundColor: "#111116",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
  },
  cover: { width: 52, height: 74, borderRadius: 10, borderWidth: 1, borderColor: "rgba(255,255,255,0.1)" },
  cardInfo: { flex: 1 },
  tagRow: { flexDirection: "row", gap: 5, marginBottom: 5 },
  tag: {
    flexDirection: "row", alignItems: "center", gap: 3,
    paddingHorizontal: 7, paddingVertical: 2.5,
    borderRadius: 20, borderWidth: 1,
  },
  tagText: { fontSize: 8, fontFamily: "Cairo_700Bold" },
  cardTitle: { fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.9)", lineHeight: 20 },
  cardSubtitle: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)", marginTop: 2 },
  metaRow: { flexDirection: "row", alignItems: "center", gap: 4, marginTop: 6, flexWrap: "wrap" },
  metaText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.35)" },
  metaSep: { fontSize: 9, color: "rgba(255,255,255,0.15)" },

  trendCard: {
    borderRadius: 16, backgroundColor: "#111116",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.06)",
    overflow: "hidden",
  },
  bannerWrap: { position: "relative", height: 90 },
  banner: { width: "100%", height: "100%" },
  bannerGrad: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(17,17,22,0.55)",
  },
  trendBadge: {
    position: "absolute", top: 8, right: 10,
    borderWidth: 0, borderRadius: 20,
  },
  trendBody: { flexDirection: "row", padding: 12, gap: 10 },
  trendDesc: {
    fontSize: 10, fontFamily: "Cairo_400Regular",
    color: "rgba(255,255,255,0.35)", marginTop: 4, lineHeight: 15,
  },
});
