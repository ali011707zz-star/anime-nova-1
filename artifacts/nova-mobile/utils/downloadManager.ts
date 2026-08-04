/**
 * Nova Download Manager
 * يدير تنزيل حلقات الأنمي وتخزينها محلياً للمشاهدة بدون إنترنت.
 */
import * as FileSystem from "expo-file-system";
import AsyncStorage from "@react-native-async-storage/async-storage";

const DOWNLOADS_KEY = "nova-downloads-v2";
const DOWNLOADS_DIR = (FileSystem.documentDirectory ?? "") + "nova-downloads/";

// ── Types ──────────────────────────────────────────────────────────────────

export interface DownloadItem {
  id: string;           // "{animeId}_ep{ep}"
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  localPath: string;
  fileSize: number;     // bytes
  downloadedAt: number;
}

export interface DownloadProgress {
  id: string;
  progress: number;     // 0-1
  bytesWritten: number;
  totalBytes: number;
}

// ── Helpers ────────────────────────────────────────────────────────────────

export function makeDownloadId(animeId: number, ep: number): string {
  return `${animeId}_ep${ep}`;
}

export function formatFileSize(bytes: number): string {
  if (!bytes || bytes <= 0) return "—";
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(0)} KB`;
  if (bytes < 1024 * 1024 * 1024) return `${(bytes / (1024 * 1024)).toFixed(1)} MB`;
  return `${(bytes / (1024 * 1024 * 1024)).toFixed(2)} GB`;
}

// ── Directory ──────────────────────────────────────────────────────────────

export async function ensureDownloadsDir(): Promise<void> {
  try {
    const info = await FileSystem.getInfoAsync(DOWNLOADS_DIR);
    if (!info.exists) {
      await FileSystem.makeDirectoryAsync(DOWNLOADS_DIR, { intermediates: true });
    }
  } catch {}
}

// ── Storage helpers ────────────────────────────────────────────────────────

export async function getDownloads(): Promise<DownloadItem[]> {
  try {
    const raw = await AsyncStorage.getItem(DOWNLOADS_KEY);
    if (!raw) return [];
    return JSON.parse(raw) as DownloadItem[];
  } catch {
    return [];
  }
}

async function saveDownloads(items: DownloadItem[]): Promise<void> {
  await AsyncStorage.setItem(DOWNLOADS_KEY, JSON.stringify(items));
}

// ── Public API ─────────────────────────────────────────────────────────────

/** هل الحلقة محمّلة؟ يتحقق من وجود الملف فعلياً. */
export async function isDownloaded(animeId: number, ep: number): Promise<DownloadItem | null> {
  try {
    const items = await getDownloads();
    const item = items.find(i => i.id === makeDownloadId(animeId, ep));
    if (!item) return null;
    const info = await FileSystem.getInfoAsync(item.localPath);
    if (!info.exists) {
      // ملف مفقود — نظّف السجل
      await saveDownloads(items.filter(i => i.id !== item.id));
      return null;
    }
    return item;
  } catch {
    return null;
  }
}

/** حذف تنزيل (الملف + السجل) */
export async function deleteDownload(item: DownloadItem): Promise<void> {
  try {
    await FileSystem.deleteAsync(item.localPath, { idempotent: true });
  } catch {}
  const items = await getDownloads();
  await saveDownloads(items.filter(i => i.id !== item.id));
}

/**
 * بدء تنزيل حلقة.
 * يستخدم FileSystem.createDownloadResumable للحصول على تقدم مباشر.
 * يُلقي خطأ إذا فشل التنزيل.
 */
export async function startDownload(
  params: {
    animeId: number;
    ep: number;
    title: string;
    cover: string;
    site: string;
    quality: string;
    url: string;               // رابط الفيديو (عبر VPS proxy)
    authToken?: string | null; // X-App-Token
  },
  onProgress: (p: DownloadProgress) => void,
  signal?: AbortSignal
): Promise<DownloadItem> {
  await ensureDownloadsDir();

  const id = makeDownloadId(params.animeId, params.ep);
  const localPath = DOWNLOADS_DIR + id + ".mp4";

  // احذف ملفاً قديماً إن وُجد
  try { await FileSystem.deleteAsync(localPath, { idempotent: true }); } catch {}

  const reqHeaders: Record<string, string> = {
    "X-Nova-Client": "nova-anime-mobile-v1",
    "User-Agent": "NovaAnime/1.0 (Expo; Mobile)",
  };
  if (params.authToken) reqHeaders["X-App-Token"] = params.authToken;

  let aborted = false;
  signal?.addEventListener("abort", () => { aborted = true; });

  const resumable = FileSystem.createDownloadResumable(
    params.url,
    localPath,
    { headers: reqHeaders },
    (progress) => {
      if (aborted) return;
      const { totalBytesWritten, totalBytesExpectedToWrite } = progress;
      const pct = totalBytesExpectedToWrite > 0
        ? Math.min(totalBytesWritten / totalBytesExpectedToWrite, 1)
        : 0;
      onProgress({ id, progress: pct, bytesWritten: totalBytesWritten, totalBytes: totalBytesExpectedToWrite });
    }
  );

  // إذا أُلغي قبل البدء
  if (aborted) {
    try { await FileSystem.deleteAsync(localPath, { idempotent: true }); } catch {}
    throw new DOMException("Download aborted", "AbortError");
  }

  const result = await resumable.downloadAsync();

  if (aborted) {
    try { await FileSystem.deleteAsync(localPath, { idempotent: true }); } catch {}
    throw new DOMException("Download aborted", "AbortError");
  }

  if (!result || result.status < 200 || result.status >= 300) {
    try { await FileSystem.deleteAsync(localPath, { idempotent: true }); } catch {}
    throw new Error(`فشل التنزيل (${result?.status ?? "?"})`);
  }

  // قياس حجم الملف
  let fileSize = 0;
  try {
    const fi = await FileSystem.getInfoAsync(localPath, { size: true });
    if (fi.exists) fileSize = (fi as any).size ?? 0;
  } catch {}

  const item: DownloadItem = {
    id,
    animeId: params.animeId,
    ep: params.ep,
    title: params.title,
    cover: params.cover,
    site: params.site,
    quality: params.quality,
    localPath,
    fileSize,
    downloadedAt: Date.now(),
  };

  const existing = await getDownloads();
  await saveDownloads([...existing.filter(i => i.id !== id), item]);

  return item;
}

/** حذف كل التنزيلات */
export async function clearAllDownloads(): Promise<void> {
  const items = await getDownloads();
  await Promise.allSettled(
    items.map(item => FileSystem.deleteAsync(item.localPath, { idempotent: true }))
  );
  await AsyncStorage.removeItem(DOWNLOADS_KEY);
}
