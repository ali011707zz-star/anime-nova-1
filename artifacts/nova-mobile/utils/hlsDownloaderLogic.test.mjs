import test from "node:test";
import assert from "node:assert/strict";
import {
  buildHlsManifestCandidates,
  canPhoneFetchHlsDirectly,
  parseMasterM3u8,
  parseMediaM3u8,
  selectBestHlsVariant,
} from "./hlsDownloaderLogic.mjs";

test("parseMasterM3u8 ignores I-FRAME streams and picks requested quality", () => {
  const master = `#EXTM3U
#EXT-X-STREAM-INF:BANDWIDTH=1200000,RESOLUTION=1280x720
video_720.m3u8
#EXT-X-I-FRAME-STREAM-INF:BANDWIDTH=500000,RESOLUTION=1280x720,URI="iframes.m3u8"
#EXT-X-STREAM-INF:BANDWIDTH=3500000,RESOLUTION=1920x1080
https://cdn.example.com/1080/index.m3u8`;

  const parsed = parseMasterM3u8(master, "https://cdn.example.com/root/master.m3u8");
  assert.equal(parsed.isMaster, true);
  assert.equal(parsed.variants.length, 2);
  assert.equal(parsed.variants[0].uri, "https://cdn.example.com/root/video_720.m3u8");
  assert.equal(selectBestHlsVariant(parsed.variants, "1080p")?.height, 1080);
  assert.equal(selectBestHlsVariant(parsed.variants, "720p")?.height, 720);
  assert.equal(selectBestHlsVariant(parsed.variants, "480p")?.height, 720);
});

test("parseMediaM3u8 accepts unencrypted TS playlists and rejects AES-128", () => {
  const media = `#EXTM3U
#EXT-X-TARGETDURATION:6
#EXTINF:5.0,
seg-1.ts
#EXTINF:5.0,
seg-2.ts
#EXT-X-ENDLIST`;

  const ok = parseMediaM3u8(media, "https://cdn.example.com/1080/index.m3u8");
  assert.equal(ok.supported, true);
  assert.equal(ok.segments.length, 2);
  assert.equal(ok.segments[0].uri, "https://cdn.example.com/1080/seg-1.ts");
  assert.equal(ok.totalDurationSec, 10);

  const encrypted = `#EXTM3U
#EXT-X-KEY:METHOD=AES-128,URI="https://cdn.example.com/key.bin"
#EXTINF:5.0,
seg-1.ts
#EXT-X-ENDLIST`;
  const bad = parseMediaM3u8(encrypted, "https://cdn.example.com/1080/index.m3u8");
  assert.equal(bad.supported, false);
  assert.equal(bad.reason, "encrypted_aes-128");
});

test("canPhoneFetchHlsDirectly blocks VPS-IP-bound and VPS-only hosts", () => {
  assert.equal(
    canPhoneFetchHlsDirectly("https://fetch.nexabloom.top/anime/abc/index.m3u8?token=xyz"),
    true,
  );
  assert.equal(
    canPhoneFetchHlsDirectly("https://strm11.uqload.vc/hls2/04/index.m3u8?i=95.182&e=14400"),
    false,
  );
  assert.equal(
    canPhoneFetchHlsDirectly("https://pegasus.5387692.xyz/api/sp/hls/123/playlist.m3u8"),
    false,
  );
});

test("buildHlsManifestCandidates unwraps safe direct CDN first and falls back to VPS hls-proxy", () => {
  const candidates = buildHlsManifestCandidates({
    manifestUrl:
      "https://animenovaa.duckdns.org/api/anime/hls-proxy?url=https%3A%2F%2Ffetch8.flixcloud.cc%2Fmaster.m3u8&ref=https%3A%2F%2Fflixcloud.cc%2F",
    baseUrl: "https://animenovaa.duckdns.org",
  });
  assert.equal(candidates.length, 2);
  assert.equal(candidates[0].mode, "direct-unwrapped");
  assert.equal(candidates[0].url, "https://fetch8.flixcloud.cc/master.m3u8");
  assert.equal(candidates[0].headers?.Referer, "https://flixcloud.cc/");
  assert.equal(candidates[1].mode, "vps-hls-proxy");
});
