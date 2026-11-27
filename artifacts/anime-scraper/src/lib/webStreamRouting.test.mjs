import test from "node:test";
import assert from "node:assert/strict";
import {
  buildWebPlaybackCandidates,
  getWebDirectRequestHeaders,
  isBrowserDirectMediaUrl,
  isBrowserNonIframeMediaUrl,
  stripDirectSegsParam,
} from "./webStreamRouting.mjs";

test("getWebDirectRequestHeaders enables v1.0.11 direct mode headers", () => {
  const h = getWebDirectRequestHeaders("tok_123");
  assert.equal(h["X-Nova-Direct-Mode"], "1");
  assert.equal(h["X-Nova-Version"], "1.0.11");
  assert.equal(h["X-App-Token"], "tok_123");
});

test("stripDirectSegsParam strips directSegs=1 cleanly while preserving other params", () => {
  assert.equal(
    stripDirectSegsParam("/api/anime/hls-proxy?url=abc&ref=def&directSegs=1"),
    "/api/anime/hls-proxy?url=abc&ref=def",
  );
  assert.equal(
    stripDirectSegsParam("/api/anime/hls-proxy?directSegs=1&url=abc"),
    "/api/anime/hls-proxy?url=abc",
  );
});

test("Kawaii MP4 plays directly with no-referrer AND includes VPS proxy fallback", () => {
  const plan = buildWebPlaybackCandidates({
    site: "kawaii",
    directType: "mp4",
    deliveryMode: "direct",
    directUrl: "https://video.kawaii-anime.com/video/101922-ep1",
    headers: { Referer: "https://kawaiianime.cc/" },
  });
  assert.equal(plan.primaryUrl, "https://video.kawaii-anime.com/video/101922-ep1");
  assert.equal(plan.isDirect, true);
  assert.equal(plan.isHls, false);
  assert.equal(plan.needsNoReferrer, true);
  assert.equal(plan.fallbackUrls.length, 1);
  assert.ok(plan.fallbackUrls[0].startsWith("/api/anime/video-proxy?"));
  assert.ok(plan.fallbackUrls[0].includes("kawaiianime.cc"));
});

test("Pixeldrain routes via VPS proxy (browsers get 403 ORB) while MediaFire CDN plays directly", () => {
  const pdUrl = "https://pixeldrain.com/api/file/J4kxXwYY";
  const mfUrl = "https://download1075.mediafire.com/abc123/xyz456/Episode1.mp4";
  assert.equal(isBrowserDirectMediaUrl(pdUrl, { site: "animewitcher" }), false);
  assert.equal(isBrowserNonIframeMediaUrl(pdUrl), true);
  assert.equal(isBrowserDirectMediaUrl(mfUrl, { site: "anifox" }), true);
  assert.equal(isBrowserNonIframeMediaUrl(mfUrl), true);

  const pdPlan = buildWebPlaybackCandidates({ site: "animewitcher", directUrl: pdUrl, directType: "mp4" });
  assert.ok(pdPlan.primaryUrl.startsWith("/api/anime/video-proxy?"));
  assert.equal(pdPlan.isDirect, false);

  const mfPlan = buildWebPlaybackCandidates({ site: "anifox", directUrl: mfUrl, directType: "mp4" });
  assert.equal(mfPlan.primaryUrl, mfUrl);
  assert.equal(mfPlan.isDirect, true);
  assert.equal(mfPlan.fallbackUrls.length, 1);
});

test("Reflix / RE DUB directSegs=1 strips directSegs for browser CORS safety", () => {
  const plan = buildWebPlaybackCandidates({
    site: "reflix",
    directType: "hls",
    deliveryMode: "direct",
    directUrl: "/api/anime/hls-proxy?url=https%3A%2F%2Ffetch8.flixcloud.cc%2Fmaster.m3u8&ref=https%3A%2F%2Fflixcloud.cc%2F&directSegs=1",
  });
  assert.equal(plan.isHls, true);
  assert.equal(plan.isDirect, false);
  assert.ok(!plan.primaryUrl.includes("directSegs=1"));
  assert.ok(plan.primaryUrl.startsWith("/api/anime/hls-proxy?"));
});

test("VPS-only sites (sanime, nova_tg) always route through VPS proxy", () => {
  const saPlan = buildWebPlaybackCandidates({
    site: "sanime",
    directType: "mp4",
    url: "https://server.sanime.net/Video3/3144/1.mp4",
  });
  assert.equal(saPlan.isDirect, false);
  assert.ok(saPlan.primaryUrl.startsWith("/api/anime/video-proxy?"));

  const tgPlan = buildWebPlaybackCandidates({
    site: "nova_tg",
    deliveryMode: "vps-vip",
    directUrl: "/api/tg-stream/abc123",
  });
  assert.equal(tgPlan.primaryUrl, "/api/tg-stream/abc123");
  assert.equal(tgPlan.isDirect, false);
});
