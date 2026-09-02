import React from "react";
import {
  Dimensions,
  Platform,
  Pressable,
  PressableProps,
  View,
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
        // This is intentionally oversized for ten-foot viewing. A thin
        // border disappears on bright posters and is easy to lose when the
        // remote moves quickly between neighbouring controls.
        backgroundColor: "rgba(255,255,255,0.18)",
        borderColor: "#FFFFFF",
        borderWidth: 6,
        shadowColor: "#A78BFA",
        shadowOpacity: 1,
        shadowRadius: 24,
        elevation: 24,
        zIndex: 100,
        transform: [{ scale: 1.045 }],
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
}: Omit<PressableProps, "style"> & { style?: PressableProps["style"] }) {
  const tv = isTvDevice();
  return (
    <Pressable
      {...props}
      focusable={tv}
      hasTVPreferredFocus={tv && hasTVPreferredFocus}
      hitSlop={props.hitSlop ?? 8}
      pressRetentionOffset={props.pressRetentionOffset ?? 12}
      style={({ focused, pressed }) => [
        typeof style === "function" ? style({ focused, pressed } as any) : style,
        tvFocusStyle(tv && focused),
        pressed && { opacity: 0.82 },
      ]}
    >
      {children}
    </Pressable>
  );
}

/**
 * React Native 0.81 no longer exposes TVFocusGuideView on the regular
 * Android runtime. Keep the shared screen structure safe on phones while
 * retaining a single compatibility point for TV-focused layouts.
 */
export function TvFocusGuideView({
  autoFocus: _autoFocus,
  ...props
}: React.ComponentProps<typeof View> & { autoFocus?: boolean }) {
  return <View {...props} />;
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
  if (!tv) return phoneValue;
  const tvScale = Math.max(2, Math.min(2.4, width / 960));
  return Math.round(tvValue ?? phoneValue * tvScale);
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