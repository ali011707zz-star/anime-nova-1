import AsyncStorage from "@react-native-async-storage/async-storage";
import React from "react";
import {
  DeviceEventEmitter,
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

export type TvModeOverride = "auto" | "on" | "off";

const TV_MODE_OVERRIDE_KEY = "nova-tv-mode-override";
let currentTvOverride: TvModeOverride = "auto";
let hydratedTvOverride = false;
let hardwareDpadDetected = false;
const tvListeners = new Set<() => void>();

function notifyTvListeners() {
  for (const listener of tvListeners) {
    try {
      listener();
    } catch {}
  }
}

function ensureTvOverrideHydrated() {
  if (hydratedTvOverride) return;
  hydratedTvOverride = true;
  AsyncStorage.getItem(TV_MODE_OVERRIDE_KEY)
    .then((raw) => {
      if (raw === "on" || raw === "off" || raw === "auto") {
        if (currentTvOverride !== raw) {
          currentTvOverride = raw;
          notifyTvListeners();
        }
      }
    })
    .catch(() => {});
}

ensureTvOverrideHydrated();

if (Platform.OS === "android") {
  try {
    const onDpadEvent = () => {
      if (!hardwareDpadDetected) {
        hardwareDpadDetected = true;
        notifyTvListeners();
      }
    };
    DeviceEventEmitter.addListener("novaTvKeyEvent", onDpadEvent);
    DeviceEventEmitter.addListener("onHWKeyEvent", onDpadEvent);
  } catch {}
}

export function getTvModeOverride(): TvModeOverride {
  ensureTvOverrideHydrated();
  return currentTvOverride;
}

export async function setTvModeOverride(mode: TvModeOverride): Promise<void> {
  currentTvOverride = mode;
  notifyTvListeners();
  try {
    await AsyncStorage.setItem(TV_MODE_OVERRIDE_KEY, mode);
  } catch {}
}

export async function toggleTvMode(): Promise<boolean> {
  const currentlyActive = isTvDevice();
  const nextMode: TvModeOverride = currentlyActive ? "off" : "on";
  await setTvModeOverride(nextMode);
  return !currentlyActive;
}

export function useTvModeOverride(): [TvModeOverride, (mode: TvModeOverride) => Promise<void>] {
  ensureTvOverrideHydrated();
  const [mode, setMode] = React.useState<TvModeOverride>(currentTvOverride);
  React.useEffect(() => {
    const listener = () => setMode(currentTvOverride);
    tvListeners.add(listener);
    return () => {
      tvListeners.delete(listener);
    };
  }, []);
  return [mode, setTvModeOverride];
}

/**
 * Detects Android TV, Google TV, Fire TV, and Smart TVs reliably.
 * Also activates automatically if any hardware D-pad remote key is pressed.
 */
export function isTvDevice(width?: number, height?: number): boolean {
  ensureTvOverrideHydrated();
  if (currentTvOverride === "on") return true;
  if (currentTvOverride === "off") return false;
  if (Platform.OS !== "android") return false;
  if (hardwareDpadDetected) return true;

  const nativePlatform = Platform as typeof Platform & {
    isTV?: boolean;
    constants?: {
      uiMode?: string;
      Model?: string;
      Brand?: string;
      Manufacturer?: string;
      fingerprint?: string;
    };
  };
  const uiMode = String(nativePlatform.constants?.uiMode ?? "").toLowerCase();
  if (nativePlatform.isTV === true || uiMode === "tv" || uiMode === "television") {
    return true;
  }

  const deviceInfo = [
    nativePlatform.constants?.Model,
    nativePlatform.constants?.Brand,
    nativePlatform.constants?.Manufacturer,
    nativePlatform.constants?.fingerprint,
  ]
    .filter(Boolean)
    .join(" ")
    .toLowerCase();
  if (
    /\b(aft[a-z0-9]*|shield|mibox|mi\s*box|chromecast|bravia|android\s*tv|google\s*tv|smart\s*tv|tv\s*box|mecool|h96|x96|tx3|t95|tanix|beelink|ugoos|onn\.?\s*tv|tcl|hisense|toshiba|haier|skyworth|changhong|philips|sharp|sony)\b/i.test(
      deviceInfo,
    )
  ) {
    return true;
  }

  const window = Dimensions.get("window");
  const w = width ?? window.width ?? 0;
  const h = height ?? window.height ?? 0;
  const longEdge = Math.max(w, h);
  const shortEdge = Math.min(w, h);
  if (w >= h && longEdge >= 720 && shortEdge >= 400) {
    return true;
  }
  return false;
}

let activeThemeIsWhite = false;

export function setActiveThemeIsWhite(isWhite: boolean) {
  activeThemeIsWhite = isWhite;
}

try {
  AsyncStorage.getItem("nova-theme")
    .then((val) => {
      if (val === "white" || val === "light") {
        activeThemeIsWhite = true;
      }
    })
    .catch(() => {});
} catch {}

export function tvFocusStyle(focused: boolean, isWhite?: boolean) {
  if (!focused) return {};
  const white = typeof isWhite === "boolean" ? isWhite : activeThemeIsWhite;
  if (white) {
    return {
      borderColor: "#0284C7",
      borderWidth: 2.2,
      borderRadius: 12,
      backgroundColor: "rgba(2, 132, 199, 0.08)",
      shadowColor: "#0284c7",
      shadowOpacity: 0.35,
      shadowRadius: 5,
      shadowOffset: { width: 0, height: 2 },
      elevation: 6,
      zIndex: 50,
    };
  }
  return {
    borderColor: "#38BDF8",
    borderWidth: 2.2,
    borderRadius: 12,
    backgroundColor: "rgba(56, 189, 248, 0.08)",
    shadowColor: "#38BDF8",
    shadowOpacity: 0.40,
    shadowRadius: 6,
    elevation: 6,
    zIndex: 50,
  };
}

export const TV_FOCUS_VIEWABILITY_CONFIG = {
  itemVisiblePercentThreshold: 65,
};

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

  const scrollToFocusedIndex = React.useCallback(
    (index: number) => {
      if (!isTvDevice() || visibleIndicesRef.current?.has(index) || !visibleIndicesRef.current)
        return;
      try {
        listRef.current?.scrollToIndex({ index, animated: false, viewPosition });
      } catch {}
    },
    [listRef, viewPosition],
  );

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

  return (
    <Pressable
      {...props}
      {...({ delayPressIn: 0, delayPressOut: 0, unstable_pressDelay: 0 } as any)}
      focusable={Platform.OS === "android" ? focusable !== false : focusable}
      hasTVPreferredFocus={hasTVPreferredFocus}
      hitSlop={props.hitSlop ?? 8}
      pressRetentionOffset={props.pressRetentionOffset ?? 12}
      android_disableSound={false}
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
        pressed && { opacity: 0.84 },
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
  const wide = width >= 700;
  const hPad = tv && wide ? 32 : wide ? 24 : 16;
  return {
    tv,
    contentWidth: tv && wide ? Math.min(Math.max(width - 64, 0), 1440) : width,
    horizontalPadding: hPad,
    controlHeight: tv && wide ? 48 : 42,
    textScale: tv && wide ? 1.1 : 1,
    sectionGap: tv && wide ? 24 : 20,
  };
}

export function tvScale(tv: boolean, phone: number, television: number) {
  return tv ? television : phone;
}

export function getDeviceScale(width?: number, height?: number) {
  const window = Dimensions.get("window");
  const w = width ?? window.width ?? 390;
  const h = height ?? window.height ?? 800;
  const shortEdge = Math.min(w, h);
  if (shortEdge >= 600) {
    return Math.min(1.15, Math.max(1.05, shortEdge / 560));
  }
  return Math.max(0.84, Math.min(1.02, shortEdge / 412));
}

export function scaleByDevice(baseValue: number, width?: number, height?: number) {
  const factor = getDeviceScale(width, height);
  return Math.round(baseValue * factor * 10) / 10;
}

export function responsiveScale(
  phoneValue: number,
  width: number,
  tv: boolean,
  tvValue?: number,
) {
  if (!tv || width < 600) {
    const factor = getDeviceScale(width);
    return Math.round(phoneValue * factor);
  }
  const tvScaleFactor = Math.max(1.06, Math.min(1.24, width / 960));
  if (tvValue !== undefined) {
    const cappedTvValue = Math.min(tvValue, Math.round(phoneValue * 1.28));
    return Math.round(Math.min(cappedTvValue, phoneValue * tvScaleFactor));
  }
  return Math.round(phoneValue * tvScaleFactor);
}

export function useTvMetrics() {
  const [overrideMode] = useTvModeOverride();
  const { width, height } = useWindowDimensions();
  const tv = overrideMode === "on" ? true : overrideMode === "off" ? false : isTvDevice(width, height);
  const isTablet = !tv && Math.min(width, height) >= 600;
  const deviceScale = getDeviceScale(width, height);
  const size = (phoneValue: number, tvValue?: number) =>
    responsiveScale(phoneValue, width, tv, tvValue);

  return {
    width,
    height,
    tv,
    isTablet,
    deviceScale,
    size,
    horizontalPadding: size(16, 28),
    controlTarget: size(40, 48),
  };
}

export const tvReadable = {
  title: { fontSize: 24, lineHeight: 32 },
  body: { fontSize: 16, lineHeight: 24 },
  small: { fontSize: 14, lineHeight: 20 },
  button: { minHeight: 50, paddingHorizontal: 20, paddingVertical: 12 },
};
