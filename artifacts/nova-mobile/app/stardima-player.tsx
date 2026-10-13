import React, { useMemo, useState } from "react";
import {
  ActivityIndicator,
  Linking,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { WebView } from "react-native-webview";
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

function validPageUrl(raw: string) {
  try {
    const parsed = new URL(raw);
    return parsed.protocol === "http:" || parsed.protocol === "https:" ? parsed.href : "";
  } catch {
    return "";
  }
}

export default function StardimaPlayerScreen() {
  const colors = useColors();
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice();
  const params = useLocalSearchParams<{ pageUrl?: string; title?: string; server?: string }>();
  const url = validPageUrl(readParam(params.pageUrl));
  const title = readParam(params.title) || "تشغيل الفيديو";
  const server = readParam(params.server) || "مشغل خارجي";
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState("");
  const [reloadKey, setReloadKey] = useState(0);
  const [directSource, setDirectSource] = useState<PlayerSource[] | null>(null);
  const [fallbackReady, setFallbackReady] = useState(false);
  const [nativeFailed, setNativeFailed] = useState(false);
  const onToggleOrientation = useWatchPlayerOrientation(
    Boolean(directSource?.length) && !nativeFailed,
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

  React.useEffect(() => {
    if (!url) {
      setFallbackReady(true);
      setLoading(false);
      return;
    }
    if (Platform.OS === "web") {
      setFallbackReady(true);
      setLoading(false);
      return;
    }

    const controller = new AbortController();
    let active = true;
    setDirectSource(null);
    setNativeFailed(false);
    setFallbackReady(false);
    setLoading(true);
    setLoadError("");

    const fallbackTimer = setTimeout(() => {
      if (!active) return;
      setFallbackReady(true);
      setLoading(false);
      controller.abort();
    }, 6500);

    const resolveDirectMedia = async () => {
      try {
        const response = await fetch(
          `${getBaseUrl()}/api/anime/extract-video?url=${encodeURIComponent(url)}`,
          { signal: controller.signal },
        );
        if (!response.ok) throw new Error("no_direct_media");
        const data = await response.json() as { directUrl?: string; type?: string };
        if (!active || controller.signal.aborted || !data.directUrl) return;
        let directUrl = String(data.directUrl).trim();
        if (directUrl.startsWith("/")) directUrl = `${getBaseUrl()}${directUrl}`;
        const parsed = new URL(directUrl);
        if (parsed.protocol !== "http:" && parsed.protocol !== "https:") return;
        const origin = new URL(url).origin;
        setDirectSource([{
          url: parsed.href,
          label: server,
          quality: "720p HD",
          site: "external_catalog",
          headers: { Referer: url, Origin: origin },
        }]);
      } catch {
        // A page link is still usable in the in-app WebView when it has no
        // extractable direct stream.
      } finally {
        if (active) {
          clearTimeout(fallbackTimer);
          setFallbackReady(true);
          setLoading(false);
        }
      }
    };
    void resolveDirectMedia();

    return () => {
      active = false;
      clearTimeout(fallbackTimer);
      controller.abort();
    };
  }, [reloadKey, server, url]);

  const handleOpenBrowser = () => {
    if (url) void Linking.openURL(url).catch(() => setLoadError("تعذر فتح رابط المشاهدة."));
  };

  if (directSource?.length && !nativeFailed) {
    return (
      <RiftPlayer
        key={`${url}-${reloadKey}`}
        sources={directSource}
        title={title}
        episodeTitle={server}
        onBack={() => router.back()}
        onToggleOrientation={onToggleOrientation}
        onError={() => setNativeFailed(true)}
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
          <Text numberOfLines={1} style={[styles.subheading, tvMode && { fontSize: 13 }]}>{server}</Text>
        </View>
      </View>

      {!url ? (
        <View style={styles.overlay}>
          <Ionicons name="link-outline" size={34} color={colors.textMuted} />
          <Text style={styles.message}>رابط المشاهدة غير صالح أو لم يعد متاحًا.</Text>
        </View>
      ) : Platform.OS === "web" ? (
        <View style={styles.overlay}>
          <Ionicons name="open-outline" size={34} color={colors.accent} />
          <Text style={styles.message}>يفتح هذا المصدر داخل مشغل التطبيق على الهاتف. يمكنك فتحه في المتصفح من هنا.</Text>
          <Pressable onPress={handleOpenBrowser} accessibilityRole="button" style={styles.action}>
            <Text style={styles.actionText}>فتح رابط المشاهدة</Text>
            <Ionicons name="arrow-up-left" size={16} color={colors.accent} />
          </Pressable>
        </View>
      ) : !fallbackReady ? (
        <View style={styles.overlay}>
          <ActivityIndicator size="large" color={colors.accent} />
          <Text style={styles.message}>جارٍ تجهيز المشغل...</Text>
        </View>
      ) : (
        <View style={{ flex: 1 }}>
          <WebView
            key={`${url}-${reloadKey}`}
            source={{ uri: url }}
            style={styles.webView}
            javaScriptEnabled
            domStorageEnabled
            thirdPartyCookiesEnabled
            allowsInlineMediaPlayback
            allowsFullscreenVideo
            mediaPlaybackRequiresUserAction={false}
            mixedContentMode="compatibility"
            setSupportMultipleWindows={false}
            onLoadStart={() => {
              setLoadError("");
              setLoading(true);
            }}
            onLoadEnd={() => setLoading(false)}
            onError={(event) => {
              setLoading(false);
              setLoadError(event.nativeEvent.description || "تعذر تحميل صفحة المشغل.");
            }}
            onHttpError={(event) => {
              if (event.nativeEvent.statusCode >= 400) {
                setLoading(false);
                setLoadError(`تعذر فتح المشغل (HTTP ${event.nativeEvent.statusCode}).`);
              }
            }}
            onShouldStartLoadWithRequest={(request) =>
              request.url === "about:blank" || /^https?:\/\//i.test(request.url)
            }
          />
          {loading ? (
            <View pointerEvents="none" style={styles.overlay}>
              <ActivityIndicator size="large" color={colors.accent} />
              <Text style={styles.message}>جارٍ فتح مشغل {server}...</Text>
            </View>
          ) : null}
          {loadError ? (
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
                style={styles.action}
              >
                <Text style={styles.actionText}>إعادة المحاولة</Text>
                <Ionicons name="refresh" size={16} color={colors.accent} />
              </Pressable>
            </View>
          ) : null}
        </View>
      )}
    </View>
  );
}
