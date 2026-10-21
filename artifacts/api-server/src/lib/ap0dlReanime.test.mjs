import assert from "node:assert/strict";
import test from "node:test";

import {
  buildAp0dlGrabArgs,
  parseAp0dlGrabOutput,
} from "./ap0dlReanime.mjs";

const watchUrl = "https://reanime.to/watch/bocchi-the-rock-6gepbk?ep=1";

test("builds a non-shell ap0dl command for one catalog episode", () => {
  assert.deepEqual(buildAp0dlGrabArgs(watchUrl, 3), [
    "--log",
    "error",
    "grab",
    watchUrl,
    "--range",
    "3",
  ]);
});

test("parses multiple JSON episode results and selects only the requested Re:Anime episode", () => {
  const output = [
    JSON.stringify({ provider: "reanime", episode: 1, streams: [{ server: "HD-1" }] }),
    JSON.stringify({ provider: "reanime", episode: 2, streams: [{ server: "HD-2" }] }),
    JSON.stringify({ provider: "animegg", episode: 3, streams: [{ server: "MP4" }] }),
    JSON.stringify({ provider: "reanime", episode: 3, streams: [{ server: "HD-1" }] }),
  ].join("\n");

  assert.deepEqual(parseAp0dlGrabOutput(output, 2), {
    provider: "reanime",
    episode: 2,
    streams: [{ server: "HD-2" }],
  });
  assert.equal(parseAp0dlGrabOutput(output, 4), null);
});

test("rejects non-Re:Anime URLs and invalid episode numbers before invoking the binary", () => {
  assert.throws(() => buildAp0dlGrabArgs("https://example.com/watch/test?ep=1", 1), TypeError);
  assert.throws(() => buildAp0dlGrabArgs(watchUrl, 0), TypeError);
});

test("fails explicitly when ap0dl emits malformed JSON", () => {
  assert.throws(() => parseAp0dlGrabOutput("not-json", 1), /malformed JSON/);
});
