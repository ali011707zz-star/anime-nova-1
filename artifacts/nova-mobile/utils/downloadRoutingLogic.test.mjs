import test from "node:test";
import assert from "node:assert/strict";
import {
  canReconcileNativeRecordWithoutCancel,
  isHlsDownloadCandidate,
  pickQueuedEntriesToStart,
  shouldFinalizeNativeDownload,
  isDubbedStreamProxyUrl,
  prepareDownloadRequestUrl,
  shouldUseNativeDownloadManager,
} from "./downloadRoutingLogic.mjs";

test("shouldUseNativeDownloadManager keeps VPS proxy/converter and HLS off DownloadManager", () => {
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://animenovaa.duckdns.org/api/dubbed/stream?url=https%3A%2F%2Fstream.foupix.com%2Fep.mp4",
    }),
    false,
  );
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://animenovaa.duckdns.org/api/anime/download-mp4?site=kawaii&url=x",
    }),
    false,
  );
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://animenovaa.duckdns.org/api/tg-media/stream/123?dl=1",
    }),
    false,
  );
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://download2390.mediafire.com/abc/ep1.mp4",
      hlsManifestUrl: "https://cdn.example.com/master.m3u8",
    }),
    false,
  );
});

test("shouldUseNativeDownloadManager allows direct external MP4 CDNs on Android", () => {
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://download2390.mediafire.com/a5k387/ep01.mp4",
    }),
    true,
  );
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://pixeldrain.com/api/file/AbCdEf12",
    }),
    true,
  );
  assert.equal(
    shouldUseNativeDownloadManager({
      platformOs: "android",
      hasNativeModule: true,
      url: "https://vd672.okcdn.ru/?expires=1795&srcAg=CHROME_ANDROID&id=123",
    }),
    false,
  );
  assert.equal(
    isHlsDownloadCandidate({
      url: "https://animenovaa.duckdns.org/api/anime/download-mp4?url=x",
      hlsManifestUrl: "https://cdn.example.com/playlist.m3u8",
    }),
    true,
  );
});

test("canReconcileNativeRecordWithoutCancel avoids cancelling already-tracked jobs", () => {
  assert.equal(
    canReconcileNativeRecordWithoutCancel({ nativeJobId: 44 }, { jobId: 44 }),
    true,
  );
  assert.equal(
    canReconcileNativeRecordWithoutCancel({ nativeJobId: 44 }, { jobId: 45 }),
    false,
  );
  assert.equal(
    canReconcileNativeRecordWithoutCancel(undefined, { jobId: 44 }),
    false,
  );
});

test("shouldFinalizeNativeDownload resolves 100%-stuck Android DownloadManager entries", () => {
  assert.equal(
    shouldFinalizeNativeDownload({
      status: "running",
      bytesWritten: 252_700_000,
      totalBytes: 252_700_000,
      diskBytes: 252_700_000,
      stablePolls: 0,
    }),
    false,
  );
  assert.equal(
    shouldFinalizeNativeDownload({
      status: "running",
      bytesWritten: 252_700_000,
      totalBytes: 252_700_000,
      diskBytes: 252_700_000,
      stablePolls: 1,
    }),
    true,
  );
  assert.equal(
    shouldFinalizeNativeDownload({
      status: "paused",
      bytesWritten: 398_100_000,
      totalBytes: 398_100_000,
      diskBytes: 398_100_000,
      stablePolls: 1,
    }),
    true,
  );
  assert.equal(
    shouldFinalizeNativeDownload({
      status: "failed",
      bytesWritten: 398_100_000,
      totalBytes: 398_100_000,
      diskBytes: 398_100_000,
      stablePolls: 2,
    }),
    false,
  );
});

test("pickQueuedEntriesToStart enforces maxConcurrent=2", () => {
  const entries = [
    { id: "1", status: "downloading", queued: false },
    { id: "2", status: "downloading", queued: true },
    { id: "3", status: "downloading", queued: true },
    { id: "4", status: "downloading", queued: true },
  ];
  const picked = pickQueuedEntriesToStart(entries, 2);
  assert.deepEqual(picked.map((x) => x.id), ["2"]);
});

test("prepareDownloadRequestUrl strips dl=1 from /api/dubbed/stream but keeps dl=1 on /api/anime/video-proxy", () => {
  const dubbedUrl = "https://animenovaa.duckdns.org/api/dubbed/stream?url=https%3A%2F%2Fstream.foupix.com%2Fep.mp4&dl=1&dlToken=abc";
  assert.equal(isDubbedStreamProxyUrl(dubbedUrl), true);
  const cleaned = prepareDownloadRequestUrl(dubbedUrl);
  assert.equal(cleaned.includes("dl=1"), false);
  assert.equal(cleaned.includes("dlToken"), false);

  const vpUrl = "https://animenovaa.duckdns.org/api/anime/video-proxy?url=https%3A%2F%2Fcdn.example%2Fv.mp4";
  assert.equal(isDubbedStreamProxyUrl(vpUrl), false);
  assert.equal(prepareDownloadRequestUrl(vpUrl).includes("dl=1"), true);
});
