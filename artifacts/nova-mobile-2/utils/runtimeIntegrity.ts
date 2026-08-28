import Constants from "expo-constants";
import { Platform } from "react-native";

export type RuntimeIntegrity = {
  trusted: boolean;
  reason?: "development" | "expo-client" | "remote-debugger";
};

/**
 * Lightweight release-runtime gate.
 *
 * This intentionally checks only reliable, observable signals. A JavaScript
 * app cannot reliably detect every packet sniffer, rooted hook, or patched APK;
 * the server must remain the real trust boundary.
 */
export function getRuntimeIntegrity(): RuntimeIntegrity {
  if (Platform.OS === "web" || __DEV__) {
    return { trusted: true, reason: "development" };
  }

  if (Constants.appOwnership === "expo") {
    return { trusted: false, reason: "expo-client" };
  }

  const globals = globalThis as Record<string, unknown>;
  if (globals.__REMOTEDEV__ === true || globals.__EXPO_DEV__ === true) {
    return { trusted: false, reason: "remote-debugger" };
  }

  return { trusted: true };
}

export function runtimeIntegrityMessage(reason?: RuntimeIntegrity["reason"]): string {
  if (reason === "expo-client" || reason === "development") {
    return "هذه النسخة تعمل فقط داخل نسخة الإنتاج الرسمية.";
  }
  if (reason === "remote-debugger") {
    return "تم إيقاف التشغيل لأن وضع تصحيح خارجي مفعّل.";
  }
  return "تعذر التحقق من سلامة نسخة التطبيق.";
}