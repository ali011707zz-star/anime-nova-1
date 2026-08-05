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
const PLAYER_SESSION_KEY = "nova-player-session";
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

interface PlayerSessionMarker {
  startedAt: number;
  title?: string;
  episode?: number;
  source?: string;
  url?: string;
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

/**
 * Native video crashes do not pass through ErrorUtils or ErrorBoundary.
 * Keep a short-lived marker while RiftPlayer is mounted so the next app
 * launch can report an unexpected exit with the last known player context.
 */
export async function markPlayerSession(marker: Omit<PlayerSessionMarker, "startedAt">): Promise<void> {
  try {
    await AsyncStorage.setItem(
      PLAYER_SESSION_KEY,
      JSON.stringify({ ...marker, startedAt: Date.now() } satisfies PlayerSessionMarker),
    );
  } catch {}
}

export async function clearPlayerSession(): Promise<void> {
  try {
    await AsyncStorage.removeItem(PLAYER_SESSION_KEY);
  } catch {}
}

async function reportUnexpectedPlayerExit(): Promise<void> {
  try {
    const raw = await AsyncStorage.getItem(PLAYER_SESSION_KEY);
    if (!raw) return;

    // Remove first so a failed upload cannot report the same old session on
    // every launch. The crash remains in the local log if the network is down.
    await AsyncStorage.removeItem(PLAYER_SESSION_KEY);
    const marker = JSON.parse(raw) as PlayerSessionMarker;
    const age = Date.now() - Number(marker.startedAt);
    // Ignore corrupt or very old markers left by an interrupted install.
    if (!Number.isFinite(age) || age < 0 || age > 7 * 24 * 60 * 60 * 1000) return;

    await logCrash({
      type: "player",
      isFatal: true,
      message: "Previous app session ended unexpectedly while the player was open",
      context: [
        marker.title,
        marker.episode != null ? `episode ${marker.episode}` : undefined,
        marker.source,
        marker.url?.slice(0, 120),
      ].filter(Boolean).join(" | "),
    });
  } catch {}
}

/* ─── تثبيت المعالجات العالمية — يُستدعى مرة واحدة في _layout.tsx ─── */
export function installGlobalCrashHandlers(): void {
  // Must run before the rest of the app mounts. This is the only reliable
  // JavaScript-side signal available after a native ExoPlayer crash.
  reportUnexpectedPlayerExit().catch(() => {});

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
