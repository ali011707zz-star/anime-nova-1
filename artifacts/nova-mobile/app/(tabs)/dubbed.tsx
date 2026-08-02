import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ActivityIndicator, StyleSheet, Platform, ScrollView,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";

interface Season { label: string; arabicToonsId: string; }
interface Series {
  key: string;
  title: string;
  image?: string;
  poster?: string;
  seasons: Season[];
  tmdbId?: number;
  slug?: string;
}

const BASE = getBaseUrl();
const AT_IMG = `${BASE}/api/dubbed/img?f=`;

function getImg(s: Series): string | null {
  const img = s.poster || s.image;
  if (!img) return null;
  if (img.startsWith("http")) return img;
  if (img.startsWith("/api/dubbed/img")) return `${BASE}${img}`;
  const f = img.split("?f=")[1] || img.split("/").pop();
  return f ? `${AT_IMG}${f}` : null;
}

function SeriesCard({ s, onPress }: { s: Series; onPress: () => void }) {
  const imgUri = getImg(s);
  return (
    <Pressable
      onPress={onPress}
      style={({ pressed }) => [styles.card, { opacity: pressed ? 0.7 : 1 }]}
    >
      <View style={styles.cardPoster}>
        {imgUri ? (
          <Image source={{ uri: imgUri }} style={StyleSheet.absoluteFill} resizeMode="cover" />
        ) : (
          <View style={styles.cardPlaceholder}>
            <Text style={{ fontSize: 24 }}>📺</Text>
          </View>
        )}
        <LinearGradient
          colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={StyleSheet.absoluteFill}
          pointerEvents="none"
        />
        <View style={styles.cardLabel}>
          <Text style={styles.cardTitle} numberOfLines={2}>{s.title}</Text>
          {s.seasons.length > 1 && (
            <Text style={styles.cardSeasons}>{s.seasons.length} مواسم</Text>
          )}
        </View>
      </View>
    </Pressable>
  );
}

export default function DubbedScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const [series, setSeries] = useState<Series[]>([]);
  const [page, setPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchQ, setSearchQ] = useState("");
  const [searchResults, setSearchResults] = useState<Series[]>([]);
  const [searchLoading, setSearchLoading] = useState(false);
  const [searchOpen, setSearchOpen] = useState(false);

  const searchTimer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) setLoading(true); else setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/dubbed/catalog?page=${p}`);
      const d = await r.json();
      const results: Series[] = d.results || [];
      setTotalPages(d.totalPages || 1);
      setSeries(prev => reset ? results : [...prev, ...results]);
      setPage(p);
    } catch {}
    setLoading(false);
    setLoadingMore(false);
  }, []);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchResults([]); return; }
    setSearchLoading(true);
    if (searchTimer.current) clearTimeout(searchTimer.current);
    searchTimer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${BASE}/api/dubbed/search?q=${encodeURIComponent(q)}`);
        const d = await r.json();
        setSearchResults(d.results || []);
      } catch { setSearchResults([]); }
      setSearchLoading(false);
    }, 400);
    return () => { if (searchTimer.current) clearTimeout(searchTimer.current); };
  }, [searchQ]);

  const openDetail = (s: Series) => {
    router.push({
      pathname: "/dubbed/[id]",
      params: {
        id: encodeURIComponent(s.key || s.title),
        title: s.title,
        seasons: JSON.stringify(s.seasons),
        img: s.poster || s.image || "",
      },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchResults : series;

  const numColumns = 3;

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <Pressable
          onPress={() => (router.canGoBack() ? router.back() : router.push("/"))}
          style={styles.iconBtn}
        >
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <View style={{ flex: 1 }}>
          <Text style={styles.headerTitle}>كرتون مدبلج</Text>
          <Text style={styles.headerSub}>كرتون وأنمي مدبلج للعربية</Text>
        </View>
        <Pressable
          onPress={() => setSearchOpen(o => !o)}
          style={styles.iconBtn}
        >
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color="rgba(255,255,255,0.7)" />
        </Pressable>
      </View>

      {searchOpen && (
        <View style={styles.searchBox}>
          <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" style={{ marginLeft: 8 }} />
          <TextInput
            value={searchQ}
            onChangeText={setSearchQ}
            placeholder="ابحث في الكرتون المدبلج..."
            placeholderTextColor="rgba(255,255,255,0.3)"
            style={styles.searchInput}
            autoFocus
          />
        </View>
      )}

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color="#7C3AED" size="large" />
        </View>
      ) : (
        <FlatList
          data={displayList}
          keyExtractor={item => item.key || item.title}
          numColumns={numColumns}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={{ gap: 10 }}
          renderItem={({ item }) => (
            <View style={{ flex: 1 / numColumns }}>
              <SeriesCard s={item} onPress={() => openDetail(item)} />
            </View>
          )}
          onEndReached={() => {
            if (!searchQ && !loadingMore && page < totalPages) loadPage(page + 1);
          }}
          onEndReachedThreshold={0.3}
          ListFooterComponent={
            loadingMore ? <ActivityIndicator color="#7C3AED" style={{ marginVertical: 16 }} /> : null
          }
          ListEmptyComponent={
            !loading ? (
              <View style={styles.center}>
                <Text style={styles.emptyText}>
                  {searchQ.length >= 2 ? "لا توجد نتائج" : "لا توجد مسلسلات"}
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
  container: { flex: 1, backgroundColor: "#09090B" },
  header: {
    flexDirection: "row", alignItems: "center", paddingHorizontal: 16,
    paddingTop: 12, paddingBottom: 12, borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerTitle: { color: "#fff", fontSize: 18, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  headerSub: { color: "rgba(255,255,255,0.35)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  iconBtn: {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  searchBox: {
    flexDirection: "row", alignItems: "center",
    marginHorizontal: 16, marginBottom: 8,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    paddingVertical: 10,
  },
  searchInput: {
    flex: 1, color: "#fff", fontSize: 14,
    fontFamily: "Cairo_400Regular", textAlign: "right", paddingRight: 8,
  },
  grid: { padding: 12, paddingBottom: 100, gap: 10 },
  card: { borderRadius: 12, overflow: "hidden" },
  cardPoster: { aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12, overflow: "hidden" },
  cardPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  cardLabel: { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  cardTitle: {
    color: "#fff", fontSize: 10, fontWeight: "700",
    fontFamily: "Cairo_700Bold", lineHeight: 14,
  },
  cardSeasons: { color: "rgba(255,255,255,0.5)", fontSize: 9, fontFamily: "Cairo_400Regular" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText: { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
