import { Platform } from "react-native";

/**
 * يُحوّل أي domain إلى URL كاملة بـ https
 * يقبل: "example.com" أو "https://example.com" أو "http://..."
 */
function toAbsUrl(domain: string): string {
  if (domain.startsWith("http://") || domain.startsWith("https://")) return domain;
  return `https://${domain}`;
}

const PRODUCTION_SERVER = "https://anime-nova.orkestr.run";

/**
 * Returns the base URL for API calls — portable across all environments.
 * Priority:
 * 1. EXPO_PUBLIC_DOMAIN env var (EAS build / GitHub Actions)
 * 2. window.location.origin when running on web (Replit preview)
 * 3. EXPO_PUBLIC_REPLIT_DEV_DOMAIN (injected by Replit native dev)
 * 4. Production server — NEVER localhost on a real device
 */
export function getBaseUrl(): string {
  const domain = process.env.EXPO_PUBLIC_DOMAIN;
  if (domain) return toAbsUrl(domain);

  if (Platform.OS === "web" && typeof window !== "undefined") {
    return window.location.origin;
  }

  const replitDomain = process.env.EXPO_PUBLIC_REPLIT_DEV_DOMAIN;
  if (replitDomain) return toAbsUrl(replitDomain);

  // على الأجهزة الحقيقية: دائماً السيرفر الإنتاجي، لا localhost
  return PRODUCTION_SERVER;
}
