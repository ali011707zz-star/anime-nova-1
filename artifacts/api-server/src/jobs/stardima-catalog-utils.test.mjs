import assert from "node:assert/strict";
import test from "node:test";
import {
  dedupeStardimaEpisodes,
  mapStardimaEpisode,
  mapStardimaServers,
  stardimaPlayableType,
} from "./stardima-catalog-utils.mjs";

test("series episodes retain multiple seasons and only the selected episode's servers", () => {
  const title = { provider_title_id: "series-1", title: "سلسلة" };
  const seasonOne = mapStardimaEpisode({
    id: "episode-1",
    episode_number: 1,
    servers: [
      { id: "uqload", name: "Uqload", url: "https://strema.top/embed?id=uqload-1" },
      { id: "lulu", name: "Lulustream", url: "https://lulustream.com/e/episode-1" },
      { id: "lulu-copy", name: "Lulustream copy", url: "https://lulustream.com/e/episode-1" },
    ],
  }, title, { id: "season-1", season_number: 1, normalizedNumber: 1 }, 0);
  const seasonTwo = mapStardimaEpisode({
    id: "episode-2",
    episode_number: 1,
    servers: [{ id: "mix", name: "Mixdrop", url: "https://mixdrop.top/e/episode-2" }],
  }, title, { id: "season-2", season_number: 2, normalizedNumber: 2 }, 0);

  assert.equal(seasonOne.season_number, 1);
  assert.equal(seasonTwo.season_number, 2);
  assert.equal(seasonOne._servers.length, 2);
  assert.equal(seasonTwo._servers.length, 1);
  assert.equal(seasonOne._servers[0].server_name, "Uqload");
  assert.equal(seasonOne._servers[0].quality, "");
  assert.equal(seasonOne._servers[0].availability_status, "link_found");
});

test("movie watch and download references become distinct resolver inputs", () => {
  const movie = mapStardimaEpisode({
    id: "movie-1",
    watch_url: "https://v2.hyperwatching.com/watch/movie-1",
    download_url: "https://cdn.example.org/movie-1.mp4",
  }, { provider_title_id: "movie-1", title: "فيلم" }, { season_number: 1 }, 0, true);

  assert.equal(movie.provider_metadata.content_type, "movie");
  assert.deepEqual(movie._servers.map((server) => server.source_kind), ["provider_page", "direct_media"]);
  assert.equal(stardimaPlayableType(movie._servers[1].page_url), "mp4");
});

test("server identity is stable when a signed query token rotates", () => {
  const first = mapStardimaServers([
    { id: "mixdrop", name: "Mixdrop", url: "https://mixdrop.top/e/abc?token=old" },
  ])[0];
  const refreshed = mapStardimaServers([
    { id: "mixdrop", name: "Mixdrop", url: "https://mixdrop.top/e/abc?token=new" },
  ])[0];

  assert.equal(first.server_key, refreshed.server_key);
  assert.notEqual(first.page_url, refreshed.page_url);
});

test("duplicate episode IDs merge servers without duplicating episodes", () => {
  const first = mapStardimaEpisode({
    id: "same-episode", episode_number: 1,
    servers: [{ id: "a", name: "A", url: "https://a.example.org/e/1" }],
  }, { provider_title_id: "series-1", title: "سلسلة" }, { season_number: 1 }, 0);
  const repeated = mapStardimaEpisode({
    id: "same-episode", episode_number: 1,
    servers: [{ id: "b", name: "B", url: "https://b.example.org/e/1" }],
  }, { provider_title_id: "series-1", title: "سلسلة" }, { season_number: 1 }, 0);

  const episodes = dedupeStardimaEpisodes([first, repeated]);
  assert.equal(episodes.length, 1);
  assert.equal(episodes[0]._servers.length, 2);
});
