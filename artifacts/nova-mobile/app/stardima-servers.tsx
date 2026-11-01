import React, { useCallback, useEffect, useMemo, useRef, useState } from "react";
import {
  ActivityIndicator,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { TvPressable, isTvDevice, tvFocusStyle } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { ensureWatchAccess } from "@/utils/adPolicy";

type CatalogServer = {
  id?: number | string;
  server_key?: string;
  server_name?: string | null;
  source_host?: string | null;
  quality?: string | null;
  language?: string | null;
  availability_status?: string | null;
  health_state?: string | null;
  health_reason?: string | null;
  needs_recheck?: boolean;
  page_url?: string | null;
};

function readParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] || "" : value || "";
}

function safePageUrl(value: unknown) {
  try {
    const url = new URL(String(value || "").trim());
    if (!["http:", "https:"].includes(url.protocol) || url.username || url.password) return null;
    return url.href;
  } catch {
    return null;
  }
}

function healthReasonText(reason?: string | null) {
  const labels: Record<string, string> = {
    external_player_page_only: "صفحة مشغل خارجية فقط",
    unsupported_media_format: "صيغة وسائط غير مدعومة",
    upstream_expired: "انتهت صلاحية الرابط",
    upstream_not_found: "الرابط غير موجود",
    upstream_access_blocked: "المصدر يحجب الطلب",
    upstream_server_error: "خطأ في خادم المصدر",
    upstream_unreachable: "تعذر الوصول للمصدر",
    no_extractable_media: "تعذر استخراج الوسائط",
    hls_playlist_has_no_media: "قائمة HLS بلا مقاطع",
    hls_reference_returned_html: "رابط المقطع أعاد صفحة HTML",
    hls_media_reference_unverified: "تعذر التحقق من مقطع HLS",
    page_host_not_approved: "مضيف الصفحة غير معتمد",
    catalog_host_mismatch: "مضيف الرابط لا يطابق الكتالوج",
    unsafe_redirect: "إعادة توجيه غير آمنة",
    unsafe_media_url: "رابط الوسائط غير آمن",
    removed_from_latest_source_list: "أزيل من قائمة StarDima",
  };
  return reason ? labels[reason] || "سبب الفشل مسجل" : "";
}

export default function StardimaServersScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const params = useLocalSearchParams<{
    providerTitleId?: string | string[];
    episodeId?: string | string[];
    episodeNumber?: string | string[];
    seasonNumber?: string | string[];
    episodeTitle?: string | string[];
    title?: string | string[];
    mediaType?: string | string[];
    poster?: string | string[];
    episodeIndex?: string | string[];
    totalEpisodes?: string | string[];
    prevEpisodeId?: string | string[];
    prevEpisodeNumber?: string | string[];
    prevSeasonNumber?: string | string[];
    prevEpisodeTitle?: string | string[];
    prevEpisodeIndex?: string | string[];
    nextEpisodeId?: string | string[];
    nextEpisodeNumber?: string | string[];
    nextSeasonNumber?: string | string[];
    nextEpisodeTitle?: string | string[];
    nextEpisodeIndex?: string | string[];
  }>();
  const providerTitleId = readParam(params.providerTitleId);
  const episodeId = readParam(params.episodeId);
  const title = readParam(params.title) || "StarDima";
  const episodeTitle = readParam(params.episodeTitle) || "الحلقة";
  const episodeNumber = readParam(params.episodeNumber);
  const seasonNumber = readParam(params.seasonNumber);
  const isMovie = readParam(params.mediaType) === "movie";
  const episodeLabel = isMovie
    ? "الفيلم"
    : `${episodeTitle && episodeTitle !== `الحلقة ${episodeNumber}` ? `${episodeTitle} · ` : ""}الحلقة ${episodeNumber || ""}`;
  const episodeSubheading = isMovie
    ? "الفيلم"
    : `الموسم ${seasonNumber || "1"} · ${episodeLabel}`;
  const [servers, setServers] = useState<CatalogServer[]>([]);
  const [omittedServerCount, setOmittedServerCount] = useState(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [actionError, setActionError] = useState("");
  const [openingServerId, setOpeningServerId] = useState("");
  const [retryKey, setRetryKey] = useState(0);
  const requestRef = useRef<AbortController | null>(null);

  const styles = useMemo(() => StyleSheet.create({
    screen: { flex: 1, backgroundColor: colors.background },
    header: {
      minHeight: 56 + (Platform.OS === "web" ? 0 : insets.top),
      paddingTop: Platform.OS === "web" ? 0 : insets.top,
      flexDirection: "row",
      direction: "ltr",
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
    content: { padding: 16, paddingBottom: Math.max(insets.bottom, 20) + 28, gap: 14 },
    intro: {
      color: colors.textSecondary,
      fontFamily: "Cairo_400Regular",
      fontSize: 12,
      lineHeight: 20,
      textAlign: "right",
    },
    qualitySection: { gap: 7 },
    qualityHeading: {
      color: colors.accent,
      fontFamily: "Cairo_700Bold",
      fontSize: 13,
      textAlign: "right",
    },
    serverRow: {
      minHeight: 62,
      flexDirection: "row",
      alignItems: "center",
      gap: 10,
      paddingHorizontal: 12,
      paddingVertical: 8,
      borderRadius: 13,
      borderWidth: 1,
      borderColor: colors.border,
      backgroundColor: colors.surface,
    },
    serverName: {
      color: colors.textPrimary,
      fontFamily: "Cairo_700Bold",
      fontSize: 12,
      textAlign: "right",
    },
    serverMeta: {
      marginTop: 2,
      color: colors.textMuted,
      fontFamily: "Cairo_400Regular",
      fontSize: 10,
      textAlign: "right",
    },
    center: { flex: 1, alignItems: "center", justifyContent: "center", padding: 26, gap: 10 },
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
  }), [colors, insets.bottom, insets.top]);

  const loadServers = useCallback(async (signal: AbortSignal) => {
    if (!episodeId) {
      setError("معرّف الحلقة غير موجود في الكتالوج.");
      setLoading(false);
      return;
    }
    setLoading(true);
    setError("");
    setActionError("");
    try {
      const response = await fetch(
        `${getBaseUrl()}/api/source-catalog/episodes/${encodeURIComponent(episodeId)}/servers`,
        { signal },
      );
      if (!response.ok) throw new Error("تعذر الاستعلام عن خوادم الحلقة.");
      const data = await response.json() as {
        servers?: CatalogServer[];
        omittedServerCount?: number;
      };
      if (signal.aborted) return;
      const usable = (Array.isArray(data.servers) ? data.servers : [])
        .filter((server) => /^\d+$/.test(String(server.id || "")) && Boolean(safePageUrl(server.page_url)))
        .filter((server) => String(server.health_state || "").toLowerCase() !== "source_removed");
      setServers(usable);
      setOmittedServerCount(Math.max(0, Number(data.omittedServerCount) || 0));
      if (!usable.length) {
        setError(
          Number(data.omittedServerCount) > 0
            ? "أُخفيت روابط فشل فحصها مؤخرًا. لا يوجد خادم متاح لهذه الحلقة الآن."
            : "لا توجد خوادم مسجلة لهذه الحلقة بعد.",
        );
      }
    } catch (loadError: any) {
      if (!signal.aborted) setError(loadError?.message || "تعذر الاستعلام عن خوادم الحلقة.");
    } finally {
      if (!signal.aborted) setLoading(false);
    }
  }, [episodeId]);

  useEffect(() => {
    requestRef.current?.abort();
    const controller = new AbortController();
    requestRef.current = controller;
    void loadServers(controller.signal);
    return () => controller.abort();
  }, [loadServers, retryKey]);

  const qualityGroups = useMemo(() => {
    const groups = new Map<string, CatalogServer[]>();
    for (const server of servers) {
      const quality = String(server.quality || "جودة غير محددة").trim();
      const group = groups.get(quality) || [];
      group.push(server);
      groups.set(quality, group);
    }
    return [...groups.entries()];
  }, [servers]);

  const chooseServer = useCallback(async (server: CatalogServer) => {
    const serverId = String(server.id || "");
    if (!serverId || !safePageUrl(server.page_url) || openingServerId) return;
    setOpeningServerId(serverId);
    setActionError("");
    try {
      if (!(await ensureWatchAccess())) {
        setActionError("لم يتم فتح المشاهدة. اختر الخادم والجودة ثم أعد المحاولة.");
        return;
      }
      router.push({
        pathname: "/stardima-player" as any,
        params: {
          serverId,
          serverName: String(server.server_name || server.source_host || "StarDima"),
          quality: String(server.quality || ""),
          providerTitleId,
          episodeId,
          episodeNumber: readParam(params.episodeNumber),
          seasonNumber: readParam(params.seasonNumber),
          mediaType: readParam(params.mediaType) || "series",
          poster: readParam(params.poster),
          episodeIndex: readParam(params.episodeIndex),
          totalEpisodes: readParam(params.totalEpisodes),
          prevEpisodeId: readParam(params.prevEpisodeId),
          prevEpisodeNumber: readParam(params.prevEpisodeNumber),
          prevSeasonNumber: readParam(params.prevSeasonNumber),
          prevEpisodeTitle: readParam(params.prevEpisodeTitle),
          prevEpisodeIndex: readParam(params.prevEpisodeIndex),
          nextEpisodeId: readParam(params.nextEpisodeId),
          nextEpisodeNumber: readParam(params.nextEpisodeNumber),
          nextSeasonNumber: readParam(params.nextSeasonNumber),
          nextEpisodeTitle: readParam(params.nextEpisodeTitle),
          nextEpisodeIndex: readParam(params.nextEpisodeIndex),
          title,
          episodeTitle: episodeSubheading,
        },
      });
    } catch {
      setActionError("تعذر بدء الاستعلام عن الخادم. حاول مرة أخرى.");
    } finally {
      setOpeningServerId("");
    }
  }, [episodeId, episodeSubheading, openingServerId, params, providerTitleId, router, title]);

  return (
    <View style={styles.screen}>
      <View style={styles.header}>
        <View style={{ flex: 1 }}>
          <Text numberOfLines={1} style={[styles.heading, tvMode && { fontSize: 20 }]}>
            {title}
          </Text>
          <Text numberOfLines={1} style={[styles.subheading, tvMode && { fontSize: 13 }]}>
            {episodeSubheading}
          </Text>
        </View>
        <TvPressable
          onPress={() => router.canGoBack() ? router.back() : router.replace("/(tabs)/browse" as any)}
          accessibilityRole="button"
          accessibilityLabel="رجوع إلى الحلقات"
          focusable={tvMode}
          style={({ focused }) => [styles.back, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="arrow-back" size={21} color={colors.textPrimary} style={{ transform: [{ scaleX: -1 }] }} />
        </TvPressable>
      </View>

      {loading ? (
        <View style={styles.center}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.message}>جارٍ الاستعلام عن خوادم الحلقة وجوداتها...</Text>
        </View>
      ) : error ? (
        <View style={styles.center}>
          <Ionicons name="cloud-offline-outline" size={34} color={colors.textMuted} />
          <Text style={styles.message}>{error}</Text>
          <TvPressable
            onPress={() => setRetryKey((value) => value + 1)}
            accessibilityRole="button"
            accessibilityLabel="إعادة الاستعلام عن السيرفرات"
            focusable={tvMode}
            style={({ focused }) => [styles.action, tvMode && focused && tvFocusStyle(true)]}
          >
            <Text style={styles.actionText}>إعادة الاستعلام</Text>
            <Ionicons name="refresh" size={16} color={colors.accent} />
          </TvPressable>
        </View>
      ) : (
        <ScrollView contentContainerStyle={styles.content}>
          <Text style={[styles.intro, tvMode && { fontSize: 16, lineHeight: 26 }]}>
            اختر الجودة ثم السيرفر. سيُفحص السيرفر المحدد وتُستخرج وصلة التشغيل قبل فتح المشغل.
          </Text>
          {qualityGroups.map(([quality, group]) => (
            <View key={quality} style={styles.qualitySection}>
              <Text style={[styles.qualityHeading, tvMode && { fontSize: 18 }]}>
                الجودة: {quality}
              </Text>
              {group.map((server) => {
                const serverId = String(server.id || server.server_key || "");
                const serverName = String(server.server_name || server.source_host || "StarDima");
                const language = String(server.language || "").trim();
                const statusLabel =
                  server.health_state === "verified" || server.availability_status === "media_verified"
                    ? "فحص سابق ناجح — سيُعاد التحقق قبل التشغيل"
                    : server.needs_recheck
                      ? `حالة قديمة — ${healthReasonText(server.health_reason) || "سيُعاد فحصه"}`
                      : server.health_state === "blocked"
                        ? `حُجب الفحص سابقًا — ${healthReasonText(server.health_reason) || "يمكن إعادة المحاولة"}`
                        : "غير مفحوص — سيتم فحصه عند الاختيار";
                const isOpening = openingServerId === String(server.id || "");
                return (
                  <TvPressable
                    key={serverId || serverName}
                    onPress={() => void chooseServer(server)}
                    accessibilityRole="button"
                    accessibilityLabel={`فحص وتشغيل ${serverName} بجودة ${quality}`}
                    focusable={tvMode}
                    style={({ focused, pressed }) => [
                      styles.serverRow,
                      { opacity: pressed || (openingServerId && !isOpening) ? 0.7 : 1 },
                      tvMode && focused && tvFocusStyle(true),
                    ]}
                  >
                    {isOpening
                      ? <ActivityIndicator size="small" color={colors.accent} />
                      : <Ionicons name="play-circle-outline" size={24} color={colors.accent} />}
                    <View style={{ flex: 1 }}>
                      <Text numberOfLines={1} style={[styles.serverName, tvMode && { fontSize: 16 }]}>
                        {serverName}{language ? ` · ${language}` : ""}
                      </Text>
                      <Text numberOfLines={1} style={[styles.serverMeta, tvMode && { fontSize: 12 }]}>
                        {statusLabel}
                      </Text>
                    </View>
                    <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
                  </TvPressable>
                );
              })}
            </View>
          ))}
          {omittedServerCount > 0 ? (
            <Text style={[styles.message, { paddingVertical: 8 }]}>
              أُخفي {omittedServerCount} رابطًا فشل فحصه مؤخرًا.
            </Text>
          ) : null}
          {actionError ? <Text style={[styles.message, { color: colors.destructive }]}>{actionError}</Text> : null}
        </ScrollView>
      )}
    </View>
  );
}
