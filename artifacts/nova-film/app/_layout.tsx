import {
  Cairo_400Regular,
  Cairo_600SemiBold,
  Cairo_700Bold,
  Cairo_800ExtraBold,
  useFonts,
} from "@expo-google-fonts/cairo";
import { Ionicons } from "@expo/vector-icons";
import { focusManager, QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Stack, usePathname, useRouter } from "expo-router";
import { LinearGradient } from "expo-linear-gradient";
import * as SplashScreen from "expo-splash-screen";
import React, { useEffect, useRef, useState } from "react";
import { Animated, AppState, BackHandler, Dimensions, Easing, I18nManager, Image, Platform, StatusBar, StyleSheet, Text, TextInput, View } from "react-native";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { SafeAreaProvider } from "react-native-safe-area-context";
import * as ScreenOrientation from "expo-screen-orientation";
import * as Sentry from "@sentry/react-native";
import { ErrorBoundary } from "@/components/ErrorBoundary";
import { AppUpdateModal } from "@/components/AppUpdateModal";
import { TelegramAnnouncementModal } from "@/components/TelegramAnnouncementModal";
import { AppProvider, useApp } from "@/context/AppContext";
import { useColors } from "@/hooks/useColors";
import { loadRuntimeApiUrl } from "@/utils/baseUrl";
import { fetchFilmHome, loadCachedFilmHome } from "@/utils/filmApi";
import { installGlobalCrashHandlers } from "@/utils/crashLogger";
import { getRuntimeIntegrity, runtimeIntegrityMessage } from "@/utils/runtimeIntegrity";
import { isTvDevice, useTvMetrics } from "@/utils/tv";
import { pingMobileAppPresence } from "@/utils/analytics";
import { checkAndApplyOtaUpdate } from "@/utils/otaUpdater";
import { registerPushNotifications, subscribeToPushTokenChanges } from "@/utils/pushNotifications";

if (Platform.OS !== "web") {
  AppState.addEventListener("change", (status) => {
    focusManager.setFocused(status === "active");
  });
}

// توحيد مقياس الخطوط والأيقونات بين الهواتف والأجهزة اللوحية (iPad) ومنع تضخم النصوص بسبب إعدادات تكبير خط النظام
try {
  const TextAny = Text as any;
  TextAny.defaultProps = TextAny.defaultProps || {};
  TextAny.defaultProps.allowFontScaling = false;
  TextAny.defaultProps.maxFontSizeMultiplier = 1;

  const TextInputAny = TextInput as any;
  TextInputAny.defaultProps = TextInputAny.defaultProps || {};
  TextInputAny.defaultProps.allowFontScaling = false;
  TextInputAny.defaultProps.maxFontSizeMultiplier = 1;
} catch (_) {}

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
    beforeSend(event) {
      const firstEx = event?.exception?.values?.[0];
      const isAnr = firstEx?.type === "ApplicationNotResponding";
      const isBgAnr =
        isAnr &&
        ((typeof firstEx?.value === "string" && firstEx.value.includes("Background ANR")) ||
          event?.contexts?.app?.in_foreground === false);
      if (isBgAnr) {
        return null;
      }
      return event;
    },
  });
}

// تحميل عنوان API المخصص من AsyncStorage قبل أي طلب شبكي
if (RUNTIME_INTEGRITY.trusted) {
  loadRuntimeApiUrl()
    .catch(() => {})
    .finally(() => {
      loadCachedFilmHome().catch(() => {});
      fetchFilmHome().catch(() => {});
    });
}

// تثبيت معالجات الأعطال العالمية — فوراً عند بدء التشغيل
if (RUNTIME_INTEGRITY.trusted) {
  installGlobalCrashHandlers();
}

// restoreInterruptedDownloads is deferred to RootLayout after initial frame & active state.

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
  const { theme } = useApp();
  const router = useRouter();
  const pathname = usePathname();
  const [tvExitHintVisible, setTvExitHintVisible] = useState(false);
  const tvExitHintTimer = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastTvBackAt = useRef(0);
  const tvMode = isTvDevice(Dimensions.get("window").width, Dimensions.get("window").height);
  const watchScreenOptions = {
    headerShown: false,
    ...(Platform.OS === "android" ? { animation: "none" as const } : {}),
    ...(tvMode ? { orientation: "landscape" as const } : {}),
  };

  useEffect(() => {
    if (Platform.OS !== "android" || !tvMode) return;

    const isAppRoot = pathname === "/" || pathname === "/(tabs)" || pathname === "/(tabs)/index";
    const subscription = BackHandler.addEventListener("hardwareBackPress", () => {
      if (!isAppRoot) {
        lastTvBackAt.current = 0;
        setTvExitHintVisible(false);
        if (router.canGoBack()) {
          router.back();
        } else {
          router.replace("/(tabs)" as any);
        }
        return true;
      }

      // At root screen on TV: exit immediately without requiring double press
      if (tvExitHintTimer.current) clearTimeout(tvExitHintTimer.current);
      tvExitHintTimer.current = null;
      setTvExitHintVisible(false);
      BackHandler.exitApp();
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
      <StatusBar
        hidden={Platform.OS === "android" && !tvMode}
        backgroundColor={colors.background}
        barStyle={theme === "white" ? "dark-content" : "light-content"}
      />
      <Stack
        screenOptions={{
          headerShown: false,
          contentStyle: { backgroundColor: colors.background },
          animation: Platform.OS === "android" ? "fade_from_bottom" : "fade",
          animationDuration: Platform.OS === "android" ? 120 : 180,
        }}
      >
        <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
        <Stack.Screen name="film/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="film/episodes/[id]" options={{ headerShown: false, animation: "slide_from_right" }} />
        <Stack.Screen name="film/watch" options={watchScreenOptions} />
        <Stack.Screen name="stardima-title" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="stardima-servers" options={{ headerShown: false, animation: "slide_from_right" }} />
        <Stack.Screen name="stardima-player" options={watchScreenOptions} />
        <Stack.Screen name="anime/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="manga" options={{ headerShown: false }} />
        <Stack.Screen name="manga/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="seasons" options={{ headerShown: false }} />
        <Stack.Screen name="stats" options={{ headerShown: false }} />
        <Stack.Screen name="upcoming" options={{ headerShown: false }} />
        <Stack.Screen name="watch" options={watchScreenOptions} />
        <Stack.Screen name="animation/[type]/[id]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="animation/watch" options={watchScreenOptions} />
        <Stack.Screen name="settings" options={{ headerShown: false }} />
        <Stack.Screen name="schedule" options={{ headerShown: false }} />
        <Stack.Screen name="latest" options={{ headerShown: false, animation: "slide_from_right" }} />
        <Stack.Screen name="profile" options={{ headerShown: false, animation: "slide_from_right" }} />
        <Stack.Screen name="tv-link" options={{ headerShown: false }} />
        <Stack.Screen name="oauth2redirect/google" options={{ headerShown: false }} />
        <Stack.Screen name="aw-dubbed/[key]" options={{ headerShown: false, animation: "slide_from_bottom" }} />
        <Stack.Screen name="aw-dubbed/watch" options={watchScreenOptions} />
        {/* The cartoon tab intentionally opens the legacy Arabic-Toons
            screens, not the anime-dubbed Supabase screens. Register them in
            the root stack so native builds resolve the detail and watch routes
            reliably. */}
        <Stack.Screen name="dubbed" options={{ headerShown: false }} />
        <Stack.Screen
          name="dubbed/[id]"
          options={{
            headerShown: false,
            animation: Platform.OS === "android" ? "none" : "fade",
            animationDuration: 140,
          }}
        />
        <Stack.Screen
          name="dubbed/watch"
          options={{
            ...watchScreenOptions,
            ...(Platform.OS === "android" ? { animation: "none" as const } : {}),
          }}
        />
        <Stack.Screen name="+not-found" />
      </Stack>
      {tvMode && tvExitHintVisible && (
        <View pointerEvents="none" style={styles.tvExitHint}>
          <Ionicons name="information-circle-outline" size={24} color="#F59E0B" />
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
  const { tv: tvMode } = useTvMetrics();

  // TV uses the same app bundle as phones. Only the detected TV runtime is
  // locked to landscape; phone orientation behavior remains unchanged.
  useEffect(() => {
    if (!tvMode) return;
    setTelegramAnnouncementVisible(false);
    ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE).catch(() => {});
  }, [tvMode]);

  // أظهر شاشة Anime NOVA المخصصة فوراً بدلاً من إبقاء native splash (الأيقونة فقط)
  // فوقها أثناء انتظار الخطوط.
  useEffect(() => {
    SplashScreen.hideAsync().catch(() => {});
    if (!RUNTIME_INTEGRITY.trusted) return;
    const t = setTimeout(() => {
      if (AppState.currentState !== "background") {
        pingMobileAppPresence();
        checkAndApplyOtaUpdate({ manual: false }).catch(() => {});
        import("@/utils/downloadManager")
          .then((m) => m.restoreInterruptedDownloads())
          .catch(() => {});
      }
    }, 5500);
    const interval = setInterval(() => {
      if (AppState.currentState === "active") {
        pingMobileAppPresence();
        checkAndApplyOtaUpdate({ manual: false }).catch(() => {});
      }
    }, 120_000);
    const sub = AppState.addEventListener("change", (state) => {
      if (state === "active") pingMobileAppPresence();
    });
    return () => {
      clearTimeout(t);
      clearInterval(interval);
      sub.remove();
    };
  }, []);

  useEffect(() => {
    const t = setTimeout(() => {
      setBrandSplashVisible(false);
      SplashScreen.hideAsync().catch(() => {});
    }, 850);
    return () => clearTimeout(t);
  }, []);

  useEffect(() => {
    if (fontsLoaded || fontError) {
      const t = setTimeout(() => {
        setBrandSplashVisible(false);
        SplashScreen.hideAsync().catch(() => {});
      }, tvMode ? 50 : 70);
      return () => clearTimeout(t);
    }
  }, [fontsLoaded, fontError, tvMode]);

  useEffect(() => {
    if (!brandSplashVisible && RUNTIME_INTEGRITY.trusted && !tvMode) {
      // Let the first screen settle before presenting the announcement. The
      // native Modal already fades, but opening it on the same frame as the
      // splash disappears feels like a layout jump on slower devices.
      const t = setTimeout(() => {
        if (!isTvDevice()) {
          setTelegramAnnouncementVisible(true);
        }
      }, 450);
      return () => clearTimeout(t);
    }
  }, [brandSplashVisible, tvMode]);

  return (
    <SafeAreaProvider>
      <ErrorBoundary>
        <QueryClientProvider client={queryClient}>
          <AppProvider>
            <RootContent
              brandSplashVisible={brandSplashVisible}
              telegramAnnouncementVisible={telegramAnnouncementVisible && !tvMode}
              onCloseAnnouncement={() => setTelegramAnnouncementVisible(false)}
            />
          </AppProvider>
        </QueryClientProvider>
      </ErrorBoundary>
    </SafeAreaProvider>
  );
}

function RootContent({
  brandSplashVisible,
  telegramAnnouncementVisible,
  onCloseAnnouncement,
}: {
  brandSplashVisible: boolean;
  telegramAnnouncementVisible: boolean;
  onCloseAnnouncement: () => void;
}) {
  const colors = useColors();
  const { themeHydrated } = useApp();
  const { tv: tvMode } = useTvMetrics();

  if (!themeHydrated) {
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
    <GestureHandlerRootView style={{ flex: 1, backgroundColor: colors.background }}>
      <PushRegistrationBridge disabled={true} />
      <RootLayoutNav />
      {brandSplashVisible && (
        <View style={[StyleSheet.absoluteFill, { zIndex: 99999, elevation: 99999 }]}>
          <BrandSplash />
        </View>
      )}
      
      {!tvMode && (
        <TelegramAnnouncementModal
          visible={telegramAnnouncementVisible}
          onClose={onCloseAnnouncement}
        />
      )}
      {!brandSplashVisible && <AppUpdateModal />}
    </GestureHandlerRootView>
  );
}

function PushRegistrationBridge({ disabled }: { disabled: boolean }) {
  const { authReady, currentUser } = useApp();
  useEffect(() => {
    if (disabled || Platform.OS === "web" || !authReady) return;
    let disposed = false;
    let stopEpisodeSync: (() => void) | undefined;
    const stopTokenListener = subscribeToPushTokenChanges();
    const timer = setTimeout(() => {
      if (disposed || AppState.currentState === "background") return;
      void registerPushNotifications()
        .catch((error) => {
          console.warn("[push] startup registration failed:", error instanceof Error ? error.message : String(error));
          return false;
        })
        .then(async () => {
          if (disposed || AppState.currentState === "background") return;
          const { startEpisodeNotificationSync } = await import("@/utils/episodeNotifications");
          if (!disposed) stopEpisodeSync = startEpisodeNotificationSync();
        })
        .catch((error) => {
          console.warn("[push] local notification fallback startup failed:", error instanceof Error ? error.message : String(error));
        });
    }, 1500);
    return () => {
      disposed = true;
      clearTimeout(timer);
      stopTokenListener();
      stopEpisodeSync?.();
    };
  }, [authReady, currentUser?.id, disabled]);
  return null;
}

const SPLASH_WORLDS = [
  { label: "أفلام", color: "#F59E0B" },
  { label: "مسلسلات", color: "#38BDF8" },
  { label: "أنميشن", color: "#C084FC" },
  { label: "مدبلج", color: "#34D399" },
] as const;

function BrandSplash() {
  const fadeAnim = useRef(new Animated.Value(0)).current;
  const scaleAnim = useRef(new Animated.Value(0.92)).current;
  const slideAnim = useRef(new Animated.Value(12)).current;
  const glowPulse = useRef(new Animated.Value(0)).current;
  const loaderAnim = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.parallel([
      Animated.timing(fadeAnim, {
        toValue: 1,
        duration: 420,
        easing: Easing.out(Easing.cubic),
        useNativeDriver: true,
      }),
      Animated.timing(scaleAnim, {
        toValue: 1,
        duration: 480,
        easing: Easing.out(Easing.back(1.15)),
        useNativeDriver: true,
      }),
      Animated.timing(slideAnim, {
        toValue: 0,
        duration: 440,
        easing: Easing.out(Easing.cubic),
        useNativeDriver: true,
      }),
    ]).start();

    const pulseLoop = Animated.loop(
      Animated.sequence([
        Animated.timing(glowPulse, {
          toValue: 1,
          duration: 1400,
          easing: Easing.inOut(Easing.sin),
          useNativeDriver: true,
        }),
        Animated.timing(glowPulse, {
          toValue: 0,
          duration: 1400,
          easing: Easing.inOut(Easing.sin),
          useNativeDriver: true,
        }),
      ]),
    );

    const loaderLoop = Animated.loop(
      Animated.timing(loaderAnim, {
        toValue: 1,
        duration: 1250,
        easing: Easing.inOut(Easing.quad),
        useNativeDriver: true,
      }),
    );

    pulseLoop.start();
    loaderLoop.start();
    return () => {
      pulseLoop.stop();
      loaderLoop.stop();
    };
  }, [fadeAnim, glowPulse, loaderAnim, scaleAnim, slideAnim]);

  const pulseScale = glowPulse.interpolate({
    inputRange: [0, 1],
    outputRange: [0.96, 1.08],
  });
  const pulseOpacity = glowPulse.interpolate({
    inputRange: [0, 1],
    outputRange: [0.78, 1],
  });
  const loaderTranslateX = loaderAnim.interpolate({
    inputRange: [0, 1],
    outputRange: [-84, 156],
  });

  return (
    <LinearGradient
      colors={["#050408", "#140D06", "#0D0914", "#050408"]}
      locations={[0, 0.38, 0.74, 1]}
      start={{ x: 0.12, y: 0 }}
      end={{ x: 0.88, y: 1 }}
      style={styles.brandSplash}
    >
      {/* Multi-layered soft cinema-gold ambient aura (smooth on Android without hard circle edges) */}
      <View pointerEvents="none" style={styles.brandAuraLayerOuter} />
      <View pointerEvents="none" style={styles.brandAuraGold} />
      <View pointerEvents="none" style={styles.brandAuraAmber} />
      <Animated.View
        pointerEvents="none"
        style={[
          styles.brandAuraCore,
          { opacity: pulseOpacity, transform: [{ scale: pulseScale }] },
        ]}
      />

      {/* Subtle cinema starlight accents */}
      <View pointerEvents="none" style={[styles.brandStar, { top: "18%", left: "16%", width: 3, height: 3, opacity: 0.5 }]} />
      <View pointerEvents="none" style={[styles.brandStar, { top: "24%", right: "18%", width: 4, height: 4, backgroundColor: "#FDE68A", opacity: 0.6 }]} />
      <View pointerEvents="none" style={[styles.brandStar, { top: "34%", left: "11%", width: 2.5, height: 2.5, backgroundColor: "#F59E0B", opacity: 0.45 }]} />
      <View pointerEvents="none" style={[styles.brandStar, { bottom: "26%", right: "14%", width: 3, height: 3, backgroundColor: "#FBBF24", opacity: 0.42 }]} />
      <View pointerEvents="none" style={[styles.brandStar, { bottom: "22%", left: "20%", width: 2.5, height: 2.5, opacity: 0.35 }]} />

      <Animated.View
        style={[
          styles.brandContent,
          {
            opacity: fadeAnim,
            transform: [{ scale: scaleAnim }, { translateY: slideAnim }],
          },
        ]}
      >
        <View style={styles.brandLogoHalo}>
          <LinearGradient
            colors={["rgba(253, 230, 138, 0.92)", "rgba(245, 158, 11, 0.85)", "rgba(217, 119, 6, 0.58)"]}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 1 }}
            style={styles.brandLogoRim}
          >
            <View style={styles.brandLogoClip}>
              <Image
                source={require("../assets/images/icon.png")}
                style={styles.brandLogo}
                resizeMode="cover"
                accessibilityLabel="شعار NOVA FILM"
              />
            </View>
          </LinearGradient>
        </View>

        <Text style={styles.brandName}>
          NOVA <Text style={styles.brandNameAccent}>FILM</Text>
        </Text>

        <LinearGradient
          colors={["rgba(245, 158, 11, 0)", "#FDE68A", "#F59E0B", "rgba(245, 158, 11, 0)"]}
          start={{ x: 0, y: 0.5 }}
          end={{ x: 1, y: 0.5 }}
          style={styles.brandAccentLine}
        />

        <Text style={styles.brandTagline}>عالمك المتكامل للأفلام والمسلسلات</Text>

        <View style={styles.brandWorldsRow}>
          {SPLASH_WORLDS.map((world) => (
            <View key={world.label} style={styles.brandWorldChip}>
              <View style={[styles.brandWorldDot, { backgroundColor: world.color }]} />
              <Text style={styles.brandWorldText}>{world.label}</Text>
            </View>
          ))}
        </View>

        <View style={styles.brandLoader}>
          <Animated.View
            style={[
              styles.brandLoaderBeamWrap,
              { transform: [{ translateX: loaderTranslateX }] },
            ]}
          >
            <LinearGradient
              colors={["rgba(245, 158, 11, 0)", "#FDE68A", "#F59E0B", "rgba(245, 158, 11, 0)"]}
              start={{ x: 0, y: 0.5 }}
              end={{ x: 1, y: 0.5 }}
              style={styles.brandLoaderBeam}
            />
          </Animated.View>
        </View>
      </Animated.View>

      <View pointerEvents="none" style={styles.brandFooter}>
        <Text style={styles.brandFooterText}>بث مباشر FHD  •  تحميل أوفلاين</Text>
      </View>
    </LinearGradient>
  );
}

const styles = StyleSheet.create({
  brandSplash: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "#050408",
    overflow: "hidden",
  },
  brandAuraLayerOuter: {
    position: "absolute",
    width: 440,
    height: 440,
    borderRadius: 220,
    backgroundColor: "rgba(245, 158, 11, 0.045)",
  },
  brandAuraGold: {
    position: "absolute",
    width: 300,
    height: 300,
    borderRadius: 150,
    top: "18%",
    right: -70,
    backgroundColor: "rgba(251, 191, 36, 0.055)",
  },
  brandAuraAmber: {
    position: "absolute",
    width: 280,
    height: 280,
    borderRadius: 140,
    bottom: "16%",
    left: -75,
    backgroundColor: "rgba(217, 119, 6, 0.045)",
  },
  brandAuraCore: {
    position: "absolute",
    width: 240,
    height: 240,
    borderRadius: 120,
    backgroundColor: "rgba(245, 158, 11, 0.095)",
  },
  brandStar: {
    position: "absolute",
    borderRadius: 99,
    backgroundColor: "#FFFFFF",
  },
  brandContent: {
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 24,
  },
  brandLogoHalo: {
    width: 192,
    height: 192,
    borderRadius: 48,
    alignItems: "center",
    justifyContent: "center",
    backgroundColor: "rgba(24, 17, 10, 0.58)",
    borderWidth: 1,
    borderColor: "rgba(245, 158, 11, 0.26)",
    marginBottom: 24,
  },
  brandLogoRim: {
    width: 176,
    height: 176,
    borderRadius: 42,
    padding: 2,
    alignItems: "center",
    justifyContent: "center",
  },
  brandLogoClip: {
    width: "100%",
    height: "100%",
    borderRadius: 40,
    overflow: "hidden",
    backgroundColor: "#171412",
    alignItems: "center",
    justifyContent: "center",
  },
  brandLogo: {
    width: 192,
    height: 192,
  },
  brandName: {
    color: "#FFFFFF",
    fontSize: 28,
    letterSpacing: 4.5,
    fontWeight: "800",
    textAlign: "center",
  },
  brandNameAccent: {
    color: "#F59E0B",
  },
  brandAccentLine: {
    width: 112,
    height: 2,
    borderRadius: 2,
    marginTop: 11,
    marginBottom: 11,
  },
  brandTagline: {
    color: "rgba(254, 243, 199, 0.92)",
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    textAlign: "center",
  },
  brandWorldsRow: {
    flexDirection: "row",
    flexWrap: "wrap",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    marginTop: 18,
  },
  brandWorldChip: {
    flexDirection: "row",
    alignItems: "center",
    gap: 5,
    paddingHorizontal: 11,
    paddingVertical: 5,
    borderRadius: 99,
    backgroundColor: "rgba(255, 255, 255, 0.055)",
    borderWidth: 1,
    borderColor: "rgba(253, 230, 138, 0.15)",
  },
  brandWorldDot: {
    width: 6,
    height: 6,
    borderRadius: 3,
  },
  brandWorldText: {
    color: "rgba(241, 245, 249, 0.9)",
    fontSize: 11.5,
    fontFamily: "Cairo_600SemiBold",
  },
  brandLoader: {
    width: 152,
    height: 3.5,
    borderRadius: 3,
    backgroundColor: "rgba(255, 255, 255, 0.10)",
    overflow: "hidden",
    marginTop: 28,
  },
  brandLoaderBeamWrap: {
    width: 82,
    height: "100%",
  },
  brandLoaderBeam: {
    width: "100%",
    height: "100%",
    borderRadius: 3,
  },
  brandFooter: {
    position: "absolute",
    bottom: 34,
    left: 24,
    right: 24,
    alignItems: "center",
  },
  brandFooterText: {
    color: "rgba(212, 212, 216, 0.52)",
    fontSize: 11,
    fontFamily: "Cairo_600SemiBold",
    letterSpacing: 0.4,
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
