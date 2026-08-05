/**
 * crashLogger.ts — نظام تسجيل الأعطال (Server-First مثل Firebase Crashlytics)
 *
 * يحفظ الأخطاء محلياً في AsyncStorage ويرفعها للسيرفر فور حدوثها.
 * الهدف: رؤية الأعطال في الوقت الفعلي دون الحاجة لـ ADB أو الوصول للجهاز.
 */
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getBaseUrl } from "@/utils/api";
import { Platform } from "react-native";
import Constants from "expo-constants";

const STORAGE_KEY = "nova-crash-log";
const MAX_ENTRIES = 100;

export interface CrashEntry {
  ts: number;
  type: "js" | "promise" | "render" | "player" | "network";
  message: string;
  stack?: string;
  context?: string;   // معلومات إضافية: اسم الشاشة / المصدر / URL
  isFatal?: boolean;
  appVersion?: string;
  deviceModel?: string;
}

/* ─── حفظ محلي ─── */
export async function logCrash(entry: Omit<CrashEntry, "ts">): Promise<void> {
  const full: CrashEntry = { ...entry, ts: Date.now() };
  try {
    const raw = await AsyncStorage.getItem(STORAGE_KEY);
    const existing: CrashEntry[] = raw ? JSON.parse(raw) : [];
    const updated = [full, ...existing].slice(0, MAX_ENTRIES);
    await AsyncStorage.setItem(STORAGE_KEY, JSON.stringify(updated));
  } catch {}

  // رفع للسيرفر في الخلفية (لا نُعيق التطبيق)
  uploadCrash(full).catch(() => {});
}

/* ─── معلومات الجهاز (تُقرأ مرة واحدة فقط) ─── */
let _deviceInfo: { appVersion: string; deviceModel: string } | null = null;
function getDeviceInfo() {
  if (!_deviceInfo) {
    const nativeVer = Constants.expoConfig?.version ?? Constants.manifest?.version ?? "unknown";
    // Platform.constants يحتوي على معلومات الجهاز في RN
    const pc = (Platform.constants as any);
    const model = pc?.Model ?? pc?.systemName ?? Platform.OS;
    _deviceInfo = {
      appVersion: String(nativeVer),
      deviceModel: String(model),
    };
  }
  return _deviceInfo;
}

/* ─── رفع للسيرفر ─── */
async function uploadCrash(entry: CrashEntry): Promise<void> {
  try {
    const base = getBaseUrl();
    const { appVersion, deviceModel } = getDeviceInfo();
    await fetch(`${base}/api/crash-report`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        ...entry,
        platform: Platform.OS,
        version: Platform.Version,
        appVersion,
        deviceModel,
      }),
      // timeout قصير حتى لا يُعيق التطبيق
      signal: AbortSignal.timeout?.(5000),
    });
  } catch {
    // صامت — الحفظ المحلي كافٍ كبديل
  }
}

/* ─── قراءة السجل المحلي ─── */
export async function getCrashLog(): Promise<CrashEntry[]> {
  try {
    const raw = await AsyncStorage.getItem(STORAGE_KEY);
    return raw ? JSON.parse(raw) : [];
  } catch {
    return [];
  }
}

/* ─── مسح السجل ─── */
export async function clearCrashLog(): Promise<void> {
  try {
    await AsyncStorage.removeItem(STORAGE_KEY);
  } catch {}
}

/* ─── تثبيت المعالجات العالمية — يُستدعى مرة واحدة في _layout.tsx ─── */
export function installGlobalCrashHandlers(): void {
  // ── JS exceptions ──
  try {
    const ErrorUtils = (global as any).ErrorUtils;
    if (ErrorUtils?.setGlobalHandler) {
      const prev = ErrorUtils.getGlobalHandler?.();
      ErrorUtils.setGlobalHandler((error: Error, isFatal?: boolean) => {
        logCrash({
          type: "js",
          isFatal: !!isFatal,
          message: `[${isFatal ? "FATAL" : "NON-FATAL"}] ${error?.message ?? String(error)}`,
          stack: error?.stack?.slice(0, 1000),
        }).catch(() => {});
        if (prev) prev(error, isFatal);
      });
    }
  } catch {}

  // ── Unhandled Promise rejections ──
  try {
    const win = global as any;
    if (typeof win.addEventListener === "function") {
      win.addEventListener("unhandledrejection", (event: any) => {
        const reason = event?.reason;
        // تجاهل AbortError — هذه طبيعية عند إلغاء الطلبات
        if (reason?.name === "AbortError" || reason?.message?.includes("aborted")) return;
        logCrash({
          type: "promise",
          message: reason?.message ?? String(reason),
          stack: reason?.stack?.slice(0, 600),
        }).catch(() => {});
      });
    }
  } catch {}
}

/* ─── تسجيل أخطاء المشغّل (يُستدعى من RiftPlayer) ─── */
export function logPlayerError(opts: {
  message: string;
  url?: string;
  site?: string;
  isFatal?: boolean;
}): void {
  logCrash({
    type: "player",
    message: opts.message,
    context: [opts.site, opts.url?.slice(0, 120)].filter(Boolean).join(" | "),
    isFatal: opts.isFatal,
  }).catch(() => {});
}
