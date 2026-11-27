import test from "node:test";
import assert from "node:assert/strict";
import {
  MIN_VALID_VIDEO_BYTES,
  detectHlsContainerExtension,
  reconcileDownloadButtonStates,
  replaceVideoExtension,
  stripFakeImagePrefixFromTsSegment,
  validateCompletedMediaFile,
} from "./downloadIntegrityLogic.mjs";

function makeTsBuffer(prefixBytes = []) {
  const out = new Uint8Array(prefixBytes.length + 188 * 3);
  prefixBytes.forEach((b, i) => { out[i] = b; });
  out[prefixBytes.length] = 0x47;
  out[prefixBytes.length + 188] = 0x47;
  out[prefixBytes.length + 376] = 0x47;
  return out;
}

function makeMp4Header() {
  const out = new Uint8Array(64);
  out[3] = 0x18;
  out[4] = "f".charCodeAt(0);
  out[5] = "t".charCodeAt(0);
  out[6] = "y".charCodeAt(0);
  out[7] = "p".charCodeAt(0);
  return out;
}

test("stripFakeImagePrefixFromTsSegment removes PNG disguise header before 0x47 sync byte", () => {
  const pngHeader = [0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d];
  const disguised = makeTsBuffer(pngHeader);
  const cleaned = stripFakeImagePrefixFromTsSegment(disguised);
  assert.equal(cleaned[0], 0x47);
  assert.equal(cleaned[188], 0x47);
  assert.equal(cleaned.length, 188 * 3);
});

test("detectHlsContainerExtension returns .ts for MPEG-TS and .mp4 for fMP4/init segments", () => {
  assert.equal(detectHlsContainerExtension(makeTsBuffer(), false), ".ts");
  assert.equal(detectHlsContainerExtension(makeMp4Header(), false), ".mp4");
  assert.equal(detectHlsContainerExtension(makeTsBuffer(), true), ".mp4");
  assert.equal(replaceVideoExtension("file:///a/b/ep1-1080p.mp4", ".ts"), "file:///a/b/ep1-1080p.ts");
});

test("validateCompletedMediaFile rejects empty, truncated, HTML, and unknown files", () => {
  assert.equal(validateCompletedMediaFile({ fileSize: 1024, headBytes: makeMp4Header() }).ok, false);
  assert.equal(validateCompletedMediaFile({ fileSize: 500_000, expectedTotalBytes: 2_000_000, headBytes: makeMp4Header() }).ok, false);

  const htmlBytes = new TextEncoder().encode("<!DOCTYPE html><html><body>403 Forbidden</body></html>");
  assert.equal(validateCompletedMediaFile({ fileSize: MIN_VALID_VIDEO_BYTES + 1000, headBytes: htmlBytes }).ok, false);

  assert.equal(validateCompletedMediaFile({ fileSize: MIN_VALID_VIDEO_BYTES + 1000, headBytes: makeMp4Header() }).ok, true);
  assert.equal(validateCompletedMediaFile({ fileSize: MIN_VALID_VIDEO_BYTES + 1000, headBytes: makeTsBuffer() }).ok, true);
});

test("reconcileDownloadButtonStates NEVER flips cancelled/failed/missing downloads to done", () => {
  const next = reconcileDownloadButtonStates({
    prevStates: { "slot1": "downloading", "slot2": "downloading", "slot3": "done" },
    activeStatusByKey: {},
    completedKeys: new Set(["slot2"]),
    allKeys: ["slot1", "slot2", "slot3"],
  });
  // slot1 disappeared from active and is NOT in completedKeys -> must reset to idle, NOT done!
  assert.equal(next["slot1"], "idle");
  // slot2 is verified in completedKeys -> done
  assert.equal(next["slot2"], "done");
  // slot3 was deleted from completedKeys -> resets to idle
  assert.equal(next["slot3"], "idle");
});
