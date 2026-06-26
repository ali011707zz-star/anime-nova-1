import { Platform } from "react-native";

/**
 * يُحوّل أي domain إلى URL كاملة بـ https
 * يقبل: "example.com" أو "https://example.com" أو "http://..."
 */
function toAbsUrl(domain: string): string {
  if (domain.startsWith("http://") || domain.startsWith("https://")) return domain;
  return `https://${domain}`;
}

/**
 * Returns the base URL for API calls — portable across all environments.
 * Priority:
 * 1. EXPO_PUBLIC_DOMAIN env var (production / deployed build)
 * 2. window.location.origin when running on web (Replit preview or production web)
 * 3. EXPO_PUBLIC_REPLIT_DEV_DOMAIN (injected by Replit native dev)
 * 4. http://localhost:8080 — explicit fallback for local native dev
 */
export function getBaseUrl(): string {
  const domain = process.env.EXPO_PUBLIC_DOMAIN;
  if (domain) return toAbsUrl(domain);

  if (Platform.OS === "web" && typeof window !== "undefined") {
    return window.location.origin;
  }

  // بيئة Replit native dev
  const replitDomain = process.env.EXPO_PUBLIC_REPLIT_DEV_DOMAIN;
  if (replitDomain) return toAbsUrl(replitDomain);

  // fallback لـ local dev (جهاز + Metro bundler محلي)
  return "http://localhost:8080";
}
