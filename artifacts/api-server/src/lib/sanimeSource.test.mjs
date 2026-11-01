import test from "node:test";
import assert from "node:assert/strict";
import { sanimeEpisodeVariants } from "./sanimeSource.mjs";

test("uses the canonical SAnime Video3 CDN family", () => {
  const variants = sanimeEpisodeVariants("653", 12);
  assert.deepEqual(variants.map(variant => variant.family), ["Video3"]);
  assert.equal(variants[0].hdUrl, "https://server.sanime.net/Video3/653/12.mp4");
  assert.equal(variants[0].sdUrl, "https://server.sanime.net/Video3/653/12SD.mp4");
});

test("rejects malformed SAnime episode identities", () => {
  assert.deepEqual(sanimeEpisodeVariants("", 1), []);
  assert.deepEqual(sanimeEpisodeVariants("653", 0), []);
  assert.deepEqual(sanimeEpisodeVariants("653", 1.5), []);
});
