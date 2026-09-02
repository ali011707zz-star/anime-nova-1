import {
  Cairo_400Regular,
  Cairo_600SemiBold,
  Cairo_700Bold,
  Cairo_800ExtraBold,
  useFonts,
} from "@expo-google-fonts/cairo";
import { Ionicons } from "@expo/vector-icons";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Stack, usePathname, useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import * as SplashScreen from "expo-splash-screen";
import React, { useEffect, useRef, useState } from "react";
import { Animated, BackHandler, Dimensions, I18nManager, Image, Platform, StyleSheet, Text, View } from "react-native";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { SafeAreaProvider } from "react-native-safe-area-context";
import * as ScreenOrientation from "expo-screen-orientation";
import * as Sentry from "@sentry/react-native";
import { initializeRewardedAds } from "@/utils/rewardedAd";
import { ErrorBoundary } from "@/components/ErrorBoundary";
import { TelegramAnnouncementModal } from "@/components/TelegramAnnouncementModal";
import { AppProvider } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { loadRuntimeApiUrl } from "@/utils/baseUrl";
import { installGlobalCrashHandlers } from "@/utils/crashLogger";
import { getRuntimeIntegrity, runtimeIntegrityMessage } from "@/utils/runtimeIntegrity";
import { isTvDevice } from "@/utils/tv";

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
  const colors = useColors();
  const router = useRouter();
  const pathname = usePathname();
  const [tvExitHintVisible, setTvExitHintVisible] = useState(false);
  const tvExitHintTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTvBackAt = useRef(0);
  const tvMode = isTvDevice(Dimensions.get("window").width, Dimensions.get("window").height);

  useEffect(() => {
    if (Platform.OS !== "android" || !tvMode) return;

    const isAppRoot = pathname === "/" || pathname === "/(tabs)" || pathname === "/(tabs)/index";
    const subscription = BackHandler.addEventListener("hardwareBackPress", () => {
      const now = Date.now();

      if (!isAppRoot) {
        lastTvBackAt.current = 0;
        setTvExitHintVisible(false);
        if (router.canGoBack()) {
          router.back();
        } else {
          // Some entry points use replace(), leaving no native stack entry.
          // Return to the tab root instead of allowing Android to close NOVA.
          router.replace("/(tabs)" as any);
        }
        return true;
      }

      if (now - lastTvBackAt.current < 2200) {
        if (tvExitHintTimer.current) clearTimeout(tvExitHintTimer.current);
        tvExitHintTimer.current = null;
        BackHandler.exitApp();
        return true;
      }

      lastTvBackAt.current = now;
      setTvExitHintVisible(true);
      if (tvExitHintTimer.current) clearTimeout(tvExitHintTimer.current);
      tvExitHintTimer.current = setTimeout(() => {
        tvExitHintTimer.current = null;
        setTvExitHintVisible(false);
      }, 2200);
      return true;
    });

    return () => {
      subscription.remove();
      if (tvExitHintTimer.current) clearTimeout(tvExitHintTimer.current);
      tvExitHintTimer.current = null;
      lastTvBackAt.current = 0;
    };
  }, [pathname, router, tvMode]);

  return (
    <>
      <Stack
        screenOptions={{
          headerShown: false,
          contentStyle: { backgroundColor: colors.background },
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
        <Stack.Screen name="tv-link" options={{ headerShown: false }} />
        <Stack.Screen name="oauth2redirect/google" options={{ headerShown: false }} />
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
      {tvMode && tvExitHintVisible && (
        <View pointerEvents="none" style={styles.tvExitHint}>
          <Ionicons name="information-circle-outline" size={24} color="#D8B4FE" />
          <Text style={styles.tvExitHintText}>اضغط مرة أخرى للخروج</Text>
        </View>
      )}
    </>
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
  const [brandSplashVisible, setBrandSplashVisible] = useState(true);
  const [telegramAnnouncementVisible, setTelegramAnnouncementVisible] = useState(false);
  const tvMode = isTvDevice(Dimensions.get("window").width, Dimensions.get("window").height);

  // TV uses the same app bundle as phones. Only the detected TV runtime is
  // locked to landscape; phone orientation behavior remains unchanged.
  useEffect(() => {
    if (!tvMode) return;
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE).catch(() => {});
  }, [tvMode]);

  // أظهر شاشة Anime NOVA المخصصة فوراً بدلاً من إبقاء native splash (الأيقونة فقط)
  // فوقها أثناء انتظار الخطوط.
  useEffect(() => {
    SplashScreen.hideAsync().catch(() => {});
  }, []);

  useEffect(() => {
    const t = setTimeout(() => {
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
    if (!brandSplashVisible && RUNTIME_INTEGRITY.trusted) {
      // Let the first screen settle before presenting the announcement. The
      // native Modal already fades, but opening it on the same frame as the
      // splash disappears feels like a layout jump on slower devices.
      const t = setTimeout(() => setTelegramAnnouncementVisible(true), 450);
      return () => clearTimeout(t);
    }
  }, [brandSplashVisible, tvMode]);

  useEffect(() => {
    if (!RUNTIME_INTEGRITY.trusted) return;
    // Warm the native Start.io SDK while the first screen is settling. The
    // native wrapper needs a short initialization window before loadAd().
    if (!tvMode) {
      initializeRewardedAds().catch((error) => {
        console.warn("[rewarded-ad] startup initialization failed", error);
      });
    }
    let stop: (() => void) | undefined;
    let disposed = false;
    if (!tvMode) {
      void import("@/utils/pushNotifications")
        .then(async ({ registerPushNotifications }) => {
          await registerPushNotifications();
          if (disposed) return;
          const { startEpisodeNotificationSync } = await import("@/utils/episodeNotifications");
          if (!disposed) stop = startEpisodeNotificationSync();
        })
        .catch(() => {});
    }
    return () => {
      disposed = true;
      stop?.();
    };
  }, [tvMode]);

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
              <TelegramAnnouncementModal
                visible={telegramAnnouncementVisible}
                onClose={() => setTelegramAnnouncementVisible(false)}
              />
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
        <View style={styles.brandFeatures}>
          <View style={styles.brandFeature}>
            <Ionicons name="play" size={11} color="#D8B4FE" />
            <Text style={styles.brandFeatureText}>شاهد</Text>
          </View>
          <View style={styles.brandFeatureDivider} />
          <View style={styles.brandFeature}>
            <Ionicons name="bookmark" size={11} color="#D8B4FE" />
            <Text style={styles.brandFeatureText}>احفظ</Text>
          </View>
          <View style={styles.brandFeatureDivider} />
          <View style={styles.brandFeature}>
            <Ionicons name="download" size={11} color="#D8B4FE" />
            <Text style={styles.brandFeatureText}>حمّل</Text>
          </View>
        </View>
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
  brandFeatures: {
    flexDirection: "row",
    alignItems: "center",
    gap: 11,
    marginTop: 18,
    paddingHorizontal: 13,
    paddingVertical: 7,
    borderRadius: 20,
    backgroundColor: "rgba(139,92,246,0.10)",
    borderWidth: 1,
    borderColor: "rgba(216,180,254,0.16)",
  },
  brandFeature: { flexDirection: "row", alignItems: "center", gap: 4 },
  brandFeatureText: {
    color: "rgba(255,255,255,0.68)",
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
  },
  brandFeatureDivider: {
    width: 1,
    height: 13,
    backgroundColor: "rgba(216,180,254,0.22)",
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
  tvExitHint: {
    position: "absolute",
    left: 0,
    right: 0,
    bottom: 34,
    alignSelf: "center",
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 9,
    paddingHorizontal: 20,
    paddingVertical: 12,
    borderRadius: 18,
    backgroundColor: "rgba(11, 8, 24, 0.94)",
    borderWidth: 1,
    borderColor: "rgba(216, 180, 254, 0.42)",
    zIndex: 200,
  },
  tvExitHintText: {
    color: "#FFFFFF",
    fontSize: 18,
    fontFamily: "Cairo_700Bold",
  },
});

/* Sentry.wrap: يضيف مراقبة تلقائية للتنقّل بين الشاشات وأداء الإقلاع،
   ولا يعمل شيء إضافياً إذا لم يُستدعَ Sentry.init() أعلاه (بلا DSN). */
export default Sentry.wrap(RootLayout);
