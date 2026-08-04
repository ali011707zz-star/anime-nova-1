/**
 * Nova Download Manager — Global Singleton
 * يدير تنزيل حلقات الأنمي بشكل مستقل عن lifecycle أي شاشة.
 * التنزيل يستمر عند التنقل بين الشاشات.
 */
import * as FileSystem from "expo-file-system";
import AsyncStorage from "@react-native-async-storage/async-storage";

const DOWNLOADS_KEY = "nova-downloads-v2";
const DOWNLOADS_DIR = (FileSystem.documentDirectory ?? "") + "nova-downloads/";

// ── Types ──────────────────────────────────────────────────────────────────

export interface DownloadItem {
  id: string;                   // "{animeId}_ep{ep}"
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  localPath: string;
  subtitleLocalPath?: string;   // ترجمة محفوظة محلياً (KW وغيرها)
  fileSize: number;             // bytes
  downloadedAt: number;
}

export interface ActiveDownload {
  id: string;
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  progress: number;     // 0-1
  bytesWritten: number;
  totalBytes: number;
  status: "downloading" | "error";
  cancelFn: () => void;
}

// ── Helpers ────────────────────────────────────────────────────────────────

export function makeDownloadId(animeId: number, ep: number): string {
  return `${animeId}_ep${ep}`;
}

export function formatFileSize(bytes: number): string {
  if (!bytes || bytes <= 0) return "—";
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(0)} كيلوبايت`;
  if (bytes < 1024 * 1024 * 1024) return `${(bytes / (1024 * 1024)).toFixed(1)} ميجابايت`;
  return `${(bytes / (1024 * 1024 * 1024)).toFixed(2)} جيجابايت`;
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
      await saveDownloads(items.filter(i => i.id !== item.id));
      return null;
    }
    return item;
  } catch {
    return null;
  }
}

/** حذف تنزيل (الملف + الترجمة + السجل) */
export async function deleteDownload(item: DownloadItem): Promise<void> {
  try { await FileSystem.deleteAsync(item.localPath, { idempotent: true }); } catch {}
  if (item.subtitleLocalPath) {
    try { await FileSystem.deleteAsync(item.subtitleLocalPath, { idempotent: true }); } catch {}
  }
  const items = await getDownloads();
  await saveDownloads(items.filter(i => i.id !== item.id));
}

/** حذف كل التنزيلات */
export async function clearAllDownloads(): Promise<void> {
  const items = await getDownloads();
  await Promise.allSettled(
    items.flatMap(item => [
      FileSystem.deleteAsync(item.localPath, { idempotent: true }),
      item.subtitleLocalPath
        ? FileSystem.deleteAsync(item.subtitleLocalPath, { idempotent: true })
        : Promise.resolve(),
    ])
  );
  await AsyncStorage.removeItem(DOWNLOADS_KEY);
}

// ── Global Active Downloads Singleton ─────────────────────────────────────
// يعيش طوال جلسة التطبيق — مستقل عن lifecycle أي component أو شاشة.

const _active = new Map<string, ActiveDownload>();
type Listener = () => void;
const _listeners = new Set<Listener>();

function _notify() {
  _listeners.forEach(fn => { try { fn(); } catch {} });
}

/** اشترك في تحديثات التنزيلات الجارية — يُعيد دالة إلغاء الاشتراك */
export function subscribeActiveDownloads(fn: Listener): () => void {
  _listeners.add(fn);
  return () => _listeners.delete(fn);
}

/** قراءة لحظية للتنزيلات الجارية */
export function getActiveDownloadsSnapshot(): ActiveDownload[] {
  return Array.from(_active.values());
}

/** هل هذه الحلقة تُحمَّل الآن؟ */
export function getActiveDownload(animeId: number, ep: number): ActiveDownload | null {
  return _active.get(makeDownloadId(animeId, ep)) ?? null;
}

/** هل هذا الموقع يُحمَّل الآن لهذه الحلقة؟ */
export function getActiveSiteDownload(animeId: number, ep: number, site: string): ActiveDownload | null {
  const d = _active.get(makeDownloadId(animeId, ep));
  return (d && d.site === site) ? d : null;
}

/** إلغاء تنزيل جارٍ بالمعرّف */
export function cancelActiveDownload(id: string): void {
  const d = _active.get(id);
  if (d) {
    d.cancelFn();
    _active.delete(id);
    _notify();
  }
}

/**
 * بدء تنزيل في الخلفية — يستمر عند التنقل بين الشاشات.
 * تنزيل واحد فقط لكل حلقة في وقت واحد (الجديد يلغي القديم).
 * يُنزِّل الترجمة تلقائياً بعد الفيديو إذا توفّر subtitleUrl.
 */
export async function startGlobalDownload(params: {
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  url: string;
  authToken?: string | null;
  subtitleUrl?: string;
}): Promise<void> {
  await ensureDownloadsDir();

  const id = makeDownloadId(params.animeId, params.ep);
  const localPath = DOWNLOADS_DIR + id + ".mp4";

  // ألغِ أي تنزيل سابق لنفس الحلقة
  cancelActiveDownload(id);
  try { await FileSystem.deleteAsync(localPath, { idempotent: true }); } catch {}

  let aborted = false;
  const reqHeaders: Record<string, string> = {
    "X-Nova-Client": "nova-anime-mobile-v1",
    "User-Agent": "NovaAnime/1.0 (Expo; Mobile)",
  };
  if (params.authToken) reqHeaders["X-App-Token"] = params.authToken;

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
      const entry = _active.get(id);
      if (entry) {
        entry.progress = pct;
        entry.bytesWritten = totalBytesWritten;
        entry.totalBytes = totalBytesExpectedToWrite;
        _notify();
      }
    }
  );

  const cancelFn = () => {
    aborted = true;
    resumable.cancelAsync().catch(() => {});
    FileSystem.deleteAsync(localPath, { idempotent: true }).catch(() => {});
  };

  _active.set(id, {
    id,
    animeId: params.animeId,
    ep: params.ep,
    title: params.title,
    cover: params.cover,
    site: params.site,
    quality: params.quality,
    progress: 0,
    bytesWritten: 0,
    totalBytes: 0,
    status: "downloading",
    cancelFn,
  });
  _notify();

  // تشغيل بشكل غير متزامن — لا يوقف التنقل بين الشاشات
  (async () => {
    try {
      const result = await resumable.downloadAsync();
      if (aborted) return;

      if (!result || result.status < 200 || result.status >= 300) {
        throw new Error(`فشل التنزيل (${result?.status ?? "?"})`);
      }

      // تنزيل الترجمة إذا توفّرت (KW وغيرها)
      let subtitleLocalPath: string | undefined;
      if (params.subtitleUrl) {
        const subPath = DOWNLOADS_DIR + id + ".vtt";
        try {
          const subRes = await FileSystem.downloadAsync(params.subtitleUrl, subPath, {});
          if (subRes.status >= 200 && subRes.status < 300) {
            subtitleLocalPath = subPath;
          }
        } catch {}
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
        subtitleLocalPath,
        fileSize,
        downloadedAt: Date.now(),
      };

      const existing = await getDownloads();
      await saveDownloads([...existing.filter(i => i.id !== id), item]);

      _active.delete(id);
      _notify();
    } catch (e: any) {
      if (aborted) {
        _active.delete(id);
        _notify();
        return;
      }
      const entry = _active.get(id);
      if (entry) {
        entry.status = "error";
        _notify();
      }
      // إزالة بعد 3 ثوانٍ للسماح لـ UI بإظهار رسالة الخطأ
      setTimeout(() => {
        _active.delete(id);
        _notify();
      }, 3000);
    }
  })();
}
