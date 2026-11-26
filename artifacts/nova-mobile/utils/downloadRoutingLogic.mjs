/**
 * Pure download routing, native DownloadManager reconciliation, completion
 * detection, and concurrency queue dispatch logic.
 */

const NATIVE_INELIGIBLE_VPS_ROUTES = [
  "/api/anime/download-mp4",
  "/api/anime/video-proxy",
  "/api/anime/hls-proxy",
  "/api/anime/seg-proxy",
  "/api/animation/hls-proxy",
  "/api/animation/video-proxy",
  "/api/dubbed/stream",
  "/api/dubbed/carateen/stream",
  "/api/aw-dubbed/mf-stream",
  "/api/tg-media/stream",
  "/api/tg-stream/",
];

const NATIVE_FRIENDLY_DIRECT_HOSTS = [
  "pixeldrain.com",
  "pixeldrain.net",
  "drive.google.com",
  "googleusercontent.com",
  "okcdn.ru",
  "userapi.com",
  "vkvideo.ru",
  "buzzheavier.com",
  "buzzheav.com",
];

function safeLower(value) {
  return String(value || "").trim().toLowerCase();
}

export function isHlsDownloadCandidate({ url, hlsManifestUrl }) {
  if (hlsManifestUrl && String(hlsManifestUrl).trim()) return true;
  const lower = safeLower(url);
  if (!lower) return false;
  if (lower.includes("/api/anime/download-mp4")) return false;
  return (
    /\.m3u8(?:[?#]|$)/i.test(lower) ||
    lower.includes("/api/anime/hls-proxy") ||
    lower.includes("/api/animation/hls-proxy")
  );
}

/**
 * Android's DownloadManager aborts with ERROR_CANNOT_RESUME (1008) or HTTP 400
 * whenever an endpoint omits ETag/Accept-Ranges or runs server-side proxy/ffmpeg
 * conversion. Only direct, progressive external CDN MP4 files belong on DownloadManager;
 * all first-party VPS endpoints & HLS tasks run on DownloadResumable / Phone HLS.
 */
export function shouldUseNativeDownloadManager({
  platformOs,
  hasNativeModule,
  url,
  hlsManifestUrl,
}) {
  if (platformOs !== "android" || !hasNativeModule) return false;
  if (isHlsDownloadCandidate({ url, hlsManifestUrl })) return false;

  const clean = String(url || "").trim();
  if (!/^https?:\/\//i.test(clean)) return false;

  const lower = clean.toLowerCase();
  for (const route of NATIVE_INELIGIBLE_VPS_ROUTES) {
    if (lower.includes(route)) return false;
  }

  let parsed;
  try {
    parsed = new URL(clean);
  } catch {
    return false;
  }
  const host = parsed.hostname.toLowerCase();
  if (host === "animenovaa.duckdns.org") {
    return false;
  }

  if (/^download\d*\.mediafire\.com$/i.test(host)) return true;
  for (const h of NATIVE_FRIENDLY_DIRECT_HOSTS) {
    if (host === h || host.endsWith(`.${h}`)) return true;
  }
  return /\.(?:mp4|m4v|mov)(?:[?#]|$)/i.test(parsed.pathname);
}

/**
 * Ensures AppState foreground restore updates existing Android DownloadManager
 * entries in place instead of calling enqueueDownload -> cancelActiveDownload,
 * which previously deleted live jobs and threw "اختفت مهمة التنزيل من Android".
 */
export function canReconcileNativeRecordWithoutCancel(existingEntry, nativeRecord) {
  if (!existingEntry || !nativeRecord) return false;
  return (
    existingEntry.nativeJobId != null &&
    Number(existingEntry.nativeJobId) === Number(nativeRecord.jobId)
  );
}

/**
 * Detects both explicit Android `successful` records and records stuck at 100%
 * (`running`/`pending`/`paused` with `bytesWritten >= totalBytes > 0`) once the
 * file on disk is verified complete across consecutive polls.
 */
export function shouldFinalizeNativeDownload({
  status,
  bytesWritten,
  totalBytes,
  diskBytes,
  stablePolls,
}) {
  if (status === "successful") return true;
  if (status === "failed" || status === "unknown") return false;
  if (totalBytes > 0 && bytesWritten >= totalBytes) {
    const minValidDisk = Math.floor(totalBytes * 0.99);
    if (diskBytes >= minValidDisk && stablePolls >= 1) {
      return true;
    }
  }
  return false;
}

/**
 * Returns queued entries that may start immediately while enforcing maxConcurrent
 * active JS downloads (`downloading` && `!queued` && `nativeJobId == null`).
 */
export function pickQueuedEntriesToStart(entries, maxConcurrent = 2) {
  const list = Array.isArray(entries) ? entries : [];
  const runningJs = list.filter(
    (e) => e.status === "downloading" && !e.queued && e.nativeJobId == null,
  ).length;
  const slotsAvailable = Math.max(0, maxConcurrent - runningJs);
  if (slotsAvailable === 0) return [];
  return list
    .filter((e) => e.status === "downloading" && Boolean(e.queued))
    .slice(0, slotsAvailable);
}
