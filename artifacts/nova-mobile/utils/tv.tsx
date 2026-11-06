import React from "react";
import {
  Dimensions,
  Platform,
  Pressable,
  View,
  useWindowDimensions,
} from "react-native";
import type {
  FlatList,
  FlatListProps,
  PressableProps,
  PressableStateCallbackType,
  StyleProp,
  ViewStyle,
} from "react-native";

/**
 * Android TV, Google TV, Fire TV, and modern Android Smart TVs.
 * We detect TV mode reliably through platform indicators, UI mode,
 * and TV screen aspect ratio / orientation.
 */
export function isTvDevice(width?: number, height?: number): boolean {
  if (Platform.OS !== "android") return false;
  const nativePlatform = Platform as typeof Platform & {
    isTV?: boolean;
    constants?: { uiMode?: string; Brand?: string; Model?: string };
  };
  const uiMode = String(nativePlatform.constants?.uiMode ?? "").toLowerCase();
  if (nativePlatform.isTV === true || uiMode === "tv" || uiMode === "television") return true;

  const window = Dimensions.get("window");
  const measuredWidth = width ?? window.width;
  const measuredHeight = height ?? window.height;
  if (measuredWidth == null || measuredHeight == null) return false;

  const longEdge = Math.max(measuredWidth, measuredHeight);
  const shortEdge = Math.min(measuredWidth, measuredHeight);
  const isLandscape = measuredWidth >= measuredHeight;

  // On native Android TV, logical density creates resolutions like 960x540, 1280x720, or 1920x1080.
  // When running on a TV without uiMode=tv set by OEM, landscape >= 720 width is guaranteed TV or ten-foot layout.
  return isLandscape && (longEdge >= 800 && shortEdge >= 400);
}

/**
 * High-contrast Netflix-style focus ring:
 * Visible and glowing with distinct outline and highlight background.
 */
export function tvFocusStyle(focused: boolean) {
  return focused
    ? {
        backgroundColor: "rgba(139, 92, 246, 0.25)",
        borderColor: "#38BDF8", // Vibrant Sky Cyan / Neon highlight
        borderWidth: 3.5,
        borderRadius: 12,
        shadowColor: "#38BDF8",
        shadowOffset: { width: 0, height: 0 },
        shadowOpacity: 0.85,
        shadowRadius: 10,
        elevation: 10,
        zIndex: 50,
      }
    : {};
}

export const TV_FOCUS_VIEWABILITY_CONFIG = {
  itemVisiblePercentThreshold: 75,
};

/** Scroll a virtualized list only when D-pad focus reaches an off-screen row. */
export function useTvListFocusScroll<T>(
  listRef: React.RefObject<FlatList<T> | null>,
  viewPosition = 0.35,
) {
  const visibleIndicesRef = React.useRef<Set<number> | null>(null);
  const onViewableItemsChanged = React.useRef<
    NonNullable<FlatListProps<T>["onViewableItemsChanged"]>
  >(({ viewableItems }) => {
    const next = new Set<number>();
    for (const item of viewableItems) {
      if (item.isViewable && typeof item.index === "number") next.add(item.index);
    }
    visibleIndicesRef.current = next;
  }).current;

  const scrollToFocusedIndex = React.useCallback((index: number) => {
    if (!isTvDevice() || visibleIndicesRef.current?.has(index) || !visibleIndicesRef.current) return;
    listRef.current?.scrollToIndex({ index, animated: false, viewPosition });
  }, [listRef, viewPosition]);

  return {
    onViewableItemsChanged,
    viewabilityConfig: TV_FOCUS_VIEWABILITY_CONFIG,
    scrollToFocusedIndex,
  };
}

type TvPressableState = PressableStateCallbackType & { focused: boolean };

type TvPressableProps = Omit<PressableProps, "style"> & {
  style?: StyleProp<ViewStyle> | ((state: TvPressableState) => StyleProp<ViewStyle>);
  onKeyDown?: (event: any) => void;
};

export function TvPressable({
  style,
  children,
  hasTVPreferredFocus = false,
  focusable,
  onFocus,
  onBlur,
  ...props
}: TvPressableProps) {
  const [focused, setFocused] = React.useState(false);
  const isTv = isTvDevice();

  return (
    <Pressable
      {...props}
      focusable={focusable !== undefined ? focusable : isTv}
      hasTVPreferredFocus={hasTVPreferredFocus}
      hitSlop={props.hitSlop ?? 8}
      pressRetentionOffset={props.pressRetentionOffset ?? 12}
      onFocus={(event) => {
        setFocused(true);
        onFocus?.(event);
      }}
      onBlur={(event) => {
        setFocused(false);
        onBlur?.(event);
      }}
      style={({ pressed }) => [
        typeof style === "function" ? style({ focused, pressed }) : style,
        focused && tvFocusStyle(true),
        pressed && { opacity: 0.82 },
      ]}
    >
      {children}
    </Pressable>
  );
}

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

export function tvScale(tv: boolean, phone: number, television: number) {
  return tv ? television : phone;
}

export function responsiveScale(
  phoneValue: number,
  width: number,
  tv: boolean,
  tvValue?: number,
) {
  if (!tv) return phoneValue;
  const scale = Math.max(1.45, Math.min(1.8, width / 960));
  return Math.round(tvValue ?? phoneValue * scale);
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
