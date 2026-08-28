import { Platform } from "react-native";
import AsyncStorage from "@react-native-async-storage/async-storage";

export const CUSTOM_API_URL_KEY = "nova-custom-api-url";

/**
 * يُحوّل أي domain إلى URL كاملة بـ https
 * يقبل: "example.com" أو "https://example.com" أو "http://..."
 */
function toAbsUrl(domain: string): string {
  if (domain.startsWith("http://") || domain.startsWith("https://")) return domain;
  return `https://${domain}`;
}

const PRODUCTION_SERVER = "https://animenovaa.duckdns.org";

function getConfiguredApiUrl(): string | null {
  const configured = process.env.EXPO_PUBLIC_API_URL?.trim();
  if (!configured) return null;
  return toAbsUrl(configured).replace(/\/+$/, "");
}

// ── Runtime-overridable API URL ────────────────────────────────────────────
// يُحمَّل من AsyncStorage عند بدء التطبيق عبر loadRuntimeApiUrl()
// يُعدَّل من شاشة الإعدادات دون الحاجة لإعادة البناء
let _runtimeUrl: string | null = null;

export function setRuntimeApiUrl(url: string | null) {
  _runtimeUrl = url && url.startsWith("http") ? url.replace(/\/$/, "") : null;
}

/** استدعِها مرة واحدة في _layout.tsx لتحميل الـ URL المحفوظ.
 *  تتحقق من صحة URL المحفوظ قبل استخدامه — إذا لم يرد خلال 4 ثوانٍ أو أرجع خطأ
 *  يُحذف تلقائياً ويعود للسيرفر الرسمي، مما يمنع تعليق التطبيق بعد إدخال URL خاطئ.
 */
export async function loadRuntimeApiUrl(): Promise<void> {
  try {
    const saved = await AsyncStorage.getItem(CUSTOM_API_URL_KEY);
    if (!saved) return; // لا يوجد URL مخصص — استخدم الافتراضي مباشرةً

    // ── تحقق سريع من صحة URL المحفوظ ──────────────────────────────────────
    try {
      const ctrl = new AbortController();
      const timer = setTimeout(() => ctrl.abort(), 4_000); // 4 ثوانٍ بحد أقصى
      const r = await fetch(`${saved.replace(/\/\/$/, "")}/health`, {
        signal: ctrl.signal,
      });
      clearTimeout(timer);
      if (r.ok) {
        // URL صالح → استخدمه
        setRuntimeApiUrl(saved);
      } else {
        // يستجيب لكن بخطأ → احذفه وارجع للافتراضي
        await AsyncStorage.removeItem(CUSTOM_API_URL_KEY);
        console.warn("[baseUrl] Saved custom URL returned error, reverted to default");
      }
    } catch {
      // لا يمكن الاتصال به (timeout / network error) → احذفه فوراً
      await AsyncStorage.removeItem(CUSTOM_API_URL_KEY);
      console.warn("[baseUrl] Saved custom URL unreachable, reverted to default");
    }
  } catch {}
}

/**
 * Returns the base URL for API calls — portable across all environments.
 * Priority:
 * 1. Runtime URL (set from settings screen — persisted in AsyncStorage)
 * 2. EXPO_PUBLIC_API_URL env var (the Nova Mobile 2 API)
 * 3. EXPO_PUBLIC_DOMAIN env var (EAS build / GitHub Actions)
 * 4. window.location.origin when running on web (Replit preview)
 * 5. EXPO_PUBLIC_REPLIT_DEV_DOMAIN (injected by Replit native dev)
 * 6. Production server fallback
 */
export function getBaseUrl(): string {
  if (_runtimeUrl) return _runtimeUrl;

  const configuredApiUrl = getConfiguredApiUrl();
  if (configuredApiUrl) return configuredApiUrl;

  const domain = process.env.EXPO_PUBLIC_DOMAIN;
  if (domain) return toAbsUrl(domain);

  if (Platform.OS === "web" && typeof window !== "undefined") {
    return window.location.origin;
  }

  const replitDomain = process.env.EXPO_PUBLIC_REPLIT_DEV_DOMAIN;
  if (replitDomain) return toAbsUrl(replitDomain);

  // على الأجهزة الحقيقية: السيرفر الإنتاجي
  return PRODUCTION_SERVER;
}
