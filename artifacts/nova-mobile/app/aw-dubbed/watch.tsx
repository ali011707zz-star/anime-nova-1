/**
 * aw-dubbed/watch.tsx — مشغّل أنيميشن مدبلج
 */
import React, { useCallback, useEffect, useRef, useState } from "react";
import { ActivityIndicator, StyleSheet, Text, View } from "react-native";
import { useLocalSearchParams, useRouter } from "expo-router";
import { getBaseUrl } from "@/utils/api";
import { RiftPlayer } from "@/components/RiftPlayer";

const BASE = getBaseUrl();

interface PlayerSource {
  quality: string;
  name:    string;
  rawUrl:  string | null;
  hlsUrl:  string | null;
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
      const srcs: PlayerSource[] = (d.allSources || []).filter(
        (s: PlayerSource) => s.rawUrl || s.hlsUrl,
      );
      if (!srcs.length) throw new Error("لا توجد مصادر متاحة");
      setSources(srcs);
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
      subtitle={`${season} • الحلقة ${ep}`}
      poster={poster}
      onBack={() => router.back()}
    />
  );
}

const styles = StyleSheet.create({
  center:      { flex: 1, backgroundColor: "#09090B", alignItems: "center", justifyContent: "center" },
  loadingText: { color: "rgba(255,255,255,0.5)", marginTop: 12, fontFamily: "Cairo_400Regular" },
  errorText:   { color: "#ef4444", fontFamily: "Cairo_400Regular", textAlign: "center", paddingHorizontal: 24 },
});
