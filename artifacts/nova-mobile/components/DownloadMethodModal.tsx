import React from "react";
import { Modal, Pressable, StyleSheet, Text, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useColors } from "@/hooks/useColors";

export interface DownloadMethodModalProps {
  visible: boolean;
  serverLabel?: string;
  qualityLabel?: string;
  onClose: () => void;
  onChooseInternal: () => void;
  onChooseAdm: () => void;
}

export function DownloadMethodModal({
  visible,
  serverLabel,
  qualityLabel,
  onClose,
  onChooseInternal,
  onChooseAdm,
}: DownloadMethodModalProps) {
  const colors = useColors();

  return (
    <Modal
      visible={visible}
      transparent
      animationType="fade"
      statusBarTranslucent
      onRequestClose={onClose}
    >
      <Pressable style={styles.backdrop} onPress={onClose}>
        <Pressable
          style={[
            styles.card,
            {
              backgroundColor: colors.surface,
              borderColor: colors.border,
            },
          ]}
          onPress={(e) => e.stopPropagation()}
        >
          {/* Header */}
          <View style={styles.header}>
            <View style={styles.headerTextWrap}>
              <Text style={[styles.title, { color: colors.textPrimary }]}>
                اختر طريقة التنزيل
              </Text>
              {(serverLabel || qualityLabel) ? (
                <Text style={[styles.subtitle, { color: colors.textSecondary }]} numberOfLines={1}>
                  {[serverLabel, qualityLabel].filter(Boolean).join(" · ")}
                </Text>
              ) : null}
            </View>
            <Pressable
              onPress={onClose}
              hitSlop={10}
              style={[styles.closeBtn, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}
              accessibilityRole="button"
              accessibilityLabel="إغلاق"
            >
              <Ionicons name="close" size={18} color={colors.textSecondary} />
            </Pressable>
          </View>

          {/* Option 1: Internal Download */}
          <Pressable
            onPress={onChooseInternal}
            style={({ pressed }) => [
              styles.optionCard,
              {
                backgroundColor: colors.surfaceElevated,
                borderColor: "rgba(56, 189, 248, 0.35)",
                opacity: pressed ? 0.8 : 1,
              },
            ]}
            accessibilityRole="button"
            accessibilityLabel="التحميل داخل التطبيق"
          >
            <View style={[styles.optionIcon, { backgroundColor: "rgba(2, 132, 199, 0.16)", borderColor: "rgba(56, 189, 248, 0.4)" }]}>
              <Ionicons name="download-outline" size={22} color="#38bdf8" />
            </View>
            <View style={styles.optionTextWrap}>
              <Text style={[styles.optionTitle, { color: colors.textPrimary }]}>
                التحميل داخل التطبيق
              </Text>
              <Text style={[styles.optionDesc, { color: colors.textSecondary }]}>
                حفظ الحلقة داخل قسم تنزيلاتي للمشاهدة بدون إنترنت
              </Text>
            </View>
            <Ionicons name="chevron-back" size={18} color={colors.textMuted} />
          </Pressable>

          {/* Option 2: ADM Direct MP4 */}
          <Pressable
            onPress={onChooseAdm}
            style={({ pressed }) => [
              styles.optionCard,
              {
                backgroundColor: colors.surfaceElevated,
                borderColor: "rgba(16, 185, 129, 0.38)",
                opacity: pressed ? 0.8 : 1,
              },
            ]}
            accessibilityRole="button"
            accessibilityLabel="التحميل عبر ADM"
          >
            <View style={[styles.optionIcon, { backgroundColor: "rgba(16, 185, 129, 0.15)", borderColor: "rgba(52, 211, 153, 0.4)" }]}>
              <Ionicons name="flash-outline" size={22} color="#34d399" />
            </View>
            <View style={styles.optionTextWrap}>
              <View style={styles.optionTitleRow}>
                <View style={styles.mp4Badge}>
                  <Text style={styles.mp4BadgeText}>MP4</Text>
                </View>
                <Text style={[styles.optionTitle, { color: colors.textPrimary }]}>
                  التحميل عبر ADM
                </Text>
              </View>
              <Text style={[styles.optionDesc, { color: colors.textSecondary }]}>
                تنزيل خارجي سريع لملفات MP4 المباشرة فقط
              </Text>
            </View>
            <Ionicons name="chevron-back" size={18} color={colors.textMuted} />
          </Pressable>

          <Text style={[styles.hint, { color: colors.textMuted }]}>
            يمكنك حفظ اختيارك الافتراضي في أي وقت من الإعدادات ← طريقة التحميل
          </Text>
        </Pressable>
      </Pressable>
    </Modal>
  );
}

const styles = StyleSheet.create({
  backdrop: {
    flex: 1,
    backgroundColor: "rgba(0, 0, 0, 0.68)",
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 20,
  },
  card: {
    width: "100%",
    maxWidth: 400,
    borderRadius: 20,
    borderWidth: 1,
    padding: 18,
    gap: 12,
  },
  header: {
    flexDirection: "row-reverse",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 4,
  },
  headerTextWrap: {
    flex: 1,
    alignItems: "flex-end",
  },
  title: {
    fontSize: 16,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  subtitle: {
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
    marginTop: 2,
  },
  closeBtn: {
    width: 32,
    height: 32,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    marginRight: 10,
  },
  optionCard: {
    flexDirection: "row-reverse",
    alignItems: "center",
    gap: 12,
    padding: 14,
    borderRadius: 14,
    borderWidth: 1,
  },
  optionIcon: {
    width: 44,
    height: 44,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  optionTextWrap: {
    flex: 1,
    alignItems: "flex-end",
    gap: 2,
  },
  optionTitleRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
  },
  optionTitle: {
    fontSize: 14,
    fontFamily: "Cairo_800ExtraBold",
    textAlign: "right",
  },
  optionDesc: {
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "right",
  },
  mp4Badge: {
    paddingHorizontal: 6,
    paddingVertical: 1,
    borderRadius: 6,
    backgroundColor: "rgba(16, 185, 129, 0.16)",
    borderWidth: 1,
    borderColor: "rgba(52, 211, 153, 0.4)",
  },
  mp4BadgeText: {
    color: "#34d399",
    fontSize: 9.5,
    fontFamily: "Cairo_800ExtraBold",
  },
  hint: {
    fontSize: 10.5,
    fontFamily: "Cairo_600SemiBold",
    textAlign: "center",
    marginTop: 2,
  },
});
