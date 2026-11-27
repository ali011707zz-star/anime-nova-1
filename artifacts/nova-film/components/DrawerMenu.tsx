import { CURRENT_APP_VERSION, openAppUpdateModal } from "@/components/AppUpdateModal";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useCallback, useEffect, useMemo, useRef } from "react";
import {
  Animated,
  BackHandler,
  Dimensions,
  Easing,
  I18nManager,
  Image,
  InteractionManager,
  Modal,
  PanResponder,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";
import { isTvDevice, toggleTvMode, tvFocusStyle, TvPressable as Pressable, useTvModeOverride } from "@/utils/tv";
import { loadAllPlaybackProgress, loadFavoriteFilms } from "@/utils/filmCatalog";

const { width: W } = Dimensions.get("window");
const DRAWER_W = Math.min(Math.round(W * 0.85), 336);
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
  { icon: "home",     label: "الرئيسية",                  route: "/(tabs)",                    color: "#F59E0B" },
  { icon: "film",     label: "الأفلام الأجنبية والآسيوية", route: "/(tabs)/browse?category=movie&sort=popularity&genre=&year=",  color: "#F97316" },
  { icon: "albums",   label: "المسلسلات الأجنبية",         route: "/(tabs)/browse?category=series&sort=popularity&genre=&year=", color: "#10B981" },
  { icon: "grid",     label: "التصفح والفلترة المتقدمة",  route: "/(tabs)/browse?category=all&sort=popularity&genre=&year=",             color: "#3B82F6" },
  { icon: "download", label: "تنزيلاتي",                   route: "/(tabs)/downloads",          color: "#8B5CF6" },
];

const NAV_LIBRARY: NavItem[] = [
  { icon: "bookmark", label: "قائمتي",       route: "/(tabs)/library", showChevron: false, color: "#8B5CF6" },
  { icon: "time",  label: "سجل المشاهدة", route: "/(tabs)/library", showChevron: false, color: "#f59e0b" },
];

const NAV_OTHER: NavItem[] = [
  { icon: "settings", label: "الإعدادات", route: "/settings", color: "#64748b" },
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
    ? Math.min(Math.round(winW * 0.42), 360)
    : winW >= 600
      ? Math.min(Math.round(winW * 0.48), 350)
      : Math.min(Math.round(winW * 0.85), 336);
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { theme, currentUser } = useApp();
  const [filmFavCount, setFilmFavCount] = React.useState(0);
  const [filmHistoryCount, setFilmHistoryCount] = React.useState(0);
  const colors = useColors();
  const [userData, setUserData] = React.useState<UserData | null>(null);
  const lastAuthSyncRef = useRef(0);
  const closingRef = useRef(false);

  const slideX = useRef(new Animated.Value(drawerWidth)).current;
  const opacity = useRef(new Animated.Value(0)).current;

  const animateAndClose = useCallback(
    (after?: () => void) => {
      if (closingRef.current) return;
      closingRef.current = true;
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: drawerWidth,
          duration: 150,
          easing: Easing.in(Easing.cubic),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, {
          toValue: 0,
          duration: 130,
          useNativeDriver: true,
        }),
      ]).start(() => {
        closingRef.current = false;
        onClose();
        if (after) after();
      });
    },
    [drawerWidth, onClose, opacity, slideX],
  );

  const panResponder = useMemo(
    () =>
      PanResponder.create({
        onMoveShouldSetPanResponder: (_, g) =>
          !tvMode && g.dx > 12 && Math.abs(g.dx) > Math.abs(g.dy) * 1.35,
        onPanResponderMove: (_, g) => {
          if (g.dx > 0) {
            const clamped = Math.min(g.dx, drawerWidth);
            slideX.setValue(clamped);
            opacity.setValue(Math.max(0.1, 1 - clamped / drawerWidth));
          }
        },
        onPanResponderRelease: (_, g) => {
          if (g.dx > drawerWidth * 0.24 || g.vx > 0.35) {
            animateAndClose();
          } else {
            Animated.parallel([
              Animated.spring(slideX, {
                toValue: 0,
                bounciness: 0,
                speed: 24,
                useNativeDriver: true,
              }),
              Animated.timing(opacity, {
                toValue: 1,
                duration: 120,
                useNativeDriver: true,
              }),
            ]).start();
          }
        },
        onPanResponderTerminate: () => {
          Animated.parallel([
            Animated.timing(slideX, { toValue: 0, duration: 120, useNativeDriver: true }),
            Animated.timing(opacity, { toValue: 1, duration: 120, useNativeDriver: true }),
          ]).start();
        },
      }),
    [animateAndClose, drawerWidth, opacity, slideX, tvMode],
  );

  useEffect(() => {
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

  useEffect(() => {
    if (!visible) return;
    let isMounted = true;
    const interactionTask = InteractionManager.runAfterInteractions(() => {
      if (!isMounted) return;
      Promise.all([loadFavoriteFilms(), loadAllPlaybackProgress()])
        .then(([favs, hist]) => {
          if (!isMounted) return;
          setFilmFavCount(favs.length);
          setFilmHistoryCount(hist.length);
        })
        .catch(() => {});

      const now = Date.now();
      const shouldSyncMe = now - lastAuthSyncRef.current > 60_000;
      (async () => {
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

        if (!shouldSyncMe) return;
        lastAuthSyncRef.current = now;
        try {
          const base = getBaseUrl();
          const r = await secureFetch(`${base}/api/auth/me`);
          if (r.ok && isMounted) {
            const d: any = await r.json();
            setUserData((prev) => ({
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
      })();
    });

    return () => {
      isMounted = false;
      interactionTask.cancel();
    };
  }, [visible, currentUser]);

  const colorIdx = Math.min((userData?.avatarColor ?? 0) % AVATAR_COLORS.length, AVATAR_COLORS.length - 1);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const avatarLetter = ((userData?.displayName || userData?.username || "م")[0] || "م").toUpperCase();
  const isLogged = Boolean(userData?.displayName || userData?.username || currentUser);
  const cleanHandle = userData?.username
    ? `@${String(userData.username).replace(/^@/, "")}`
    : isLogged
      ? "@nova_film"
      : null;

  useEffect(() => {
    if (visible) {
      closingRef.current = false;
      slideX.setValue(drawerWidth);
      opacity.setValue(0);
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: 0,
          duration: 195,
          easing: Easing.out(Easing.cubic),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, {
          toValue: 1,
          duration: 165,
          useNativeDriver: true,
        }),
      ]).start();
    } else {
      opacity.setValue(0);
    }
  }, [drawerWidth, opacity, slideX, visible]);

  useEffect(() => {
    if (!visible || Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      animateAndClose();
      return true;
    });
    return () => sub.remove();
  }, [visible, animateAndClose]);

  function nav(route: string) {
    animateAndClose(() => router.push(route as any));
  }

  if (!visible) return null;

  const content = (
    <View style={[StyleSheet.absoluteFillObject, { zIndex: 9999, elevation: 9999 }]}>
      {/* Backdrop */}
      <Animated.View style={[s.backdrop, { opacity }]}>
        <Pressable style={StyleSheet.absoluteFill} focusable={false} accessible={false} onPress={() => animateAndClose()} />
      </Animated.View>

      {/* Drawer panel — slides from RIGHT (RTL) with swipe-to-close */}
      <Animated.View
        {...(!tvMode ? panResponder.panHandlers : {})}
        style={[
          s.drawer,
          tvMode && s.tvDrawer,
          {
            width: drawerWidth,
            transform: [{ translateX: slideX }],
            paddingTop: topPad,
            backgroundColor: colors.surface,
            borderLeftColor: colors.border,
          },
        ]}
      >
        <ScrollView
          showsVerticalScrollIndicator={false}
          overScrollMode="never"
          bounces={false}
          contentContainerStyle={{ paddingBottom: insets.bottom + 30 }}
        >
          {/* ── Logo header ── */}
          <View style={[s.logoRow, tvMode && s.tvLogoRow, { borderBottomColor: colors.border, flexDirection: ROW_RTL, justifyContent: "space-between" }]}>
            <View style={{ flexDirection: ROW_RTL, alignItems: "center", gap: 10 }}>
              <View style={[s.logoAccent, { backgroundColor: colors.homeAccent }]} />
              <View style={{ alignItems: "flex-end" }}>
                <Text style={[s.logoText, tvMode && s.tvLogoText, { color: colors.textPrimary }]}>
                  NOVA <Text style={{ color: "#F59E0B" }}>FILM</Text>
                </Text>
                <Text style={[s.logoSub, tvMode && s.tvLogoSub, { color: colors.textMuted }]}>منصة الأفلام والمسلسلات والأنميشن</Text>
              </View>
            </View>
            <Pressable
              onPress={() => animateAndClose()}
              focusable={tvMode}
              hitSlop={12}
              style={({ focused, pressed }) => [
                s.closeBtn,
                tvMode && s.tvCloseBtn,
                {
                  backgroundColor: colors.surfaceElevated,
                  borderWidth: 1.5,
                  borderColor: focused ? "#FACC15" : colors.border,
                  opacity: pressed ? 0.75 : 1,
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              <Ionicons name="close" size={tvMode ? 20 : 19} color={colors.textPrimary} />
            </Pressable>
          </View>

          {/* ── Enhanced User Profile Card ── */}
          <Pressable
            onPress={() => nav(isLogged ? "/profile" : "/settings")}
            focusable={tvMode}
            style={({ focused, pressed }) => [
              s.userCard,
              tvMode && s.tvUserCard,
              { opacity: pressed ? 0.88 : 1 },
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
              <View style={s.userAvatarWrap}>
                {userData?.profileImageUrl ? (
                  <Image
                    source={{ uri: userData.profileImageUrl }}
                    style={s.userAvatarImg}
                    resizeMode="cover"
                    fadeDuration={0}
                  />
                ) : (
                  <LinearGradient colors={[g1, g2]} style={s.userAvatar}>
                    <Text style={s.userAvatarText}>{avatarLetter}</Text>
                  </LinearGradient>
                )}
                <View style={s.userOnlineBadge} />
              </View>

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
                <Text style={[s.userSub, { color: colors.textSecondary }]} numberOfLines={2}>
                  {isLogged
                    ? `${filmHistoryCount} مشاهدة  •  ${filmFavCount} مفضلة`
                    : "سجّل الدخول لمزامنة حسابك ومفضلتك"}
                </Text>
              </View>

              <View style={s.userChevronCircle}>
                <Ionicons name="chevron-back" size={15} color="#38bdf8" />
              </View>
            </LinearGradient>
          </Pressable>

          {/* ── Main navigation ── */}
          <SectionHeading label="القائمة الرئيسية" colors={colors} />
          {NAV_MAIN.map((item, idx) => (
            <DrawerItem
              key={item.label}
              item={item}
              tvMode={tvMode}
              hasTVPreferredFocus={tvMode && idx === 0}
              colors={colors}
              onPress={() => nav(item.route)}
            />
          ))}

          {/* ── Library ── */}
          <SectionHeading label="مكتبتي" colors={colors} />
          {NAV_LIBRARY.map((item) => (
            <DrawerItem
              key={item.label}
              item={item}
              badge={item.label === "المفضلة" ? filmFavCount : filmHistoryCount}
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
            onPress={() => toggleTvMode()}
          />
          <DrawerItem
            item={{
              icon: "cloud-download-outline",
              label: "تحديث التطبيق",
              route: "",
              badge: `v${CURRENT_APP_VERSION}`,
              showChevron: false,
              color: "#0EA5E9",
            }}
            tvMode={tvMode}
            colors={colors}
            onPress={() => {
              animateAndClose(() => {
                openAppUpdateModal();
              });
            }}
          />
          {NAV_OTHER.map((item) => (
            <DrawerItem key={item.label} item={item} tvMode={tvMode} colors={colors} onPress={() => nav(item.route)} />
          ))}

          {/* ── Footer ── */}
          <View style={s.footer}>
            <Text style={[s.footerText, { color: colors.textMuted }]}>NOVA FILM © 2026</Text>
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
    <Modal visible={visible} transparent animationType="none" onRequestClose={() => animateAndClose()}>
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

const DrawerItem = React.memo(function DrawerItem({
  item,
  onPress,
  tvMode,
  hasTVPreferredFocus = false,
  colors,
  badge,
}: {
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
        (pressed || (tvMode && focused)) && { backgroundColor: colors.surfaceElevated, opacity: 0.9 },
        tvMode && tvFocusStyle(focused),
      ]}
    >
      <View style={[s.navIcon, tvMode && s.tvNavIcon, { backgroundColor: (item.color || "#8B5CF6") + "18" }]}>
        <Ionicons name={item.icon} size={tvMode ? 20 : 18} color={item.color || "#8B5CF6"} />
      </View>
      <Text style={[s.navLabel, tvMode && s.tvNavLabel, { color: colors.textPrimary }]} numberOfLines={1}>
        {item.label}
      </Text>
      {badgeLabel && (
        <View style={[s.badge, { backgroundColor: colors.surfaceElevated, borderColor: colors.border }]}>
          <Text style={[s.badgeText, { color: colors.textSecondary }]}>{badgeLabel}</Text>
        </View>
      )}
      {item.showChevron !== false && (
        <Ionicons name="chevron-back" size={16} color={colors.textMuted} />
      )}
    </Pressable>
  );
});

const s = StyleSheet.create({
  backdrop: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: "rgba(0,0,0,0.62)",
  },
  drawer: {
    position: "absolute",
    top: 0,
    bottom: 0,
    right: 0,
    width: DRAWER_W,
    backgroundColor: "#0E0E12",
    borderLeftWidth: 1,
    borderLeftColor: "rgba(255,255,255,0.08)",
    shadowColor: "#000",
    shadowOffset: { width: -4, height: 0 },
    shadowOpacity: 0.45,
    shadowRadius: 16,
    elevation: 20,
  },
  tvDrawer: { borderLeftWidth: 1.5 },
  logoRow: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
    paddingHorizontal: 16,
    paddingVertical: 14,
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.06)",
  },
  tvLogoRow: { paddingHorizontal: 18, paddingVertical: 15, gap: 12 },
  logoAccent: {
    width: 3.5,
    height: 26,
    borderRadius: 2,
  },
  logoText: { fontSize: 16.5, letterSpacing: 0.5, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  tvLogoText: { fontSize: 18 },
  logoSub: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.38)", marginTop: -1, textAlign: "right" },
  tvLogoSub: { fontSize: 11, marginTop: 0 },
  closeBtn: {
    width: 38,
    height: 38,
    borderRadius: 12,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
  },
  tvCloseBtn: { width: 42, height: 42, borderRadius: 13 },
  userCard: {
    marginHorizontal: 14,
    marginTop: 12,
    marginBottom: 8,
    borderRadius: 16,
    overflow: "hidden",
    borderWidth: 1.5,
    borderColor: "rgba(56,189,248,0.28)",
    backgroundColor: "#141624",
  },
  tvUserCard: { marginHorizontal: 14, marginTop: 12, marginBottom: 8, borderRadius: 16 },
  userCardInner: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 12,
    paddingHorizontal: 14,
    paddingVertical: 13,
  },
  userAvatarWrap: {
    position: "relative",
    width: 46,
    height: 46,
    borderRadius: 14,
    borderWidth: 1.5,
    borderColor: "#0ea5e9",
    padding: 1.5,
    backgroundColor: "#0f172a",
    flexShrink: 0,
  },
  userAvatar: {
    width: "100%",
    height: "100%",
    borderRadius: 11,
    alignItems: "center",
    justifyContent: "center",
  },
  userAvatarImg: {
    width: "100%",
    height: "100%",
    borderRadius: 11,
  },
  userOnlineBadge: {
    position: "absolute",
    bottom: -2,
    left: -2,
    width: 11,
    height: 11,
    borderRadius: 6,
    backgroundColor: "#10b981",
    borderWidth: 1.5,
    borderColor: "#141624",
  },
  userAvatarText: { fontSize: 16, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  userInfoCol: {
    flex: 1,
    alignItems: "flex-end",
    justifyContent: "center",
    gap: 3,
  },
  userNameRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 6,
    flexWrap: "wrap",
  },
  userName: { fontSize: 14.5, fontFamily: "Cairo_800ExtraBold", color: "#fff", textAlign: "right" },
  userHandlePill: {
    paddingHorizontal: 7,
    paddingVertical: 1.5,
    borderRadius: 999,
    backgroundColor: "rgba(14,165,233,0.16)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.4)",
  },
  userHandlePillText: {
    fontSize: 9.5,
    fontFamily: "Cairo_700Bold",
    color: "#38bdf8",
  },
  userSub: { fontSize: 11, lineHeight: 16, fontFamily: "Cairo_600SemiBold", color: "rgba(255,255,255,0.52)", textAlign: "right" },
  userChevronCircle: {
    width: 28,
    height: 28,
    borderRadius: 14,
    backgroundColor: "rgba(14,165,233,0.14)",
    borderWidth: 1,
    borderColor: "rgba(56,189,248,0.3)",
    alignItems: "center",
    justifyContent: "center",
    flexShrink: 0,
  },
  sectionHeading: {
    flexDirection: "row",
    alignItems: "center",
    gap: 10,
    paddingHorizontal: 16,
    paddingTop: 14,
    paddingBottom: 7,
  },
  sectionLabel: {
    fontSize: 10.5,
    fontFamily: "Cairo_700Bold",
    textTransform: "uppercase",
    letterSpacing: 0.8,
  },
  sectionRule: {
    flex: 1,
    height: StyleSheet.hairlineWidth,
  },
  navItem: {
    flexDirection: "row",
    alignItems: "center",
    gap: 12,
    paddingHorizontal: 13,
    paddingVertical: 12,
    marginHorizontal: 14,
    marginBottom: 8,
    borderRadius: 14,
    borderWidth: 1,
  },
  tvNavItem: { paddingHorizontal: 14, paddingVertical: 13, marginHorizontal: 14, marginBottom: 9, borderRadius: 15, gap: 13 },
  navIcon: {
    width: 38,
    height: 38,
    borderRadius: 11,
    alignItems: "center",
    justifyContent: "center",
  },
  tvNavIcon: { width: 40, height: 40, borderRadius: 12 },
  navLabel: { flex: 1, fontSize: 13.5, lineHeight: 20, fontFamily: "Cairo_700Bold" },
  tvNavLabel: { fontSize: 14.5, lineHeight: 22 },
  badge: {
    minWidth: 26,
    height: 24,
    paddingHorizontal: 7,
    borderRadius: 12,
    alignItems: "center",
    justifyContent: "center",
    borderWidth: 1,
  },
  badgeText: { fontSize: 10.5, fontFamily: "Cairo_700Bold" },
  footer: {
    marginTop: 18,
    paddingHorizontal: 16,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
  },
  footerText: { fontSize: 10.5, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.24)" },
  footerDot: { flexDirection: "row", alignItems: "center", gap: 6 },
  onlineDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#22c55e" },
  footerStatus: { fontSize: 10.5, fontFamily: "Cairo_700Bold", color: "rgba(34,197,94,0.75)" },
});
