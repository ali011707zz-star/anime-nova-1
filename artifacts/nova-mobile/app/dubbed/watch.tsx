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
import { getWatchContentId, useApp } from "@/context/AppContext";
import { ensureWatchAccess } from "@/utils/adPolicy";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";

export default function DubbedWatchScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const tvMode  = isTvDevice();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const { epUrl, series, title, ep, season, poster } = useLocalSearchParams<{
    epUrl: string; series: string; title: string; ep: string; season: string;
    poster: string; at: string;
  }>();

  const { addToHistory } = useApp();
  const [sources, setSources] = useState<PlayerSource[]>([]);
  const [loading, setLoading] = useState(true);
  const [error,   setError]   = useState<string | null>(null);
  const mountedRef = useRef(true);
  const ctrlRef    = useRef<AbortController | null>(null);
  const retryTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const autoRetryCountRef = useRef(0);
  const lastTimeRef = useRef(0);
  const lastDurationRef = useRef(0);
  const savedOnExitRef = useRef(false);

  const onToggleOrientation = useWatchPlayerOrientation(!loading && !error && sources.length > 0, tvMode);

  const episodeNumber = Math.max(1, parseInt(ep || "1", 10) || 1);
  const contentKey = series || epUrl || "";
  const posterUrl = (() => {
    if (!poster) return "";
    try { return decodeURIComponent(poster); } catch { return poster; }
  })();

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

  const loadSource = useCallback(async (isAutomaticRetry = false) => {
    if (!epUrl) { setError("رابط الحلقة مفقود"); setLoading(false); return; }
    if (!isAutomaticRetry) autoRetryCountRef.current = 0;
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

    // ── الطريقة الأولى: VPS API (يجلب الصفحة ويعيد proxyUrl) ──
    // لا نمرر رابط Foupix الخام إلى ExoPlayer: الـ token مرتبط بـ User-Agent
    // الذي يستخدمه الخادم، وproxy يحافظ أيضاً على TLS وRange/seek.
    // Foupix signs each page response for a short window. A transient
    // upstream failure must not make the phone screen discard the episode
    // permanently; ask the API for a fresh signed URL a few times first.
    for (let attempt = 0; attempt < 3; attempt += 1) {
      try {
        const r = await fetch(
          `${BASE}/api/dubbed/watch-src?epUrl=${encodeURIComponent(epUrl)}`,
          { signal: ctrl.signal, cache: "no-store" },
        );
        if (ctrl.signal.aborted || !mountedRef.current) return;
        if (r.ok) {
          const d = await r.json();
          if (ctrl.signal.aborted) return;

          const proxyUrl = typeof d.hlsUrl === "string" && d.hlsUrl
            ? (d.hlsUrl.startsWith("/") ? `${BASE}${d.hlsUrl}` : d.hlsUrl)
            : null;
          const mediaType = d.type === "hls" ? "m3u8" as const : "mp4" as const;

          if (proxyUrl) {
            const srcs: PlayerSource[] = [{
              url: proxyUrl,
              type: mediaType,
              label: "مدبلج عربي عبر الخادم",
              quality: "720p HD",
            }];
            if (mountedRef.current) { setSources(srcs); setLoading(false); }
            return;
          }
        }
      } catch (e: any) {
        if (e?.name === "AbortError" || !mountedRef.current) return;
      }
      if (attempt < 2) {
        await new Promise<void>(resolve => setTimeout(resolve, 700 + attempt * 500));
        if (ctrl.signal.aborted || !mountedRef.current) return;
      }
    }

    // VPS API فشل — نجرب الجلب المباشر من الموبايل.
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
          const proxyUrl = `${BASE}/api/dubbed/stream.mp4?url=${encodeURIComponent(videoUrl)}`;
          const srcs: PlayerSource[] = [
            { url: proxyUrl, type: videoUrl.includes(".m3u8") ? "m3u8" : "mp4", label: "مدبلج عربي عبر الخادم", quality: "720p HD" },
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
      if (retryTimerRef.current) {
        clearTimeout(retryTimerRef.current);
        retryTimerRef.current = null;
      }
    };
  }, [loadSource]);

  const retryAfterPlaybackError = useCallback(() => {
    if (!mountedRef.current) return;
    if (autoRetryCountRef.current >= 2) {
      setSources([]);
      setError("تعذّر تشغيل الحلقة بعد عدة محاولات — اضغط إعادة المحاولة");
      return;
    }

    autoRetryCountRef.current += 1;
    ctrlRef.current?.abort();
    if (retryTimerRef.current) clearTimeout(retryTimerRef.current);
    // Unmount the native player before replacing its signed URL. This avoids
    // feeding a stale failed Foupix token back into the same ExoPlayer.
    setSources([]);
    setError(null);
    setLoading(true);
    retryTimerRef.current = setTimeout(() => {
      retryTimerRef.current = null;
      if (mountedRef.current) void loadSource(true);
    }, 900);
  }, [loadSource]);

  const saveProgress = useCallback(async () => {
    const position = lastTimeRef.current;
    if (!contentKey || position <= 10) return;
    const duration = lastDurationRef.current || undefined;
    await addToHistory({
      animeId: getWatchContentId("dubbed", contentKey),
      ep: episodeNumber,
      contentKind: "dubbed",
      contentKey,
      episodeUrl: epUrl || "",
      seasonLabel: season || "الموسم 1",
      title: title || "كرتون مدبلج",
      english: title || "كرتون مدبلج",
      thumbnail: posterUrl,
      position,
      duration,
      updatedAt: Date.now(),
    });
  }, [addToHistory, contentKey, episodeNumber, epUrl, posterUrl, season, title]);

  const handleBack = useCallback(() => {
    if (!savedOnExitRef.current) {
      savedOnExitRef.current = true;
      void saveProgress();
    }
    router.back();
  }, [router, saveProgress]);

  const onProgress = useCallback((position: number, duration: number) => {
    lastTimeRef.current = position;
    if (duration > 0) lastDurationRef.current = duration;
  }, []);

  useEffect(() => () => {
    if (!savedOnExitRef.current) {
      savedOnExitRef.current = true;
      void saveProgress();
    }
  }, [saveProgress]);

  /* ── Loading ── */
  if (loading) {
    return (
      <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
        <RewardedAdPrompt />
        <View style={styles.header}>
           <Pressable onPress={() => router.back()} focusable={tvMode}
             style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="chevron-back" size={20} color={colors.textSecondary} />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={[styles.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>{title}</Text>
            <Text style={[styles.headerSub, { color: colors.textSecondary }]}>{season} · الحلقة {ep}</Text>
          </View>
        </View>
        <View style={styles.center}>
          <ActivityIndicator color={colors.accent} size="large" />
          <Text style={[styles.loadingText, { color: colors.textSecondary }]}>جاري تحميل الحلقة...</Text>
        </View>
      </View>
    );
  }

  /* ── Error ── */
  if (error || sources.length === 0) {
    return (
      <View style={[styles.container, { backgroundColor: colors.background, paddingTop: topPad }]}>
        <RewardedAdPrompt />
        <View style={styles.header}>
           <Pressable onPress={() => router.back()} focusable={tvMode}
             style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="chevron-back" size={20} color={colors.textSecondary} />
          </Pressable>
          <View style={{ flex: 1 }}>
            <Text style={[styles.headerTitle, { color: colors.textPrimary }]} numberOfLines={1}>{title}</Text>
            <Text style={[styles.headerSub, { color: colors.textSecondary }]}>{season} · الحلقة {ep}</Text>
          </View>
        </View>
        <View style={styles.center}>
          <View style={styles.errorIcon}>
            <Ionicons name="alert-circle" size={36} color="#f87171" />
          </View>
          <Text style={[styles.errorText, { color: colors.destructive }]}>{error || "لم يُعثر على مصدر"}</Text>
          <Pressable onPress={loadSource} focusable={tvMode}
            style={({ focused }) => [styles.retryBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="refresh" size={16} color={colors.buttonText} />
            <Text style={[styles.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
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
        episode={episodeNumber}
        onToggleOrientation={onToggleOrientation}
        onProgress={onProgress}
        onBack={handleBack}
        onError={retryAfterPlaybackError}
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
