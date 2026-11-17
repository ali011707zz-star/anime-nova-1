import { Alert, Platform } from "react-native";
import * as Updates from "expo-updates";

let checkingNow = false;
let lastAutoCheckAt = 0;
const AUTO_CHECK_INTERVAL_MS = 5 * 60 * 1000;

export function isOtaSupported(): boolean {
  try {
    return Platform.OS !== "web" && !__DEV__ && Boolean(Updates.isEnabled);
  } catch {
    return false;
  }
}

export function getOtaStatusInfo(): {
  enabled: boolean;
  runtimeVersion: string;
  updateId: string | null;
  isEmbeddedLaunch: boolean;
} {
  try {
    return {
      enabled: Boolean(Updates.isEnabled),
      runtimeVersion: Updates.runtimeVersion || "1.0.9",
      updateId: Updates.updateId || null,
      isEmbeddedLaunch: Boolean(Updates.isEmbeddedLaunch),
    };
  } catch {
    return {
      enabled: false,
      runtimeVersion: "1.0.9",
      updateId: null,
      isEmbeddedLaunch: true,
    };
  }
}

export async function checkAndApplyOtaUpdate(options: {
  manual?: boolean;
} = {}): Promise<void> {
  const { manual = false } = options;
  if (Platform.OS === "web") return;

  if (!isOtaSupported()) {
    if (manual) {
      Alert.alert(
        "نظام التحديث التلقائي (OTA)",
        __DEV__
          ? "التحديثات الهوائية (OTA) تعمل في نسخة الإنتاج المثبتة على الهاتف."
          : "نظام التحديث الهوائي مفعّل وسيتم تطبيقه تلقائياً عند توفر تحديث جديد.",
      );
    }
    return;
  }

  const now = Date.now();
  if (!manual && now - lastAutoCheckAt < AUTO_CHECK_INTERVAL_MS) {
    return;
  }
  if (checkingNow) return;

  checkingNow = true;
  lastAutoCheckAt = now;

  try {
    const checkResult = await Updates.checkForUpdateAsync();
    if (!checkResult.isAvailable) {
      if (manual) {
        Alert.alert(
          "NOVA FILM محدّث",
          "أنت تستخدم أحدث إصدار متاح من التطبيق حالياً.",
        );
      }
      return;
    }

    const fetchResult = await Updates.fetchUpdateAsync();
    if (!fetchResult.isNew) {
      if (manual) {
        Alert.alert("NOVA FILM محدّث", "لا توجد ملفات تحديث جديدة حالياً.");
      }
      return;
    }

    Alert.alert(
      "تحديث جديد جاهز",
      "تم تنزيل تحديث جديد لتطبيق NOVA FILM. هل تريد إعادة التشغيل الآن لتطبيق التحديث؟",
      [
        { text: "لاحقاً", style: "cancel" },
        {
          text: "تطبيق الآن",
          onPress: () => {
            Updates.reloadAsync().catch(() => {});
          },
        },
      ],
    );
  } catch {
    if (manual) {
      Alert.alert(
        "تعذر فحص التحديثات",
        "تأكد من اتصالك بالإنترنت وحاول مرة أخرى.",
      );
    }
  } finally {
    checkingNow = false;
  }
}
