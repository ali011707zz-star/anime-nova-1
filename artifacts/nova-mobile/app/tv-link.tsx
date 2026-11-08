import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React, { useEffect, useState } from "react";
import {
  ActivityIndicator,
  KeyboardAvoidingView,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  View,
  I18nManager,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/baseUrl";
import { secureFetch, setUserAuthToken } from "@/utils/secureApi";
import { isTvDevice, tvFocusStyle, TvPressable, useTvModeOverride } from "@/utils/tv";
const Pressable = TvPressable;

const AUTH_KEY = "nova-mobile-user";
const DEVICE_ID_KEY = "nova-device-id";
const LEGACY_DEVICE_ID_KEY = "nova-tv-device-id";

type LinkedUser = {
  id: string;
  email: string;
  displayName: string;
  username?: string;
  avatarColor?: number;
  profileImageUrl?: string | null;
};

function makeDeviceId(): string {
  return `nova-device-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 10)}`;
}

function normalizeLinkCode(value: string): string {
  return value
    .replace(/[٠-٩]/g, digit => String(digit.charCodeAt(0) - 0x0660))
    .replace(/[۰-۹]/g, digit => String(digit.charCodeAt(0) - 0x06f0))
    .replace(/\D/g, "")
    .slice(0, 6);
}

async function getDeviceId(): Promise<string> {
  const stored = await AsyncStorage.getItem(DEVICE_ID_KEY) || await AsyncStorage.getItem(LEGACY_DEVICE_ID_KEY);
  if (stored && /^[A-Za-z0-9._:-]{6,160}$/.test(stored)) return stored;
  const next = makeDeviceId();
  await AsyncStorage.setItem(DEVICE_ID_KEY, next);
  return next;
}

const TV_DIGITS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];

export default function TvLinkScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { setCurrentUser } = useApp();
  useTvModeOverride();
  const tvMode = isTvDevice();
  const goBack = () => router.canGoBack() ? router.back() : router.replace("/(tabs)" as any);
  const [code, setCode] = useState("");
  const [deviceId, setDeviceId] = useState<string | null>(null);
  const [checking, setChecking] = useState(true);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    let active = true;
    void getDeviceId().then(id => { if (active) setDeviceId(id); });
    secureFetch(`${getBaseUrl()}/api/auth/me`)
      .then(response => {
        if (active) {
          if (response.ok) router.replace("/(tabs)" as any);
          else setChecking(false);
        }
      })
      .catch(() => { if (active) setChecking(false); });
    return () => { active = false; };
  }, [router]);

  const handleClaim = async (overrideCode?: string) => {
    const normalized = normalizeLinkCode(overrideCode ?? code);
    if (normalized.length !== 6) {
      setError("أدخل الرمز المكوّن من 6 أرقام");
      return;
    }
    setLoading(true);
    setError("");
    try {
      const id = deviceId || await getDeviceId();
      const platform = tvMode
        ? "android-tv"
        : Platform.OS === "ios"
          ? "ios"
          : Platform.OS === "android"
            ? "android"
            : Platform.OS;
      const deviceName = tvMode
        ? "جهاز Android TV"
        : Platform.OS === "ios"
          ? "هاتف iPhone"
          : Platform.OS === "android"
            ? "هاتف Android"
            : "جهاز";
      const response = await secureFetch(`${getBaseUrl()}/api/device-link/claim`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          code: normalized,
          deviceId: id,
          deviceName,
          platform,
        }),
      });
      const data = await response.json().catch(() => ({}));
      if (!response.ok || !data.authToken) {
        setError(data.error || "الرمز غير صحيح أو منتهي الصلاحية");
        return;
      }
      const user: LinkedUser = {
        id: String(data.id),
        email: data.email || "",
        displayName: data.displayName || data.email?.split("@")[0] || "مستخدم",
        username: data.username,
        avatarColor: data.avatarColor ?? 0,
        profileImageUrl: data.profileImageUrl || null,
      };
      await setUserAuthToken(data.authToken);
      await AsyncStorage.setItem(AUTH_KEY, JSON.stringify(user));
      setCurrentUser(user);
      router.replace("/(tabs)" as any);
    } catch {
      setError("تعذّر الاتصال بالخادم. حاول مرة أخرى.");
    } finally {
      setLoading(false);
    }
  };

  const appendDigit = (d: string) => {
    setError("");
    setCode(prev => {
      if (prev.length >= 6) return prev;
      return prev + d;
    });
  };

  const backspaceDigit = () => {
    setError("");
    setCode(prev => prev.slice(0, -1));
  };

  if (checking) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background, paddingTop: insets.top }]}>
        <Pressable
          onPress={goBack}
          accessibilityRole="button"
          accessibilityLabel="رجوع"
          focusable={tvMode}
          style={({ focused }) => [styles.backButton, { top: insets.top + 8 }, tvMode && tvFocusStyle(focused)]}
        >
          <Ionicons name="arrow-back" size={22} color={colors.text} style={{ transform: [{ scaleX: -1 }] }} />
        </Pressable>
        <ActivityIndicator color={colors.primary} />
      </View>
    );
  }

  return (
    <KeyboardAvoidingView
      style={[styles.page, { backgroundColor: colors.background, paddingTop: insets.top }]}
      behavior={Platform.OS === "ios" ? "padding" : undefined}
    >
      <Pressable
        onPress={goBack}
        accessibilityRole="button"
        accessibilityLabel="رجوع"
        focusable={tvMode}
        style={({ focused }) => [styles.backButton, { top: insets.top + 8 }, tvMode && tvFocusStyle(focused)]}
      >
        <Ionicons name="arrow-back" size={22} color={colors.text} style={{ transform: [{ scaleX: -1 }] }} />
      </Pressable>

      <ScrollView
        contentContainerStyle={[
          styles.scrollContent,
          { paddingBottom: Math.max(insets.bottom, 24) },
        ]}
        keyboardShouldPersistTaps="handled"
        showsVerticalScrollIndicator={false}
      >
        <View style={styles.brand}>
          <View style={[styles.logo, { backgroundColor: colors.primary + "20", borderColor: colors.primary + "55" }]}>
            <Ionicons name={tvMode ? "tv-outline" : "phone-portrait-outline"} size={28} color={colors.primary} />
          </View>
          <Text style={[styles.title, { color: colors.text }]}>ربط هذا الجهاز بالحساب</Text>
          <Text style={[styles.subtitle, { color: colors.mutedForeground }]}>أدخل رمز الربط الذي أنشأته من الهاتف المسجّل</Text>
        </View>

        <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
          <Text style={[styles.step, { color: colors.primary }]}>أدخل رمز الهاتف المسجّل هنا</Text>
          <Text style={[styles.instructions, { color: colors.text }]}>
            من الهاتف المسجّل بحساب Google: الإعدادات ← الملف الشخصي ← «ربط جهاز جديد» ← «إنشاء رمز مؤقت».
          </Text>
          <TextInput
            testID="tv-link-code"
            value={code}
            onChangeText={value => { setCode(normalizeLinkCode(value)); setError(""); }}
            placeholder="000000"
            placeholderTextColor={colors.mutedForeground + "80"}
            keyboardType="number-pad"
            maxLength={6}
            editable={!tvMode}
            focusable={!tvMode}
            autoFocus={!tvMode}
            textAlign="center"
            style={[styles.codeInput, { color: colors.text, borderColor: code.length === 6 ? colors.primary : colors.border, backgroundColor: colors.input }]}
          />

          {tvMode && (
            <View style={styles.tvKeypad}>
              {TV_DIGITS.map((d, idx) => (
                <Pressable
                  key={d}
                  onPress={() => appendDigit(d)}
                  testID={tvMode && idx === 0 ? "nova-tv-preferred-focus" : undefined}
                  focusable={tvMode}
                  hasTVPreferredFocus={tvMode && idx === 0}
                  style={({ focused }) => [
                    styles.tvKeyBtn,
                    { backgroundColor: colors.surface, borderColor: colors.border },
                    tvMode && tvFocusStyle(focused),
                  ]}
                >
                  <Text style={[styles.tvKeyText, { color: colors.text }]}>{d}</Text>
                </Pressable>
              ))}
              <Pressable
                onPress={backspaceDigit}
                focusable={tvMode}
                style={({ focused }) => [
                  styles.tvKeyBtn,
                  styles.tvKeyBackBtn,
                  { backgroundColor: colors.surface, borderColor: colors.border },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="backspace-outline" size={20} color={colors.text} />
                <Text style={[styles.tvKeySubText, { color: colors.text }]}>حذف</Text>
              </Pressable>
            </View>
          )}

          {!!error && <Text style={[styles.error, { color: colors.destructive }]}>{error}</Text>}
          <Pressable
            testID="tv-link-submit"
            onPress={() => void handleClaim()}
            disabled={loading}
            focusable={tvMode}
            hasTVPreferredFocus={!tvMode}
            style={({ focused }) => [styles.submit, { backgroundColor: colors.primary, opacity: loading ? 0.6 : 1 }, tvMode && tvFocusStyle(focused)]}
          >
            {loading ? <ActivityIndicator color={colors.primaryForeground} /> : <Ionicons name="link" size={20} color={colors.primaryForeground} />}
            <Text style={[styles.submitText, { color: colors.primaryForeground }]}>ربط الجهاز بالرمز</Text>
          </Pressable>
        </View>

        <View style={styles.safeNote}>
          <Ionicons name="shield-checkmark-outline" size={16} color={colors.mutedForeground} />
          <Text style={[styles.safeText, { color: colors.mutedForeground }]}>الرمز صالح لدقائق قليلة ويُستخدم مرة واحدة. يتم إصدار جلسة آمنة خاصة بهذا الجهاز.</Text>
        </View>
      </ScrollView>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  page: { flex: 1 },
  scrollContent: { flexGrow: 1, alignItems: "center", justifyContent: "center", paddingHorizontal: 28, paddingTop: 24 },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  backButton: {
    position: "absolute",
    ...(I18nManager.isRTL ? { left: 16 } : { right: 16 }),
    zIndex: 10,
    width: 44,
    height: 44,
    borderRadius: 14,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(255,255,255,0.06)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.12)",
  },
  brand: { alignItems: "center", marginBottom: 18 },
  logo: { width: 60, height: 60, borderRadius: 20, borderWidth: 1, alignItems: "center", justifyContent: "center", marginBottom: 10 },
  title: { fontSize: 22, fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  subtitle: { fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "center", marginTop: 4 },
  card: { width: "100%", maxWidth: 520, borderRadius: 22, borderWidth: 1, padding: 20 },
  step: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  instructions: { fontSize: 13.5, fontFamily: "Cairo_600SemiBold", lineHeight: 22, textAlign: "right", marginTop: 6 },
  codeInput: { height: 64, borderWidth: 1.5, borderRadius: 16, fontSize: 30, letterSpacing: 10, fontFamily: "Cairo_800ExtraBold", marginTop: 14, paddingHorizontal: 14 },
  tvKeypad: {
    flexDirection: "row",
    flexWrap: "wrap",
    justifyContent: "center",
    gap: 8,
    marginTop: 14,
  },
  tvKeyBtn: {
    width: 68,
    height: 46,
    borderRadius: 12,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  tvKeyBackBtn: {
    width: 106,
    flexDirection: "row",
    gap: 6,
  },
  tvKeyText: {
    fontSize: 19,
    fontFamily: "Cairo_800ExtraBold",
  },
  tvKeySubText: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  error: { fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "center", marginTop: 10 },
  submit: { height: 52, borderRadius: 15, alignItems: "center", justifyContent: "center", flexDirection: "row", gap: 10, marginTop: 16 },
  submitText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold" },
  safeNote: { maxWidth: 460, flexDirection: "row", alignItems: "center", gap: 8, marginTop: 16 },
  safeText: { flex: 1, fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 19 },
});