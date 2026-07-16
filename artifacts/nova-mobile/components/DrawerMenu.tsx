import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useRef } from "react";
import {
  Animated, Dimensions, Easing, Image, Modal, Platform, Pressable,
  ScrollView, StyleSheet, Text, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { getBaseUrl } from "@/utils/api";
import { secureFetch } from "@/utils/secureApi";

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
  color?: string;
};

const NAV_MAIN: NavItem[] = [
  { icon: "home",            label: "الرئيسية",              route: "/(tabs)",             color: "#8B5CF6" },
  { icon: "search",          label: "البحث",                 route: "/(tabs)/search",      color: "#6366f1" },
  { icon: "grid",            label: "تصفح الأنمي",           route: "/(tabs)/browse",      color: "#3b82f6" },
  { icon: "film",            label: "الأنيميشن والأفلام",    route: "/(tabs)/animations",  color: "#06b6d4" },
  { icon: "tv",              label: "كرتون مدبلج",           route: "/dubbed",             color: "#10b981" },
  { icon: "newspaper",       label: "أخبار الأنمي",          route: "/(tabs)/news",        color: "#f59e0b" },
  { icon: "calendar",        label: "جدول البث الأسبوعي",    route: "/schedule",           color: "#10b981" },
];

const NAV_LIBRARY: NavItem[] = [
  { icon: "heart",           label: "المفضلة",               route: "/(tabs)/library",     color: "#f43f5e" },
  { icon: "time",            label: "سجل المشاهدة",          route: "/(tabs)/library",     color: "#f59e0b" },
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
  const topPad = Platform.OS === "web" ? 0 : insets.top;
  const { watchHistory, favorites } = useApp();
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

  const slideX = useRef(new Animated.Value(DRAWER_W)).current;
  const opacity = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    if (visible) {
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: 0,
          duration: 300,
          easing: Easing.bezier(0.22, 1, 0.36, 1),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, { toValue: 1, duration: 200, useNativeDriver: true }),
      ]).start();
    } else {
      Animated.parallel([
        Animated.timing(slideX, {
          toValue: DRAWER_W,
          duration: 240,
          easing: Easing.bezier(0.4, 0, 1, 1),
          useNativeDriver: true,
        }),
        Animated.timing(opacity, { toValue: 0, duration: 200, useNativeDriver: true }),
      ]).start();
    }
  }, [visible]);

  function nav(route: string) {
    onClose();
    setTimeout(() => router.push(route as any), 220);
  }

  if (!visible) return null;

  return (
    <Modal visible={visible} transparent animationType="none" onRequestClose={onClose}>
      {/* Backdrop */}
      <Animated.View style={[s.backdrop, { opacity }]}>
        <Pressable style={StyleSheet.absoluteFill} onPress={onClose} />
      </Animated.View>

      {/* Drawer panel — slides from RIGHT (RTL) */}
      <Animated.View style={[s.drawer, { transform: [{ translateX: slideX }], paddingTop: topPad }]}>
        <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: insets.bottom + 24 }}>

          {/* ── Logo header ── */}
          <View style={s.logoRow}>
            <LinearGradient colors={["#8B5CF6", "#6D28D9"]} style={s.logoBadge}>
              <Ionicons name="play" size={14} color="#fff" />
            </LinearGradient>
            <View>
              <Text style={s.logoText}>Anime <Text style={{ color: "#8B5CF6" }}>NOVA</Text></Text>
              <Text style={s.logoSub}>منصة الأنمي العربية</Text>
            </View>
            <Pressable onPress={onClose} style={s.closeBtn}>
              <Ionicons name="close" size={20} color="rgba(255,255,255,0.5)" />
            </Pressable>
          </View>

          {/* ── User card ── */}
          <Pressable onPress={() => nav("/settings")} style={s.userCard}>
            <LinearGradient colors={["rgba(139,92,246,0.15)", "rgba(109,40,217,0.08)"]} style={s.userCardInner}>
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
                <Text style={s.userName} numberOfLines={1}>
                  {userData?.displayName || userData?.username || "الملف الشخصي"}
                </Text>
                {userData?.username ? (
                  <Text style={s.userSub} numberOfLines={1}>@{userData.username}</Text>
                ) : (
                  <Text style={s.userSub}>
                    {`${watchHistory.length} مشاهدة · ${favorites.length} مفضلة`}
                  </Text>
                )}
              </View>
              <Ionicons name="chevron-back" size={16} color="rgba(139,92,246,0.6)" />
            </LinearGradient>
          </Pressable>

          {/* ── Main navigation ── */}
          <Text style={s.sectionLabel}>القائمة الرئيسية</Text>
          {NAV_MAIN.map((item) => (
            <DrawerItem key={item.label} item={item} onPress={() => nav(item.route)} />
          ))}

          {/* ── Library ── */}
          <Text style={s.sectionLabel}>مكتبتي</Text>
          {NAV_LIBRARY.map((item) => (
            <DrawerItem key={item.label} item={item} onPress={() => nav(item.route)} />
          ))}

          {/* ── Other ── */}
          <Text style={s.sectionLabel}>أخرى</Text>
          {NAV_OTHER.map((item) => (
            <DrawerItem key={item.label} item={item} onPress={() => nav(item.route)} />
          ))}

          {/* ── Footer ── */}
          <View style={s.footer}>
            <Text style={s.footerText}>Anime NOVA © 2025</Text>
            <View style={s.footerDot}>
              <View style={s.onlineDot} />
              <Text style={s.footerStatus}>متصل</Text>
            </View>
          </View>
        </ScrollView>
      </Animated.View>
    </Modal>
  );
}

function DrawerItem({ item, onPress }: { item: NavItem; onPress: () => void }) {
  return (
    <Pressable onPress={onPress} style={({ pressed }) => [s.navItem, pressed && { backgroundColor: "rgba(255,255,255,0.04)" }]}>
      <View style={[s.navIcon, { backgroundColor: (item.color || "#8B5CF6") + "18" }]}>
        <Ionicons name={item.icon} size={18} color={item.color || "#8B5CF6"} />
      </View>
      <Text style={s.navLabel}>{item.label}</Text>
      {item.badge && (
        <View style={s.badge}>
          <Text style={s.badgeText}>{item.badge}</Text>
        </View>
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
  logoRow: {
    flexDirection: "row", alignItems: "center", gap: 10,
    paddingHorizontal: 20, paddingVertical: 20,
    borderBottomWidth: 1, borderBottomColor: "rgba(255,255,255,0.06)",
  },
  logoBadge: {
    width: 34, height: 34, borderRadius: 10,
    alignItems: "center", justifyContent: "center",
  },
  logoText: { fontSize: 17, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  logoSub: { fontSize: 9, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.3)", marginTop: -2 },
  closeBtn: {
    marginStart: "auto" as any,
    width: 32, height: 32, borderRadius: 16,
    alignItems: "center", justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.05)",
  },
  userCard: { marginHorizontal: 14, marginTop: 16, marginBottom: 8, borderRadius: 18, overflow: "hidden", borderWidth: 1, borderColor: "rgba(139,92,246,0.2)" },
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
  sectionLabel: {
    fontSize: 9, fontFamily: "Cairo_700Bold",
    color: "rgba(255,255,255,0.2)",
    textTransform: "uppercase",
    letterSpacing: 1.2,
    paddingHorizontal: 20, paddingTop: 18, paddingBottom: 6,
  },
  navItem: {
    flexDirection: "row", alignItems: "center", gap: 14,
    paddingHorizontal: 14, paddingVertical: 11,
    marginHorizontal: 6, borderRadius: 14,
  },
  navIcon: {
    width: 36, height: 36, borderRadius: 10,
    alignItems: "center", justifyContent: "center",
  },
  navLabel: { flex: 1, fontSize: 13, fontFamily: "Cairo_700Bold", color: "rgba(255,255,255,0.85)" },
  badge: {
    backgroundColor: "rgba(139,92,246,0.2)",
    borderRadius: 8, paddingHorizontal: 7, paddingVertical: 2,
    borderWidth: 1, borderColor: "rgba(139,92,246,0.35)",
  },
  badgeText: { fontSize: 9, fontFamily: "Cairo_700Bold", color: "#c4b5fd" },
  footer: {
    marginTop: 24, paddingHorizontal: 20,
    flexDirection: "row", alignItems: "center", justifyContent: "space-between",
  },
  footerText: { fontSize: 10, fontFamily: "Cairo_400Regular", color: "rgba(255,255,255,0.2)" },
  footerDot: { flexDirection: "row", alignItems: "center", gap: 5 },
  onlineDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#22c55e" },
  footerStatus: { fontSize: 10, fontFamily: "Cairo_700Bold", color: "rgba(34,197,94,0.7)" },
});
