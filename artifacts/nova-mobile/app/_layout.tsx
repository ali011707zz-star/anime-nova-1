import {
  Cairo_400Regular,
  Cairo_600SemiBold,
  Cairo_700Bold,
  Cairo_800ExtraBold,
  useFonts,
} from "@expo-google-fonts/cairo";
import { Ionicons } from "@expo/vector-icons";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Stack } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import * as SplashScreen from "expo-splash-screen";
import React, { useEffect, useState } from "react";
import { Animated, I18nManager, Image, Platform, StyleSheet, Text, View } from "react-native";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { SafeAreaProvider } from "react-native-safe-area-context";
import * as Sentry from "@sentry/react-native";
import { ErrorBoundary } from "@/components/ErrorBoundary";
import { AppProvider } from "@/context/AppContext";
import { loadRuntimeApiUrl } from "@/utils/baseUrl";
import { installGlobalCrashHandlers } from "@/utils/crashLogger";
import { getRuntimeIntegrity, runtimeIntegrityMessage } from "@/utils/runtimeIntegrity";

/* Sentry: يلتقط أعطال JS *و* الأعطال الأصلية (native) — مثل كراش مشغّل الفيديو
   الذي كان يُغلق التطبيق فوراً دون أن يترك أي أثر في نظام تسجيل الأعطال القديم
   (كان يمسك JS فقط). يجب استدعاء init() قبل أي كود آخر قدر الإمكان. */
const SENTRY_DSN = process.env.EXPO_PUBLIC_SENTRY_DSN;
const RUNTIME_INTEGRITY = getRuntimeIntegrity();
if (SENTRY_DSN && RUNTIME_INTEGRITY.trusted) {
  Sentry.init({
    dsn: SENTRY_DSN,
    enableNative: true,
    enableNativeCrashHandling: true,
    attachStacktrace: true,
    tracesSampleRate: 0.1,
    debug: false,
  });
}

// تحميل عنوان API المخصص من AsyncStorage قبل أي طلب شبكي
if (RUNTIME_INTEGRITY.trusted) {
  loadRuntimeApiUrl().catch(() => {});
}

// تثبيت معالجات الأعطال العالمية — فوراً عند بدء التشغيل
if (RUNTIME_INTEGRITY.trusted) {
  installGlobalCrashHandlers();
}

// استعادة التنزيلات التي انقطعت بسبب إغلاق التطبيق — تُعرض بحالة خطأ للمستخدم
if (RUNTIME_INTEGRITY.trusted) {
  import("@/utils/downloadManager").then(m => m.restoreInterruptedDownloads()).catch(() => {});
}

SplashScreen.preventAutoHideAsync().catch(() => {});

// RTL: نُفعّل مرة واحدة فقط عند أول تشغيل
try {
  I18nManager.allowRTL(true);
  if (!I18nManager.isRTL) {
    I18nManager.forceRTL(true);
  }
} catch (_) {}

const queryClient = new QueryClient({
  defaultOptions: {
    queries: { staleTime: 1000 * 60 * 5, retry: 2 },
  },
});

function RootLayoutNav() {
  return (
    <Stack
      screenOptions={{
        headerShown: false,
        contentStyle: { backgroundColor: "#09090B" },
        animation: Platform.OS === "android" ? "fade_from_bottom" : "fade",
        animationDuration: Platform.OS === "android" ? 120 : 180,
      }}
    >
      <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
      <Stack.Screen name="anime/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
      <Stack.Screen name="watch" options={{ headerShown: false, orientation: "all" }} />
      <Stack.Screen name="animation/[type]/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
      <Stack.Screen name="animation/watch" options={{ headerShown: false, orientation: "all" }} />
      <Stack.Screen name="settings" options={{ headerShown: false }} />
      <Stack.Screen name="schedule" options={{ headerShown: false }} />
      <Stack.Screen name="profile" options={{ headerShown: false, animation: "slide_from_right" }} />
      <Stack.Screen name="aw-dubbed/[key]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
      <Stack.Screen name="aw-dubbed/watch"  options={{ headerShown: false, orientation: "all" }} />
      {/* The cartoon tab intentionally opens the legacy Arabic-Toons
          screens, not the anime-dubbed Supabase screens. Register them in
          the root stack so native builds resolve the detail and watch routes
          reliably. */}
      <Stack.Screen name="dubbed" options={{ headerShown: false }} />
      <Stack.Screen name="dubbed/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
      <Stack.Screen name="dubbed/watch" options={{ headerShown: false, orientation: "all" }} />
      <Stack.Screen name="+not-found" />
    </Stack>
  );
}

function RootLayout() {
  const [fontsLoaded, fontError] = useFonts({
    Cairo_400Regular,
    Cairo_600SemiBold,
    Cairo_700Bold,
    Cairo_800ExtraBold,
    ...Ionicons.font,
  });

  // إجبار إخفاء الـ splash بعد 3.5 ثانية حتى لو فشل تحميل الخطوط
  const [forceShow, setForceShow] = useState(false);
  const [brandSplashVisible, setBrandSplashVisible] = useState(true);
  useEffect(() => {
    const t = setTimeout(() => {
      setForceShow(true);
      setBrandSplashVisible(false);
      SplashScreen.hideAsync().catch(() => {});
    }, 3500);
    return () => clearTimeout(t);
  }, []);

  useEffect(() => {
    if (fontsLoaded || fontError) {
      const t = setTimeout(() => {
        setBrandSplashVisible(false);
        SplashScreen.hideAsync().catch(() => {});
      }, 900);
      return () => clearTimeout(t);
    }
  }, [fontsLoaded, fontError]);

  useEffect(() => {
    if (!RUNTIME_INTEGRITY.trusted) return;
    let stop: (() => void) | undefined;
    import("@/utils/episodeNotifications")
      .then(({ startEpisodeNotificationSync }) => {
        stop = startEpisodeNotificationSync();
      })
      .catch(() => {});
    return () => stop?.();
  }, []);

  if (!fontsLoaded && !fontError && !forceShow) return null;

  if (brandSplashVisible) {
    return <BrandSplash />;
  }

  if (!RUNTIME_INTEGRITY.trusted) {
    return (
      <View style={styles.blockedScreen}>
        <Text style={styles.blockedTitle}>تم إيقاف التشغيل</Text>
        <Text style={styles.blockedMessage}>
          {runtimeIntegrityMessage(RUNTIME_INTEGRITY.reason)}
        </Text>
      </View>
    );
  }

  return (
    <SafeAreaProvider>
      <ErrorBoundary>
        <QueryClientProvider client={queryClient}>
          <AppProvider>
            <GestureHandlerRootView style={{ flex: 1 }}>
              <RootLayoutNav />
            </GestureHandlerRootView>
          </AppProvider>
        </QueryClientProvider>
      </ErrorBoundary>
    </SafeAreaProvider>
  );
}

function BrandSplash() {
  return (
    <LinearGradient
      colors={["#05030D", "#11051F", "#09090B"]}
      start={{ x: 0.15, y: 0 }}
      end={{ x: 0.9, y: 1 }}
      style={styles.brandSplash}
    >
      <View style={styles.brandGlow} />
      <Animated.View style={styles.brandContent}>
        <Image
          source={require("../assets/images/icon.png")}
          style={styles.brandLogo}
          resizeMode="contain"
          accessibilityLabel="شعار Anime NOVA"
        />
        <Text style={styles.brandName}>ANIME NOVA</Text>
        <Text style={styles.brandTagline}>منصة الأنمي العربية</Text>
        <View style={styles.brandLoader}>
          <View style={styles.brandLoaderFill} />
        </View>
      </Animated.View>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  brandSplash: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "#09090B",
  },
  brandContent: {
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 28,
  },
  brandLogo: {
    width: 238,
    height: 238,
    borderRadius: 44,
    marginBottom: 22,
  },
  brandName: {
    color: "#FFFFFF",
    fontSize: 27,
    letterSpacing: 4,
    fontWeight: "800",
    textAlign: "center",
  },
  brandTagline: {
    color: "#D8B4FE",
    fontSize: 13,
    fontFamily: "Cairo_600SemiBold",
    marginTop: 7,
    textAlign: "center",
  },
  brandGlow: {
    position: "absolute",
    width: 330,
    height: 330,
    borderRadius: 165,
    backgroundColor: "rgba(168, 85, 247, 0.13)",
    shadowColor: "#C026D3",
    shadowOpacity: 0.9,
    shadowRadius: 80,
  },
  brandLoader: {
    width: 118,
    height: 3,
    borderRadius: 2,
    backgroundColor: "rgba(255,255,255,0.12)",
    overflow: "hidden",
    marginTop: 28,
  },
  brandLoaderFill: {
    width: "62%",
    height: "100%",
    borderRadius: 2,
    backgroundColor: "#D946EF",
  },
  blockedScreen: {
    flex: 1,
    backgroundColor: "#09090B",
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 28,
  },
  blockedTitle: {
    color: "#F4F4F5",
    fontSize: 22,
    fontWeight: "800",
    marginBottom: 12,
  },
  blockedMessage: {
    color: "#A1A1AA",
    fontSize: 15,
    lineHeight: 24,
    textAlign: "center",
  },
});

/* Sentry.wrap: يضيف مراقبة تلقائية للتنقّل بين الشاشات وأداء الإقلاع،
   ولا يعمل شيء إضافياً إذا لم يُستدعَ Sentry.init() أعلاه (بلا DSN). */
export default Sentry.wrap(RootLayout);
