import { Ionicons } from "@expo/vector-icons";
import { useVideoPlayer, VideoView } from "expo-video";
import * as Linking from "expo-linking";
import React, { useEffect } from "react";
import {
  Modal,
  Pressable,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { isTvDevice, tvFocusStyle } from "../utils/tv";

const TELEGRAM_URL = "https://t.me/Anime_NOVA_0";

interface TelegramAnnouncementModalProps {
  visible: boolean;
  onClose: () => void;
}

export function TelegramAnnouncementModal({
  visible,
  onClose,
}: TelegramAnnouncementModalProps) {
  const { width, height } = useWindowDimensions();
  const tvMode = isTvDevice(width, height);
  const player = useVideoPlayer(
    require("../assets/jjk-lethal-company-dance.mp4"),
    (instance) => {
      instance.loop = true;
      instance.muted = false;
    },
  );

  useEffect(() => {
    try {
      if (visible) player.play();
      else player.pause();
    } catch {}
  }, [player, visible]);

  const openTelegram = () => {
    Linking.openURL(TELEGRAM_URL).catch(() => {});
  };

  return (
    <Modal
      visible={visible}
      transparent
      animationType="fade"
      onRequestClose={onClose}
      statusBarTranslucent
    >
      <View style={styles.backdrop}>
        <View style={[styles.card, tvMode && styles.tvCard]} accessibilityViewIsModal>
          <Pressable
            accessibilityLabel="إغلاق"
            testID="telegram-announcement-close"
            onPress={onClose}
            focusable={tvMode}
            hasTVPreferredFocus={false}
            hitSlop={tvMode ? 14 : 8}
            style={({ pressed, focused }) => [
              styles.closeButton,
              tvMode && styles.tvCloseButton,
              tvMode && tvFocusStyle(focused),
              pressed && styles.pressed,
            ]}
          >
            <Ionicons name="close" size={21} color="#FFFFFF" />
          </Pressable>

          <View style={styles.videoFrame}>
            <VideoView
              player={player}
              style={styles.video}
              // الإعلان عمودي؛ احتفظ بالإطار الكامل حتى لا يُقصّ الجزء العلوي.
              contentFit="contain"
              nativeControls={false}
            />
          </View>

          <View style={[styles.content, tvMode && styles.tvContent]}>
            <View style={styles.telegramIcon}>
              <Ionicons name="paper-plane" size={20} color="#FFFFFF" />
            </View>
            <Text style={[styles.title, tvMode && styles.tvTitle]}>انضم إلى قناتنا على تلجرام</Text>
            <Text style={[styles.message, tvMode && styles.tvMessage]}>
              تابع أخبار وتحديثات NOVA Anime عبر قناتنا الرسمية على تلجرام،
              وأرسل لنا بلاغاتك عن أي مشكلة تواجهك.
            </Text>

            <Pressable
              accessibilityLabel="الانضمام إلى قناة تلجرام"
              testID="telegram-announcement-open"
              onPress={openTelegram}
              focusable={tvMode}
              hasTVPreferredFocus={tvMode}
              style={({ pressed, focused }) => [
                styles.primaryButton,
                tvMode && styles.tvButton,
                tvMode && tvFocusStyle(focused),
                pressed && styles.pressed,
              ]}
            >
              <Ionicons name="paper-plane-outline" size={18} color="#FFFFFF" />
              <Text style={[styles.primaryButtonText, tvMode && styles.tvPrimaryButtonText]}>انضم الآن</Text>
            </Pressable>
            <Pressable
              accessibilityLabel="متابعة إلى التطبيق"
              testID="telegram-announcement-dismiss"
              onPress={onClose}
              focusable={tvMode}
              style={({ pressed, focused }) => [
                styles.secondaryButton,
                tvMode && styles.tvSecondaryButton,
                tvMode && tvFocusStyle(focused),
                pressed && styles.pressed,
              ]}
            >
              <Text style={[styles.secondaryButtonText, tvMode && styles.tvSecondaryButtonText]}>متابعة إلى التطبيق</Text>
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
    backgroundColor: "rgba(0, 0, 0, 0.78)",
  },
  card: {
    width: "100%",
    maxWidth: 420,
    overflow: "hidden",
    borderRadius: 26,
    backgroundColor: "#15111F",
    borderWidth: 1,
    borderColor: "rgba(216, 180, 254, 0.24)",
    shadowColor: "#000000",
    shadowOpacity: 0.45,
    shadowRadius: 24,
    shadowOffset: { width: 0, height: 12 },
    elevation: 12,
  },
  tvCard: {
    width: "78%",
    maxWidth: 760,
    borderRadius: 30,
  },
  closeButton: {
    position: "absolute",
    top: 12,
    right: 12,
    zIndex: 2,
    width: 34,
    height: 34,
    alignItems: "center",
    justifyContent: "center",
    borderRadius: 17,
    backgroundColor: "rgba(0, 0, 0, 0.48)",
  },
  tvCloseButton: { width: 52, height: 52, borderRadius: 26, top: 16, right: 16 },
  videoFrame: {
    width: "100%",
    aspectRatio: 498 / 436,
    backgroundColor: "#09090B",
  },
  video: {
    flex: 1,
  },
  content: {
    alignItems: "center",
    paddingHorizontal: 22,
    paddingTop: 18,
    paddingBottom: 20,
  },
  tvContent: {
    paddingHorizontal: 44,
    paddingTop: 28,
    paddingBottom: 34,
  },
  telegramIcon: {
    width: 42,
    height: 42,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 9,
    borderRadius: 21,
    backgroundColor: "#229ED9",
  },
  title: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 19,
    textAlign: "center",
  },
  tvTitle: { fontSize: 30 },
  message: {
    marginTop: 7,
    color: "rgba(255, 255, 255, 0.7)",
    fontFamily: "Cairo_400Regular",
    fontSize: 13,
    lineHeight: 22,
    textAlign: "center",
  },
  tvMessage: { fontSize: 20, lineHeight: 32 },
  primaryButton: {
    width: "100%",
    height: 46,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    marginTop: 17,
    borderRadius: 15,
    backgroundColor: "#229ED9",
  },
  primaryButtonText: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 14,
  },
  tvPrimaryButtonText: { fontSize: 21 },
  tvButton: { height: 62, borderRadius: 16 },
  secondaryButton: {
    paddingVertical: 10,
    paddingHorizontal: 16,
  },
  secondaryButtonText: {
    color: "rgba(255, 255, 255, 0.55)",
    fontFamily: "Cairo_600SemiBold",
    fontSize: 12,
  },
  tvSecondaryButtonText: { fontSize: 18 },
  tvSecondaryButton: { paddingVertical: 16, paddingHorizontal: 24, borderRadius: 14 },
  pressed: {
    opacity: 0.72,
  },
});