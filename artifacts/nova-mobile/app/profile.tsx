import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { LinearGradient } from "expo-linear-gradient";
import { useRouter } from "expo-router";
import * as ImagePicker from "expo-image-picker";
import React, { useEffect, useState, useCallback } from "react";
import {
  ActivityIndicator, Image, Platform, Pressable, ScrollView,
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
  username?: string; avatarColor?: number; profileImageUrl?: string | null;
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
  const [uploadingImg, setUploadingImg] = useState(false);
  const [error, setError] = useState("");
  const [success, setSuccess] = useState("");

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
    /* Also reload from server to get latest profileImageUrl */
    fetch(`${base}/api/auth/me`, { credentials: "include" })
      .then(r => r.ok ? r.json() : null)
      .then((d: any) => {
        if (!d) return;
        setUser(prev => prev ? {
          ...prev,
          displayName:    d.displayName    || prev.displayName,
          username:       d.username       || prev.username,
          avatarColor:    d.avatarColor    ?? prev.avatarColor,
          profileImageUrl: d.profileImageUrl || d.profile_image_custom || prev.profileImageUrl || null,
        } : null);
      })
      .catch(() => {});
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

  /* ── Pick profile image from library ── */
  const handlePickImage = async () => {
    try {
      const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
      if (!perm.granted) {
        showMsg("الرجاء السماح بالوصول للصور", false);
        return;
      }
      const result = await ImagePicker.launchImageLibraryAsync({
        mediaTypes: ["images"],
        allowsEditing: true,
        aspect: [1, 1],
        quality: 0.6,
        base64: true,
      });
      if (result.canceled || !result.assets?.length) return;
      const asset = result.assets[0];
      if (!asset.base64) { showMsg("تعذّر تحميل الصورة", false); return; }

      const dataUrl = `data:image/jpeg;base64,${asset.base64}`;
      setUploadingImg(true);
      const r = await fetch(`${base}/api/auth/profile`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ profileImageCustom: dataUrl }),
      });
      const d = await r.json();
      if (!r.ok) { showMsg(d.error || "فشل رفع الصورة", false); }
      else {
        const imgUrl = d.profileImageUrl || dataUrl;
        const updated: MobileUser = { ...user!, profileImageUrl: imgUrl };
        await AsyncStorage.setItem(AUTH_KEY, JSON.stringify(updated));
        setUser(updated);
        showMsg("تم تحديث صورة الملف الشخصي ✓", true);
      }
    } catch { showMsg("تعذّر رفع الصورة", false); }
    setUploadingImg(false);
  };

  /* ── Remove profile image ── */
  const handleRemoveImage = async () => {
    setUploadingImg(true);
    try {
      const r = await fetch(`${base}/api/auth/profile`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ profileImageCustom: null }),
      });
      if (r.ok) {
        const updated: MobileUser = { ...user!, profileImageUrl: null };
        await AsyncStorage.setItem(AUTH_KEY, JSON.stringify(updated));
        setUser(updated);
        showMsg("تمت إزالة الصورة ✓", true);
      }
    } catch {}
    setUploadingImg(false);
  };

  const handleLogout = async () => {
    await AsyncStorage.removeItem(AUTH_KEY);
    try { await fetch(`${base}/api/auth/signout`, { method: "POST", credentials: "include" }); } catch {}
    router.replace("/settings" as any);
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
          <Ionicons name="arrow-forward" size={22} color={colors.text} />
        </Pressable>
        <Text style={[s.headerTitle, { color: colors.text }]}>الملف الشخصي</Text>
        <View style={{ width: 38 }} />
      </View>

      <ScrollView showsVerticalScrollIndicator={false} contentContainerStyle={{ paddingBottom: 60 }} keyboardShouldPersistTaps="handled">
        {/* Hero Avatar */}
        <View style={s.heroSection}>
          <Pressable onPress={handlePickImage} style={[s.avatarGlow, { shadowColor: g1 }]} disabled={uploadingImg}>
            {user.profileImageUrl ? (
              <Image source={{ uri: user.profileImageUrl }} style={s.avatarImage} />
            ) : (
              <LinearGradient colors={[g1, g2]} style={s.avatarCircle}>
                <Text style={s.avatarLetter}>{letter}</Text>
              </LinearGradient>
            )}
            {/* Camera badge overlay */}
            <View style={[s.cameraBadge, { backgroundColor: g1 }]}>
              {uploadingImg
                ? <ActivityIndicator size="small" color="#fff" />
                : <Ionicons name="camera" size={12} color="#fff" />
              }
            </View>
          </Pressable>

          <Text style={[s.heroName, { color: colors.text }]}>{user.displayName}</Text>
          {user.username ? (
            <Text style={[s.heroSub, { color: colors.mutedForeground }]}>@{user.username}</Text>
          ) : null}
          <Text style={[s.heroEmail, { color: colors.mutedForeground }]}>{user.email}</Text>

          {/* Image action buttons */}
          <View style={s.imgActions}>
            <Pressable onPress={handlePickImage} disabled={uploadingImg}
              style={[s.imgBtn, { backgroundColor: colors.primary + "20", borderColor: colors.primary + "40" }]}>
              <Ionicons name="image" size={14} color={colors.primary} />
              <Text style={[s.imgBtnText, { color: colors.primary }]}>تغيير الصورة</Text>
            </Pressable>
            {user.profileImageUrl && (
              <Pressable onPress={handleRemoveImage} disabled={uploadingImg}
                style={[s.imgBtn, { backgroundColor: "rgba(239,68,68,0.10)", borderColor: "rgba(239,68,68,0.25)" }]}>
                <Ionicons name="trash" size={14} color="#f87171" />
                <Text style={[s.imgBtnText, { color: "#f87171" }]}>إزالة</Text>
              </Pressable>
            )}
          </View>

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
    </View>
  );
}

const s = StyleSheet.create({
  container: { flex: 1 },
  header: { flexDirection: "row", alignItems: "center", justifyContent: "space-between", paddingHorizontal: 16, paddingBottom: 12 },
  backBtn: { width: 38, height: 38, borderRadius: 12, alignItems: "center", justifyContent: "center", backgroundColor: "rgba(255,255,255,0.06)" },
  headerTitle: { fontSize: 17, fontFamily: "Cairo_800ExtraBold" },
  heroSection: { alignItems: "center", paddingVertical: 24, paddingHorizontal: 20 },
  avatarGlow: { shadowOffset: { width: 0, height: 8 }, shadowOpacity: 0.5, shadowRadius: 20, elevation: 12, marginBottom: 16 },
  avatarCircle: { width: 96, height: 96, borderRadius: 28, alignItems: "center", justifyContent: "center" },
  avatarImage: { width: 96, height: 96, borderRadius: 28 },
  avatarLetter: { fontSize: 40, fontFamily: "Cairo_800ExtraBold", color: "#fff" },
  cameraBadge: { position: "absolute", bottom: -6, right: -6, width: 28, height: 28, borderRadius: 14, alignItems: "center", justifyContent: "center", borderWidth: 2, borderColor: "#fff" },
  heroName: { fontSize: 20, fontFamily: "Cairo_800ExtraBold", marginBottom: 2 },
  heroSub: { fontSize: 12.5, fontFamily: "Cairo_400Regular", marginBottom: 2 },
  heroEmail: { fontSize: 11, fontFamily: "Cairo_400Regular", marginBottom: 10 },
  imgActions: { flexDirection: "row", gap: 8, marginBottom: 12 },
  imgBtn: { flexDirection: "row", alignItems: "center", gap: 5, paddingHorizontal: 12, paddingVertical: 7, borderRadius: 12, borderWidth: 1 },
  imgBtnText: { fontSize: 11, fontFamily: "Cairo_700Bold" },
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
});
