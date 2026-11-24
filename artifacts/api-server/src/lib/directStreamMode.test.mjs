import assert from "node:assert/strict";
import test from "node:test";
import {
  getDirectModeFlags,
  toDirectAnimeSource,
  toDirectDubbedPayload,
  unwrapProxyUrl,
} from "./directStreamMode.js";

test("getDirectModeFlags strictly isolates v1.0.10 from v1.0.11 direct-only mode", () => {
  // v1.0.10 client never triggers directOnly
  assert.deepEqual(
    getDirectModeFlags({
      query: {},
      headers: { "x-nova-version": "1.0.10", "user-agent": "NovaAnime/1.0.10 (Mobile)" },
    }),
    { directOnly: false, clientExtract: false, appVersion: "1.0.10" },
  );

  // Even if directOnly=1 is passed by an older v1.0.10 client without X-Nova-Direct-Mode, stay false
  assert.deepEqual(
    getDirectModeFlags({
      query: { directOnly: "1", clientExtract: "1" },
      headers: { "x-nova-version": "1.0.10", "user-agent": "NovaAnime/1.0.10 (Mobile)" },
    }),
    { directOnly: false, clientExtract: false, appVersion: "1.0.10" },
  );

  // v1.0.11 client with directOnly=1 + clientExtract=1 activates cleanly
  assert.deepEqual(
    getDirectModeFlags({
      query: { directOnly: "1", clientExtract: "1" },
      headers: {
        "x-nova-version": "1.0.11",
        "x-nova-direct-mode": "1",
        "user-agent": "NovaAnime/1.0.11 (Mobile)",
      },
    }),
    { directOnly: true, clientExtract: true, appVersion: "1.0.11" },
  );
});

test("unwrapProxyUrl extracts raw CDN URL and referer from hls-proxy and video-proxy", () => {
  const res = unwrapProxyUrl(
    "/api/anime/hls-proxy?url=https%3A%2F%2Fcdn.example.com%2Fmaster.m3u8&ref=https%3A%2F%2Fplayer.example.com%2F",
    (v) => v,
    () => false,
  );
  assert.equal(res.wasProxied, true);
  assert.equal(res.url, "https://cdn.example.com/master.m3u8");
  assert.equal(res.referer, "https://player.example.com/");
});

test("toDirectAnimeSource unwraps open CDN sources directly with headers and zero VPS proxy", () => {
  const out = toDirectAnimeSource(
    {
      site: "animewitcher",
      url: "/api/anime/video-proxy?url=https%3A%2F%2Fdownload123.mediafire.com%2Fep1.mp4&ref=https%3A%2F%2Fmediafire.com%2F",
      directUrl: "/api/anime/video-proxy?url=https%3A%2F%2Fdownload123.mediafire.com%2Fep1.mp4&ref=https%3A%2F%2Fmediafire.com%2F",
      directType: "mp4",
    },
    true,
    (v) => v,
    () => false,
  );
  assert.equal(out.deliveryMode, "direct");
  assert.equal(out.directUrl, "https://download123.mediafire.com/ep1.mp4");
  assert.equal(out.url, "https://download123.mediafire.com/ep1.mp4");
  assert.equal(out.corsOk, true);
  assert.equal(out.headers.Referer, "https://mediafire.com/");
  assert.equal(out.headers.Origin, "https://mediafire.com");
});

test("toDirectAnimeSource routes IP-locked embed hosts to client-extract on phone", () => {
  const out = toDirectAnimeSource(
    {
      site: "anime4up",
      url: "https://filemoon.sx/e/abc123",
      directUrl: "https://cdn-ip-locked.filemoon.sx/hls/master.m3u8",
      directType: "hls",
    },
    true,
    (v) => v,
    () => false,
  );
  assert.equal(out.deliveryMode, "client-extract");
  assert.equal(out.clientExtract?.embedUrl, "https://filemoon.sx/e/abc123");
  assert.equal(out.clientExtract?.hostKind, "standard");
});

test("toDirectAnimeSource and toDirectDubbedPayload preserve NOVA VIP Telegram streams", () => {
  const animeVip = toDirectAnimeSource(
    { site: "nova_tg", url: "/api/tg-stream/123?sig=abc", directUrl: "/api/tg-stream/123?sig=abc" },
    true,
    (v) => v,
    () => false,
  );
  assert.equal(animeVip.deliveryMode, "vps-vip");
  assert.equal(animeVip.directUrl, "/api/tg-stream/123?sig=abc");

  const dubbedDirect = toDirectDubbedPayload(
    {
      hlsUrl: "/api/anime/hls-proxy?url=https%3A%2F%2Fcdn.spacetoon.com%2Fep1.m3u8&ref=https%3A%2F%2Fcarateen.tv%2F",
      rawUrl: "https://cdn.spacetoon.com/ep1.m3u8",
      type: "hls",
    },
    "https://carateen.tv/",
    true,
    (v) => v,
    () => false,
  );
  assert.equal(dubbedDirect.deliveryMode, "direct");
  assert.equal(dubbedDirect.hlsUrl, "https://cdn.spacetoon.com/ep1.m3u8");
  assert.equal(dubbedDirect.headers?.Referer, "https://carateen.tv/");
});
