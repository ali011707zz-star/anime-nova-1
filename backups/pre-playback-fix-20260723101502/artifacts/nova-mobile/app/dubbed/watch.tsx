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

export default function DubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const topPad = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, title, ep, season, poster, at } = useLocalSearchParams<{
    epUrl: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const [sources, setSources]  = useState<PlayerSource[]>([]);
  const [loading, setLoading]  = useState(true);
  const [error, setError]      = useState<string | null>(null);
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

      if (!rawUrl && !proxyUrl) {
        setError("لم يُعثر على مصدر فيديو لهذه الحلقة");
        setLoading(false);
        return;
      }

      // foupix CDN يتحقق من UA-hash في الـ token ضد الـ User-Agent الذي أنتجه (سيرفر UA).
      // الموبايل يستخدم UA مختلف → يجب استخدام proxy السيرفر (/api/dubbed/stream) الذي يبثّ بنفس UA.
      const srcs: PlayerSource[] = [];
      if (proxyUrl) {
        // المصدر الرئيسي: server-side proxy يتجاوز UA-hash مشكلة foupix
        srcs.push({ url: proxyUrl, label: "مدبلج عربي", quality: "720p HD" });
      }
      if (rawUrl && rawUrl !== proxyUrl) {
        // احتياطي: rawUrl مباشر (قد يفشل بسبب UA مختلف)
        srcs.push({ url: rawUrl, label: "مدبلج عربي (مباشر)", quality: "720p HD", headers: {
          Referer: "https://www.arabic-toons.com/",
          Origin: "https://www.arabic-toons.com",
        }});
      }
      setSources(srcs);
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
      onError={() => {
        setError("فشل تشغيل الفيديو — جرّب مصدراً آخر أو أعد المحاولة");
        setSources([]);
      }}
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
});
