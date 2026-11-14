import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef } from "react";
import {
  Animated, BackHandler, Dimensions, Easing, I18nManager, Image, Modal, Platform,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, toggleTvMode, tvFocusStyle, TvPressable as Pressable, useTvModeOverride } from "@/utils/tv";
import { useWindowDimensions } from "react-native";

const { width: W } = Dimensions.get("window");
const DRAWER_W = Math.min(W * 0.80, 320);
const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";
const AUTH_KEY = "nova-mobile-user";
const PROFILE_OVERRIDE_KEY = "nova-profile-override";

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
  { icon: "flame",           label: "أحدث الحلقات",          route: "/latest",             color: "#f97316" },
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
  email?: string | null;
  profileImageUrl: string | null;
  avatarColor: number;
};

type Props = { visible: boolean; onClose: () => void };

export function DrawerMenu({ visible, onClose }: Props) {
  const router = useRouter();
  const insets = useSafeAreaInsets();
  useTvModeOverride();
  const { width: winW, height: winH } = useWindowDimensions();
  const tvMode = isTvDevice(winW, winH);
  const drawerWidth = tvMode && winW >= 700
    ? Math.min(winW * 0.30, 290)
    : winW >= 600
      ? Math.min(winW * 0.36, 280)
      : Math.min(winW * 0.72, 265);
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { watchHistory, favorites, theme, currentUser } = useApp();
  const colors = useColors();
  const [userData, setUserData] = React.useState<UserData | null>(null);
  const visibleNavMain = React.useMemo(
    () => (tvMode ? NAV_MAIN.filter((item) => item.route !== "/manga") : NAV_MAIN),
    [tvMode],
  );
  const visibleFavoritesCount = React.useMemo(
    () => (tvMode ? favorites.filter((f: any) => !f?.mangaId).length : favorites.length),
    [favorites, tvMode],
  );

  React.useEffect(() => {
    if (currentUser) {
      setUserData({
        displayName: currentUser.displayName || null,
        username: currentUser.username || currentUser.email?.split("@")[0] || null,
        email: currentUser.email || null,
        profileImageUrl: currentUser.profileImageUrl || null,
        avatarColor: currentUser.avatarColor ?? 0,
      });
    }
  }, [currentUser]);

  React.useEffect(() => {
    if (!visible) return;
    let isMounted = true;
    const timer = setTimeout(async () => {
      let localUser: any = null;
      let overrideData: any = null;
      try {
        const [rawAuth, rawOverride] = await Promise.all([
          AsyncStorage.getItem(AUTH_KEY),
          AsyncStorage.getItem(PROFILE_OVERRIDE_KEY),
        ]);
        if (rawAuth) localUser = JSON.parse(rawAuth);
        if (rawOverride) overrideData = JSON.parse(rawOverride);
      } catch {}

      if (isMounted && (localUser || currentUser)) {
        const baseUser = { ...(currentUser || {}), ...(localUser || {}), ...(overrideData || {}) };
        setUserData({
          displayName: baseUser.displayName || null,
          username: baseUser.username || baseUser.email?.split("@")[0] || null,
          email: baseUser.email || null,
          profileImageUrl: baseUser.profileImageUrl ?? null,
          avatarColor: baseUser.avatarColor ?? 0,
        });
      }

      try {
        const base = getBaseUrl();
        const r = await secureFetch(`${base}/api/auth/me`);
        if (r.ok && isMounted) {
          const d: any = await r.json();
          setUserData(prev => ({
            displayName: overrideData?.displayName || d.displayName || d.display_name || prev?.displayName || null,
            username: overrideData?.username || d.username || prev?.username || d.email?.split("@")[0] || null,
            email: d.email || prev?.email || null,
            profileImageUrl:
              overrideData?.profileImageUrl !== undefined
                ? overrideData.profileImageUrl
                : (d.profileImageUrl || d.profile_image_custom || d.profile_image_url || prev?.profileImageUrl || null),
            avatarColor: d.avatarColor ?? d.avatar_color ?? prev?.avatarColor ?? 0,
          }));
        }
      } catch {}
    }, 220);
    return () => {
      isMounted = false;
      clearTimeout(timer);
    };
  }, [visible, currentUser]);

  const colorIdx = Math.min((userData?.avatarColor ?? 0) % AVATAR_COLORS.length, AVATAR_COLORS.length - 1);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const avatarLetter = ((userData?.displayName || userData?.username || "م")[0] || "م").toUpperCase();
  const isLogged = Boolean(userData?.displayName || userData?.username || currentUser);
  const cleanHandle = userData?.username
    ? `@${String(userData.username).replace(/^@/, "")}`
    : isLogged
      ? "@anime_nova"
      : null;

  const slideX = useRef(new Animated.Value(drawerWidth)).current;
  const opacity = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    if (visible) {
      slideX.setValue(drawerWidth);
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: 0,
          duration: 165,
          easing: Easing.out(Easing.cubic),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, { toValue: 1, duration: 130, useNativeDriver: true }),
      ]).start();
    } else {
      opacity.setValue(0);
    }
  }, [drawerWidth, opacity, slideX, visible]);

  useEffect(() => {
    if (!visible || Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      onClose();
      return true;
    });
    return () => sub.remove();
  }, [visible, onClose]);

  function nav(route: string) {
    onClose();
    requestAnimationFrame(() => router.push(route as any));
  }

  if (!visible) return null;

  const content = (
    <View style={[StyleSheet.absoluteFillObject, { zIndex: 9999, elevation: 9999 }]}>
      {/* Backdrop */}
      <Animated.View style={[s.backdrop, { opacity }]}>
        <Pressable style={StyleSheet.absoluteFill} focusable={false} accessible={false} onPress={onClose} />
      </Animated.View>

      {/* Drawer panel — slides from RIGHT (RTL) */}
      <Animated.View style={[s.drawer, tvMode && s.tvDrawer, { width: drawerWidth, transform: [{ translateX: slideX }], paddingTop: topPad, backgroundColor: colors.surface, borderLeftColor: colors.border }]}>
        <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: insets.bottom + 24 }}>

          {/* ── Logo header (matches Home screen | ANIME NOVA logo) ── */}
          <View style={[s.logoRow, tvMode && s.tvLogoRow, { borderBottomColor: colors.border, flexDirection: ROW_RTL, justifyContent: "space-between" }]}>
            <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 9 }}>
              <View style={[s.logoAccent, { backgroundColor: colors.homeAccent }]} />
              <View style={{ alignItems: "flex-end" }}>
                <Text style={[s.logoText, tvMode && s.tvLogoText, { color: colors.textPrimary }]}>
                  ANIME <Text style={{ color: colors.homeAccent }}>NOVA</Text>
                </Text>
                <Text style={[s.logoSub, tvMode && s.tvLogoSub, { color: colors.textMuted }]}>منصة الأنمي العربية</Text>
              </View>
            </View>
            <Pressable onPress={onClose} focusable={tvMode}
              style={({ focused }) => [
                s.closeBtn,
                tvMode && s.tvCloseBtn,
                { backgroundColor: colors.surfaceElevated, borderWidth: 2, borderColor: focused ? "#FACC15" : "transparent" },
                tvMode && tvFocusStyle(focused),
              ]}>
              <Ionicons name="close" size={tvMode ? 17 : 15} color={colors.textMuted} />
            </Pressable>
          </View>

          {/* ── Enhanced User Profile Card ── */}
          <Pressable
            onPress={() => nav(isLogged ? "/profile" : "/settings")}
            focusable={tvMode}
            style={({ focused }) => [
              s.userCard,
              tvMode && s.tvUserCard,
              focused && { borderColor: "#FACC15" },
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <LinearGradient
              colors={
                theme === "white"
                  ? [colors.surfaceElevated, colors.card]
                  : ["rgba(30,27,58,0.95)", "rgba(17,19,32,0.98)"]
              }
              start={{ x: 1, y: 0 }}
              end={{ x: 0, y: 1 }}
              style={s.userCardInner}
            >
              {/* Right side: Avatar with status dot */}
              <View style={s.userAvatarWrap}>
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
                <View style={s.userOnlineBadge} />
              </View>

              {/* Middle: Name, @handle badge, and stats */}
              <View style={s.userInfoCol}>
                <View style={s.userNameRow}>
                  <Text style={[s.userName, { color: colors.textPrimary }]} numberOfLines={1}>
                    {userData?.displayName || userData?.username || "الملف الشخصي"}
                  </Text>
                  {cleanHandle ? (
                    <View style={s.userHandlePill}>
                      <Text style={s.userHandlePillText} numberOfLines={1}>{cleanHandle}</Text>
                    </View>
                  ) : null}
                </View>
                <Text style={[s.userSub, { color: colors.textSecondary }]} numberOfLines={1}>
                  {isLogged
                    ? `${watchHistory.length} مشاهدة  •  ${visibleFavoritesCount} مفضلة`
                    : "سجّل الدخول لمزامنة حسابك ومفضلتك"}
                </Text>
              </View>

              {/* Left side: Action pill / chevron */}
              <View style={s.userChevronCircle}>
                <Ionicons name="chevron-back" size={13} color="#38bdf8" />
              </View>
            </LinearGradient>
          </Pressable>

          {/* ── Main navigation ── */}
          <SectionHeading label="القائمة الرئيسية" colors={colors} />
          {visibleNavMain.map((item, idx) => (
            <DrawerItem key={item.label} item={item} tvMode={tvMode} hasTVPreferredFocus={tvMode && idx === 0} colors={colors} onPress={() => nav(item.route)} />
          ))}

          {/* ── Library ── */}
          <SectionHeading label="مكتبتي" colors={colors} />
          {NAV_LIBRARY.map((item) => (
            <DrawerItem
              key={item.label}
              item={item}
              badge={item.label === "المفضلة" ? visibleFavoritesCount : watchHistory.length}
              tvMode={tvMode}
              colors={colors}
              onPress={() => nav(item.route)}
            />
          ))}

          {/* ── Other ── */}
          <SectionHeading label="أخرى" colors={colors} />
          <DrawerItem
            item={{
              icon: "tv-outline",
              label: tvMode ? "وضع التلفاز: مفعّل" : "وضع التلفاز: متوقف",
              route: "",
              badge: tvMode ? "TV" : undefined,
              showChevron: false,
              color: tvMode ? "#06b6d4" : "#8B5CF6",
            }}
            tvMode={tvMode}
            colors={colors}
            onPress={() => {
              toggleTvMode();
            }}
          />
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
    </View>
  );

  if (tvMode || Platform.OS === "android") {
    return content;
  }

  return (
    <Modal visible={visible} transparent animationType="none" onRequestClose={onClose}>
      {content}
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

function DrawerItem({ item, onPress, tvMode, hasTVPreferredFocus = false, colors, badge }: {
  item: NavItem;
  onPress: () => void;
  tvMode: boolean;
  hasTVPreferredFocus?: boolean;
  colors: ReturnType<typeof useColors>;
  badge?: number;
}) {
  const badgeLabel = badge !== undefined
    ? badge > 0 ? String(badge) : undefined
    : item.badge;

  return (
    <Pressable
      onPress={onPress}
      focusable={tvMode}
      hasTVPreferredFocus={hasTVPreferredFocus}
      style={({ pressed, focused }) => [
        s.navItem,
        tvMode && s.tvNavItem,
        { backgroundColor: colors.card, borderColor: colors.border, borderWidth: tvMode ? 1.5 : 1 },
        (pressed || (tvMode && focused)) && { backgroundColor: colors.surfaceElevated },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[s.navIcon, tvMode && s.tvNavIcon, { backgroundColor: (item.color || "#8B5CF6") + "18" }]}>
        <Ionicons name={item.icon} size={tvMode ? 16 : 15} color={item.color || "#8B5CF6"} />
      </View>
      <Text style={[s.navLabel, tvMode && s.tvNavLabel, { color: colors.textPrimary }]} numberOfLines={1}>{item.label}</Text>
      {badgeLabel && (
        <View style={[s.badge, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
          <Text style={[s.badgeText, { color: colors.textSecondary }]}>{badgeLabel}</Text>
        </View>
      )}
      {item.showChevron !== false && (
        <Ionicons name="chevron-back" size={13} color={colors.textMuted} />
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
  tvDrawer: { borderLeftWidth: 1.5 },
  logoRow: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 13, paddingVertical: 11,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  tvLogoRow: { paddingHorizontal: 15, paddingVertical: 12, gap: 10 },
  logoBadge: {
    width: 28, height: 28, borderRadius: 8,
    alignItems: "center", justifyContent: "center",
  },
  logoAccent: {
    width: 3, height: 22, borderRadius: 2,
  },
  logoText: { fontSize: 14.5, letterSpacing: 0.5, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  tvLogoText: { fontSize: 16 },
  logoSub: { fontSize: 8.5, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)", marginTop: -2, textAlign: "right" },
  tvLogoSub: { fontSize: 9.5, marginTop: -1 },
  closeBtn: {
    width: 28, height: 28, borderRadius: 14,
    alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.05)",
  },
  tvCloseBtn: { width: 32, height: 32, borderRadius: 10 },
  userCard: {
    marginHorizontal: 10,
    marginTop: 10,
    marginBottom: 4,
    borderRadius: 14,
    overflow: "hidden",
    borderWidth: 1.5,
    borderColor: "rgba(56,189,248,0.28)",
    backgroundColor: "#141624",
  },
  tvUserCard: { marginHorizontal: 12, marginTop: 10, marginBottom: 6, borderRadius: 14 },
  userCardInner: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 9,
    paddingHorizontal: 10,
    paddingVertical: 9,
  },
  userAvatarWrap: {
    position: "relative",
    width: 38,
    height: 38,
    borderRadius: 12,
    borderWidth: 1.5,
    borderColor: "#0ea5e9",
    padding: 1,
    backgroundColor: "#0f172a",
    flexShrink: 0,
  },
  userAvatar: {
    width: "100%",
    height: "100%",
    borderRadius: 9,
    alignItems: "center",
    justifyContent: "center",
  },
  userAvatarImg: {
    width: "100%",
    height: "100%",
    borderRadius: 9,
  },
  userOnlineBadge: {
    position: "absolute",
    bottom: -2,
    left: -2,
    width: 10,
    height: 10,
    borderRadius: 5,
    backgroundColor: "#10b981",
    borderWidth: 1.5,
    borderColor: "#141624",
  },
  userAvatarText: { fontSize: 14, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  userInfoCol: {
    flex: 1,
    alignItems: "flex-end",
    justifyContent: "center",
    gap: 2,
  },
  userNameRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 5,
    flexWrap: "wrap",
  },
  userName: { fontSize: 12.5, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
  userHandlePill: {
    paddingHorizontal: 6,
    paddingVertical: 1,
    borderRadius: 999,
    backgroundColor: "rgba(14,165,233,0.16)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.4)",
  },
  userHandlePillText: {
    fontSize: 8.5,
    fontFamily: "Cairo_700Bold",
    color: "#38bdf8",
  },
  userSub: { fontSize: 9, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.48)", textAlign: "right" },
  userChevronCircle: {
    width: 24,
    height: 24,
    borderRadius: 12,
    backgroundColor: "rgba(14,165,233,0.14)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.3)",
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  sectionHeading: {
    flexDirection: "row", alignItems: "center", gap: 8,
    paddingHorizontal: 12, paddingTop: 9, paddingBottom: 4,
  },
  sectionLabel: {
    fontSize: 8.5, fontFamily: "Cairo_700Bold",
    textTransform: "uppercase",
    letterSpacing: 1,
  },
  sectionRule: {
    flex: 1, height: StyleSheet.hairlineWidth,
  },
  navItem: {
    flexDirection: "row", alignItems: "center", gap: 9,
    paddingHorizontal: 9, paddingVertical: 7,
    marginHorizontal: 10, marginBottom: 4,
    borderRadius: 11, borderWidth: 1,
  },
  tvNavItem: { paddingHorizontal: 11, paddingVertical: 8, marginHorizontal: 12, marginBottom: 5, borderRadius: 12, gap: 10 },
  navIcon: {
    width: 30, height: 30, borderRadius: 8,
    alignItems: "center", justifyContent: "center",
  },
  tvNavIcon: { width: 32, height: 32, borderRadius: 9 },
  navLabel: { flex: 1, fontSize: 11.5, fontFamily: "Cairo_700Bold" },
  tvNavLabel: { fontSize: 12.5 },
  badge: {
    minWidth: 22, height: 20, paddingHorizontal: 5, borderRadius: 10,
    alignItems: "center", justifyContent: "center",
    borderWidth: 1,
  },
  badgeText: { fontSize: 9, fontFamily: "Cairo_700Bold" },
  footer: {
    marginTop: 14, paddingHorizontal: 14,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },
  footerText: { fontSize: 9.5, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.2)" },
  footerDot: { flexDirection: "row", alignItems: "center", gap: 5 },
  onlineDot: { width: 5, height: 5, borderRadius: 3, backgroundColor: "#22c55e" },
  footerStatus: { fontSize: 9.5, fontFamily: "Cairo_700Bold", color: "rgba(34,197,94,0.7)" },
});
