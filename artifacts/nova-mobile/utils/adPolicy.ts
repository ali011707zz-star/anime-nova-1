import AsyncStorage from "@react-native-async-storage/async-storage";

const DOWNLOAD_COUNT_KEY = "nova-ads-download-count-v1";
const WATCH_ACCESS_KEY = "nova-ads-watch-access-until-v1";
const DOWNLOAD_LIMIT = 4;
const WATCH_ACCESS_MS = 60 * 60 * 1000;

let downloadCount = 0;
let hydrated = false;
let hydratePromise: Promise<void> | null = null;
const listeners = new Set<(count: number) => void>();

async function hydrate(): Promise<void> {
  if (hydrated) return;
  if (!hydratePromise) {
    hydratePromise = AsyncStorage.getItem(DOWNLOAD_COUNT_KEY)
      .then((raw) => {
        const parsed = Number(raw);
        downloadCount = Number.isFinite(parsed) ? Math.max(0, Math.min(parsed, DOWNLOAD_LIMIT)) : 0;
        hydrated = true;
      })
      .catch(() => {
        hydrated = true;
      });
  }
  await hydratePromise;
}

export async function getDownloadAdCount(): Promise<number> {
  await hydrate();
  return downloadCount;
}

export function subscribeDownloadAdCount(listener: (count: number) => void): () => void {
  listeners.add(listener);
  void getDownloadAdCount().then(listener);
  return () => listeners.delete(listener);
}

/** Called only after DownloadResumable has saved a non-empty completed file. */
export async function recordSuccessfulDownload(): Promise<number> {
  await hydrate();
  downloadCount = Math.min(DOWNLOAD_LIMIT, downloadCount + 1);
  await AsyncStorage.setItem(DOWNLOAD_COUNT_KEY, String(downloadCount)).catch(() => {});
  listeners.forEach((listener) => listener(downloadCount));
  return downloadCount;
}

export async function resetDownloadAdCount(): Promise<void> {
  downloadCount = 0;
  hydrated = true;
  await AsyncStorage.setItem(DOWNLOAD_COUNT_KEY, "0").catch(() => {});
  listeners.forEach((listener) => listener(0));
}

export async function hasWatchAccess(): Promise<boolean> {
  const raw = await AsyncStorage.getItem(WATCH_ACCESS_KEY).catch(() => null);
  const until = Number(raw);
  return Number.isFinite(until) && until > Date.now();
}

export async function grantWatchAccess(): Promise<number> {
  const until = Date.now() + WATCH_ACCESS_MS;
  await AsyncStorage.setItem(WATCH_ACCESS_KEY, String(until)).catch(() => {});
  return until;
}

export { DOWNLOAD_LIMIT, WATCH_ACCESS_MS };