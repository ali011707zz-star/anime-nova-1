import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, ActivityIndicator,
  StyleSheet, Platform,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { getBaseUrl } from "@/utils/api";
import { openNovaPlayer } from "@/utils/externalPlayer";

export default function DubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, title, ep, season, poster, at } = useLocalSearchParams<{
    epUrl: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const [loading, setLoading]  = useState(true);
  const [error, setError]      = useState<string | null>(null);
  const [externalOpened, setExternalOpened] = useState(false);
  const mountedRef = useRef(true);

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    setLoading(true); setError(null);

    const BASE = getBaseUrl();
    try {
      const r = await fetch(`${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`);
      if (!mountedRef.current) return;
      if (!r.ok) {
        setError("تعذّر جلب مصدر الفيديو — حاول مرة أخرى");
        setLoading(false);
        return;
      }
      const d = await r.json();
      const rawUrl   = typeof d.rawUrl  === "string" ? d.rawUrl  : null;
      const proxyUrl = typeof d.hlsUrl  === "string"
        ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
        : null;
      const sourceType = typeof d.type === "string" ? d.type.toLowerCase() : "";

      if (!rawUrl && !proxyUrl) {
        setError("لم يُعثر على مصدر فيديو لهذه الحلقة");
        setLoading(false);
        return;
      }

      // foupix يحجب طلبات الـ VPS، بينما هاتف المستخدم يخرج من IP سكني مسموح.
      // لذلك جرّب الرابط الخام من الهاتف أولاً، ثم استخدم proxy الخادم كاحتياطي.
      const playUrl = sourceType === "hls"
        ? (proxyUrl || rawUrl)
        : (rawUrl || proxyUrl);
      if (!playUrl) throw new Error("missing playback URL");
      if (Platform.OS === "web") {
        setError("NOVA Player الخارجي متاح على Android فقط");
        setLoading(false);
        return;
      }
      const opened = await openNovaPlayer(playUrl);
      if (!opened) {
        setError("تعذّر فتح NOVA Player — تأكد من تثبيت التطبيق");
        setLoading(false);
        return;
      }
      setExternalOpened(true);
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال — تحقق من الشبكة وأعد المحاولة");
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

  /* ── Error ── */
  if (error) {
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

  if (externalOpened) {
    return (
      <View style={[styles.container, { paddingTop: topPad }]}>
        <View style={styles.header}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="chevron-forward" size={20} color="rgba(255,255,255,0.7)" />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle} numberOfLines={1}>{title}</Text>
            <Text style={styles.headerSub}>{season} · الحلقة {ep} · NOVA Player الخارجي</Text>
          </View>
        </View>
        <View style={styles.center}>
          <View style={styles.externalIcon}>
            <Ionicons name="open-outline" size={32} color="#c4b5fd" />
          </View>
          <Text style={styles.externalTitle}>تم فتح NOVA Player</Text>
          <Text style={styles.errorText}>اضغط رجوع داخل NOVA Player للعودة إلى تطبيق NOVA.</Text>
          <Pressable onPress={loadSource} style={styles.retryBtn}>
            <Ionicons name="refresh" size={16} color="#A78BFA" />
            <Text style={styles.retryText}>إعادة فتح المشغل</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  /* كل مصادر الكرتون المدبلج تُفتح في NOVA Player الخارجي. */
  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      <View style={styles.center}><ActivityIndicator color="#7C3AED" size="large" /></View>
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
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    alignItems: "center", justifyContent: "center",
  },
  headerTitle: { color: "#fff", fontSize: 13, fontWeight: "700", fontFamily: "Cairo_700Bold", textAlign: "right", writingDirection: "rtl" },
  headerSub: { color: "rgba(255,255,255,0.4)", fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
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
  externalIcon: { width: 70, height: 70, borderRadius: 35, backgroundColor: "rgba(139,92,246,0.12)", borderWidth: 1, borderColor: "rgba(167,139,250,0.24)", alignItems: "center", justifyContent: "center" },
  externalTitle: { color: "#c4b5fd", fontSize: 17, fontFamily: "Cairo_700Bold" },
});
