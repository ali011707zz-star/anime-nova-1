import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useVideoPlayer, VideoView } from "expo-video";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator, Dimensions, Platform, Pressable,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import WebView from "react-native-webview";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { getBaseUrl, VideoSource } from "@/utils/api";
import { secureStreamFetch } from "@/utils/secureApi";

const { width: W, height: H } = Dimensions.get("window");
const PLAYER_H = W * (9 / 16);

export default function WatchScreen() {
  const { anime, ep, title, english } = useLocalSearchParams<{
    anime: string; ep: string; title: string; english: string;
  }>();
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { addToHistory } = useApp();

  const [sources, setSources] = useState<VideoSource[]>([]);
  const [selectedSource, setSelectedSource] = useState<VideoSource | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showSources, setShowSources] = useState(false);
  const abortRef = useRef<AbortController | null>(null);

  const isEmbed = selectedSource && !selectedSource.directUrl && !selectedSource.url?.includes(".m3u8") && !selectedSource.url?.includes(".mp4");
  const videoUrl = selectedSource?.directUrl || selectedSource?.url || "";

  const player = useVideoPlayer(
    isEmbed || !videoUrl ? null : videoUrl,
    (p) => {
      p.loop = false;
      p.play();
    }
  );

  const episodeTitle = decodeURIComponent(title || "");
  const episodeEnglish = decodeURIComponent(english || "");
  const epNum = parseInt(ep || "1");

  const fetchSources = useCallback(async () => {
    if (!anime || !ep) return;
    setLoading(true);
    setSources([]);
    setSelectedSource(null);
    setError(null);

    abortRef.current?.abort();
    abortRef.current = new AbortController();

    const base = getBaseUrl();
    const url = `${base}/api/anime/sources-stream?title=${encodeURIComponent(episodeTitle)}&english=${encodeURIComponent(episodeEnglish)}&ep=${ep}`;

    try {
      const response = await secureStreamFetch(url, {
        signal: abortRef.current.signal,
      });

      const reader = response.body!.getReader();
      const decoder = new TextDecoder();
      let buffer = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split("\n");
        buffer = lines.pop() || "";

        for (const line of lines) {
          if (line.startsWith("data: ")) {
            try {
              const data = JSON.parse(line.slice(6));
              if (data.type === "source" && (data.directUrl || data.url)) {
                const src: VideoSource = data;
                setSources((prev) => {
                  const exists = prev.find(
                    (s) => (s.directUrl || s.url) === (src.directUrl || src.url)
                  );
                  if (exists) return prev;
                  const updated = [...prev, src];
                  if (!selectedSource && (src.directUrl || (src.url && (src.url.includes(".m3u8") || src.url.includes(".mp4"))))) {
                    setSelectedSource(src);
                  } else if (!selectedSource) {
                    setSelectedSource(src);
                  }
                  return updated;
                });
              } else if (data.type === "done") {
                setLoading(false);
              } else if (data.type === "error") {
                if (sources.length === 0) setError("لم يتم العثور على مصادر");
                setLoading(false);
              }
            } catch {}
          }
        }
      }
    } catch (e: unknown) {
      if ((e as Error)?.name !== "AbortError") {
        setError("فشل الاتصال بالخادم");
      }
    } finally {
      setLoading(false);
    }
  }, [anime, ep, episodeTitle, episodeEnglish]);

  useEffect(() => {
    fetchSources();
    return () => abortRef.current?.abort();
  }, [fetchSources]);

  useEffect(() => {
    if (selectedSource && anime) {
      addToHistory({
        animeId: parseInt(anime),
        ep: epNum,
        title: episodeTitle,
        english: episodeEnglish,
        thumbnail: `https://img.anili.st/media/${anime}`,
        updatedAt: Date.now(),
      });
    }
  }, [selectedSource]);

  const topPad = Platform.OS === "web" ? 67 : insets.top;
  const sourceLabel = (s: VideoSource) => s.label || s.server || s.quality || (s.directUrl ? "مباشر" : "Embed");

  return (
    <View style={[styles.container, { backgroundColor: "#000" }]}>
      {/* Player */}
      <View style={[styles.playerWrap, { paddingTop: topPad }]}>
        {/* Header */}
        <View style={styles.playerHeader}>
          <Pressable onPress={() => router.back()} style={styles.backBtn}>
            <Ionicons name="arrow-back" size={22} color="#fff" />
          </Pressable>
          <View style={styles.playerTitleWrap}>
            <Text style={styles.playerTitle} numberOfLines={1}>
              {episodeEnglish || episodeTitle}
            </Text>
            <Text style={styles.playerEp}>حلقة {ep}</Text>
          </View>
          <Pressable onPress={() => setShowSources(!showSources)} style={styles.sourcesBtn}>
            <Ionicons name="layers-outline" size={22} color="#fff" />
            {sources.length > 0 && (
              <View style={[styles.sourceBadge, { backgroundColor: colors.primary }]}>
                <Text style={styles.sourceBadgeText}>{sources.length}</Text>
              </View>
            )}
          </Pressable>
        </View>

        {/* Video Area */}
        <View style={[styles.videoArea, { height: PLAYER_H }]}>
          {loading && sources.length === 0 ? (
            <View style={styles.loadingArea}>
              <ActivityIndicator color={colors.primary} size="large" />
              <Text style={styles.loadingText}>جاري البحث عن مصادر...</Text>
            </View>
          ) : error && sources.length === 0 ? (
            <View style={styles.errorArea}>
              <Ionicons name="warning-outline" size={48} color="#ef4444" />
              <Text style={styles.errorText}>{error}</Text>
              <Pressable onPress={fetchSources} style={[styles.retryBtn, { backgroundColor: colors.primary }]}>
                <Text style={styles.retryText}>إعادة المحاولة</Text>
              </Pressable>
            </View>
          ) : isEmbed && videoUrl ? (
            <WebView
              source={{ uri: videoUrl }}
              style={styles.webview}
              allowsFullscreenVideo
              allowsInlineMediaPlayback
              mediaPlaybackRequiresUserAction={false}
              javaScriptEnabled
              domStorageEnabled
            />
          ) : videoUrl ? (
            <VideoView
              player={player}
              style={styles.videoView}
              allowsFullscreen
              allowsPictureInPicture
              contentFit="contain"
              nativeControls
            />
          ) : (
            <View style={styles.loadingArea}>
              <ActivityIndicator color={colors.primary} size="large" />
              <Text style={styles.loadingText}>جاري تحميل المشغّل...</Text>
            </View>
          )}
        </View>
      </View>

      {/* Sources panel / episode info */}
      <ScrollView
        style={[styles.bottomPanel, { backgroundColor: colors.background }]}
        contentContainerStyle={{ paddingBottom: 100 }}
        showsVerticalScrollIndicator={false}
      >
        {/* Episode Navigation */}
        <View style={styles.epNav}>
          <Pressable
            onPress={() => epNum > 1 && router.replace(`/watch?anime=${anime}&ep=${epNum - 1}&title=${encodeURIComponent(episodeTitle)}&english=${encodeURIComponent(episodeEnglish)}`)}
            style={[styles.navBtn, { backgroundColor: colors.card, borderColor: colors.border, opacity: epNum <= 1 ? 0.4 : 1 }]}
            disabled={epNum <= 1}
          >
            <Ionicons name="chevron-forward" size={18} color={colors.text} />
            <Text style={[styles.navText, { color: colors.text }]}>السابقة</Text>
          </Pressable>
          <View style={[styles.epNumBadge, { backgroundColor: colors.card }]}>
            <Text style={[styles.epNumText, { color: colors.primary }]}>حلقة {ep}</Text>
          </View>
          <Pressable
            onPress={() => router.replace(`/watch?anime=${anime}&ep=${epNum + 1}&title=${encodeURIComponent(episodeTitle)}&english=${encodeURIComponent(episodeEnglish)}`)}
            style={[styles.navBtn, { backgroundColor: colors.card, borderColor: colors.border }]}
          >
            <Text style={[styles.navText, { color: colors.text }]}>التالية</Text>
            <Ionicons name="chevron-back" size={18} color={colors.text} />
          </Pressable>
        </View>

        {/* Show Sources */}
        {(showSources || sources.length > 0) && (
          <View style={styles.sourcesSection}>
            <View style={styles.sourcesHeader}>
              <Text style={[styles.sourcesTitle, { color: colors.text }]}>المصادر المتاحة</Text>
              {loading && <ActivityIndicator color={colors.primary} size="small" />}
            </View>
            <ScrollView horizontal showsHorizontalScrollIndicator={false} contentContainerStyle={styles.sourcesRow}>
              {sources.map((s, i) => {
                const isSelected = selectedSource === s;
                const isDirect = !!(s.directUrl || (s.url && (s.url.includes(".m3u8") || s.url.includes(".mp4"))));
                return (
                  <Pressable
                    key={i}
                    onPress={() => setSelectedSource(s)}
                    style={[
                      styles.sourceChip,
                      {
                        backgroundColor: isSelected ? colors.primary + "20" : colors.card,
                        borderColor: isSelected ? colors.primary : colors.border,
                      },
                    ]}
                  >
                    <Ionicons
                      name={isDirect ? "play-circle" : "globe-outline"}
                      size={14}
                      color={isSelected ? colors.primary : colors.mutedForeground}
                    />
                    <Text style={[styles.sourceChipText, { color: isSelected ? colors.primary : colors.text }]}>
                      {sourceLabel(s)}
                    </Text>
                    {isDirect && (
                      <View style={[styles.directBadge, { backgroundColor: colors.primary + "30" }]}>
                        <Text style={[styles.directBadgeText, { color: colors.primary }]}>مباشر</Text>
                      </View>
                    )}
                  </Pressable>
                );
              })}
              {sources.length === 0 && loading && (
                <Text style={[styles.noSources, { color: colors.mutedForeground }]}>جاري البحث...</Text>
              )}
              {sources.length === 0 && !loading && (
                <Text style={[styles.noSources, { color: colors.mutedForeground }]}>لا توجد مصادر</Text>
              )}
            </ScrollView>
          </View>
        )}

        {/* Info */}
        <View style={styles.infoSection}>
          <Text style={[styles.infoTitle, { color: colors.text }]}>
            {episodeEnglish || episodeTitle}
          </Text>
          <Text style={[styles.infoSubtitle, { color: colors.mutedForeground }]}>
            حلقة {ep} {episodeTitle !== episodeEnglish && episodeTitle ? `· ${episodeTitle}` : ""}
          </Text>
          <Pressable
            onPress={() => router.push(`/anime/${anime}?title=${encodeURIComponent(episodeTitle)}&english=${encodeURIComponent(episodeEnglish)}`)}
            style={[styles.detailBtn, { borderColor: colors.border, backgroundColor: colors.card }]}
          >
            <Ionicons name="information-circle-outline" size={16} color={colors.mutedForeground} />
            <Text style={[styles.detailBtnText, { color: colors.mutedForeground }]}>تفاصيل الأنمي</Text>
          </Pressable>
          <Pressable
            onPress={() => router.push(`/episodes/${anime}?title=${encodeURIComponent(episodeTitle)}&english=${encodeURIComponent(episodeEnglish)}`)}
            style={[styles.detailBtn, { borderColor: colors.border, backgroundColor: colors.card, marginTop: 8 }]}
          >
            <Ionicons name="list-outline" size={16} color={colors.mutedForeground} />
            <Text style={[styles.detailBtnText, { color: colors.mutedForeground }]}>قائمة الحلقات</Text>
          </Pressable>
        </View>
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1 },
  playerWrap: { backgroundColor: "#000" },
  playerHeader: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 12, paddingVertical: 8,
  },
  backBtn: { padding: 4 },
  playerTitleWrap: { flex: 1 },
  playerTitle: { color: "#fff", fontSize: 14, fontFamily: "Cairo_600SemiBold" },
  playerEp: { color: "rgba(255,255,255,0.5)", fontSize: 11 },
  sourcesBtn: { padding: 4, position: "relative" },
  sourceBadge: { position: "absolute", top: 0, right: 0, borderRadius: 8, width: 16, height: 16, alignItems: "center", justifyContent: "center" },
  sourceBadgeText: { color: "#fff", fontSize: 9, fontWeight: "700" },
  videoArea: { width: W, backgroundColor: "#111" },
  loadingArea: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  loadingText: { color: "rgba(255,255,255,0.6)", fontSize: 14, fontFamily: "Cairo_400Regular" },
  errorArea: { flex: 1, alignItems: "center", justifyContent: "center", gap: 12 },
  errorText: { color: "#ef4444", fontSize: 14, fontFamily: "Cairo_400Regular" },
  retryBtn: { paddingHorizontal: 20, paddingVertical: 10, borderRadius: 10 },
  retryText: { color: "#fff", fontFamily: "Cairo_700Bold" },
  webview: { flex: 1, backgroundColor: "#000" },
  videoView: { flex: 1, width: "100%" },
  bottomPanel: { flex: 1 },
  epNav: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingVertical: 14, gap: 10 },
  navBtn: { flexDirection: "row", alignItems: "center", gap: 4, paddingHorizontal: 14, paddingVertical: 8, borderRadius: 8, borderWidth: 1 },
  navText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
  epNumBadge: { paddingHorizontal: 14, paddingVertical: 8, borderRadius: 8 },
  epNumText: { fontSize: 14, fontFamily: "Cairo_700Bold" },
  sourcesSection: { paddingHorizontal: 16, marginBottom: 16 },
  sourcesHeader: { flexDirection: "row", alignItems: "center", gap: 8, marginBottom: 10 },
  sourcesTitle: { fontSize: 15, fontFamily: "Cairo_700Bold" },
  sourcesRow: { gap: 8, alignItems: "center" },
  sourceChip: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 8, borderRadius: 10, borderWidth: 1 },
  sourceChipText: { fontSize: 12, fontFamily: "Cairo_600SemiBold" },
  directBadge: { borderRadius: 4, paddingHorizontal: 5, paddingVertical: 2 },
  directBadgeText: { fontSize: 9, fontFamily: "Cairo_700Bold" },
  noSources: { fontSize: 13, fontFamily: "Cairo_400Regular", paddingVertical: 8 },
  infoSection: { paddingHorizontal: 16 },
  infoTitle: { fontSize: 16, fontFamily: "Cairo_700Bold", lineHeight: 24 },
  infoSubtitle: { fontSize: 13, fontFamily: "Cairo_400Regular", marginBottom: 16 },
  detailBtn: { flexDirection: "row", alignItems: "center", gap: 8, paddingHorizontal: 16, paddingVertical: 12, borderRadius: 10, borderWidth: 1 },
  detailBtnText: { fontSize: 13, fontFamily: "Cairo_600SemiBold" },
});
