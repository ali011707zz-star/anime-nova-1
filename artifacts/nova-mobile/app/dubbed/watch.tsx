import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, ActivityIndicator,
  StyleSheet, Platform, Alert,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { Video, ResizeMode } from "expo-av";
import { getBaseUrl } from "@/utils/api";

const BASE = getBaseUrl();

export default function DubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, title, ep, season, poster, at } = useLocalSearchParams<{
    epUrl: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const [hlsUrl, setHlsUrl] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const videoRef = useRef<any>(null);
  const mountedRef = useRef(true);

  const atIds = at ? at.split(",") : [];

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null);

    const cacheKey = `dubbed-src-${epUrl}`;
    try {
      const r = await fetch(`${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setLoading(false); return; }
      const d = await r.json();
      if (!d.hlsUrl) { setError("لم يُعثر على مصدر الفيديو"); setLoading(false); return; }
      const fullUrl = d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl;
      setHlsUrl(fullUrl);
      setLoading(false);
    } catch (e: any) {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال");
      setLoading(false);
    }
  }, [epUrl]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => { mountedRef.current = false; };
  }, [loadSource]);

  const saveProgress = useCallback(async (positionMillis: number) => {
    if (!atIds[0] || !ep) return;
    const k = `dubbed-wp-${atIds[0]}-${ep}`;
    try {
      const { AsyncStorage } = await import("@react-native-async-storage/async-storage");
      await AsyncStorage.setItem(k, String(Math.floor(positionMillis / 1000)));
    } catch {}
  }, [atIds, ep]);

  const handlePlaybackStatus = useCallback((status: any) => {
    if (status.isLoaded && status.positionMillis > 0) {
      saveProgress(status.positionMillis);
    }
  }, [saveProgress]);

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <Pressable onPress={() => router.back()} style={styles.backBtn}>
          <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <View style={{ flex: 1 }}>
          <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
          <Text style={styles.headerSub}>{season} · الحلقة {ep}</Text>
        </View>
      </View>

      {/* Player */}
      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator color="#7C3AED" size="large" />
          <Text style={styles.loadingText}>جاري تحميل الحلقة...</Text>
        </View>
      ) : error ? (
        <View style={styles.center}>
          <View style={styles.errorIcon}>
            <Ionicons name="alert-circle" size={36} color="#f87171" />
          </View>
          <Text style={styles.errorText}>{error}</Text>
          <Pressable onPress={loadSource} style={styles.retryBtn}>
            <Ionicons name="refresh" size={16} color="#A78BFA" />
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      ) : hlsUrl ? (
        <View style={{ flex: 1 }}>
          <Video
            ref={videoRef}
            source={{ uri: hlsUrl }}
            style={styles.video}
            resizeMode={ResizeMode.CONTAIN}
            useNativeControls
            shouldPlay
            onPlaybackStatusUpdate={handlePlaybackStatus}
          />
          {/* Info */}
          <View style={styles.infoPanel}>
            <Text style={styles.infoTitle}>{title}</Text>
            <Text style={styles.infoSub}>{season} · الحلقة {ep}</Text>
            <View style={styles.sourceTag}>
              <Text style={styles.sourceTagText}>📺 مصدر: arabic-toons.com · مدبلج للعربية</Text>
            </View>
          </View>
        </View>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#000" },
  header: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingTop: 12, paddingBottom: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  backBtn: {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.05)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.08)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: { color: "#fff", fontSize: 13, fontWeight: "700", fontFamily: "Cairo_700Bold" },
  headerSub: { color: "rgba(255,255,255,0.4)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  video: { width: "100%", aspectRatio: 16 / 9, backgroundColor: "#000" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 14, padding: 24 },
  loadingText: { color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_400Regular" },
  errorIcon: {
    width: 64, height: 64, borderRadius: 32,
    backgroundColor: "rgba(239,68,68,0.1)",
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)",
    alignItems: "center", justifyContent: "center",
  },
  errorText: { color: "rgba(255,255,255,0.6)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  retryBtn: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 20, paddingVertical: 10,
    backgroundColor: "rgba(124,58,237,0.15)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(124,58,237,0.3)",
  },
  retryText: { color: "#A78BFA", fontFamily: "Cairo_700Bold" },
  infoPanel: { padding: 16 },
  infoTitle: { color: "#fff", fontSize: 16, fontWeight: "900", fontFamily: "Cairo_700Bold" },
  infoSub: { color: "rgba(255,255,255,0.5)", fontSize: 12, fontFamily: "Cairo_400Regular", marginTop: 2 },
  sourceTag: {
    marginTop: 12, paddingHorizontal: 12, paddingVertical: 8,
    backgroundColor: "rgba(124,58,237,0.1)",
    borderRadius: 10, borderWidth: 1, borderColor: "rgba(124,58,237,0.2)",
  },
  sourceTagText: { color: "#A78BFA", fontSize: 12, fontFamily: "Cairo_400Regular" },
});
