import React, { useState, useEffect, useCallback, useMemo, useRef } from "react";
import {
  View,
  Text,
  ScrollView,
  ActivityIndicator,
  StyleSheet,
  Platform,
  I18nManager,
  Alert,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { SafePosterImage } from "@/components/SafePosterImage";
import { RiftPlayer, type PlayerSource } from "@/components/RiftPlayer";
import { useColors } from "@/hooks/useColors";
import { TvPressable as Pressable, tvFocusStyle, useTvMetrics } from "@/utils/tv";
import { resolveDonghuaEpisode, type DonghuaPlayableStream, type DonghuaResolvedEpisode } from "@/utils/donghuaClient";
import { startGlobalDownload } from "@/utils/downloadManager";
import type { DonghuaSourceId } from "@/utils/donghuaLogic.mjs";
import type { ThemePalette } from "@/constants/colors";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

function paramStr(v: string | string[] | undefined): string {
  return Array.isArray(v) ? (v[0] || "") : (v || "");
}

function stableDonghuaId(slug: string): number {
  let hash = 0;
  for (let i = 0; i < slug.length; i++) {
    hash = ((hash << 5) - hash + slug.charCodeAt(i)) | 0;
  }
  return 90_000_000 + (Math.abs(hash) % 9_000_000);
}

function mapPlayerQuality(q: string): "1080p FHD" | "720p HD" | "360p SD" {
  if (/1080|1440|2160/i.test(q)) return "1080p FHD";
  if (/720/i.test(q)) return "720p HD";
  return "360p SD";
}

type CompactEp = { n: number; u: string; t: string };

export default function DonghuaWatchScreen() {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const colors = useColors();
  const { tv: tvMode } = useTvMetrics();
  const s = useMemo(() => createStyles(colors), [colors]);

  const params = useLocalSearchParams<{
    source?: string;
    slug?: string;
    title?: string;
    poster?: string;
    ep?: string;
    epUrl?: string;
    epTitle?: string;
    epsJson?: string;
  }>();

  const source: DonghuaSourceId = paramStr(params.source) === "animekhor" ? "animekhor" : "animexin";
  const slug = paramStr(params.slug);
  const title = paramStr(params.title) || slug;
  const poster = paramStr(params.poster);
  const epNum = Math.max(1, parseFloat(paramStr(params.ep)) || 1);
  const epUrl = paramStr(params.epUrl);
  const epTitle = paramStr(params.epTitle) || `الحلقة ${epNum}`;

  const allEps = useMemo<CompactEp[]>(() => {
    try {
      const parsed = JSON.parse(paramStr(params.epsJson) || "[]");
      return Array.isArray(parsed) ? parsed : [];
    } catch {
      return [];
    }
  }, [params.epsJson]);

  const [resolved, setResolved] = useState<DonghuaResolvedEpisode | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [playingIdx, setPlayingIdx] = useState<number | null>(null);
  const [dlStartedIds, setDlStartedIds] = useState<Record<string, boolean>>({});
  const abortRef = useRef<AbortController | null>(null);

  const loadEpisode = useCallback(async () => {
    if (!epUrl) {
      setError("رابط الحلقة غير متوفر.");
      setLoading(false);
      return;
    }
    abortRef.current?.abort();
    const ctrl = new AbortController();
    abortRef.current = ctrl;
    setLoading(true);
    setError(null);
    setPlayingIdx(null);
    try {
      const data = await resolveDonghuaEpisode({
        source,
        episodeUrl: epUrl,
        seriesTitle: title,
        episodeNumber: epNum,
        signal: ctrl.signal,
      });
      if (!ctrl.signal.aborted) {
        setResolved(data);
        if (data.streams.length === 0) {
          setError("لم يتم العثور على سيرفر مباشر لهذه الحلقة حالياً.");
        }
      }
    } catch {
      if (!ctrl.signal.aborted) {
        setError("تعذّر استخراج روابط الحلقة. أعد المحاولة.");
      }
    } finally {
      if (!ctrl.signal.aborted) setLoading(false);
    }
  }, [epNum, epUrl, source, title]);

  useEffect(() => {
    void loadEpisode();
    return () => abortRef.current?.abort();
  }, [loadEpisode]);

  const prevEp = useMemo(() => {
    const sorted = [...allEps].sort((a, b) => a.n - b.n);
    const idx = sorted.findIndex((e) => e.n === epNum);
    return idx > 0 ? sorted[idx - 1] : null;
  }, [allEps, epNum]);

  const nextEp = useMemo(() => {
    const sorted = [...allEps].sort((a, b) => a.n - b.n);
    const idx = sorted.findIndex((e) => e.n === epNum);
    return idx >= 0 && idx < sorted.length - 1 ? sorted[idx + 1] : null;
  }, [allEps, epNum]);

  const navigateEpisode = useCallback(
    (target: CompactEp) => {
      router.replace({
        pathname: "/donghua/watch" as any,
        params: {
          source,
          slug,
          title,
          poster,
          ep: String(target.n),
          epUrl: target.u,
          epTitle: target.t,
          epsJson: paramStr(params.epsJson),
        },
      });
    },
    [params.epsJson, poster, router, slug, source, title],
  );

  const playerSources = useMemo<PlayerSource[]>(() => {
    if (!resolved) return [];
    return resolved.streams.map((st) => ({
      url: st.url,
      label: `${st.label} · ${st.quality}`,
      quality: mapPlayerQuality(st.quality),
      subtitleUrl: resolved.subtitleUrl || undefined,
      isArabic: Boolean(resolved.subtitleUrl),
      headers: st.headers,
    }));
  }, [resolved]);

  const handleDownload = useCallback(
    async (stream: DonghuaPlayableStream) => {
      try {
        setDlStartedIds((prev) => ({ ...prev, [stream.id]: true }));
        await startGlobalDownload({
          animeId: stableDonghuaId(slug || title),
          ep: Math.max(1, Math.floor(epNum)),
          title,
          cover: poster,
          site: `donghua_${source}_${stream.serverTag.toLowerCase()}`,
          quality: stream.quality,
          url: stream.url,
          hlsManifestUrl: stream.isHls ? stream.url : undefined,
          subtitleUrl: resolved?.subtitleUrl || undefined,
          headers: stream.headers,
        });
      } catch {
        setDlStartedIds((prev) => ({ ...prev, [stream.id]: false }));
        Alert.alert("تعذّر بدء التنزيل", "حاول اختيار سيرفر آخر للتنزيل.");
      }
    },
    [epNum, poster, resolved?.subtitleUrl, slug, source, title],
  );

  if (playingIdx !== null && playerSources.length > 0) {
    return (
      <RiftPlayer
        key={`donghua-${slug}-${epNum}-${playingIdx}`}
        sources={playerSources}
        initialSourceIndex={playingIdx}
        title={title}
        episode={epNum}
        episodeTitle={epTitle}
        totalEps={allEps.length || undefined}
        onBack={() => setPlayingIdx(null)}
        onNextEpisode={nextEp ? () => navigateEpisode(nextEp) : undefined}
        onPrevEpisode={prevEp ? () => navigateEpisode(prevEp) : undefined}
        onError={() => setPlayingIdx(null)}
      />
    );
  }

  const topPad = Platform.OS === "web" ? 10 : insets.top + 6;
  const downloadableStreams = (resolved?.streams || []).filter((st) => st.canDirectDownload);

  return (
    <View style={[s.root, { backgroundColor: colors.bg }]}>
      {/* Compact Header */}
      <View style={[s.topBar, { paddingTop: topPad }]}>
        <Pressable
          onPress={() => router.back()}
          focusable={tvMode}
          style={({ focused }) => [s.iconBtn, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="chevron-forward" size={19} color={colors.textPrimary} />
        </Pressable>
        <View style={s.topTitles}>
          <Text style={s.topTitle} numberOfLines={1}>{title}</Text>
          <Text style={s.topSub} numberOfLines={1}>الحلقة {epNum}</Text>
        </View>
        <View style={s.epNavRow}>
          <Pressable
            disabled={!prevEp}
            onPress={() => prevEp && navigateEpisode(prevEp)}
            style={[s.epNavBtn, !prevEp && { opacity: 0.4 }]}
          >
            <Text style={s.epNavText}>السابقة</Text>
          </Pressable>
          <Pressable
            disabled={!nextEp}
            onPress={() => nextEp && navigateEpisode(nextEp)}
            style={[s.epNavBtn, !nextEp && { opacity: 0.4 }]}
          >
            <Text style={s.epNavText}>التالية</Text>
          </Pressable>
          <Pressable onPress={() => void loadEpisode()} style={s.iconBtn}>
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </Pressable>
        </View>
      </View>

      <ScrollView
        contentContainerStyle={[s.scroll, { paddingBottom: insets.bottom + 40 }]}
        showsVerticalScrollIndicator={false}
      >
        {/* Compact Info Card */}
        <View style={s.infoCard}>
          {poster ? (
            <SafePosterImage uri={poster} style={s.infoPoster} resizeMode="cover" />
          ) : (
            <View style={[s.infoPoster, { backgroundColor: colors.surface, alignItems: "center", justifyContent: "center" }]}>
              <Ionicons name="film-outline" size={22} color={colors.textMuted} />
            </View>
          )}
          <View style={s.infoMeta}>
            <Text style={s.infoTitle} numberOfLines={2}>{title}</Text>
            <View style={s.infoBadges}>
              <View style={s.epBadge}>
                <Text style={s.epBadgeText}>الحلقة {epNum}</Text>
              </View>
              <View style={s.srcBadge}>
                <Text style={s.srcBadgeText}>{source === "animekhor" ? "AnimeKhor" : "AnimeXin"}</Text>
              </View>
            </View>
          </View>
        </View>

        {/* Arabic Subtitle Status Banner */}
        {!loading && resolved ? (
          <View
            style={[
              s.subBanner,
              resolved.subtitleSource === "opensubtitles_human"
                ? { backgroundColor: "rgba(16,185,129,0.12)", borderColor: "rgba(16,185,129,0.34)" }
                : resolved.subtitleSource === "animexin_ar"
                  ? { backgroundColor: "rgba(14,165,233,0.12)", borderColor: "rgba(56,189,248,0.34)" }
                  : { backgroundColor: "rgba(245,158,11,0.10)", borderColor: "rgba(245,158,11,0.30)" },
            ]}
          >
            <Ionicons
              name={resolved.subtitleUrl ? "checkmark-circle" : "information-circle"}
              size={16}
              color={
                resolved.subtitleSource === "opensubtitles_human"
                  ? "#34d399"
                  : resolved.subtitleSource === "animexin_ar"
                    ? "#38bdf8"
                    : "#fbbf24"
              }
            />
            <Text style={s.subBannerText}>{resolved.subtitleLabel}</Text>
          </View>
        ) : null}

        {loading ? (
          <View style={s.centerBox}>
            <ActivityIndicator size="large" color={colors.accent} />
            <Text style={s.mutedText}>جاري استخراج السيرفرات والترجمة العربية مباشرة على الهاتف...</Text>
          </View>
        ) : error ? (
          <View style={s.centerBox}>
            <Text style={s.errorText}>{error}</Text>
            <Pressable onPress={() => void loadEpisode()} style={s.retryBtn}>
              <Text style={s.retryBtnText}>إعادة المحاولة</Text>
            </Pressable>
          </View>
        ) : (
          <>
            {/* Watch Servers */}
            <Text style={s.sectionTitle}>سيرفرات المشاهدة المباشرة</Text>
            <View style={s.serverCard}>
              {(resolved?.streams || []).map((st, idx) => (
                <Pressable
                  key={st.id}
                  onPress={() => setPlayingIdx(idx)}
                  focusable={tvMode}
                  style={({ pressed, focused }) => [
                    s.serverRow,
                    idx < (resolved?.streams.length || 0) - 1 && s.rowDivider,
                    { opacity: pressed ? 0.8 : 1 },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <View style={s.playBtn}>
                    <Ionicons name="play" size={12} color="#fff" />
                    <Text style={s.playBtnText}>تشغيل</Text>
                  </View>
                  <View style={s.rowInfo}>
                    <View style={s.rowTitleLine}>
                      <View style={s.qBadge}>
                        <Text style={s.qBadgeText} maxFontSizeMultiplier={1.15}>{st.quality.toUpperCase()}</Text>
                      </View>
                      <Text style={s.rowTitle} numberOfLines={1}>{st.label}</Text>
                    </View>
                    <Text style={s.rowSub} numberOfLines={1}>
                      {st.isHls ? "بث HLS مباشر من الهاتف" : "ملف MP4 مباشر من الهاتف"}
                    </Text>
                  </View>
                  <View style={s.tagBox}>
                    <Text style={s.tagText}>{st.serverTag}</Text>
                  </View>
                </Pressable>
              ))}
            </View>

            {/* Download Servers (No overlap layout) */}
            {downloadableStreams.length > 0 ? (
              <>
                <Text style={[s.sectionTitle, { marginTop: 6 }]}>سيرفرات التنزيل المباشر</Text>
                <View style={s.serverCard}>
                  {downloadableStreams.map((st, idx) => {
                    const started = Boolean(dlStartedIds[st.id]);
                    return (
                      <Pressable
                        key={`dl-${st.id}`}
                        disabled={started}
                        onPress={() => void handleDownload(st)}
                        focusable={tvMode}
                        style={({ pressed, focused }) => [
                          s.serverRow,
                          idx < downloadableStreams.length - 1 && s.rowDivider,
                          { opacity: pressed ? 0.8 : 1 },
                          tvMode && tvFocusStyle(focused),
                        ]}
                      >
                        <View style={[s.dlBtn, started && { backgroundColor: "rgba(16,185,129,0.18)", borderColor: "#34d399" }]}>
                          <Ionicons name={started ? "checkmark-circle" : "download-outline"} size={14} color={started ? "#34d399" : "#fff"} />
                          <Text style={[s.dlBtnText, started && { color: "#34d399" }]} numberOfLines={1}>
                            {started ? "بدأ التنزيل" : "تنزيل"}
                          </Text>
                        </View>
                        <View style={s.rowInfo}>
                          <View style={s.rowTitleLine}>
                            <View style={s.qBadge}>
                              <Text style={s.qBadgeText} maxFontSizeMultiplier={1.15}>{st.quality.toUpperCase()}</Text>
                            </View>
                            <Text style={s.rowTitle} numberOfLines={1}>{st.label}</Text>
                          </View>
                          <Text style={s.rowSub} numberOfLines={1}>
                            {resolved?.subtitleUrl ? "يحفظ مع ملف الترجمة العربية" : "تنزيل مباشر على الهاتف"}
                          </Text>
                        </View>
                        <View style={s.tagBox}>
                          <Text style={s.tagText}>{st.serverTag}</Text>
                        </View>
                      </Pressable>
                    );
                  })}
                </View>
              </>
            ) : null}
          </>
        )}
      </ScrollView>
    </View>
  );
}

function createStyles(colors: ThemePalette) {
  return StyleSheet.create({
    root: { flex: 1 },
    topBar: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 8,
      paddingHorizontal: 12,
      paddingBottom: 9,
      borderBottomWidth: StyleSheet.hairlineWidth,
      borderBottomColor: colors.border,
    },
    iconBtn: {
      width: 34,
      height: 34,
      borderRadius: 10,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    topTitles: { flex: 1, alignItems: "flex-end" },
    topTitle: { fontSize: 13.5, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right" },
    topSub: { fontSize: 10.5, fontFamily: "Cairo_600SemiBold", color: colors.textMuted, textAlign: "right" },
    epNavRow: { flexDirection: ROW_RTL, alignItems: "center", gap: 6 },
    epNavBtn: {
      paddingHorizontal: 9,
      paddingVertical: 6,
      borderRadius: 9,
      backgroundColor: colors.card,
      borderWidth: 1,
      borderColor: colors.border,
    },
    epNavText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.textPrimary },
    scroll: { paddingHorizontal: 12, paddingTop: 10, gap: 8 },
    infoCard: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 11,
      backgroundColor: colors.card,
      borderRadius: 15,
      borderWidth: 1,
      borderColor: colors.border,
      padding: 10,
    },
    infoPoster: { width: 56, height: 80, borderRadius: 10 },
    infoMeta: { flex: 1, gap: 5, alignItems: "flex-end" },
    infoTitle: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right", lineHeight: 20 },
    infoBadges: { flexDirection: ROW_RTL, gap: 6, flexWrap: "wrap" },
    epBadge: {
      paddingHorizontal: 8,
      paddingVertical: 3,
      borderRadius: 8,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    epBadgeText: { fontSize: 11, fontFamily: "Cairo_700Bold", color: colors.accent },
    srcBadge: {
      paddingHorizontal: 8,
      paddingVertical: 3,
      borderRadius: 8,
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    srcBadgeText: { fontSize: 10.5, fontFamily: "Cairo_700Bold", color: colors.textSecondary },
    subBanner: {
      flexDirection: ROW_RTL,
      alignItems: "center",
      gap: 7,
      paddingHorizontal: 11,
      paddingVertical: 8,
      borderRadius: 11,
      borderWidth: 1,
    },
    subBannerText: { flex: 1, fontSize: 11.5, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right" },
    sectionTitle: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: colors.textPrimary, textAlign: "right", marginTop: 2 },
    serverCard: {
      backgroundColor: colors.card,
      borderRadius: 14,
      borderWidth: 1,
      borderColor: colors.border,
      overflow: "hidden",
    },
    serverRow: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "space-between",
      gap: 10,
      minHeight: 52,
      paddingHorizontal: 11,
      paddingVertical: 9,
    },
    rowDivider: { borderBottomWidth: StyleSheet.hairlineWidth, borderBottomColor: colors.border },
    playBtn: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center",
      gap: 5,
      minWidth: 78,
      height: 33,
      paddingHorizontal: 11,
      borderRadius: 9,
      backgroundColor: "#10b981",
      flexShrink: 0,
    },
    playBtnText: { fontSize: 11.5, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    dlBtn: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center",
      gap: 5,
      minWidth: 82,
      height: 33,
      paddingHorizontal: 11,
      borderRadius: 9,
      backgroundColor: "#0284c7",
      borderWidth: 1,
      borderColor: "#38bdf8",
      flexShrink: 0,
    },
    dlBtnText: { fontSize: 11, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
    rowInfo: { flex: 1, minWidth: 0, overflow: "hidden", alignItems: "flex-end", gap: 2 },
    rowTitleLine: { flexDirection: "row", alignItems: "center", justifyContent: "flex-end", gap: 6 },
    rowTitle: { fontSize: 12.5, fontFamily: "Cairo_700Bold", color: colors.textPrimary, textAlign: "right", flexShrink: 1 },
    rowSub: { fontSize: 10, fontFamily: "Cairo_600SemiBold", color: colors.textMuted, textAlign: "right" },
    qBadge: {
      paddingHorizontal: 6,
      paddingVertical: 1.5,
      borderRadius: 6,
      backgroundColor: "rgba(245, 158, 11, 0.14)",
      borderWidth: 1,
      borderColor: "rgba(245, 158, 11, 0.34)",
      flexShrink: 0,
    },
    qBadgeText: { fontSize: 9.5, fontFamily: "Cairo_800ExtraBold", color: "#fbbf24" },
    tagBox: {
      width: 30,
      height: 30,
      borderRadius: 8,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: "rgba(6, 182, 212, 0.14)",
      borderWidth: 1,
      borderColor: "rgba(6, 182, 212, 0.32)",
      flexShrink: 0,
    },
    tagText: { fontSize: 9.5, fontFamily: "Cairo_800ExtraBold", color: "#22d3ee" },
    centerBox: { alignItems: "center", justifyContent: "center", paddingVertical: 32, gap: 10 },
    mutedText: { fontSize: 12, fontFamily: "Cairo_600SemiBold", color: colors.textMuted, textAlign: "center" },
    errorText: { fontSize: 12.5, fontFamily: "Cairo_700Bold", color: "#ef4444", textAlign: "center" },
    retryBtn: { paddingHorizontal: 16, paddingVertical: 8, borderRadius: 10, backgroundColor: colors.accent },
    retryBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold", color: colors.buttonText },
  });
}
