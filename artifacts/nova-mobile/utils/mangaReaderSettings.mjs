export const MANGA_READER_SETTINGS_KEY = "nova_manga_reader_settings_v1";
export const MANGA_READER_MODES_KEY = "nova_manga_reader_per_manga_modes_v1";
export const MAX_SAVED_MANGA_MODES = 250;

export const READING_MODES = [
  "default",
  "webtoon",
  "continuous_vertical",
  "rtl",
  "ltr",
  "vertical",
  "continuous_rtl",
  "continuous_ltr",
];

export const ROTATION_MODES = ["free", "locked", "portrait", "landscape"];

export const BACKGROUND_MODES = ["black", "gray", "white"];

export const SIDE_PADDING_OPTIONS = [0, 10, 15, 20, 25];

export const DEFAULT_GLOBAL_READER_SETTINGS = Object.freeze({
  rotation: "free",
  background: "black",
  showPageNumber: true,
  fullscreen: false,
  keepScreenOn: true,
  longPressInfo: true,
  color32Bit: true,
  cropBorders: false,
  sidePadding: 0,
});

export const READING_MODE_META = Object.freeze([
  {
    value: "default",
    label: "الافتراضي",
    shortDesc: "ويبتون للمانهوا، عمودي للمانجا",
    icon: "sparkles-outline",
  },
  {
    value: "webtoon",
    label: "ويبتون",
    shortDesc: "شريط متصل بلا فواصل للمانهوا",
    icon: "albums-outline",
  },
  {
    value: "continuous_vertical",
    label: "عمودي مستمر",
    shortDesc: "تمرير رأسي مع فاصل بين الصفحات",
    icon: "layers-outline",
  },
  {
    value: "rtl",
    label: "من اليمين لليسار",
    shortDesc: "صفحة بصفحة (مانجا يابانية)",
    icon: "arrow-back-circle-outline",
  },
  {
    value: "ltr",
    label: "من اليسار لليمين",
    shortDesc: "صفحة بصفحة (قراءة غربية)",
    icon: "arrow-forward-circle-outline",
  },
  {
    value: "vertical",
    label: "عمودياً",
    shortDesc: "صفحة كاملة مع تقليب رأسي",
    icon: "swap-vertical-outline",
  },
  {
    value: "continuous_rtl",
    label: "أفقي مستمر (RTL)",
    shortDesc: "تمرير أفقي متصل من اليمين لليسار",
    icon: "return-down-back-outline",
  },
  {
    value: "continuous_ltr",
    label: "أفقي مستمر (LTR)",
    shortDesc: "تمرير أفقي متصل من اليسار لليمين",
    icon: "return-down-forward-outline",
  },
]);

export const ROTATION_META = Object.freeze([
  { value: "free", label: "حر", icon: "sync-outline" },
  { value: "locked", label: "مغلق", icon: "lock-closed-outline" },
  { value: "portrait", label: "رأسي", icon: "phone-portrait-outline" },
  { value: "landscape", label: "أفقي", icon: "phone-landscape-outline" },
]);

export const BACKGROUND_META = Object.freeze([
  {
    value: "black",
    label: "أسود",
    swatch: "#050507",
    ring: "rgba(255,255,255,0.22)",
  },
  {
    value: "gray",
    label: "رمادي",
    swatch: "#24262B",
    ring: "rgba(255,255,255,0.28)",
  },
  {
    value: "white",
    label: "أبيض",
    swatch: "#F5F5F7",
    ring: "rgba(9,9,11,0.18)",
  },
]);

/**
 * Resolve the effective reading mode for a given manga/manhwa.
 * When set to "default":
 *  - Manhwa / Korean (KR) / Manhua (CN, TW) -> "webtoon" (seamless vertical strip)
 *  - Japanese Manga / other -> "continuous_vertical" (vertical scroll with page gap)
 */
export function resolveEffectiveReadingMode(selectedMode, source, countryOfOrigin) {
  if (
    typeof selectedMode === "string" &&
    selectedMode !== "default" &&
    READING_MODES.includes(selectedMode)
  ) {
    return selectedMode;
  }
  const normalizedCountry = String(countryOfOrigin || "").trim().toUpperCase();
  const isManhwaOrManhua =
    source === "manhwa" ||
    normalizedCountry === "KR" ||
    normalizedCountry === "CN" ||
    normalizedCountry === "TW";
  return isManhwaOrManhua ? "webtoon" : "continuous_vertical";
}

export function isPagedReadingMode(mode) {
  return mode === "rtl" || mode === "ltr" || mode === "vertical";
}

export function isHorizontalReadingMode(mode) {
  return (
    mode === "rtl" ||
    mode === "ltr" ||
    mode === "continuous_rtl" ||
    mode === "continuous_ltr"
  );
}

export function isVerticalStripMode(mode) {
  return mode === "webtoon" || mode === "continuous_vertical";
}

export function getReadingModeLabel(mode) {
  const found = READING_MODE_META.find((item) => item.value === mode);
  return found ? found.label : "ويبتون";
}

export function getReaderThemePalette(background) {
  if (background === "white") {
    return {
      bg: "#F5F5F7",
      surface: "#FFFFFF",
      surfaceElevated: "#ECEEF2",
      chromeBg: "rgba(248, 249, 251, 0.94)",
      text: "#111318",
      muted: "#5C6370",
      border: "rgba(17, 19, 24, 0.10)",
      spinnerTrack: "rgba(217, 119, 6, 0.22)",
      accent: "#D97706",
      accentText: "#FFFFFF",
      badgeBg: "rgba(17, 19, 24, 0.78)",
      badgeText: "#F9FAFB",
      badgeBorder: "rgba(255, 255, 255, 0.14)",
      isLight: true,
    };
  }
  if (background === "gray") {
    return {
      bg: "#24262B",
      surface: "#2C2F36",
      surfaceElevated: "#353942",
      chromeBg: "rgba(30, 32, 38, 0.95)",
      text: "#F4F4F5",
      muted: "#B4B9C4",
      border: "rgba(255, 255, 255, 0.10)",
      spinnerTrack: "rgba(245, 158, 11, 0.24)",
      accent: "#F59E0B",
      accentText: "#09090B",
      badgeBg: "rgba(12, 13, 17, 0.80)",
      badgeText: "#F4F4F5",
      badgeBorder: "rgba(255, 255, 255, 0.14)",
      isLight: false,
    };
  }
  return {
    bg: "#050507",
    surface: "#0B0C10",
    surfaceElevated: "#14161D",
    chromeBg: "rgba(9, 10, 14, 0.94)",
    text: "#F4F4F5",
    muted: "#9CA3AF",
    border: "rgba(255, 255, 255, 0.09)",
    spinnerTrack: "rgba(245, 158, 11, 0.22)",
    accent: "#F59E0B",
    accentText: "#09090B",
    badgeBg: "rgba(14, 16, 22, 0.84)",
    badgeText: "#F4F4F5",
    badgeBorder: "rgba(255, 255, 255, 0.14)",
    isLight: false,
  };
}

export function sanitizeGlobalReaderSettings(raw) {
  const input = raw && typeof raw === "object" ? raw : {};
  const rotation = ROTATION_MODES.includes(input.rotation)
    ? input.rotation
    : DEFAULT_GLOBAL_READER_SETTINGS.rotation;
  const background = BACKGROUND_MODES.includes(input.background)
    ? input.background
    : DEFAULT_GLOBAL_READER_SETTINGS.background;
  const parsedPadding = Number(input.sidePadding);
  const sidePadding = SIDE_PADDING_OPTIONS.includes(parsedPadding)
    ? parsedPadding
    : DEFAULT_GLOBAL_READER_SETTINGS.sidePadding;

  return {
    rotation,
    background,
    showPageNumber:
      typeof input.showPageNumber === "boolean"
        ? input.showPageNumber
        : DEFAULT_GLOBAL_READER_SETTINGS.showPageNumber,
    fullscreen:
      typeof input.fullscreen === "boolean"
        ? input.fullscreen
        : DEFAULT_GLOBAL_READER_SETTINGS.fullscreen,
    keepScreenOn:
      typeof input.keepScreenOn === "boolean"
        ? input.keepScreenOn
        : DEFAULT_GLOBAL_READER_SETTINGS.keepScreenOn,
    longPressInfo:
      typeof input.longPressInfo === "boolean"
        ? input.longPressInfo
        : DEFAULT_GLOBAL_READER_SETTINGS.longPressInfo,
    color32Bit:
      typeof input.color32Bit === "boolean"
        ? input.color32Bit
        : DEFAULT_GLOBAL_READER_SETTINGS.color32Bit,
    cropBorders:
      typeof input.cropBorders === "boolean"
        ? input.cropBorders
        : DEFAULT_GLOBAL_READER_SETTINGS.cropBorders,
    sidePadding,
  };
}

export function sanitizePerMangaReadingModes(raw) {
  if (!raw || typeof raw !== "object" || Array.isArray(raw)) {
    return {};
  }
  const clean = {};
  const entries = Object.entries(raw);
  const startIndex = Math.max(0, entries.length - MAX_SAVED_MANGA_MODES);
  for (let i = startIndex; i < entries.length; i++) {
    const [key, value] = entries[i];
    if (
      typeof key === "string" &&
      key.trim().length > 0 &&
      typeof value === "string" &&
      READING_MODES.includes(value) &&
      value !== "default"
    ) {
      clean[key.trim()] = value;
    }
  }
  return clean;
}

export function updatePerMangaReadingModesMap(currentMap, mangaKey, nextMode) {
  const safeMap = sanitizePerMangaReadingModes(currentMap);
  const trimmedKey = String(mangaKey || "").trim();
  if (!trimmedKey) return safeMap;

  const next = { ...safeMap };
  if (!nextMode || nextMode === "default" || !READING_MODES.includes(nextMode)) {
    delete next[trimmedKey];
    return next;
  }
  // Re-insert so recently modified manga stays at the tail (LRU eviction safety)
  delete next[trimmedKey];
  next[trimmedKey] = nextMode;
  return sanitizePerMangaReadingModes(next);
}

/**
 * Returns layout family used to determine whether switching modes requires
 * rebuilding the WebView DOM or can update in-place via CSS/JS.
 */
export function getReaderLayoutFamily(effectiveMode) {
  if (isPagedReadingMode(effectiveMode)) return `paged:${effectiveMode}`;
  if (effectiveMode === "continuous_rtl" || effectiveMode === "continuous_ltr") {
    return `hstrip:${effectiveMode}`;
  }
  return "vstrip";
}
