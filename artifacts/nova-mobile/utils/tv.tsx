import AsyncStorage from "@react-native-async-storage/async-storage";
import React from "react";
import {
  DeviceEventEmitter,
  Dimensions,
  findNodeHandle,
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
let activeFocusNodeTag: number | null = null;

export function claimTvFocus(clearFn: () => void, nodeTag?: number | null) {
  if (activeClearFocusFn && activeClearFocusFn !== clearFn) {
    try {
      activeClearFocusFn();
    } catch {}
  }
  activeClearFocusFn = clearFn;
  activeFocusNodeTag = typeof nodeTag === "number" ? nodeTag : null;
}

export function releaseTvFocus(clearFn: () => void) {
  if (activeClearFocusFn === clearFn) {
    activeClearFocusFn = null;
    activeFocusNodeTag = null;
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
    DeviceEventEmitter.addListener("novaTvFocusChanged", (evt: any) => {
      const nextTag = typeof evt?.viewTag === "number" ? evt.viewTag : null;
      if (activeClearFocusFn && (nextTag === null || activeFocusNodeTag === null || nextTag !== activeFocusNodeTag)) {
        const fn = activeClearFocusFn;
        activeClearFocusFn = null;
        activeFocusNodeTag = null;
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

/**
 * True when Android MainActivity's native GPU foreground focus ring is actively
 * drawing the single yellow TV focus outline. When active, JS must NOT draw a
 * second yellow border or double-scroll horizontal rails.
 */
export function isNativeTvRingActive(): boolean {
  ensureTvOverrideHydrated();
  if (Platform.OS !== "android") return false;
  if (currentTvOverride === "off") return false;
  return hardwareDpadDetected || detectAndroidTvHardware();
}

function subscribeTvStore(listener: () => void): () => void {
  tvListeners.add(listener);
  return () => {
    tvListeners.delete(listener);
  };
}

let lastAnyTvFocusAt = 0;

function getTvCombinedSnapshot(): number {
  const tvBit = isTvDevice() ? 1 : 0;
  const ringBit = isNativeTvRingActive() ? 2 : 0;
  return tvBit | ringBit;
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
  if (!focused || isNativeTvRingActive()) return {};
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
  itemVisiblePercentThreshold: 85,
};

/**
 * Scroll a virtualized list smoothly ONLY when D-pad focus moves to an item
 * that is partially or fully off-screen. Keeping already-visible items fixed
 * prevents horizontal row drift when moving vertically across poster rows on TV.
 */
export function useTvListFocusScroll<T>(
  listRef: React.RefObject<FlatList<T> | null>,
  viewPosition = 0.35,
) {
  const rafRef = React.useRef<number | null>(null);
  const lastIndexRef = React.useRef<number>(-1);
  const viewableSetRef = React.useRef<Set<number>>(new Set());
  const minViewableRef = React.useRef<number>(0);
  const maxViewableRef = React.useRef<number>(4);

  const onViewableItemsChanged = React.useRef(
    ({ viewableItems }: { viewableItems: Array<{ index: number | null; isViewable?: boolean }> }) => {
      const next = new Set<number>();
      let minIdx = Number.POSITIVE_INFINITY;
      let maxIdx = -1;
      for (const item of viewableItems) {
        if (typeof item.index === "number" && item.index >= 0) {
          next.add(item.index);
          if (item.index < minIdx) minIdx = item.index;
          if (item.index > maxIdx) maxIdx = item.index;
        }
      }
      if (next.size > 0) {
        viewableSetRef.current = next;
        minViewableRef.current = minIdx;
        maxViewableRef.current = maxIdx;
      }
    },
  ).current;

  React.useEffect(() => {
    return () => {
      if (rafRef.current !== null) {
        cancelAnimationFrame(rafRef.current);
      }
    };
  }, []);

  const scrollToFocusedIndex = React.useCallback((index: number) => {
    if (isNativeTvRingActive()) return;
    if (!listRef?.current || typeof index !== "number" || index < 0) return;

    const prevIndex = lastIndexRef.current;
    lastIndexRef.current = index;

    // Never scroll horizontally if the focused card is already fully visible!
    const viewable = viewableSetRef.current;
    if (viewable.size > 0) {
      if (viewable.has(index)) return;
    } else if (index <= 3) {
      return;
    }

    if (prevIndex === index) return;

    // Scroll minimally toward the revealed edge instead of violently re-centering
    let edgePosition = viewPosition;
    if (viewable.size > 0) {
      if (index > maxViewableRef.current) edgePosition = 0.85;
      else if (index < minViewableRef.current) edgePosition = 0.12;
    }

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
          viewPosition: edgePosition,
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
    onViewableItemsChanged,
    viewabilityConfig: TV_FOCUS_VIEWABILITY_CONFIG,
    scrollToFocusedIndex,
  };
}

type TvPressableState = PressableStateCallbackType & { focused: boolean };

type TvPressableProps = Omit<PressableProps, "style"> & {
  style?: StyleProp<ViewStyle> | ((state: TvPressableState) => StyleProp<ViewStyle>);
  nativeFocusOnly?: boolean;
  onKeyDown?: (event: any) => void;
  nextFocusUp?: number;
  nextFocusDown?: number;
  nextFocusLeft?: number;
  nextFocusRight?: number;
};

export const TvPressable = React.forwardRef<View, TvPressableProps>(function TvPressable(
  {
    style,
    children,
    nativeFocusOnly = false,
    hasTVPreferredFocus = false,
    focusable,
    onFocus,
    onBlur,
    ...props
  }: TvPressableProps,
  ref: React.ForwardedRef<View>,
) {
  const tvFlags = React.useSyncExternalStore(subscribeTvStore, getTvCombinedSnapshot, getTvCombinedSnapshot);
  const tv = (tvFlags & 1) !== 0;
  const nativeRing = (tvFlags & 2) !== 0;
  const needsJsFocusState = !nativeRing || (!nativeFocusOnly && (typeof style === "function" || typeof children === "function"));
  const [focused, setFocused] = React.useState<boolean>(false);
  const innerRef = React.useRef<View | null>(null);
  const nodeTagRef = React.useRef<number | null>(null);
  const focusedRef = React.useRef(false);
  const mountedAtRef = React.useRef<number>(Date.now());

  const clearSelfFocus = React.useCallback(() => {
    focusedRef.current = false;
    setFocused((prev) => (prev ? false : prev));
  }, []);

  const setCombinedRef = React.useCallback(
    (node: View | null) => {
      if (innerRef.current !== node) {
        innerRef.current = node;
        nodeTagRef.current = null;
      }
      if (typeof ref === "function") {
        ref(node);
      } else if (ref) {
        (ref as React.MutableRefObject<View | null>).current = node;
      }
    },
    [ref],
  );

  React.useEffect(() => {
    return () => {
      releaseTvFocus(clearSelfFocus);
    };
  }, [clearSelfFocus]);

  const isDisabled = Boolean(props.disabled);

  React.useEffect(() => {
    if (!tv || !hasTVPreferredFocus || isDisabled) return;
    const t1 = setTimeout(() => {
      if (focusedRef.current) return;
      // Do not hijack focus if user already navigated elsewhere after this component mounted.
      if (lastAnyTvFocusAt > mountedAtRef.current) return;
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
        focusedRef.current = true;
        lastAnyTvFocusAt = Date.now();
        if (needsJsFocusState) {
          if (nodeTagRef.current === null && innerRef.current) {
            nodeTagRef.current = findNodeHandle(innerRef.current);
          }
          claimTvFocus(clearSelfFocus, nodeTagRef.current);
          setFocused(true);
        }
        onFocus?.(event);
      }}
      onBlur={(event: any) => {
        focusedRef.current = false;
        if (needsJsFocusState) {
          releaseTvFocus(clearSelfFocus);
          setFocused(false);
        }
        onBlur?.(event);
      }}
      style={(state: PressableStateCallbackType) => {
        if (!tv) {
          const baseStyle = typeof style === "function" ? style({ ...state, focused: false } as any) : style;
          return state.pressed ? [baseStyle, { opacity: 0.85 }] : baseStyle;
        }
        // Strictly use tracked focus state (never stale RN state.focused) to prevent duplicate rings
        const isFocused = needsJsFocusState ? focused : false;
        const baseStyle = typeof style === "function" ? style({ ...state, focused: isFocused }) : style;
        if (nativeRing) {
          return state.pressed ? [baseStyle, { opacity: 0.85 }] : baseStyle;
        }
        return [
          { borderWidth: 1.5, borderColor: "transparent" },
          baseStyle,
          isFocused && tvFocusStyle(true),
          state.pressed && { opacity: 0.85 },
        ];
      }}
    >
      {typeof children === "function"
        ? (state: PressableStateCallbackType) =>
            (children as any)({
              ...state,
              focused: tv ? focused : false,
            })
        : children}
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
  const deviceScale = React.useMemo(() => getDeviceScale(width, height), [width, height]);
  const size = React.useCallback(
    (phoneValue: number, tvValue?: number) => responsiveScale(phoneValue, width, tv, tvValue),
    [width, tv],
  );

  return React.useMemo(
    () => ({
      width,
      height,
      tv,
      isTablet,
      deviceScale,
      size,
      horizontalPadding: size(16, 28),
      controlTarget: size(40, 48),
    }),
    [width, height, tv, isTablet, deviceScale, size],
  );
}

export const tvReadable = {
  title: { fontSize: 24, lineHeight: 32 },
  body: { fontSize: 16, lineHeight: 24 },
  small: { fontSize: 14, lineHeight: 20 },
  button: { minHeight: 50, paddingHorizontal: 20, paddingVertical: 12 },
};
