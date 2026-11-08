import fs from "node:fs";
import path from "node:path";
import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";

// Storage path on disk (works in container and VPS)
const DATA_DIR = path.resolve(process.cwd(), "src/data");
const DISK_FILE = path.join(DATA_DIR, "episode_titles_ar.json");

// In-memory cache for ultra-fast <1ms lookups
// key: `${malId}:${anilistId}:${page}` -> Map<number, string> (epNum -> title_ar)
const memoryStore = new Map<string, Map<number, string>>();

// Translation dictionary for individual episode titles (English -> Arabic)
const translationDict = new Map<string, string>();

let isHydrated = false;

function ensureDataDir(): void {
  try {
    if (!fs.existsSync(DATA_DIR)) {
      fs.mkdirSync(DATA_DIR, { recursive: true });
    }
  } catch {}
}

function hydrateFromDisk(): void {
  if (isHydrated) return;
  isHydrated = true;
  ensureDataDir();

  try {
    if (fs.existsSync(DISK_FILE)) {
      const raw = fs.readFileSync(DISK_FILE, "utf8");
      const data = JSON.parse(raw);
      if (data && typeof data === "object") {
        if (data.shows && typeof data.shows === "object") {
          for (const [k, eps] of Object.entries(data.shows)) {
            if (eps && typeof eps === "object") {
              const epMap = new Map<number, string>();
              for (const [epNumStr, arTitle] of Object.entries(eps as Record<string, string>)) {
                const epNum = Number.parseInt(epNumStr, 10);
                if (epNum > 0 && typeof arTitle === "string" && arTitle.trim()) {
                  epMap.set(epNum, arTitle.trim());
                }
              }
              if (epMap.size > 0) {
                memoryStore.set(k, epMap);
              }
            }
          }
        }
        if (data.dict && typeof data.dict === "object") {
          for (const [en, ar] of Object.entries(data.dict as Record<string, string>)) {
            if (en && ar && typeof ar === "string") {
              translationDict.set(en.trim().toLowerCase(), ar.trim());
            }
          }
        }
      }
    }
  } catch (err: any) {
    console.warn("[episodeTitlesStore] hydrate error:", err?.message || err);
  }
}

let saveTimeout: NodeJS.Timeout | null = null;
function schedulePersistToDisk(): void {
  if (saveTimeout) return;
  saveTimeout = setTimeout(() => {
    saveTimeout = null;
    try {
      ensureDataDir();
      const serializableShows: Record<string, Record<string, string>> = {};
      for (const [k, epMap] of memoryStore.entries()) {
        const obj: Record<string, string> = {};
        for (const [epNum, arTitle] of epMap.entries()) {
          obj[String(epNum)] = arTitle;
        }
        serializableShows[k] = obj;
      }
      const serializableDict: Record<string, string> = {};
      for (const [en, ar] of translationDict.entries()) {
        serializableDict[en] = ar;
      }

      const tempFile = `${DISK_FILE}.tmp`;
      fs.writeFileSync(
        tempFile,
        JSON.stringify({ shows: serializableShows, dict: serializableDict }, null, 2),
        "utf8"
      );
      fs.renameSync(tempFile, DISK_FILE);
    } catch (err: any) {
      console.warn("[episodeTitlesStore] disk write error:", err?.message || err);
    }
  }, 1000);
}

function makeStoreKey(malId: number, anilistId: number, page: number): string {
  return `${malId || 0}:${anilistId || 0}:${page}`;
}

/**
 * Retrieve saved Arabic episode titles from memory, disk, or database.
 * If found, returns Map<episodeNumber, arabicTitle>.
 */
export async function getPersistentArabicTitles(
  malId: number,
  anilistId: number,
  page: number
): Promise<Map<number, string> | null> {
  hydrateFromDisk();

  const key = makeStoreKey(malId, anilistId, page);
  const mem = memoryStore.get(key);
  if (mem && mem.size > 0) {
    return mem;
  }

  // Fallback check: try alternate key if either malId or anilistId is 0
  if (malId > 0 && (!anilistId || anilistId === 0)) {
    for (const [k, map] of memoryStore.entries()) {
      if (k.startsWith(`${malId}:`) && k.endsWith(`:${page}`) && map.size > 0) {
        return map;
      }
    }
  }
  if (anilistId > 0 && (!malId || malId === 0)) {
    for (const [k, map] of memoryStore.entries()) {
      const parts = k.split(":");
      if (parts[1] === String(anilistId) && parts[2] === String(page) && map.size > 0) {
        return map;
      }
    }
  }

  // Check persistent database table (app_config)
  try {
    const dbKey = `ep_ar_v1:${key}`;
    const rows = await sbSelect<{ key: string; value: string }>(
      "app_config",
      { key: `eq.${dbKey}` },
      { limit: 1 }
    ).catch(() => []);
    if (rows && rows[0]?.value) {
      const parsed = JSON.parse(rows[0].value);
      if (parsed && typeof parsed === "object") {
        const epMap = new Map<number, string>();
        for (const [epNumStr, arTitle] of Object.entries(parsed as Record<string, string>)) {
          const epNum = Number.parseInt(epNumStr, 10);
          if (epNum > 0 && typeof arTitle === "string" && arTitle.trim()) {
            epMap.set(epNum, arTitle.trim());
          }
        }
        if (epMap.size > 0) {
          memoryStore.set(key, epMap);
          schedulePersistToDisk();
          return epMap;
        }
      }
    }
  } catch {}

  return null;
}

/**
 * Save newly translated or fetched Arabic episode titles permanently to
 * memory, disk, and the database so they are never translated again!
 */
export async function savePersistentArabicTitles(
  malId: number,
  anilistId: number,
  page: number,
  episodes: Array<{ episode: number; title_ar: string; title_en?: string }>
): Promise<void> {
  hydrateFromDisk();
  if (!episodes || episodes.length === 0) return;

  const key = makeStoreKey(malId, anilistId, page);
  let epMap = memoryStore.get(key);
  if (!epMap) {
    epMap = new Map<number, string>();
    memoryStore.set(key, epMap);
  }

  let hasNew = false;
  const dbPayload: Record<string, string> = {};

  for (const ep of episodes) {
    const epNum = ep.episode;
    const arTitle = String(ep.title_ar || "").trim();
    if (epNum > 0 && arTitle && /[\u0600-\u06FF]/.test(arTitle)) {
      epMap.set(epNum, arTitle);
      dbPayload[String(epNum)] = arTitle;
      hasNew = true;

      if (ep.title_en && typeof ep.title_en === "string") {
        const cleanEn = ep.title_en.trim().toLowerCase();
        if (cleanEn && cleanEn.length > 2) {
          translationDict.set(cleanEn, arTitle);
        }
      }
    }
  }

  if (hasNew) {
    schedulePersistToDisk();

    // Persist to database in background
    (async () => {
      try {
        const dbKey = `ep_ar_v1:${key}`;
        await sbUpsert(
          "app_config",
          {
            key: dbKey,
            value: JSON.stringify(dbPayload),
            updated_at: new Date().toISOString(),
          },
          "key"
        );
      } catch (err: any) {
        // Disk backup is already saved
      }
    })().catch(() => {});
  }
}

/**
 * Check if an English episode title was already translated in the past.
 */
export function getSavedTranslation(englishTitle: string): string | null {
  hydrateFromDisk();
  if (!englishTitle) return null;
  const norm = englishTitle.trim().toLowerCase();
  return translationDict.get(norm) || null;
}
