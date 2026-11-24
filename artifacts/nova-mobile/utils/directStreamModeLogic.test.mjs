import assert from "node:assert/strict";
import test from "node:test";
import {
  appendDirectStreamParams,
  buildDirectStreamHeaders,
  classifyDeliveryBadge,
  extractMediaUrlFromHtml,
  extractSingleHopRedirect,
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
  assert.equal(classifyDeliveryBadge("https://animenovaa.duckdns.org/api/anime/hls-proxy?url=x&directSegs=1").mode, "direct");
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


test("extractMediaUrlFromHtml supports MixDrop protocol-relative, StreamTape robotlink, VOE atob, and 1-hop redirects", () => {
  const mixdropHtml = `<script>MDCore.wurl = "//a-delivery29.mxcontent.net/v/abc123.mp4?s=sig&e=999";</script>`;
  assert.deepEqual(extractMediaUrlFromHtml(mixdropHtml, "https://mixdrop.top/e/abc123"), {
    url: "https://a-delivery29.mxcontent.net/v/abc123.mp4?s=sig&e=999",
    type: "mp4",
  });

  const streamtapeHtml = `<script>
    document.getElementById('robotlink').innerHTML = '//streamtape.com/get_video?id=decoy' + ('xx&token=bad').substring(2);
    document.getElementById('robotlink').innerHTML = '//streamtape.com/get_video?id=real123' + ('abcd&expires=999&ip=1.2.3.4&token=ok789').substring(2).substring(2);
  </script>`;
  assert.deepEqual(extractMediaUrlFromHtml(streamtapeHtml, "https://streamtape.com/e/real123"), {
    url: "https://streamtape.com/get_video?id=real123&expires=999&ip=1.2.3.4&token=ok789&stream=1",
    type: "mp4",
  });

  const voeB64 = Buffer.from("https://cdn.caseyseemavoid.com/hls/master.m3u8?t=1").toString("base64");
  const voeHtml = `<script>var sources = {'hls': atob("${voeB64}")};</script>`;
  assert.deepEqual(extractMediaUrlFromHtml(voeHtml, "https://caseyseemavoid.com/e/xyz"), {
    url: "https://cdn.caseyseemavoid.com/hls/master.m3u8?t=1",
    type: "hls",
  });

  const redirectHtml = `<script>window.location.href = 'https://caseyseemavoid.com/e/kfyoo8ru12gl';</script>`;
  assert.equal(
    extractSingleHopRedirect(redirectHtml, "https://voe.sx/e/kfyoo8ru12gl"),
    "https://caseyseemavoid.com/e/kfyoo8ru12gl",
  );
});

function encodeVoePayload(obj) {
  let s = Buffer.from(JSON.stringify(obj), "utf8").toString("base64");
  s = [...s].reverse().join("");
  s = [...s].map((ch) => String.fromCharCode(ch.charCodeAt(0) + 3)).join("");
  s = Buffer.from(s, "utf8").toString("base64");
  const junk = ["@$", "^^", "~@", "%?"];
  s = s.slice(0, 12) + junk[0] + s.slice(12, 24) + junk[2] + s.slice(24);
  return s.replace(/[a-zA-Z]/g, (c) => {
    const base = c <= "Z" ? 65 : 97;
    return String.fromCharCode(((c.charCodeAt(0) - base + 13) % 26) + base);
  });
}

import {
  extractMediaFireFileKey,
  extractMediaFireDirectUrlFromHtml,
} from "./directStreamModeLogic.mjs";

test("extractMediaUrlFromHtml decodes VOE 6-step JSON payload and ignores decoy MP4s", () => {
  const encrypted = encodeVoePayload({
    source: "https://cdn-edge.caseyseemavoid.com/engine/hls2/01/abc/master.m3u8?t=99",
  });
  const html = `
    <video><source src="https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/360/Big_Buck_Bunny_360_10s_1MB.mp4"></video>
    <script>var decoy = "https://samplelib.com/lib/preview/mp4/sample-5s.mp4";</script>
    <script type="application/json">${JSON.stringify([encrypted])}</script>
  `;
  assert.deepEqual(extractMediaUrlFromHtml(html, "https://caseyseemavoid.com/e/xyz123"), {
    url: "https://cdn-edge.caseyseemavoid.com/engine/hls2/01/abc/master.m3u8?t=99",
    type: "hls",
  });

  const decoyOnly = `<video src="https://test-videos.co.uk/vids/big_buck_bunny.mp4"></video>`;
  assert.equal(extractMediaUrlFromHtml(decoyOnly, "https://caseyseemavoid.com/e/xyz123"), null);
});

test("extractMediaFireFileKey and extractMediaFireDirectUrlFromHtml resolve AF and AW MediaFire formats", () => {
  assert.equal(
    extractMediaFireFileKey("https://download2393.mediafire.com/7ab8cd9ef0123456/u8x9y0z1a2b3c4d/episode_1.mp4"),
    "u8x9y0z1a2b3c4d",
  );
  assert.equal(
    extractMediaFireFileKey("https://animenovaa.duckdns.org/api/aw-dubbed/mf-stream?link=https%3A%2F%2Fwww.mediafire.com%2Ffile%2Fabc12345xyz%2Fep1.mp4%2Ffile"),
    "abc12345xyz",
  );
  assert.equal(
    extractMediaFireFileKey("https://www.mediafire.com/file/k9m8n7b6v5c4/ep2.mp4/file"),
    "k9m8n7b6v5c4",
  );

  const mfHtml = `<a class="input popsok" aria-label="Download file" href="https://download1582.mediafire.com/fresh123token/k9m8n7b6v5c4/ep2.mp4" id="downloadButton">Download</a>`;
  assert.equal(
    extractMediaFireDirectUrlFromHtml(mfHtml),
    "https://download1582.mediafire.com/fresh123token/k9m8n7b6v5c4/ep2.mp4",
  );

  const scrambled = Buffer.from("https://download999.mediafire.com/tok/key12345/video.mp4").toString("base64");
  const mfScrambledHtml = `<a id="downloadButton" data-scrambled-url="${scrambled}" href="#">Download</a>`;
  assert.equal(
    extractMediaFireDirectUrlFromHtml(mfScrambledHtml),
    "https://download999.mediafire.com/tok/key12345/video.mp4",
  );
});
