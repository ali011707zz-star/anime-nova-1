import { Platform } from "react-native";

export function getBaseUrl(): string {
  const domain = process.env.EXPO_PUBLIC_DOMAIN;
  if (domain) return `https://${domain}`;
  if (Platform.OS === "web" && typeof window !== "undefined") {
    return window.location.origin;
  }
  return "";
}
