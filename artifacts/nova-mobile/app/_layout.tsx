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
import * as SplashScreen from "expo-splash-screen";
import React, { useEffect, useState } from "react";
import { I18nManager, Platform } from "react-native";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { SafeAreaProvider } from "react-native-safe-area-context";
import * as Sentry from "@sentry/react-native";
import { ErrorBoundary } from "@/components/ErrorBoundary";
import { AppProvider } from "@/context/AppContext";
import { loadRuntimeApiUrl } from "@/utils/baseUrl";
import { installGlobalCrashHandlers } from "@/utils/crashLogger";

/* Sentry: يلتقط أعطال JS *و* الأعطال الأصلية (native) — مثل كراش مشغّل الفيديو
   الذي كان يُغلق التطبيق فوراً دون أن يترك أي أثر في نظام تسجيل الأعطال القديم
   (كان يمسك JS فقط). يجب استدعاء init() قبل أي كود آخر قدر الإمكان. */
const SENTRY_DSN = process.env.EXPO_PUBLIC_SENTRY_DSN;
if (SENTRY_DSN) {
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
loadRuntimeApiUrl().catch(() => {});

// تثبيت معالجات الأعطال العالمية — فوراً عند بدء التشغيل
installGlobalCrashHandlers();

// استعادة التنزيلات التي انقطعت بسبب إغلاق التطبيق — تُعرض بحالة خطأ للمستخدم
import("@/utils/downloadManager").then(m => m.restoreInterruptedDownloads()).catch(() => {});

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
  useEffect(() => {
    const t = setTimeout(() => {
      setForceShow(true);
      SplashScreen.hideAsync().catch(() => {});
    }, 3500);
    return () => clearTimeout(t);
  }, []);

  useEffect(() => {
    if (fontsLoaded || fontError) {
      SplashScreen.hideAsync().catch(() => {});
    }
  }, [fontsLoaded, fontError]);

  if (!fontsLoaded && !fontError && !forceShow) return null;

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

/* Sentry.wrap: يضيف مراقبة تلقائية للتنقّل بين الشاشات وأداء الإقلاع،
   ولا يعمل شيء إضافياً إذا لم يُستدعَ Sentry.init() أعلاه (بلا DSN). */
export default Sentry.wrap(RootLayout);
