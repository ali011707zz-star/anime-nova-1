import test from "node:test";
import assert from "node:assert/strict";
import { sanimeEpisodeVariants } from "./sanimeSource.mjs";

test("uses the current SAnime CDN family first and retains the legacy fallback", () => {
  const variants = sanimeEpisodeVariants("653", 12);
  assert.deepEqual(variants.map(variant => variant.family), ["Video2", "Video"]);
  assert.equal(variants[0].hdUrl, "https://server.sanime.net/Video2/653/12.mp4");
  assert.equal(variants[0].sdUrl, "https://server.sanime.net/Video2/653/12SD.mp4");
  assert.equal(variants[1].hdUrl, "https://server.sanime.net/Video/653/12.mp4");
});

test("rejects malformed SAnime episode identities", () => {
  assert.deepEqual(sanimeEpisodeVariants("", 1), []);
  assert.deepEqual(sanimeEpisodeVariants("653", 0), []);
  assert.deepEqual(sanimeEpisodeVariants("653", 1.5), []);
});
