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
  /* تخزين AbortController في ref حتى يمكن إلغاؤه عند unmount أو retry */
  const ctrlRef = useRef<AbortController | null>(null);

  /** استخراج رابط الفيديو من HTML صفحة arabic-toons.com — نفس patterns الباكند */
  function extractVideoFromHtml(html: string, base: string): string | null {
    // Pattern 1: videoSrc = "https://stream.foupix.com:8443/...mp4?tkn=..."
    const m1 = html.match(/(?:const\s+)?videoSrc\s*=\s*["']([^"']+(?:\.mp4|\.m3u8)[^"']*)["']/);
    if (m1) return m1[1].split('"')[0].split("'")[0];
    // Pattern 2: file: "https://....mp4"
    const m2 = html.match(/['"](https?:\/\/[^"']+\.mp4[^"']*)['"]/);
    if (m2) return m2[1];
    // Pattern 3: src="...m3u8"
    const m3 = html.match(/src=["']([^"']+\.m3u8[^"']*)["']/);
    if (m3) return m3[1].startsWith("/") ? `${base}${m3[1]}` : m3[1];
    return null;
  }

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    ctrlRef.current?.abort();
    const ctrl = new AbortController();
    ctrlRef.current = ctrl;
    setLoading(true); setError(null);

    const BASE = getBaseUrl();

    // ── الطريقة الأولى: الموبايل يجلب صفحة arabic-toons.com مباشرة (IP سكني لا يُحجب) ──
    // هذا يتجاوز مشكلة حجب VPS بواسطة arabic-toons.com
    try {
      const pageR = await fetch(epUrl, {
        signal: ctrl.signal,
        headers: {
          "User-Agent": "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.6367.82 Mobile Safari/537.36",
          Referer: "https://www.arabic-toons.com/",
          Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
          "Accept-Language": "ar,en-US;q=0.9,en;q=0.8",
        },
      });
      if (ctrl.signal.aborted) return;
      if (pageR.ok) {
        const html = await pageR.text();
        if (ctrl.signal.aborted) return;
        const videoUrl = extractVideoFromHtml(html, "https://www.arabic-toons.com");
        if (videoUrl) {
          const srcs: PlayerSource[] = [{
            url: videoUrl,
            label: "مدبلج عربي (مباشر)",
            quality: "720p HD",
            headers: {
              Referer: "https://www.arabic-toons.com/",
              Origin: "https://www.arabic-toons.com",
            },
          }];
          // أضف proxy السيرفر كاحتياطي
          const proxyUrl = `${BASE}/api/dubbed/stream?url=${encodeURIComponent(videoUrl)}`;
          srcs.push({ url: proxyUrl, label: "مدبلج عربي (احتياطي)", quality: "720p HD" });
          setSources(srcs);
          setLoading(false);
          return;
        }
      }
    } catch (e: any) {
      if (e?.name === "AbortError" || !mountedRef.current) return;
      // جلب الصفحة مباشرة فشل — نجرب السيرفر
    }

    // ── الطريقة الثانية (احتياطي): السيرفر يجلب الصفحة عبر الـ proxy ──
    try {
      const r = await fetch(`${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`, { signal: ctrl.signal });
      if (ctrl.signal.aborted) return;
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

      const srcs: PlayerSource[] = [];
      if (rawUrl) {
        srcs.push({ url: rawUrl, label: "مدبلج عربي (مباشر)", quality: "720p HD", headers: {
          Referer: "https://www.arabic-toons.com/",
          Origin: "https://www.arabic-toons.com",
        }});
      }
      if (proxyUrl && proxyUrl !== rawUrl) {
        srcs.push({ url: proxyUrl, label: "مدبلج عربي (احتياطي)", quality: "720p HD" });
      }
      setSources(srcs);
      setLoading(false);
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال — تحقق من الشبكة وأعد المحاولة");
      setLoading(false);
    }
  // title مُزال من deps — تغييره لا يستوجب إعادة الجلب
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [epUrl]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => {
      mountedRef.current = false;
      /* إلغاء الطلب المعلق عند مغادرة الشاشة — يمنع تسرب الذاكرة */
      ctrlRef.current?.abort();
    };
  }, [loadSource]);

  /* ── Loading ── */
  if (loading) {
    return (
      <View style={[styles.container, { paddingTop: topPad }]}>
        <View style={styles.header}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="chevron-back" size={20} color="rgba(255,255,255,0.7)" />
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
            <Ionicons name="chevron-back" size={20} color="rgba(255,255,255,0.7)" />
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
      /* يظل المشغل مفتوحاً بعد استنفاد المصادر كي تظهر أزرار إعادة المحاولة
         والمصدر التالي داخل RiftPlayer بدلاً من العودة المفاجئة للشاشة السابقة. */
      onError={() => {
        setSources([]);
        setError("تعذّر تشغيل مصدر المدبلج — حاول مرة أخرى");
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
