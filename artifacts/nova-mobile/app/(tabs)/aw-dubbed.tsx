/**
 * (tabs)/aw-dubbed.tsx — تبويب "رسوم متحركة مدبلجة"
 * يجمع قسمين بتبويبين داخليين:
 *   • أنيميشن — أنيميشن مدبلج (aw_links / Supabase)
 *   • كرتون   — كرتون مدبلج عربي (arabic-toons)
 */
import React, { useState, useEffect, useCallback, useRef } from "react";
import {
  View, Text, Pressable, TextInput, FlatList, Image,
  ActivityIndicator, StyleSheet, Platform, Animated, Easing,
  useWindowDimensions,
} from "react-native";
import { LinearGradient } from "expo-linear-gradient";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";

// ─────────────────────────────────────────────────────────
// Types
// ─────────────────────────────────────────────────────────

interface AwSeason  { label: string; animeId: string }
interface AwSeries  {
  key: string; title: string; titleAr?: string; poster?: string;
  seasons: AwSeason[];
}

interface DubbedSeason  { label: string; arabicToonsId: string }
interface DubbedSeries  {
  key: string; title: string; image?: string; poster?: string;
  seasons: DubbedSeason[]; tmdbId?: number; slug?: string;
}

type TabKey = "animation" | "cartoon";
function gridColumnsForWidth(width: number) {
  return width >= 1000 ? 6 : width >= 700 ? 5 : 3;
}

// ─────────────────────────────────────────────────────────
// Shared card helpers
// ─────────────────────────────────────────────────────────

function PosterCard({ uri, title, seasons, tint, onPress }: {
  uri: string | null; title: string; seasons: number;
  tint: string; onPress: () => void;
}) {
  const [imgErr, setImgErr] = useState(false);
  const show = !imgErr && !!uri;
  return (
    <Pressable onPress={onPress} style={({ pressed }) => [card.wrap, { opacity: pressed ? 0.72 : 1 }]}>
      <View style={card.poster}>
        {show ? (
          <Image source={{ uri: uri! }} style={StyleSheet.absoluteFill} resizeMode="cover"
            onError={() => setImgErr(true)} />
        ) : (
          <View style={[card.placeholder, { backgroundColor: `${tint}18` }]}>
            <Text style={{ fontSize: 22 }}>🎬</Text>
          </View>
        )}
        <LinearGradient colors={["transparent", "rgba(0,0,0,0.88)"]}
          style={StyleSheet.absoluteFill} pointerEvents="none" />
        <View style={card.label}>
          <Text style={card.title} numberOfLines={2}>{title}</Text>
          {seasons > 1 && (
            <Text style={[card.seasons, { color: `${tint}99` }]}>{seasons} مواسم</Text>
          )}
        </View>
      </View>
    </Pressable>
  );
}

// ─────────────────────────────────────────────────────────
// أنيميشن مدبلج list
// ─────────────────────────────────────────────────────────

function AnimationList({ searchQ }: { searchQ: string }) {
  const { width } = useWindowDimensions();
  const columns = gridColumnsForWidth(width);
  const router = useRouter();
  const BASE = getBaseUrl();
  const [series,      setSeries]      = useState<AwSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchRes,   setSearchRes]   = useState<AwSeries[]>([]);
  const [searchLoad,  setSearchLoad]  = useState(false);
  const ctrlRef = useRef<AbortController | null>(null);
  const timer   = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) {
      ctrlRef.current?.abort();
      ctrlRef.current = new AbortController();
    }
    const ctrl = reset ? ctrlRef.current! : new AbortController();
    reset ? setLoading(true) : setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/aw-dubbed/catalog?page=${p}`, { signal: ctrl.signal });
      const d = await r.json();
      if (ctrl.signal.aborted) return;
      setSeries(prev => reset ? (d.results || []) : [...prev, ...(d.results || [])]);
      setTotalPages(d.totalPages || 1);
      setPage(p);
    } catch (e: any) { if (e?.name === "AbortError") return; }
    if (!ctrlRef.current?.signal.aborted) { setLoading(false); setLoadingMore(false); }
  }, [BASE]);

  useEffect(() => { loadPage(1, true); }, [loadPage]);

  useEffect(() => {
    const q = searchQ.trim();
    if (q.length < 2) { setSearchRes([]); return; }
    setSearchLoad(true);
    if (timer.current) clearTimeout(timer.current);
    const ctrl = new AbortController();
    timer.current = setTimeout(async () => {
      try {
        const r = await fetch(`${BASE}/api/aw-dubbed/catalog?q=${encodeURIComponent(q)}&page=1`, { signal: ctrl.signal });
        const d = await r.json();
        setSearchRes(d.results || []);
      } catch (e: any) {
        if (e?.name !== "AbortError") setSearchRes([]);
      }
      if (!ctrl.signal.aborted) setSearchLoad(false);
    }, 400);
    return () => { if (timer.current) clearTimeout(timer.current); ctrl.abort(); };
  }, [searchQ, BASE]);

  const openDetail = (s: AwSeries) => {
    router.push({
      pathname: "/aw-dubbed/[key]",
      params: {
        key:     encodeURIComponent(s.key),
        title:   s.title,
        titleAr: s.titleAr || "",
        seasons: encodeURIComponent(JSON.stringify(s.seasons)),
        poster:  encodeURIComponent(s.poster || ""),
      },
    });
  };

  const displayList = searchQ.trim().length >= 2 ? searchRes : series;

  if (loading) return (
    <View style={shared.center}>
      <ActivityIndicator color="#10B981" size="large" />
    </View>
  );

  return (
    <FlatList
      data={displayList}
      key={`aw-animation-grid-${columns}`}
      keyExtractor={item => item.key}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap: 10 }}
      renderItem={({ item }) => (
        <View style={{ flex: 1 / columns }}>
          <PosterCard
            uri={item.poster || null}
            title={item.titleAr || item.title}
            seasons={item.seasons.length}
            tint="#10B981"
            onPress={() => openDetail(item)}
          />
        </View>
      )}
      onEndReached={() => {
        if (!searchQ && !loadingMore && page < totalPages) loadPage(page + 1);
      }}
      onEndReachedThreshold={0.3}
      ListFooterComponent={loadingMore ? <ActivityIndicator color="#10B981" style={{ marginVertical: 16 }} /> : null}
      ListEmptyComponent={
        <View style={shared.center}>
          <Text style={shared.emptyText}>
            {searchQ.length >= 2
              ? (searchLoad ? "جاري البحث..." : "لا توجد نتائج")
              : "لا يوجد محتوى"}
          </Text>
        </View>
      }
    />
  );
}

// ─────────────────────────────────────────────────────────
// كرتون مدبلج list
// ─────────────────────────────────────────────────────────

function dubbedImgUri(s: DubbedSeries, base: string): string | null {
  const img = s.poster || s.image;
  if (!img) return null;
  if (img.startsWith("http")) return img;
  if (img.startsWith("/api/dubbed/img")) return `${base}${img}`;
  const f = img.split("?f=")[1] || img.split("/").pop();
  return f ? `${base}/api/dubbed/img?f=${f}` : null;
}

function CartoonList({ searchQ }: { searchQ: string }) {
  const { width } = useWindowDimensions();
  const columns = gridColumnsForWidth(width);
  const router = useRouter();
  const BASE = getBaseUrl();
  const [series,      setSeries]      = useState<DubbedSeries[]>([]);
  const [page,        setPage]        = useState(1);
  const [totalPages,  setTotalPages]  = useState(1);
  const [loading,     setLoading]     = useState(false);
  const [loadingMore, setLoadingMore] = useState(false);
  const [searchRes,   setSearchRes]   = useState<DubbedSeries[]>([]);
  const [searchLoad,  setSearchLoad]  = useState(false);
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null);

  const loadPage = useCallback(async (p: number, reset = false) => {
    if (reset) setLoading(true); else setLoadingMore(true);
    try {
      const r = await fetch(`${BASE}/api/dubbed/catalog?page=${p}`);
      const d = await r.json();
      setSeries(prev => reset ? (d.results || []) : [...prev, ...(d.results || [])]);
      setTotalPages(d.totalPages || 1);
      setPage(p);
    } catch {}
    setLoading(false);
    setLoadingMore(false);
  }, [BASE]);

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
  }, [searchQ, BASE]);

  const openDetail = (s: DubbedSeries) => {
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

  if (loading) return (
    <View style={shared.center}>
      <ActivityIndicator color="#7C3AED" size="large" />
    </View>
  );

  return (
    <FlatList
      data={displayList}
      key={`aw-cartoon-grid-${columns}`}
      keyExtractor={item => item.key || item.title}
      numColumns={columns}
      contentContainerStyle={shared.grid}
      columnWrapperStyle={{ gap: 10 }}
      renderItem={({ item }) => (
        <View style={{ flex: 1 / columns }}>
          <PosterCard
            uri={dubbedImgUri(item, BASE)}
            title={item.title}
            seasons={item.seasons.length}
            tint="#7C3AED"
            onPress={() => openDetail(item)}
          />
        </View>
      )}
      onEndReached={() => {
        if (!searchQ && !loadingMore && page < totalPages) loadPage(page + 1);
      }}
      onEndReachedThreshold={0.3}
      ListFooterComponent={loadingMore ? <ActivityIndicator color="#7C3AED" style={{ marginVertical: 16 }} /> : null}
      ListEmptyComponent={
        <View style={shared.center}>
          <Text style={shared.emptyText}>
            {searchQ.length >= 2
              ? (searchLoad ? "جاري البحث..." : "لا توجد نتائج")
              : "لا توجد مسلسلات"}
          </Text>
        </View>
      }
    />
  );
}

// ─────────────────────────────────────────────────────────
// Main Screen
// ─────────────────────────────────────────────────────────

export default function DubbedTabScreen() {
  const insets = useSafeAreaInsets();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const [activeTab, setActiveTab] = useState<TabKey>("animation");
  const [searchOpen, setSearchOpen] = useState(false);
  const [searchQ,    setSearchQ]    = useState("");
  const searchInput = useRef<TextInput>(null);

  // Tab underline slide animation
  const slideAnim = useRef(new Animated.Value(0)).current;
  const handleTab = (tab: TabKey) => {
    if (tab === activeTab) return;
    setActiveTab(tab);
    setSearchQ("");
    Animated.timing(slideAnim, {
      toValue: tab === "animation" ? 0 : 1,
      duration: 220,
      easing: Easing.out(Easing.cubic),
      useNativeDriver: false,
    }).start();
  };

  const tint = activeTab === "animation" ? "#10B981" : "#7C3AED";

  return (
    <View style={[s.screen, { paddingTop: topPad }]}>
      {/* ── Header ── */}
      <View style={s.header}>
        <View style={{ flex: 1 }}>
          <Text style={s.headerTitle}>رسوم متحركة مدبلجة</Text>
          <Text style={s.headerSub}>
            {activeTab === "animation" ? "أنيميشن مدبلج بالعربية" : "كرتون مدبلج للعربية"}
          </Text>
        </View>
        <Pressable
          onPress={() => {
            const open = !searchOpen;
            setSearchOpen(open);
            if (open) setTimeout(() => searchInput.current?.focus(), 120);
            else setSearchQ("");
          }}
          style={[s.iconBtn, searchOpen && { backgroundColor: "rgba(139,92,246,0.20)", borderColor: "rgba(139,92,246,0.35)" }]}
        >
          <Ionicons name={searchOpen ? "close" : "search"} size={18} color="rgba(255,255,255,0.7)" />
        </Pressable>
      </View>

      {/* ── Inner tabs ── */}
      <View style={s.tabsRow}>
        {(["animation", "cartoon"] as TabKey[]).map(tab => {
          const active = activeTab === tab;
          const color  = tab === "animation" ? "#10B981" : "#7C3AED";
          return (
            <Pressable key={tab} onPress={() => handleTab(tab)}
              style={[s.tabBtn, active && { borderColor: `${color}55`, backgroundColor: `${color}12` }]}>
              <Text style={[s.tabText, active && { color }]}>
                {tab === "animation" ? "✨ أنيميشن" : "📺 كرتون"}
              </Text>
            </Pressable>
          );
        })}
      </View>

      {/* ── Search ── */}
      {searchOpen && (
        <View style={s.searchBox}>
          <Ionicons name="search" size={16} color="rgba(255,255,255,0.3)" style={{ marginLeft: 8 }} />
          <TextInput
            ref={searchInput}
            value={searchQ}
            onChangeText={setSearchQ}
            placeholder={activeTab === "animation" ? "ابحث في الأنيميشن المدبلج..." : "ابحث في الكرتون المدبلج..."}
            placeholderTextColor="rgba(255,255,255,0.3)"
            style={s.searchInput}
            autoFocus
          />
          {searchQ ? (
            <Pressable onPress={() => setSearchQ("")} style={{ marginRight: 8 }}>
              <Ionicons name="close-circle" size={18} color="rgba(255,255,255,0.4)" />
            </Pressable>
          ) : null}
        </View>
      )}

      {/* ── Content ── */}
      {activeTab === "animation"
        ? <AnimationList key="animation" searchQ={searchQ} />
        : <CartoonList   key="cartoon"   searchQ={searchQ} />
      }
    </View>
  );
}

// ─────────────────────────────────────────────────────────
// Styles
// ─────────────────────────────────────────────────────────

const s = StyleSheet.create({
  screen:       { flex: 1, backgroundColor: "#09090B" },
  header:       {
    flexDirection: "row", alignItems: "center",
    paddingHorizontal: 16, paddingTop: 14, paddingBottom: 10,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  headerTitle:  { color: "#fff", fontSize: 18, fontFamily: "Cairo_800ExtraBold" },
  headerSub:    { color: "rgba(255,255,255,0.35)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  iconBtn:      {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  tabsRow: {
    flexDirection: "row", gap: 10,
    paddingHorizontal: 16, paddingVertical: 10,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  tabBtn: {
    flex: 1, paddingVertical: 8, borderRadius: 14, alignItems: "center",
    backgroundColor: "rgba(255,255,255,0.04)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.07)",
  },
  tabText: {
    fontSize: 13, fontFamily: "Cairo_700Bold",
    color: "rgba(255,255,255,0.38)",
  },
  searchBox: {
    flexDirection: "row", alignItems: "center",
    marginHorizontal: 16, marginBottom: 8, marginTop: 4,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    paddingVertical: 10,
  },
  searchInput: {
    flex: 1, color: "#fff", fontSize: 14,
    fontFamily: "Cairo_400Regular", textAlign: "right", paddingRight: 8,
  },
});

const shared = StyleSheet.create({
  grid:       { padding: 12, paddingBottom: 110, gap: 10 },
  center:     { flex: 1, alignItems: "center", justifyContent: "center", paddingVertical: 60 },
  emptyText:  { color: "rgba(255,255,255,0.3)", fontFamily: "Cairo_400Regular" },
});

const card = StyleSheet.create({
  wrap:        { borderRadius: 12, overflow: "hidden" },
  poster:      { aspectRatio: 2 / 3, backgroundColor: "rgba(255,255,255,0.05)", borderRadius: 12, overflow: "hidden" },
  placeholder: { flex: 1, alignItems: "center", justifyContent: "center" },
  label:       { position: "absolute", bottom: 0, left: 0, right: 0, padding: 6 },
  title:       { color: "#fff", fontSize: 10, fontFamily: "Cairo_700Bold", lineHeight: 14 },
  seasons:     { fontSize: 9, fontFamily: "Cairo_400Regular" },
});
