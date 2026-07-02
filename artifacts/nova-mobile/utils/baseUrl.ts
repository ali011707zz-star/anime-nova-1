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

const PRODUCTION_SERVER = "https://anime-nova.orkestr.run";

// ── Runtime-overridable API URL ────────────────────────────────────────────
// يُحمَّل من AsyncStorage عند بدء التطبيق عبر loadRuntimeApiUrl()
// يُعدَّل من شاشة الإعدادات دون الحاجة لإعادة البناء
let _runtimeUrl: string | null = null;

export function setRuntimeApiUrl(url: string | null) {
  _runtimeUrl = url && url.startsWith("http") ? url.replace(/\/$/, "") : null;
}

/** استدعِها مرة واحدة في _layout.tsx لتحميل الـ URL المحفوظ */
export async function loadRuntimeApiUrl(): Promise<void> {
  try {
    const saved = await AsyncStorage.getItem(CUSTOM_API_URL_KEY);
    if (saved) setRuntimeApiUrl(saved);
  } catch {}
}

/**
 * Returns the base URL for API calls — portable across all environments.
 * Priority:
 * 1. Runtime URL (set from settings screen — persisted in AsyncStorage)
 * 2. EXPO_PUBLIC_DOMAIN env var (EAS build / GitHub Actions)
 * 3. window.location.origin when running on web (Replit preview)
 * 4. EXPO_PUBLIC_REPLIT_DEV_DOMAIN (injected by Replit native dev)
 * 5. Production server fallback
 */
export function getBaseUrl(): string {
  if (_runtimeUrl) return _runtimeUrl;

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
