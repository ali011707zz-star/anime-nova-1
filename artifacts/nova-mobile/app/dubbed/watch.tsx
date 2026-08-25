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
import { ensureWatchAccess } from "@/utils/adPolicy";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";

export default function DubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const tvMode  = isTvDevice();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, title, ep, season } = useLocalSearchParams<{
    epUrl: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const [sources, setSources] = useState<PlayerSource[]>([]);
  const [loading, setLoading] = useState(true);
  const [error,   setError]   = useState<string | null>(null);
  const mountedRef = useRef(true);
  const ctrlRef    = useRef<AbortController | null>(null);

  /** استخراج رابط الفيديو من HTML — نفس patterns الباكند */
  function extractVideoFromHtml(html: string): string | null {
    // Pattern 1: videoSrc = "https://stream.foupix.com:8443/...mp4?tkn=..."
    const m1 = html.match(/(?:const\s+)?videoSrc\s*=\s*["']([^"']+(?:\.mp4|\.m3u8)[^"']*)["']/);
    if (m1) return m1[1].split('"')[0].split("'")[0];
    // Pattern 2: file: "https://....mp4"
    const m2 = html.match(/['"](https?:\/\/[^"']+\.mp4[^"']*)['"]/);
    if (m2) return m2[1];
    // Pattern 3: src="...m3u8"
    const m3 = html.match(/src=["']([^"']+\.m3u8[^"']*)["']/);
    if (m3) return m3[1];
    return null;
  }

  const loadSource = useCallback(async () => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    ctrlRef.current?.abort();
    const ctrl = new AbortController();
    ctrlRef.current = ctrl;
    setLoading(true); setError(null);

    const BASE = getBaseUrl();
    if (!(await ensureWatchAccess())) {
      if (mountedRef.current) {
        setError("شاهد الإعلان لفتح مشاهدة المدبلج لمدة 60 دقيقة");
        setLoading(false);
      }
      return;
    }

    // ── الطريقة الأولى: VPS API (يجلب الصفحة ويعيد rawUrl + proxyUrl) ──
    // الـ VPS يستطيع جلب arabic-toons.com بـ UA موبايل؛ الموبايل يشغّل rawUrl مباشرة
    try {
      const r = await fetch(
        `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`,
        { signal: ctrl.signal },
      );
      if (ctrl.signal.aborted || !mountedRef.current) return;
      if (r.ok) {
        const d = await r.json();
        if (ctrl.signal.aborted) return;

        const rawUrl   = typeof d.rawUrl  === "string" && d.rawUrl   ? d.rawUrl  : null;
        const proxyUrl = typeof d.hlsUrl  === "string" && d.hlsUrl   ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl) : null;

        if (rawUrl || proxyUrl) {
          const srcs: PlayerSource[] = [];
          /* الـ proxy VPS أولاً: foupix يتحقق من UA hash في الـ token.
             الـ token أُنشئ بـ BROWSER_UA (desktop Chrome) على VPS —
             ExoPlayer/AVPlayer يستخدم UA مختلف فيُعطي 403 على rawUrl.
             proxy VPS يُعيد stream بنفس BROWSER_UA → يعمل دائماً. */
          if (proxyUrl) srcs.push({
            url: proxyUrl, label: "مدبلج عربي", quality: "720p HD",
          });
          // المصدر المباشر احتياطي (IP سكني قد يمر بدون فحص UA)
          if (rawUrl && rawUrl !== proxyUrl) srcs.push({
            url: rawUrl,
            label: "مدبلج عربي (مباشر)",
            quality: "720p HD",
            headers: {
              Referer: "https://www.arabic-toons.com/",
              Origin:  "https://www.arabic-toons.com",
            },
          });
          if (mountedRef.current) { setSources(srcs); setLoading(false); }
          return;
        }
      }
    } catch (e: any) {
      if (e?.name === "AbortError" || !mountedRef.current) return;
      // VPS API فشل — نجرب الجلب المباشر من الموبايل
    }

    // ── الطريقة الثانية: الموبايل يجلب الصفحة مباشرة (IP سكني) ──
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
      if (ctrl.signal.aborted || !mountedRef.current) return;
      if (pageR.ok) {
        const html = await pageR.text();
        if (ctrl.signal.aborted) return;
        const videoUrl = extractVideoFromHtml(html);
        if (videoUrl) {
          const proxyUrl = `${BASE}/api/dubbed/stream?url=${encodeURIComponent(videoUrl)}`;
          const srcs: PlayerSource[] = [
            { url: videoUrl, label: "مدبلج عربي", quality: "720p HD", headers: { Referer: "https://www.arabic-toons.com/", Origin: "https://www.arabic-toons.com" } },
            { url: proxyUrl, label: "مدبلج عربي (احتياطي)", quality: "720p HD" },
          ];
          if (mountedRef.current) { setSources(srcs); setLoading(false); }
          return;
        }
      }
    } catch (e: any) {
      if (e?.name === "AbortError" || !mountedRef.current) return;
    }

    if (mountedRef.current) {
      setError("تعذّر جلب مصدر الفيديو — تحقق من الاتصال وأعد المحاولة");
      setLoading(false);
    }
  }, [epUrl]);

  useEffect(() => {
    mountedRef.current = true;
    loadSource();
    return () => {
      mountedRef.current = false;
      ctrlRef.current?.abort();
    };
  }, [loadSource]);

  /* ── Loading ── */
  if (loading) {
    return (
      <View style={[styles.container, { paddingTop: topPad }]}>
        <RewardedAdPrompt />
        <View style={styles.header}>
           <Pressable onPress={() => router.back()} focusable={tvMode}
             style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
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
        <RewardedAdPrompt />
        <View style={styles.header}>
           <Pressable onPress={() => router.back()} focusable={tvMode}
             style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
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
          <Pressable onPress={loadSource} focusable={tvMode}
            style={({ focused }) => [styles.retryBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="refresh" size={16} color="#A78BFA" />
            <Text style={styles.retryText}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  /* ── RiftPlayer ── */
  return (
    <>
      <RewardedAdPrompt />
      <RiftPlayer
        /* key فريد لكل حلقة — يمنع تراكم موارد native player عبر الحلقات (نفس إصلاح
           app/watch.tsx: بدونه router.replace لنفس /dubbed/watch لا يُعيد mount الشاشة). */
        key={epUrl || `${title}-${season}-${ep}`}
        sources={sources}
        title={`${title || ""} · ${season || ""}`}
        episode={ep ? parseInt(ep, 10) : undefined}
        onBack={() => router.back()}
        onError={() => {
          setSources([]);
          setError("تعذّر تشغيل مصدر المدبلج — حاول مرة أخرى");
        }}
      />
    </>
  );
}

const styles = StyleSheet.create({
  container:   { flex: 1, backgroundColor: "#000" },
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
  headerTitle: { color: "#fff", fontSize: 13, fontFamily: "Cairo_700Bold", textAlign: "right" },
  headerSub:   { color: "rgba(255,255,255,0.4)", fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "right" },
  center:      { flex: 1, alignItems: "center", justifyContent: "center", gap: 14, padding: 24 },
  loadingText: { color: "rgba(255,255,255,0.5)", fontFamily: "Cairo_400Regular" },
  errorIcon: {
    width: 64, height: 64, borderRadius: 32,
    backgroundColor: "rgba(239,68,68,0.1)",
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)",
    alignItems: "center", justifyContent: "center",
  },
  errorText:  { color: "rgba(255,255,255,0.6)", fontFamily: "Cairo_400Regular", textAlign: "center" },
  retryBtn: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 20, paddingVertical: 10,
    backgroundColor: "rgba(124,58,237,0.15)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(124,58,237,0.3)",
  },
  retryText: { color: "#A78BFA", fontFamily: "Cairo_700Bold" },
});
