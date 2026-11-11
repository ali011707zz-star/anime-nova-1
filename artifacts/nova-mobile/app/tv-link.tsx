import AsyncStorage from "@react-native-async-storage/async-storage";
import { Ionicons } from "@expo/vector-icons";
import { useRouter } from "expo-router";
import React, { useCallback, useEffect, useRef, useState } from "react";
import {
  ActivityIndicator,
  Image,
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

type TvGoogleSession = {
  code: string;
  sessionSecret: string;
  activateUrl: string;
  shortUrl: string;
  expiresAt: string;
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

  const [mode, setMode] = useState<"qr" | "manual">(tvMode ? "qr" : "manual");
  const [code, setCode] = useState("");
  const [deviceId, setDeviceId] = useState<string | null>(null);
  const [checking, setChecking] = useState(true);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");

  // TV Google Sign-In Session state (QR + 6-digit code + live polling)
  const [tvSession, setTvSession] = useState<TvGoogleSession | null>(null);
  const [sessionLoading, setSessionLoading] = useState(false);
  const [sessionError, setSessionError] = useState("");
  const [qrFallbackIndex, setQrFallbackIndex] = useState(0);
  const pollTimerRef = useRef<ReturnType<typeof setInterval> | null>(null);

  const completeLogin = useCallback(async (data: any) => {
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
  }, [router, setCurrentUser]);

  const startTvGoogleSession = useCallback(async () => {
    setSessionLoading(true);
    setSessionError("");
    setQrFallbackIndex(0);
    try {
      const id = deviceId || await getDeviceId();
      setDeviceId(id);
      const response = await secureFetch(`${getBaseUrl()}/api/device-link/tv-session/start`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          deviceId: id,
          deviceName: "جهاز Android TV",
          platform: "android-tv",
        }),
      });
      const data = await response.json().catch(() => ({}));
      if (!response.ok || !data.code || !data.sessionSecret) {
        setSessionError(data.error || "تعذّر إنشاء رمز تسجيل الدخول للتلفاز");
        return;
      }
      setTvSession({
        code: String(data.code),
        sessionSecret: String(data.sessionSecret),
        activateUrl: String(data.activateUrl || `https://animenovaa.duckdns.org/tv?code=${data.code}`),
        shortUrl: String(data.shortUrl || "animenovaa.duckdns.org/tv"),
        expiresAt: String(data.expiresAt || ""),
      });
    } catch {
      setSessionError("تعذّر الاتصال بالخادم لبدء جلسة Google. تحقق من الإنترنت.");
    } finally {
      setSessionLoading(false);
    }
  }, [deviceId]);

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

  useEffect(() => {
    if (checking) return;
    if (tvMode && mode === "qr" && !tvSession && !sessionLoading && !sessionError) {
      void startTvGoogleSession();
    }
  }, [checking, tvMode, mode, tvSession, sessionLoading, sessionError, startTvGoogleSession]);

  // Poll every 2.5 seconds while TV Google session is active
  useEffect(() => {
    if (pollTimerRef.current) {
      clearInterval(pollTimerRef.current);
      pollTimerRef.current = null;
    }
    if (checking || mode !== "qr" || !tvSession) return;

    let cancelled = false;
    pollTimerRef.current = setInterval(async () => {
      if (cancelled) return;
      try {
        const id = deviceId || await getDeviceId();
        const res = await secureFetch(`${getBaseUrl()}/api/device-link/tv-session/poll`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            code: tvSession.code,
            sessionSecret: tvSession.sessionSecret,
            deviceId: id,
          }),
        });
        const data = await res.json().catch(() => ({}));
        if (cancelled) return;
        if (res.status === 410 || data.status === "expired") {
          setTvSession(null);
          setSessionError("انتهت صلاحية الرمز. اضغط على «تحديث الرمز» لإنشاء رمز جديد.");
          return;
        }
        if (res.ok && data.status === "approved" && data.authToken) {
          if (pollTimerRef.current) clearInterval(pollTimerRef.current);
          await completeLogin(data);
        }
      } catch {
        // Ignore transient network hiccups during polling
      }
    }, 2500);

    return () => {
      cancelled = true;
      if (pollTimerRef.current) {
        clearInterval(pollTimerRef.current);
        pollTimerRef.current = null;
      }
    };
  }, [checking, mode, tvSession, deviceId, completeLogin]);

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
      await completeLogin(data);
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

  const qrDataUrl = tvSession?.activateUrl || "https://animenovaa.duckdns.org/tv";
  const qrUrls = [
    `https://api.qrserver.com/v1/create-qr-code/?size=280x280&margin=10&color=09090B&bgcolor=FFFFFF&data=${encodeURIComponent(qrDataUrl)}`,
    `https://quickchart.io/qr?size=280&margin=2&text=${encodeURIComponent(qrDataUrl)}`,
  ];
  const currentQrUri = qrUrls[Math.min(qrFallbackIndex, qrUrls.length - 1)];
  const formattedSessionCode = tvSession?.code
    ? `${tvSession.code.slice(0, 3)} ${tvSession.code.slice(3)}`
    : "--- ---";

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
            <Ionicons name={mode === "qr" ? "logo-google" : tvMode ? "tv-outline" : "phone-portrait-outline"} size={28} color={colors.primary} />
          </View>
          <Text style={[styles.title, { color: colors.text }]}>
            {mode === "qr" ? "تسجيل الدخول عبر Google للتلفاز" : "ربط هذا الجهاز بالحساب"}
          </Text>
          <Text style={[styles.subtitle, { color: colors.mutedForeground }]}>
            {mode === "qr"
              ? "امسح رمز QR بكاميرا هاتفك أو افتح الرابط لاختيار حسابك في Google فوراً"
              : "أدخل رمز الربط الذي أنشأته من الهاتف المسجّل"}
          </Text>
        </View>

        {mode === "qr" ? (
          <View style={[styles.card, styles.tvQrCard, { backgroundColor: colors.card, borderColor: colors.border }]}>
            <View style={styles.tvSplitRow}>
              {/* QR Code Column */}
              <View style={styles.qrColumn}>
                <View style={styles.qrFrame}>
                  {sessionLoading ? (
                    <ActivityIndicator size="large" color="#09090B" />
                  ) : tvSession ? (
                    <Image
                      source={{ uri: currentQrUri }}
                      style={styles.qrImage}
                      resizeMode="contain"
                      onError={() => {
                        if (qrFallbackIndex < qrUrls.length - 1) {
                          setQrFallbackIndex(i => i + 1);
                        }
                      }}
                    />
                  ) : (
                    <Ionicons name="qr-code-outline" size={88} color="#09090B" />
                  )}
                </View>
                <Text style={[styles.qrCaption, { color: colors.mutedForeground }]}>
                  امسح الكود بكاميرا الجوال
                </Text>
              </View>

              {/* Steps & Code Column */}
              <View style={styles.stepsColumn}>
                <View style={styles.stepRow}>
                  <View style={[styles.stepBadge, { backgroundColor: colors.primary + "22", borderColor: colors.primary + "55" }]}>
                    <Text style={[styles.stepBadgeNum, { color: colors.primary }]}>1</Text>
                  </View>
                  <View style={styles.stepCopy}>
                    <Text style={[styles.stepLabel, { color: colors.text }]}>افتح كاميرا هاتفك أو المتصفح على الرابط:</Text>
                    <Text selectable style={[styles.urlHighlight, { color: "#38BDF8" }]}>
                      {tvSession?.shortUrl || "animenovaa.duckdns.org/tv"}
                    </Text>
                  </View>
                </View>

                <View style={styles.stepRow}>
                  <View style={[styles.stepBadge, { backgroundColor: colors.primary + "22", borderColor: colors.primary + "55" }]}>
                    <Text style={[styles.stepBadgeNum, { color: colors.primary }]}>2</Text>
                  </View>
                  <View style={styles.stepCopy}>
                    <Text style={[styles.stepLabel, { color: colors.text }]}>تأكد من الرمز التالي ثم اختر حسابك في Google:</Text>
                    <View style={[styles.codeBanner, { backgroundColor: colors.input, borderColor: colors.primary + "66" }]}>
                      <Text selectable style={[styles.codeBannerText, { color: colors.text }]}>
                        {formattedSessionCode}
                      </Text>
                    </View>
                  </View>
                </View>

                <View style={[styles.pollingBadge, { backgroundColor: "rgba(56, 189, 248, 0.10)", borderColor: "rgba(56, 189, 248, 0.28)" }]}>
                  <ActivityIndicator size="small" color="#38BDF8" />
                  <Text style={styles.pollingText}>
                    بانتظار اختيار حساب Google من هاتفك... سيتم الدخول تلقائياً
                  </Text>
                </View>

                {!!sessionError && (
                  <Text style={[styles.error, { color: colors.destructive }]}>{sessionError}</Text>
                )}

                <View style={styles.tvActionsRow}>
                  <Pressable
                    testID={tvMode ? "nova-tv-preferred-focus" : "tv-refresh-google-code"}
                    hasTVPreferredFocus={tvMode}
                    focusable={tvMode}
                    disabled={sessionLoading}
                    onPress={() => void startTvGoogleSession()}
                    style={({ focused }) => [
                      styles.secondaryBtn,
                      { backgroundColor: colors.surface, borderColor: colors.border },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Ionicons name="refresh" size={17} color={colors.text} />
                    <Text style={[styles.secondaryBtnText, { color: colors.text }]}>تحديث الرمز</Text>
                  </Pressable>

                  <Pressable
                    focusable={tvMode}
                    onPress={() => {
                      setError("");
                      setMode("manual");
                    }}
                    style={({ focused }) => [
                      styles.secondaryBtn,
                      { backgroundColor: colors.surface, borderColor: colors.border },
                      tvMode && tvFocusStyle(focused),
                    ]}
                  >
                    <Ionicons name="keypad-outline" size={17} color={colors.text} />
                    <Text style={[styles.secondaryBtnText, { color: colors.text }]}>إدخال رمز من تطبيق الهاتف</Text>
                  </Pressable>
                </View>
              </View>
            </View>
          </View>
        ) : (
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
              autoFocus={!tvMode}
              editable={!tvMode}
              focusable={!tvMode}
              showSoftInputOnFocus={!tvMode}
              textAlign="center"
              style={[styles.codeInput, { color: colors.text, borderColor: code.length === 6 ? colors.primary : colors.border, backgroundColor: colors.input }]}
            />

            {tvMode && (
              <View style={styles.tvKeypad}>
                {TV_DIGITS.map((d, idx) => (
                  <Pressable
                    key={d}
                    onPress={() => appendDigit(d)}
                    focusable={tvMode}
                    hasTVPreferredFocus={tvMode && idx === 0}
                    testID={tvMode && idx === 0 ? "nova-tv-preferred-focus" : undefined}
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
              style={({ focused }) => [
                styles.submit,
                { backgroundColor: colors.primary, opacity: loading ? 0.6 : 1 },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              {loading ? <ActivityIndicator color={colors.primaryForeground} /> : <Ionicons name="link" size={20} color={colors.primaryForeground} />}
              <Text style={[styles.submitText, { color: colors.primaryForeground }]}>ربط الجهاز بالرمز</Text>
            </Pressable>

            {tvMode && (
              <Pressable
                focusable={tvMode}
                onPress={() => {
                  setError("");
                  setMode("qr");
                }}
                style={({ focused }) => [
                  styles.switchModeBtn,
                  { borderColor: colors.border },
                  tvMode && tvFocusStyle(focused),
                ]}
              >
                <Ionicons name="qr-code-outline" size={16} color="#38BDF8" />
                <Text style={[styles.switchModeText, { color: "#38BDF8" }]}>
                  العودة إلى تسجيل الدخول عبر Google بالـ QR Code
                </Text>
              </Pressable>
            )}
          </View>
        )}

        <View style={styles.safeNote}>
          <Ionicons name="shield-checkmark-outline" size={16} color={colors.mutedForeground} />
          <Text style={[styles.safeText, { color: colors.mutedForeground }]}>
            الرمز صالح لمدة 10 دقائق ويُستخدم مرة واحدة. يتم إصدار جلسة آمنة خاصة بهذا الجهاز.
          </Text>
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
  brand: { alignItems: "center", marginBottom: 16 },
  logo: { width: 56, height: 56, borderRadius: 18, borderWidth: 1, alignItems: "center", justifyContent: "center", marginBottom: 8 },
  title: { fontSize: 22, fontFamily: "Cairo_800ExtraBold", textAlign: "center" },
  subtitle: { fontSize: 13, fontFamily: "Cairo_400Regular", textAlign: "center", marginTop: 4 },
  card: { width: "100%", maxWidth: 520, borderRadius: 22, borderWidth: 1, padding: 20 },
  tvQrCard: { maxWidth: 780, padding: 24 },
  tvSplitRow: {
    flexDirection: I18nManager.isRTL ? "row-reverse" : "row",
    alignItems: "center",
    justifyContent: "space-between",
    gap: 28,
    flexWrap: "wrap",
  },
  qrColumn: {
    alignItems: "center",
    justifyContent: "center",
    minWidth: 210,
  },
  qrFrame: {
    width: 204,
    height: 204,
    borderRadius: 20,
    backgroundColor: "#FFFFFF",
    padding: 10,
    alignItems: "center",
    justifyContent: "center",
    shadowColor: "#000",
    shadowOpacity: 0.35,
    shadowRadius: 16,
    shadowOffset: { width: 0, height: 8 },
    elevation: 8,
  },
  qrImage: {
    width: 184,
    height: 184,
  },
  qrCaption: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    marginTop: 10,
    textAlign: "center",
  },
  stepsColumn: {
    flex: 1,
    minWidth: 280,
    gap: 14,
  },
  stepRow: {
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "flex-start",
    gap: 12,
  },
  stepBadge: {
    width: 28,
    height: 28,
    borderRadius: 10,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
    marginTop: 2,
  },
  stepBadgeNum: {
    fontSize: 13,
    fontFamily: "Cairo_800ExtraBold",
  },
  stepCopy: {
    flex: 1,
    alignItems: "flex-end",
  },
  stepLabel: {
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  urlHighlight: {
    fontSize: 16,
    fontFamily: "Cairo_800ExtraBold",
    marginTop: 2,
  },
  codeBanner: {
    marginTop: 6,
    paddingHorizontal: 18,
    paddingVertical: 8,
    borderRadius: 14,
    borderWidth: 1.5,
    alignSelf: "flex-end",
  },
  codeBannerText: {
    fontSize: 28,
    letterSpacing: 6,
    fontFamily: "Cairo_800ExtraBold",
  },
  pollingBadge: {
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 10,
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderRadius: 14,
    borderWidth: 1,
  },
  pollingText: {
    color: "#38BDF8",
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  tvActionsRow: {
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    gap: 10,
    marginTop: 4,
    flexWrap: "wrap",
  },
  secondaryBtn: {
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingHorizontal: 16,
    height: 44,
    borderRadius: 13,
    borderWidth: 1,
  },
  secondaryBtnText: {
    fontSize: 12.5,
    fontFamily: "Cairo_700Bold",
  },
  switchModeBtn: {
    marginTop: 12,
    height: 42,
    borderRadius: 12,
    borderWidth: 1,
    flexDirection: I18nManager.isRTL ? "row" : "row-reverse",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
  },
  switchModeText: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
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