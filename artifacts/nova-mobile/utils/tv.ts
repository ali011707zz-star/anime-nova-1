import { Platform } from "react-native";

/**
 * Android TV and most certified TV boxes expose Platform.isTV through React
 * Native. The size fallback is deliberately conservative for boxes that omit
 * the Leanback feature, while avoiding treating normal tablets as TVs.
 */
export function isTvDevice(width?: number, height?: number) {
  if (Platform.OS !== "android") return false;
  if ((Platform as typeof Platform & { isTV?: boolean }).isTV === true) return true;
  if (width == null || height == null) return false;
  const longEdge = Math.max(width, height);
  const shortEdge = Math.min(width, height);
  // Only use the fallback for large TV-like canvases. Certified TV devices
  // are detected by Platform.isTV above, so this should not turn a phone
  // rotating into landscape into a TV layout.
  return longEdge >= 1600 && shortEdge >= 800;
}

export function tvFocusStyle(focused: boolean) {
  return focused
    ? {
        borderColor: "#C4B5FD",
        borderWidth: 3,
        shadowColor: "#A78BFA",
        shadowOpacity: 0.9,
        shadowRadius: 12,
        elevation: 8,
      }
    : {};
}