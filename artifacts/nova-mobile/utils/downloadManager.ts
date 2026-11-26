/**
 * Nova Download Service
 *
 * Manages offline video downloads outside React screens:
 * - Phone-side direct HLS `.ts` segment downloader (concurrent chunks, 0% VPS ffmpeg)
 * - JS `DownloadResumable` for VPS proxies, Range-less streams, and fallback MP4s
 * - Android `DownloadManager` strictly for direct external progressive MP4 CDNs
 * - Max-2 concurrent download queue, safe foreground native reconciliation, and
 *   100%-complete disk-verified finalization.
 */
import { AppState, Platform } from "react-native";
import * as FileSystem from "expo-file-system";
import * as MediaLibrary from "expo-media-library";
import * as Notifications from "expo-notifications";
import AsyncStorage from "@react-native-async-storage/async-storage";
import Constants from "expo-constants";
import { recordSuccessfulDownload } from "./adPolicy";
import { getAuthToken, getDownloadToken } from "./secureApi";
import { getBaseUrl } from "./baseUrl";
import { isFirstPartyVpsUrl } from "./hybridStreamLogic.mjs";
import {
  buildHlsManifestCandidates,
  parseMasterM3u8,
  parseMediaM3u8,
  selectBestHlsVariant,
} from "./hlsDownloaderLogic.mjs";
import {
  canReconcileNativeRecordWithoutCancel,
  isHlsDownloadCandidate,
  pickQueuedEntriesToStart,
  shouldFinalizeNativeDownload,
  shouldUseNativeDownloadManager,
} from "./downloadRoutingLogic.mjs";
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
const MAX_CONCURRENT_JS_DOWNLOADS = 2;
const HLS_SEGMENT_CONCURRENCY = 4;
const HLS_SEGMENT_RETRIES = 3;
const NOTIFICATION_CHANNEL = "nova-downloads";
const MOBILE_CLIENT_ID = "nova-anime-mobile-v1";
const MOBILE_PACKAGE_NAME =
  Constants.expoConfig?.android?.package ||
  Constants.expoConfig?.ios?.bundleIdentifier ||
  "com.nova.anime";
const MOBILE_VERSION = Constants.expoConfig?.version || "1.0.0";
const DIRECT_CDN_UA =
  "Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36";

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
  /** True while waiting in the max-2 concurrency queue. */
  queued?: boolean;
  /** True while phone-side direct HLS segment downloading is active. */
  hlsDirect?: boolean;
  segmentsDone?: number;
  segmentsTotal?: number;
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
  /** Original/proxied HLS manifest used to download segments directly on phone & extract embedded subtitles. */
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
  hlsManifestUrl?: string;
  headers?: Record<string, string>;
  resumeState?: ResumeState;
};

type RuntimeDownload = ActiveDownload & {
  params: StartDownloadParams;
  localPath: string;
  resumable?: FileSystem.DownloadResumable;
  hlsAbortController?: AbortController;
  nativeJobId?: number;
  nativePollTimer?: ReturnType<typeof setTimeout>;
  nativeCompleteStablePolls?: number;
  resumeState?: ResumeState;
  notificationAt: number;
  notificationPromise?: Promise<void>;
  startedAt: number;
  progressTicker?: ReturnType<typeof setInterval>;
  runningWorker?: boolean;
};

const active = new Map<string, RuntimeDownload>();
const listeners = new Set<() => void>();
let notificationsReady: Promise<boolean> | null = null;
let persistQueue = Promise.resolve();
let restoreNativeInFlight: Promise<void> | null = null;
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

function localFileUri(path: string): string {
  if (!path) return path;
  if (path.startsWith("file://")) return path;
  return path.startsWith("/") ? `file://${path}` : path;
}

function subtitlePathForVideo(videoPath: string): string {
  return /\.(?:mp4|ts|m4v|mkv|webm)$/i.test(videoPath)
    ? videoPath.replace(/\.(?:mp4|ts|m4v|mkv|webm)$/i, ".vtt")
    : `${videoPath}.vtt`;
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
    const uri = localFileUri(item.localPath);
    const info = await FileSystem.getInfoAsync(uri, { size: true });
    if (info.exists && ((info as { size?: number }).size ?? 0) > 0) return item;
    if (uri !== item.localPath) {
      const altInfo = await FileSystem.getInfoAsync(item.localPath, { size: true });
      if (altInfo.exists && ((altInfo as { size?: number }).size ?? 0) > 0) return item;
    }
  } catch {
    // Treat an unreadable file exactly like a missing file.
  }

  await saveDownloads(items.filter((entry) => entry.id !== item.id));
  return null;
}

export async function deleteDownload(item: DownloadItem): Promise<void> {
  const uri = localFileUri(item.localPath);
  try { await FileSystem.deleteAsync(uri, { idempotent: true }); } catch {}
  if (uri !== item.localPath) {
    try { await FileSystem.deleteAsync(item.localPath, { idempotent: true }); } catch {}
  }
  if (item.subtitleLocalPath) {
    try { await FileSystem.deleteAsync(localFileUri(item.subtitleLocalPath), { idempotent: true }); } catch {}
  }
  const items = await getDownloads();
  await saveDownloads(items.filter((entry) => entry.id !== item.id));
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
  const albumName = "Nova Anime";
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
    FileSystem.deleteAsync(localFileUri(item.localPath), { idempotent: true }),
    item.subtitleLocalPath
      ? FileSystem.deleteAsync(localFileUri(item.subtitleLocalPath), { idempotent: true })
      : Promise.resolve(),
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
      queued: entry.queued,
      url: entry.params.url,
      localPath: entry.localPath,
      subtitleUrl: entry.params.subtitleUrl,
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
          handleNotification: async () => ({
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
  if (!force && now - entry.notificationAt < 800) return;
  entry.notificationAt = now;
  if (entry.notificationPromise) return;

  entry.notificationPromise = (async () => {
    if (!(await configureNotifications())) return;
    const identifier = `nova-download-${entry.id}`;
    const percentage = Math.round(Math.max(0, Math.min(1, entry.progress)) * 100);
    const byteText = entry.bytesWritten > 0 && entry.totalBytes > 0
      ? `${formatFileSize(entry.bytesWritten)} من ${formatFileSize(entry.totalBytes)}`
      : entry.bytesWritten > 0
        ? formatFileSize(entry.bytesWritten)
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
            indeterminate: entry.totalBytes <= 0 && !(entry.segmentsTotal && entry.segmentsTotal > 0),
          },
          data: { downloadId: entry.id },
        } as any),
        trigger: null,
      });
    } catch {}
  })().finally(() => {
    entry.notificationPromise = undefined;
    if (entry.status === "downloading" && !entry.queued && Date.now() - entry.notificationAt >= 800) {
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
            title: "Nova Anime",
            body: error
              ? `فشل تنزيل ${entry.title} — الحلقة ${entry.ep}`
              : `اكتمل تنزيل ${entry.title} — الحلقة ${entry.ep}`,
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
  return Array.from(active.values()).map(({
    params: _params,
    resumable: _resumable,
    hlsAbortController: _hlsAbortController,
    resumeState: _resumeState,
    notificationAt: _notificationAt,
    notificationPromise: _notificationPromise,
    localPath: _localPath,
    progressTicker: _progressTicker,
    nativePollTimer: _nativePollTimer,
    nativeJobId: _nativeJobId,
    nativeCompleteStablePolls: _nativeCompleteStablePolls,
    startedAt: _startedAt,
    runningWorker: _runningWorker,
    ...item
  }) => item);
}

export function getActiveDownload(animeId: number, ep: number): ActiveDownload | null {
  return getActiveDownloadsSnapshot().find((entry) => entry.id === makeDownloadId(animeId, ep)) ?? null;
}

export function getActiveSiteDownload(animeId: number, ep: number, site: string): ActiveDownload | null {
  return getActiveDownloadsSnapshot().find(
    (entry) => entry.animeId === animeId && entry.ep === ep && entry.site === site,
  ) ?? null;
}

async function cancelActiveDownloadAsync(id: string): Promise<void> {
  const entry = active.get(id);
  if (!entry) return;
  const hadNative = entry.nativeJobId != null;
  entry.cancelFn();
  active.delete(id);
  if (hadNative) {
    await removeNativeDownload(id).catch(() => false);
  }
  void dismissDownloadNotification(id);
  notifyListeners();
  dispatchQueuedDownloads();
}

export function cancelActiveDownload(id: string): void {
  const entry = active.get(id);
  if (!entry) return;
  entry.cancelFn();
  active.delete(id);
  void dismissDownloadNotification(id);
  notifyListeners();
  dispatchQueuedDownloads();
}

/** Pause without deleting the partial file. */
export async function pauseActiveDownload(id: string): Promise<void> {
  const entry = active.get(id);
  if (!entry || entry.nativeJobId != null || entry.status !== "downloading") return;

  stopProgressTicker(entry);
  entry.status = "paused";
  entry.queued = false;
  entry.hlsAbortController?.abort();
  entry.hlsAbortController = undefined;
  entry.runningWorker = false;
  notifyListeners();
  dispatchQueuedDownloads();
  try {
    if (entry.resumable) {
      entry.resumeState = await entry.resumable.pauseAsync();
    }
    notifyListeners();
  } catch {
    if (active.has(id) && entry.status === "paused") {
      notifyListeners();
    }
  }
}

/** Resume a paused task or re-queue it into the max-2 concurrency runner. */
export function resumeActiveDownload(id: string): void {
  const entry = active.get(id);
  if (!entry || entry.nativeJobId != null || entry.status !== "paused") return;
  entry.status = "downloading";
  entry.queued = true;
  entry.errorMessage = undefined;
  notifyListeners();
  dispatchQueuedDownloads();
}

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

function requestHeaders(
  params: StartDownloadParams,
  targetUrl: string = params.url,
  extraHeaders?: Record<string, string>,
): Record<string, string> {
  const isFirstParty = isFirstPartyVpsUrl(targetUrl, getBaseUrl());
  if (!isFirstParty) {
    const cleanHeaders: Record<string, string> = {};
    for (const [k, v] of Object.entries({ ...(params.headers || {}), ...(extraHeaders || {}) })) {
      if (v && !/^(host|content-length|x-app-token|x-download-token|x-nova-client|x-nova-package|x-nova-version|authorization)$/i.test(k)) {
        cleanHeaders[k] = v;
      }
    }
    if (!Object.keys(cleanHeaders).some((k) => k.toLowerCase() === "user-agent")) {
      cleanHeaders["User-Agent"] = DIRECT_CDN_UA;
    }
    if (!Object.keys(cleanHeaders).some((k) => k.toLowerCase() === "accept")) {
      cleanHeaders["Accept"] = "video/mp4,video/*;q=0.9,*/*;q=0.1";
    }
    return cleanHeaders;
  }

  const sourceHeaders = Object.fromEntries(
    Object.entries({ ...(params.headers || {}), ...(extraHeaders || {}) }).filter(
      ([key]) => !/^(origin|referer|host|content-length)$/i.test(key),
    ),
  );
  const headers: Record<string, string> = {
    ...sourceHeaders,
    "X-Nova-Client": MOBILE_CLIENT_ID,
    "X-Nova-Package": MOBILE_PACKAGE_NAME,
    "X-Nova-Version": MOBILE_VERSION,
    "User-Agent": `NovaAnime/${MOBILE_VERSION} (Expo; Mobile)`,
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

  const srt = trimmed.replace(/(\d{2}:\d{2}:\d{2}),(\d{3})/g, "$1.$2");
  if (srt.includes("-->")) {
    const blocks = srt.split(/\n\s*\n/).map((block) => block.trim()).filter(Boolean);
    return `WEBVTT\n\n${blocks.map((block) => block.replace(/^\d+\s*\n/, "")).join("\n\n")}\n`;
  }
  void url;
  return "";
}

async function fetchSubtitleResponse(url: string, params: StartDownloadParams): Promise<string> {
  const response = await fetch(url, {
    headers: {
      ...requestHeaders(params, url),
      Accept: "application/vnd.apple.mpegurl, text/vtt, application/x-subrip, text/plain, */*",
    },
  });
  if (!response.ok) throw new Error(`subtitle ${response.status}`);
  return response.text();
}

function nativeFileName(entry: RuntimeDownload): string {
  return `nova-${entry.id.replace(/[^a-zA-Z0-9_-]/g, "_")}.mp4`;
}

function nativeMetadata(entry: RuntimeDownload): Record<string, unknown> {
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
    hlsManifestUrl: entry.params.hlsManifestUrl,
    headers: entry.params.headers,
  };
}

async function readDiskFileSize(path: string): Promise<number> {
  if (!path) return 0;
  const uri = localFileUri(path);
  const info = await FileSystem.getInfoAsync(uri, { size: true }).catch(() => null);
  if (info?.exists) return (info as { size?: number }).size ?? 0;
  const stripped = path.startsWith("file://") ? path.slice(7) : path;
  if (stripped && stripped !== uri) {
    const alt = await FileSystem.getInfoAsync(stripped, { size: true }).catch(() => null);
    if (alt?.exists) return (alt as { size?: number }).size ?? 0;
  }
  return 0;
}

async function pollNativeDownload(entry: RuntimeDownload): Promise<void> {
  if (!active.has(entry.id) || entry.nativeJobId == null) return;
  try {
    const records = await listNativeDownloads();
    const record = records.find((item) => item.appId === entry.id);
    if (!record) {
      // Check if Android auto-cleaned an already finished file before declaring error
      const existingSize = await readDiskFileSize(entry.localPath);
      if (existingSize > 512 * 1024 && (entry.totalBytes <= 0 || existingSize >= entry.totalBytes * 0.99)) {
        stopProgressTicker(entry);
        await saveCompleted(entry);
        active.delete(entry.id);
        entry.nativePollTimer = undefined;
        await forgetNativeDownload(entry.id);
        completeNotification(entry);
        notifyListeners();
        return;
      }
      entry.nativePollTimer = undefined;
      entry.status = "error";
      entry.errorMessage = "اختفت مهمة التنزيل من Android قبل اكتمالها.";
      notifyListeners();
      return;
    }

    entry.localPath = record.localPath || entry.localPath;
    entry.bytesWritten = Math.max(entry.bytesWritten, Math.max(0, record.bytesWritten || 0));
    entry.totalBytes = Math.max(entry.totalBytes, Math.max(0, record.totalBytes || 0));
    if (entry.totalBytes > 0) {
      entry.progress = Math.min(entry.bytesWritten / entry.totalBytes, 1);
    } else {
      entry.progress = Math.max(entry.progress, estimateActiveProgress(entry));
    }

    let diskBytes = 0;
    if (entry.totalBytes > 0 && entry.bytesWritten >= entry.totalBytes) {
      diskBytes = await readDiskFileSize(entry.localPath);
      if (diskBytes >= entry.totalBytes * 0.99) {
        entry.nativeCompleteStablePolls = (entry.nativeCompleteStablePolls || 0) + 1;
      } else {
        entry.nativeCompleteStablePolls = 0;
      }
    } else {
      entry.nativeCompleteStablePolls = 0;
    }

    if (
      shouldFinalizeNativeDownload({
        status: record.status,
        bytesWritten: entry.bytesWritten,
        totalBytes: entry.totalBytes,
        diskBytes,
        stablePolls: entry.nativeCompleteStablePolls,
      })
    ) {
      stopProgressTicker(entry);
      entry.status = "downloading";
      await saveCompleted(entry);
      active.delete(entry.id);
      entry.nativePollTimer = undefined;
      await forgetNativeDownload(entry.id);
      completeNotification(entry);
      notifyListeners();
      return;
    }

    if (record.status === "failed" || record.status === "unknown") {
      stopProgressTicker(entry);
      entry.status = "error";
      entry.errorMessage = nativeFailureReason(record);
      entry.nativePollTimer = undefined;
      completeNotification(entry, true);
      notifyListeners();
      return;
    }

    entry.errorMessage = undefined;
    entry.status = record.status === "paused" ? "paused" : "downloading";
    notifyProgressListeners();
    updateDownloadNotification(entry);
    if (isAppActive()) {
      entry.nativePollTimer = setTimeout(() => {
        void pollNativeDownload(entry);
      }, 1200);
    } else {
      entry.nativePollTimer = undefined;
    }
  } catch {
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
    entry.nativeCompleteStablePolls = 0;
    startProgressTicker(entry);
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

async function discoverHlsSubtitle(
  manifestUrl: string,
  params: StartDownloadParams,
): Promise<{ url: string; body: string } | null> {
  let currentUrl = manifestUrl;
  for (let depth = 0; depth < 3; depth += 1) {
    const body = await fetchSubtitleResponse(currentUrl, params);
    const lines = body.replace(/\r/g, "").split("\n").map((line) => line.trim());
    const rendition = lines.find((line) =>
      line.startsWith("#EXT-X-MEDIA:") && /TYPE=SUBTITLES/i.test(line) && parseM3u8Attributes(line).URI,
    );
    if (rendition) {
      const attrs = parseM3u8Attributes(rendition);
      const subtitleUrl = resolvePlaylistUrl(attrs.URI, currentUrl);
      const subtitleBody = await fetchSubtitleResponse(subtitleUrl, params);
      if (!subtitleBody.includes("#EXTM3U")) return { url: subtitleUrl, body: subtitleBody };
      const segments = subtitleBody
        .replace(/\r/g, "")
        .split("\n")
        .map((line) => line.trim())
        .filter((line) => line && !line.startsWith("#"))
        .map((line) => resolvePlaylistUrl(line, subtitleUrl));
      const chunks = await Promise.all(segments.map((segment) => fetchSubtitleResponse(segment, params)));
      const cues = chunks
        .map((chunk) => chunk.replace(/^\uFEFF?WEBVTT[^\n]*\n?/i, "").trim())
        .filter(Boolean);
      if (!cues.length) return null;
      return { url: subtitleUrl, body: `WEBVTT\n\n${cues.join("\n\n")}\n` };
    }

    const child = lines.find((line) => line && !line.startsWith("#") && /\.(?:m3u8)(?:[?#]|$)/i.test(line));
    if (!child) return null;
    currentUrl = resolvePlaylistUrl(child, currentUrl);
  }
  return null;
}

async function attachSubtitleSidecar(entry: RuntimeDownload): Promise<void> {
  if (!entry.params.subtitleUrl && !entry.params.hlsManifestUrl) return;

  try {
    let subtitleUrl = entry.params.subtitleUrl;
    let body = "";
    if (subtitleUrl) body = await fetchSubtitleResponse(subtitleUrl, entry.params);
    else if (entry.params.hlsManifestUrl) {
      const discovered = await discoverHlsSubtitle(entry.params.hlsManifestUrl, entry.params);
      subtitleUrl = discovered?.url;
      body = discovered?.body || "";
    }
    if (!subtitleUrl || !body) return;

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
    vtt = subtitleToVtt(subtitleUrl, vtt);
    if (!vtt.includes("-->")) return;

    const subtitlePath = subtitlePathForVideo(localFileUri(entry.localPath));
    await FileSystem.writeAsStringAsync(subtitlePath, vtt);

    const items = await getDownloads();
    const saved = items.find((item) => item.id === entry.id);
    if (!saved) {
      await FileSystem.deleteAsync(subtitlePath, { idempotent: true });
      return;
    }
    await saveDownloads(items.map((item) => item.id === entry.id
      ? { ...item, subtitleLocalPath: subtitlePath }
      : item));
  } catch {
    /* Subtitle retrieval is best-effort and must never delay video completion. */
  }
}

async function saveCompleted(entry: RuntimeDownload): Promise<void> {
  let fileSize = await readDiskFileSize(entry.localPath);
  if (fileSize <= 0) {
    await wait(600);
    fileSize = await readDiskFileSize(entry.localPath);
  }
  if (fileSize <= 0) {
    fileSize = Math.max(1024, entry.bytesWritten || entry.totalBytes || 1024);
  }

  const normalizedLocalPath = localFileUri(entry.localPath);
  entry.localPath = normalizedLocalPath;
  entry.bytesWritten = fileSize;
  entry.totalBytes = Math.max(entry.totalBytes, fileSize);
  entry.progress = 1;
  entry.queued = false;
  notifyListeners();

  const item: DownloadItem = {
    id: entry.id,
    animeId: entry.animeId,
    ep: entry.ep,
    title: entry.title,
    cover: entry.cover,
    site: entry.site,
    quality: entry.quality,
    localPath: normalizedLocalPath,
    fileSize,
    downloadedAt: Date.now(),
  };
  const existing = await getDownloads();
  await saveDownloads([...existing.filter((old) => old.id !== entry.id), item]);
  void attachSubtitleSidecar(entry);
  void recordSuccessfulDownload(entry.animeId, entry.ep);
}

function estimateActiveProgress(entry: RuntimeDownload): number {
  if (entry.segmentsTotal && entry.segmentsTotal > 0) {
    return Math.max(0.02, Math.min((entry.segmentsDone || 0) / entry.segmentsTotal, 0.99));
  }
  if (entry.totalBytes > 0) {
    return Math.max(0.02, Math.min(entry.bytesWritten / entry.totalBytes, 1));
  }
  if (entry.bytesWritten > 0) {
    const byBytes = 1 - 0.82 * Math.exp(-entry.bytesWritten / (28 * 1024 * 1024));
    return Math.max(0.18, Math.min(0.94, byBytes));
  }
  const elapsedSec = Math.max(0, (Date.now() - entry.startedAt) / 1000);
  const preparing = 0.03 + 0.35 * (1 - Math.exp(-elapsedSec / 18));
  return Math.max(0.03, Math.min(0.38, preparing));
}

function stopProgressTicker(entry: RuntimeDownload): void {
  if (entry.progressTicker) {
    clearInterval(entry.progressTicker);
    entry.progressTicker = undefined;
  }
}

function startProgressTicker(entry: RuntimeDownload): void {
  stopProgressTicker(entry);
  if (!entry.startedAt) entry.startedAt = Date.now();
  if (entry.progress <= 0) {
    entry.progress = 0.03;
  }
  entry.progressTicker = setInterval(() => {
    if (!active.has(entry.id) || entry.status !== "downloading" || entry.queued) {
      stopProgressTicker(entry);
      return;
    }
    void (async () => {
      if (!entry.hlsDirect && entry.localPath) {
        try {
          const diskBytes = await readDiskFileSize(entry.localPath);
          if (diskBytes > entry.bytesWritten) {
            entry.bytesWritten = diskBytes;
          }
        } catch {}
      }
      if (entry.totalBytes > 0) {
        entry.progress = Math.min(entry.bytesWritten / entry.totalBytes, 1);
      } else {
        entry.progress = Math.max(entry.progress, estimateActiveProgress(entry));
      }
      notifyProgressListeners();
      updateDownloadNotification(entry);
    })();
  }, 900);
}

async function fetchTextWithTimeout(
  url: string,
  headers: Record<string, string>,
  signal: AbortSignal,
  timeoutMs = 15_000,
): Promise<string> {
  const localCtrl = new AbortController();
  const onParentAbort = () => localCtrl.abort();
  signal.addEventListener("abort", onParentAbort);
  const timer = setTimeout(() => localCtrl.abort(), timeoutMs);
  try {
    const res = await fetch(url, {
      headers: {
        ...headers,
        Accept: "application/vnd.apple.mpegurl, application/x-mpegURL, text/plain, */*",
      },
      signal: localCtrl.signal,
    });
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    return await res.text();
  } finally {
    clearTimeout(timer);
    signal.removeEventListener("abort", onParentAbort);
  }
}

async function fetchBinaryWithRetry(
  url: string,
  headers: Record<string, string>,
  signal: AbortSignal,
  timeoutMs = 20_000,
): Promise<Uint8Array> {
  let lastErr: unknown;
  for (let attempt = 0; attempt < HLS_SEGMENT_RETRIES; attempt += 1) {
    if (signal.aborted) throw new Error("aborted");
    const localCtrl = new AbortController();
    const onParentAbort = () => localCtrl.abort();
    signal.addEventListener("abort", onParentAbort);
    const timer = setTimeout(() => localCtrl.abort(), timeoutMs);
    try {
      const res = await fetch(url, { headers, signal: localCtrl.signal });
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const buf = await res.arrayBuffer();
      if (!buf || buf.byteLength === 0) throw new Error("empty segment");
      return new Uint8Array(buf);
    } catch (err) {
      lastErr = err;
      if (signal.aborted) throw err;
      if (attempt < HLS_SEGMENT_RETRIES - 1) {
        await wait(350 * (attempt + 1));
      }
    } finally {
      clearTimeout(timer);
      signal.removeEventListener("abort", onParentAbort);
    }
  }
  throw lastErr instanceof Error ? lastErr : new Error("segment fetch failed");
}

/**
 * Downloads HLS playlists and `.ts` segments directly on the user's phone,
 * writing them sequentially to disk via `expo-file-system/next` FileHandle.
 * Returns `"completed"` if saved, `"interrupted"` if paused/cancelled, or
 * `"fallback"` if encrypted/blocked so the caller can fall back to DownloadResumable.
 */
async function downloadHlsDirectToPhone(
  entry: RuntimeDownload,
): Promise<"completed" | "interrupted" | "fallback"> {
  if (Platform.OS === "web") return "fallback";

  let NextFileCtor: typeof import("expo-file-system/next").File;
  try {
    const mod = await import("expo-file-system/next");
    if (!mod?.File) return "fallback";
    NextFileCtor = mod.File;
  } catch {
    return "fallback";
  }

  const base = getBaseUrl();
  const candidates = buildHlsManifestCandidates({
    manifestUrl: entry.params.hlsManifestUrl,
    fallbackUrl: entry.params.url,
    headers: entry.params.headers,
    baseUrl: base,
  });
  if (!candidates.length) return "fallback";

  const ctrl = new AbortController();
  entry.hlsAbortController = ctrl;
  const partUri = `${localFileUri(entry.localPath)}.part`;
  const finalUri = localFileUri(entry.localPath);

  for (const candidate of candidates) {
    if (!active.has(entry.id) || isPaused(entry) || ctrl.signal.aborted) {
      return "interrupted";
    }

    let handle: ReturnType<import("expo-file-system/next").File["open"]> | null = null;
    try {
      const hdrs = requestHeaders(entry.params, candidate.url, candidate.headers);
      let playlistUrl = candidate.url;
      let playlistText = await fetchTextWithTimeout(playlistUrl, hdrs, ctrl.signal);
      if (!playlistText.includes("#EXTM3U")) continue;

      const master = parseMasterM3u8(playlistText, playlistUrl);
      if (master.isMaster) {
        const chosen = selectBestHlsVariant(master.variants, entry.quality);
        if (!chosen) continue;
        playlistUrl = chosen.uri;
        const variantHdrs = requestHeaders(entry.params, playlistUrl, candidate.headers);
        playlistText = await fetchTextWithTimeout(playlistUrl, variantHdrs, ctrl.signal);
      }

      const media = parseMediaM3u8(playlistText, playlistUrl);
      if (!media.supported || !media.segments.length) continue;

      await ensureDirectoryFor(finalUri);
      await FileSystem.deleteAsync(partUri, { idempotent: true }).catch(() => {});
      const outFile = new NextFileCtor(partUri);
      if (outFile.exists) outFile.delete();
      outFile.create();
      handle = outFile.open();

      entry.hlsDirect = true;
      entry.pauseSupported = true;
      entry.bytesWritten = 0;
      entry.segmentsDone = 0;
      entry.segmentsTotal = media.segments.length;
      entry.totalBytes = 0;
      entry.progress = 0.02;
      notifyListeners();
      updateDownloadNotification(entry, true);

      if (media.initUri) {
        const initHdrs = requestHeaders(entry.params, media.initUri, candidate.headers);
        const initBytes = await fetchBinaryWithRetry(media.initUri, initHdrs, ctrl.signal);
        handle.writeBytes(initBytes);
        entry.bytesWritten += initBytes.byteLength;
      }

      const total = media.segments.length;
      const buffered = new Map<number, Uint8Array>();
      let nextFetchIdx = 0;
      let nextWriteIdx = 0;
      let finishedChunks = 0;
      let writeBytesTotal = entry.bytesWritten;
      let workerErr: unknown = null;

      const flushOrdered = () => {
        while (handle && buffered.has(nextWriteIdx)) {
          const bytes = buffered.get(nextWriteIdx)!;
          buffered.delete(nextWriteIdx);
          handle.writeBytes(bytes);
          writeBytesTotal += bytes.byteLength;
          nextWriteIdx += 1;
        }
      };

      const worker = async () => {
        while (!ctrl.signal.aborted && !workerErr) {
          // Bound in-memory segments ahead of nextWriteIdx so RAM stays small
          while (
            !ctrl.signal.aborted &&
            !workerErr &&
            nextFetchIdx - nextWriteIdx >= HLS_SEGMENT_CONCURRENCY * 2
          ) {
            await wait(80);
          }
          if (ctrl.signal.aborted || workerErr) break;
          const idx = nextFetchIdx;
          if (idx >= total) break;
          nextFetchIdx += 1;

          const seg = media.segments[idx];
          const segHdrs = requestHeaders(entry.params, seg.uri, candidate.headers);
          const segBytes = await fetchBinaryWithRetry(seg.uri, segHdrs, ctrl.signal);
          if (ctrl.signal.aborted) break;
          buffered.set(idx, segBytes);
          finishedChunks += 1;
          flushOrdered();

          entry.segmentsDone = finishedChunks;
          entry.bytesWritten = writeBytesTotal + Array.from(buffered.values()).reduce((s, a) => s + a.byteLength, 0);
          if (finishedChunks >= 3 && finishedChunks < total) {
            entry.totalBytes = Math.max(
              entry.bytesWritten,
              Math.round((entry.bytesWritten / finishedChunks) * total),
            );
          } else if (finishedChunks >= total) {
            entry.totalBytes = entry.bytesWritten;
          }
          entry.progress = Math.max(0.03, Math.min(finishedChunks / total, 0.99));
          notifyProgressListeners();
          updateDownloadNotification(entry);
        }
      };

      const workers = Array.from(
        { length: Math.min(HLS_SEGMENT_CONCURRENCY, total) },
        () => worker().catch((err) => {
          if (!workerErr) workerErr = err;
          ctrl.abort();
        }),
      );
      await Promise.all(workers);

      if (!active.has(entry.id) || isPaused(entry)) {
        try { handle.close(); } catch {}
        handle = null;
        await FileSystem.deleteAsync(partUri, { idempotent: true }).catch(() => {});
        return "interrupted";
      }

      if (workerErr || nextWriteIdx < total) {
        try { handle.close(); } catch {}
        handle = null;
        await FileSystem.deleteAsync(partUri, { idempotent: true }).catch(() => {});
        continue;
      }

      flushOrdered();
      try { handle.close(); } catch {}
      handle = null;

      await FileSystem.deleteAsync(finalUri, { idempotent: true }).catch(() => {});
      await FileSystem.moveAsync({ from: partUri, to: finalUri });
      entry.localPath = finalUri;
      entry.totalBytes = entry.bytesWritten;
      entry.hlsAbortController = undefined;
      await saveCompleted(entry);
      active.delete(entry.id);
      completeNotification(entry);
      notifyListeners();
      return "completed";
    } catch {
      if (handle) {
        try { handle.close(); } catch {}
        handle = null;
      }
      await FileSystem.deleteAsync(partUri, { idempotent: true }).catch(() => {});
      if (!active.has(entry.id) || isPaused(entry)) {
        return "interrupted";
      }
    }
  }

  entry.hlsDirect = false;
  entry.segmentsDone = undefined;
  entry.segmentsTotal = undefined;
  entry.hlsAbortController = undefined;
  return "fallback";
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
    headers: requestHeaders(entry.params),
  };
  return FileSystem.createDownloadResumable(
    state?.url ?? entry.params.url,
    state?.fileUri ?? localFileUri(entry.localPath),
    options,
    (progress) => {
      entry.bytesWritten = Math.max(entry.bytesWritten, Math.max(0, progress.totalBytesWritten));
      entry.totalBytes = progress.totalBytesExpectedToWrite;
      entry.progress = progress.totalBytesExpectedToWrite > 0
        ? Math.min(entry.bytesWritten / progress.totalBytesExpectedToWrite, 1)
        : Math.max(entry.progress, estimateActiveProgress(entry));
      if (Platform.OS === "android") {
        entry.resumeState = {
          url: entry.params.url,
          fileUri: localFileUri(entry.localPath),
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
    if (!active.has(entry.id) || isPaused(entry)) return;
    entry.status = "downloading";
    entry.queued = false;
    entry.retryCount = attempt;
    entry.resumable = makeResumable(entry, resumeState);
    entry.resumeState = entry.resumable.savable();
    startProgressTicker(entry);
    notifyListeners();
    updateDownloadNotification(entry, true);

    try {
      const result = await entry.resumable.downloadAsync();
      stopProgressTicker(entry);
      if (!active.has(entry.id) || isPaused(entry)) return;
      if (!result || result.status < 200 || result.status >= 300) {
        const status = result?.status ?? 0;
        // If resuming returned 416/400/401/403 or server rejected Range, reset cleanly & retry from byte 0
        if (resumeState && (status === 416 || status === 400 || status === 401 || status === 403 || status === 404)) {
          resumeState = undefined;
          entry.resumeState = undefined;
          entry.bytesWritten = 0;
          await FileSystem.deleteAsync(localFileUri(entry.localPath), { idempotent: true }).catch(() => {});
          if (status === 401 || status === 403) {
            const [freshAuth, freshDl] = await Promise.all([getAuthToken(), getDownloadToken()]);
            entry.params = { ...entry.params, authToken: freshAuth, downloadToken: freshDl };
          }
        }
        throw new Error(`HTTP ${result?.status ?? "?"}`);
      }
      await saveCompleted(entry);
      active.delete(entry.id);
      completeNotification(entry);
      notifyListeners();
      return;
    } catch (error) {
      stopProgressTicker(entry);
      if (!active.has(entry.id)) return;
      if (isPaused(entry)) return;

      if (resumeState) {
        // If a resumed request errored out, clear resumeState for the next clean retry
        resumeState = undefined;
        entry.resumeState = undefined;
        entry.bytesWritten = 0;
        await FileSystem.deleteAsync(localFileUri(entry.localPath), { idempotent: true }).catch(() => {});
      } else {
        try {
          const paused = await entry.resumable.pauseAsync();
          resumeState = paused;
          entry.resumeState = paused;
        } catch {
          resumeState = entry.resumeState ?? entry.resumable.savable();
          entry.resumeState = resumeState;
        }
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
    }
  }
}

async function startJsDownloadEntry(entry: RuntimeDownload): Promise<void> {
  if (!active.has(entry.id) || entry.runningWorker || isPaused(entry)) return;
  entry.runningWorker = true;
  entry.queued = false;
  entry.status = "downloading";
  notifyListeners();

  try {
    await ensureDirectoryFor(localFileUri(entry.localPath));
    await configureNotifications().catch(() => false);

    if (!active.has(entry.id) || isPaused(entry)) return;

    const isHls = isHlsDownloadCandidate({
      url: entry.params.url,
      hlsManifestUrl: entry.params.hlsManifestUrl,
    });
    if (isHls) {
      const outcome = await downloadHlsDirectToPhone(entry);
      if (outcome === "completed" || outcome === "interrupted") {
        return;
      }
      // Fall back to VPS /api/anime/download-mp4 ONLY if direct/proxy HLS segments cannot run on phone
      const fallbackUrl = entry.params.url;
      if (!fallbackUrl || (!fallbackUrl.includes("/api/anime/download-mp4") && isHlsDownloadCandidate({ url: fallbackUrl }))) {
        if (active.has(entry.id)) {
          entry.status = "error";
          entry.errorMessage = "تعذر تنزيل مقاطع البث لهذا السيرفر.";
          notifyListeners();
          completeNotification(entry, true);
        }
        return;
      }
    }

    await runDownload(entry);
  } catch {
    if (active.has(entry.id) && !isPaused(entry)) {
      entry.status = "error";
      entry.errorMessage = "تعذر إكمال التنزيل.";
      notifyListeners();
      completeNotification(entry, true);
    }
  } finally {
    entry.runningWorker = false;
    dispatchQueuedDownloads();
  }
}

function dispatchQueuedDownloads(): void {
  const ready = pickQueuedEntriesToStart(
    Array.from(active.values()),
    MAX_CONCURRENT_JS_DOWNLOADS,
  );
  for (const entry of ready) {
    if (entry.runningWorker) continue;
    void startJsDownloadEntry(entry);
  }
}

function withFastDownloadParam(rawUrl: string): string {
  if (!rawUrl) return rawUrl;
  try {
    const parsed = new URL(rawUrl);
    if (
      parsed.pathname.includes("/api/anime/video-proxy") ||
      parsed.pathname.includes("/api/dubbed/stream")
    ) {
      parsed.searchParams.set("dl", "1");
      return parsed.toString();
    }
  } catch {}
  return rawUrl;
}

function enqueueDownload(
  params: StartDownloadParams,
  resumeState?: ResumeState,
  localPath?: string,
  autoStart = true,
): void {
  params = { ...params, url: withFastDownloadParam(params.url) };
  const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
  cancelActiveDownload(id);

  const resolvedLocalPath = localFileUri(localPath ?? localPathFor(params));
  const useNative = shouldUseNativeDownloadManager({
    platformOs: Platform.OS,
    hasNativeModule: isNativeDownloadAvailable(),
    url: params.url,
    hlsManifestUrl: params.hlsManifestUrl,
  });

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
    pauseSupported: !useNative,
    queued: autoStart && !useNative,
    params,
    localPath: resolvedLocalPath,
    resumeState,
    notificationAt: 0,
    startedAt: Date.now(),
    cancelFn: () => {
      stopProgressTicker(entry);
      if (entry.nativePollTimer) clearTimeout(entry.nativePollTimer);
      entry.hlsAbortController?.abort();
      entry.hlsAbortController = undefined;
      if (entry.nativeJobId != null) {
        void removeNativeDownload(entry.id);
      }
      entry.resumable?.cancelAsync().catch(() => {});
      FileSystem.deleteAsync(localFileUri(entry.localPath), { idempotent: true }).catch(() => {});
      FileSystem.deleteAsync(`${localFileUri(entry.localPath)}.part`, { idempotent: true }).catch(() => {});
      FileSystem.deleteAsync(subtitlePathForVideo(localFileUri(entry.localPath)), { idempotent: true }).catch(() => {});
    },
  };

  active.set(id, entry);
  notifyListeners();
  if (!autoStart) return;

  if (useNative) {
    entry.queued = false;
    void configureNotifications()
      .then(() => beginNativeDownload(entry))
      .catch(() => beginNativeDownload(entry));
    return;
  }

  dispatchQueuedDownloads();
}

/**
 * Starts a download outside React component lifecycles.
 */
export async function startGlobalDownload(params: StartDownloadParams): Promise<void> {
  await ensureDownloadsDir();
  const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
  await cancelActiveDownloadAsync(id);
  const existing = await getDownloads();
  const existingItem = existing.find((entry) => entry.id === id);
  if (existingItem) {
    await deleteDownload(existingItem);
  }
  enqueueDownload(params);
}

/**
 * Rebuilds resumable tasks saved before an app restart.
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
    const [restoredToken, restoredDownloadToken] = await Promise.all([
      getAuthToken(),
      getDownloadToken(),
    ]);
    for (const record of records) {
      if (!record?.id || completed.some((item) => item.id === record.id)) continue;
      if (!record.url || !record.localPath) continue;
      if (active.has(record.id)) continue;
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
        hlsManifestUrl: record.hlsManifestUrl,
        headers: record.headers,
      };
      const isHls = isHlsDownloadCandidate({ url: record.url, hlsManifestUrl: record.hlsManifestUrl });
      const savedResumeState = !isHls && record.resumeState
        ? {
            ...record.resumeState,
            options: {
              ...record.resumeState.options,
              headers: requestHeaders(params),
            },
          }
        : undefined;
      enqueueDownload(
        params,
        savedResumeState ?? (!isHls && Platform.OS === "android" && record.bytesWritten > 0
          ? {
              url: record.url,
              fileUri: localFileUri(record.localPath),
              options: {
                headers: requestHeaders(params),
                sessionType: FileSystem.FileSystemSessionType.BACKGROUND,
              },
              resumeData: String(record.bytesWritten),
            }
          : undefined),
        record.localPath,
        record.status !== "paused",
      );
    }
  } catch {}
}

async function restoreNativeDownloads(): Promise<void> {
  if (Platform.OS !== "android" || !isNativeDownloadAvailable()) return;
  if (restoreNativeInFlight) return restoreNativeInFlight;

  restoreNativeInFlight = (async () => {
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

      const existing = active.get(id);
      if (canReconcileNativeRecordWithoutCancel(existing, record) && existing) {
        existing.localPath = record.localPath || existing.localPath;
        existing.bytesWritten = Math.max(existing.bytesWritten, Math.max(0, record.bytesWritten || 0));
        existing.totalBytes = Math.max(existing.totalBytes, Math.max(0, record.totalBytes || 0));
        if (existing.totalBytes > 0) {
          existing.progress = Math.min(existing.bytesWritten / existing.totalBytes, 1);
        }
        const diskBytes = existing.totalBytes > 0 && existing.bytesWritten >= existing.totalBytes
          ? await readDiskFileSize(existing.localPath)
          : 0;
        if (
          shouldFinalizeNativeDownload({
            status: record.status,
            bytesWritten: existing.bytesWritten,
            totalBytes: existing.totalBytes,
            diskBytes,
            stablePolls: 1,
          })
        ) {
          stopProgressTicker(existing);
          if (existing.nativePollTimer) clearTimeout(existing.nativePollTimer);
          await saveCompleted(existing).catch(() => {});
          active.delete(id);
          await forgetNativeDownload(id);
          completeNotification(existing);
          notifyListeners();
          continue;
        }
        existing.status = record.status === "failed" || record.status === "unknown"
          ? "error"
          : record.status === "paused" ? "paused" : "downloading";
        existing.errorMessage = existing.status === "error" ? nativeFailureReason(record) : undefined;
        notifyListeners();
        if (existing.status === "downloading" && !existing.nativePollTimer && isAppActive()) {
          void pollNativeDownload(existing);
        }
        continue;
      }

      const diskBytes = record.totalBytes > 0 && record.bytesWritten >= record.totalBytes
        ? await readDiskFileSize(record.localPath)
        : 0;

      if (
        shouldFinalizeNativeDownload({
          status: record.status,
          bytesWritten: record.bytesWritten,
          totalBytes: record.totalBytes,
          diskBytes,
          stablePolls: 1,
        })
      ) {
        const restoredDone: RuntimeDownload = {
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
          localPath: localFileUri(record.localPath),
          nativeJobId: record.jobId,
          notificationAt: 0,
          startedAt: Date.now(),
          cancelFn: () => { void removeNativeDownload(id); },
        };
        try {
          await saveCompleted(restoredDone);
          await forgetNativeDownload(id);
        } catch {
          // Leave OS record visible for the next pass if not yet readable.
        }
        continue;
      }

      // Attach existing Android DownloadManager job in-place without calling enqueueDownload()
      const restoredEntry: RuntimeDownload = {
        id,
        animeId: params.animeId,
        ep: params.ep,
        title: params.title,
        cover: params.cover,
        site: params.site,
        quality: params.quality,
        progress: record.totalBytes > 0
          ? Math.min(Math.max(0, record.bytesWritten) / record.totalBytes, 1)
          : 0,
        bytesWritten: Math.max(0, record.bytesWritten || 0),
        totalBytes: Math.max(0, record.totalBytes || 0),
        retryCount: 0,
        status: record.status === "failed" || record.status === "unknown"
          ? "error"
          : record.status === "paused" ? "paused" : "downloading",
        errorMessage: record.status === "failed" || record.status === "unknown"
          ? nativeFailureReason(record)
          : undefined,
        pauseSupported: false,
        queued: false,
        params,
        localPath: localFileUri(record.localPath),
        nativeJobId: record.jobId,
        nativeCompleteStablePolls: 0,
        notificationAt: 0,
        startedAt: Date.now(),
        cancelFn: () => {
          stopProgressTicker(restoredEntry);
          if (restoredEntry.nativePollTimer) clearTimeout(restoredEntry.nativePollTimer);
          void removeNativeDownload(id);
          FileSystem.deleteAsync(localFileUri(restoredEntry.localPath), { idempotent: true }).catch(() => {});
        },
      };
      active.set(id, restoredEntry);
      notifyListeners();
      if (restoredEntry.status === "downloading") {
        startProgressTicker(restoredEntry);
        void pollNativeDownload(restoredEntry);
      }
    }
  })().finally(() => {
    restoreNativeInFlight = null;
  });

  return restoreNativeInFlight;
}

if (Platform.OS !== "web") {
  AppState.addEventListener("change", (state) => {
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
      if (!entry.queued) {
        updateDownloadNotification(entry, true);
      }
      if (entry.nativeJobId != null && entry.status === "downloading") {
        if (entry.nativePollTimer) clearTimeout(entry.nativePollTimer);
        void pollNativeDownload(entry);
      }
    }
    notifyListeners();
  });
}
