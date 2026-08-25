import React from "react";
import { Platform, Pressable, PressableProps, StyleProp, ViewStyle } from "react-native";

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
  // rotating into a TV layout.
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

/**
 * Use this for every action that is not an image card. Android TV's native
 * focus engine only sees a control when it is explicitly focusable; keeping
 * that detail here prevents screens from drifting into different TV behavior.
 */
export function TvPressable({
  style,
  children,
  hasTVPreferredFocus = false,
  ...props
}: PressableProps & { style?: StyleProp<ViewStyle> }) {
  return (
    <Pressable
      {...props}
      focusable
      hasTVPreferredFocus={hasTVPreferredFocus}
      hitSlop={props.hitSlop ?? 8}
      pressRetentionOffset={props.pressRetentionOffset ?? 12}
      style={({ focused, pressed }) => [
        typeof style === "function" ? style({ focused, pressed }) : style,
        tvFocusStyle(focused),
        pressed && { opacity: 0.82 },
      ]}
    >
      {children}
    </Pressable>
  );
}

export function tvLayout(width: number, height: number) {
  const tv = isTvDevice(width, height);
  return {
    tv,
    contentWidth: tv ? Math.min(Math.max(width - 80, 0), 1280) : width,
    horizontalPadding: tv ? 40 : 16,
    controlHeight: tv ? 58 : 44,
    textScale: tv ? 1.18 : 1,
    sectionGap: tv ? 32 : 24,
  };
}

/** Shared TV sizing scale. Keep phone values untouched and make remote
 * targets/text comfortably readable on a ten-foot screen. */
export function tvScale(tv: boolean, phone: number, television: number) {
  return tv ? television : phone;
}

export const tvReadable = {
  title: { fontSize: 30, lineHeight: 38 },
  body: { fontSize: 18, lineHeight: 28 },
  small: { fontSize: 15, lineHeight: 22 },
  button: { minHeight: 58, paddingHorizontal: 24, paddingVertical: 14 },
};