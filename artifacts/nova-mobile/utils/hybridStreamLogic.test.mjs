import test from "node:test";
import assert from "node:assert/strict";
import {
  DIRECT_PROBE_TIMEOUT_MS,
  DIRECT_REBUFFER_TIMEOUT_MS,
  applyProxyPromotion,
  buildHybridPlayerSource,
  buildVpsProxyFallbackUrl,
  isOwnVpsProxyUrl,
  resolveHybridLoadTimeoutMs,
  resolveHybridStallTimings,
  stripDirectSegsFlag,
} from "./hybridStreamLogic.mjs";

const BASE = "https://animenovaa.duckdns.org";

test("isOwnVpsProxyUrl treats directSegs=1 as direct and normal proxy/local/VIP as proxy", () => {
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/hls-proxy?url=x&directSegs=1`), false);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/hls-proxy?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/video-proxy?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/dubbed/stream?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/aw-dubbed/mf-stream?link=x`), true);
  assert.equal(isOwnVpsProxyUrl("file:///data/user/0/app/ep1.mp4"), true);
  assert.equal(isOwnVpsProxyUrl("https://cdn.example.com/master.m3u8"), false);
});

test("buildVpsProxyFallbackUrl builds dormant HLS and MP4 fallbacks for direct CDNs", () => {
  const hlsFallback = buildVpsProxyFallbackUrl({
    directUrl: "https://cdn.example.com/hls/master.m3u8?token=abc",
    referer: "https://embed.example.com/",
    baseUrl: BASE,
    contentType: "hls",
  });
  assert.equal(
    hlsFallback,
    `${BASE}/api/anime/hls-proxy?url=${encodeURIComponent("https://cdn.example.com/hls/master.m3u8?token=abc")}&ref=${encodeURIComponent("https://embed.example.com/")}`,
  );

  const mp4Fallback = buildVpsProxyFallbackUrl({
    directUrl: "https://pixeldrain.com/api/file/AbC123",
    baseUrl: BASE,
    contentType: "progressive",
  });
  assert.equal(
    mp4Fallback,
    `${BASE}/api/anime/video-proxy?url=${encodeURIComponent("https://pixeldrain.com/api/file/AbC123")}`,
  );

  const foupixFallback = buildVpsProxyFallbackUrl({
    directUrl: "https://stream.foupix.com/videos/ep1.mp4",
    baseUrl: BASE,
    contentType: "progressive",
  });
  assert.equal(
    foupixFallback,
    `${BASE}/api/dubbed/stream?url=${encodeURIComponent("https://stream.foupix.com/videos/ep1.mp4")}`,
  );
});

test("buildVpsProxyFallbackUrl prefers existing encrypted/mf-stream proxy and strips directSegs=1", () => {
  const mfFallback = buildVpsProxyFallbackUrl({
    directUrl: "https://download2391.mediafire.com/tok/key/ep1.mp4",
    existingProxyUrl: `${BASE}/api/aw-dubbed/mf-stream?link=https%3A%2F%2Fwww.mediafire.com%2Ffile%2Fkey`,
    baseUrl: BASE,
    contentType: "progressive",
  });
  assert.equal(mfFallback, `${BASE}/api/aw-dubbed/mf-stream?link=https%3A%2F%2Fwww.mediafire.com%2Ffile%2Fkey`);

  const segFallback = buildVpsProxyFallbackUrl({
    directUrl: `${BASE}/api/anime/hls-proxy?url=enc_abc&directSegs=1`,
    baseUrl: BASE,
  });
  assert.equal(segFallback, `${BASE}/api/anime/hls-proxy?url=enc_abc`);
  assert.equal(stripDirectSegsFlag("/api/anime/hls-proxy?url=enc_abc&directsegs=1"), "/api/anime/hls-proxy?url=enc_abc");
});

test("buildVpsProxyFallbackUrl skips local files, NOVA VIP, and already-proxied streams", () => {
  assert.equal(buildVpsProxyFallbackUrl({ directUrl: "file:///tmp/ep1.mp4", baseUrl: BASE }), null);
  assert.equal(buildVpsProxyFallbackUrl({ directUrl: `${BASE}/api/tg-media/stream/123`, baseUrl: BASE, site: "nova_tg" }), null);
  assert.equal(buildVpsProxyFallbackUrl({ directUrl: `${BASE}/api/anime/hls-proxy?url=enc_abc`, baseUrl: BASE }), null);
});

test("buildHybridPlayerSource keeps direct primary and attaches dormant proxyFallback without server headers", () => {
  const built = buildHybridPlayerSource({
    url: "https://cdn.example.com/video/playlist.m3u8",
    headers: { Referer: "https://player.example.com/", "User-Agent": "Mozilla/5.0" },
    baseUrl: BASE,
    contentType: "hls",
    label: "سيرفر · KW",
    quality: "1080p FHD",
  });
  assert.equal(built.url, "https://cdn.example.com/video/playlist.m3u8");
  assert.equal(built.headers?.Referer, "https://player.example.com/");
  assert.ok(built.proxyFallback?.url.startsWith(`${BASE}/api/anime/hls-proxy?`));
  assert.equal(built.proxyFallback?.contentType, "hls");
  assert.equal(built.proxyFallback?.headers, undefined);

  const promoted = applyProxyPromotion(built, built.proxyFallback);
  assert.equal(promoted.url, built.proxyFallback?.url);
  assert.equal(promoted.headers, undefined);
  assert.equal(promoted.proxyFallback, undefined);
  assert.equal(promoted.label, "سيرفر · KW");
});

test("hybrid load and stall timeouts tighten fast only when proxyFallback exists", () => {
  assert.equal(
    resolveHybridLoadTimeoutMs({ hasProxyFallback: true, hasStartedPlayback: false, animePlayback: true }),
    DIRECT_PROBE_TIMEOUT_MS,
  );
  assert.equal(
    resolveHybridLoadTimeoutMs({ hasProxyFallback: true, hasStartedPlayback: true, animePlayback: true }),
    DIRECT_REBUFFER_TIMEOUT_MS,
  );
  assert.equal(
    resolveHybridLoadTimeoutMs({ hasProxyFallback: false, hasStartedPlayback: false, animePlayback: true }),
    25_000,
  );
  assert.equal(resolveHybridStallTimings({ hasProxyFallback: true }).stallTimeoutMs, 8000);
  assert.equal(resolveHybridStallTimings({ hasProxyFallback: false }).stallTimeoutMs, 25_000);
});
