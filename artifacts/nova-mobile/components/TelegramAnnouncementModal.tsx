import { Ionicons } from "@expo/vector-icons";
import { useVideoPlayer, VideoView } from "expo-video";
import { LinearGradient } from "expo-linear-gradient";
import * as Linking from "expo-linking";
import React, { useCallback, useEffect, useRef } from "react";
import {
  Animated,
  BackHandler,
  Easing,
  Modal,
  StyleSheet,
  Text,
  View,
} from "react-native";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "../utils/tv";
import { useColors } from "../hooks/useColors";
import { useApp } from "../context/AppContext";

const TELEGRAM_URL = "https://t.me/Anime_NOVA_0";

const CHANNEL_PERKS = [
  {
    icon: "flash-outline" as const,
    color: "#38BDF8",
    text: "تحديثات فورية وإشعارات الحلقات الجديدة",
  },
  {
    icon: "sparkles-outline" as const,
    color: "#C084FC",
    text: "طلبات الأنمي والدونغهوا والمدبلج",
  },
  {
    icon: "shield-checkmark-outline" as const,
    color: "#34D399",
    text: "دعم سريع ومتابعة حالة السيرفرات",
  },
] as const;

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
  const colors = useColors();
  const { theme } = useApp();
  const isWhiteTheme = theme === "white";
  const { tv: tvMode } = useTvMetrics();
  const openingTelegramRef = useRef(false);

  const cardOpacity = useRef(new Animated.Value(0)).current;
  const cardScale = useRef(new Animated.Value(0.93)).current;

  useEffect(() => {
    if (!visible) return;
    cardOpacity.setValue(0);
    cardScale.setValue(0.93);
    Animated.parallel([
      Animated.timing(cardOpacity, {
        toValue: 1,
        duration: 240,
        easing: Easing.out(Easing.cubic),
        useNativeDriver: true,
      }),
      Animated.timing(cardScale, {
        toValue: 1,
        duration: 280,
        easing: Easing.out(Easing.back(1.15)),
        useNativeDriver: true,
      }),
    ]).start();
  }, [cardOpacity, cardScale, visible]);

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

  if (!visible || tvMode) return null;

  const cardBg = isWhiteTheme ? "#FFFFFF" : "#120F1D";
  const cardBorder = isWhiteTheme
    ? "rgba(148, 163, 184, 0.35)"
    : "rgba(56, 189, 248, 0.22)";
  const headerGradient: [string, string, string] = isWhiteTheme
    ? ["#E0F2FE", "#EEF2FF", "#FFFFFF"]
    : ["#0A1B30", "#13102B", "#120F1D"];
  const perksBoxBg = isWhiteTheme
    ? "rgba(241, 245, 249, 0.85)"
    : "rgba(255, 255, 255, 0.04)";
  const perksBoxBorder = isWhiteTheme
    ? "rgba(203, 213, 225, 0.7)"
    : "rgba(255, 255, 255, 0.08)";

  return (
    <Modal
      visible={visible}
      transparent
      animationType="fade"
      onRequestClose={onClose}
      statusBarTranslucent
    >
      <View
        style={[
          styles.backdrop,
          { backgroundColor: colors.overlay || "rgba(4, 3, 10, 0.82)" },
        ]}
      >
        <Animated.View
          style={[
            styles.card,
            {
              backgroundColor: cardBg,
              borderColor: cardBorder,
              opacity: cardOpacity,
              transform: [{ scale: cardScale }],
            },
          ]}
          accessibilityViewIsModal
        >
          {/* Compact dark-nebula hero header with framed mini video */}
          <LinearGradient
            colors={headerGradient}
            start={{ x: 0.1, y: 0 }}
            end={{ x: 0.9, y: 1 }}
            style={styles.heroHeader}
          >
            <View
              pointerEvents="none"
              style={[
                styles.heroAura,
                isWhiteTheme && { backgroundColor: "rgba(34, 158, 217, 0.10)" },
              ]}
            />

            {/* Close button */}
            <Pressable
              key={`telegram-close-${visible ? "open" : "closed"}`}
              accessibilityLabel="إغلاق"
              testID="telegram-announcement-close"
              onPress={onClose}
              focusable={tvMode}
              hasTVPreferredFocus={false}
              hitSlop={10}
              style={({ pressed, focused }) => [
                styles.cornerButton,
                styles.closeButtonPos,
                isWhiteTheme ? styles.whiteCornerButton : styles.darkCornerButton,
                tvMode && tvFocusStyle(focused),
                pressed && styles.pressed,
              ]}
            >
              <Ionicons
                name="close"
                size={18}
                color={isWhiteTheme ? "#0F172A" : "rgba(255,255,255,0.88)"}
              />
            </Pressable>


            {/* Compact mini video medallion */}
            <View style={styles.videoMedallionWrap}>
              <LinearGradient
                colors={["#38BDF8", "#229ED9", "#A855F7"]}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 1 }}
                style={styles.videoGradientRing}
              >
                <View style={styles.miniVideoFrame}>
                  <PhoneAnnouncementVideo visible={visible} />
                </View>
              </LinearGradient>

              <View
                style={[
                  styles.floatingTelegramBadge,
                  { borderColor: isWhiteTheme ? "#FFFFFF" : "#120F1D" },
                ]}
              >
                <Ionicons name="paper-plane" size={14} color="#FFFFFF" />
              </View>
            </View>

            {/* Official channel handle badge */}
            <View
              style={[
                styles.handlePill,
                isWhiteTheme && styles.whiteHandlePill,
              ]}
            >
              <View style={styles.handleLiveDot} />
              <Text
                style={[
                  styles.handleText,
                  isWhiteTheme && { color: "#0369A1" },
                ]}
              >
                @Anime_NOVA_0
              </Text>
            </View>
          </LinearGradient>

          {/* Main body */}
          <View style={styles.content}>
            <Text style={[styles.title, { color: colors.textPrimary }]}>
              انضم إلى قناتنا على تلجرام
            </Text>

            <Text style={[styles.message, { color: colors.textSecondary }]}>
              تابع أحدث الحلقات والتحديثات الفورية لتطبيق{" "}
              {"\u2066Anime NOVA\u2069"}، وشاركنا بلاغاتك واقتراحاتك مباشرة.
            </Text>

            {/* 3 crisp benefits */}
            <View
              style={[
                styles.perksBox,
                { backgroundColor: perksBoxBg, borderColor: perksBoxBorder },
              ]}
            >
              {CHANNEL_PERKS.map((perk) => (
                <View key={perk.text} style={styles.perkRow}>
                  <View
                    style={[
                      styles.perkIconWrap,
                      { backgroundColor: `${perk.color}18` },
                    ]}
                  >
                    <Ionicons name={perk.icon} size={14} color={perk.color} />
                  </View>
                  <Text
                    style={[
                      styles.perkText,
                      {
                        color: isWhiteTheme
                          ? "#334155"
                          : "rgba(241, 245, 249, 0.88)",
                      },
                    ]}
                    numberOfLines={1}
                  >
                    {perk.text}
                  </Text>
                </View>
              ))}
            </View>

            {/* Actions */}
            <View style={styles.phoneActionsColumn}>
              <Pressable
                accessibilityLabel="متابعة إلى التطبيق"
                testID="telegram-announcement-dismiss"
                onPress={onClose}
                focusable={tvMode}
                hasTVPreferredFocus={false}
                style={({ pressed, focused }) => [
                  styles.secondaryButton,
                  {
                    backgroundColor: isWhiteTheme
                      ? "#F1F5F9"
                      : "rgba(255, 255, 255, 0.055)",
                    borderColor: isWhiteTheme
                      ? "#E2E8F0"
                      : "rgba(255, 255, 255, 0.09)",
                  },
                  tvMode && tvFocusStyle(focused),
                  pressed && styles.pressed,
                ]}
              >
                <Text
                  style={[
                    styles.secondaryButtonText,
                    { color: colors.textSecondary },
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
                  styles.primaryButtonOuter,
                  tvMode && tvFocusStyle(focused),
                  pressed && styles.pressed,
                ]}
              >
                <LinearGradient
                  colors={["#2AABEE", "#229ED9", "#0284C7"]}
                  start={{ x: 0, y: 0 }}
                  end={{ x: 1, y: 1 }}
                  style={styles.primaryButton}
                >
                  <Ionicons
                    name="paper-plane"
                    size={17}
                    color="#FFFFFF"
                  />
                  <Text style={styles.primaryButtonText}>
                    انضم إلى القناة الآن
                  </Text>
                </LinearGradient>
              </Pressable>
            </View>
          </View>
        </Animated.View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  backdrop: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 22,
  },
  card: {
    width: "100%",
    maxWidth: 368,
    overflow: "hidden",
    borderRadius: 28,
    borderWidth: 1,
    shadowColor: "#000000",
    shadowOpacity: 0.5,
    shadowRadius: 28,
    shadowOffset: { width: 0, height: 14 },
    elevation: 16,
  },
  heroHeader: {
    width: "100%",
    alignItems: "center",
    justifyContent: "center",
    paddingTop: 22,
    paddingBottom: 14,
    paddingHorizontal: 20,
    overflow: "hidden",
  },
  heroAura: {
    position: "absolute",
    width: 210,
    height: 210,
    borderRadius: 105,
    top: -42,
    backgroundColor: "rgba(34, 158, 217, 0.14)",
  },
  cornerButton: {
    position: "absolute",
    top: 13,
    zIndex: 4,
    width: 34,
    height: 34,
    borderRadius: 17,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
  },
  closeButtonPos: {
    right: 13,
  },
  whiteCornerButton: {
    backgroundColor: "rgba(255, 255, 255, 0.9)",
    borderColor: "#CBD5E1",
  },
  darkCornerButton: {
    backgroundColor: "rgba(9, 12, 24, 0.62)",
    borderColor: "rgba(255, 255, 255, 0.14)",
  },
  videoMedallionWrap: {
    position: "relative",
    alignItems: "center",
    justifyContent: "center",
  },
  videoGradientRing: {
    padding: 2.5,
    borderRadius: 23,
  },
  miniVideoFrame: {
    width: 118,
    height: 104,
    borderRadius: 20.5,
    overflow: "hidden",
    backgroundColor: "#FFFFFF",
  },
  video: {
    width: "100%",
    height: "100%",
  },
  floatingTelegramBadge: {
    position: "absolute",
    bottom: -7,
    right: -7,
    width: 32,
    height: 32,
    borderRadius: 16,
    backgroundColor: "#229ED9",
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 2.5,
  },
  handlePill: {
    flexDirection: "row",
    alignItems: "center",
    gap: 6,
    marginTop: 14,
    paddingHorizontal: 12,
    paddingVertical: 4,
    borderRadius: 99,
    backgroundColor: "rgba(34, 158, 217, 0.14)",
    borderWidth: 1,
    borderColor: "rgba(56, 189, 248, 0.3)",
  },
  whiteHandlePill: {
    backgroundColor: "rgba(14, 165, 233, 0.12)",
    borderColor: "rgba(14, 165, 233, 0.28)",
  },
  handleLiveDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
    backgroundColor: "#38BDF8",
  },
  handleText: {
    color: "#7DD3FC",
    fontFamily: "Cairo_700Bold",
    fontSize: 12,
    letterSpacing: 0.3,
  },
  content: {
    alignItems: "center",
    paddingHorizontal: 20,
    paddingTop: 6,
    paddingBottom: 20,
  },
  title: {
    fontFamily: "Cairo_800ExtraBold",
    fontSize: 19,
    textAlign: "center",
  },
  message: {
    marginTop: 6,
    fontFamily: "Cairo_400Regular",
    fontSize: 12.5,
    lineHeight: 20,
    textAlign: "center",
  },
  perksBox: {
    width: "100%",
    marginTop: 14,
    paddingHorizontal: 12,
    paddingVertical: 10,
    borderRadius: 16,
    borderWidth: 1,
    gap: 8,
  },
  perkRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 9,
  },
  perkIconWrap: {
    width: 24,
    height: 24,
    borderRadius: 8,
    alignItems: "center",
    justifyContent: "center",
  },
  perkText: {
    flex: 1,
    fontFamily: "Cairo_600SemiBold",
    fontSize: 12,
    textAlign: "right",
  },
  phoneActionsColumn: {
    width: "100%",
    flexDirection: "column-reverse",
    alignItems: "center",
    gap: 9,
    marginTop: 16,
  },
  primaryButtonOuter: {
    width: "100%",
    borderRadius: 15,
    overflow: "hidden",
  },
  primaryButton: {
    width: "100%",
    height: 48,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  primaryButtonText: {
    color: "#FFFFFF",
    fontFamily: "Cairo_700Bold",
    fontSize: 14.5,
  },
  secondaryButton: {
    width: "100%",
    height: 42,
    borderRadius: 13,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  secondaryButtonText: {
    fontFamily: "Cairo_600SemiBold",
    fontSize: 13,
  },
  pressed: {
    opacity: 0.78,
  },
});
