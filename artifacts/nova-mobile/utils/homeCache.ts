import AsyncStorage from "@react-native-async-storage/async-storage";

export const HOME_CACHE_STORAGE_KEY = "nova-home-cache-v1";
export const HOME_CACHE_TTL_MS = 7 * 24 * 60 * 60 * 1000;

export type HomeCacheKey = "primary" | "secondary" | "latest" | "dubbed" | "awDubbed";

export type HomeCacheEntry = {
  savedAt: number;
  data: unknown;
};

export type HomeCacheSnapshot = {
  version: 1;
  entries: Partial<Record<HomeCacheKey, HomeCacheEntry>>;
};

const CACHE_KEYS: HomeCacheKey[] = ["primary", "secondary", "latest", "dubbed", "awDubbed"];
const FUTURE_CLOCK_TOLERANCE_MS = 5 * 60 * 1000;

export function emptyHomeCache(): HomeCacheSnapshot {
  return { version: 1, entries: {} };
}

function isRecord(value: unknown): value is Record<string, unknown> {
  return !!value && typeof value === "object" && !Array.isArray(value);
}

let writeQueue: Promise<void> = Promise.resolve();

export async function readHomeCache(now = Date.now()): Promise<HomeCacheSnapshot> {
  let raw: string | null = null;
  try {
    raw = await AsyncStorage.getItem(HOME_CACHE_STORAGE_KEY);
    if (!raw) return emptyHomeCache();

    const parsed: unknown = JSON.parse(raw);
    if (!isRecord(parsed) || parsed.version !== 1 || !isRecord(parsed.entries)) {
      await AsyncStorage.removeItem(HOME_CACHE_STORAGE_KEY).catch(() => {});
      return emptyHomeCache();
    }

    const entries: HomeCacheSnapshot["entries"] = {};
    const source = parsed.entries;
    for (const key of CACHE_KEYS) {
      const candidate = source[key];
      if (!isRecord(candidate) || !("data" in candidate)) continue;
      const savedAt = Number(candidate.savedAt);
      const age = now - savedAt;
      if (
        !Number.isFinite(savedAt) ||
        savedAt <= 0 ||
        age < -FUTURE_CLOCK_TOLERANCE_MS ||
        age > HOME_CACHE_TTL_MS ||
        candidate.data == null
      ) {
        continue;
      }
      entries[key] = { savedAt, data: candidate.data };
    }

    const snapshot: HomeCacheSnapshot = { version: 1, entries };
    const validCount = Object.keys(entries).length;
    const sourceCount = Object.keys(source).length;
    if (validCount !== sourceCount) {
      if (validCount > 0) {
        await AsyncStorage.setItem(HOME_CACHE_STORAGE_KEY, JSON.stringify(snapshot)).catch(() => {});
      } else {
        await AsyncStorage.removeItem(HOME_CACHE_STORAGE_KEY).catch(() => {});
      }
    }
    return snapshot;
  } catch {
    return emptyHomeCache();
  }
}

export function writeHomeCache(snapshot: HomeCacheSnapshot): Promise<void> {
  const serialized = JSON.stringify(snapshot);
  writeQueue = writeQueue
    .catch(() => {})
    .then(() => AsyncStorage.setItem(HOME_CACHE_STORAGE_KEY, serialized));
  return writeQueue;
}