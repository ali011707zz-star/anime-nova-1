import test from "node:test";
import assert from "node:assert/strict";
import {
  canReconcileNativeRecordWithoutCancel,
  isHlsDownloadCandidate,
  pickQueuedEntriesToStart,
  shouldFinalizeNativeDownload,
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
