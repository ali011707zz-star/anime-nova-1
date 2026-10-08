/**
 * aw-dubbed/watch.tsx — مشغّل أنيميشن مدبلج
 * يجلب المصادر من /api/aw-dubbed/watch-src ثم يُحوّلها
 * إلى PlayerSource المتوافق مع RiftPlayer (url مطلق + label + quality).
 */
import React, { useCallback, useEffect, useRef, useState } from "react";
import { ActivityIndicator, Pressable, StyleSheet, Text, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { RiftPlayer, type PlayerSource, isValidPlayerSourceUrl } from "@/components/RiftPlayer";
import { ensureWatchAccess } from "@/utils/adPolicy";
import { RewardedAdPrompt } from "@/components/RewardedAdPrompt";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";
import { useColors } from "@/hooks/useColors";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";
import { createPlaybackTraceId, withPlaybackTrace } from "@/utils/playbackTrace";

const BASE = getBaseUrl(); // e.g. "https://animenovaa.duckdns.org"

/** الشكل الخام الذي يُرجعه الـ API */
interface ApiSource {
  quality: string;
  name:    string;
  rawUrl:  string | null;
  hlsUrl:  string | null;
}

/** تحويل جودة النصية إلى الشكل المتوقع من RiftPlayer */
function toRiftQuality(q: string): "1080p FHD" | "720p HD" | "360p SD" {
  if (q.includes("1080")) return "1080p FHD";
  if (q.includes("720"))  return "720p HD";
  if (q.includes("480"))  return "720p HD";  // 480p → نعرضها كـ HD (أقرب تصنيف)
  return "360p SD";
}

/** تحويل أي رابط (نسبي أو مطلق) إلى رابط HTTP مطلق */
function toAbsoluteUrl(url: string | null | undefined): string | null {
  if (!url) return null;
  const u = url.trim();
  if (u.startsWith("http://") || u.startsWith("https://")) return u;
  if (u.startsWith("/")) return `${BASE}${u}`;
  return null;
}

function safeDecode(value: string | string[] | undefined): string {
  const raw = Array.isArray(value) ? value[0] : value;
  if (!raw) return "";
  try { return decodeURIComponent(raw); } catch { return raw; }
}

/** تحويل ApiSource[] إلى PlayerSource[] صالحة لـ RiftPlayer */
function toRiftSources(apiSrcs: ApiSource[], traceId: string): PlayerSource[] {
  const out: PlayerSource[] = [];
  for (const [index, s] of apiSrcs.entries()) {
    const absUrl = toAbsoluteUrl(s.hlsUrl) ?? toAbsoluteUrl(s.rawUrl);
    if (!absUrl || !isValidPlayerSourceUrl(absUrl)) continue;
    let proxyUrl = absUrl;
    try {
      const parsed = new URL(absUrl);
      const base = new URL(BASE);
      const isVpsMediaRoute = parsed.origin === base.origin &&
        /^\/api\/(?:anime\/(?:hls|video)-proxy|aw-dubbed\/mf-stream)$/i.test(parsed.pathname);
      if (!isVpsMediaRoute) {
        const isHls = /\.m3u8(?:[?#]|$)/i.test(absUrl);
        const ref = "https://animenovaa.duckdns.org/";
        const path = isHls ? "/api/anime/hls-proxy" : "/api/anime/video-proxy";
        proxyUrl = `${BASE}${path}?url=${encodeURIComponent(absUrl)}&ref=${encodeURIComponent(ref)}`;
      }
    } catch {
      continue;
    }
    out.push({
      url:     withPlaybackTrace(proxyUrl, `${traceId}-${index.toString(36)}`, BASE),
      label:   s.name || "مصدر",
      quality: toRiftQuality(s.quality || "720p"),
    });
  }
  return out;
}

export default function AwDubbedWatchScreen() {
  const colors = useColors();
  const router  = useRouter();
  const tvMode  = isTvDevice();
  const params  = useLocalSearchParams<{
    series: string; ep: string;
    title: string; titleAr: string;
    season: string; poster: string;
    seasons: string; key: string;
  }>();
  const playbackTraceId = React.useMemo(
    () => createPlaybackTraceId(),
    [params.series, params.ep],
  );

  const series  = safeDecode(params.series);
  const ep      = safeDecode(params.ep) || "1";
  const title   = safeDecode(params.title);
  const titleAr = safeDecode(params.titleAr);
  const season  = safeDecode(params.season) || "الحلقات";
  const poster  = safeDecode(params.poster);
  const { addToHistory, watchHistory } = useApp();

  const [sources,  setSources]  = useState<PlayerSource[]>([]);
  const [loading,  setLoading]  = useState(true);
  const [error,    setError]    = useState<string | null>(null);
  const abortRef   = useRef<AbortController | null>(null);
  const mountedRef = useRef(true);
  const lastTimeRef = useRef(0);
  const lastDurationRef = useRef(0);
  const savedOnExitRef = useRef(false);

  const episodeNumber = Math.max(1, parseInt(ep || "1", 10) || 1);
  const contentKey = series || "";
  const progressKey = `progress-aw-dubbed-${contentKey}-${episodeNumber}`;
  const [resumeTime, setResumeTime] = useState(0);
  const [progressLoaded, setProgressLoaded] = useState(false);

  const onToggleOrientation = useWatchPlayerOrientation(
    !loading && progressLoaded && !error && sources.length > 0,
    tvMode,
  );

  useEffect(() => {
    let cancelled = false;
    const historyPosition = watchHistory.find((item) =>
      item.contentKind === "aw-dubbed" &&
      item.contentKey === contentKey &&
      item.ep === episodeNumber
    )?.position ?? 0;

    setProgressLoaded(false);
    AsyncStorage.getItem(progressKey)
      .then((raw) => {
        if (cancelled) return;
        const storedPosition = raw ? Number(raw) : 0;
        setResumeTime(Number.isFinite(storedPosition) && storedPosition > 0
          ? storedPosition
          : historyPosition);
        setProgressLoaded(true);
      })
      .catch(() => {
        if (cancelled) return;
        setResumeTime(historyPosition);
        setProgressLoaded(true);
      });

    return () => { cancelled = true; };
  }, [contentKey, episodeNumber, progressKey, watchHistory]);

  const loadSources = useCallback(async () => {
    abortRef.current?.abort();
    const ctrl = new AbortController();
    abortRef.current = ctrl;
    if (!mountedRef.current) return;
    setLoading(true);
    setError(null);
    setSources([]);
    try {
      if (!(await ensureWatchAccess())) {
        if (mountedRef.current) setError("شاهد الإعلان لفتح مشاهدة الأنيميشن المدبلج لمدة 60 دقيقة");
        return;
      }
      const sourceStartedAt = Date.now();
      console.info(`[playback-trace] id=${playbackTraceId} component=source stage=request provider=animewitcher`);
      const r = await fetch(
        `${BASE}/api/aw-dubbed/watch-src?series=${encodeURIComponent(series)}&ep=${ep}&trace=${encodeURIComponent(playbackTraceId)}`,
        { signal: ctrl.signal },
      );
      console.info(
        `[playback-trace] id=${playbackTraceId} component=source stage=response provider=animewitcher status=${r.status} elapsed_ms=${Date.now() - sourceStartedAt}`,
      );
      if (ctrl.signal.aborted || !mountedRef.current) return;
      const d = await r.json();
      if (ctrl.signal.aborted || !mountedRef.current) return;
      if (!r.ok) throw new Error(d.error || "فشل تحميل المصادر");

      const riftSrcs = toRiftSources(d.allSources || [], playbackTraceId);
      if (!riftSrcs.length) throw new Error("لا توجد مصادر متاحة لهذه الحلقة");
      if (mountedRef.current) setSources(riftSrcs);
    } catch (e: any) {
      if (e?.name !== "AbortError" && mountedRef.current)
        setError(e?.message || "خطأ في التحميل");
    } finally {
      /* لا نُغيّر state بعد unmount أو abort */
      if (mountedRef.current && !ctrl.signal.aborted) setLoading(false);
    }
  }, [series, ep, playbackTraceId]);

  useEffect(() => {
    mountedRef.current = true;
    loadSources();
    return () => {
      mountedRef.current = false;
      abortRef.current?.abort();
    };
  }, [loadSources]);

  const saveProgress = useCallback(async () => {
    const position = lastTimeRef.current;
    if (!contentKey || position <= 10) return;
    const duration = lastDurationRef.current || undefined;
    await AsyncStorage.setItem(progressKey, String(Math.floor(position))).catch(() => {});
    await addToHistory({
      animeId: getWatchContentId("aw-dubbed", contentKey),
      ep: episodeNumber,
      contentKind: "aw-dubbed",
      contentKey,
      seasonLabel: season,
      title: title || "أنيميشن مدبلج",
      english: title || "أنيميشن مدبلج",
      titleAr,
      thumbnail: poster,
      position,
      duration,
      updatedAt: Date.now(),
    });
  }, [addToHistory, contentKey, episodeNumber, poster, progressKey, season, title, titleAr]);

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

  const displayTitle = titleAr || title;

  if (loading || !progressLoaded) {
    return (
      <View style={[styles.center, styles.loadingContainer, { backgroundColor: colors.background }]}>
        <RewardedAdPrompt />
        <ActivityIndicator color={colors.accent} size="large" />
        <Text style={[styles.loadingText, { color: colors.textSecondary }]}>جاري تحميل المصدر...</Text>
      </View>
    );
  }

  if (error || !sources.length) {
    return (
      <View style={[styles.errorContainer, { backgroundColor: colors.background }]}>
        <RewardedAdPrompt />
         <Pressable onPress={() => router.back()} focusable={tvMode}
           style={({ focused }) => [styles.backBtn, tvMode && tvFocusStyle(focused)]}>
          <Ionicons name="chevron-back" size={20} color={colors.textSecondary} />
        </Pressable>
        <View style={styles.center}>
          <View style={styles.errorIcon}>
            <Ionicons name="alert-circle" size={36} color="#f87171" />
          </View>
            <Text style={[styles.errorText, { color: colors.destructive }]}>{error || "لا توجد مصادر"}</Text>
           <Pressable onPress={loadSources} focusable={tvMode}
             style={({ focused }) => [styles.retryBtn, tvMode && tvFocusStyle(focused)]}>
            <Ionicons name="refresh" size={16} color={colors.buttonText} />
            <Text style={[styles.retryText, { color: colors.buttonText }]}>إعادة المحاولة</Text>
          </Pressable>
        </View>
      </View>
    );
  }

  return (
    <>
      <RewardedAdPrompt />
      <RiftPlayer
        /* key فريد لكل حلقة — يمنع تراكم موارد native player عبر الحلقات (نفس إصلاح
           app/watch.tsx). */
        key={`${series}-${season}-${ep}`}
        sources={sources}
        title={displayTitle}
        episode={episodeNumber}
        episodeTitle={`${season} • الحلقة ${episodeNumber}`}
        initialPosition={resumeTime}
        onToggleOrientation={onToggleOrientation}
        onProgress={onProgress}
        onBack={handleBack}
      />
    </>
  );
}

const styles = StyleSheet.create({
  center:         { flex: 1, alignItems: "center", justifyContent: "center", gap: 14, padding: 24 },
  loadingContainer: { backgroundColor: "#09090B" },
  errorContainer: { flex: 1, backgroundColor: "#09090B" },
  backBtn: {
    margin: 16, width: 36, height: 36, borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1, borderColor: "rgba(255,255,255,0.10)",
    alignItems: "center", justifyContent: "center",
  },
  errorIcon: {
    width: 64, height: 64, borderRadius: 32,
    backgroundColor: "rgba(239,68,68,0.1)",
    borderWidth: 1, borderColor: "rgba(239,68,68,0.2)",
    alignItems: "center", justifyContent: "center",
  },
  loadingText: { color: "rgba(255,255,255,0.5)", marginTop: 12, fontFamily: "Cairo_400Regular" },
  errorText:   { color: "rgba(255,255,255,0.6)", fontFamily: "Cairo_400Regular", textAlign: "center", paddingHorizontal: 24 },
  retryBtn: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 20, paddingVertical: 10,
    backgroundColor: "rgba(124,58,237,0.15)",
    borderRadius: 12, borderWidth: 1, borderColor: "rgba(124,58,237,0.3)",
  },
  retryText: { color: "#A78BFA", fontFamily: "Cairo_700Bold" },
});
