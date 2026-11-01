import assert from "node:assert/strict";
import test from "node:test";
import { parseCarateenEpisodeUrl } from "./carateenEpisodeRef.mjs";

test("parses the Spacetoon custom episode URL sent by older mobile clients", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://sp/41/38095097"), {
    provider: "sp",
    showId: "41",
    episodeId: "38095097",
  });
});

test("parses Carateen episode references case-insensitively", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("CARATEEN://Carateen/12/9001/"), {
    provider: "carateen",
    showId: "12",
    episodeId: "9001",
  });
});

test("rejects unrelated, incomplete, and non-string episode references", () => {
  assert.equal(parseCarateenEpisodeUrl("https://example.com/episode"), null);
  assert.equal(parseCarateenEpisodeUrl("carateen://sp/41"), null);
  assert.equal(parseCarateenEpisodeUrl(undefined), null);
});
