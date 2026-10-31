import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef } from "react";
import {
  Animated, Dimensions, Easing, I18nManager, Image, Modal, Platform,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvPressable as Pressable } from "@/utils/tv";

const { width: W } = Dimensions.get("window");
const DRAWER_W = Math.min(W * 0.80, 320);

const AVATAR_COLORS = [
  ["#7c3aed", "#4c1d95"],
  ["#2563eb", "#1e3a8a"],
  ["#db2777", "#831843"],
  ["#059669", "#064e3b"],
  ["#ea580c", "#78350f"],
  ["#dc2626", "#7f1d1d"],
  ["#0891b2", "#164e63"],
  ["#6d28d9", "#2e1065"],
];

type NavItem = {
  icon: keyof typeof Ionicons.glyphMap;
  label: string;
  sub?: string;
  route: string;
  badge?: string;
  showChevron?: boolean;
  color?: string;
};

const NAV_MAIN: NavItem[] = [
  { icon: "home",            label: "الرئيسية",              route: "/(tabs)",             color: "#8B5CF6" },
  { icon: "search",          label: "البحث",                 route: "/(tabs)/search",      color: "#6366f1" },
  { icon: "grid",            label: "تصفح الأنمي",           route: "/(tabs)/browse",      color: "#3b82f6" },
  { icon: "layers",          label: "المواسم",                route: "/seasons",            color: "#f59e0b" },
  { icon: "book",            label: "المانجا",                route: "/manga",              color: "#10b981" },
  { icon: "stats-chart",     label: "الإحصائيات العالمية",   route: "/stats",              color: "#0ea5e9" },
  { icon: "sparkles",        label: "قادم قريباً",            route: "/upcoming",           color: "#ec4899" },
  { icon: "tv",              label: "كرتون مدبلج ومترجم",     route: "/aw-dubbed?tab=cartoon", color: "#10b981" },
  { icon: "download",        label: "تنزيلاتي",              route: "/(tabs)/downloads",   color: "#8B5CF6" },
  { icon: "calendar",        label: "جدول البث الأسبوعي",    route: "/schedule",           color: "#10b981" },
];

const NAV_LIBRARY: NavItem[] = [
  { icon: "heart",           label: "المفضلة",               route: "/(tabs)/library",     showChevron: false, color: "#f43f5e" },
  { icon: "time",            label: "سجل المشاهدة",          route: "/(tabs)/library",     showChevron: false, color: "#f59e0b" },
];

const NAV_OTHER: NavItem[] = [
  { icon: "settings",        label: "الإعدادات",             route: "/settings",           color: "#64748b" },
];

type UserData = {
  displayName: string | null;
  username: string | null;
  profileImageUrl: string | null;
  avatarColor: number;
};

type Props = { visible: boolean; onClose: () => void };

export function DrawerMenu({ visible, onClose }: Props) {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  const tvMode = isTvDevice(Dimensions.get("window").width, Dimensions.get("window").height);
  const drawerWidth = tvMode ? Math.min(W * 0.42, 520) : DRAWER_W;
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { watchHistory, favorites, theme } = useApp();
  const colors = useColors();
  const [userData, setUserData] = React.useState<UserData | null>(null);

  React.useEffect(() => {
    if (!visible) return;
    const base = getBaseUrl();
    secureFetch(`${base}/api/auth/me`).then(r => {
      if (r.ok) return r.json().then((d: any) => {
        setUserData({
          displayName:     d.displayName     || d.display_name || null,
          username:        d.username        || null,
          profileImageUrl: d.profileImageUrl || d.profile_image_custom || d.profile_image_url || null,
          avatarColor:     d.avatarColor     ?? d.avatar_color ?? 0,
        });
      });
    }).catch(() => {});
  }, [visible]);

  const colorIdx = Math.min((userData?.avatarColor ?? 0) % AVATAR_COLORS.length, AVATAR_COLORS.length - 1);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const avatarLetter = ((userData?.displayName || userData?.username || "م")[0] || "م").toUpperCase();

  const slideX = useRef(new Animated.Value(drawerWidth)).current;
  const opacity = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    if (visible) {
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: 0,
          duration: 180,
          easing: Easing.bezier(0.22, 1, 0.36, 1),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, { toValue: 1, duration: 140, useNativeDriver: true }),
      ]).start();
    } else {
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: drawerWidth,
          duration: 150,
          easing: Easing.bezier(0.4, 0, 1, 1),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, { toValue: 0, duration: 130, useNativeDriver: true }),
      ]).start();
    }
  }, [drawerWidth, visible]);

  function nav(route: string) {
    onClose();
    setTimeout(() => router.push(route as any), 150);
  }

  if (!visible) return null;

  return (
    <Modal visible={visible} transparent animationType="none" onRequestClose={onClose}>
      {/* Backdrop */}
      <Animated.View style={[s.backdrop, { opacity }]}>
        <Pressable style={StyleSheet.absoluteFill} onPress={onClose} />
      </Animated.View>

      {/* Drawer panel — slides from RIGHT (RTL) */}
      <Animated.View style={[s.drawer, tvMode && s.tvDrawer, { width: drawerWidth, transform: [{ translateX: slideX }], paddingTop: topPad, backgroundColor: colors.surface, borderLeftColor: colors.border }]}>
        <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: insets.bottom + 24 }}>

          {/* ── Logo header (matches Home screen | ANIME NOVA logo) ── */}
          <View style={[s.logoRow, tvMode && s.tvLogoRow, { borderBottomColor: colors.border, flexDirection: I18nManager.isRTL ? "row" : "row-reverse", justifyContent: "space-between" }]}>
            <View style={{ flexDirection: I18nManager.isRTL ? "row" : "row-reverse", alignItems: "center", gap: 9 }}>
              <View style={[s.logoAccent, { backgroundColor: colors.homeAccent }]} />
              <View style={{ alignItems: "flex-end" }}>
                <Text style={[s.logoText, tvMode && s.tvLogoText, { color: colors.textPrimary }]}>
                  ANIME <Text style={{ color: colors.homeAccent }}>NOVA</Text>
                </Text>
                <Text style={[s.logoSub, tvMode && s.tvLogoSub, { color: colors.textMuted }]}>منصة الأنمي العربية</Text>
              </View>
            </View>
            <Pressable onPress={onClose} focusable={tvMode} hasTVPreferredFocus={tvMode}
              style={({ focused }) => [s.closeBtn, tvMode && s.tvCloseBtn, { backgroundColor: colors.surfaceElevated }, tvMode && tvFocusStyle(focused)]}>
              <Ionicons name="close" size={tvMode ? 28 : 20} color={colors.textMuted} />
            </Pressable>
          </View>

          {/* ── User card ── */}
          <Pressable onPress={() => nav("/settings")} focusable={tvMode} style={({ focused }) => [s.userCard, tvMode && s.tvUserCard, { borderColor: colors.border }, tvMode && tvFocusStyle(focused)]}>
            <LinearGradient
              colors={theme === "white" ? [colors.surfaceElevated, colors.card] : ["rgba(139,92,246,0.15)", "rgba(109,40,217,0.08)"]}
              style={s.userCardInner}
            >
              {/* Avatar: real photo or gradient letter */}
              {userData?.profileImageUrl ? (
                <Image
                  source={{ uri: userData.profileImageUrl }}
                  style={s.userAvatarImg}
                  resizeMode="cover"
                />
              ) : (
                <LinearGradient colors={[g1, g2]} style={s.userAvatar}>
                  <Text style={s.userAvatarText}>{avatarLetter}</Text>
                </LinearGradient>
              )}
              <View style={{ flex: 1 }}>
                <Text style={[s.userName, { color: colors.textPrimary }]} numberOfLines={1}>
                  {userData?.displayName || userData?.username || "الملف الشخصي"}
                </Text>
                {userData?.username ? (
                  <Text style={[s.userSub, { color: colors.textSecondary }]} numberOfLines={1}>@{userData.username}</Text>
                ) : (
                  <Text style={[s.userSub, { color: colors.textSecondary }]}>
                    {`${watchHistory.length} مشاهدة · ${favorites.length} مفضلة`}
                  </Text>
                )}
              </View>
              <Ionicons name="chevron-back" size={16} color={colors.accent} />
            </LinearGradient>
          </Pressable>

          {/* ── Main navigation ── */}
          <SectionHeading label="القائمة الرئيسية" colors={colors} />
          {NAV_MAIN.map((item) => (
            <DrawerItem key={item.label} item={item} tvMode={tvMode} colors={colors} onPress={() => nav(item.route)} />
          ))}

          {/* ── Library ── */}
          <SectionHeading label="مكتبتي" colors={colors} />
          {NAV_LIBRARY.map((item) => (
            <DrawerItem
              key={item.label}
              item={item}
              badge={item.label === "المفضلة" ? favorites.length : watchHistory.length}
              tvMode={tvMode}
              colors={colors}
              onPress={() => nav(item.route)}
            />
          ))}

          {/* ── Other ── */}
          <SectionHeading label="أخرى" colors={colors} />
          {NAV_OTHER.map((item) => (
            <DrawerItem key={item.label} item={item} tvMode={tvMode} colors={colors} onPress={() => nav(item.route)} />
          ))}

          {/* ── Footer ── */}
          <View style={s.footer}>
            <Text style={[s.footerText, { color: colors.textMuted }]}>Anime NOVA © 2025</Text>
            <View style={s.footerDot}>
              <View style={s.onlineDot} />
              <Text style={[s.footerStatus, { color: colors.success }]}>متصل</Text>
            </View>
          </View>
        </ScrollView>
      </Animated.View>
    </Modal>
  );
}

function SectionHeading({ label, colors }: {
  label: string;
  colors: ReturnType<typeof useColors>;
}) {
  return (
    <View style={s.sectionHeading}>
      <Text style={[s.sectionLabel, { color: colors.textMuted }]}>{label}</Text>
      <View style={[s.sectionRule, { backgroundColor: colors.border }]} />
    </View>
  );
}

function DrawerItem({ item, onPress, tvMode, colors, badge }: {
  item: NavItem;
  onPress: () => void;
  tvMode: boolean;
  colors: ReturnType<typeof useColors>;
  badge?: number;
}) {
  const badgeLabel = badge !== undefined
    ? badge > 0 ? String(badge) : undefined
    : item.badge;

  return (
    <Pressable onPress={onPress} focusable={tvMode} style={({ pressed, focused }) => [
      s.navItem,
      tvMode && s.tvNavItem,
      { backgroundColor: colors.card, borderColor: colors.border },
      pressed && { backgroundColor: colors.surfaceElevated },
      tvMode && tvFocusStyle(focused),
    ]}>
      <View style={[s.navIcon, tvMode && s.tvNavIcon, { backgroundColor: (item.color || "#8B5CF6") + "18" }]}>
        <Ionicons name={item.icon} size={tvMode ? 26 : 18} color={item.color || "#8B5CF6"} />
      </View>
      <Text style={[s.navLabel, tvMode && s.tvNavLabel, { color: colors.textPrimary }]}>{item.label}</Text>
      {badgeLabel && (
        <View style={[s.badge, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
          <Text style={[s.badgeText, { color: colors.textSecondary }]}>{badgeLabel}</Text>
        </View>
      )}
      {item.showChevron !== false && (
        <Ionicons name="chevron-back" size={15} color={colors.textMuted} />
      )}
    </Pressable>
  );
}

const s = StyleSheet.create({
  backdrop: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.6)",
  },
  drawer: {
    position: "absolute",
    top: 0, bottom: 0, right: 0,
    width: DRAWER_W,
    backgroundColor: "#0E0E12",
    borderLeftWidth: 1,
    borderLeftColor: "rgba(255,255,255,0.07)",
    shadowColor: "#000",
    shadowOffset: { width: -4, height: 0 },
    shadowOpacity: 0.5,
    shadowRadius: 16,
    elevation: 20,
  },
  tvDrawer: { borderLeftWidth: 2 },
  logoRow: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 20, paddingVertical: 20,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  tvLogoRow: { paddingHorizontal: 28, paddingVertical: 28, gap: 16 },
  logoBadge: {
    width: 34, height: 34, borderRadius: 10,
    alignItems: "center", justifyContent: "center",
  },
  logoAccent: {
    width: 3.5, height: 28, borderRadius: 2,
  },
  logoText: { fontSize: 17, letterSpacing: 0.7, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  tvLogoText: { fontSize: 25 },
  logoSub: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)", marginTop: -2, textAlign: "right" },
  tvLogoSub: { fontSize: 14, marginTop: 1 },
  closeBtn: {
    width: 32, height: 32, borderRadius: 16,
    alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.05)",
  },
  tvCloseBtn: { width: 48, height: 48, borderRadius: 16 },
  userCard: { marginHorizontal: 14, marginTop: 16, marginBottom: 8, borderRadius: 18, overflow: "hidden", borderWidth: 1, borderColor: "rgba(139,92,246,0.2)" },
  tvUserCard: { marginHorizontal: 22, marginTop: 24, marginBottom: 14, borderRadius: 22 },
  userCardInner: { flexDirection: "row", alignItems: "center", gap: 12, padding: 14 },
  userAvatar: {
    width: 42, height: 42, borderRadius: 14,
    alignItems: "center", justifyContent: "center",
    flexShrink: 0,
  },
  userAvatarImg: {
    width: 42, height: 42, borderRadius: 14,
    flexShrink: 0,
  },
  userAvatarText: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  userName: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  userSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.35)", marginTop: 2 },
  sectionHeading: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 18, paddingTop: 14, paddingBottom: 8,
  },
  sectionLabel: {
    fontSize: 9, fontFamily: "Cairo_700Bold",
    textTransform: "uppercase",
    letterSpacing: 1.2,
  },
  sectionRule: {
    flex: 1, height: StyleSheet.hairlineWidth,
  },
  navItem: {
    flexDirection: "row", alignItems: "center", gap: 12,
    paddingHorizontal: 12, paddingVertical: 10,
    marginHorizontal: 14, marginBottom: 6,
    borderRadius: 16, borderWidth: 1,
  },
  tvNavItem: { paddingHorizontal: 22, paddingVertical: 18, marginHorizontal: 22, marginBottom: 10, borderRadius: 18, gap: 18 },
  navIcon: {
    width: 38, height: 38, borderRadius: 11,
    alignItems: "center", justifyContent: "center",
  },
  tvNavIcon: { width: 52, height: 52, borderRadius: 15 },
  navLabel: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold" },
  tvNavLabel: { fontSize: 19 },
  badge: {
    width: 28, height: 28, borderRadius: 14,
    alignItems: "center", justifyContent: "center",
    borderWidth: 1,
  },
  badgeText: { fontSize: 10, fontFamily: "Cairo_700Bold" },
  footer: {
    marginTop: 24, paddingHorizontal: 20,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },
  footerText: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.2)" },
  footerDot: { flexDirection: "row", alignItems: "center", gap: 5 },
  onlineDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#22c55e" },
  footerStatus: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(34,197,94,0.7)" },
});
