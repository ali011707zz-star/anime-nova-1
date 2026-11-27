export type ReadingMode =
  | "default"
  | "webtoon"
  | "continuous_vertical"
  | "rtl"
  | "ltr"
  | "vertical"
  | "continuous_rtl"
  | "continuous_ltr";

export type EffectiveReadingMode = Exclude<ReadingMode, "default">;

export type ReaderRotation = "free" | "locked" | "portrait" | "landscape";

export type ReaderBackground = "black" | "gray" | "white";

export type SidePaddingPercent = 0 | 10 | 15 | 20 | 25;

export interface MangaReaderGlobalSettings {
  rotation: ReaderRotation;
  background: ReaderBackground;
  showPageNumber: boolean;
  fullscreen: boolean;
  keepScreenOn: boolean;
  longPressInfo: boolean;
  color32Bit: boolean;
  cropBorders: boolean;
  sidePadding: SidePaddingPercent;
}

export interface ReaderThemePalette {
  bg: string;
  surface: string;
  surfaceElevated: string;
  chromeBg: string;
  text: string;
  muted: string;
  border: string;
  spinnerTrack: string;
  accent: string;
  accentText: string;
  badgeBg: string;
  badgeText: string;
  badgeBorder: string;
  isLight: boolean;
}

export interface ReadingModeMetaItem {
  value: ReadingMode;
  label: string;
  shortDesc: string;
  icon: string;
}

export interface RotationMetaItem {
  value: ReaderRotation;
  label: string;
  icon: string;
}

export interface BackgroundMetaItem {
  value: ReaderBackground;
  label: string;
  swatch: string;
  ring: string;
}

export declare const MANGA_READER_SETTINGS_KEY: string;
export declare const MANGA_READER_MODES_KEY: string;
export declare const MAX_SAVED_MANGA_MODES: number;
export declare const READING_MODES: readonly ReadingMode[];
export declare const MANHWA_SUPPORTED_READING_MODES: readonly ReadingMode[];
export declare const ROTATION_MODES: readonly ReaderRotation[];
export declare const BACKGROUND_MODES: readonly ReaderBackground[];
export declare const SIDE_PADDING_OPTIONS: readonly SidePaddingPercent[];
export declare const DEFAULT_GLOBAL_READER_SETTINGS: Readonly<MangaReaderGlobalSettings>;
export declare const READING_MODE_META: readonly ReadingModeMetaItem[];
export declare const ROTATION_META: readonly RotationMetaItem[];
export declare const BACKGROUND_META: readonly BackgroundMetaItem[];

export declare function isManhwaWork(
  source?: string | null,
  countryOfOrigin?: string | null,
): boolean;
export declare function isReadingModeAllowedForWork(
  mode: string,
  source?: string | null,
  countryOfOrigin?: string | null,
): boolean;
export declare function resolveEffectiveReadingMode(
  selectedMode?: string | null,
  source?: string | null,
  countryOfOrigin?: string | null,
): EffectiveReadingMode;

export declare function isPagedReadingMode(mode: string): boolean;
export declare function isHorizontalReadingMode(mode: string): boolean;
export declare function isVerticalStripMode(mode: string): boolean;
export declare function getReadingModeLabel(mode: string): string;
export declare function getReaderThemePalette(background: ReaderBackground): ReaderThemePalette;
export declare function sanitizeGlobalReaderSettings(raw: unknown): MangaReaderGlobalSettings;
export declare function sanitizePerMangaReadingModes(raw: unknown): Record<string, ReadingMode>;
export declare function updatePerMangaReadingModesMap(
  currentMap: Record<string, ReadingMode>,
  mangaKey: string,
  nextMode: ReadingMode,
): Record<string, ReadingMode>;
export declare function getReaderLayoutFamily(effectiveMode: EffectiveReadingMode): string;
