import assert from "node:assert/strict";
import test from "node:test";
import {
  classifySourceQuality,
  inspectHlsAvailability,
  probeDirectMediaAvailability,
} from "./sourceAvailabilityCheck.mjs";

test("specific resolutions take precedence over generic HD labels", () => {
  assert.equal(
    classifySourceQuality({ site: "animewitcher", quality: "HD", name: "Source 1080p" }).quality,
    "1080p",
  );
  assert.equal(
    classifySourceQuality({ site: "animewitcher", quality: "HD", qualityRank: 11, name: "Source 1080p" }).qualityRank,
    11,
  );
  assert.equal(
    classifySourceQuality({ site: "animekai", quality: "HD", label: "720p" }).quality,
    "720p",
  );
});

test("Kawaii keeps its current quality precedence and rank", () => {
  assert.deepEqual(
    classifySourceQuality({ site: "kawaii", quality: "1080p", qualityRank: 20, name: "720p" }),
    { quality: "1080p", qualityRank: 20 },
  );
});

test("bandwidth without resolution never invents a 1080p HLS variant", async () => {
  const calls = [];
  const fetchImpl = async (url) => {
    calls.push(url);
    if (url.endsWith("/master.m3u8")) {
      return new Response("#EXTM3U\n#EXT-X-STREAM-INF:BANDWIDTH=2400000\nvariant.m3u8\n");
    }
    return new Response("#EXTM3U\n#EXT-X-TARGETDURATION:6\n#EXTINF:6,\nseg.ts\n");
  };
  const result = await inspectHlsAvailability("https://cdn.test/master.m3u8", "", { fetchImpl });
  assert.equal(result.isMaster, true);
  assert.equal(result.variants[0].quality, "720p");
  assert.equal(calls.length, 2);
});

test("dead 1080p child playlists are excluded while working 720p remains available", async () => {
  const fetchImpl = async (url) => {
    if (url.endsWith("/master.m3u8")) {
      return new Response([
        "#EXTM3U",
        "#EXT-X-STREAM-INF:BANDWIDTH=5000000,RESOLUTION=1920x1080",
        "1080.m3u8",
        "#EXT-X-STREAM-INF:BANDWIDTH=2500000,RESOLUTION=1280x720",
        "720.m3u8",
      ].join("\n"));
    }
    if (url.endsWith("/1080.m3u8")) return new Response("", { status: 404 });
    return new Response("#EXTM3U\n#EXT-X-TARGETDURATION:6\n#EXTINF:6,\nseg.ts\n");
  };
  const result = await inspectHlsAvailability("https://cdn.test/master.m3u8", "", { fetchImpl });
  assert.deepEqual(
    result.variants.map(({ quality, state }) => [quality, state]),
    [["1080p", "dead"], ["720p", "available"]],
  );
});

test("transient or CDN-blocked HLS probes stay unknown instead of hiding a source", async () => {
  const result = await inspectHlsAvailability("https://cdn.test/master.m3u8", "", {
    fetchImpl: async () => new Response("", { status: 403 }),
  });
  assert.equal(result.state, "unknown");
});

test("direct media probes reject dead URLs and HTML error pages only", async () => {
  assert.equal(
    await probeDirectMediaAvailability("https://cdn.test/dead.mp4", "", {
      fetchImpl: async () => new Response("", { status: 410 }),
    }),
    "dead",
  );
  assert.equal(
    await probeDirectMediaAvailability("https://cdn.test/error.mp4", "", {
      fetchImpl: async () => new Response("<html>expired</html>", {
        headers: { "content-type": "text/html" },
      }),
    }),
    "dead",
  );
  assert.equal(
    await probeDirectMediaAvailability("https://cdn.test/blocked.mp4", "", {
      fetchImpl: async () => new Response("", { status: 403 }),
    }),
    "unknown",
  );
});
