/**
 * Nova Download Service
 *
 * The download task deliberately lives outside React screens.  DownloadResumable
 * uses the background file-system session, while the small persisted record lets
 * the service rebuild the task after the app is opened again.
 */
import { AppState, Platform } from "react-native";
import * as FileSystem from "expo-file-system";
import * as Notifications from "expo-notifications";
import AsyncStorage from "@react-native-async-storage/async-storage";
import { getAuthToken } from "./secureApi";

const DOWNLOADS_KEY = "nova-downloads-v3";
const ACTIVE_PENDING_KEY = "nova-downloads-active-v2";
const DOWNLOADS_ROOT = `${FileSystem.documentDirectory ?? ""}downloads/`;
const MAX_RETRIES = 3;
const NOTIFICATION_CHANNEL = "nova-downloads";

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
  subtitleUrl?: string;
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
  resumeState?: ResumeState;
};

type RuntimeDownload = ActiveDownload & {
  params: StartDownloadParams;
  localPath: string;
  resumable?: FileSystem.DownloadResumable;
  resumeState?: ResumeState;
  notificationAt: number;
  notificationPromise?: Promise<void>;
};

const active = new Map<string, RuntimeDownload>();
const listeners = new Set<() => void>();
let notificationsReady: Promise<boolean> | null = null;
let persistQueue = Promise.resolve();

function isPaused(entry: RuntimeDownload): boolean {
  return entry.status === "paused";
}

export function makeDownloadId(animeId: number, ep: number): string {
  return `${animeId}_ep${ep}`;
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
  return `${DOWNLOADS_ROOT}${safePathSegment(params.title)}/${params.ep}.mp4`;
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
export async function isDownloaded(animeId: number, ep: number): Promise<DownloadItem | null> {
  const items = await getDownloads();
  const item = items.find((entry) => entry.id === makeDownloadId(animeId, ep));
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

export async function deleteDownload(item: DownloadItem): Promise<void> {
  try { await FileSystem.deleteAsync(item.localPath, { idempotent: true }); } catch {}
  if (item.subtitleLocalPath) {
    try { await FileSystem.deleteAsync(item.subtitleLocalPath, { idempotent: true }); } catch {}
  }
  const items = await getDownloads();
  await saveDownloads(items.filter((entry) => entry.id !== item.id));
}

export async function clearAllDownloads(): Promise<void> {
  const items = await getDownloads();
  await Promise.allSettled(items.flatMap((item) => [
    FileSystem.deleteAsync(item.localPath, { idempotent: true }),
    item.subtitleLocalPath
      ? FileSystem.deleteAsync(item.subtitleLocalPath, { idempotent: true })
      : Promise.resolve(),
  ]));
  await AsyncStorage.removeItem(DOWNLOADS_KEY);
}

function persistActive(): void {
  const records: PersistedActive[] = Array.from(active.values()).map((entry) => ({
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
    resumeState: entry.resumeState,
  }));
  persistQueue = persistQueue
    .catch(() => {})
    .then(() => AsyncStorage.setItem(ACTIVE_PENDING_KEY, JSON.stringify(records)))
    .catch(() => {});
}

function notifyListeners(): void {
  for (const listener of listeners) {
    try { listener(); } catch {}
  }
  persistActive();
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
            title: "Nova Anime",
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
  if (!entry || entry.status !== "downloading") return;

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
  if (!entry || entry.status !== "paused") return;
  entry.status = "downloading";
  notifyListeners();
  void runDownload(entry);
}

function wait(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

function requestHeaders(params: StartDownloadParams): Record<string, string> {
  const headers: Record<string, string> = {
    "X-Nova-Client": "nova-anime-mobile-v1",
    "User-Agent": "NovaAnime/1.0 (Expo; Mobile)",
    /* DownloadResumable may issue Range requests after a background retry.
       Explicitly advertise byte-range support to the VPS conversion route. */
    "Accept": "video/mp4,video/*;q=0.9,*/*;q=0.1",
  };
  if (params.authToken) headers["X-App-Token"] = params.authToken;
  return headers;
}

async function saveCompleted(entry: RuntimeDownload): Promise<void> {
  let fileSize = 0;
  const info = await FileSystem.getInfoAsync(entry.localPath, { size: true });
  if (info.exists) fileSize = (info as { size?: number }).size ?? 0;
  if (fileSize <= 0) throw new Error("ملف التنزيل فارغ");

  let subtitleLocalPath: string | undefined;
  /* The player uses the sidecar VTT for every supported raw-audio provider.
     A video is not considered complete until the requested Arabic track is
     also present locally. */
  if (entry.params.subtitleUrl) {
    const subtitlePath = `${entry.localPath.slice(0, -4)}.vtt`;
    try {
      /* KW's Arabic track is generated by the API at download time. The
         translate-vtt endpoint returns JSON cues, so convert that response
         into a real VTT file before handing it to the local player. */
      const response = await fetch(entry.params.subtitleUrl, {
        headers: requestHeaders(entry.params),
      });
      if (!response.ok) throw new Error(`subtitle ${response.status}`);
      const body = await response.text();
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
        /* A direct VTT response is already in the required format. */
      }
      if (!vtt.includes("-->")) throw new Error("empty subtitle");
      await FileSystem.writeAsStringAsync(subtitlePath, vtt);
      subtitleLocalPath = subtitlePath;
    } catch (error) {
      try { await FileSystem.deleteAsync(subtitlePath, { idempotent: true }); } catch {}
      throw new Error(`تعذر حفظ الترجمة العربية: ${error instanceof Error ? error.message : "unknown error"}`);
    }
  }

  const item: DownloadItem = {
    id: entry.id,
    animeId: entry.animeId,
    ep: entry.ep,
    title: entry.title,
    cover: entry.cover,
    site: entry.site,
    quality: entry.quality,
    localPath: entry.localPath,
    subtitleLocalPath,
    fileSize,
    downloadedAt: Date.now(),
  };
  const existing = await getDownloads();
  await saveDownloads([...existing.filter((old) => old.id !== entry.id), item]);
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
      notifyListeners();
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

function enqueueDownload(
  params: StartDownloadParams,
  resumeState?: ResumeState,
  localPath?: string,
  autoStart = true,
): void {
  const id = makeDownloadId(params.animeId, params.ep);
  cancelActiveDownload(id);

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
    params,
    localPath: localPath ?? localPathFor(params),
    resumeState,
    notificationAt: 0,
    cancelFn: () => {
      entry.resumable?.cancelAsync().catch(() => {});
      FileSystem.deleteAsync(entry.localPath, { idempotent: true }).catch(() => {});
      FileSystem.deleteAsync(`${entry.localPath.slice(0, -4)}.vtt`, { idempotent: true }).catch(() => {});
    },
  };
  active.set(id, entry);
  notifyListeners();
  if (!autoStart) return;
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
  const existingItem = existing.find((entry) => entry.id === makeDownloadId(params.animeId, params.ep));
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
    const raw = await AsyncStorage.getItem(ACTIVE_PENDING_KEY);
    if (!raw) return;
    const records = JSON.parse(raw) as PersistedActive[];
    await AsyncStorage.removeItem(ACTIVE_PENDING_KEY);
    if (!Array.isArray(records)) return;

    const completed = await getDownloads();
    /* download-mp4 is protected by the same anon-token middleware as source
       fetching. Refresh once before rebuilding tasks so an app restart does
       not turn a resumable download into a permanent 403. */
    const restoredToken = await getAuthToken();
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
        subtitleUrl: record.subtitleUrl,
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

/* Keep the service warm at module load. This does not attach any screen. */
if (Platform.OS !== "web") {
  AppState.addEventListener("change", (state) => {
    /* Save the latest offset before backgrounding. The native background
       session continues independently of the watch screen. */
    persistActive();
    if (state === "active") {
      for (const entry of active.values()) updateDownloadNotification(entry, true);
    }
  });
}