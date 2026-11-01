import assert from "node:assert/strict";
import test from "node:test";
import {
  getAdjacentAwEpisode,
  hasAwEpisode,
  normalizeAwWatchSources,
} from "./awWatchExperience.mjs";

const seasons = [
  { label: "Season 1", animeId: "show-s1" },
  { label: "Season 2", animeId: "show-s2" },
  { label: "Season 3", animeId: "show-s3" },
];
const episodes = {
  "show-s1": [1, 3, 7],
  "show-s2": [],
  "show-s3": [2, 4],
};

test("AW source rows preserve the actual server, quality, and selected URL", () => {
  const sources = normalizeAwWatchSources([
    { name: "Pixeldrain", quality: "1080p", rawUrl: "/api/anime/video-proxy?url=first" },
    { name: "Mediafire", quality: "720p", rawUrl: "/api/aw-dubbed/mf-stream?link=second" },
  ], "https://nova.example");

  assert.equal(sources.length, 2);
  assert.equal(sources[0].serverNumber, 1);
  assert.equal(sources[1].serverNumber, 2);
  assert.equal(sources[1].serverName, "Mediafire");
  assert.equal(sources[1].quality, "720p");
  assert.equal(sources[1].qualityKey, "720p");
  assert.equal(sources[1].url, "https://nova.example/api/aw-dubbed/mf-stream?link=second");
  assert.notEqual(sources[0].pickerKey, sources[1].pickerKey);
});

test("AW source normalization keeps nonstandard qualities visible in an existing picker tier", () => {
  const [source] = normalizeAwWatchSources([
    { name: "Server X", quality: "2160p", rawUrl: "https://cdn.example/episode.mp4" },
  ], "https://nova.example");

  assert.equal(source.quality, "2160p");
  assert.equal(source.qualityKey, "1080p");
});

test("AW episode navigation follows actual episode numbers, not arithmetic increments", () => {
  assert.equal(hasAwEpisode(seasons, episodes, 0, 3), true);
  assert.equal(hasAwEpisode(seasons, episodes, 0, 4), false);
  assert.deepEqual(
    getAdjacentAwEpisode(seasons, episodes, 0, 3, 1),
    { episode: 7, seasonIndex: 0, seasonLabel: "Season 1", series: "show-s1" },
  );
  assert.deepEqual(
    getAdjacentAwEpisode(seasons, episodes, 0, 3, -1),
    { episode: 1, seasonIndex: 0, seasonLabel: "Season 1", series: "show-s1" },
  );
});

test("AW season transitions skip only seasons with no available episodes", () => {
  assert.deepEqual(
    getAdjacentAwEpisode(seasons, episodes, 0, 7, 1),
    { episode: 2, seasonIndex: 2, seasonLabel: "Season 3", series: "show-s3" },
  );
  assert.deepEqual(
    getAdjacentAwEpisode(seasons, episodes, 2, 2, -1),
    { episode: 7, seasonIndex: 0, seasonLabel: "Season 1", series: "show-s1" },
  );
});

test("AW episode navigation stops at both real catalogue boundaries", () => {
  assert.equal(getAdjacentAwEpisode(seasons, episodes, 0, 1, -1), null);
  assert.equal(getAdjacentAwEpisode(seasons, episodes, 2, 4, 1), null);
  assert.equal(getAdjacentAwEpisode(seasons, episodes, 0, 2, 1), null);
});
