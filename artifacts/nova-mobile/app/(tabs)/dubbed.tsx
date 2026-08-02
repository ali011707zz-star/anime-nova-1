/**
 * dubbed.tsx — تبويب المدبلج
 * يعرض قسمَين بزر تبديل في الأعلى:
 *   • كرتون مدبلج  — ArabicToons عبر StarCima  (/api/dubbed/catalog)
 *   • أنيميشن مدبلج — Firestore (aw_links)     (/api/aw-dubbed/catalog)
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

/* ═══════════════════════════════════════════════════════════
   قسم 1 — كرتون مدبلج (ArabicToons)
════════════════════════════════════════════════════════════*/
interface DubSeason  { label: string; arabicToonsId: string; }
interface DubSeries  {
  key: string; title: string;
  image?: string; poster?: string;
  seasons: DubSeason[];
}

function getDubImg(s: DubSeries): string | null {
  // أولوية: أي URL كامل (TMDB fallback يعيد https://image.tmdb.org/...)
  const raw = s.poster || s.image;
  if (!raw) return null;
  if (raw.startsWith("http")) return raw;
  // مسار نسبي مثل cat_XXXX.jpg → مرور عبر proxy المخدم
  if (raw.startsWith("/api/dubbed/img")) return `${BASE}${raw}`;
  const f = raw.split("?f=")[1] || raw.split("/").pop();
  return f ? `${BASE}/api/dubbed/img?f=${f}` : null;
}

function DubCard({ s, onPress }: { s: DubSeries; onPress: () => void }) {
  const [imgErr, setImgErr] = useState(false);
  const uri = !imgErr ? getDubImg(s) : null;
  return (
    <Pressable onPress={onPress} style={({ pressed }) => [styles.card, { opacity: pressed ? 0.7 : 1 }]}>
      <View style={styles.cardPoster}>
        {uri ? (
          <Image source={{ uri }} style={StyleSheet.absoluteFill} resizeMode="cover"
            onError={() => setImgErr(true)} />
        ) : (
          <View style={styles.cardPlaceholder}><Text style={{ fontSize: 24 }}>📺</Text></View>
        )}
        <LinearGradient colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={StyleSheet.absoluteFill} pointerEvents="none" />
        <View style={styles.cardLabel}>
          <Text style={styles.cardTitle} numberOfLines={2}>{s.title}</Text>
          {s.seasons.length > 1 && <Text style={styles.cardSeasons}>{s.seasons.length} مواسم</Text>}
        </View>
      </View>
    </Pressable>
  );
}

function DubSection() {
  const router = useRouter();
  const [series,       setSeries]       = useState<DubSeries[]>([]);
  const [page,         setPage]         = useState(1);
  const [totalPages,   setTotalPages]   = useState(1);
  const [loading,      setLoading]      = useState(false);
  const [loadingMore,  setLoadingMore]  = useState(false);
  const [searchQ,      setSearchQ]      = useState("");
  const [searchRes,    setSearchRes]    = useState<DubSeries[]>([]);
  const [searchLoad,   setSearchLoad]   = useState(false);
  const [searchOpen,   setSearchOpen]   = useState(false);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/dubbed/catalog?page=${p}`);
      const d = await r.json();
      const results: DubSeries[] = d.results || [];
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
        const r = await fetch(`${BASE}/api/dubbed/search?q=${encodeURIComponent(q)}`);
        const d = await r.json();
        setSearchRes(d.results || []);
      } catch { setSearchRes([]); }
      setSearchLoad(false);
    }, 400);
    return () => { if (timer.current) clearTimeout(timer.current); };
  }, [searchQ]);

  const openDetail = (s: DubSeries) => {
    router.push({
      pathname: "/dubbed/[id]",
      params: {
        id:      encodeURIComponent(s.key || s.title),
        title:   s.title,
        seasons: JSON.stringify(s.seasons),
        img:     s.poster || s.image || "",
      },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchRes : series;

  return (
    <View style={{ flex: 1 }}>
      {/* شريط البحث */}
      <View style={styles.searchRow}>
        <Pressable onPress={() => setSearchOpen(o => !o)} style={styles.searchBtn}>
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color="rgba(255,255,255,0.6)" />
        </Pressable>
      </View>
      {searchOpen && (
        <View style={styles.searchBox}>
          <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" style={{ marginLeft: 8 }} />
          <TextInput value={searchQ} onChangeText={setSearchQ}
            placeholder="ابحث في الكرتون المدبلج..." placeholderTextColor="rgba(255,255,255,0.3)"
            style={styles.searchInput} autoFocus />
        </View>
      )}
      {loading ? (
        <View style={styles.center}><ActivityIndicator color="#7C3AED" size="large" /></View>
      ) : (
        <FlatList
          data={displayList}
          keyExtractor={item => item.key || item.title}
          numColumns={3}
          contentContainerStyle={styles.grid}
          columnWrapperStyle={{ gap: 10 }}
          renderItem={({ item }) => (
            <View style={{ flex: 1 / 3 }}>
              <DubCard s={item} onPress={() => openDetail(item)} />
            </View>
          )}
          onEndReached={() => { if (!searchQ && !loadingMore && page < totalPages) loadPage(page + 1); }}
          onEndReachedThreshold={0.3}
          ListFooterComponent={
            loadingMore ? <ActivityIndicator color="#7C3AED" style={{ marginVertical: 16 }} /> : null
          }
          ListEmptyComponent={
            !loading ? (
              <View style={styles.center}>
                <Text style={styles.emptyText}>
                  {searchQ.length >= 2
                    ? (searchLoad ? "جاري البحث..." : "لا توجد نتائج")
                    : "لا توجد مسلسلات"}
                </Text>
              </View>
            ) : null
          }
        />
      )}
    </View>
  );
}

/* ═══════════════════════════════════════════════════════════
   قسم 2 — أنيميشن مدبلج (AwDubbed)
════════════════════════════════════════════════════════════*/
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
        <LinearGradient colors={["transparent", "rgba(0,0,0,0.85)"]}
          style={StyleSheet.absoluteFill} pointerEvents="none" />
        <View style={styles.cardLabel}>
          <Text style={styles.cardTitle} numberOfLines={2}>{s.titleAr || s.title}</Text>
          {s.seasons.length > 1 && <Text style={styles.cardSeasons}>{s.seasons.length} مواسم</Text>}
        </View>
      </View>
    </Pressable>
  );
}

function AwSection() {
  const router = useRouter();
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
    <View style={{ flex: 1 }}>
      {/* شريط البحث */}
      <View style={styles.searchRow}>
        <Pressable onPress={() => setSearchOpen(o => !o)} style={styles.searchBtn}>
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color="rgba(255,255,255,0.6)" />
        </Pressable>
      </View>
      {searchOpen && (
        <View style={styles.searchBox}>
          <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" style={{ marginLeft: 8 }} />
          <TextInput value={searchQ} onChangeText={setSearchQ}
            placeholder="ابحث في الأنيميشن المدبلج..." placeholderTextColor="rgba(255,255,255,0.3)"
            style={styles.searchInput} autoFocus />
        </View>
      )}
      {loading ? (
        <View style={styles.center}><ActivityIndicator color="#10B981" size="large" /></View>
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

/* ═══════════════════════════════════════════════════════════
   الشاشة الرئيسية مع switcher
════════════════════════════════════════════════════════════*/
type Tab = "dub" | "anim";

export default function DubbedScreen() {
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const [tab, setTab] = useState<Tab>("anim");

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <View style={{ flex: 1 }}>
          <Text style={styles.headerTitle}>مدبلج بالعربية</Text>
          <Text style={styles.headerSub}>كرتون وأنيميشن مدبلج</Text>
        </View>
      </View>

      {/* Segment switcher */}
      <View style={styles.switcher}>
        <Pressable
          onPress={() => setTab("anim")}
          style={[styles.switchBtn, tab === "anim" && styles.switchBtnActive]}
        >
          <Ionicons name="film-outline" size={14}
            color={tab === "anim" ? "#10B981" : "rgba(255,255,255,0.4)"} />
          <Text style={[styles.switchText, tab === "anim" && styles.switchTextActive]}>
            أنيميشن مدبلج
          </Text>
        </Pressable>
        <Pressable
          onPress={() => setTab("dub")}
          style={[styles.switchBtn, tab === "dub" && styles.switchBtnActive]}
        >
          <Ionicons name="tv-outline" size={14}
            color={tab === "dub" ? "#7C3AED" : "rgba(255,255,255,0.4)"} />
          <Text style={[styles.switchText, tab === "dub" && styles.switchTextActivePurple]}>
            كرتون مدبلج
          </Text>
        </Pressable>
      </View>

      {/* المحتوى */}
      {tab === "anim" ? <AwSection /> : <DubSection />}
    </View>
  );
}

/* ═══════════════════════════════════════════════════════════
   الأنماط
════════════════════════════════════════════════════════════*/
const styles = StyleSheet.create({
  container:    { flex: 1, backgroundColor: "#09090B" },
  header:       { flexDirection: "row", alignItems: "center", paddingHorizontal: 16,
                  paddingTop: 12, paddingBottom: 8, borderBottomWidth: 1,
                  borderBottomColor: "rgba(255,255,255,0.05)" },
  headerTitle:  { color: "#fff", fontSize: 18, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  headerSub:    { color: "rgba(255,255,255,0.35)", fontSize: 11, fontFamily: "Cairo_400Regular" },

  /* Switcher */
  switcher:     { flexDirection: "row", marginHorizontal: 14, marginVertical: 10, gap: 8 },
  switchBtn:    { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center",
                  gap: 6, paddingVertical: 9, borderRadius: 12,
                  backgroundColor: "rgba(255,255,255,0.04)",
                  borderWidth: 1, borderColor: "rgba(255,255,255,0.07)" },
  switchBtnActive: { backgroundColor: "rgba(255,255,255,0.07)",
                     borderColor: "rgba(255,255,255,0.14)" },
  switchText:   { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.4)" },
  switchTextActive:       { color: "#10B981" },
  switchTextActivePurple: { color: "#8B5CF6" },

  /* Search */
  searchRow:    { flexDirection: "row", justifyContent: "flex-end", paddingHorizontal: 12,
                  paddingBottom: 6 },
  searchBtn:    { width: 34, height: 34, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                  borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
                  alignItems: "center", justifyContent: "center" },
  searchBox:    { flexDirection: "row", alignItems: "center", marginHorizontal: 12, marginBottom: 8,
                  backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12,
                  borderWidth: 1, borderColor: "rgba(255,255,255,0.10)", paddingVertical: 10 },
  searchInput:  { flex: 1, color: "#fff", fontSize: 14,
                  fontFamily: "Cairo_400Regular", textAlign: "right", paddingRight: 8 },

  /* Grid + Cards */
  grid:         { padding: 12, paddingBottom: 100, gap: 10 },
  card:         { borderRadius: 12, overflow: "hidden" },
  cardPoster:   { aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)",
                  borderRadius: 12, overflow: "hidden" },
  cardPlaceholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  cardLabel:    { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  cardTitle:    { color: "#fff", fontSize: 10, fontWeight: "700",
                  fontFamily: "Cairo_700Bold", lineHeight: 14 },
  cardSeasons:  { color: "rgba(255,255,255,0.5)", fontSize: 9, fontFamily: "Cairo_400Regular" },

  /* Empty / loading */
  center:       { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText:    { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});
