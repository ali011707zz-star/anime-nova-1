import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import { Linking, StyleSheet, Text, View, useWindowDimensions } from "react-native";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

export function AnnouncementBanner() {
  const colors = useColors();
  const { remoteConfig } = useApp();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const [dismissed, setDismissed] = useState<string[]>([]);

  const visible = (remoteConfig.announcements || []).filter((a) => !dismissed.includes(a.id));
  if (!visible.length) return null;

  const ann = visible[0];
  const bgColors = {
    info: { bg: "rgba(59,130,246,0.15)", border: "rgba(59,130,246,0.4)", icon: "#3B82F6" as const },
    warning: { bg: "rgba(245,158,11,0.15)", border: "rgba(245,158,11,0.4)", icon: "#F59E0B" as const },
    success: { bg: "rgba(34,197,94,0.15)", border: "rgba(34,197,94,0.4)", icon: "#22C55E" as const },
  };
  const style = bgColors[ann.type] || bgColors.info;

  return (
    <View style={[styles.banner, { backgroundColor: style.bg, borderColor: style.border, marginHorizontal: 16, marginBottom: 14 }]}>
      <Ionicons
        name={ann.type === "warning" ? "warning" : ann.type === "success" ? "checkmark-circle" : "information-circle"}
        size={18}
        color={style.icon}
      />
      <Text style={[styles.text, { color: colors.text, flex: 1 }]}>{ann.message}</Text>
      {ann.link ? (
        <Pressable
          onPress={() => {
            if (ann.link) Linking.openURL(ann.link).catch(() => {});
          }}
          focusable={tvMode}
          style={({ focused }) => [styles.actionBtn, { backgroundColor: style.icon }, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="download-outline" size={14} color="#FFFFFF" />
          <Text style={styles.actionText}>تحديث الآن</Text>
        </Pressable>
      ) : null}
      <Pressable
        onPress={() => setDismissed((p) => [...p, ann.id])}
        focusable={tvMode}
        style={({ focused }) => [styles.closeBtn, tvMode && tvFocusStyle(focused)]}
      >
        <Ionicons name="close" size={18} color={colors.mutedForeground} />
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  banner: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
    padding: 12,
    borderRadius: 12,
    borderWidth: 1,
  },
  text: { fontSize: 12.5, lineHeight: 19, fontFamily: "Cairo_600SemiBold", textAlign: "right" },
  actionBtn: {
    flexDirection: "row",
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 11,
    paddingVertical: 6,
    borderRadius: 9,
  },
  actionText: {
    color: "#FFFFFF",
    fontSize: 11.5,
    fontFamily: "Cairo_700Bold",
  },
  closeBtn: {
    padding: 4,
    borderRadius: 8,
  },
});
