import AsyncStorage from "@react-native-async-storage/async-storage";
import {
  DEFAULT_GLOBAL_READER_SETTINGS,
  MANGA_READER_MODES_KEY,
  MANGA_READER_SETTINGS_KEY,
  type MangaReaderGlobalSettings,
  type ReadingMode,
  sanitizeGlobalReaderSettings,
  sanitizePerMangaReadingModes,
  updatePerMangaReadingModesMap,
} from "./mangaReaderSettings.mjs";

export async function loadGlobalReaderSettings(): Promise<MangaReaderGlobalSettings> {
  try {
    const raw = await AsyncStorage.getItem(MANGA_READER_SETTINGS_KEY);
    if (!raw) return { ...DEFAULT_GLOBAL_READER_SETTINGS };
    return sanitizeGlobalReaderSettings(JSON.parse(raw));
  } catch {
    return { ...DEFAULT_GLOBAL_READER_SETTINGS };
  }
}

export async function saveGlobalReaderSettings(
  settings: MangaReaderGlobalSettings,
): Promise<MangaReaderGlobalSettings> {
  const safe = sanitizeGlobalReaderSettings(settings);
  try {
    await AsyncStorage.setItem(MANGA_READER_SETTINGS_KEY, JSON.stringify(safe));
  } catch {
    // Ignore transient storage write errors
  }
  return safe;
}

export async function loadMangaReadingMode(mangaKey: string): Promise<ReadingMode> {
  const trimmed = String(mangaKey || "").trim();
  if (!trimmed) return "default";
  try {
    const raw = await AsyncStorage.getItem(MANGA_READER_MODES_KEY);
    if (!raw) return "default";
    const map = sanitizePerMangaReadingModes(JSON.parse(raw));
    return map[trimmed] || "default";
  } catch {
    return "default";
  }
}

export async function saveMangaReadingMode(
  mangaKey: string,
  mode: ReadingMode,
): Promise<ReadingMode> {
  const trimmed = String(mangaKey || "").trim();
  if (!trimmed) return "default";
  try {
    const raw = await AsyncStorage.getItem(MANGA_READER_MODES_KEY);
    const current = raw ? sanitizePerMangaReadingModes(JSON.parse(raw)) : {};
    const updated = updatePerMangaReadingModesMap(current, trimmed, mode);
    await AsyncStorage.setItem(MANGA_READER_MODES_KEY, JSON.stringify(updated));
    return updated[trimmed] || "default";
  } catch {
    return mode;
  }
}
