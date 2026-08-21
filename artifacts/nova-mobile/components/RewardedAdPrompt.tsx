import React, { useEffect, useState } from "react";
import {
  Modal,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import { useVideoPlayer, VideoView } from "expo-video";
import { subscribeRewardPrompt } from "@/utils/adPolicy";
import type { RewardKind } from "@/utils/adPolicy";

type PendingPrompt = {
  kind: RewardKind;
  confirm: () => Promise<boolean>;
  resolve: (value: boolean) => void;
};

export function RewardedAdPrompt() {
  const [pending, setPending] = useState<PendingPrompt | null>(null);
  const [busy, setBusy] = useState(false);
  const router = useRouter();
  const player = useVideoPlayer(require("../assets/deku-ad.mp4"), (instance) => {
    instance.loop = true;
    instance.muted = true;
    instance.play();
  });

  useEffect(() => {
    return subscribeRewardPrompt((kind, confirm, resolve) => {
      setBusy(false);
      setPending({ kind, confirm, resolve });
    });
  }, []);

  const close = (value: boolean) => {
    if (!pending) return;
    const current = pending;
    setPending(null);
    setBusy(false);
    current.resolve(value);
  };

  const confirm = async () => {
    if (!pending || busy) return;
    setBusy(true);
    const result = await pending.confirm().catch(() => false);
    close(result);
  };

  const openSubscriptions = () => {
    close(false);
    router.push({ pathname: "/settings", params: { openPremium: "1" } } as any);
  };

  const isDownload = pending?.kind === "download";
  const title = isDownload ? "تابع التنزيل" : "افتح المشاهدة";
  const message = isDownload
    ? "أكملت 4 تنزيلات ناجحة. شاهد إعلانًا قصيرًا لمتابعة تنزيل الحلقات."
    : "إعلان قصير واحد يتيح لك المشاهدة لمدة 60 دقيقة بدون إعلانات.";

  return (
    <Modal
      visible={!!pending}
      transparent
      animationType="fade"
      statusBarTranslucent
      onRequestClose={() => !busy && close(false)}
    >
      <View style={styles.backdrop}>
        <View style={styles.card}>
          <View style={styles.topRow}>
            <View style={styles.badge}>
              <Ionicons name="sparkles" size={14} color="#fcd34d" />
              <Text style={styles.badgeText}>مكافأة مجانية</Text>
            </View>
            <Pressable
              accessibilityLabel="إغلاق"
              onPress={() => close(false)}
              style={({ pressed }) => [styles.close, pressed && styles.pressed]}
            >
              <Ionicons name="close" size={19} color="rgba(255,255,255,0.70)" />
            </Pressable>
          </View>

          <View style={styles.mediaFrame}>
            <VideoView
              player={player}
              style={styles.media}
              nativeControls={false}
              contentFit="cover"
              surfaceType={undefined}
              pointerEvents="none"
              accessible={false}
            />
            <View style={styles.mediaShade} />
          </View>

          <Text style={styles.title}>{title}</Text>
          <Text style={styles.message}>{message}</Text>
          <Text style={styles.note}>يظهر الإعلان فقط عند الحاجة إلى فتح هذه الميزة.</Text>

          <Pressable
            onPress={openSubscriptions}
            style={({ pressed }) => [styles.subscribe, pressed && styles.pressed]}
          >
            <Ionicons name="sparkles-outline" size={15} color="#fcd34d" />
            <Text style={styles.subscribeText}>إزالة الإعلانات — اشترك الآن</Text>
          </Pressable>

          <View style={styles.actions}>
            <Pressable
              onPress={() => close(false)}
              style={({ pressed }) => [styles.cancel, pressed && styles.pressed]}
            >
              <Text style={styles.cancelText}>ليس الآن</Text>
            </Pressable>
            <Pressable
              disabled={busy}
              onPress={() => void confirm()}
              style={({ pressed }) => [
                styles.confirm,
                busy && styles.disabled,
                pressed && styles.pressed,
              ]}
            >
              {busy ? (
                <Ionicons name="hourglass-outline" size={16} color="#fff" />
              ) : (
                <Ionicons name="play-circle" size={17} color="#fff" />
              )}
              <Text style={styles.confirmText}>
                {busy ? "جاري التحميل..." : "مشاهدة الإعلان"}
              </Text>
            </Pressable>
          </View>
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  backdrop: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 20,
    backgroundColor: "rgba(3, 3, 8, 0.82)",
  },
  card: {
    width: "100%",
    maxWidth: 390,
    overflow: "hidden",
    borderRadius: 25,
    padding: 16,
    backgroundColor: "#15121f",
    borderWidth: 1,
    borderColor: "rgba(167,139,250,0.28)",
    shadowColor: "#000",
    shadowOpacity: 0.45,
    shadowRadius: 24,
    shadowOffset: { width: 0, height: 12 },
    elevation: 14,
  },
  topRow: {
    minHeight: 28,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginBottom: 10,
  },
  badge: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    paddingHorizontal: 9,
    paddingVertical: 5,
    borderRadius: 10,
    backgroundColor: "rgba(251,191,36,0.10)",
    borderWidth: 1,
    borderColor: "rgba(251,191,36,0.24)",
  },
  badgeText: {
    color: "#fcd34d",
    fontSize: 10,
    fontFamily: "Cairo_700Bold",
  },
  close: {
    width: 30,
    height: 30,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 10,
    backgroundColor: "rgba(255,255,255,0.06)",
  },
  mediaFrame: {
    height: 142,
    overflow: "hidden",
    borderRadius: 17,
    backgroundColor: "#09090b",
    borderWidth: 1,
    borderColor: "rgba(196,181,253,0.18)",
  },
  media: { width: "100%", height: "100%" },
  mediaShade: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(26,12,52,0.20)",
  },
  title: {
    marginTop: 17,
    color: "#fff",
    textAlign: "right",
    fontSize: 18,
    fontFamily: "Cairo_800ExtraBold",
  },
  message: {
    marginTop: 5,
    color: "rgba(255,255,255,0.72)",
    textAlign: "right",
    fontSize: 12,
    lineHeight: 22,
    fontFamily: "Cairo_400Regular",
  },
  note: {
    marginTop: 9,
    color: "rgba(196,181,253,0.58)",
    textAlign: "right",
    fontSize: 10,
    fontFamily: "Cairo_400Regular",
  },
  subscribe: {
    minHeight: 38,
    marginTop: 13,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 6,
    borderRadius: 12,
    backgroundColor: "rgba(251,191,36,0.09)",
    borderWidth: 1,
    borderColor: "rgba(251,191,36,0.22)",
  },
  subscribeText: {
    color: "#fcd34d",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  actions: {
    flexDirection: "row",
    alignItems: "center",
    gap: 9,
    marginTop: 17,
  },
  cancel: {
    minHeight: 44,
    paddingHorizontal: 14,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 13,
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.10)",
  },
  cancelText: {
    color: "rgba(255,255,255,0.58)",
    fontSize: 11,
    fontFamily: "Cairo_700Bold",
  },
  confirm: {
    flex: 1,
    minHeight: 44,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 7,
    borderRadius: 13,
    backgroundColor: "#7c3aed",
    borderWidth: 1,
    borderColor: "rgba(221,214,254,0.30)",
  },
  confirmText: {
    color: "#fff",
    fontSize: 11,
    fontFamily: "Cairo_800ExtraBold",
  },
  disabled: { opacity: 0.62 },
  pressed: { opacity: 0.72 },
});