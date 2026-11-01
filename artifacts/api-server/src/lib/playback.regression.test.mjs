import assert from "node:assert/strict";
import { once } from "node:events";
import { readFileSync } from "node:fs";
import http from "node:http";
import test from "node:test";
import { createKawaiiApiResolver } from "./kawaiiApiFailover.mjs";
import { rewriteHlsManifest } from "./hlsManifestRewrite.mjs";
import { buildMediaRequestHeaders, copyMediaResponse } from "./mediaProxyCore.mjs";
import {
  collectInspectedBody,
  fetchWithHeaderTimeout,
  inspectReadableBody,
  startDelayedAbortableRequest,
  streamInspectedBody,
} from "./mediaStreamTools.mjs";
import {
  hasExpiredSignedSource,
  isSourceCacheEntryStale,
  readExpressDecodedQueryString,
  sourceMediaUrl,
} from "./proxyUrlPolicy.mjs";

const root = new URL("../../../../", import.meta.url);
const readProjectFile = path => readFileSync(new URL(path, root), "utf8");

test("media proxy header deadline does not abort a response body after headers", async () => {
  let fetchSignal;
  const response = await fetchWithHeaderTimeout(
    async (_input, init) => {
      fetchSignal = init.signal;
      return new Response(new ReadableStream({
        start(controller) {
          setTimeout(() => {
            controller.enqueue(new TextEncoder().encode("streaming-body"));
            controller.close();
          }, 20);
        },
      }));
    },
    "https://media.example/stream",
    {},
    5,
  );

  assert.equal(await response.text(), "streaming-body");
  assert.equal(fetchSignal.aborted, false);
});

test("media proxy header deadline still aborts a request that never returns headers", async () => {
  await assert.rejects(
    fetchWithHeaderTimeout(
      (_input, { signal }) => new Promise((_resolve, reject) => {
        if (signal.aborted) {
          reject(new Error("header timeout"));
          return;
        }
        signal.addEventListener("abort", () => reject(new Error("header timeout")), { once: true });
      }),
      "https://media.example/stalled",
      {},
      5,
    ),
    /header timeout/,
  );
});

test("cancelled media hedges do not launch or keep an upstream request alive", async () => {
  const beforeLaunch = new AbortController();
  let launched = false;
  const queued = startDelayedAbortableRequest(30, beforeLaunch.signal, async () => {
    launched = true;
    return new Response("unexpected");
  });
  beforeLaunch.abort();
  assert.equal(await queued.promise, null);
  await new Promise(resolve => setTimeout(resolve, 35));
  assert.equal(launched, false);

  const duringRequest = new AbortController();
  let hedgeSignal;
  let requestStarted;
  const started = new Promise(resolve => { requestStarted = resolve; });
  const pending = startDelayedAbortableRequest(0, duringRequest.signal, signal => {
    hedgeSignal = signal;
    requestStarted();
    return new Promise((_resolve, reject) => {
      signal.addEventListener("abort", () => reject(new Error("cancelled")), { once: true });
    });
  });
  await started;
  duringRequest.abort();
  assert.equal(await pending.promise, null);
  assert.equal(hedgeSignal.aborted, true);
});

test("a winning hedge survives direct-request cancellation but stops on client disconnect", async () => {
  const clientAbort = new AbortController();
  const directRaceAbort = new AbortController();
  const directSignal = AbortSignal.any([clientAbort.signal, directRaceAbort.signal]);
  const pending = startDelayedAbortableRequest(0, clientAbort.signal, async signal => signal);
  const hedgeSignal = await pending.promise;

  directRaceAbort.abort();
  assert.equal(directSignal.aborted, true);
  assert.equal(hedgeSignal.aborted, false);

  clientAbort.abort();
  assert.equal(hedgeSignal.aborted, true);
});

test("segment prefix inspection streams the untouched remainder and supports bounded buffering", async () => {
  const body = new ReadableStream({
    start(controller) {
      controller.enqueue(Buffer.from("ABCD"));
      controller.enqueue(Buffer.from("EFGH"));
      controller.close();
    },
  });
  const inspected = await inspectReadableBody(body, 4);
  assert.equal(inspected.prefix.toString(), "ABCD");
  const streamed = [];
  for await (const chunk of streamInspectedBody(inspected)) streamed.push(Buffer.from(chunk));
  assert.equal(Buffer.concat(streamed).toString(), "ABCDEFGH");

  const buffered = await inspectReadableBody(new Response("12345678").body, 3);
  assert.equal((await collectInspectedBody(buffered, 8)).toString(), "12345678");
});

test("Anime seg-proxy sniffs a prefix, streams media, and preserves upstream ranges", () => {
  const source = readProjectFile("artifacts/api-server/src/routes/anime.ts");
  const start = source.indexOf("async function serveSegResponse");
  const end = source.indexOf("\n  // Fail closed", start);
  assert.ok(start >= 0 && end > start, "Anime seg-proxy response handler must exist");
  const handler = source.slice(start, end);
  assert.match(handler, /inspectReadableBody\(r\.body, 4096\)/);
  assert.match(handler, /Readable\.from\(streamInspectedBody\(inspected\)\)/);
  assert.match(handler, /content-range/);
  assert.match(handler, /res\.status\(r\.status\)/);
  assert.doesNotMatch(handler, /await r\.arrayBuffer\(\)/);
});

function endpoints() {
  return [
    { base: "https://primary.kawaii.test", url: "https://primary.kawaii.test/api/miruro?anilistId=1&ep=1", fallbackUrl: "https://primary.kawaii.test/api/miruro?anilist_id=1&episode=1" },
    { base: "https://alias-one.kawaii.test", url: "https://alias-one.kawaii.test/api/miruro?anilistId=1&ep=1" },
    { base: "https://alias-two.kawaii.test", url: "https://alias-two.kawaii.test/api/miruro?anilistId=1&ep=1" },
  ];
}

const validPayload = { sources: [{ url: "https://cdn.kawaii.test/video.mp4" }] };
const validator = payload => payload?.sources?.length ? payload : null;

test("Kawaii API fallback is ordered and bounded for 429, 5xx, and timeout", async () => {
  for (const failure of ["429", "5xx", "timeout"]) {
    const calls = [];
    const events = [];
    const resolver = createKawaiiApiResolver({
      cooldownMs: 30_000,
      fetchImpl: async (url, { signal }) => {
        calls.push(new URL(url).hostname);
        if (new URL(url).hostname.startsWith("primary")) {
          if (failure === "429") return new Response("", { status: 429 });
          if (failure === "5xx") return new Response("", { status: 503 });
          return await new Promise((_resolve, reject) => {
            signal.addEventListener("abort", () => reject(new Error("aborted")), { once: true });
          });
        }
        return Response.json(validPayload);
      },
    });
    const result = await resolver.resolve({
      endpoints: endpoints(),
      timeoutMs: 15,
      budgetMs: 250,
      maxRequests: 4,
      validate: validator,
      onAttempt: event => events.push(event),
    });
    assert.equal(result?.base, "https://alias-one.kawaii.test", `${failure} must fall through once`);
    assert.deepEqual(calls, ["primary.kawaii.test", "alias-one.kawaii.test"]);
    assert.equal(events[0]?.outcome, failure === "timeout" ? "timeout" : "http_error");
  }
});

test("Kawaii legacy parameters are tried only for a non-transient primary response", async () => {
  const calls = [];
  const resolver = createKawaiiApiResolver({
    fetchImpl: async url => {
      calls.push(url);
      if (url.includes("anilistId=")) return new Response("", { status: 404 });
      return Response.json(validPayload);
    },
  });
  const result = await resolver.resolve({
    endpoints: endpoints(),
    validate: validator,
    budgetMs: 250,
  });
  assert.equal(result?.base, "https://primary.kawaii.test");
  assert.equal(calls.length, 2);
  assert.match(calls[1], /anilist_id=1&episode=1/);
});

test("Kawaii host cooldown prevents repeating the same failed alias wave", async () => {
  let now = 10_000;
  const calls = [];
  const resolver = createKawaiiApiResolver({
    now: () => now,
    cooldownMs: 30_000,
    fetchImpl: async url => {
      calls.push(url);
      return new Response("", { status: 503 });
    },
  });
  const options = { endpoints: endpoints(), maxRequests: 3, budgetMs: 250, validate: validator };
  assert.equal(await resolver.resolve(options), null);
  assert.equal(calls.length, 3);
  const events = [];
  assert.equal(await resolver.resolve({ ...options, onAttempt: event => events.push(event) }), null);
  assert.equal(calls.length, 3);
  assert.equal(events.filter(event => event.outcome === "cooldown_skip").length, 3);
  now += 31_000;
  assert.equal(await resolver.resolve(options), null);
  assert.equal(calls.length, 6);
});

test("Express-decoded proxy targets preserve literal %2F and %3D", () => {
  const original = "https://cdn.example/video.mp4?path=%2Fpart%3D7&expires=1999999999";
  const requestUrl = `https://nova.example/api/anime/video-proxy?url=${encodeURIComponent(original)}`;
  const expressDecoded = new URL(requestUrl).searchParams.get("url");
  assert.equal(readExpressDecodedQueryString(expressDecoded), original);
  assert.equal(sourceMediaUrl(`/api/anime/video-proxy?url=${encodeURIComponent(original)}`), original);
});

test("signed Kawaii URLs expire through a persisted L2 cache row after a simulated restart", () => {
  const now = 2_000_000_000_000;
  const signedTarget = `https://cdn.example/video.mp4?path=%2Fpart%3D7&expires=${Math.floor((now - 1000) / 1000)}`;
  const rowBeforeRestart = {
    expires_at: new Date(now + 10_000).toISOString(),
    sources: [{ url: `/api/anime/video-proxy?url=${encodeURIComponent(signedTarget)}` }],
  };
  const l2AfterRestart = JSON.parse(JSON.stringify(rowBeforeRestart));
  const persistedExpiry = new Date(l2AfterRestart.expires_at).getTime();
  assert.equal(hasExpiredSignedSource(l2AfterRestart.sources, now), true);
  assert.equal(isSourceCacheEntryStale(l2AfterRestart.sources, persistedExpiry, now), true);

  const validTarget = `https://cdn.example/video.mp4?expires=${Math.floor((now + 60_000) / 1000)}`;
  assert.equal(isSourceCacheEntryStale([{ rawUrl: validTarget }], now + 90_000, now), false);
});

test("web, mobile, picker, and API Kawaii CDN allowlists stay aligned", () => {
  const server = readProjectFile("artifacts/api-server/src/routes/anime.ts");
  const mobile = readProjectFile("artifacts/nova-mobile/app/watch.tsx");
  const web = readProjectFile("artifacts/anime-scraper/src/components/player/RiftPlayer.tsx");
  const picker = readProjectFile("artifacts/anime-scraper/src/pages/Watch.tsx");
  const extractHosts = (text, constant) => {
    const start = text.indexOf(`const ${constant} = new Set([`);
    assert.notEqual(start, -1, `${constant} must exist`);
    const end = text.indexOf("]);", start);
    assert.notEqual(end, -1, `${constant} must close`);
    return [...text.slice(start, end).matchAll(/"([^"]+)"/g)].map(match => match[1]).sort();
  };
  const serverHosts = extractHosts(server, "KAWAII_CDN_HOSTS");
  assert.deepEqual(serverHosts, extractHosts(mobile, "KAWAII_MOBILE_CDN_HOSTS"));
  assert.deepEqual(serverHosts, extractHosts(web, "KAWAII_CDN_HOSTS"));
  assert.deepEqual(serverHosts, extractHosts(picker, "KAWAII_CDN_HOSTS"));
  assert.ok(serverHosts.includes("fetch.nexabloom.top"));
});

test("failed picker lookups retain availability rows for retry", () => {
  const watch = readProjectFile("artifacts/anime-scraper/src/pages/Watch.tsx");
  assert.match(watch, /getSrcQualityTier\(src\) !== requestedQuality \|\| !!src\.checkOnly/);
  assert.match(watch, /hadKnownCandidate \? "ready" : "failed"/);
});

async function listen(server) {
  server.listen(0, "127.0.0.1");
  await once(server, "listening");
  return `http://127.0.0.1:${server.address().port}`;
}

async function close(server) {
  if (!server.listening) return;
  server.close();
  await once(server, "close");
}

function rangedResponse(req, res, body, contentType = "video/mp4") {
  const range = /^bytes=(\d+)-(\d*)$/i.exec(req.headers.range || "");
  const start = range ? Number(range[1]) : 0;
  const requestedEnd = range?.[2] ? Number(range[2]) : body.length - 1;
  const end = Math.min(requestedEnd, body.length - 1);
  if (range && start > end) {
    res.writeHead(416, { "Content-Range": `bytes */${body.length}` });
    res.end();
    return;
  }
  const chunk = body.subarray(start, end + 1);
  res.writeHead(range ? 206 : 200, {
    "Content-Type": contentType,
    "Content-Length": String(chunk.length),
    "Accept-Ranges": "bytes",
    ...(range ? { "Content-Range": `bytes ${start}-${end}/${body.length}` } : {}),
  });
  res.end(chunk);
}

test("MP4, Kawaii, SAnime, and HLS segments stream with Range and required headers", async t => {
  const observed = new Map();
  const mediaBytes = Buffer.from("0123456789abcdef");
  const upstream = http.createServer((req, res) => {
    observed.set(req.url, {
      range: req.headers.range || "",
      referer: req.headers.referer || "",
      origin: req.headers.origin || "",
      userAgent: req.headers["user-agent"] || "",
    });
    if (req.url === "/master.m3u8") {
      const body = "#EXTM3U\n#EXT-X-KEY:METHOD=AES-128,URI=\"keys/key.bin\"\n#EXTINF:5,\nsegments/one.ts\n";
      res.writeHead(200, { "Content-Type": "application/vnd.apple.mpegurl" });
      res.end(body);
      return;
    }
    if (req.url?.startsWith("/failed.mp4")) {
      res.writeHead(503);
      res.end("unavailable");
      return;
    }
    rangedResponse(req, res, mediaBytes, req.url?.endsWith(".ts") ? "video/MP2T" : "video/mp4");
  });
  const upstreamBase = await listen(upstream);
  t.after(() => close(upstream));

  let proxyBase = "";
  const proxy = http.createServer(async (req, res) => {
    try {
      const requestUrl = new URL(req.url, proxyBase);
      if (requestUrl.pathname === "/manifest") {
        const target = requestUrl.searchParams.get("url");
        const ref = requestUrl.searchParams.get("ref") || "";
        const response = await fetch(target, {
          headers: buildMediaRequestHeaders({ referer: ref }),
        });
        const manifest = await response.text();
        const rewritten = rewriteHlsManifest(manifest, target, {
          rewriteSegment: absolute => `/media?url=${encodeURIComponent(absolute)}&ref=${encodeURIComponent(ref)}`,
          rewritePlaylist: absolute => `/manifest?url=${encodeURIComponent(absolute)}&ref=${encodeURIComponent(ref)}`,
        });
        res.writeHead(response.status, { "Content-Type": "application/vnd.apple.mpegurl" });
        res.end(rewritten);
        return;
      }

      const target = requestUrl.searchParams.get("url");
      const referer = requestUrl.searchParams.get("ref") || "";
      const userAgent = requestUrl.searchParams.get("ua") || "";
      const headers = buildMediaRequestHeaders({
        baseHeaders: { Accept: "*/*" },
        referer,
        range: req.headers.range,
        userAgent,
      });
      const response = await fetch(target, { headers });
      await copyMediaResponse(response, res, {
        mp4Hint: !target.endsWith(".ts"),
      });
    } catch {
      if (!res.headersSent) res.writeHead(502);
      res.end();
    }
  });
  proxyBase = await listen(proxy);
  t.after(() => close(proxy));

  for (const [path, ref, ua] of [
    ["/kawaii.mp4", "https://kawaiianime.cc/", ""],
    ["/sanime.mp4", "https://app.sanime.net/", "IBRAHIMSEVEN"],
  ]) {
    const target = `${upstreamBase}${path}`;
    const query = new URLSearchParams({ url: target, ref });
    if (ua) query.set("ua", ua);
    const response = await fetch(`${proxyBase}/media?${query}`, {
      headers: { Range: "bytes=2-7" },
    });
    assert.equal(response.status, 206);
    assert.equal(response.headers.get("content-range"), "bytes 2-7/16");
    assert.equal(await response.text(), "234567");
    const received = observed.get(path);
    assert.equal(received.range, "bytes=2-7");
    assert.equal(received.referer, ref);
    assert.equal(received.origin, new URL(ref).origin);
    if (ua) assert.equal(received.userAgent, "IBRAHIMSEVEN");
  }

  const hlsRef = "https://kawaiianime.cc/";
  const manifestUrl = `${upstreamBase}/master.m3u8`;
  const manifestResponse = await fetch(`${proxyBase}/manifest?${new URLSearchParams({ url: manifestUrl, ref: hlsRef })}`);
  assert.equal(manifestResponse.status, 200);
  const manifest = await manifestResponse.text();
  assert.match(manifest, /^#EXTM3U/m);
  const segmentPath = manifest.split(/\r?\n/).find(line => line.startsWith("/media?"));
  assert.ok(segmentPath, "manifest segments must route through the proxy");
  const segmentResponse = await fetch(`${proxyBase}${segmentPath}`, { headers: { Range: "bytes=0-5" } });
  assert.equal(segmentResponse.status, 206);
  assert.equal(segmentResponse.headers.get("content-range"), "bytes 0-5/16");
  assert.equal((await segmentResponse.arrayBuffer()).byteLength, 6);
  assert.equal(observed.get("/segments/one.ts")?.referer, hlsRef);
  assert.equal(observed.get("/segments/one.ts")?.range, "bytes=0-5");

  const failed = await fetch(`${proxyBase}/media?${new URLSearchParams({ url: `${upstreamBase}/failed.mp4` })}`);
  assert.equal(failed.status, 503);
  const healthy = await fetch(`${proxyBase}/media?${new URLSearchParams({ url: `${upstreamBase}/healthy.mp4` })}`, {
    headers: { Range: "bytes=0-3" },
  });
  assert.equal(healthy.status, 206, "one provider failure must not poison the next media request");
});

test("HLS manifest rewriting preserves proxy routing for child playlists, keys, and segments", () => {
  const manifest = [
    "#EXTM3U",
    "#EXT-X-KEY:METHOD=AES-128,URI=\"keys/main.key\"",
    "#EXT-X-STREAM-INF:BANDWIDTH=800000",
    "variants/low.m3u8",
    "#EXTINF:5,",
    "segments/one.ts?token=a%2Fb%3D",
  ].join("\n");
  const rewritten = rewriteHlsManifest(manifest, "https://cdn.example/root/master.m3u8", {
    rewriteSegment: url => `/api/anime/seg-proxy?url=${encodeURIComponent(url)}`,
    rewritePlaylist: url => `/api/anime/hls-proxy?url=${encodeURIComponent(url)}`,
  });
  assert.match(rewritten, /\/api\/anime\/seg-proxy/);
  assert.match(rewritten, /\/api\/anime\/hls-proxy/);
  assert.match(rewritten, /keys%2Fmain\.key/);
  assert.match(rewritten, /token%3Da%252Fb%253D/);
});
