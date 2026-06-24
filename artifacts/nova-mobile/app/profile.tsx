import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import React, { useEffect, useState, useCallback } from "react";
import {
  ActivityIndicator, Platform, Pressable, ScrollView,
  StyleSheet, Text, TextInput, View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/api";

const AUTH_KEY = "nova-mobile-user";

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

type MobileUser = {
  id: string; email: string; displayName: string;
  username?: string; avatarColor?: number;
};

export default function ProfileScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const base = getBaseUrl();
  const topPad = Platform.OS === "web" ? 0 : Math.max(insets.top, Platform.OS === "android" ? 28 : 44);

  const [user, setUser] = useState<MobileUser | null>(null);
  const [tab, setTab] = useState<"profile" | "password">("profile");

  const [displayName, setDisplayName] = useState("");
  const [username, setUsername] = useState("");
  const [currentPass, setCurrentPass] = useState("");
  const [newPass, setNewPass] = useState("");
  const [confirmPass, setConfirmPass] = useState("");
  const [showCurrent, setShowCurrent] = useState(false);
  const [showNew, setShowNew] = useState(false);
  const [showConfirm, setShowConfirm] = useState(false);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");
  const [showColorPicker, setShowColorPicker] = useState(false);

  useEffect(() => {
    AsyncStorage.getItem(AUTH_KEY).then(v => {
      if (v) {
        try {
          const u = JSON.parse(v) as MobileUser;
          setUser(u);
          setDisplayName(u.displayName || "");
          setUsername(u.username || "");
        } catch {}
      }
    });
  }, []);

  const colorIdx = Math.min((user?.avatarColor ?? 0) % AVATAR_COLORS.length, AVATAR_COLORS.length - 1);
  const [g1, g2] = AVATAR_COLORS[colorIdx];
  const letter = (user?.displayName || user?.email || "N").charAt(0).toUpperCase();
  const changed = user && (
    displayName.trim() !== (user.displayName || "") ||
    (username.trim() || "") !== (user.username || "")
  );

  const showMsg = useCallback((msg: string, ok: boolean) => {
    if (ok) { setSuccess(msg); setError(""); setTimeout(() => setSuccess(""), 2500); }
    else { setError(msg); setSuccess(""); }
  }, []);

  const handleSave = async () => {
    if (!displayName.trim()) { showMsg("الاسم الظاهر مطلوب", false); return; }
    setLoading(true); setError(""); setSuccess("");
    try {
      const r = await fetch(`${base}/api/auth/profile`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ displayName: displayName.trim(), username: username.trim() || undefined }),
      });
      const d = await r.json();
      if (!r.ok) { showMsg(d.error || "حدث خطأ", false); }
      else {
        const updated: MobileUser = { ...user!, displayName: d.displayName || displayName.trim(), username: d.username || username.trim() || user!.username };
        await AsyncStorage.setItem(AUTH_KEY, JSON.stringify(updated));
        setUser(updated);
        showMsg("تم حفظ التغييرات ✓", true);
      }
    } catch { showMsg("تعذّر الوصول للخادم", false); }
    setLoading(false);
  };

  const handleChangePassword = async () => {
    if (!currentPass) { showMsg("أدخل كلمة المرور الحالية", false); return; }
    if (newPass.length < 6) { showMsg("كلمة المرور الجديدة يجب أن تكون 6 أحرف على الأقل", false); return; }
    if (newPass !== confirmPass) { showMsg("كلمتا المرور غير متطابقتين", false); return; }
    setLoading(true); setError(""); setSuccess("");
    try {
      const r = await fetch(`${base}/api/auth/change-password`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ currentPassword: currentPass, newPassword: newPass }),
      });
      const d = await r.json();
      if (!r.ok) { showMsg(d.error || "حدث خطأ", false); }
      else {
        showMsg("تم تغيير كلمة المرور بنجاح ✓", true);
        setCurrentPass(""); setNewPass(""); setConfirmPass("");
        setTimeout(() => setTab("profile"), 2000);
      }
    } catch { showMsg("تعذّر الوصول للخادم", false); }
    setLoading(false);
  };

  const handleChangeColor = async (idx: number) => {
    if (!user) return;
    const updated = { ...user, avatarColor: idx };
    await AsyncStorage.setItem(AUTH_KEY, JSON.stringify(updated));
    setUser(updated);
    setShowColorPicker(false);
    try {
      await fetch(`${base}/api/auth/profile`, {
        method: "PATCH", headers: { "Content-Type": "application/json" },
        credentials: "include", body: JSON.stringify({ avatarColor: idx }),
      });
    } catch {}
  };

  const handleLogout = async () => {
    await AsyncStorage.removeItem(AUTH_KEY);
    try { await fetch(`${base}/api/auth/logout`, { method: "POST", credentials: "include" }); } catch {}
    router.replace("/(tabs)/settings" as any);
  };

  if (!user) {
    return (
      <View style={[s.container, { backgroundColor: colors.background, justifyContent: "center", alignItems: "center" }]}>
        <ActivityIndicator color={colors.primary} size="large" />
      </View>
    );
  }

  return (
    <View style={[s.container, { backgroundColor: colors.background }]}>
      {/* Header */}
      <View style={[s.header, { paddingTop: topPad + 8 }]}>
        <Pressable onPress={() => router.back()} style={s.backBtn}>
          <Ionicons name="arrow-back" size={22} color={colors.text} />
        </Pressable>
        <Text style={[s.headerTitle, { color: colors.text }]}>الملف الشخصي</Text>
        <View style={{ width: 38 }} />
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 60 }} keyboardShouldPersistTaps="handled">
        {/* Hero Avatar */}
        <View style={s.heroSection}>
          <View style={[s.avatarGlow, { shadowColor: g1 }]}>
            <LinearGradient colors={[g1, g2]} style={s.avatarCircle}>
              <Text style={s.avatarLetter}>{letter}</Text>
            </LinearGradient>
          </View>

          {/* Color picker button */}
          <Pressable onPress={() => setShowColorPicker(true)} style={[s.colorBtn, { backgroundColor: g1 + "25", borderColor: g1 + "60" }]}>
            <Ionicons name="color-palette" size={13} color={g1} />
            <Text style={[s.colorBtnText, { color: g1 }]}>تغيير اللون</Text>
          </Pressable>

          <Text style={[s.heroName, { color: colors.text }]}>{user.displayName}</Text>
          {user.username ? (
            <Text style={[s.heroSub, { color: colors.mutedForeground }]}>@{user.username}</Text>
          ) : null}
          <Text style={[s.heroEmail, { color: colors.mutedForeground }]}>{user.email}</Text>

          {/* Active badge */}
          <View style={[s.activeBadge, { backgroundColor: "#16a34a18", borderColor: "#16a34a40" }]}>
            <View style={s.activeDot} />
            <Text style={s.activeBadgeText}>حساب نشط</Text>
          </View>
        </View>

        {/* Tabs */}
        <View style={[s.tabRow, { backgroundColor: colors.card, borderColor: colors.border }]}>
          {(["profile", "password"] as const).map(t => (
            <Pressable key={t} onPress={() => { setTab(t); setError(""); setSuccess(""); }}
              style={[s.tabBtn, tab === t && { backgroundColor: colors.primary + "30", borderColor: colors.primary + "60", borderWidth: 1 }]}>
              <Ionicons name={t === "profile" ? "person-outline" : "lock-closed-outline"} size={14} color={tab === t ? colors.primary : colors.mutedForeground} />
              <Text style={[s.tabText, { color: tab === t ? colors.primary : colors.mutedForeground }]}>
                {t === "profile" ? "بيانات الحساب" : "كلمة المرور"}
              </Text>
            </Pressable>
          ))}
        </View>

        <View style={{ paddingHorizontal: 18, marginTop: 14 }}>
          {/* Error / Success */}
          {!!error && (
            <View style={[s.msgBox, { backgroundColor: "#ef444414", borderColor: "#ef444430" }]}>
              <Ionicons name="alert-circle" size={14} color="#f87171" />
              <Text style={[s.msgText, { color: "#fca5a5" }]}>{error}</Text>
            </View>
          )}
          {!!success && (
            <View style={[s.msgBox, { backgroundColor: "#10b98114", borderColor: "#10b98130" }]}>
              <Ionicons name="checkmark-circle" size={14} color="#34d399" />
              <Text style={[s.msgText, { color: "#6ee7b7" }]}>{success}</Text>
            </View>
          )}

          {tab === "profile" ? (
            <>
              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>الاسم الظاهر</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <TextInput value={displayName} onChangeText={v => { setDisplayName(v); setError(""); }}
                  placeholder="اسمك الظاهر للآخرين"
                  placeholderTextColor={colors.mutedForeground + "80"}
                  style={[s.fieldInput, { color: colors.text }]}
                  textAlign="right"
                />
                <Ionicons name="person-outline" size={16} color={colors.mutedForeground} />
              </View>

              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>اسم المستخدم (إنجليزي)</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <TextInput value={username} onChangeText={v => { setUsername(v.replace(/[^a-zA-Z0-9_.]/g, "").toLowerCase()); setError(""); }}
                  placeholder="@username"
                  placeholderTextColor={colors.mutedForeground + "80"}
                  autoCapitalize="none"
                  style={[s.fieldInput, { color: colors.text }]}
                  textAlign="right"
                />
                <Ionicons name="at" size={16} color={colors.mutedForeground} />
              </View>

              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>البريد الإلكتروني</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card, borderColor: colors.border, opacity: 0.5 }]}>
                <Text style={[s.fieldInput, { color: colors.mutedForeground, paddingVertical: 12 }]}>{user.email}</Text>
                <Ionicons name="mail-outline" size={16} color={colors.mutedForeground} />
              </View>

              <Pressable onPress={handleSave} disabled={loading || !changed}
                style={[s.primaryBtn, { backgroundColor: colors.primary, opacity: !changed ? 0.45 : 1, marginTop: 10 }]}>
                {loading
                  ? <ActivityIndicator color="#fff" size="small" />
                  : (<>
                    <Ionicons name="checkmark-circle" size={16} color="#fff" />
                    <Text style={s.primaryBtnText}>حفظ التغييرات</Text>
                  </>)
                }
              </Pressable>

              <View style={[s.divider, { backgroundColor: colors.border }]} />

              {/* Logout */}
              <Pressable onPress={handleLogout}
                style={[s.dangerBtn, { backgroundColor: "#ef444410", borderColor: "#ef444430" }]}>
                <Ionicons name="log-out" size={16} color="#f87171" />
                <Text style={[s.dangerBtnText, { color: "#f87171" }]}>تسجيل الخروج</Text>
              </Pressable>

              <Pressable onPress={handleLogout}
                style={[s.secondaryBtn, { backgroundColor: colors.card, borderColor: colors.border, marginTop: 10 }]}>
                <Ionicons name="swap-horizontal" size={14} color={colors.mutedForeground} />
                <Text style={[s.secondaryBtnText, { color: colors.mutedForeground }]}>تبديل الحساب</Text>
              </Pressable>
            </>
          ) : (
            <>
              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>كلمة المرور الحالية</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Pressable onPress={() => setShowCurrent(p => !p)}>
                  <Ionicons name={showCurrent ? "eye-off" : "eye"} size={16} color={colors.mutedForeground} />
                </Pressable>
                <TextInput value={currentPass} onChangeText={v => { setCurrentPass(v); setError(""); }}
                  placeholder="••••••••"
                  placeholderTextColor={colors.mutedForeground + "80"}
                  secureTextEntry={!showCurrent}
                  style={[s.fieldInput, { color: colors.text }]}
                  textAlign="right"
                />
                <Ionicons name="lock-closed-outline" size={16} color={colors.mutedForeground} />
              </View>

              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>كلمة المرور الجديدة</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card, borderColor: colors.border }]}>
                <Pressable onPress={() => setShowNew(p => !p)}>
                  <Ionicons name={showNew ? "eye-off" : "eye"} size={16} color={colors.mutedForeground} />
                </Pressable>
                <TextInput value={newPass} onChangeText={v => { setNewPass(v); setError(""); }}
                  placeholder="6 أحرف على الأقل"
                  placeholderTextColor={colors.mutedForeground + "80"}
                  secureTextEntry={!showNew}
                  style={[s.fieldInput, { color: colors.text }]}
                  textAlign="right"
                />
                <Ionicons name="lock-closed-outline" size={16} color={colors.mutedForeground} />
              </View>

              <Text style={[s.fieldLabel, { color: colors.mutedForeground }]}>تأكيد كلمة المرور الجديدة</Text>
              <View style={[s.fieldWrap, { backgroundColor: colors.card,
                borderColor: confirmPass ? (newPass === confirmPass ? "#34d39940" : "#ef444440") : colors.border }]}>
                <Pressable onPress={() => setShowConfirm(p => !p)}>
                  <Ionicons name={showConfirm ? "eye-off" : "eye"} size={16} color={colors.mutedForeground} />
                </Pressable>
                <TextInput value={confirmPass} onChangeText={v => { setConfirmPass(v); setError(""); }}
                  placeholder="••••••••"
                  placeholderTextColor={colors.mutedForeground + "80"}
                  secureTextEntry={!showConfirm}
                  style={[s.fieldInput, { color: colors.text }]}
                  textAlign="right"
                />
                <Ionicons
                  name={newPass === confirmPass && confirmPass ? "checkmark-circle" : "ellipse-outline"}
                  size={16}
                  color={newPass === confirmPass && confirmPass ? "#34d399" : colors.mutedForeground}
                />
              </View>

              <Pressable onPress={handleChangePassword} disabled={loading}
                style={[s.primaryBtn, { backgroundColor: colors.primary, marginTop: 10 }]}>
                {loading
                  ? <ActivityIndicator color="#fff" size="small" />
                  : (<>
                    <Ionicons name="shield-checkmark" size={16} color="#fff" />
                    <Text style={s.primaryBtnText}>تغيير كلمة المرور</Text>
                  </>)
                }
              </Pressable>
            </>
          )}
        </View>
      </ScrollView>

      {/* Color Picker Modal */}
      {showColorPicker && (
        <Pressable style={s.colorOverlay} onPress={() => setShowColorPicker(false)}>
          <Pressable style={[s.colorSheet, { backgroundColor: colors.card, borderColor: colors.border }]} onPress={e => e.stopPropagation()}>
            <View style={[s.colorSheetHandle, { backgroundColor: colors.border }]} />
            <Text style={[s.colorSheetTitle, { color: colors.text }]}>🎨 اختر لون الأفاتار</Text>
            <Text style={[s.colorSheetSub, { color: colors.mutedForeground }]}>اللون يظهر كخلفية الحرف الأول من اسمك</Text>
            <View style={s.colorGrid}>
              {AVATAR_COLORS.map(([gc1, gc2], i) => (
                <Pressable key={i} onPress={() => handleChangeColor(i)} style={s.colorSwatchWrap}>
                  <LinearGradient colors={[gc1, gc2]} style={[s.colorSwatch,
                    { borderWidth: i === colorIdx ? 3 : 1.5, borderColor: i === colorIdx ? "#fff" : gc1 + "50" }]}>
                    <Text style={s.colorSwatchLetter}>A</Text>
                  </LinearGradient>
                  {i === colorIdx && <Ionicons name="checkmark-circle" size={14} color="#fff" style={{ marginTop: 4 }} />}
                </Pressable>
              ))}
            </View>
          </Pressable>
        </Pressable>
      )}
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12 },
  backBtn: { width: 38, height: 38, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.06)" },
  headerTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold" },
  heroSection: { alignItems: "center", paddingVertical: 24, paddingHorizontal: 20 },
  avatarGlow: { shadowOffset: { width: 0, height: 8 }, shadowOpacity: 0.5, shadowRadius: 20, elevation: 12, marginBottom: 12 },
  avatarCircle: { width: 96, height: 96, borderRadius: 28, alignItems: "center", justifyContent: "center" },
  avatarLetter: { fontSize: 40, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  colorBtn: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 12, paddingVertical: 6, borderRadius: 12, borderWidth: 1, marginBottom: 12 },
  colorBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
  heroName: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", marginBottom: 2 },
  heroSub: { fontSize: 12.5, fontFamily: "Cairo_400Regular", marginBottom: 2 },
  heroEmail: { fontSize: 11, fontFamily: "Cairo_400Regular", marginBottom: 10 },
  activeBadge: { flexDirection: "row", alignItems: "center", gap: 6, paddingHorizontal: 12, paddingVertical: 5, borderRadius: 20, borderWidth: 1 },
  activeDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: "#22c55e" },
  activeBadgeText: { fontSize: 10.5, fontFamily: "Cairo_700Bold", color: "#4ade80" },
  tabRow: { flexDirection: "row", marginHorizontal: 18, padding: 4, borderRadius: 16, borderWidth: 1, gap: 4 },
  tabBtn: { flex: 1, flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 6, paddingVertical: 10, borderRadius: 12 },
  tabText: { fontSize: 12, fontFamily: "Cairo_800ExtraBold" },
  msgBox: { flexDirection: "row", alignItems: "center", gap: 8, borderWidth: 1, borderRadius: 14, paddingHorizontal: 14, paddingVertical: 10, marginBottom: 14 },
  msgText: { fontSize: 12, fontFamily: "Cairo_400Regular", flex: 1, textAlign: "right" },
  fieldLabel: { fontSize: 11, fontFamily: "Cairo_700Bold", marginBottom: 6, marginTop: 14, textAlign: "right" },
  fieldWrap: { flexDirection: "row", alignItems: "center", gap: 10, borderWidth: 1, borderRadius: 14, paddingHorizontal: 14, marginBottom: 2 },
  fieldInput: { flex: 1, fontSize: 13, fontFamily: "Cairo_400Regular", paddingVertical: 13 },
  primaryBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 8, paddingVertical: 15, borderRadius: 18 },
  primaryBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  divider: { height: 1, marginVertical: 22 },
  dangerBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 14, borderRadius: 18, borderWidth: 1 },
  dangerBtnText: { fontSize: 13, fontFamily: "Cairo_800ExtraBold" },
  secondaryBtn: { flexDirection: "row", alignItems: "center", justifyContent: "center", gap: 10, paddingVertical: 12, borderRadius: 18, borderWidth: 1 },
  secondaryBtnText: { fontSize: 12, fontFamily: "Cairo_700Bold" },
  colorOverlay: { ...StyleSheet.absoluteFillObject, backgroundColor: "rgba(0,0,0,0.65)", justifyContent: "flex-end" },
  colorSheet: { borderTopLeftRadius: 28, borderTopRightRadius: 28, padding: 24, borderWidth: 1, alignItems: "center" },
  colorSheetHandle: { width: 40, height: 4, borderRadius: 2, marginBottom: 14 },
  colorSheetTitle: { fontSize: 15, fontFamily: "Cairo_800ExtraBold", marginBottom: 4 },
  colorSheetSub: { fontSize: 11, fontFamily: "Cairo_400Regular", marginBottom: 20, textAlign: "center" },
  colorGrid: { flexDirection: "row", flexWrap: "wrap", gap: 16, justifyContent: "center", width: "100%" },
  colorSwatchWrap: { alignItems: "center", width: 64 },
  colorSwatch: { width: 56, height: 56, borderRadius: 18, alignItems: "center", justifyContent: "center" },
  colorSwatchLetter: { fontSize: 22, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
});
