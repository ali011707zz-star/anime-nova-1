import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React, { useEffect, useState } from "react";
import {
  ActivityIndicator,
  KeyboardAvoidingView,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from "react-native";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { getBaseUrl } from "@/utils/baseUrl";
import { secureFetch, setUserAuthToken } from "@/utils/secureApi";
import { isTvDevice } from "@/utils/tv";

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

async function getDeviceId(): Promise<string> {
  const stored = await AsyncStorage.getItem(DEVICE_ID_KEY) || await AsyncStorage.getItem(LEGACY_DEVICE_ID_KEY);
  if (stored && /^[A-Za-z0-9._:-]{6,160}$/.test(stored)) return stored;
  const next = makeDeviceId();
  await AsyncStorage.setItem(DEVICE_ID_KEY, next);
  return next;
}

export default function TvLinkScreen() {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const router = useRouter();
  const { setCurrentUser } = useApp();
  const tvMode = isTvDevice();
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

  const handleClaim = async () => {
    const normalized = code.replace(/\D/g, "").slice(0, 6);
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

  if (checking) {
    return (
      <View style={[styles.center, { backgroundColor: colors.background, paddingTop: insets.top }]}>
        <ActivityIndicator color={colors.primary} />
      </View>
    );
  }

  return (
    <KeyboardAvoidingView
      style={[styles.page, { backgroundColor: colors.background, paddingTop: insets.top, paddingBottom: Math.max(insets.bottom, 24) }]}
      behavior={Platform.OS === "ios" ? "padding" : undefined}
    >
      <View style={styles.brand}>
        <View style={[styles.logo, { backgroundColor: colors.primary + "20", borderColor: colors.primary + "55" }]}>
          <Ionicons name={tvMode ? "tv-outline" : "phone-portrait-outline"} size={30} color={colors.primary} />
        </View>
        <Text style={[styles.title, { color: colors.text }]}>ربط هذا الجهاز بالحساب</Text>
        <Text style={[styles.subtitle, { color: colors.mutedForeground }]}>أدخل رمز الربط الذي أنشأته من الهاتف المسجّل</Text>
      </View>

      <View style={[styles.card, { backgroundColor: colors.card, borderColor: colors.border }]}>
        <Text style={[styles.step, { color: colors.primary }]}>أدخل رمز الهاتف المسجّل هنا</Text>
        <Text style={[styles.instructions, { color: colors.text }]}>
          من الهاتف المسجّل: الملف الشخصي ← «ربط جهاز جديد» ← «إنشاء رمز ربط». اكتب الأرقام الستة الظاهرة هنا على {tvMode ? "التلفاز" : "هذا الهاتف"}.
        </Text>
        <TextInput
          testID="tv-link-code"
          value={code}
          onChangeText={value => { setCode(value.replace(/\D/g, "").slice(0, 6)); setError(""); }}
          placeholder="000000"
          placeholderTextColor={colors.mutedForeground + "80"}
          keyboardType="number-pad"
          maxLength={6}
          autoFocus
          textAlign="center"
          style={[styles.codeInput, { color: colors.text, borderColor: code.length === 6 ? colors.primary : colors.border, backgroundColor: colors.input }]}
        />
        {!!error && <Text style={[styles.error, { color: colors.destructive }]}>{error}</Text>}
        <Pressable
          testID="tv-link-submit"
          onPress={handleClaim}
          disabled={loading}
          style={[styles.submit, { backgroundColor: colors.primary, opacity: loading ? 0.6 : 1 }]}
        >
          {loading ? <ActivityIndicator color={colors.primaryForeground} /> : <Ionicons name="link" size={20} color={colors.primaryForeground} />}
          <Text style={[styles.submitText, { color: colors.primaryForeground }]}>ربط الجهاز بالرمز</Text>
        </Pressable>
      </View>

      <View style={styles.safeNote}>
        <Ionicons name="shield-checkmark-outline" size={16} color={colors.mutedForeground} />
        <Text style={[styles.safeText, { color: colors.mutedForeground }]}>الرمز صالح لدقائق قليلة ويُستخدم مرة واحدة. يتم إصدار جلسة آمنة خاصة بهذا الجهاز.</Text>
      </View>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  page: { flex: 1, alignItems: "center", justifyContent: "center", paddingHorizontal: 36 },
  center: { flex: 1, alignItems: "center", justifyContent: "center" },
  brand: { alignItems: "center", marginBottom: 28 },
  logo: { width: 72, height: 72, borderRadius: 24, borderWidth: 1, alignItems: "center", justifyContent: "center", marginBottom: 16 },
  title: { fontSize: 25, fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  subtitle: { fontSize: 14, fontFamily: "Cairo_400Regular", textAlign: "center", marginTop: 6 },
  card: { width: "100%", maxWidth: 520, borderRadius: 24, borderWidth: 1, padding: 24 },
  step: { fontSize: 13, fontFamily: "Cairo_800ExtraBold", textAlign: "right" },
  instructions: { fontSize: 15, fontFamily: "Cairo_600SemiBold", lineHeight: 27, textAlign: "right", marginTop: 8 },
  codeInput: { height: 72, borderWidth: 1.5, borderRadius: 18, fontSize: 34, letterSpacing: 12, fontFamily: "Cairo_800ExtraBold", marginTop: 22, paddingHorizontal: 14 },
  error: { fontSize: 12, fontFamily: "Cairo_600SemiBold", textAlign: "center", marginTop: 10 },
  submit: { height: 58, borderRadius: 17, alignItems: "center", justifyContent: "center", flexDirection: "row", gap: 10, marginTop: 18 },
  submitText: { fontSize: 15, fontFamily: "Cairo_800ExtraBold" },
  safeNote: { maxWidth: 460, flexDirection: "row", alignItems: "center", gap: 8, marginTop: 22 },
  safeText: { flex: 1, fontSize: 11, fontFamily: "Cairo_400Regular", textAlign: "center", lineHeight: 19 },
});