import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, ActivityIndicator,
  StyleSheet, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { getBaseUrl } from "@/utils/api";
import WebView from "react-native-webview";

export default function DubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, title, ep, season, poster, at } = useLocalSearchParams<{
    epUrl: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const [sources, setSources]         = useState<PlayerSource[]>([]);
  const [loading, setLoading]         = useState(true);
  const [error, setError]             = useState<string | null>(null);
  const [webViewUrl, setWebViewUrl]   = useState<string | null>(null);
  const mountedRef = useRef(true);

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null); setWebViewUrl(null);

    const BASE = getBaseUrl();
    try {
      const r = await fetch(`${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`);
      if (!mountedRef.current) return;
      if (!r.ok) {
        /* محاولة فتح الحلقة مباشرة عبر WebView */
        setWebViewUrl(decodeURIComponent(epUrl));
        setLoading(false);
        return;
      }
      const d = await r.json();
      const rawUrl   = typeof d.rawUrl  === "string" ? d.rawUrl  : null;
      const proxyUrl = typeof d.hlsUrl  === "string"
        ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
        : null;

      if (!rawUrl && !proxyUrl) {
        /* المصدر المباشر فشل — ارجع للـ WebView */
        setWebViewUrl(decodeURIComponent(epUrl));
        setLoading(false);
        return;
      }

      // foupix CDN يربط التوكن بـ IP الخادم وقت جلب الصفحة،
      // أي جهاز يُرسَل له rawUrl مباشرة سيحصل على 403 لأن IP الهاتف ≠ IP الخادم.
      const streamUrl = proxyUrl ?? rawUrl!;
      setSources([{
        url: streamUrl,
        label: title || "مدبلج عربي",
        quality: "720p HD",
      }]);
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      /* عند أي خطأ في الشبكة — ارجع للـ WebView */
      setWebViewUrl(decodeURIComponent(epUrl));
      setLoading(false);
    }
  }, [epUrl, title]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => { mountedRef.current = false; };
  }, [loadSource]);

  /* ── Loading ── */
  if (loading) {
    return (
      <View style={[styles.container, { paddingTop: topPad }]}>
        <View style={styles.header}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
            <Text style={styles.headerSub}>{season} · الحلقة {ep}</Text>
          </View>
        </View>
        <View style={styles.center}>
          <ActivityIndicator color="#7C3AED" size="large" />
          <Text style={styles.loadingText}>جاري تحميل الحلقة...</Text>
        </View>
      </View>
    );
  }

  /* ── WebView fallback (when direct source fails or is unavailable) ── */
  if (webViewUrl) {
    if (Platform.OS === "web") {
      return (
        <View style={[styles.container, { paddingTop: topPad }]}>
          <View style={styles.header}>
            <Pressable onPress={() => router.back()} style={styles.backBtn}>
              <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
            </Pressable>
            <View style={{ flex: 1 }}>
              <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
              <Text style={styles.headerSub}>{season} · الحلقة {ep}</Text>
            </View>
          </View>
          <View style={styles.center}>
            <View style={styles.webIcon}>
              <Ionicons name="globe-outline" size={32} color="#8B5CF6" />
            </View>
            <Text style={styles.webTitle}>مشاهدة عبر الموقع</Text>
            <Text style={styles.webSub}>هذه الحلقة تعمل على تطبيق الجهاز فقط</Text>
          </View>
        </View>
      );
    }
    return (
      <View style={{ flex: 1, backgroundColor: "#000" }}>
        {/* Header floating above WebView */}
        <View style={[styles.webHeader, { paddingTop: topPad + 4 }]}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="chevron-forward" size={18} color="rgba(255,255,255,0.8)" />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
            <Text style={styles.headerSub}>{season} · الحلقة {ep}</Text>
          </View>
          <Pressable onPress={loadSource} style={styles.retryIconBtn}>
            <Ionicons name="refresh" size={16} color="#A78BFA" />
          </Pressable>
        </View>
        <WebView
          source={{ uri: webViewUrl }}
          style={{ flex: 1 }}
          allowsFullscreenVideo
          allowsInlineMediaPlayback
          mediaPlaybackRequiresUserAction={false}
          javaScriptEnabled
          domStorageEnabled
          scalesPageToFit
        />
      </View>
    );
  }

  /* ── Error (no WebView URL and no direct source) ── */
  if (error || sources.length === 0) {
    return (
      <View style={[styles.container, { paddingTop: topPad }]}>
        <View style={styles.header}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
            <Text style={styles.headerSub}>{season} · الحلقة {ep}</Text>
          </View>
        </View>
        <View style={styles.center}>
          <View style={styles.errorIcon}>
            <Ionicons name="alert-circle" size={36} color="#f87171" />
          </View>
          <Text style={styles.errorText}>{error || "لم يُعثر على مصدر"}</Text>
          <Pressable onPress={loadSource} style={styles.retryBtn}>
            <Ionicons name="refresh" size={16} color="#A78BFA" />
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  /* ── RiftPlayer (native) ── */
  return (
    <RiftPlayer
      sources={sources}
      title={`${title || ""} · ${season || ""}`}
      episode={ep ? parseInt(ep, 10) : undefined}
      onBack={() => router.back()}
    />
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: "#000" },
  header: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 16, paddingTop: 12, paddingBottom: 12,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)",
  },
  webHeader: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 14, paddingBottom: 10,
    backgroundColor: "rgba(7,7,13,0.92)",
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
    zIndex: 10,
  },
  backBtn: {
    width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    alignItems: "center", justifyContent: "center",
  },
  retryIconBtn: {
    width: 34, height: 34, borderRadius: 10,
    backgroundColor: "rgba(124,58,237,0.15)",
    borderWidth: 1, borderColor: "rgba(124,58,237,0.28)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: { color: "#fff", fontSize: 13, fontWeight: "700", fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  headerSub: { color: "rgba(255,255,255,0.4)", fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  center: { flex: 1, alignItems: "center", justifyContent: "center", gap: 14, padding: 24 },
  loadingText: { color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_400Regular" },
  webIcon: {
    width: 70, height: 70, borderRadius: 35,
    backgroundColor: "rgba(109,40,217,0.15)",
    borderWidth: 1, borderColor: "rgba(139,92,246,0.28)",
    alignItems: "center", justifyContent: "center",
  },
  webTitle: { color: "rgba(255,255,255,0.8)", fontFamily: "Cairo_700Bold", fontSize: 15, textAlign: "center" },
  webSub: { color: "rgba(255,255,255,0.35)", fontFamily: "Cairo_400Regular", fontSize: 12, textAlign: "center" },
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
});
