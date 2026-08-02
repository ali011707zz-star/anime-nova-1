/**
 * (tabs)/aw-dubbed.tsx — تبويب أنيميشن مدبلج
 * يعرض كتالوج AwDubbed (Firestore) مع شبكة بوسترات + بحث
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ActivityIndicator, StyleSheet, Platform,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";

const BASE = getBaseUrl();

interface AwSeason { label: string; animeId: string; }
interface AwSeries {
  key: string; title: string; titleAr?: string; poster?: string;
  story?: string; year?: string; rating?: number;
  seasons: AwSeason[];
}

function AwCard({ s, onPress }: { s: AwSeries; onPress: () => void }) {
  const [imgErr, setImgErr] = useState(false);
  const uri = !imgErr && s.poster ? s.poster : null;
  return (
    <Pressable onPress={onPress} style={({ pressed }) => [styles.card, { opacity: pressed ? 0.7 : 1 }]}>
      <View style={styles.cardPoster}>
        {uri ? (
          <Image source={{ uri }} style={StyleSheet.absoluteFill} resizeMode="cover"
            onError={() => setImgErr(true)} />
        ) : (
          <View style={[styles.cardPlaceholder, { backgroundColor: "rgba(16,185,129,0.08)" }]}>
            <Text style={{ fontSize: 24 }}>🎬</Text>
          </View>
        )}
        <LinearGradient
          colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={StyleSheet.absoluteFill}
          pointerEvents="none"
        />
        <View style={styles.cardLabel}>
          <Text style={styles.cardTitle} numberOfLines={2}>{s.titleAr || s.title}</Text>
          {s.seasons.length > 1 && (
            <Text style={styles.cardSeasons}>{s.seasons.length} مواسم</Text>
          )}
        </View>
      </View>
    </Pressable>
  );
}

export default function AwDubbedTabScreen() {
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const [series,      setSeries]      = useState<AwSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchQ,     setSearchQ]     = useState("");
  const [searchRes,   setSearchRes]   = useState<AwSeries[]>([]);
  const [searchLoad,  setSearchLoad]  = useState(false);
  const [searchOpen,  setSearchOpen]  = useState(false);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/aw-dubbed/catalog?page=${p}`);
      const d = await r.json();
      const results: AwSeries[] = d.results || [];
      setTotalPages(d.totalPages || 1);
      setSeries(prev => reset ? results : [...prev, ...results]);
      setPage(p);
    } catch {}
    setLoading(false); setLoadingMore(false);
  }, []);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchRes([]); return; }
    setSearchLoad(true);
    if (timer.current) clearTimeout(timer.current);
    timer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${BASE}/api/aw-dubbed/catalog?q=${encodeURIComponent(q)}&page=1`);
        const d = await r.json();
        setSearchRes(d.results || []);
      } catch { setSearchRes([]); }
      setSearchLoad(false);
    }, 400);
    return () => { if (timer.current) clearTimeout(timer.current); };
  }, [searchQ]);

  const openDetail = (s: AwSeries) => {
    router.push({
      pathname: "/aw-dubbed/[key]",
      params: {
        key:     encodeURIComponent(s.key),
        title:   s.title,
        titleAr: s.titleAr || "",
        seasons: encodeURIComponent(JSON.stringify(s.seasons)),
        poster:  s.poster ? encodeURIComponent(s.poster) : "",
      },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchRes : series;

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <View style={{ flex: 1 }}>
          <Text style={styles.headerTitle}>أنيميشن مدبلج</Text>
          <Text style={styles.headerSub}>كرتون وأنيميشن مدبلج بالعربية</Text>
        </View>
        <Pressable onPress={() => setSearchOpen(o => !o)} style={styles.iconBtn}>
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color="rgba(255,255,255,0.7)" />
        </Pressable>
      </View>

      {searchOpen && (
        <View style={styles.searchBox}>
          <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" style={{ marginLeft: 8 }} />
          <TextInput
            value={searchQ}
            onChangeText={setSearchQ}
            placeholder="ابحث في الأنيميشن المدبلج..."
            placeholderTextColor="rgba(255,255,255,0.3)"
            style={styles.searchInput}
            autoFocus
          />
        </View>
      )}

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color="#10B981" size="large" />
        </View>
      ) : (
        <FlatList
          data={displayList}
          keyExtractor={item => item.key}
          numColumns={3}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={{ gap: 10 }}
          renderItem={({ item }) => (
            <View style={{ flex: 1 / 3 }}>
              <AwCard s={item} onPress={() => openDetail(item)} />
            </View>
          )}
          onEndReached={() => { if (!searchQ && !loadingMore && page < totalPages) loadPage(page + 1); }}
          onEndReachedThreshold={0.3}
          ListFooterComponent={
            loadingMore ? <ActivityIndicator color="#10B981" style={{ marginVertical: 16 }} /> : null
          }
          ListEmptyComponent={
            !loading ? (
              <View style={styles.center}>
                <Text style={styles.emptyText}>
                  {searchQ.length >= 2
                    ? (searchLoad ? "جاري البحث..." : "لا توجد نتائج")
                    : "لا توجد محتوى"}
                </Text>
              </View>
            ) : null
          }
        />
      )}
    </View>
  );
}

const styles = StyleSheet.create({
  container:   { flex: 1, backgroundColor: "#09090B" },
  header:      { flexDirection: "row", alignItems: "center", paddingHorizontal: 16,
                 paddingTop: 12, paddingBottom: 12, borderBottomWidth: 1,
                 borderBottomColor: "rgba(255,255,255,0.05)" },
  headerTitle: { color: "#fff", fontSize: 18, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  headerSub:   { color: "rgba(255,255,255,0.35)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  iconBtn:     { width: 36, height: 36, borderRadius: 10,
                 backgroundColor: "rgba(255,255,255,0.05)", borderWidth: 1,
                 borderColor: "rgba(255,255,255,0.08)", alignItems: "center", justifyContent: "center" },
  searchBox:   { flexDirection: "row", alignItems: "center", marginHorizontal: 16, marginBottom: 8,
                 backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12,
                 borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", paddingVertical: 10 },
  searchInput: { flex: 1, color: "#fff", fontSize: 14,
                 fontFamily: "Cairo_400Regular", textAlign: "right", paddingRight: 8 },
  grid:        { padding: 12, paddingBottom: 100, gap: 10 },
  card:        { borderRadius: 12, overflow: "hidden" },
  cardPoster:  { aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)",
                 borderRadius: 12, overflow: "hidden" },
  cardPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  cardLabel:   { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  cardTitle:   { color: "#fff", fontSize: 10, fontWeight: "700",
                 fontFamily: "Cairo_700Bold", lineHeight: 14 },
  cardSeasons: { color: "rgba(255,255,255,0.5)", fontSize: 9, fontFamily: "Cairo_400Regular" },
  center:      { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText:   { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
