import { Ionicons } from "@expo/vector-icons";
import React, { useState } from "react";
import { Pressable, StyleSheet, Text, View, useWindowDimensions } from "react-native";
import { useColors } from "@/hooks/useColors";
import { useApp } from "@/context/AppContext";
import { isTvDevice, tvFocusStyle } from "@/utils/tv";

export function AnnouncementBanner() {
  const colors = useColors();
  const { remoteConfig } = useApp();
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const [dismissed, setDismissed] = useState<string[]>([]);

  const visible = remoteConfig.announcements.filter((a) => !dismissed.includes(a.id));
  if (!visible.length) return null;

  const ann = visible[0];

  const bgColors = {
    info: { bg: "rgba(59,130,246,0.15)", border: "rgba(59,130,246,0.4)", icon: "#3B82F6" as const },
    warning: { bg: "rgba(245,158,11,0.15)", border: "rgba(245,158,11,0.4)", icon: "#F59E0B" as const },
    success: { bg: "rgba(34,197,94,0.15)", border: "rgba(34,197,94,0.4)", icon: "#22C55E" as const },
  };

  const style = bgColors[ann.type] || bgColors.info;

  return (
    <View style={[styles.banner, { backgroundColor: style.bg, borderColor: style.border, marginHorizontal: 16, marginBottom: 16 }]}>
      <Ionicons
        name={ann.type === "warning" ? "warning" : ann.type === "success" ? "checkmark-circle" : "information-circle"}
        size={18}
        color={style.icon}
      />
      <Text style={[styles.text, { color: colors.text, flex: 1 }]}>{ann.message}</Text>
      <Pressable onPress={() => setDismissed((p) => [...p, ann.id])} focusable={tvMode}
        style={({ focused }) => tvMode && tvFocusStyle(focused)}>
        <Ionicons name="close" size={18} color={colors.mutedForeground} />
      </Pressable>
    </View>
  );
}

const styles = StyleSheet.create({
  banner: {
    flexDirection: "row", alignItems: "center", gap: 10,
    padding: 12, borderRadius: 10, borderWidth: 1,
  },
  text: { fontSize: 13, lineHeight: 18 },
});
