import assert from "node:assert/strict";
import test from "node:test";
import { parseCarateenEpisodeUrl } from "./carateenEpisodeRef.mjs";

test("parses a Spacetoon episode URI when route params are missing", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://sp/41/38095097"), {
    provider: "sp",
    showId: "41",
    episodeId: "38095097",
  });
});

test("parses a Carateen URI case-insensitively and accepts a trailing slash", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("CARATEEN://Carateen/12/9001/"), {
    provider: "carateen",
    showId: "12",
    episodeId: "9001",
  });
});

test("parses a StarDima V2 (sd2) episode and movie URI", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://sd2/6aeed362b8a92/105288"), {
    provider: "sd2",
    showId: "6aeed362b8a92",
    episodeId: "105288",
  });
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://sd2/6af5fd5d3ae1c/movie-6af5fd5d3ae1c"), {
    provider: "sd2",
    showId: "6af5fd5d3ae1c",
    episodeId: "movie-6af5fd5d3ae1c",
  });
});

test("rejects unrelated URLs and incomplete Carateen episode references", () => {
  assert.equal(parseCarateenEpisodeUrl("https://example.com/episode"), null);
  assert.equal(parseCarateenEpisodeUrl("carateen://sp/41"), null);
  assert.equal(parseCarateenEpisodeUrl(undefined), null);
});
