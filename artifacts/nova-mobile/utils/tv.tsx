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
  const nativePlatform = Platform as typeof Platform & {
    isTV?: boolean;
    constants?: { uiMode?: string };
  };
  const uiMode = String(nativePlatform.constants?.uiMode ?? "").toLowerCase();
  if (nativePlatform.isTV === true || uiMode === "tv" || uiMode === "television") return true;
  const window = Dimensions.get("window");
  const measuredWidth = width ?? window.width;
  const measuredHeight = height ?? window.height;
  if (measuredWidth == null || measuredHeight == null) return false;
  const longEdge = Math.max(measuredWidth, measuredHeight);
  const shortEdge = Math.min(measuredWidth, measuredHeight);
  // Android TV commonly reports a logical 960x540 or 1280x720 window even
  // when its physical output is 1080p/4K. Keep the short edge high enough to
  // avoid classifying a normal phone in landscape as a TV.
  return longEdge >= 900 && shortEdge >= 500;
}

export function tvFocusStyle(focused: boolean) {
  return focused
    ? {
        // Keep focus visible without making the focused card jump or grow.
        backgroundColor: "rgba(255,255,255,0.12)",
        borderColor: "#FFFFFF",
        borderWidth: 2,
        shadowColor: "#A78BFA",
        shadowOpacity: 1,
        shadowRadius: 10,
        elevation: 10,
        zIndex: 100,
        transform: [{ scale: 1.015 }],
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
    contentWidth: tv ? Math.min(Math.max(width - 80, 0), 1440) : width,
    horizontalPadding: tv ? 40 : 16,
    controlHeight: tv ? 58 : 44,
    textScale: tv ? 1.16 : 1,
    sectionGap: tv ? 28 : 24,
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
 * The TV branch intentionally stays within a 1.45x–1.8x range over the phone
 * reference while still responding to split-screen/rotation changes.
 */
export function responsiveScale(
  phoneValue: number,
  width: number,
  tv: boolean,
  tvValue?: number,
) {
  if (!tv) return phoneValue;
  const tvScale = Math.max(1.45, Math.min(1.8, width / 960));
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
    horizontalPadding: size(16, 40),
    controlTarget: size(44, 58),
  };
}

export const tvReadable = {
  title: { fontSize: 30, lineHeight: 40 },
  body: { fontSize: 18, lineHeight: 28 },
  small: { fontSize: 15, lineHeight: 23 },
  button: { minHeight: 58, paddingHorizontal: 22, paddingVertical: 14 },
};