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

test("rejects unrelated URLs and incomplete Carateen episode references", () => {
  assert.equal(parseCarateenEpisodeUrl("https://example.com/episode"), null);
  assert.equal(parseCarateenEpisodeUrl("carateen://sp/41"), null);
  assert.equal(parseCarateenEpisodeUrl(undefined), null);
});
