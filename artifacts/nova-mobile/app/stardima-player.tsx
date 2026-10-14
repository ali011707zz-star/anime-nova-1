import React, { useCallback, useEffect, useMemo, useState } from "react";
import {
  ActivityIndicator,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useLocalSearchParams, useRouter } from "expo-router";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";
import { getBaseUrl } from "@/utils/api";
import { RiftPlayer, type PlayerSource } from "@/components/RiftPlayer";
import { useWatchPlayerOrientation } from "@/utils/watchOrientation";

function readParam(value: string | string[] | undefined) {
  return Array.isArray(value) ? value[0] || "" : value || "";
}

export default function StardimaPlayerScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const params = useLocalSearchParams<{ serverId?: string; serverName?: string; title?: string }>();
  const serverId = readParam(params.serverId);
  const title = readParam(params.title) || "تشغيل الفيديو";
  const [serverName, setServerName] = useState(readParam(params.serverName) || "StarDima");
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState("");
  const [reloadKey, setReloadKey] = useState(0);
  const [directSource, setDirectSource] = useState<PlayerSource[] | null>(null);
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
      setServerName(String(data.serverName || params.serverName || "StarDima"));
      setDirectSource([{
        url: directUrl.href,
        label: String(data.serverName || params.serverName || "StarDima"),
        ...(data.quality ? { quality: String(data.quality) } : {}),
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
  }, [params.serverName, serverId]);

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

  if (directSource?.length) {
    return (
      <RiftPlayer
        key={`${serverId}-${reloadKey}`}
        sources={directSource}
        title={title}
        episodeTitle={serverName}
        onBack={() => router.back()}
        onToggleOrientation={onToggleOrientation}
        onError={() => {
          setDirectSource(null);
          setLoadError("تعذر تشغيل الوسائط بعد فحص الرابط. ارجع واختر خادمًا آخر.");
        }}
      />
    );
  }

  return (
    <View style={styles.screen}>
      <View style={styles.header}>
        <Pressable
          onPress={() => router.back()}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          focusable={tvMode}
          style={({ focused }) => [styles.back, tvMode && focused && tvFocusStyle(true)]}
        >
          <Ionicons name="chevron-forward" size={21} color={colors.textPrimary} />
        </Pressable>
        <View style={{ flex: 1 }}>
          <Text numberOfLines={1} style={[styles.heading, tvMode && { fontSize: 20 }]}>{title}</Text>
          <Text numberOfLines={1} style={[styles.subheading, tvMode && { fontSize: 13 }]}>{serverName}</Text>
        </View>
      </View>

      {loading ? (
        <View style={styles.overlay}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.message}>جارٍ فحص الخادم الذي اخترته فقط واستخراج رابط الوسائط...</Text>
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
            onPress={() => router.back()}
            accessibilityRole="button"
            accessibilityLabel="اختيار خادم آخر"
            focusable={tvMode}
            style={({ focused }) => [styles.action, tvMode && focused && tvFocusStyle(true)]}
          >
            <Text style={styles.actionText}>اختيار خادم آخر</Text>
            <Ionicons name="chevron-forward" size={16} color={colors.accent} />
          </Pressable>
        </View>
      ) : null}
    </View>
  );
}
