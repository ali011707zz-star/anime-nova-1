import { Ionicons } from "@expo/vector-icons";
import { useVideoPlayer, VideoView } from "expo-video";
import { LinearGradient } from "expo-linear-gradient";
import * as Linking from "expo-linking";
import React, { useCallback, useEffect, useRef } from "react";
import {
  BackHandler,
  Modal,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "../utils/tv";
import { useColors } from "../hooks/useColors";
import { useApp } from "../context/AppContext";

const TELEGRAM_URL = "https://t.me/Anime_NOVA_0";

interface TelegramAnnouncementModalProps {
  visible: boolean;
  onClose: () => void;
}

/**
 * Only mounted on non-TV devices when the modal is visible.
 * Keeping `useVideoPlayer` out of the TV render tree avoids initializing
 * hardware MP4 decoders on Android TV startup, making D-pad focus instant.
 */
function PhoneAnnouncementVideo({ visible }: { visible: boolean }) {
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

  return (
    <VideoView
      player={player}
      style={styles.video}
      contentFit="contain"
      nativeControls={false}
    />
  );
}

export function TelegramAnnouncementModal({
  visible,
  onClose,
}: TelegramAnnouncementModalProps) {
  const { width, height } = useWindowDimensions();
  const colors = useColors();
  const { theme } = useApp();
  const isWhiteTheme = theme === "white";
  const tvMode = isTvDevice(width, height);
  const openingTelegramRef = useRef(false);

  useEffect(() => {
    if (!visible) return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      onClose();
      return true;
    });
    return () => sub.remove();
  }, [visible, onClose]);

  const openTelegram = useCallback(() => {
    if (openingTelegramRef.current) return;
    openingTelegramRef.current = true;
    onClose();
    setTimeout(() => {
      Linking.openURL(TELEGRAM_URL)
        .catch(() => {})
        .finally(() => {
          openingTelegramRef.current = false;
        });
    }, tvMode ? 100 : 0);
  }, [onClose, tvMode]);

  if (!visible) return null;

  return (
    <Modal
      visible={visible}
      transparent
      animationType={tvMode ? "none" : "fade"}
      onRequestClose={onClose}
      statusBarTranslucent
    >
      <View style={[styles.backdrop, { backgroundColor: colors.overlay }, tvMode && styles.tvBackdrop]}>
        <View
          style={[
            styles.card,
            { backgroundColor: colors.surface, borderColor: colors.border },
            tvMode && styles.tvCard,
          ]}
          accessibilityViewIsModal
        >
          <Pressable
            key={`telegram-close-${visible ? "open" : "closed"}`}
            accessibilityLabel="إغلاق"
            testID="telegram-announcement-close"
            onPress={onClose}
            focusable={tvMode}
            hasTVPreferredFocus={false}
            hitSlop={tvMode ? 14 : 8}
            style={({ pressed, focused }) => [
              styles.closeButton,
              tvMode && { minWidth: 70, minHeight: 38, borderRadius: 10, margin: 4 },
              isWhiteTheme ? styles.whiteCloseButton : styles.darkCloseButton,
              tvMode && (isWhiteTheme ? styles.tvWhiteCloseButton : styles.tvCloseButton),
              tvMode && tvFocusStyle(focused),
              pressed && styles.pressed,
            ]}
          >
            <Ionicons name="close" size={tvMode ? 22 : 20} color={isWhiteTheme ? "#0F172A" : "#FFFFFF"} />
            {tvMode && (
              <Text style={[styles.tvCloseLabel, { color: isWhiteTheme ? "#0F172A" : "#FFFFFF" }]}>
                إغلاق
              </Text>
            )}
          </Pressable>

          {tvMode ? (
            <LinearGradient
              colors={["#0f172a", "#1e1b4b", "#090d16"]}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 1 }}
              style={[styles.videoFrame, styles.tvVideoFrame, { borderColor: colors.border }]}
            >
              <View style={styles.tvVisualBanner}>
                <View style={styles.tvBigTelegramCircle}>
                  <Ionicons name="paper-plane" size={44} color="#FFFFFF" />
                </View>
                <Text style={styles.tvVisualBrand}>ANIME NOVA</Text>
                <Text style={styles.tvVisualHandle}>@Anime_NOVA_0</Text>
              </View>
            </LinearGradient>
          ) : (
            <View style={[styles.videoFrame, { borderColor: colors.border }]}>
              <PhoneAnnouncementVideo visible={visible} />
            </View>
          )}

          <View style={[styles.content, tvMode && styles.tvContent]}>
            <View style={styles.telegramIcon}>
              <Ionicons name="paper-plane" size={20} color="#FFFFFF" />
            </View>
            <Text style={[styles.title, { color: colors.textPrimary }, tvMode && styles.tvTitle]}>
              انضم إلى قناتنا على تلجرام
            </Text>
            <Text style={[styles.message, { color: colors.textSecondary }, tvMode && styles.tvMessage]}>
              تابع أخبار وتحديثات NOVA Anime عبر قناتنا الرسمية على تلجرام،
              وأرسل لنا بلاغاتك عن أي مشكلة تواجهك.
            </Text>

            <View style={tvMode ? styles.tvActionsColumn : styles.phoneActionsColumn}>
              <Pressable
                accessibilityLabel="متابعة إلى التطبيق"
                testID="telegram-announcement-dismiss"
                onPress={onClose}
                focusable={tvMode}
                hasTVPreferredFocus={tvMode && visible}
                style={({ pressed, focused }) => [
                  tvMode ? styles.tvContinuePrimaryBtn : styles.secondaryButton,
                  !tvMode && { backgroundColor: colors.input, borderRadius: 12 },
                  tvMode && tvFocusStyle(focused),
                  pressed && styles.pressed,
                ]}
              >
                {tvMode && <Ionicons name="play-circle-outline" size={22} color="#FFFFFF" />}
                <Text
                  style={[
                    styles.secondaryButtonText,
                    { color: tvMode ? "#FFFFFF" : colors.textSecondary },
                    tvMode && styles.tvContinuePrimaryText,
                  ]}
                >
                  متابعة إلى التطبيق
                </Text>
              </Pressable>

              <Pressable
                accessibilityLabel="الانضمام إلى قناة تلجرام"
                testID="telegram-announcement-open"
                onPress={openTelegram}
                focusable={tvMode}
                hasTVPreferredFocus={false}
                style={({ pressed, focused }) => [
                  styles.primaryButton,
                  tvMode && styles.tvButton,
                  tvMode && tvFocusStyle(focused),
                  pressed && styles.pressed,
                ]}
              >
                <Ionicons name="paper-plane-outline" size={tvMode ? 22 : 18} color="#FFFFFF" />
                <Text style={[styles.primaryButtonText, tvMode && styles.tvPrimaryButtonText]}>
                  انضم الآن
                </Text>
              </Pressable>
            </View>
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
  tvBackdrop: {
    paddingHorizontal: 48,
    backgroundColor: "rgba(2, 4, 12, 0.88)",
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
    width: "82%",
    maxWidth: 820,
    minHeight: 310,
    borderRadius: 24,
    flexDirection: "row",
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
  },
  whiteCloseButton: {
    backgroundColor: "#F1F5F9",
    borderWidth: 1,
    borderColor: "#CBD5E1",
  },
  darkCloseButton: {
    backgroundColor: "rgba(0, 0, 0, 0.48)",
    borderWidth: 1,
    borderColor: "rgba(255, 255, 255, 0.16)",
  },
  tvWhiteCloseButton: {
    width: 92,
    height: 44,
    borderRadius: 14,
    top: 14,
    right: 14,
    flexDirection: "row",
    gap: 6,
    paddingHorizontal: 14,
    borderWidth: 1.5,
    borderColor: "#CBD5E1",
    backgroundColor: "#FFFFFF",
    shadowColor: "#000",
    shadowOpacity: 0.10,
    shadowRadius: 6,
    elevation: 3,
  },
  tvCloseButton: {
    width: 92,
    height: 44,
    borderRadius: 14,
    top: 14,
    right: 14,
    flexDirection: "row",
    gap: 6,
    paddingHorizontal: 14,
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.22)",
    backgroundColor: "rgba(20,16,30,0.92)",
  },
  tvCloseLabel: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 15,
  },
  videoFrame: {
    width: "100%",
    aspectRatio: 498 / 436,
    backgroundColor: "#09090B",
  },
  tvVideoFrame: {
    width: "36%",
    alignSelf: "stretch",
    aspectRatio: undefined,
    borderRightWidth: 1,
    borderRightColor: "rgba(216, 180, 254, 0.16)",
    alignItems: "center",
    justifyContent: "center",
  },
  tvVisualBanner: {
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
    padding: 20,
  },
  tvBigTelegramCircle: {
    width: 84,
    height: 84,
    borderRadius: 42,
    backgroundColor: "#229ED9",
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 4,
    borderWidth: 3,
    borderColor: "rgba(255,255,255,0.25)",
  },
  tvVisualBrand: {
    color: "#FFFFFF",
    fontFamily: "Cairo_800ExtraBold",
    fontSize: 20,
    letterSpacing: 1,
  },
  tvVisualHandle: {
    color: "#38bdf8",
    fontFamily: "Cairo_700Bold",
    fontSize: 14,
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
    flex: 1,
    alignItems: "stretch",
    justifyContent: "center",
    paddingHorizontal: 32,
    paddingTop: 26,
    paddingBottom: 26,
  },
  telegramIcon: {
    width: 42,
    height: 42,
    alignItems: "center",
    justifyContent: "center",
    marginBottom: 9,
    borderRadius: 21,
    backgroundColor: "#229ED9",
    alignSelf: "center",
  },
  title: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 19,
    textAlign: "center",
  },
  tvTitle: { fontSize: 22 },
  message: {
    marginTop: 7,
    color: "rgba(255, 255, 255, 0.7)",
    fontFamily: "Cairo_400Regular",
    fontSize: 13,
    lineHeight: 22,
    textAlign: "center",
  },
  tvMessage: { fontSize: 15, lineHeight: 24 },
  phoneActionsColumn: {
    width: "100%",
    flexDirection: "column-reverse",
    alignItems: "center",
    gap: 8,
    marginTop: 14,
  },
  tvActionsColumn: {
    width: "100%",
    flexDirection: "column",
    gap: 10,
    marginTop: 18,
  },
  primaryButton: {
    width: "100%",
    height: 46,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    borderRadius: 15,
    backgroundColor: "#229ED9",
  },
  primaryButtonText: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 14,
  },
  tvPrimaryButtonText: { fontSize: 16 },
  tvButton: { height: 50, borderRadius: 14 },
  secondaryButton: {
    paddingVertical: 10,
    paddingHorizontal: 16,
  },
  secondaryButtonText: {
    color: "rgba(255, 255, 255, 0.55)",
    fontFamily: "Cairo_600SemiBold",
    fontSize: 12,
  },
  tvContinuePrimaryBtn: {
    width: "100%",
    height: 52,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    borderRadius: 14,
    backgroundColor: "#06b6d4",
  },
  tvContinuePrimaryText: {
    fontSize: 17,
    fontFamily: "Cairo_700Bold",
    color: "#FFFFFF",
  },
  pressed: {
    opacity: 0.72,
  },
});