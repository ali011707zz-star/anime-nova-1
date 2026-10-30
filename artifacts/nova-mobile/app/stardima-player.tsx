import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  ActivityIndicator,
  Platform,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { RiftPlayer, type PlayerSource } from "@/components/RiftPlayer";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";
import { getWatchContentId, useApp } from "@/context/AppContext";
import { getStardimaProgressKey } from "@/utils/stardimaProgress";

type CatalogEpisode = {
  id: string | number;
  season_number: number;
  episode_number: number;
  episode_label?: string | null;
  title?: string | null;
};

function readParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] || "" : value || "";
}

export default function StardimaPlayerScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const { addToHistory } = useApp();
  const params = useLocalSearchParams<{
    serverId?: string;
    serverName?: string;
    quality?: string;
    episodeTitle?: string;
    title?: string;
    providerTitleId?: string;
    episodeId?: string;
    episodeNumber?: string;
    seasonNumber?: string;
    mediaType?: string;
    poster?: string;
    episodeIndex?: string;
    totalEpisodes?: string;
    prevEpisodeId?: string;
    prevEpisodeNumber?: string;
    prevSeasonNumber?: string;
    prevEpisodeTitle?: string;
    prevEpisodeIndex?: string;
    nextEpisodeId?: string;
    nextEpisodeNumber?: string;
    nextSeasonNumber?: string;
    nextEpisodeTitle?: string;
    nextEpisodeIndex?: string;
  }>();
  const serverId = readParam(params.serverId);
  const title = readParam(params.title) || "تشغيل الفيديو";
  const episodeTitle = readParam(params.episodeTitle);
  const requestedQuality = readParam(params.quality).trim();
  const providerTitleId = readParam(params.providerTitleId);
  const episodeId = readParam(params.episodeId);
  const episodeNumber = Math.max(1, Number(readParam(params.episodeNumber)) || 1);
  const seasonNumber = Math.max(1, Number(readParam(params.seasonNumber)) || 1);
  const mediaType = readParam(params.mediaType) === "movie" ? "movie" : "series";
  const poster = readParam(params.poster);
  const progressKey = getStardimaProgressKey(providerTitleId, episodeId);
  const [serverName, setServerName] = useState(readParam(params.serverName) || "StarDima");
  const [selectedQuality, setSelectedQuality] = useState(requestedQuality);
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState("");
  const [reloadKey, setReloadKey] = useState(0);
  const [directSource, setDirectSource] = useState<PlayerSource[] | null>(null);
  const [resumeTime, setResumeTime] = useState(0);
  const [resumeReady, setResumeReady] = useState(false);
  const [episodeSequence, setEpisodeSequence] = useState<CatalogEpisode[]>([]);
  const progressRef = useRef({ position: 0, duration: 0 });
  const onToggleOrientation = useWatchPlayerOrientation(
    Boolean(directSource?.length),
    tvMode,
  );
  const styles = useMemo(() => StyleSheet.create({
    screen: { flex: 1, backgroundColor: colors.background },
    header: {
      minHeight: 56 + (Platform.OS === "web" ? 0 : insets.top),
      paddingTop: Platform.OS === "web" ? 0 : insets.top,
      flexDirection: "row",
      alignItems: "center",
      gap: 10,
      paddingHorizontal: 12,
      borderBottomWidth: 1,
      borderBottomColor: colors.border,
      backgroundColor: colors.background,
    },
    back: {
      width: 38,
      height: 38,
      borderRadius: 11,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.surface,
      borderWidth: 1,
      borderColor: colors.border,
    },
    heading: {
      flex: 1,
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 14,
      textAlign: "right",
    },
    subheading: {
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 10,
      textAlign: "right",
    },
    webView: { flex: 1, backgroundColor: colors.background },
    overlay: {
      ...StyleSheet.absoluteFillObject,
      alignItems: "center",
      justifyContent: "center",
      backgroundColor: colors.background,
      gap: 10,
    },
    message: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 12,
      textAlign: "center",
      lineHeight: 20,
      paddingHorizontal: 24,
    },
    action: {
      flexDirection: "row",
      alignItems: "center",
      justifyContent: "center",
      gap: 8,
      marginTop: 7,
      paddingHorizontal: 16,
      paddingVertical: 10,
      borderRadius: 12,
      backgroundColor: colors.accentSurface,
      borderWidth: 1,
      borderColor: colors.accentBorder,
    },
    actionText: { color: colors.accent, fontFamily: "Cairo_700Bold", fontSize: 12 },
  }), [colors, insets.top]);

  useEffect(() => {
    let active = true;
    setResumeReady(false);
    if (!providerTitleId || !episodeId) {
      setResumeTime(0);
      setResumeReady(true);
      return () => { active = false; };
    }
    void AsyncStorage.getItem(progressKey).then((value) => {
      if (!active || !value) return;
      try {
        const parsed = JSON.parse(value) as { position?: number; duration?: number };
        const position = Number(parsed.position) || 0;
        const duration = Number(parsed.duration) || 0;
        setResumeTime(position);
        progressRef.current = { position, duration };
      } catch {
        const position = Number(value) || 0;
        setResumeTime(position);
        progressRef.current = { position, duration: 0 };
      }
    }).catch(() => {
      if (active) setResumeTime(0);
    }).finally(() => {
      if (active) setResumeReady(true);
    });
    return () => { active = false; };
  }, [episodeId, progressKey, providerTitleId]);

  useEffect(() => {
    if (!providerTitleId) {
      setEpisodeSequence([]);
      return;
    }
    const controller = new AbortController();
    void fetch(
      `${getBaseUrl()}/api/source-catalog/titles/stardima_catalog/${encodeURIComponent(providerTitleId)}`,
      { signal: controller.signal },
    ).then(async (response) => {
      if (!response.ok) return null;
      return await response.json() as { episodes?: CatalogEpisode[] };
    }).then((data) => {
      if (controller.signal.aborted) return;
      const rows = Array.isArray(data?.episodes) ? data.episodes : [];
      rows.sort((a, b) =>
        (Number(a.season_number) || 1) - (Number(b.season_number) || 1) ||
        (Number(a.episode_number) || 1) - (Number(b.episode_number) || 1),
      );
      setEpisodeSequence(rows);
    }).catch(() => {
      if (!controller.signal.aborted) setEpisodeSequence([]);
    });
    return () => controller.abort();
  }, [providerTitleId]);

  const currentEpisodeIndex = episodeSequence.findIndex(
    (episode) => String(episode.id) === episodeId,
  );

  const saveProgress = useCallback(async (position = progressRef.current.position) => {
    if (position <= 10 || !providerTitleId || !episodeId) return;
    const duration = progressRef.current.duration;
    try {
      await AsyncStorage.setItem(progressKey, JSON.stringify({ position: Math.floor(position), duration }));
    } catch {}
    try {
      await addToHistory({
        animeId: getWatchContentId("stardima", providerTitleId),
        ep: episodeNumber,
        totalEps: episodeSequence.length || undefined,
        season: seasonNumber,
        contentKind: "stardima",
        contentKey: providerTitleId,
        catalogEpisodeId: episodeId,
        catalogMediaType: mediaType,
        episodeTitle: episodeTitle || (mediaType === "movie" ? "الفيلم" : `الحلقة ${episodeNumber}`),
        seasonLabel: `الموسم ${seasonNumber}`,
        title: title || "StarDima",
        english: title || "StarDima",
        thumbnail: poster,
        position: Math.floor(position),
        duration: duration > 0 ? Math.floor(duration) : undefined,
        updatedAt: Date.now(),
      });
    } catch {}
  }, [
    addToHistory,
    episodeId,
    episodeNumber,
    episodeSequence.length,
    mediaType,
    poster,
    progressKey,
    providerTitleId,
    seasonNumber,
    title,
  ]);

  const openAdjacentEpisode = useCallback(async (direction: "next" | "prev") => {
    try { await saveProgress(); } catch {}
    const fallbackId = readParam(direction === "next" ? params.nextEpisodeId : params.prevEpisodeId);
    const targetIndex = currentEpisodeIndex + (direction === "next" ? 1 : -1);
    const target = episodeSequence[targetIndex];
    const fallbackEpisode = readParam(direction === "next" ? params.nextEpisodeNumber : params.prevEpisodeNumber);
    const fallbackSeason = readParam(direction === "next" ? params.nextSeasonNumber : params.prevSeasonNumber);
    const fallbackTitle = readParam(direction === "next" ? params.nextEpisodeTitle : params.prevEpisodeTitle);
    if (!target && !fallbackId) return;
    const episode = target || {
      id: fallbackId,
      episode_number: Number(fallbackEpisode) || 1,
      season_number: Number(fallbackSeason) || 1,
      title: fallbackTitle,
    };
    const targetPosition = target ? targetIndex : Number(readParam(
      direction === "next" ? params.nextEpisodeIndex : params.prevEpisodeIndex,
    )) || 0;
    const previous = target ? episodeSequence[targetPosition - 1] : undefined;
    const next = target ? episodeSequence[targetPosition + 1] : undefined;
    const targetParams: Record<string, string> = {
      providerTitleId,
      episodeId: String(episode.id),
      episodeNumber: String(Number(episode.episode_number) || 1),
      seasonNumber: String(Number(episode.season_number) || 1),
      episodeTitle: mediaType === "movie" ? "الفيلم" : episode.title || `الحلقة ${episode.episode_number}`,
      title,
      mediaType,
      poster,
      episodeIndex: String(targetPosition),
      totalEpisodes: String(episodeSequence.length || Number(readParam(params.totalEpisodes)) || targetPosition + 1),
    };
    if (previous) {
      targetParams.prevEpisodeId = String(previous.id);
      targetParams.prevEpisodeNumber = String(Number(previous.episode_number) || 1);
      targetParams.prevSeasonNumber = String(Number(previous.season_number) || 1);
      targetParams.prevEpisodeTitle = previous.title || `الحلقة ${previous.episode_number}`;
      targetParams.prevEpisodeIndex = String(targetPosition - 1);
    }
    if (next) {
      targetParams.nextEpisodeId = String(next.id);
      targetParams.nextEpisodeNumber = String(Number(next.episode_number) || 1);
      targetParams.nextSeasonNumber = String(Number(next.season_number) || 1);
      targetParams.nextEpisodeTitle = next.title || `الحلقة ${next.episode_number}`;
      targetParams.nextEpisodeIndex = String(targetPosition + 1);
    }
    router.replace({ pathname: "/stardima-servers" as any, params: targetParams });
  }, [
    currentEpisodeIndex,
    episodeSequence,
    mediaType,
    params,
    poster,
    providerTitleId,
    router,
    saveProgress,
    title,
  ]);

  const resolveSelectedServer = useCallback(async (signal: AbortSignal) => {
    if (!/^\d+$/.test(serverId)) {
      setLoadError("معرّف خادم StarDima غير صالح. ارجع واختر خادمًا آخر.");
      setLoading(false);
      return;
    }
    try {
      const response = await fetch(`${getBaseUrl()}/api/anime/stardima/resolve`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ serverId }),
        signal,
      });
      const data = await response.json().catch(() => ({})) as {
        directUrl?: string;
        type?: string;
        quality?: string | null;
        serverName?: string;
        headers?: { Referer?: string; Origin?: string };
        health?: { state?: string };
        error?: string;
      };
      if (!response.ok) throw new Error(data.error || "تعذر فحص الخادم المختار.");
      if (data.health?.state !== "verified") {
        throw new Error("لم يجتز الخادم فحص الوسائط. اختر خادمًا آخر.");
      }
      const directUrl = new URL(String(data.directUrl || ""));
      if (!["https:", "http:"].includes(directUrl.protocol) || directUrl.username || directUrl.password) {
        throw new Error("أعاد الخادم رابطًا غير صالح. اختر خادمًا آخر.");
      }
      if (data.type !== "hls" && data.type !== "mp4") {
        throw new Error("صيغة الوسائط غير مدعومة.");
      }
      const headers: Record<string, string> = {};
      for (const key of ["Referer", "Origin"] as const) {
        const value = String(data.headers?.[key] || "");
        if (value) {
          const parsed = new URL(value);
          if (parsed.protocol !== "https:" && parsed.protocol !== "http:") {
            throw new Error("تعذر التحقق من ترويسات المصدر.");
          }
          headers[key] = parsed.href;
        }
      }
      const resolvedServerName = String(data.serverName || params.serverName || "StarDima");
      const resolvedQuality = String(data.quality || requestedQuality || "").trim();
      setServerName(resolvedServerName);
      setSelectedQuality(resolvedQuality);
      setDirectSource([{
        url: directUrl.href,
        label: resolvedQuality ? `${resolvedServerName} · ${resolvedQuality}` : resolvedServerName,
        ...(resolvedQuality ? { quality: resolvedQuality } : {}),
        contentType: data.type === "hls" ? "hls" : "progressive",
        site: "stardima_catalog",
        ...(Object.keys(headers).length ? { headers } : {}),
      }]);
      setLoadError("");
    } catch (error: any) {
      if (!signal.aborted) {
        setDirectSource(null);
        setLoadError(error?.message || "تعذر التحقق من رابط الوسائط. اختر خادمًا آخر.");
      }
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [params.serverName, requestedQuality, serverId]);

  useEffect(() => {
    const controller = new AbortController();
    setDirectSource(null);
    setLoading(true);
    setLoadError("");
    void resolveSelectedServer(controller.signal);
    return () => {
      controller.abort();
    };
  }, [reloadKey, resolveSelectedServer]);

  if (directSource?.length && resumeReady) {
    return (
      <RiftPlayer
        key={`${serverId}-${reloadKey}`}
        sources={directSource}
        title={title}
        episode={currentEpisodeIndex >= 0 ? currentEpisodeIndex + 1 : Number(readParam(params.episodeIndex)) + 1}
        totalEps={episodeSequence.length || Number(readParam(params.totalEpisodes)) || 1}
        initialPosition={resumeTime}
        episodeTitle={[
          episodeTitle,
          serverName,
          selectedQuality,
        ].filter(Boolean).join(" · ")}
        onBack={() => {
          void saveProgress().finally(() => {
            if (router.canGoBack()) router.back();
            else router.replace("/(tabs)/browse" as any);
          });
        }}
        onProgress={(position, duration) => {
          progressRef.current = { position, duration };
        }}
        onPrevEpisode={currentEpisodeIndex > 0 || readParam(params.prevEpisodeId)
          ? () => { void openAdjacentEpisode("prev"); }
          : undefined}
        onNextEpisode={(
          (currentEpisodeIndex >= 0 && currentEpisodeIndex + 1 < episodeSequence.length) ||
          Boolean(readParam(params.nextEpisodeId))
        ) ? () => { void openAdjacentEpisode("next"); } : undefined}
        onToggleOrientation={onToggleOrientation}
        onError={() => {
          void saveProgress();
          setDirectSource(null);
          setLoadError("تعذر تشغيل الوسائط بعد فحص الرابط. ارجع واختر خادمًا آخر.");
        }}
      />
    );
  }

  return (
    <View style={styles.screen}>
      <View style={styles.header}>
        <View style={{ flex: 1 }}>
          <Text numberOfLines={1} style={[styles.heading, tvMode && { fontSize: 20 }]}>{title}</Text>
          <Text numberOfLines={1} style={[styles.subheading, tvMode && { fontSize: 13 }]}>
            {[
              episodeTitle,
              serverName,
              selectedQuality,
            ].filter(Boolean).join(" · ")}
          </Text>
        </View>
        <Pressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          focusable={tvMode}
          style={({ focused }) => [styles.back, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="arrow-back" size={21} color={colors.textPrimary} style={{ transform: [{ scaleX: -1 }] }} />
        </Pressable>
      </View>

      {loading || (directSource?.length && !resumeReady) ? (
        <View style={styles.overlay}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.message}>
            {directSource?.length && !resumeReady
              ? "جارٍ استعادة موضع المشاهدة..."
              : `جارٍ الاستعلام عن ${requestedQuality ? `جودة ${requestedQuality} في ` : ""}الخادم المختار واستخراج رابط الوسائط...`}
          </Text>
        </View>
      ) : loadError ? (
        <View style={styles.overlay}>
          <Ionicons name="cloud-offline-outline" size={34} color={colors.textMuted} />
          <Text style={styles.message}>{loadError}</Text>
          <Pressable
            onPress={() => {
              setLoading(true);
              setLoadError("");
              setReloadKey((value) => value + 1);
            }}
            accessibilityRole="button"
            accessibilityLabel="إعادة الاستعلام عن الخادم المختار"
            focusable={tvMode}
            style={({ focused }) => [styles.action, tvMode && focused && tvFocusStyle(true)]}
          >
            <Text style={styles.actionText}>إعادة فحص الخادم المحدد</Text>
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </Pressable>
          <Pressable
            onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
            accessibilityRole="button"
            accessibilityLabel="اختيار خادم آخر"
            focusable={tvMode}
            style={({ focused }) => [styles.action, tvMode && focused && tvFocusStyle(true)]}
          >
            <Text style={styles.actionText}>اختيار خادم آخر</Text>
            <Ionicons name="arrow-back" size={16} color={colors.accent} style={{ transform: [{ scaleX: -1 }] }} />
          </Pressable>
        </View>
      ) : null}
    </View>
  );
}
