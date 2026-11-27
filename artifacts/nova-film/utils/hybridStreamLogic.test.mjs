import test from "node:test";
import assert from "node:assert/strict";
import {
  DIRECT_STALL_TIMEOUT_MS,
  buildDeterministicPlayerSource,
  buildHybridPlayerSource,
  buildVpsProxyFallbackUrl,
  getHybridBufferProfile,
  isFirstPartyVpsUrl,
  isFixedVpsPlaybackSource,
  isOwnVpsProxyUrl,
  resolveDirectInternalMp4Download,
  resolveHybridLoadTimeoutMs,
  resolveHybridStallTimings,
  shouldPromoteOnRebufferBurst,
  shouldSkipStallNudge,
  shouldTriggerAssignGuard,
  stripDirectSegsFlag,
} from "./hybridStreamLogic.mjs";

const BASE = "https://animenovaa.duckdns.org";

test("isFirstPartyVpsUrl isolates Nova VPS URLs from external CDN URLs", () => {
  assert.equal(isFirstPartyVpsUrl(`${BASE}/api/anime/download-mp4?url=x`, BASE), true);
  assert.equal(isFirstPartyVpsUrl("/api/anime/proxy-text?url=x", BASE), true);
  assert.equal(isFirstPartyVpsUrl("https://download1234.mediafire.com/tok/key/ep1.mp4", BASE), false);
  assert.equal(isFirstPartyVpsUrl("https://pixeldrain.com/api/file/abc123", BASE), false);
  assert.equal(isFirstPartyVpsUrl("https://cdn.mewstream.buzz/stream/ep1.m3u8", BASE), false);
});

test("isOwnVpsProxyUrl detects all VPS streaming/proxy routes cleanly", () => {
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/hls-proxy?url=x&directSegs=1`), false);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/hls-proxy?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/anime/video-proxy?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/dubbed/stream?url=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/aw-dubbed/mf-stream?link=x`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/tg-media/stream/123`), true);
  assert.equal(isOwnVpsProxyUrl(`${BASE}/api/tg-stream/123`), true);
  assert.equal(isOwnVpsProxyUrl("file:///data/user/0/app/ep1.mp4"), true);
  assert.equal(isOwnVpsProxyUrl("https://cdn.example.com/master.m3u8"), false);
  assert.equal(stripDirectSegsFlag("/api/anime/hls-proxy?url=enc_abc&directsegs=1"), "/api/anime/hls-proxy?url=enc_abc");
});

test("Fixed Deterministic Plan routes KW/MP/RE/AD2/MediaFire/Pixeldrain/clientExtract directly with zero proxyFallback", () => {
  for (const [site, url] of [
    ["kawaii", "https://cdn.momentoai.dev/ep1.mp4?md5=abc&expires=999"],
    ["megaplay", "https://cdn.mewstream.buzz/hls/master.m3u8"],
    ["megaplay_dub", "https://cdn.mewstream.buzz/hls/dub.m3u8"],
    ["reflix", "https://hls.krussdomi.com/playlist/master.m3u8"],
    ["reflix_dub", "https://hls.krussdomi.com/playlist/dub.m3u8"],
    ["reanime", "https://bl.krussdomi.com/playlist/master.m3u8"],
    ["anime4up2", "https://cdn.ad2.example/playlist.m3u8"],
    ["animewitcher", "https://download2391.mediafire.com/abc/key/ep1.mp4"],
    ["animeify", "https://pixeldrain.com/api/file/XyZ123"],
  ]) {
    const built = buildDeterministicPlayerSource({
      url,
      headers: { Referer: "https://player.example.com/", "User-Agent": "Mozilla/5.0" },
      baseUrl: BASE,
      site,
      label: `سيرفر · ${site}`,
    });
    assert.equal(built.url, url, `${site} must play directly on phone`);
    assert.equal(built.headers?.Referer, "https://player.example.com/");
    assert.equal(built.proxyFallback, undefined, `${site} must not carry runtime proxyFallback probing`);
  }

  assert.equal(buildVpsProxyFallbackUrl({ directUrl: "https://cdn.example.com/ep1.m3u8", baseUrl: BASE }), null);
  const compat = buildHybridPlayerSource({ url: "https://pixeldrain.com/api/file/abc", baseUrl: BASE, site: "animewitcher" });
  assert.equal(compat.proxyFallback, undefined);
});

test("Fixed Deterministic Plan routes SA, NOVA VIP, stream.foupix.com, and Referer-locked dubbed/StarDima HLS straight to VPS", () => {
  const sa = buildDeterministicPlayerSource({
    url: "https://cdn.sanime.example/ep1.mp4",
    headers: { Referer: "https://sanime.net/" },
    baseUrl: BASE,
    site: "sanime",
    contentType: "progressive",
  });
  assert.ok(sa.url.startsWith(`${BASE}/api/anime/video-proxy?`), "SA must go straight to VPS video-proxy");
  assert.equal(sa.headers, undefined);
  assert.equal(sa.proxyFallback, undefined);

  const vip = buildDeterministicPlayerSource({
    url: `${BASE}/api/tg-stream/9988`,
    baseUrl: BASE,
    site: "nova_tg",
    deliveryMode: "vps-vip",
  });
  assert.equal(vip.url, `${BASE}/api/tg-stream/9988`);
  assert.equal(vip.proxyFallback, undefined);

  const foupix = buildDeterministicPlayerSource({
    url: "https://stream.foupix.com/videos/ep1.mp4",
    headers: { Referer: "https://www.arabic-toons.com/" },
    baseUrl: BASE,
    site: "dubbed_at_1080",
    provider: "arabic-toons",
    contentType: "progressive",
  });
  assert.equal(
    foupix.url,
    `${BASE}/api/dubbed/stream?url=${encodeURIComponent("https://stream.foupix.com/videos/ep1.mp4")}`,
  );
  assert.equal(foupix.headers, undefined);

  const carateenHls = buildDeterministicPlayerSource({
    url: "https://pegasus.5387692.xyz/api/ct/hls/abc/playlist.m3u8",
    headers: { Referer: "https://carateen.tv/" },
    baseUrl: BASE,
    site: "dubbed_ct_1080",
    provider: "carateen",
    contentType: "hls",
  });
  assert.ok(carateenHls.url.startsWith(`${BASE}/api/anime/hls-proxy?`));
  assert.equal(carateenHls.headers, undefined);

  const stardimaHls = buildDeterministicPlayerSource({
    url: "https://cdn.stardima-hls.example/stream/playlist.m3u8",
    headers: { Referer: "https://stardima.example/" },
    baseUrl: BASE,
    site: "stardima_catalog",
    provider: "stardima",
    contentType: "hls",
  });
  assert.ok(stardimaHls.url.startsWith(`${BASE}/api/anime/hls-proxy?`));

  // StarDima & Dubbed open MP4 / Pixeldrain / MediaFire / Drive stay direct
  for (const directUrl of [
    "https://pixeldrain.com/api/file/Sd1234",
    "https://download991.mediafire.com/tok/key/ep1.mp4",
    "https://drive.google.com/uc?id=123&export=download",
    "https://cdn.openhost.example/video.mp4",
  ]) {
    assert.equal(
      isFixedVpsPlaybackSource({ url: directUrl, site: "stardima_catalog", provider: "stardima", contentType: "progressive" }),
      false,
    );
  }
});

test("resolveDirectInternalMp4Download uses 0% VPS for direct MP4s and preserves VPS for HLS/SA/VIP/Foupix", () => {
  const mfDl = resolveDirectInternalMp4Download({
    url: "https://animenovaa.duckdns.org/api/aw-dubbed/mf-stream?link=x",
    rawUrl: "https://download1234.mediafire.com/tok/key/ep1.mp4",
    directType: "mp4",
    site: "animewitcher",
    headers: { "User-Agent": "Mozilla/5.0", Referer: "https://www.mediafire.com/" },
    baseUrl: BASE,
  });
  assert.equal(mfDl.isDirect, true);
  assert.equal(mfDl.url, "https://download1234.mediafire.com/tok/key/ep1.mp4");
  assert.equal(mfDl.headers?.Referer, "https://www.mediafire.com/");

  const pdDl = resolveDirectInternalMp4Download({
    url: "https://pixeldrain.com/api/file/abc999",
    directType: "mp4",
    site: "animeify",
    baseUrl: BASE,
  });
  assert.equal(pdDl.isDirect, true);
  assert.equal(pdDl.url, "https://pixeldrain.com/api/file/abc999");

  const kwMp4Dl = resolveDirectInternalMp4Download({
    url: "https://cdn.momentoai.dev/anime/ep2.mp4?md5=abc&expires=999",
    directType: "mp4",
    site: "kawaii",
    headers: { Referer: "https://kawaiianime.cc/" },
    baseUrl: BASE,
  });
  assert.equal(kwMp4Dl.isDirect, true);
  assert.equal(kwMp4Dl.url, "https://cdn.momentoai.dev/anime/ep2.mp4?md5=abc&expires=999");

  // Unresolved MediaFire landing page must NOT be sent raw before resolveMediaFireDirectOnPhone
  const unresolvedMf = resolveDirectInternalMp4Download({
    url: "https://www.mediafire.com/file/abc123/ep1.mp4/file",
    directType: "mp4",
    site: "animewitcher",
    baseUrl: BASE,
  });
  assert.equal(unresolvedMf.isDirect, false);

  // HLS must still go via VPS download-mp4
  const kwHlsDl = resolveDirectInternalMp4Download({
    url: "https://cdn.mewstream.buzz/hls/master.m3u8",
    directType: "hls",
    site: "megaplay",
    baseUrl: BASE,
  });
  assert.equal(kwHlsDl.isDirect, false);

  // SA, NOVA VIP, stream.foupix.com stay on VPS
  assert.equal(resolveDirectInternalMp4Download({
    url: "https://cdn.example.com/ep1.mp4",
    directType: "mp4",
    site: "sanime",
    baseUrl: BASE,
  }).isDirect, false);

  assert.equal(resolveDirectInternalMp4Download({
    url: `${BASE}/api/tg-media/stream/123`,
    directType: "mp4",
    site: "nova_vip",
    baseUrl: BASE,
  }).isDirect, false);

  assert.equal(resolveDirectInternalMp4Download({
    url: "https://stream.foupix.com/videos/ep1.mp4",
    directType: "mp4",
    site: "stardima_1",
    provider: "stardima",
    baseUrl: BASE,
  }).isDirect, false);
});

test("buffer profile preserves smooth 1080p direct cushions and disables probe-abort timers", () => {
  const buf = getHybridBufferProfile();
  assert.equal(buf.preferredForwardBufferDuration, 32);
  assert.equal(buf.waitsToMinimizeStalling, true);
  assert.equal(buf.minBufferForPlayback, 1.8);

  assert.equal(resolveHybridLoadTimeoutMs({ hasProxyFallback: true, hasStartedPlayback: false, animePlayback: true }), 25_000);
  assert.equal(resolveHybridLoadTimeoutMs({ hasProxyFallback: false, hasStartedPlayback: true, animePlayback: true }), 40_000);
  assert.equal(resolveHybridLoadTimeoutMs({ hasProxyFallback: false, hasStartedPlayback: false, animePlayback: false }), 18_000);

  assert.deepEqual(resolveHybridStallTimings({ hasProxyFallback: true }), { stallTimeoutMs: DIRECT_STALL_TIMEOUT_MS, stallRecoveryMs: 12_000 });
  assert.equal(shouldTriggerAssignGuard({ hasProxyFallback: true, readyLogged: false }), false);
  assert.equal(shouldSkipStallNudge({ hasProxyFallback: true }), false);
  assert.equal(shouldPromoteOnRebufferBurst({ hasProxyFallback: true, rebufferTimestamps: [1, 2, 3], nowMs: 10 }), false);
});
