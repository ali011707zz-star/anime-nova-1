import React, { useState, useEffect, useRef, useCallback } from "react";
import {
  View, Text, Pressable, StyleSheet, Platform, ActivityIndicator,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { RiftPlayer, PlayerSource } from "@/components/RiftPlayer";
import { getBaseUrl } from "@/utils/api";

interface SourceItem {
  quality: string;
  name: string;
  rawUrl: string | null;
  hlsUrl: string | null;
}

export default function AwDubbedWatchScreen() {
  const insets = useSafeAreaInsets();
  const router  = useRouter();
  const topPad  = Platform.OS === "web" ? 0 : insets.top;

  const {
    series, ep, title, titleAr, season, poster, seasons: seasonsParam, key: keyParam,
  } = useLocalSearchParams<{
    series: string; ep: string; title: string; titleAr: string;
    season: string; poster: string; seasons: string; key: string;
  }>();

  const BASE = getBaseUrl();
  const displayTitle = titleAr || title || "بدون عنوان";
  const posterUrl    = poster ? decodeURIComponent(poster) : "";
  const epNum        = parseInt(ep || "1") || 1;

  type Phase = "loading" | "player" | "error";
  const [phase,      setPhase]      = useState<Phase>("loading");
  const [sources,    setSources]    = useState<PlayerSource[]>([]);
  const [error,      setError]      = useState<string | null>(null);
  const mountedRef = useRef(true);

  const goBack = useCallback(() => {
    if (router.canGoBack()) {
      router.back();
    } else {
      const k = keyParam ? decodeURIComponent(keyParam) : "";
      router.push({
        pathname: "/aw-dubbed/[key]",
        params: { key: k || "", title, titleAr: titleAr || "", seasons: seasonsParam || "", poster: poster || "" },
      });
    }
  }, [router, keyParam, title, titleAr, seasonsParam, poster]);

  const loadSources = useCallback(async () => {
    if (!series) { setError("بيانات الحلقة مفقودة"); setPhase("error"); return; }
    setPhase("loading"); setError(null);

    try {
      const r = await fetch(`${BASE}/api/aw-dubbed/watch-src?series=${encodeURIComponent(series)}&ep=${epNum}`);
      if (!mountedRef.current) return;
      if (!r.ok) { setError("تعذّر تحميل الحلقة"); setPhase("error"); return; }
      const d = await r.json();

      const allSrc: SourceItem[] = (d.allSources || []).filter((s: SourceItem) => s.rawUrl || s.hlsUrl);
      let srcs: PlayerSource[] = [];

      if (allSrc.length) {
        srcs = allSrc.map(s => ({
          url:     s.rawUrl || s.hlsUrl || "",
          label:   s.name   || "مدبلج عربي",
          quality: (s.quality || "720p") as PlayerSource["quality"],
          isArabic: true,
        }));
      } else {
        const url = d.rawUrl || d.hlsUrl;
        if (!url) { setError("لم يُعثر على مصدر الفيديو"); setPhase("error"); return; }
        srcs = [{ url, label: "مدبلج عربي", quality: (d.quality || "720p") as PlayerSource["quality"], isArabic: true }];
      }

      if (!mountedRef.current) return;
      setSources(srcs);
      setPhase("player");
    } catch {
      if (!mountedRef.current) return;
      setError("خطأ في الاتصال — حاول مرة أخرى");
      setPhase("error");
    }
  }, [series, epNum, BASE]);

  useEffect(() => {
    mountedRef.current = true;
    loadSources();
    return () => { mountedRef.current = false; };
  }, [loadSources]);

  if (phase === "player" && sources.length > 0) {
    return (
      <RiftPlayer
        sources={sources}
        title={`${displayTitle} — الحلقة ${epNum}`}
        poster={posterUrl || undefined}
        onClose={goBack}
      />
    );
  }

  return (
    <View style={[styles.container, { paddingTop: topPad }]}>
      {/* Header */}
      <View style={styles.header}>
        <Pressable onPress={goBack} style={styles.backBtn}>
          <Ionicons name="chevron-back" size={20} color="rgba(255,255,255,0.7)" />
        </Pressable>
        <View style={{ flex: 1 }}>
          <Text style={styles.headerTitle} numberOfLines={1}>{displayTitle}</Text>
          <Text style={styles.headerSub}>{season} — الحلقة {epNum}</Text>
        </View>
      </View>

      <View style={styles.center}>
        {phase === "loading" && (
          <>
            <ActivityIndicator color="#10B981" size="large" />
            <Text style={styles.loadingText}>جاري تحميل الحلقة...</Text>
          </>
        )}
        {phase === "error" && (
          <>
            <Ionicons name="alert-circle-outline" size={48} color="rgba(239,68,68,0.6)" />
            <Text style={styles.errorText}>{error || "حدث خطأ"}</Text>
            <Pressable onPress={loadSources} style={styles.retryBtn}>
              <Ionicons name="refresh" size={16} color="#10B981" />
              <Text style={styles.retryText}>إعادة المحاولة</Text>
            </Pressable>
          </>
        )}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container:   { flex: 1, backgroundColor: "#09090B" },
  header:      { flexDirection: "row", alignItems: "center", paddingHorizontal: 12, paddingVertical: 10,
                 borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.05)", gap: 10 },
  backBtn:     { width: 36, height: 36, borderRadius: 10, backgroundColor: "rgba(255,255,255,0.05)",
                 alignItems: "center", justifyContent: "center", borderWidth: 1, borderColor: "rgba(255,255,255,0.08)" },
  headerTitle: { color: "#fff", fontSize: 15, fontWeight: "700", fontFamily: "Cairo_700Bold" },
  headerSub:   { color: "rgba(255,255,255,0.4)", fontSize: 11, fontFamily: "Cairo_400Regular" },
  center:      { flex: 1, alignItems: "center", justifyContent: "center", gap: 14 },
  loadingText: { color: "rgba(255,255,255,0.4)", fontSize: 13, fontFamily: "Cairo_400Regular", marginTop: 8 },
  errorText:   { color: "rgba(255,255,255,0.5)", fontSize: 13, fontFamily: "Cairo_400Regular",
                 textAlign: "center", paddingHorizontal: 32 },
  retryBtn:    { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 20, paddingVertical: 10,
                 borderRadius: 14, backgroundColor: "rgba(16,185,129,0.10)",
                 borderWidth: 1, borderColor: "rgba(16,185,129,0.25)" },
  retryText:   { color: "#10B981", fontSize: 13, fontFamily: "Cairo_600SemiBold" },
});
