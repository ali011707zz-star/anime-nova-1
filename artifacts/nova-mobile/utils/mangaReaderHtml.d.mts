import type {
  EffectiveReadingMode,
  MangaReaderGlobalSettings,
} from "./mangaReaderSettings.mjs";

export interface MangaReaderPageItem {
  url: string;
  width?: number;
  height?: number;
}

export interface BuildMangaReaderHtmlOptions {
  pages: Array<string | MangaReaderPageItem>;
  chapterLabel?: string;
  nextChapterLabel?: string | null;
  apiBase?: string;
  settings?: MangaReaderGlobalSettings;
  effectiveMode?: EffectiveReadingMode;
  initialPage?: number;
}

export interface BuildThemedTextReaderHtmlOptions {
  contentHtml: string;
  chapterLabel?: string;
  nextChapterLabel?: string | null;
  settings?: MangaReaderGlobalSettings;
}

export declare function buildMangaReaderHtml(options: BuildMangaReaderHtmlOptions): string;
export declare function buildThemedTextReaderHtml(options: BuildThemedTextReaderHtmlOptions): string;
export declare function buildApplyReaderSettingsScript(
  settings: MangaReaderGlobalSettings,
  effectiveMode: EffectiveReadingMode,
): string;
export declare function buildReloadReaderPageScript(pageNumber: number): string;
export declare function buildScrollReaderScript(direction: "up" | "down"): string;
