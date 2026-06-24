import { Platform } from "react-native";

/**
 * Returns the base URL for API calls.
 * Priority:
 * 1. EXPO_PUBLIC_DOMAIN env var (set at build/dev time)
 * 2. window.location.origin when running on web
 * 3. REPLIT_DEV_DOMAIN env var (injected by Replit at runtime)
 * 4. Empty string fallback (will cause fetch to fail gracefully with error message)
 */
export function getBaseUrl(): string {
  const domain = process.env.EXPO_PUBLIC_DOMAIN;
  if (domain) {
    return domain.startsWith("http") ? domain : `https://${domain}`;
  }
  if (Platform.OS === "web" && typeof window !== "undefined") {
    return window.location.origin;
  }
  // للتطبيق الـ native: استخدم REPLIT_DEV_DOMAIN إن وُجد
  const replitDomain = process.env.EXPO_PUBLIC_REPLIT_DEV_DOMAIN;
  if (replitDomain) {
    return replitDomain.startsWith("http") ? replitDomain : `https://${replitDomain}`;
  }
  return "";
}
