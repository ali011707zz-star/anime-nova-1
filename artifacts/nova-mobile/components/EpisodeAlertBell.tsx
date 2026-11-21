import React, { useEffect, useState, useCallback } from "react";
import {
  ActivityIndicator,
  Alert,
  Platform,
  Pressable,
  StyleSheet,
  ToastAndroid,
  type StyleProp,
  type ViewStyle,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useColors } from "@/hooks/useColors";
import { useTvMetrics } from "@/utils/tv";
import {
  hydrateEpisodeAlerts,
  isEpisodeAlertEnabled,
  subscribeEpisodeAlerts,
  toggleEpisodeAlert,
  type EpisodeAlertKind,
} from "@/utils/episodeAlerts";

export type EpisodeAlertBellProps = {
  contentKind: EpisodeAlertKind;
  contentKey: string;
  animeId?: number | null;
  title: string;
  titleAr?: string | null;
  posterUrl?: string | null;
  compact?: boolean;
  style?: StyleProp<ViewStyle>;
};

export function EpisodeAlertBell({
  contentKind,
  contentKey,
  animeId,
  title,
  titleAr,
  posterUrl,
  compact = false,
  style,
}: EpisodeAlertBellProps) {
  const { tv: tvMode } = useTvMetrics();
  const colors = useColors();
  const [enabled, setEnabled] = useState(() => isEpisodeAlertEnabled(contentKind, contentKey));
  const [busy, setBusy] = useState(false);

  useEffect(() => {
    if (tvMode || Platform.OS === "web") return;
    setEnabled(isEpisodeAlertEnabled(contentKind, contentKey));
    const unsub = subscribeEpisodeAlerts(() => {
      setEnabled(isEpisodeAlertEnabled(contentKind, contentKey));
    });
    void hydrateEpisodeAlerts();
    return unsub;
  }, [contentKind, contentKey, tvMode]);

  const handlePress = useCallback(async () => {
    if (busy || !contentKey) return;
    setBusy(true);
    try {
      const result = await toggleEpisodeAlert({
        contentKind,
        contentKey,
        animeId,
        title,
        titleAr,
        posterUrl,
      });
      if (result.reason === "permission_denied") {
        Alert.alert(
          "تفعيل الإشعارات",
          "يرجى السماح بالإشعارات لتطبيق Anime NOVA من إعدادات الهاتف لتصلك تنبيهات الحلقات الجديدة حتى والتطبيق مغلق.",
        );
        return;
      }
      if (result.reason === "network_error") {
        if (Platform.OS === "android") {
          ToastAndroid.show("تعذّر حفظ التنبيه، حاول مرة أخرى", ToastAndroid.SHORT);
        }
        return;
      }
      if (Platform.OS === "android") {
        ToastAndroid.show(
          result.subscribed
            ? "🔔 تم تفعيل تنبيه الحلقات الجديدة لهذا العمل"
            : "🔕 تم إيقاف تنبيه الحلقات لهذا العمل",
          ToastAndroid.SHORT,
        );
      }
    } finally {
      setBusy(false);
    }
  }, [busy, contentKind, contentKey, animeId, title, titleAr, posterUrl]);

  // Never render the alert bell on Android TV or web
  if (tvMode || Platform.OS === "web" || !contentKey) return null;

  return (
    <Pressable
      onPress={handlePress}
      disabled={busy}
      hitSlop={6}
      accessibilityRole="button"
      accessibilityLabel={enabled ? "إيقاف تنبيه الحلقات الجديدة" : "تفعيل تنبيه الحلقات الجديدة"}
      accessibilityState={{ selected: enabled, busy }}
      style={({ pressed }) => [
        compact ? styles.compactBtn : styles.btn,
        {
          backgroundColor: enabled ? "rgba(245, 158, 11, 0.16)" : colors.input,
          borderColor: enabled ? "rgba(245, 158, 11, 0.52)" : colors.border,
        },
        pressed && { opacity: 0.78 },
        style,
      ]}
    >
      {busy ? (
        <ActivityIndicator size="small" color={enabled ? "#F59E0B" : colors.textPrimary} />
      ) : (
        <Ionicons
          name={enabled ? "notifications" : "notifications-outline"}
          size={compact ? 15 : 18}
          color={enabled ? "#F59E0B" : colors.textPrimary}
        />
      )}
    </Pressable>
  );
}

const styles = StyleSheet.create({
  btn: {
    width: 36,
    height: 36,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  compactBtn: {
    width: 30,
    height: 30,
    borderRadius: 9,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
});
