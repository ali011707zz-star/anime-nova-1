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
let cachedHardwareTv: boolean | null = null;
const tvListeners = new Set<() => void>();
let activeClearFocusFn: (() => void) | null = null;

export function claimTvFocus(clearFn: () => void) {
  if (activeClearFocusFn && activeClearFocusFn !== clearFn) {
    try {
      activeClearFocusFn();
    } catch {}
  }
  activeClearFocusFn = clearFn;
}

export function releaseTvFocus(clearFn: () => void) {
  if (activeClearFocusFn === clearFn) {
    activeClearFocusFn = null;
  }
}

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
    DeviceEventEmitter.addListener("novaTvKeyEvent", (evt: any) => {
      const code = Number(evt?.keyCode ?? 0);
      if (
        !hardwareDpadDetected &&
        (code === 19 || code === 20 || code === 21 || code === 22 || code === 23 || code === 66 || code === 85)
      ) {
        hardwareDpadDetected = true;
        notifyTvListeners();
      }
    });
    DeviceEventEmitter.addListener("novaTvDetected", (evt: any) => {
      if (evt?.isTv && !hardwareDpadDetected) {
        hardwareDpadDetected = true;
        cachedHardwareTv = true;
        notifyTvListeners();
      }
    });
    DeviceEventEmitter.addListener("novaTvFocusChanged", () => {
      if (activeClearFocusFn) {
        const fn = activeClearFocusFn;
        activeClearFocusFn = null;
        try {
          fn();
        } catch {}
      }
    });
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
  const [, setTick] = React.useState(0);

  React.useEffect(() => {
    const listener = () => setTick((t) => t + 1);
    tvListeners.add(listener);
    return () => {
      tvListeners.delete(listener);
    };
  }, []);

  return [currentTvOverride, setTvModeOverride];
}

function detectAndroidTvHardware(): boolean {
  if (cachedHardwareTv !== null) return cachedHardwareTv;
  if (Platform.OS !== "android") {
    cachedHardwareTv = false;
    return false;
  }
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
    cachedHardwareTv = true;
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

  cachedHardwareTv = /\b(aft[a-z0-9]*|shield|mibox|mi\s*box|mitv|chromecast|bravia|android\s*tv|google\s*tv|smart\s*tv|tv\s*box|mecool|h96|x96|tx3|t95|tanix|beelink|ugoos|tcl|hisense|skyworth|haier|toshiba|changhong|coocaa|konka|onn\.?\s*tv)\b/i.test(
    deviceInfo,
  );
  return cachedHardwareTv;
}

/**
 * Detects Android TV, Google TV, Fire TV, and Android TV boxes without ever
 * misclassifying iPads or Android tablets based on screen dimensions.
 */
export function isTvDevice(_width?: number, _height?: number): boolean {
  ensureTvOverrideHydrated();
  if (currentTvOverride === "on") return true;
  if (currentTvOverride === "off") return false;
  if (Platform.OS !== "android") return false;
  if (hardwareDpadDetected) return true;
  return detectAndroidTvHardware();
}

let activeFullScreenOverlay = false;
const overlayListeners = new Set<() => void>();

export function setTvFullScreenOverlayActive(active: boolean) {
  if (activeFullScreenOverlay === active) return;
  activeFullScreenOverlay = active;
  for (const fn of overlayListeners) {
    try { fn(); } catch {}
  }
}

export function useTvFullScreenOverlay(): boolean {
  const [active, setActive] = React.useState<boolean>(() => activeFullScreenOverlay);
  React.useEffect(() => {
    const sync = () => setActive(activeFullScreenOverlay);
    sync();
    overlayListeners.add(sync);
    return () => {
      overlayListeners.delete(sync);
    };
  }, []);
  return active;
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

/**
 * Clean, sleek TV focus ring that preserves the element's own borderRadius
 * and background color without triggering Android elevation shadow artifacts.
 */
export function tvFocusStyle(focused: boolean, isWhite?: boolean): ViewStyle {
  if (!focused) return {};
  const white = typeof isWhite === "boolean" ? isWhite : activeThemeIsWhite;
  if (white) {
    return {
      borderColor: "#EA580C",
    };
  }
  return {
    borderColor: "#FACC15",
  };
}

export const TV_FOCUS_VIEWABILITY_CONFIG = {
  itemVisiblePercentThreshold: 65,
};

/** Scroll a virtualized list smoothly when D-pad focus reaches an item. */
export function useTvListFocusScroll<T>(
  listRef: React.RefObject<FlatList<T> | null>,
  viewPosition = 0.35,
) {
  const rafRef = React.useRef<number | null>(null);
  const lastIndexRef = React.useRef<number>(-1);

  React.useEffect(() => {
    return () => {
      if (rafRef.current !== null) {
        cancelAnimationFrame(rafRef.current);
      }
    };
  }, []);

  const scrollToFocusedIndex = React.useCallback((index: number) => {
    if (!listRef?.current || typeof index !== "number" || index < 0) return;
    if (lastIndexRef.current === index) return;
    lastIndexRef.current = index;
    if (rafRef.current !== null) {
      cancelAnimationFrame(rafRef.current);
    }
    rafRef.current = requestAnimationFrame(() => {
      rafRef.current = null;
      if (!listRef?.current) return;
      try {
        listRef.current.scrollToIndex({
          index,
          animated: true,
          viewPosition,
        });
      } catch {
        try {
          listRef.current.scrollToOffset({
            offset: Math.max(0, index * 165),
            animated: true,
          });
        } catch {}
      }
    });
  }, [listRef, viewPosition]);

  return {
    onViewableItemsChanged: undefined,
    viewabilityConfig: TV_FOCUS_VIEWABILITY_CONFIG,
    scrollToFocusedIndex,
  };
}

type TvPressableState = PressableStateCallbackType & { focused: boolean };

type TvPressableProps = Omit<PressableProps, "style"> & {
  style?: StyleProp<ViewStyle> | ((state: TvPressableState) => StyleProp<ViewStyle>);
  onKeyDown?: (event: any) => void;
};

export const TvPressable = React.forwardRef<View, TvPressableProps>(function TvPressable(
  {
    style,
    children,
    hasTVPreferredFocus = false,
    focusable,
    onFocus,
    onBlur,
    ...props
  }: TvPressableProps,
  ref: React.ForwardedRef<View>,
) {
  const [tv, setTv] = React.useState<boolean>(() => isTvDevice());
  const [focused, setFocused] = React.useState<boolean>(false);
  const innerRef = React.useRef<View | null>(null);

  const clearSelfFocus = React.useCallback(() => {
    setFocused(false);
  }, []);

  const setCombinedRef = React.useCallback(
    (node: View | null) => {
      innerRef.current = node;
      if (typeof ref === "function") {
        ref(node);
      } else if (ref) {
        (ref as React.MutableRefObject<View | null>).current = node;
      }
    },
    [ref],
  );

  React.useEffect(() => {
    const sync = () => {
      const next = isTvDevice();
      setTv((prev: boolean) => (prev !== next ? next : prev));
    };
    sync();
    tvListeners.add(sync);
    return () => {
      tvListeners.delete(sync);
      releaseTvFocus(clearSelfFocus);
    };
  }, [clearSelfFocus]);

  const isDisabled = Boolean(props.disabled);

  React.useEffect(() => {
    if (!tv || !hasTVPreferredFocus || isDisabled) return;
    const t1 = setTimeout(() => {
      try {
        (innerRef.current as any)?.focus?.();
      } catch {}
    }, 45);
    return () => {
      clearTimeout(t1);
    };
  }, [tv, hasTVPreferredFocus, isDisabled]);

  return (
    <Pressable
      ref={setCombinedRef}
      {...props}
      testID={tv && hasTVPreferredFocus && !isDisabled && !props.testID ? "nova-tv-preferred-focus" : props.testID}
      unstable_pressDelay={0}
      focusable={tv ? (isDisabled ? false : focusable !== false) : focusable}
      hasTVPreferredFocus={tv && !isDisabled && hasTVPreferredFocus}
      hitSlop={props.hitSlop ?? 8}
      pressRetentionOffset={props.pressRetentionOffset ?? 12}
      android_disableSound={false}
      android_ripple={tv ? null : props.android_ripple}
      onFocus={(event: any) => {
        claimTvFocus(clearSelfFocus);
        setFocused(true);
        onFocus?.(event);
      }}
      onBlur={(event: any) => {
        releaseTvFocus(clearSelfFocus);
        setFocused(false);
        onBlur?.(event);
      }}
      style={(state: PressableStateCallbackType) => {
        const isFocused = Boolean(focused || (state as any)?.focused);
        const baseStyle = typeof style === "function" ? style({ ...state, focused: isFocused }) : style;
        return [
          tv && { borderWidth: 1.5, borderColor: "transparent" },
          baseStyle,
          tv && isFocused && tvFocusStyle(true),
          state.pressed && { opacity: 0.85 },
        ];
      }}
    >
      {children}
    </Pressable>
  );
});

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
