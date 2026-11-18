import test from "node:test";
import assert from "node:assert/strict";
import {
  inferDubbedSourceFromKey,
  parseCarateenEpisodeUrl,
  resolveDubbedHistoryParams,
} from "./carateenEpisodeRef.mjs";

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

test("parses a StarDima V2 (sd2) and AnimeZid (az) episode/movie URI", () => {
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://sd2/6aeed362b8a92/105288"), {
    provider: "sd2",
    showId: "6aeed362b8a92",
    episodeId: "105288",
  });
  assert.deepEqual(parseCarateenEpisodeUrl("carateen://az/the-apothecary-diaries-ar/98765"), {
    provider: "az",
    showId: "the-apothecary-diaries-ar",
    episodeId: "98765",
  });
});

test("rejects unrelated URLs and incomplete Carateen episode references", () => {
  assert.equal(parseCarateenEpisodeUrl("https://example.com/episode"), null);
  assert.equal(parseCarateenEpisodeUrl("carateen://sp/41"), null);
  assert.equal(parseCarateenEpisodeUrl(undefined), null);
});

test("infers provider and history route params for az, sd2, sp, and arabic-toons", () => {
  const azLegacy = resolveDubbedHistoryParams({
    contentKey: "az:the-apothecary-diaries-ar",
    episodeUrl: "",
    ep: 6,
    seasonLabel: "الموسم 1",
    title: "يوميات الصيدلانية",
    thumbnail: "https://example.com/p.jpg",
  });
  assert.equal(azLegacy.provider, "az");
  assert.equal(azLegacy.showId, "the-apothecary-diaries-ar");
  assert.equal(azLegacy.ep, "6");

  const azFull = resolveDubbedHistoryParams({
    contentKey: "az:the-apothecary-diaries-ar",
    episodeUrl: "https://animezid.org/watch/123",
    catalogEpisodeId: "123",
    ep: 6,
    totalEps: 24,
    seasonLabel: "الموسم 1",
    title: "يوميات الصيدلانية",
    thumbnail: "https://example.com/p.jpg",
  });
  assert.equal(azFull.episodeId, "123");
  assert.equal(azFull.watchUrl, "https://animezid.org/watch/123");
  assert.equal(azFull.totalEps, "24");

  const sd2Movie = resolveDubbedHistoryParams({
    contentKey: "sd2:6af5fd5d3ae1c",
    episodeUrl: "carateen://sd2/6af5fd5d3ae1c/movie-6af5fd5d3ae1c",
    catalogMediaType: "movie",
    ep: 1,
    seasonLabel: "الفيلم",
    title: "فيلم سبونج بوب",
  });
  assert.equal(sd2Movie.provider, "sd2");
  assert.equal(sd2Movie.showId, "6af5fd5d3ae1c");
  assert.equal(sd2Movie.isMovie, "1");

  const at = resolveDubbedHistoryParams({
    contentKey: "https://www.arabic-toons.com/sponge-bob-11-1740913514-anime-streaming.html",
    episodeUrl: "https://www.arabic-toons.com/sponge-bob-11-1740913514-47677.html#sets",
    ep: 1,
    seasonLabel: "الحلقات",
    title: "سبونج بوب الموسم 11",
  });
  assert.equal(at.provider, undefined);
  assert.equal(at.series, "https://www.arabic-toons.com/sponge-bob-11-1740913514-anime-streaming.html");
  assert.equal(at.epUrl, "https://www.arabic-toons.com/sponge-bob-11-1740913514-47677.html#sets");
  assert.deepEqual(inferDubbedSourceFromKey("sp:41", ""), { provider: "sp", showId: "41", episodeId: "" });
});
