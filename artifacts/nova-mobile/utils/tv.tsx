import React from "react";
import {
  Dimensions,
  Platform,
  Pressable,
  PressableProps,
  StyleProp,
  ViewStyle,
  useWindowDimensions,
} from "react-native";

/**
 * Android TV and most certified TV boxes expose Platform.isTV through React
 * Native. The size fallback is deliberately conservative for boxes that omit
 * the Leanback feature, while avoiding treating normal tablets as TVs.
 */
export function isTvDevice(width?: number, height?: number) {
  if (Platform.OS !== "android") return false;
  if ((Platform as typeof Platform & { isTV?: boolean }).isTV === true) return true;
  const window = Dimensions.get("window");
  const measuredWidth = width ?? window.width;
  const measuredHeight = height ?? window.height;
  if (measuredWidth == null || measuredHeight == null) return false;
  const longEdge = Math.max(measuredWidth, measuredHeight);
  const shortEdge = Math.min(measuredWidth, measuredHeight);
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
    contentWidth: tv ? Math.min(Math.max(width - 128, 0), 1440) : width,
    horizontalPadding: tv ? 64 : 16,
    controlHeight: tv ? 72 : 44,
    textScale: tv ? 1.32 : 1,
    sectionGap: tv ? 40 : 24,
  };
}

/** Shared TV sizing scale. Keep phone values untouched and make remote
 * targets/text comfortably readable on a ten-foot screen. */
export function tvScale(tv: boolean, phone: number, television: number) {
  return tv ? television : phone;
}

/**
 * Central ten-foot UI metrics.
 *
 * Android TV can report a 720p, 1080p, or 4K logical window, so using the
 * physical pixel width directly would make a 4K TV four times too large.
 * The TV branch intentionally stays within a 2x–2.4x range over the phone
 * reference while still responding to split-screen/rotation changes.
 */
export function responsiveScale(
  phoneValue: number,
  width: number,
  tv: boolean,
  tvValue?: number,
) {
  if (tv) {
    const tvScale = Math.max(2, Math.min(2.4, width / 960));
    return Math.round(tvValue ?? phoneValue * tvScale);
  }
  const phoneScale = Math.max(0.88, Math.min(1.1, width / 375));
  return Math.round(phoneValue * phoneScale);
}

export function useTvMetrics() {
  const { width, height } = useWindowDimensions();
  const tv = isTvDevice(width, height);
  const size = (phoneValue: number, tvValue?: number) =>
    responsiveScale(phoneValue, width, tv, tvValue);

  return {
    width,
    height,
    tv,
    size,
    horizontalPadding: size(16, 64),
    controlTarget: size(44, 72),
  };
}

export const tvReadable = {
  title: { fontSize: 36, lineHeight: 46 },
  body: { fontSize: 22, lineHeight: 34 },
  small: { fontSize: 18, lineHeight: 27 },
  button: { minHeight: 72, paddingHorizontal: 30, paddingVertical: 18 },
};