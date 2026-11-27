/**
 * Nova Download Service
 *
 * The download task deliberately lives outside React screens.  DownloadResumable
 * uses the background file-system session, while the small persisted record lets
 * the service rebuild the task after the app is opened again.
 */
import { AppState, Platform } from "react-native";
import * as FileSystem from "expo-file-system";
import * as MediaLibrary from "expo-media-library";
import * as Notifications from "expo-notifications";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import { recordSuccessfulDownload } from "./adPolicy";
import { getBaseUrl } from "./baseUrl";
import { getAuthToken, getDownloadToken } from "./secureApi";
import {
  collectExternalSubtitleCandidates,
  extractSubtitleTracksFromHlsManifest,
  subtitleTrackPathForVideo,
} from "./offlineSubtitleLogic.mjs";
import {
  enqueueNativeDownload,
  forgetNativeDownload,
  isNativeDownloadAvailable,
  listNativeDownloads,
  removeNativeDownload,
  type NativeDownloadRecord,
} from "expo-nova-download";

const DOWNLOADS_KEY = "nova-downloads-v3";
const ACTIVE_PENDING_KEY = "nova-downloads-active-v2";
const DOWNLOADS_ROOT = `${FileSystem.documentDirectory ?? ""}downloads/`;
const MAX_RETRIES = 3;
const NOTIFICATION_CHANNEL = "nova-downloads";
const MOBILE_CLIENT_ID = "nova-anime-mobile-v1";
const MOBILE_PACKAGE_NAME = "com.nova.anime";
const MOBILE_VERSION = Constants.expoConfig?.version || "1.0.0";

export interface OfflineSubtitleTrack {
  lang: string;
  label: string;
  localPath: string;
}

export interface DownloadItem {
  id: string;
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  localPath: string;
  subtitleLocalPath?: string;
  subtitleTracks?: OfflineSubtitleTrack[];
  fileSize: number;
  downloadedAt: number;
  galleryAssetId?: string;
  gallerySavedAt?: number;
}

export interface ActiveDownload {
  id: string;
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  progress: number;
  bytesWritten: number;
  totalBytes: number;
  retryCount: number;
  status: "downloading" | "paused" | "error";
  errorMessage?: string;
  /** Android DownloadManager jobs cannot be paused from the JS bridge. */
  pauseSupported?: boolean;
  cancelFn: () => void;
}

export interface StartDownloadParams {
  animeId: number;
  ep: number;
  title: string;
  cover: string;
  site: string;
  quality: string;
  url: string;
  authToken?: string | null;
  downloadToken?: string | null;
  subtitleUrl?: string;
  englishSubtitleUrl?: string;
  subtitleTracks?: Array<{ lang: string; label?: string; url: string }>;
  /** Original/proxied HLS manifest used to discover an embedded subtitle track. */
  hlsManifestUrl?: string;
  headers?: Record<string, string>;
}

export class GalleryPermissionError extends Error {
  readonly canAskAgain: boolean;

  constructor(canAskAgain: boolean) {
    super("يلزم السماح للتطبيق بحفظ الفيديو في معرض الجهاز.");
    this.name = "GalleryPermissionError";
    this.canAskAgain = canAskAgain;
  }
}

type DownloadOptions = {
  headers?: Record<string, string>;
  sessionType?: FileSystem.FileSystemSessionType;
};

type ResumeState = {
  url: string;
  fileUri: string;
  options: DownloadOptions;
  resumeData?: string;
};

type PersistedActive = Omit<ActiveDownload, "cancelFn"> & {
  url: string;
  localPath: string;
  subtitleUrl?: string;
  englishSubtitleUrl?: string;
  subtitleTracks?: Array<{ lang: string; label?: string; url: string }>;
  hlsManifestUrl?: string;
  headers?: Record<string, string>;
  resumeState?: ResumeState;
};

type RuntimeDownload = ActiveDownload & {
  params: StartDownloadParams;
  localPath: string;
  resumable?: FileSystem.DownloadResumable;
  nativeJobId?: number;
  nativePollTimer?: ReturnType<typeof setTimeout>;
  resumeState?: ResumeState;
  notificationAt: number;
  notificationPromise?: Promise<void>;
};

const active = new Map<string, RuntimeDownload>();
const listeners = new Set<() => void>();
let notificationsReady: Promise<boolean> | null = null;
let persistQueue = Promise.resolve();
let lastProgressNotifyAt = 0;
let lastProgressPersistAt = 0;
let progressNotifyTimer: ReturnType<typeof setTimeout> | null = null;

function isPaused(entry: RuntimeDownload): boolean {
  return entry.status === "paused";
}

function variantKey(value: string | undefined): string {
  return String(value || "auto")
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "") || "auto";
}

export function makeDownloadId(
  animeId: number,
  ep: number,
  site?: string,
  quality?: string,
): string {
  const base = `${animeId}_ep${ep}`;
  return site ? `${base}_${variantKey(site)}_${variantKey(quality)}` : base;
}

export function formatFileSize(bytes: number): string {
  if (!bytes || bytes <= 0) return "—";
  if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(0)} كيلوبايت`;
  if (bytes < 1024 * 1024 * 1024) return `${(bytes / (1024 * 1024)).toFixed(1)} ميجابايت`;
  return `${(bytes / (1024 * 1024 * 1024)).toFixed(2)} جيجابايت`;
}

function safePathSegment(value: string): string {
  const cleaned = (value || "anime")
    .normalize("NFKC")
    .replace(/[^\u0600-\u06FF\u0621-\u064Aa-zA-Z0-9 _-]/g, "")
    .trim()
    .replace(/\s+/g, "-")
    .replace(/-+/g, "-");
  return cleaned.slice(0, 80) || "anime";
}

function localPathFor(params: StartDownloadParams): string {
  const site = safePathSegment(params.site || "source").toLowerCase();
  const quality = variantKey(params.quality);
  return `${DOWNLOADS_ROOT}${safePathSegment(params.title)}/${site}/${params.ep}-${quality}.mp4`;
}

async function ensureDirectoryFor(fileUri: string): Promise<void> {
  const slash = fileUri.lastIndexOf("/");
  const directory = slash > 0 ? fileUri.slice(0, slash + 1) : DOWNLOADS_ROOT;
  const info = await FileSystem.getInfoAsync(directory);
  if (!info.exists) {
    await FileSystem.makeDirectoryAsync(directory, { intermediates: true });
  }
}

export async function ensureDownloadsDir(): Promise<void> {
  await ensureDirectoryFor(`${DOWNLOADS_ROOT}placeholder`);
}

export async function getDownloads(): Promise<DownloadItem[]> {
  try {
    const raw = await AsyncStorage.getItem(DOWNLOADS_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed as DownloadItem[] : [];
  } catch {
    return [];
  }
}

async function saveDownloads(items: DownloadItem[]): Promise<void> {
  await AsyncStorage.setItem(DOWNLOADS_KEY, JSON.stringify(items));
}

/** Only a non-empty file is considered playable. */
export async function isDownloaded(
  animeId: number,
  ep: number,
  site?: string,
  quality?: string,
): Promise<DownloadItem | null> {
  const items = await getDownloads();
  const exactId = site ? makeDownloadId(animeId, ep, site, quality) : "";
  const item = items
    .filter((entry) => entry.animeId === animeId && entry.ep === ep)
    .filter((entry) => !exactId || entry.id === exactId)
    .sort((a, b) => b.downloadedAt - a.downloadedAt)[0];
  if (!item) return null;

  try {
    const info = await FileSystem.getInfoAsync(item.localPath, { size: true });
    if (info.exists && ((info as { size?: number }).size ?? 0) > 0) return item;
  } catch {
    // Treat an unreadable file exactly like a missing file.
  }

  await saveDownloads(items.filter((entry) => entry.id !== item.id));
  return null;
}

async function deleteSubtitleSidecars(
  item: Pick<DownloadItem, "localPath" | "subtitleLocalPath" | "subtitleTracks">,
): Promise<void> {
  const paths = new Set<string>();
  if (item.subtitleLocalPath) paths.add(item.subtitleLocalPath);
  if (Array.isArray(item.subtitleTracks)) {
    for (const tr of item.subtitleTracks) {
      if (tr?.localPath) paths.add(tr.localPath);
    }
  }
  if (item.localPath && !item.localPath.endsWith("/index.m3u8")) {
    const uri = localFileUri(item.localPath);
    paths.add(subtitleTrackPathForVideo(uri, "ar"));
    paths.add(subtitleTrackPathForVideo(uri, "en"));
    const stem = uri.replace(/\.[^./]+$/, "");
    if (stem) paths.add(`${stem}.vtt`);
  }
  await Promise.allSettled(
    Array.from(paths).map((p) => FileSystem.deleteAsync(p, { idempotent: true })),
  );
}

export async function deleteDownload(item: DownloadItem): Promise<void> {
  if (item.localPath.endsWith("/index.m3u8")) {
    const dir = item.localPath.slice(0, -"/index.m3u8".length);
    try { await FileSystem.deleteAsync(dir, { idempotent: true }); } catch {}
  } else {
    try { await FileSystem.deleteAsync(item.localPath, { idempotent: true }); } catch {}
  }
  await deleteSubtitleSidecars(item);
  const items = await getDownloads();
  await saveDownloads(items.filter((entry) => entry.id !== item.id));
}

function localFileUri(path: string): string {
  if (path.startsWith("file://")) return path;
  return path.startsWith("/") ? `file://${path}` : path;
}

/**
 * Copies a completed app download into the device media library.
 * The app-private file remains intact so offline playback and the gallery copy
 * have independent lifecycles.
 */
export async function saveDownloadToGallery(item: DownloadItem): Promise<DownloadItem> {
  if (Platform.OS === "web") {
    throw new Error("حفظ الفيديو في معرض الجهاز متاح على الهاتف فقط.");
  }
  if (item.localPath.endsWith(".m3u8")) {
    throw new Error("هذا التنزيل محفوظ للمشاهدة المباشرة داخل قسم تنزيلاتي بدون إنترنت.");
  }
  if (item.galleryAssetId) return item;

  const fileUri = localFileUri(item.localPath);
  const info = await FileSystem.getInfoAsync(fileUri, { size: true });
  const size = (info as { size?: number }).size ?? 0;
  if (!info.exists || size <= 0) {
    throw new Error("ملف الحلقة غير مكتمل أو لم يعد موجودًا على الجهاز.");
  }

  const permission = await MediaLibrary.requestPermissionsAsync(true);
  if (permission.status !== "granted") {
    throw new GalleryPermissionError(permission.canAskAgain !== false);
  }

  const asset = await MediaLibrary.createAssetAsync(fileUri);
  const albumName = "NOVA FILM";
  try {
    const existingAlbum = await MediaLibrary.getAlbumAsync(albumName);
    if (existingAlbum) {
      await MediaLibrary.addAssetsToAlbumAsync([asset], existingAlbum, false);
    } else {
      await MediaLibrary.createAlbumAsync(albumName, asset, false);
    }
  } catch {
    /* The asset is already in the system gallery even if album creation is
       unavailable on a particular Android/iOS version. */
  }

  const updated: DownloadItem = {
    ...item,
    galleryAssetId: asset.id,
    gallerySavedAt: Date.now(),
  };
  const items = await getDownloads();
  await saveDownloads(items.map((entry) => entry.id === item.id ? updated : entry));
  return updated;
}

export async function clearAllDownloads(): Promise<void> {
  const items = await getDownloads();
  await Promise.allSettled(items.flatMap((item) => [
    item.localPath.endsWith("/index.m3u8")
      ? FileSystem.deleteAsync(item.localPath.slice(0, -"/index.m3u8".length), { idempotent: true })
      : FileSystem.deleteAsync(item.localPath, { idempotent: true }),
    deleteSubtitleSidecars(item),
  ]));
  await AsyncStorage.removeItem(DOWNLOADS_KEY);
}

function persistActive(): void {
  const records: PersistedActive[] = Array.from(active.values())
    // Android DownloadManager owns these jobs and restores them itself. Saving
    // them as JS resumables would make a reopened app start a duplicate task.
    .filter((entry) => entry.nativeJobId == null)
    .map((entry) => ({
    id: entry.id,
    animeId: entry.animeId,
    ep: entry.ep,
    title: entry.title,
    cover: entry.cover,
    site: entry.site,
    quality: entry.quality,
    progress: entry.progress,
    bytesWritten: entry.bytesWritten,
    totalBytes: entry.totalBytes,
    retryCount: entry.retryCount,
    status: entry.status,
    url: entry.params.url,
    localPath: entry.localPath,
    subtitleUrl: entry.params.subtitleUrl,
    englishSubtitleUrl: entry.params.englishSubtitleUrl,
    subtitleTracks: entry.params.subtitleTracks,
    hlsManifestUrl: entry.params.hlsManifestUrl,
    headers: entry.params.headers,
    resumeState: entry.resumeState,
    }));
  persistQueue = persistQueue
    .catch(() => {})
    .then(() => AsyncStorage.setItem(ACTIVE_PENDING_KEY, JSON.stringify(records)))
    .catch(() => {});
}

function isAppActive(): boolean {
  return !AppState.currentState || AppState.currentState === "active";
}

function notifyListeners(): void {
  if (isAppActive()) {
    for (const listener of listeners) {
      try { listener(); } catch {}
    }
  }
  persistActive();
}

/* DownloadResumable can report progress much faster than the downloads screen
   needs. Rendering and persisting every callback floods the React Native
   bridge, makes the list lose touch/scroll responsiveness, and queues many
   AsyncStorage writes. User actions still call notifyListeners() directly.
   When the app is in the background, never trigger React UI re-renders to
   avoid queueing NativeViewHierarchyManager / ReactTextView layout batches
   that cause Background ANRs. */
function notifyProgressListeners(): void {
  const now = Date.now();
  if (!isAppActive()) {
    if (now - lastProgressPersistAt >= 5_000) {
      lastProgressPersistAt = now;
      persistActive();
    }
    return;
  }
  const elapsed = now - lastProgressNotifyAt;
  if (elapsed >= 500) {
    lastProgressNotifyAt = now;
    for (const listener of listeners) {
      try { listener(); } catch {}
    }
    if (now - lastProgressPersistAt >= 2_500) {
      lastProgressPersistAt = now;
      persistActive();
    }
    return;
  }
  if (progressNotifyTimer) return;
  progressNotifyTimer = setTimeout(() => {
    progressNotifyTimer = null;
    if (!isAppActive()) return;
    lastProgressNotifyAt = Date.now();
    for (const listener of listeners) {
      try { listener(); } catch {}
    }
    const persistAt = Date.now();
    if (persistAt - lastProgressPersistAt >= 2_500) {
      lastProgressPersistAt = persistAt;
      persistActive();
    }
  }, Math.max(80, 500 - elapsed));
}

async function configureNotifications(): Promise<boolean> {
  if (Platform.OS === "web") return false;
  if (!notificationsReady) {
    notificationsReady = (async () => {
      try {
        Notifications.setNotificationHandler({
          handleNotification: async (notification) => ({
            /* Download progress is an ongoing notification. Showing the
               banner here also makes the first notification visible
               immediately; the same notification id is updated below. */
            shouldShowBanner: true,
            shouldShowList: true,
            shouldPlaySound: false,
            shouldSetBadge: false,
          }),
        });
        const current = await Notifications.getPermissionsAsync();
        const permission = current.granted
          ? current
          : await Notifications.requestPermissionsAsync();
        if (!permission.granted) return false;
        if (Platform.OS === "android") {
          await Notifications.setNotificationChannelAsync(NOTIFICATION_CHANNEL, {
            name: "تنزيلات Nova",
            importance: Notifications.AndroidImportance.HIGH,
            sound: null,
            vibrationPattern: [0, 0],
            enableVibrate: false,
            showBadge: false,
          });
        }
        return true;
      } catch {
        return false;
      }
    })();
  }
  return notificationsReady;
}

async function dismissDownloadNotification(id: string): Promise<void> {
  if (!(await configureNotifications())) return;
  const identifier = `nova-download-${id}`;
  try { await Notifications.dismissNotificationAsync(identifier); } catch {}
  try { await Notifications.cancelScheduledNotificationAsync(identifier); } catch {}
}

function updateDownloadNotification(entry: RuntimeDownload, force = false): void {
  if (Platform.OS === "web") return;
  const now = Date.now();
  /* Re-schedule the same identifier so Android updates one persistent row
     instead of adding a new notification for every progress callback. */
  if (!force && now - entry.notificationAt < 800) return;
  entry.notificationAt = now;
  if (entry.notificationPromise) return;

  entry.notificationPromise = (async () => {
    if (!(await configureNotifications())) return;
    const identifier = `nova-download-${entry.id}`;
    const percentage = Math.round(Math.max(0, Math.min(1, entry.progress)) * 100);
    const byteText = entry.bytesWritten > 0 && entry.totalBytes > 0
      ? `${formatFileSize(entry.bytesWritten)} من ${formatFileSize(entry.totalBytes)}`
      : "";
    try {
      await Notifications.scheduleNotificationAsync({
        identifier,
        content: ({
          title: `تنزيل الحلقة ${entry.ep}`,
          body: `${entry.title} · ${percentage}%${byteText ? ` · ${byteText}` : ""}`,
          sticky: true,
          autoDismiss: false,
          sound: false,
          color: "#8B5CF6",
          progress: {
            max: 100,
            current: percentage,
            indeterminate: entry.totalBytes <= 0,
          },
          data: { downloadId: entry.id },
        } as any),
        trigger: null,
      });
    } catch {}
  })().finally(() => {
    entry.notificationPromise = undefined;
    if (entry.status === "downloading" && Date.now() - entry.notificationAt >= 800) {
      updateDownloadNotification(entry);
    }
  });
}

function completeNotification(entry: RuntimeDownload, error = false): void {
  if (Platform.OS === "web") return;
  void (async () => {
    await dismissDownloadNotification(entry.id);
    if (await configureNotifications()) {
      try {
        await Notifications.scheduleNotificationAsync({
          identifier: `nova-download-${entry.id}`,
          content: {
            title: "NOVA FILM",
            body: error
              ? `فشل تنزيل ${entry.title} — الحلقة ${entry.ep}`
              : `اكتمل تنزيل ${entry.title} — الحلقة ${entry.ep}`,
            /* Leave the result in the notification shade. It should not
               disappear before the user has a chance to read it. */
            sticky: true,
            autoDismiss: false,
            sound: !error,
            color: error ? "#EF4444" : "#34D399",
            data: { downloadId: entry.id, completed: !error },
          },
          trigger: null,
        });
      } catch {}
    }
  })();
}

export function subscribeActiveDownloads(listener: () => void): () => void {
  listeners.add(listener);
  return () => listeners.delete(listener);
}

export function getActiveDownloadsSnapshot(): ActiveDownload[] {
  return Array.from(active.values()).map(({ params: _params, resumable: _resumable, resumeState: _resumeState, notificationAt: _notificationAt, notificationPromise: _notificationPromise, localPath: _localPath, ...item }) => item);
}

export function getActiveDownload(animeId: number, ep: number): ActiveDownload | null {
  return getActiveDownloadsSnapshot().find((entry) => entry.id === makeDownloadId(animeId, ep)) ?? null;
}

export function getActiveSiteDownload(animeId: number, ep: number, site: string): ActiveDownload | null {
  return getActiveDownloadsSnapshot().find(
    (entry) => entry.animeId === animeId && entry.ep === ep && entry.site === site,
  ) ?? null;
}

export function cancelActiveDownload(id: string): void {
  const entry = active.get(id);
  if (!entry) return;
  entry.cancelFn();
  active.delete(id);
  void dismissDownloadNotification(id);
  notifyListeners();
}

/** Pause without deleting the partial file. The resumable task and its byte
 * offset remain in memory and are persisted for the next app launch. */
export async function pauseActiveDownload(id: string): Promise<void> {
  const entry = active.get(id);
  if (!entry || entry.nativeJobId != null || entry.status !== "downloading") return;

  entry.status = "paused";
  notifyListeners();
  try {
    if (entry.resumable) {
      entry.resumeState = await entry.resumable.pauseAsync();
    }
    notifyListeners();
  } catch {
    if (active.has(id)) {
      entry.status = "downloading";
      notifyListeners();
    }
  }
}

/** Resume a paused task from its saved native offset. */
export function resumeActiveDownload(id: string): void {
  const entry = active.get(id);
  if (!entry || entry.nativeJobId != null || entry.status !== "paused") return;
  entry.status = "downloading";
  notifyListeners();
  void runDownload(entry);
}

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

function requestHeaders(params: StartDownloadParams): Record<string, string> {
  /* Provider Referer/Origin headers are needed when the phone talks directly
     to a CDN, but they must not be forwarded to Nova's own API routes. The
     global CORS middleware correctly rejects an API request whose Origin is
     megaplay/mediafire/etc.; the proxy URL already contains the provider
     referrer and the VPS supplies it upstream. */
  const isNovaApiUrl = /\/api\/(?:anime|animation|film)\//i.test(params.url);
  const sourceHeaders = isNovaApiUrl
    ? Object.fromEntries(
        Object.entries(params.headers || {}).filter(
          ([key]) => !/^(origin|referer|host|content-length)$/i.test(key),
        ),
      )
    : (params.headers || {});
  const headers: Record<string, string> = {
    ...sourceHeaders,
    /* The media routes are behind the same mobile release gate as source
       fetching. DownloadResumable does not use secureFetch, so it must carry
       the complete release identity itself or the VPS returns 403 before the
       proxy sees the request. */
    "X-Nova-Client": MOBILE_CLIENT_ID,
    "X-Nova-Package": MOBILE_PACKAGE_NAME,
    "X-Nova-Version": MOBILE_VERSION,
    "User-Agent": `NovaAnime/${MOBILE_VERSION} (Expo; Mobile)`,
    "Connection": "keep-alive",
    /* DownloadResumable may issue Range requests after a background retry.
       Explicitly advertise byte-range support to the VPS conversion route. */
    "Accept": "video/mp4,video/*;q=0.9,*/*;q=0.1",
  };
  if (params.authToken) headers["X-App-Token"] = params.authToken;
  if (params.downloadToken) headers["X-Download-Token"] = params.downloadToken;
  return headers;
}

function nativeFailureReason(record: NativeDownloadRecord): string {
  switch (record.reasonCode) {
    case 1006:
      return "مساحة التخزين غير كافية. حرّر مساحة ثم أعد التنزيل.";
    case 1001:
      return "تعذر إنشاء ملف التنزيل أو الكتابة إليه.";
    case 1002:
      return "الخادم رفض طلب التنزيل. أعد المحاولة من داخل التطبيق.";
    case 1004:
      return "انقطع نقل البيانات أو وصلت بيانات غير صالحة.";
    case 1005:
      return "عدد إعادة التوجيهات من الخادم كبير جداً.";
    case 1007:
      return "مجلد التنزيل غير متاح على الجهاز.";
    case 1008:
      return "تعذر استئناف التنزيل.";
    case 1009:
      return "ملف التنزيل موجود مسبقاً.";
    case 1010:
      return "التنزيل محظور من النظام.";
    case 0:
      return record.reasonMessage || "تعذر قراءة سبب فشل التنزيل.";
    default:
      return record.reasonMessage || `فشل التنزيل من Android (رمز ${record.reasonCode}).`;
  }
}

function resolvePlaylistUrl(value: string, base: string): string {
  try { return new URL(value, base).toString(); } catch { return value; }
}

function parseM3u8Attributes(line: string): Record<string, string> {
  const attrs: Record<string, string> = {};
  for (const match of line.matchAll(/([A-Z0-9-]+)=("(?:[^"]|"")*"|[^,]*)/g)) {
    attrs[match[1]] = match[2].replace(/^"|"$/g, "");
  }
  return attrs;
}

function assTimeToVtt(value: string): string {
  const parts = value.trim().split(":");
  if (parts.length !== 3) return "00:00:00.000";
  const seconds = Number(parts[2].replace(",", "."));
  return `${parts[0].padStart(2, "0")}:${parts[1].padStart(2, "0")}:${Number.isFinite(seconds)
    ? seconds.toFixed(3).padStart(6, "0")
    : "00.000"}`;
}

/** Normalize every supported sidecar into VTT because the existing native
 * player consumes VTT cues for both streamed and offline playback. */
function subtitleToVtt(url: string, body: string): string {
  const trimmed = body.replace(/^\uFEFF/, "").trim();
  if (/^WEBVTT(?:\s|$)/i.test(trimmed)) return trimmed.endsWith("\n") ? trimmed : `${trimmed}\n`;

  if (/^\s*\[script info\]/i.test(trimmed) || /^\s*dialogue:/im.test(trimmed)) {
    const cues: string[] = [];
    for (const line of trimmed.split(/\r?\n/)) {
      if (!/^dialogue:/i.test(line)) continue;
      const fields = line.replace(/^dialogue:\s*/i, "").split(",");
      if (fields.length < 10) continue;
      const start = assTimeToVtt(fields[1]);
      const end = assTimeToVtt(fields[2]);
      const text = fields.slice(9).join(",").replace(/\{[^}]*\}/g, "").replace(/\\N/g, "\n").trim();
      if (text) cues.push(`${start} --> ${end}\n${text}`);
    }
    if (cues.length) return `WEBVTT\n\n${cues.join("\n\n")}\n`;
  }

  /* SRT timestamps use commas for milliseconds; the current player accepts
     the WebVTT equivalent after this small normalization. */
  const srt = trimmed.replace(/(\d{2}:\d{2}:\d{2}),(\d{3})/g, "$1.$2");
  if (srt.includes("-->")) {
    const blocks = srt.split(/\n\s*\n/).map((block) => block.trim()).filter(Boolean);
    return `WEBVTT\n\n${blocks.map((block) => block.replace(/^\d+\s*\n/, "")).join("\n\n")}\n`;
  }
  void url;
  return "";
}

async function fetchSubtitleResponse(url: string, params: StartDownloadParams): Promise<string> {
  const isSubNovaApi = /\/api\/(?:anime|animation|film)\//i.test(url);
  const subHeaders = isSubNovaApi
    ? requestHeaders({ ...params, url })
    : {
        ...directCdnHeaders(params),
        Accept: "application/vnd.apple.mpegurl, text/vtt, application/x-subrip, text/plain, */*",
      };
  const response = await fetch(url, { headers: subHeaders });
  if (!response.ok) throw new Error(`subtitle ${response.status}`);
  return response.text();
}

function nativeFileName(entry: RuntimeDownload): string {
  return `nova-${entry.id.replace(/[^a-zA-Z0-9_-]/g, "_")}.mp4`;
}

function nativeMetadata(entry: RuntimeDownload): Record<string, unknown> {
  /*
   * Do not persist authToken in the metadata handed to native storage. The
   * request headers are already attached to the DownloadManager job, while a
   * reopened app obtains a fresh token before rebuilding its JS record.
   */
  return {
    id: entry.id,
    animeId: entry.animeId,
    ep: entry.ep,
    title: entry.title,
    cover: entry.cover,
    site: entry.site,
    quality: entry.quality,
    url: entry.params.url,
    subtitleUrl: entry.params.subtitleUrl,
    englishSubtitleUrl: entry.params.englishSubtitleUrl,
    subtitleTracks: entry.params.subtitleTracks,
    hlsManifestUrl: entry.params.hlsManifestUrl,
    headers: entry.params.headers,
  };
}

async function pollNativeDownload(entry: RuntimeDownload): Promise<void> {
  if (!active.has(entry.id) || entry.nativeJobId == null) return;
  try {
    const records = await listNativeDownloads();
    const record = records.find((item) => item.appId === entry.id);
    if (!record) {
      entry.nativePollTimer = undefined;
      entry.status = "error";
      entry.errorMessage = "اختفت مهمة التنزيل من Android قبل اكتمالها.";
      notifyListeners();
      return;
    }

    entry.localPath = record.localPath || entry.localPath;
    entry.bytesWritten = Math.max(0, record.bytesWritten || 0);
    entry.totalBytes = Math.max(0, record.totalBytes || 0);
    entry.progress = entry.totalBytes > 0
      ? Math.min(entry.bytesWritten / entry.totalBytes, 1)
      : 0;

    if (record.status === "successful") {
      entry.status = "downloading";
      try {
        await saveCompleted(entry);
        active.delete(entry.id);
        entry.nativePollTimer = undefined;
        await forgetNativeDownload(entry.id);
        notifyListeners();
      } catch (err) {
        entry.status = "error";
        entry.errorMessage = err instanceof Error ? err.message : "فشل التحقق من ملف التنزيل.";
        entry.nativePollTimer = undefined;
        await forgetNativeDownload(entry.id).catch(() => {});
        notifyListeners();
      }
      return;
    }

    if (record.status === "failed" || record.status === "unknown") {
      entry.status = "error";
      entry.errorMessage = nativeFailureReason(record);
      entry.nativePollTimer = undefined;
      notifyListeners();
      return;
    }

    entry.errorMessage = undefined;
    entry.status = record.status === "paused" ? "paused" : "downloading";
    notifyProgressListeners();
    if (isAppActive()) {
      entry.nativePollTimer = setTimeout(() => {
        void pollNativeDownload(entry);
      }, 1200);
    } else {
      entry.nativePollTimer = undefined;
    }
  } catch {
    // A transient DownloadManager query failure must not turn a live OS job
    // into a visible error. Keep polling while the app is open.
    if (isAppActive()) {
      entry.nativePollTimer = setTimeout(() => {
        void pollNativeDownload(entry);
      }, 1800);
    } else {
      entry.nativePollTimer = undefined;
    }
  }
}

async function beginNativeDownload(entry: RuntimeDownload): Promise<void> {
  try {
    const result = await enqueueNativeDownload({
      appId: entry.id,
      url: entry.params.url,
      fileName: nativeFileName(entry),
      title: `تنزيل ${entry.title} · الحلقة ${entry.ep}`,
      description: `${entry.site} · ${entry.quality}`,
      headers: requestHeaders(entry.params),
      metadata: nativeMetadata(entry),
    });
    if (!active.has(entry.id)) {
      await removeNativeDownload(entry.id);
      return;
    }
    entry.nativeJobId = result.jobId;
    entry.localPath = result.localPath;
    entry.pauseSupported = false;
    entry.resumeState = undefined;
    notifyListeners();
    void pollNativeDownload(entry);
  } catch {
    if (!active.has(entry.id)) return;
    entry.status = "error";
    entry.errorMessage = "تعذر بدء تنزيل Android.";
    notifyListeners();
    completeNotification(entry, true);
  }
}

async function materializeHlsSubtitleRendition(
  subtitleUrl: string,
  params: StartDownloadParams,
): Promise<string> {
  const subtitleBody = await fetchSubtitleResponse(subtitleUrl, params);
  if (!subtitleBody.includes("#EXTM3U")) return subtitleBody;
  const segments = subtitleBody
    .replace(/\r/g, "")
    .split("\n")
    .map((line) => line.trim())
    .filter((line) => line && !line.startsWith("#"))
    .map((line) => resolvePlaylistUrl(line, subtitleUrl));
  if (segments.length === 0) return "";
  const chunks = await Promise.all(segments.map((segment) => fetchSubtitleResponse(segment, params)));
  const cues = chunks
    .map((chunk) => chunk.replace(/^\uFEFF?WEBVTT[^\n]*\n?/i, "").trim())
    .filter(Boolean);
  if (!cues.length) return "";
  return `WEBVTT\n\n${cues.join("\n\n")}\n`;
}

/**
 * Extracts all Arabic and English subtitle renditions from an HLS master playlist
 * (supporting multi-hop master -> child playlists) and materializes them to WebVTT.
 */
async function discoverHlsSubtitles(
  manifestUrl: string,
  params: StartDownloadParams,
): Promise<Array<{ lang: string; label: string; url: string; body: string }>> {
  let currentUrl = manifestUrl;
  for (let depth = 0; depth < 3; depth += 1) {
    const body = await fetchSubtitleResponse(currentUrl, params);
    const renditions = extractSubtitleTracksFromHlsManifest(body, currentUrl);
    if (renditions.length > 0) {
      const wanted = renditions.filter((r) => r.lang === "ar" || r.lang === "en");
      const targets = wanted.length > 0 ? wanted : renditions.slice(0, 2);
      const resolved: Array<{ lang: string; label: string; url: string; body: string }> = [];
      const seenLangs = new Set<string>();
      for (const r of targets) {
        if (seenLangs.has(r.lang)) continue;
        try {
          const text = await materializeHlsSubtitleRendition(r.url, params);
          if (text) {
            seenLangs.add(r.lang);
            resolved.push({ lang: r.lang, label: r.label, url: r.url, body: text });
          }
        } catch {}
      }
      if (resolved.length > 0) return resolved;
    }

    const lines = body.replace(/\r/g, "").split("\n").map((line) => line.trim());
    const child = lines.find((line) => line && !line.startsWith("#") && /\.(?:m3u8|txt)(?:[?#]|$)/i.test(line));
    if (!child) return [];
    currentUrl = resolvePlaylistUrl(child, currentUrl);
  }
  return [];
}

function normalizeFetchedSubtitleToVtt(subtitleUrl: string, body: string): string {
  let vtt = body;
  try {
    const payload = JSON.parse(body) as {
      cues?: Array<{ timing?: string; text?: string }>;
    };
    if (Array.isArray(payload.cues)) {
      vtt = [
        "WEBVTT",
        "",
        ...payload.cues.flatMap((cue, index) => [
          String(index + 1),
          cue.timing || "00:00:00.000 --> 00:00:01.000",
          cue.text || "",
          "",
        ]),
      ].join("\n");
    }
  } catch {
    /* Direct VTT/SRT/ASS responses are already usable text. */
  }
  return subtitleToVtt(subtitleUrl, vtt);
}

async function attachSubtitleSidecar(entry: RuntimeDownload): Promise<void> {
  const hasExplicit = Boolean(
    entry.params.subtitleUrl ||
    entry.params.englishSubtitleUrl ||
    entry.params.subtitleTracks?.length,
  );
  if (!hasExplicit && !entry.params.hlsManifestUrl) return;

  try {
    const base = getBaseUrl() || undefined;
    const savedByLang = new Map<string, { lang: string; label: string; vtt: string }>();

    const candidates = collectExternalSubtitleCandidates({
      subtitleUrl: entry.params.subtitleUrl,
      englishSubtitleUrl: entry.params.englishSubtitleUrl,
      subtitleTracks: entry.params.subtitleTracks,
      baseUrl: base,
      site: entry.site,
    });

    await Promise.allSettled(
      candidates.map(async (cand) => {
        if (savedByLang.has(cand.lang)) return;
        try {
          const body = await fetchSubtitleResponse(cand.url, entry.params);
          const vtt = normalizeFetchedSubtitleToVtt(cand.url, body);
          if (vtt.includes("-->") && !savedByLang.has(cand.lang)) {
            savedByLang.set(cand.lang, { lang: cand.lang, label: cand.label, vtt });
          }
        } catch {}
      }),
    );

    if (entry.params.hlsManifestUrl && (!savedByLang.has("ar") || !savedByLang.has("en"))) {
      const discovered = await discoverHlsSubtitles(entry.params.hlsManifestUrl, entry.params).catch(() => []);
      for (const tr of discovered) {
        if (savedByLang.has(tr.lang)) continue;
        const vtt = normalizeFetchedSubtitleToVtt(tr.url, tr.body);
        if (vtt.includes("-->")) {
          savedByLang.set(tr.lang, {
            lang: tr.lang,
            label: tr.label || (tr.lang === "ar" ? "عربي" : "English"),
            vtt,
          });
        }
      }
    }

    if (savedByLang.size === 0) return;

    const videoUri = localFileUri(entry.localPath);
    const writtenTracks: OfflineSubtitleTrack[] = [];
    const ordered = Array.from(savedByLang.values()).sort((a, b) => {
      const rank = (l: string) => (l === "ar" ? 0 : l === "en" ? 1 : 2);
      return rank(a.lang) - rank(b.lang);
    });

    for (const tr of ordered) {
      const targetPath = subtitleTrackPathForVideo(videoUri, tr.lang);
      await FileSystem.writeAsStringAsync(targetPath, tr.vtt);
      writtenTracks.push({
        lang: tr.lang,
        label: tr.label || (tr.lang === "ar" ? "عربي" : tr.lang === "en" ? "English" : tr.lang),
        localPath: targetPath,
      });
    }

    const primaryTrack = writtenTracks.find((t) => t.lang === "ar") || writtenTracks[0];
    const items = await getDownloads();
    const saved = items.find((item) => item.id === entry.id);
    if (!saved) {
      await Promise.allSettled(writtenTracks.map((t) => FileSystem.deleteAsync(t.localPath, { idempotent: true })));
      return;
    }
    await saveDownloads(items.map((item) => item.id === entry.id
      ? {
          ...item,
          subtitleLocalPath: primaryTrack.localPath,
          subtitleTracks: writtenTracks,
        }
      : item));
  } catch {
    /* Subtitle retrieval is best-effort and must never delay video completion. */
  }
}

async function saveCompleted(entry: RuntimeDownload, overrideBytes?: number): Promise<void> {
  let fileSize = overrideBytes && overrideBytes > 0 ? overrideBytes : 0;
  const targetPath = entry.localPath;
  const strippedPath = targetPath.startsWith("file://") ? targetPath.slice(7) : targetPath;
  let info = await FileSystem.getInfoAsync(targetPath, { size: true }).catch(() => null);
  if (!info?.exists) {
    info = await FileSystem.getInfoAsync(strippedPath, { size: true }).catch(() => null);
  }
  if (fileSize <= 0 && info?.exists) fileSize = (info as { size?: number }).size ?? 0;

  if (fileSize <= 0) {
    // Retry shortly in case the OS file handle is still being finalized
    await new Promise((resolve) => setTimeout(resolve, 600));
    const retryInfo = await FileSystem.getInfoAsync(targetPath, { size: true }).catch(() => null);
    if (retryInfo?.exists) fileSize = (retryInfo as { size?: number }).size ?? 0;
  }

  if (fileSize < 64 * 1024) {
    await FileSystem.deleteAsync(targetPath, { idempotent: true }).catch(() => {});
    throw new Error("ملف الفيديو غير مكتمل أو غير صالح للتشغيل.");
  }
  /* Some Android builds report completion before the final progress callback.
     Use the actual file size so a valid file is not persisted or displayed as
     a successful zero-byte download. */
  entry.bytesWritten = fileSize;
  entry.totalBytes = Math.max(entry.totalBytes, fileSize);
  entry.progress = 1;
  notifyListeners();

  /* Persist the video immediately. Subtitle extraction continues in the
     background so a slow/expired subtitle endpoint cannot delay completion. */
  const item: DownloadItem = {
    id: entry.id,
    animeId: entry.animeId,
    ep: entry.ep,
    title: entry.title,
    cover: entry.cover,
    site: entry.site,
    quality: entry.quality,
    localPath: entry.localPath,
    fileSize,
    downloadedAt: Date.now(),
  };
  const existing = await getDownloads();
  await saveDownloads([...existing.filter((old) => old.id !== entry.id), item]);
  await Promise.race([
    attachSubtitleSidecar(entry).catch(() => {}),
    wait(14_000),
  ]);
  /* The ad counter is updated only after the verified non-empty file has
     been persisted. The server deduplicates the anime/episode pair. */
  void recordSuccessfulDownload(entry.animeId, entry.ep);
}

function makeResumable(
  entry: RuntimeDownload,
  resumeState?: ResumeState,
): FileSystem.DownloadResumable {
  const state = resumeState;
  const options: DownloadOptions = {
    ...(state?.options ?? {
      sessionType: FileSystem.FileSystemSessionType.BACKGROUND,
    }),
    /* A saved download may outlive the anon token that created it. Keep the
       native session settings, but always use the current request headers. */
    headers: requestHeaders(entry.params),
  };
  return FileSystem.createDownloadResumable(
    state?.url ?? entry.params.url,
    state?.fileUri ?? entry.localPath,
    options,
    (progress) => {
      entry.bytesWritten = Math.max(0, progress.totalBytesWritten);
      entry.totalBytes = progress.totalBytesExpectedToWrite;
      entry.progress = progress.totalBytesExpectedToWrite > 0
        ? Math.min(progress.totalBytesWritten / progress.totalBytesExpectedToWrite, 1)
        : 0;
      /* Android's resumable API represents resumeData as the byte offset.
         Persist it on every callback so a process restart can append to the
         partial file even when the native task could not produce pause data. */
      if (Platform.OS === "android") {
        entry.resumeState = {
          url: entry.params.url,
          fileUri: entry.localPath,
          options: {
            headers: requestHeaders(entry.params),
            sessionType: FileSystem.FileSystemSessionType.BACKGROUND,
          },
          resumeData: String(entry.bytesWritten),
        };
      }
      notifyProgressListeners();
      updateDownloadNotification(entry);
    },
    state?.resumeData,
  );
}

async function runDownload(entry: RuntimeDownload): Promise<void> {
  let resumeState = entry.resumeState;

  for (let attempt = 0; attempt <= MAX_RETRIES; attempt += 1) {
    if (!active.has(entry.id)) return;
    entry.status = "downloading";
    entry.retryCount = attempt;
    entry.resumable = makeResumable(entry, resumeState);
    entry.resumeState = entry.resumable.savable();
    notifyListeners();
    updateDownloadNotification(entry, true);

    try {
      const result = await entry.resumable.downloadAsync();
      if (!active.has(entry.id)) return;
      if (!result || result.status < 200 || result.status >= 300) {
        throw new Error(`HTTP ${result?.status ?? "?"}`);
      }
      await saveCompleted(entry);
      active.delete(entry.id);
      completeNotification(entry);
      notifyListeners();
      return;
    } catch (error) {
      if (!active.has(entry.id)) return;
      /* A user pause also interrupts downloadAsync on some Android versions.
         Do not treat that intentional interruption as a failed retry. */
      if (isPaused(entry)) return;
      /* Keep the resumable state and partial file. A subsequent attempt starts
         from the saved native resume state instead of deleting the download. */
      try {
        const paused = await entry.resumable.pauseAsync();
        resumeState = paused;
        entry.resumeState = paused;
      } catch {
        /* On Android the progress callback already contains the byte offset.
           Do not replace that durable offset with the initial savable state
           when the native task has already failed and cannot be paused again. */
        resumeState = entry.resumeState ?? entry.resumable.savable();
        entry.resumeState = resumeState;
      }
      if (attempt >= MAX_RETRIES) {
        entry.status = "error";
        entry.errorMessage = error instanceof Error && error.message
          ? `فشل التنزيل: ${error.message}`
          : "فشل التنزيل بعد عدة محاولات.";
        notifyListeners();
        completeNotification(entry, true);
        return;
      }
      entry.retryCount = attempt + 1;
      notifyListeners();
      updateDownloadNotification(entry, true);
      await wait(1000 * (attempt + 1));
      void error;
    }
  }
}

function isDirectHlsUrl(url: string): boolean {
  const low = String(url || "").toLowerCase();
  if (low.includes("/api/film/download-mp4")) return false;
  return (
    low.includes(".m3u8") ||
    low.includes("master.txt") ||
    low.includes("/hls/") ||
    low.includes("/hls_mps/") ||
    low.includes("ex.divhard.com/api/media.php")
  );
}

function hlsDirFor(params: StartDownloadParams): string {
  const site = safePathSegment(params.site || "source").toLowerCase();
  const quality = variantKey(params.quality);
  return `${DOWNLOADS_ROOT}${safePathSegment(params.title)}/${site}/${params.ep}-${quality}-hls/`;
}

function directCdnHeaders(params: StartDownloadParams): Record<string, string> {
  const raw = params.headers || {};
  const out: Record<string, string> = {};
  for (const [k, v] of Object.entries(raw)) {
    if (v && !/^(host|content-length)$/i.test(k)) out[k] = v;
  }
  if (!out["User-Agent"] && !out["user-agent"]) {
    out["User-Agent"] = "Mozilla/5.0 (Linux; Android 14; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36";
  }
  return out;
}

async function fetchTextDirect(url: string, headers: Record<string, string>): Promise<string> {
  const res = await fetch(url, { headers });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return res.text();
}

async function runDirectHlsDownload(entry: RuntimeDownload, cancelledRef: { current: boolean }): Promise<void> {
  const hlsDir = entry.localPath.endsWith("/index.m3u8")
    ? entry.localPath.slice(0, -"index.m3u8".length)
    : hlsDirFor(entry.params);
  entry.localPath = `${hlsDir}index.m3u8`;
  entry.pauseSupported = false;
  const headers = directCdnHeaders(entry.params);

  await FileSystem.makeDirectoryAsync(hlsDir, { intermediates: true });

  // 1) Fetch manifest directly on user's phone (0% VPS bandwidth!)
  let playlistUrl = entry.params.url;
  let playlistText = await fetchTextDirect(playlistUrl, headers);
  if (cancelledRef.current || !active.has(entry.id)) return;

  // 2) If master playlist, pick best quality variant automatically
  if (playlistText.includes("#EXT-X-STREAM-INF")) {
    const lines = playlistText.replace(/\r/g, "").split("\n");
    let bestUri = "";
    let bestBw = -1;
    for (let i = 0; i < lines.length; i++) {
      const line = lines[i].trim();
      if (line.startsWith("#EXT-X-STREAM-INF:")) {
        const bwM = line.match(/BANDWIDTH=(\d+)/i);
        const bw = bwM ? Number(bwM[1]) : 0;
        let nextLine = "";
        for (let j = i + 1; j < lines.length; j++) {
          const cand = lines[j].trim();
          if (cand && !cand.startsWith("#")) {
            nextLine = cand;
            break;
          }
        }
        if (nextLine && bw >= bestBw) {
          bestBw = bw;
          bestUri = nextLine;
        }
      }
    }
    if (bestUri) {
      playlistUrl = resolvePlaylistUrl(bestUri, playlistUrl);
      playlistText = await fetchTextDirect(playlistUrl, headers);
      if (cancelledRef.current || !active.has(entry.id)) return;
    }
  }

  // 3) Parse segments, optional AES-128 key, and optional EXT-X-MAP init segment
  const rawLines = playlistText.replace(/\r/g, "").split("\n");
  type SegTask = { remoteUrl: string; localName: string; lineIdx: number };
  const segTasks: SegTask[] = [];
  const outLines: string[] = [...rawLines];
  let keyIdx = 0;
  let mapIdx = 0;

  for (let i = 0; i < rawLines.length; i++) {
    const trimmed = rawLines[i].trim();
    if (!trimmed) continue;

    if (trimmed.startsWith("#EXT-X-KEY:") && /URI="([^"]+)"/i.test(trimmed)) {
      const m = trimmed.match(/URI="([^"]+)"/i);
      if (m && m[1]) {
        const keyRemote = resolvePlaylistUrl(m[1], playlistUrl);
        const keyLocal = `key_${keyIdx++}.bin`;
        const keyDl = await FileSystem.downloadAsync(keyRemote, `${hlsDir}${keyLocal}`, { headers });
        if (keyDl.status >= 200 && keyDl.status < 300) {
          outLines[i] = trimmed.replace(/URI="([^"]+)"/i, `URI="${keyLocal}"`);
        }
      }
      continue;
    }

    if (trimmed.startsWith("#EXT-X-MAP:") && /URI="([^"]+)"/i.test(trimmed)) {
      const m = trimmed.match(/URI="([^"]+)"/i);
      if (m && m[1]) {
        const mapRemote = resolvePlaylistUrl(m[1], playlistUrl);
        const mapLocal = `init_${mapIdx++}.mp4`;
        const mapDl = await FileSystem.downloadAsync(mapRemote, `${hlsDir}${mapLocal}`, { headers });
        if (mapDl.status >= 200 && mapDl.status < 300) {
          outLines[i] = trimmed.replace(/URI="([^"]+)"/i, `URI="${mapLocal}"`);
        }
      }
      continue;
    }

    if (trimmed.startsWith("#")) continue;

    const segName = `seg_${String(segTasks.length).padStart(5, "0")}.ts`;
    segTasks.push({
      remoteUrl: resolvePlaylistUrl(trimmed, playlistUrl),
      localName: segName,
      lineIdx: i,
    });
    outLines[i] = segName;
  }

  if (segTasks.length === 0) {
    throw new Error("لم يتم العثور على مقاطع فيديو صالحة في هذا السيرفر.");
  }

  // 4) Download segments directly in parallel batches of 5 (fast + phone-safe!)
  const CONCURRENCY = 5;
  let completedSegs = 0;
  let totalBytes = 0;
  let nextCursor = 0;

  const downloadOneSeg = async (task: SegTask): Promise<void> => {
    const dest = `${hlsDir}${task.localName}`;
    let lastErr: unknown = null;
    for (let attempt = 0; attempt < 3; attempt++) {
      if (cancelledRef.current || !active.has(entry.id)) return;
      try {
        const res = await FileSystem.downloadAsync(task.remoteUrl, dest, { headers });
        if (res.status >= 200 && res.status < 300) {
          const info = await FileSystem.getInfoAsync(dest, { size: true }).catch(() => null);
          const sz = info?.exists ? ((info as { size?: number }).size ?? 0) : 0;
          if (sz > 512) {
            totalBytes += sz;
            completedSegs += 1;
            entry.bytesWritten = totalBytes;
            entry.totalBytes = Math.round((totalBytes / Math.max(1, completedSegs)) * segTasks.length);
            entry.progress = Math.min(0.99, completedSegs / segTasks.length);
            notifyProgressListeners();
            updateDownloadNotification(entry);
            return;
          }
        }
        lastErr = new Error(`HTTP ${res.status}`);
      } catch (e) {
        lastErr = e;
      }
      await wait(450 * (attempt + 1));
    }
    throw lastErr || new Error("فشل تنزيل مقطع من الفيديو");
  };

  const workers = Array.from({ length: Math.min(CONCURRENCY, segTasks.length) }, async () => {
    while (true) {
      if (cancelledRef.current || !active.has(entry.id)) return;
      const idx = nextCursor++;
      if (idx >= segTasks.length) return;
      await downloadOneSeg(segTasks[idx]);
    }
  });

  await Promise.all(workers);
  if (cancelledRef.current || !active.has(entry.id)) return;

  // 5) Write local offline index.m3u8 manifest
  const finalManifest = outLines.join("\n") + (outLines[outLines.length - 1]?.includes("#EXT-X-ENDLIST") ? "\n" : "\n#EXT-X-ENDLIST\n");
  await FileSystem.writeAsStringAsync(entry.localPath, finalManifest);

  await saveCompleted(entry, totalBytes);
  active.delete(entry.id);
  notifyListeners();
  completeNotification(entry, false);
}

function enqueueDownload(
  params: StartDownloadParams,
  resumeState?: ResumeState,
  localPath?: string,
  autoStart = true,
): void {
  const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
  cancelActiveDownload(id);

  const isHlsDirect = isDirectHlsUrl(params.url);
  const cancelledRef = { current: false };
  const resolvedLocalPath = localPath ?? (isHlsDirect ? `${hlsDirFor(params)}index.m3u8` : localPathFor(params));
  const entry: RuntimeDownload = {
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
    retryCount: 0,
    status: autoStart ? "downloading" : "paused",
    pauseSupported: !isHlsDirect,
    params,
    localPath: resolvedLocalPath,
    resumeState,
    notificationAt: 0,
    cancelFn: () => {
      cancelledRef.current = true;
      if (entry.nativePollTimer) clearTimeout(entry.nativePollTimer);
      if (entry.nativeJobId != null) {
        void removeNativeDownload(entry.id);
      }
      entry.resumable?.cancelAsync().catch(() => {});
      if (entry.localPath.endsWith("/index.m3u8")) {
        const dir = entry.localPath.slice(0, -"/index.m3u8".length);
        FileSystem.deleteAsync(dir, { idempotent: true }).catch(() => {});
      } else {
        FileSystem.deleteAsync(entry.localPath, { idempotent: true }).catch(() => {});
        void deleteSubtitleSidecars({ localPath: entry.localPath });
      }
    },
  };
  active.set(id, entry);
  notifyListeners();
  if (!autoStart) return;
  if (isHlsDirect) {
    void configureNotifications()
      .catch(() => {})
      .then(() => runDirectHlsDownload(entry, cancelledRef))
      .catch((err) => {
        if (!active.has(id) || cancelledRef.current) return;
        entry.status = "error";
        entry.errorMessage = err instanceof Error ? err.message : "تعذر التنزيل المباشر من هذا السيرفر.";
        notifyListeners();
        completeNotification(entry, true);
      });
    return;
  }
  if (Platform.OS === "android" && isNativeDownloadAvailable()) {
    void configureNotifications()
      .then(() => beginNativeDownload(entry))
      .catch(() => beginNativeDownload(entry));
    return;
  }
  void ensureDirectoryFor(entry.localPath)
    .then(() => configureNotifications())
    .then(() => runDownload(entry))
    .catch(() => {
      if (!active.has(id)) return;
      entry.status = "error";
      notifyListeners();
      completeNotification(entry, true);
    });
}

/**
 * Starts a download without tying it to a component lifecycle.
 * The task uses expo-file-system's background session and is retried up to 3
 * times while retaining the partial file and AsyncStorage resume state.
 */
export async function startGlobalDownload(params: StartDownloadParams): Promise<void> {
  await ensureDownloadsDir();
  const existing = await getDownloads();
  const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
  const existingItem = existing.find((entry) => entry.id === id);
  if (existingItem) {
    await deleteDownload(existingItem);
  }
  enqueueDownload(params);
}

/**
 * Rebuilds resumable tasks saved before an app restart. Completed files are
 * left alone; incomplete files are automatically retried when the app opens.
 */
export async function restoreInterruptedDownloads(): Promise<void> {
  try {
    await restoreNativeDownloads();
    const raw = await AsyncStorage.getItem(ACTIVE_PENDING_KEY);
    if (!raw) return;
    const records = JSON.parse(raw) as PersistedActive[];
    await AsyncStorage.removeItem(ACTIVE_PENDING_KEY);
    if (!Array.isArray(records)) return;

    const completed = await getDownloads();
    /* download-mp4 is protected by the same anon-token middleware as source
       fetching. Refresh once before rebuilding tasks so an app restart does
       not turn a resumable download into a permanent 403. */
    const [restoredToken, restoredDownloadToken] = await Promise.all([
      getAuthToken(),
      getDownloadToken(),
    ]);
    for (const record of records) {
      if (!record?.id || completed.some((item) => item.id === record.id)) continue;
      if (!record.url || !record.localPath) continue;
      const params: StartDownloadParams = {
        animeId: record.animeId,
        ep: record.ep,
        title: record.title,
        cover: record.cover,
        site: record.site,
        quality: record.quality,
        url: record.url,
        authToken: restoredToken,
        downloadToken: restoredDownloadToken,
        subtitleUrl: record.subtitleUrl,
        englishSubtitleUrl: record.englishSubtitleUrl,
        subtitleTracks: record.subtitleTracks,
        hlsManifestUrl: record.hlsManifestUrl,
        headers: record.headers,
      };
      const savedResumeState = record.resumeState
        ? {
            ...record.resumeState,
            options: {
              ...record.resumeState.options,
              headers: requestHeaders(params),
            },
          }
        : undefined;
      enqueueDownload({
        ...params,
      }, savedResumeState ?? (Platform.OS === "android" && record.bytesWritten > 0
        ? {
            url: record.url,
            fileUri: record.localPath,
            options: {
              headers: requestHeaders(params),
              sessionType: FileSystem.FileSystemSessionType.BACKGROUND,
            },
            resumeData: String(record.bytesWritten),
          }
         : undefined), record.localPath, record.status !== "paused");
    }
  } catch {}
}

async function restoreNativeDownloads(): Promise<void> {
  if (Platform.OS !== "android" || !isNativeDownloadAvailable()) return;
  const records = await listNativeDownloads();
  if (!records.length) return;

  const [restoredToken, restoredDownloadToken] = await Promise.all([
    getAuthToken(),
    getDownloadToken(),
  ]);
  for (const record of records) {
    let metadata: Partial<StartDownloadParams> & { id?: string; animeId?: number; ep?: number } = {};
    try {
      metadata = JSON.parse(record.metadataJson || "{}");
    } catch {
      await forgetNativeDownload(record.appId);
      continue;
    }
    if (!metadata.id || !metadata.url || !metadata.animeId || !metadata.ep) {
      await forgetNativeDownload(record.appId);
      continue;
    }

    const params: StartDownloadParams = {
      animeId: Number(metadata.animeId),
      ep: Number(metadata.ep),
      title: String(metadata.title || "أنمي"),
      cover: String(metadata.cover || ""),
      site: String(metadata.site || "source"),
      quality: String(metadata.quality || "auto"),
      url: String(metadata.url),
      authToken: restoredToken,
      downloadToken: restoredDownloadToken,
      subtitleUrl: metadata.subtitleUrl ? String(metadata.subtitleUrl) : undefined,
      englishSubtitleUrl: metadata.englishSubtitleUrl ? String(metadata.englishSubtitleUrl) : undefined,
      subtitleTracks: Array.isArray(metadata.subtitleTracks) ? metadata.subtitleTracks as StartDownloadParams["subtitleTracks"] : undefined,
      hlsManifestUrl: metadata.hlsManifestUrl ? String(metadata.hlsManifestUrl) : undefined,
      headers: metadata.headers && typeof metadata.headers === "object"
        ? metadata.headers as Record<string, string>
        : undefined,
    };

    const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
    if (id !== record.appId) {
      await forgetNativeDownload(record.appId);
      continue;
    }

    if (record.status === "successful") {
      const restored: RuntimeDownload = {
        id,
        animeId: params.animeId,
        ep: params.ep,
        title: params.title,
        cover: params.cover,
        site: params.site,
        quality: params.quality,
        progress: 1,
        bytesWritten: record.bytesWritten,
        totalBytes: record.totalBytes,
        retryCount: 0,
        status: "downloading",
        pauseSupported: false,
        params,
        localPath: record.localPath,
        nativeJobId: record.jobId,
        notificationAt: 0,
        cancelFn: () => { void removeNativeDownload(id); },
      };
      try {
        await saveCompleted(restored);
        await forgetNativeDownload(id);
      } catch {
        // Leave the OS record visible for the next launch if the file has not
        // become readable yet.
      }
      continue;
    }

    enqueueDownload(params, undefined, record.localPath, false);
    const entry = active.get(id);
    if (!entry) continue;
    entry.nativeJobId = record.jobId;
    entry.pauseSupported = false;
    entry.bytesWritten = record.bytesWritten;
    entry.totalBytes = record.totalBytes;
    entry.progress = record.totalBytes > 0
      ? Math.min(record.bytesWritten / record.totalBytes, 1)
      : 0;
    entry.status = record.status === "failed" || record.status === "unknown"
      ? "error"
      : record.status === "paused" ? "paused" : "downloading";
    entry.errorMessage = entry.status === "error"
      ? nativeFailureReason(record)
      : undefined;
    notifyListeners();
    if (entry.status === "downloading") void pollNativeDownload(entry);
  }
}

/* Keep the service warm at module load. This does not attach any screen. */
if (Platform.OS !== "web") {
  AppState.addEventListener("change", (state) => {
    /* Save the latest offset before backgrounding. The native background
       session continues independently of the watch screen. */
    persistActive();
    if (state !== "active") {
      if (progressNotifyTimer) {
        clearTimeout(progressNotifyTimer);
        progressNotifyTimer = null;
      }
      for (const entry of active.values()) {
        if (entry.nativePollTimer) {
          clearTimeout(entry.nativePollTimer);
          entry.nativePollTimer = undefined;
        }
      }
      return;
    }
    void restoreNativeDownloads();
    for (const entry of active.values()) {
      updateDownloadNotification(entry, true);
      if (entry.nativeJobId != null && entry.status === "downloading") {
        if (entry.nativePollTimer) clearTimeout(entry.nativePollTimer);
        void pollNativeDownload(entry);
      }
    }
    notifyListeners();
  });
}