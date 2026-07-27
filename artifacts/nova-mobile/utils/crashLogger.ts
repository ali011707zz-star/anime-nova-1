/**
 * crashLogger.ts — نظام تسجيل الأعطال والأخطاء غير المعالجة
 *
 * يحفظ سجل مضغوط من آخر 100 خطأ في AsyncStorage بمفتاح "nova-crash-log"
 * (يُمكن قراءته من صفحة الإعدادات أو عبر ADB logcat في وقت لاحق)
 */
import AsyncStorage from "@react-native-async-storage/async-storage";

const STORAGE_KEY = "nova-crash-log";
const MAX_ENTRIES = 100;

export interface CrashEntry {
  ts: number;          // UNIX timestamp
  type: "js" | "promise" | "render";
  message: string;
  stack?: string;
}

/** أضف إدخال خطأ جديد — لا يُعيق أي شيء (صامت تماماً إن فشل) */
export async function logCrash(entry: Omit<CrashEntry, "ts">): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(STORAGE_KEY);
    const existing: CrashEntry[] = raw ? JSON.parse(raw) : [];
    const updated = [
      { ...entry, ts: Date.now() },
      ...existing,
    ].slice(0, MAX_ENTRIES);
    await AsyncStorage.setItem(STORAGE_KEY, JSON.stringify(updated));
  } catch {
    // تجاهل أي خطأ في التسجيل نفسه
  }
}

/** اقرأ كل الإدخالات المحفوظة */
export async function getCrashLog(): Promise<CrashEntry[]> {
  try {
    const raw = await AsyncStorage.getItem(STORAGE_KEY);
    return raw ? JSON.parse(raw) : [];
  } catch {
    return [];
  }
}

/** امسح سجل الأعطال */
export async function clearCrashLog(): Promise<void> {
  try {
    await AsyncStorage.removeItem(STORAGE_KEY);
  } catch {}
}

/** تثبيت المعالج العالمي — اُستدعِه مرة واحدة فقط عند إطلاق التطبيق */
export function installGlobalCrashHandlers(): void {
  try {
    // ─── JS exceptions (sync + uncaught async thrown from RN bridge) ───
    const ErrorUtils = (global as any).ErrorUtils;
    if (ErrorUtils?.setGlobalHandler) {
      const prev = ErrorUtils.getGlobalHandler?.();
      ErrorUtils.setGlobalHandler((error: Error, isFatal?: boolean) => {
        logCrash({
          type: "js",
          message: `[${isFatal ? "FATAL" : "NON-FATAL"}] ${error?.message ?? String(error)}`,
          stack: error?.stack?.slice(0, 800),
        }).catch(() => {});
        // أحلِ الخطأ للمعالج السابق (RN default = red screen في dev / crash في prod)
        if (prev) prev(error, isFatal);
      });
    }
  } catch {}

  try {
    // ─── Unhandled Promise rejections ───
    const tracking = (global as any).HermesInternal?.hasPromise?.() ?? false;
    if (tracking) {
      // Hermes يدعم trackAsyncErrors مما يُبلَّغ عنه بـ unhandledRejection على الـ event loop
    }
    // نُسجّل عبر patching global.Promise مباشرةً:
    // (الطريقة الأكثر توافقاً عبر React Native + Hermes + JSC)
    const OriginalPromise = global.Promise as any;
    if (OriginalPromise && !OriginalPromise.__novaCrashPatched) {
      OriginalPromise.__novaCrashPatched = true;
      // نستخدم الـ addEventListener المتاح في Hermes/Node-like envs إن وُجد
      const win = global as any;
      if (typeof win.addEventListener === "function") {
        win.addEventListener("unhandledrejection", (event: any) => {
          const reason = event?.reason;
          logCrash({
            type: "promise",
            message: reason?.message ?? String(reason),
            stack: reason?.stack?.slice(0, 600),
          }).catch(() => {});
        });
      }
    }
  } catch {}
}
