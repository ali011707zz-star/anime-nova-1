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
import Constants from "expo-constants";
import { recordSuccessfulDownload } from "./adPolicy";
import { getAuthToken } from "./secureApi";
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
const MOBILE_PACKAGE_NAME =
  Constants.expoConfig?.android?.package ||
  Constants.expoConfig?.ios?.bundleIdentifier ||
  "com.nova.anime";
const MOBILE_VERSION = Constants.expoConfig?.version || "1.0.0";

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
  /** Original/proxied HLS manifest used to discover an embedded subtitle track. */
  hlsManifestUrl?: string;
  headers?: Record<string, string>;
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
    hlsManifestUrl: entry.params.hlsManifestUrl,
    headers: entry.params.headers,
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

/* DownloadResumable can report progress much faster than the downloads screen
   needs. Rendering and persisting every callback floods the React Native
   bridge, makes the list lose touch/scroll responsiveness, and queues many
   AsyncStorage writes. User actions still call notifyListeners() directly. */
function notifyProgressListeners(): void {
  const now = Date.now();
  const elapsed = now - lastProgressNotifyAt;
  if (elapsed >= 750) {
    lastProgressNotifyAt = now;
    for (const listener of listeners) {
      try { listener(); } catch {}
    }
    if (now - lastProgressPersistAt >= 3_000) {
      lastProgressPersistAt = now;
      persistActive();
    }
    return;
  }
  if (progressNotifyTimer) return;
  progressNotifyTimer = setTimeout(() => {
    progressNotifyTimer = null;
    lastProgressNotifyAt = Date.now();
    for (const listener of listeners) {
      try { listener(); } catch {}
    }
    const persistAt = Date.now();
    if (persistAt - lastProgressPersistAt >= 3_000) {
      lastProgressPersistAt = persistAt;
      persistActive();
    }
  }, Math.max(50, 750 - elapsed));
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
  const isNovaApiUrl = /\/api\/(?:anime|animation)\//i.test(params.url);
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
    /* DownloadResumable may issue Range requests after a background retry.
       Explicitly advertise byte-range support to the VPS conversion route. */
    "Accept": "video/mp4,video/*;q=0.9,*/*;q=0.1",
  };
  if (params.authToken) headers["X-App-Token"] = params.authToken;
  return headers;
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
  const response = await fetch(url, {
    headers: {
      ...requestHeaders(params),
      Accept: "application/vnd.apple.mpegurl, text/vtt, application/x-subrip, text/plain, */*",
    },
  });
  if (!response.ok) throw new Error(`subtitle ${response.status}`);
  return response.text();
}

/**
 * Finds the first subtitle rendition in an HLS master and materializes an
 * HLS WebVTT media playlist into one offline VTT file. A direct subtitle URL
 * still wins, so provider-specific subtitle behavior remains unchanged.
 */
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

async function saveCompleted(entry: RuntimeDownload): Promise<void> {
  let fileSize = 0;
  const info = await FileSystem.getInfoAsync(entry.localPath, { size: true });
  if (info.exists) fileSize = (info as { size?: number }).size ?? 0;
  if (fileSize <= 0) throw new Error("ملف التنزيل فارغ");
  /* Some Android builds report completion before the final progress callback.
     Use the actual file size so a valid file is not persisted or displayed as
     a successful zero-byte download. */
  entry.bytesWritten = fileSize;
  entry.totalBytes = Math.max(entry.totalBytes, fileSize);
  entry.progress = 1;
  notifyListeners();

  let subtitleLocalPath: string | undefined;
  /* A subtitle is a best-effort sidecar. It must never turn a healthy video
     into a failed download when a provider track expires. */
  if (entry.params.subtitleUrl || entry.params.hlsManifestUrl) {
    try {
      let subtitleUrl = entry.params.subtitleUrl;
      let body = "";
      if (subtitleUrl) body = await fetchSubtitleResponse(subtitleUrl, entry.params);
      else if (entry.params.hlsManifestUrl) {
        const discovered = await discoverHlsSubtitle(entry.params.hlsManifestUrl, entry.params);
        subtitleUrl = discovered?.url;
        body = discovered?.body || "";
      }
      if (!subtitleUrl || !body) throw new Error("no subtitle track");

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
      if (!vtt.includes("-->")) throw new Error("empty subtitle");
      /* Keep one canonical extension so the current native player can attach
         the sidecar without adding a second subtitle engine. */
      const subtitlePath = `${entry.localPath.slice(0, -4)}.vtt`;
      await FileSystem.writeAsStringAsync(subtitlePath, vtt);
      subtitleLocalPath = subtitlePath;
    } catch (error) {
      subtitleLocalPath = undefined;
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
  const id = makeDownloadId(params.animeId, params.ep, params.site, params.quality);
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