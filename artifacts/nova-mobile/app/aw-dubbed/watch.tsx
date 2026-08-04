/**
 * aw-dubbed/watch.tsx — مشغّل أنيميشن مدبلج
 * يجلب المصادر من /api/aw-dubbed/watch-src ثم يُحوّلها
 * إلى PlayerSource المتوافق مع RiftPlayer (url مطلق + label + quality).
 */
import React, { useCallback, useEffect, useRef, useState } from "react";
import { ActivityIndicator, StyleSheet, Text, View } from "react-native";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { RiftPlayer, type PlayerSource, isValidPlayerSourceUrl } from "@/components/RiftPlayer";

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

/** تحويل ApiSource[] إلى PlayerSource[] صالحة لـ RiftPlayer */
function toRiftSources(apiSrcs: ApiSource[]): PlayerSource[] {
  const out: PlayerSource[] = [];
  for (const s of apiSrcs) {
    const absUrl = toAbsoluteUrl(s.rawUrl) ?? toAbsoluteUrl(s.hlsUrl);
    if (!absUrl || !isValidPlayerSourceUrl(absUrl)) continue;
    out.push({
      url:     absUrl,
      label:   s.name || "مصدر",
      quality: toRiftQuality(s.quality || "720p"),
    });
  }
  return out;
}

export default function AwDubbedWatchScreen() {
  const router  = useRouter();
  const params  = useLocalSearchParams<{
    series: string; ep: string;
    title: string; titleAr: string;
    season: string; poster: string;
    seasons: string; key: string;
  }>();

  const series  = params.series  || "";
  const ep      = params.ep      || "1";
  const title   = params.title   || "";
  const titleAr = params.titleAr || "";
  const season  = params.season  || "الحلقات";
  const poster  = params.poster ? decodeURIComponent(params.poster) : "";

  const [sources,  setSources]  = useState<PlayerSource[]>([]);
  const [loading,  setLoading]  = useState(true);
  const [error,    setError]    = useState<string | null>(null);
  const abortRef = useRef<AbortController | null>(null);

  const loadSources = useCallback(async () => {
    abortRef.current?.abort();
    const ctrl = new AbortController();
    abortRef.current = ctrl;
    setLoading(true);
    setError(null);
    setSources([]);
    try {
      const r = await fetch(
        `${BASE}/api/aw-dubbed/watch-src?series=${encodeURIComponent(series)}&ep=${ep}`,
        { signal: ctrl.signal },
      );
      const d = await r.json();
      if (!r.ok) throw new Error(d.error || "فشل تحميل المصادر");

      const riftSrcs = toRiftSources(d.allSources || []);
      if (!riftSrcs.length) throw new Error("لا توجد مصادر متاحة لهذه الحلقة");
      setSources(riftSrcs);
    } catch (e: any) {
      if (e?.name !== "AbortError") setError(e?.message || "خطأ في التحميل");
    } finally {
      setLoading(false);
    }
  }, [series, ep]);

  useEffect(() => {
    loadSources();
    return () => { abortRef.current?.abort(); };
  }, [loadSources]);

  const displayTitle = titleAr || title;

  if (loading) {
    return (
      <View style={styles.center}>
        <ActivityIndicator color="#10B981" size="large" />
        <Text style={styles.loadingText}>جاري تحميل المصدر...</Text>
      </View>
    );
  }

  if (error || !sources.length) {
    return (
      <View style={styles.center}>
        <Text style={styles.errorText}>{error || "لا توجد مصادر"}</Text>
      </View>
    );
  }

  return (
    <RiftPlayer
      sources={sources}
      title={displayTitle}
      episodeTitle={`${season} • الحلقة ${ep}`}
      onBack={() => router.back()}
    />
  );
}

const styles = StyleSheet.create({
  center:      { flex: 1, backgroundColor: "#09090B", alignItems: "center", justifyContent: "center" },
  loadingText: { color: "rgba(255,255,255,0.5)", marginTop: 12, fontFamily: "Cairo_400Regular" },
  errorText:   { color: "#ef4444", fontFamily: "Cairo_400Regular", textAlign: "center", paddingHorizontal: 24 },
});
