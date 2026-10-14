import assert from "node:assert/strict";
import test from "node:test";
import {
  fetchSafeExternalResponse,
  isAllowedStardimaPageUrl,
  probeStardimaMediaUrl,
} from "./stardima-playback.mjs";

test("approved StarDima partner pages pass the page host policy; private and unrelated pages do not", () => {
  assert.equal(isAllowedStardimaPageUrl("https://strema.top/embed?id=1"), true);
  assert.equal(isAllowedStardimaPageUrl("https://sub.mixdrop.top/e/1"), true);
  assert.equal(isAllowedStardimaPageUrl("https://127.0.0.1/admin"), false);
  assert.equal(isAllowedStardimaPageUrl("https://unreviewed.example.org/player"), false);
});

test("bounded range verification accepts a real MP4 signature and sends a byte range", async () => {
  const calls = [];
  const fakeFetch = async (url, init) => {
    calls.push({ url, method: init.method, range: init.headers.Range });
    if (init.method === "HEAD") {
      return new Response(null, { status: 405 });
    }
    return new Response(new Uint8Array([0, 0, 0, 24, 102, 116, 121, 112, 105, 115, 111, 109]), {
      status: 206,
      headers: { "content-type": "application/octet-stream" },
    });
  };
  const result = await probeStardimaMediaUrl("https://cdn.example.org/video", {
    fetchImpl: fakeFetch,
    safeUrl: () => true,
    maxBytes: 1024,
  });

  assert.equal(result.ok, true);
  assert.equal(result.type, "mp4");
  assert.equal(calls[0].method, "HEAD");
  assert.equal(calls[1].method, "GET");
  assert.equal(calls[1].range, "bytes=0-1023");
});

test("a page returning HTML is unsupported even when its HTTP status is 200", async () => {
  const fakeFetch = async (_url, init) => init.method === "HEAD"
    ? new Response(null, { status: 200, headers: { "content-type": "text/html" } })
    : new Response("<!doctype html><html><body>ad and external player</body></html>", {
        status: 200,
        headers: { "content-type": "text/html" },
      });
  const result = await probeStardimaMediaUrl("https://cdn.example.org/watch", {
    fetchImpl: fakeFetch,
    safeUrl: () => true,
  });

  assert.equal(result.ok, false);
  assert.equal(result.state, "unsupported");
  assert.equal(result.reason, "external_player_page_only");
});

test("HLS is verified only after a bounded request reaches a real segment", async () => {
  const calls = [];
  const ts = new Uint8Array(752);
  ts[0] = 0x47;
  ts[188] = 0x47;
  ts[376] = 0x47;
  const fakeFetch = async (url, init) => {
    calls.push({ url, method: init.method });
    if (init.method === "HEAD") return new Response(null, { status: 405 });
    if (url.endsWith("/master.m3u8")) {
      return new Response("#EXTM3U\n#EXT-X-STREAM-INF:BANDWIDTH=500000\n720/index.m3u8\n", {
        status: 206,
        headers: { "content-type": "application/vnd.apple.mpegurl" },
      });
    }
    if (url.endsWith("/720/index.m3u8")) {
      return new Response("#EXTM3U\n#EXTINF:4,\nseg-001.ts\n", {
        status: 206,
        headers: { "content-type": "application/vnd.apple.mpegurl" },
      });
    }
    return new Response(ts, { status: 206, headers: { "content-type": "video/mp2t" } });
  };
  const result = await probeStardimaMediaUrl("https://cdn.example.org/master.m3u8", {
    fetchImpl: fakeFetch,
    safeUrl: () => true,
    maxBytes: 1024,
  });

  assert.equal(result.ok, true);
  assert.equal(result.type, "hls");
  assert.deepEqual(calls.map((call) => call.method), ["HEAD", "GET", "GET", "GET"]);
  assert.equal(calls.some((call) => call.url.endsWith("/seg-001.ts")), true);
});

test("an HLS manifest whose first media segment is blocked is not marked working", async () => {
  const fakeFetch = async (url, init) => {
    if (init.method === "HEAD") return new Response(null, { status: 405 });
    if (url.endsWith("/media.m3u8")) {
      return new Response("#EXTM3U\n#EXTINF:4,\nseg-001.ts\n", {
        status: 206,
        headers: { "content-type": "application/vnd.apple.mpegurl" },
      });
    }
    return new Response(null, { status: 403 });
  };
  const result = await probeStardimaMediaUrl("https://cdn.example.org/media.m3u8", {
    fetchImpl: fakeFetch,
    safeUrl: () => true,
  });

  assert.equal(result.ok, false);
  assert.equal(result.state, "blocked");
});

test("expired and inaccessible responses are distinguished from unsupported HTML", async () => {
  const expired = await probeStardimaMediaUrl("https://cdn.example.org/expired", {
    safeUrl: () => true,
    fetchImpl: async (_url, init) => new Response(null, { status: init.method === "HEAD" ? 410 : 410 }),
  });
  const blocked = await probeStardimaMediaUrl("https://cdn.example.org/blocked", {
    safeUrl: () => true,
    fetchImpl: async (_url, init) => new Response(null, { status: init.method === "HEAD" ? 405 : 403 }),
  });

  assert.equal(expired.state, "expired");
  assert.equal(blocked.state, "blocked");
});

test("redirects are followed manually and private redirect targets are rejected", async () => {
  const safe = await fetchSafeExternalResponse("https://a.example.org/start", {
    fetchImpl: async (url) => url.includes("/start")
      ? new Response(null, { status: 302, headers: { location: "https://b.example.org/page" } })
      : new Response("ok", { status: 200 }),
  });
  assert.equal(safe.url, "https://b.example.org/page");
  assert.equal(safe.response.status, 200);

  const blocked = await fetchSafeExternalResponse("https://a.example.org/start", {
    fetchImpl: async () => new Response(null, {
      status: 302,
      headers: { location: "http://127.0.0.1/admin" },
    }),
  });
  assert.equal(blocked.error, "unsafe_redirect");
  assert.equal(blocked.response, null);
});
