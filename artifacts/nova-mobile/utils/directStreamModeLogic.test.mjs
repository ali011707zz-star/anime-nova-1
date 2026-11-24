import assert from "node:assert/strict";
import test from "node:test";
import {
  appendDirectStreamParams,
  buildDirectStreamHeaders,
  classifyDeliveryBadge,
  extractMediaUrlFromHtml,
  isDirectStreamVersion,
} from "./directStreamModeLogic.mjs";

test("isDirectStreamVersion enables direct mode only for v1.0.11+ and never for v1.0.10", () => {
  assert.equal(isDirectStreamVersion("1.0.10"), false);
  assert.equal(isDirectStreamVersion("1.0.9"), false);
  assert.equal(isDirectStreamVersion("1.0.11"), true);
  assert.equal(isDirectStreamVersion("1.1.0"), true);
  assert.deepEqual(buildDirectStreamHeaders("1.0.10"), {});
  assert.deepEqual(buildDirectStreamHeaders("1.0.11"), {
    "X-Nova-Direct-Mode": "1",
    "X-Nova-Version": "1.0.11",
  });
});

test("appendDirectStreamParams adds directOnly & clientExtract only when enabled", () => {
  const unchanged = appendDirectStreamParams("https://example.com/api/x?ep=1", false);
  assert.equal(unchanged, "https://example.com/api/x?ep=1");

  const enabled = appendDirectStreamParams("https://example.com/api/x?ep=1", true);
  assert.equal(enabled, "https://example.com/api/x?ep=1&directOnly=1&clientExtract=1");

  const qs = new URLSearchParams({ ep: "2" });
  appendDirectStreamParams(qs, true);
  assert.equal(qs.get("directOnly"), "1");
  assert.equal(qs.get("clientExtract"), "1");
});

test("classifyDeliveryBadge accurately distinguishes direct, client-extract, VIP, and proxy", () => {
  assert.equal(classifyDeliveryBadge("https://cdn.example.com/master.m3u8", "direct").mode, "direct");
  assert.equal(classifyDeliveryBadge("https://cdn.example.com/master.m3u8", "client-extract").mode, "client-extract");
  assert.equal(classifyDeliveryBadge("/api/tg-stream/123?sig=abc", "vps-vip").mode, "vps-vip");
  assert.equal(classifyDeliveryBadge("https://animenovaa.duckdns.org/api/anime/hls-proxy?url=x").mode, "vps-proxy");
});

test("extractMediaUrlFromHtml extracts HLS from standard embed, packed JS, and OK.ru metadata", () => {
  const jwHtml = `<script>jwplayer("v").setup({sources:[{file:"https://cdn.host.xyz/hls/1080/master.m3u8?t=1"}]});</script>`;
  assert.deepEqual(extractMediaUrlFromHtml(jwHtml, "https://embed.host.xyz/e/1"), {
    url: "https://cdn.host.xyz/hls/1080/master.m3u8?t=1",
    type: "hls",
  });

  const packed = `<script>eval(function(p,a,c,k,e,d){while(c--)if(k[c])p=p.replace(new RegExp('\\b'+c.toString(a)+'\\b','g'),k[c]);return p}('0:"1://2.3/4.5"',6,6,'file|https|edge|cdn|video|m3u8'.split('|'),0,{}))</script>`;
  assert.deepEqual(extractMediaUrlFromHtml(packed, "https://filemoon.sx/e/1"), {
    url: "https://edge.cdn/video.m3u8",
    type: "hls",
  });

  const okMeta = JSON.stringify({ hlsManifestUrl: "https://vd.okcdn.ru/hls/master.m3u8" });
  const okOpts = JSON.stringify({ flashvars: { metadata: okMeta } }).replace(/"/g, "&quot;");
  const okHtml = `<div data-options="${okOpts}"></div>`;
  assert.deepEqual(extractMediaUrlFromHtml(okHtml, "https://ok.ru/videoembed/123", "okru"), {
    url: "https://vd.okcdn.ru/hls/master.m3u8",
    type: "hls",
  });
});
